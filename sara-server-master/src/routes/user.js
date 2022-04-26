/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import express from 'express';
import Sequelize from 'sequelize';
import crypto from 'crypto';
import transporter from '../connections/mailer';

import errors from '../responses/error';
import success from '../responses/success';

import authPassword from '../auth/password';
import authToken from '../auth/token';
import models from '../models';

const { col, fn, Op } = Sequelize;
let { verifyToken } = authToken;
let { Avatar_Variation, User, Role } = models;

require('custom-env').env(process.env.NODE_ENV || 'dev');
const EMAIL_USER = process.env.EMAIL_USER;

/** Iniciar userRouter */
let userRouter = express.Router();

/** Endpoints */

/** GET */
/** Endpoint para obtener todos los usuarios */
userRouter.get('/', verifyToken, async (req, res) => {
    let { search } = req.query;
    let where = {};
    /** Armar where para el valor de búsqueda */
    if (search) {
        search = search.toLowerCase();
        where = {
            [Op.or]: [
                { id: { [Op.substring]: search }},
                { name: Sequelize.where(fn('LOWER', col('User.name')), 'LIKE', `%${search}%`)},
                { last_name: Sequelize.where(fn('LOWER', col('User.last_name')), 'LIKE', `%${search}%`)},
            ]
        };
    }

    let response = {};
    try {
        const users = await User.findAll({
            attributes: [
                'id',
                'active',
                'birthday_date',
                'color',
                'email',
                'gender',
                'is_admin',
                'last_name',
                'name',
                'profile_img',
                'thumbnail_alias',
                'username'
            ],
            where,
            include: [{ model: Role, attributes: [ 'id', 'name' ] }]
        });

        if (users && users.length > 0) {
            const data = Object.assign({}, ...users.map(user => {
                return { [user.id]: user };
            }));

            response = success.get(data, 'los usuarios');
        }
        else
            response = errors.getError('los usuarios');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Endpoint para obtener un usuario por medio de su id */
userRouter.get('/:id', verifyToken, async (req, res) => {
    let { id } = req.params;
    
    let response = {};
    try {
        let user = await User.findOne({
            attributes: [
                'id',
                'active',
                'birthday_date',
                'color',
                'email',
                'gender',
                'is_admin',
                'last_name',
                'name',
                'profile_img',
                'score',
                'thumbnail_alias',
                'username'
            ],
            where: { id },
            include: [{ 
                model: Role, 
                attributes: [ 'id', 'name' ] 
            }, {
                model: Avatar_Variation,
                attributes: [
                    'id',
                    'eye',
                    'hair',
                    'torso',
                    'img_path',
                    'thumbnail_path',
                    'id_avatar'
                ] 
            }, {
                model: User,
                as: 'Therapists',
                attributes: [ 'id' ],
                include: [{
                    model: Avatar_Variation,
                    attributes: [
                        'id',
                        'eye',
                        'hair',
                        'torso',
                        'img_path',
                        'thumbnail_path',
                        'id_avatar'
                    ]
                }]
            }]
        });

        if (user) {
            user = user.toJSON();
            let Therapists = user.Therapists;
            Therapists = Object.assign({}, ...Therapists.map(t => {
                delete t.Therapists_Patients;
                return { [t.id]: t };
            }));
            user.Therapists = Therapists;

            if (user.Avatar_Variation) {
                const { eye, hair, torso } = user.Avatar_Variation;
                user.Avatar_Variation.eye = JSON.parse(eye);
                user.Avatar_Variation.hair = JSON.parse(hair);
                user.Avatar_Variation.torso = JSON.parse(torso);
            }

            response = success.get(user, 'el usuario');
        }
        else
            response = errors.getError('el usuario');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** PUT */
/** Endpoint para actualizar los datos de un usuario */
userRouter.put('/:id', verifyToken, async (req, res) => {
    const { id } = req. params;
    let { user } = req.body;
    const { password } = user;
    /** Si llega un password nuevo, encriptarlo */
    if (password) {
        const encode = await authPassword.encryptPassword(password);
        user.password = encode;
    }

    let response = {};
    try {
        const userRecord = await User.findOne({
            attributes: [
                'id',
                'active',
                'birthday_date',
                'color',
                'email',
                'gender',
                'is_admin',
                'last_name',
                'name',
                'profile_img',
                'score',
                'thumbnail_alias',
                'username'
            ],
            where: { id },
            include: [{
                model: Role,
                attributes: [ 'id', 'name' ]
            }, {
                model: Avatar_Variation,
                attributes: [
                    'id',
                    'eye',
                    'hair',
                    'torso',
                    'img_path',
                    'thumbnail_path',
                    'id_avatar'
                ]
            }]
        }); 

        if (userRecord) {
            const updatedUser = await userRecord.update(user);
            if (updatedUser)
                response = success.put(updatedUser, 'el usuario');
            else
                response = errors.putError('el usuario');
        }            
        else
            response = errors.putError('el usuario');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Endpoint para recuperar la contraseña de un usuario */
userRouter.put('/recover/pwd', async (req, res) => { 
    const { email, role } = req.body;

    let response = {};
    try {
        const userRecord = await User.findOne({ 
            attributes: [ 'id', 'email' ],
            where: { email, id_role: role }
        });

        if (userRecord) {
            // Generar una contraseña nueva provisional para el usuario, dependiendo del rol
            let newPassword = '';
            if (role === 2) {
                const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz';
                for (let i = 0; i < 8; i++)
                    newPassword += chars.charAt(Math.floor(Math.random() * chars.length));
            }
            else if (role === 1) {
                const words = [ 'árbol', 'corazón', 'flor', 'nube', 'sol' ];
                const randomWords = [];
                for (let i = 0; i < 4; i++) {
                    const randomIndex = Math.floor(Math.random() * words.length);
                    randomWords.push(words[randomIndex]);
                }

                newPassword = randomWords.join();
            }

            // Actualizar la contraseña y enviar correo con la contraseña nueva
            const encrypted = await authPassword.encryptPassword(newPassword);
            const updatedUser = userRecord.update({ password: encrypted });
            if (updatedUser) {            
                await transporter.sendMail({
                    from: `"Recuperación de contraseña" <${EMAIL_USER}>`,
                    to: email,
                    subject: 'Recuperación de contraseña',
                    html: `
                    <p>
                        Su contraseña provisional para ingresar al sistema es 
                        <b>${newPassword}</b>
                    </p>
                    `
                });
                response = success.put(userRecord, 'el usuario');
            }
            else
                response = errors.putError('el usuario');
        }
        else
            response = errors.getError('el usuario');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

export default userRouter;