/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import express from 'express';
import Sequelize from 'sequelize';

import errors from '../responses/error';
import success from '../responses/success';

import authPassword from '../auth/password';
import authToken from '../auth/token';
import models from '../models';

const { verifyRefreshToken, verifyToken } = authToken;

let { User, Refresh_Tokens, Role } = models;
let Op = Sequelize.Op;

/** Iniciar authRouter */
let authRouter = express.Router();

/** Endpoints de autenticación */
authRouter.post('/login', async (req, res) => {
    let { credentials } = req.body;
    let { username, password, role } = credentials;

    let response = {};
    try {
        let user = await User.findOne({
            attributes: [ 'id', 'password' ],
            where: { [Op.and]: [{ username }, { '$Role.name$': role }, { active: true }] },
            include: [{ model: Role }]
        });

        if (!user)
            response = errors.loginError();
        else {
            let valid = await authPassword.validatePassword(password, user.password);
            if (valid) {
                let id = user.id;
                const refreshToken = authToken.generateToken(id, true);
                let tokenRegistrationSuccess = false;

                /** Verificar si el usuario ya tiene un token asignado y hacer la actualización */
                const refreshTokenRecord = await Refresh_Tokens.findOne({ where: { id }});
                if (refreshTokenRecord) {
                    const updatedRefreshTokenRecord = await refreshTokenRecord.update({ 
                        token: refreshToken
                     });
                     
                    if (updatedRefreshTokenRecord) 
                        tokenRegistrationSuccess = true;
                }
                /** Sino tiene un token registrado, agregar el refreshToken a la whitelist de la DB */
                else {
                    const newRefreshTokenRecord = await Refresh_Tokens.create({ id, token: refreshToken });
                    if (newRefreshTokenRecord) 
                        tokenRegistrationSuccess = true;
                }

                if (tokenRegistrationSuccess) {
                    let token = authToken.generateToken(id);
                    res.header('Auth-Token', token);
                    res.header('Refresh-Token', refreshToken);

                    response = success.get({ id }, 'el usuario');
                }
                else response = errors.loginError();
            }
            else response = errors.loginError();
        }
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

authRouter.post('/logout', verifyToken, async (req, res) => {
    const { token } = req.body;

    let response = {};
    try {
        await Refresh_Tokens.destroy({ where: { token }});
        response = success.delete({}, 'el token de autenticación');
    }
    catch (err) {
        console.log(err);
        response = errors.internalError();
    }

    res.json(response);
});

authRouter.post('/register', async (req, res) => {
    let { user } = req.body;
    let { password } = user;
    let encoded = await authPassword.encryptPassword(password);
    user.password = encoded;

    let response = {};
    try {
        let newUser = await User.create(user);
        if (newUser) {
            delete newUser.password;
            let id = newUser.id;            
            const refreshToken = authToken.generateToken(id, true); 

            /** Agregar el refreshToken a la whitelist de la DB */
            const refreshTokenRecord = await Refresh_Tokens.create({ id, token: refreshToken });
            if (refreshTokenRecord) {
                let token = authToken.generateToken(id);
                res.header('Auth-Token', token);
                res.header('Refresh-Token', refreshToken);

                response = success.post({ id }, 'el usuario');
            }
            else
                response = errors.postError('el usuario');
        }
        else
            response = errors.postError('el usuario');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Endpoint encargado de realizar la renovación del token de autenticación */
authRouter.post('/token', verifyRefreshToken, async (req, res) => {
    /** Para recordar: refreshTokenRecord viene del middleware verifyRefreshToken */
    const { refreshTokenRecord, user } = req.body;

    let response = {};
    try {
        const id = user.id;        
        const newRefreshToken = authToken.generateToken(id, true); 

        /** Actualizar el refreshToken en la whitelist de la DB */
        const updatedRefreshTokenRecord = await refreshTokenRecord.update({ token: newRefreshToken }); 
        if (updatedRefreshTokenRecord) {
            const newToken = authToken.generateToken(id);
            res.header('Auth-Token', newToken);
            res.header('Refresh-Token', newRefreshToken);

            response = success.put({}, 'el token de autenticación');
        }
        else 
            response = errors.putError('el token de autenticación');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

export default authRouter;