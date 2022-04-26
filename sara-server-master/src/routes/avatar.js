/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import express from 'express';

import errors from '../responses/error';
import success from '../responses/success';

import authToken from '../auth/token';
import models from '../models';

const { verifyToken } = authToken;
const { 
    Avatar, 
    Avatar_Variation 
} = models;

/** Iniciar avatarRouter */
let avatarRouter = express.Router();

/** Endpoints */

/** GET */
/** Endpoint para obtener una variación específica */
avatarRouter.get('/variation', verifyToken, async (req, res) => {
    const { eye, hair, torso, id_avatar } = req.query;
    
    let response = {};
    try {
        let avatarVariation = await Avatar_Variation.findOne({
            attributes: [
                'id',
                'eye',
                'hair',
                'torso',
                'img_path',
                'thumbnail_path',
                'id_avatar'
            ],
            where: { eye, hair, torso, id_avatar }
        });

        if (avatarVariation) {
            avatarVariation = avatarVariation.toJSON();
            let { eye, hair, torso } = avatarVariation;
            eye = JSON.parse(eye);
            hair = JSON.parse(hair);
            torso = JSON.parse(torso);
            const data = {
                id: avatarVariation.id,
                eye,
                hair,
                torso,
                img_path: avatarVariation.img_path,
                thumbnail_path: avatarVariation.thumbnail_path,
                id_avatar: avatarVariation.id_avatar
            };

            response = success.get(data, 'el avatar');
        }
        else
            response = errors.getError('el avatar');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Endpoint para obtener las variaciones por defecto para un género */
avatarRouter.get('/variations/:gender', verifyToken, async (req, res) => {
    const { gender } = req.params;

    let response = {};
    try {
        const avatars = await Avatar.findAll({
            attributes: [ 'id' ],
            where: { gender },
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
                ],
                where: { is_default: true }
            }]
        });

        if (avatars && avatars.length > 0) {
            /** Obtener solamente la información de las variaciones */
            let variations = [];
            avatars.forEach(avatar => {
                avatar = avatar.toJSON();
                const { Avatar_Variations } = avatar;
                variations = variations.concat(Avatar_Variations);
            });

            const data = Object.assign({}, ...variations.map(variation => {
                let { eye, hair, torso } = variation;
                eye = JSON.parse(eye);
                hair = JSON.parse(hair);
                torso = JSON.parse(torso);
                const newVariation = {
                    id: variation.id,
                    eye, 
                    hair, 
                    torso,
                    img_path: variation.img_path,
                    thumbnail_path: variation.thumbnail_path,
                    id_avatar: variation.id_avatar
                };
                return { [newVariation.id]: newVariation };
            }));

            response = success.get(data, 'los avatares');
        }
        else
            response = errors.getError('los avatares');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

export default avatarRouter;