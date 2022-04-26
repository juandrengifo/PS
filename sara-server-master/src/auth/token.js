/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import jwt from 'jsonwebtoken';

import errors from '../responses/error';
import models from '../models';

const { Refresh_Tokens } = models;

require('custom-env').env(process.env.NODE_ENV || 'dev');
const SECRET = process.env.SECRET;
const REFRESH_SECRET = process.env.REFRESH_SECRET;

/** Función para generar token a partir del id de un usuario */
const generateToken = (userId, isRefreshToken = false) => {
    // Asignar expirationTime y TOKEN_SECRET dependiendo si se va a generar un refresh token o no
    const expirationTime = isRefreshToken ? 60 * 60 * 24 * 30 /** 30 días */ : 1 * 60 /** 30 minutos */;
    const TOKEN_SECRET = isRefreshToken ? REFRESH_SECRET : SECRET;
    
    return jwt.sign({ 
        id: userId, 
        exp: Math.floor(Date.now() / 1000) + expirationTime,
        iat: Math.floor(Date.now()) 
    }, TOKEN_SECRET);
}

/** Middleware para verificar el token */
const verifyToken = (req, res, next) => {
    const token = req.header('Auth-Token');    
    if (token) {
        try {
            jwt.verify(token, SECRET);
            next();
        }
        catch (err) {
            return res.json(errors.authError());
        }
    }
    else return res.json(errors.authError());
}

/** Middleware para verificar el refresh token */
const verifyRefreshToken = async (req, res, next) => {
    const { token } = req.body;
    if (token) {
        try {
            // Verificar si el refresh token es válido y no ha expirado
            const decoded = jwt.verify(token, REFRESH_SECRET);

            // Verificar si el refresh token está presente en la whitelist de la DB
            const refreshTokenRecord = await Refresh_Tokens.findOne({
                where: { id: decoded.id, token }
            });
            // Si el token está la whitelist de la DB, anexar el record al body del request
            if (refreshTokenRecord) {
                req.body.refreshTokenRecord = refreshTokenRecord;
                next();
            }
            else
                return res.json(errors.authError());
        }
        catch (err) {
            await Refresh_Tokens.destroy({ where: { token }});
            return res.json(errors.authError());
        }
    }
    else return res.json(errors.authError());
}

export default {
    generateToken,
    verifyToken,
    verifyRefreshToken,
}