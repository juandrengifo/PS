/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import express from 'express';
import Sequelize from 'sequelize';

import errors from '../responses/error';
import success from '../responses/success';

import authToken from '../auth/token';
import models from '../models';

const { col, fn, Op } = Sequelize;
let { verifyToken } = authToken;
/** Iniciar los modelos */
let { 
    Activity,
    Activities_Users,
    Activities_Sessions,
    Mechanic,
    Syntactic_Structure,
    User, 
    Skin 
} = models;

/** Iniciar patientRouter */
let patientRouter  = express.Router();

/** Endpoints */

/** GET */
/** Obtener todos los pacientes */
patientRouter.get('/', verifyToken, async (req, res) => {
    let { search } = req.query;
    let where = { id_role: 1 };
    if (search) {
        search = search.toLowerCase();
        where[Op.or] = [
            { id: { [Op.substring]: search }},
            { name: Sequelize.where(fn('LOWER', col('User.name')), 'LIKE', `%${search}%`)},
            { last_name: Sequelize.where(fn('LOWER', col('User.last_name')), 'LIKE', `%${search}%`)}
        ];
    }

    let response = {};
    try {
        let users = await User.findAll({
            attributes: [
                'id',
                'color', 
                'createdAt',
                'email',
                'last_name',
                'name',
                'profile_img',
                'thumbnail_alias',
                'username',
            ],
            where,
            include: [{
                model: User,
                as: 'Therapists',
                attributes: [ 'id' ]
            }]
        });

        if (users && users.length > 0) {
            /** Convertir la lista de usuarios en un objeto */
            let data = Object.assign({}, ...users.map((user) => {
                user = user.toJSON();
                let Therapists = user.Therapists;
                /** Convertir la lista de terapeutas en un objeto */
                let therapists = Object.assign({}, ...Therapists.map((t) => {
                    return { [t.id]: t };
                }));
                user.Therapists = therapists;
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

/** Obtener las actividades de un paciente */
patientRouter.get('/:id/activities', verifyToken, async (req, res) => {
    const { id } = req.params;

    let response = {};
    try {
        let activities = await Activities_Users.findAll({
            attributes: [
                'id',
                'build_path',
                'date_from',
                'date_to'
            ],
            where: { id_user: id },
            subQuery: false,
            include: [{
                model: Activity,
                attributes: [ 'id', 'name', 'description', 'logo_path' ]
            }, {
                model: Activities_Sessions,
                attributes: [ 'id', 'audio', 'comment', 'date_start', 'date_end' ],
                order: [[ 'id', 'DESC' ]]
            }, {
                model: Mechanic,
                attributes: [ 'id', 'name', 'pdf_path', 'semantic_description', 'tutorial_path' ]
            }, {
                model: Syntactic_Structure,
                attributes: [ 'id', 'name' ]
            }]
        });

        if (activities && activities.length > 0) {
            /** Convertir la lista de actividades en un objeto */
            let data = Object.assign({}, ...activities.map((activity) => {
                activity = activity.toJSON();
                /** Convertir las listas internas en objetos */
                const { Activities_Sessions } = activity;
                let ss = Object.assign({}, ...Activities_Sessions.map(as => {
                    return { [as.id]: as };
                }));
                activity.Activities_Sessions = ss;

                return { [activity.id]: activity };
            }));

            response = success.get(data, 'las actividades');
        }
        else
            response = errors.getError('las actividades');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Endpoint para obtener la relación entre un usuario y un aspecto */
patientRouter.get('/:id/skin/:sid', verifyToken, async (req, res) => {
    let { id, sid } = req.params;

    let response = {};
    try {
        let user = await User.findOne({
            attributes: [ 'id' ],
            where: { id }
        });

        if (user) {
            let skin = await user.getSkins({ 
                attributes: [ 'id' ],
                joinTableAttributes: [ 'id_user', 'id_skin' ],
                where: { id: sid } 
            });
            if (skin && skin.length > 0) {
                skin = skin[0];
                response = success.get(skin, 'el aspecto');
            }
            else
                response = errors.getError('el aspecto');
        }
        else
            response = errors.getError('el aspecto');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** POST */
/** Endpoint para realizar la asociación entre un usuario y un aspecto */
patientRouter.post('/:id/skin', verifyToken, async (req, res) => {
    let { id } = req.params;
    let { skins } = req.body;

    let response = {};
    try {
        let user = await User.findOne({
            attributes: [ 'id' ],
            where: { id }
        });

        /** Obtener los registros de los aspectos recibidos en el endpoint */
        let Skins = [];
        for (let s in skins) {
            let _skin = skins[s];
            let skin = await Skin.findOne({
                attributes: [ 'id' ],
                where: { id: _skin.id }
            });

            if (skin) Skins.push(skin);
        }

        if (user && Skins.length > 0) {
            /** Se realiza la asociación entre usuario y aspecto */
            let uxs = await user.addSkins(Skins);
            if (uxs && uxs.length > 0) {
                let associations = Object.assign({}, ...uxs.map((us) => {
                    return { [us.id_skin]: us };
                }));

                response = success.join(
                    associations,
                    'los aspectos',
                    'el usuario'
                );
            }
            else
                response = errors.joinError('los aspectos');
        }
        else
            response = errors.joinError('los aspectos');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

export default patientRouter;