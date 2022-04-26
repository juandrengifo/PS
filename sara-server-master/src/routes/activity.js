/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import express from 'express';
import axios from 'axios';

import errors from '../responses/error';
import success from '../responses/success';

import authToken from '../auth/token';
import models from '../models';

const { verifyToken } = authToken;
const {
    Activity,
    Activities_Sessions, 
    Activities_Users,
    Mechanic, 
    Syntactic_Structure
} = models;

/** Iniciar activityRouter */
let activityRouter = express.Router();

/** Cargar ambiente y variables de entorno */
require('custom-env').env(process.env.NODE_ENV || 'dev');
const GAME_DELETE_URL = `${process.env.FILE_SERVER_URL}/game/remove`;

/** Endpoints */

/** GET */
/** Obtener la información de una actividad de un usuario */
activityRouter.get('/:id', verifyToken, async (req, res) => {
    const { id } = req.params;

    let response = {};
    try {
        let activity = await Activities_Users.findOne({
            attributes: [
                'id',
                'build_path',
                'date_from',
                'date_to'
            ],
            where: { id },
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

        if (activity) {
            activity = activity.toJSON();
            /** Convertir las listas internas en objetos */
            const { Activities_Sessions } = activity;

            Activities_Sessions.sort((a, b) => {
                return a.id < b.id ? 1 : -1;
            });

            let ss = Object.assign({}, ...Activities_Sessions.map(as => {
                return { [as.id]: as };
            }));
            activity.Activities_Sessions = ss;

            response = success.get(activity, 'la actividad');
        }
        else
            response = errors.getError('la actividad');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Obtener todas las sesiones de una actividad */
activityRouter.get('/:id/sessions', verifyToken, async (req, res) => {
    const { id } = req.params;

    let response = {};
    try {
        const sessions = await Activities_Sessions.findAll({
            attributes: [
                'id',
                'audio',
                'comment',
                'date_start',
                'date_end'
            ],
            where: { id_activity_user: id }
        });

        if (sessions && sessions.length > 0) {
            let data = Object.assign({}, ...sessions.map((session) => {
                return { [session.id]: session };
            }));

            response = success.get(data, 'las sesiones');
        }
        else
            response = errors.get('las sesiones');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** PUT */
/** Endpoint encargado de actualizar una actividad de un usuario */
activityRouter.put('/:id', verifyToken, async (req, res) => {
    const { id } = req.params;
    const { activity } = req.body;

    let response = {};
    try {
        const activityRecord = await Activities_Users.findOne({
            attributes: [ 
                'id', 
                'build_path',
                'date_from',
                'date_to' 
            ],
            where: { id },
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

        if (activityRecord) {
            const updatedRecord = await activityRecord.update(activity);
            if (updatedRecord)
                response = success.put(updatedRecord, 'la actividad');
            else
                response = errors.putError('la actividad');
        }
        else
            response = errors.putError('la actividad');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** DELETE */
/** Endpoint encargado de borrar una actividad de un usuario */
activityRouter.delete('/:id', verifyToken, async (req, res) => {
    const { id } = req.params;

    let response = {};
    try {
        const activity = await Activities_Users.findOne({ 
            attributes: [ 'id', 'build_path' ],
            where: { id }
        });

        if (activity) {
            await Activities_Users.destroy({ where: { id }});
            response = success.delete(activity, 'la actividad');

            /** Borrar el juego generado que se encuentra en el servidor de juegos */
            const deleteUrl = `${GAME_DELETE_URL}/${activity.build_path}`;
            axios.delete(deleteUrl);
        }
        else
            response = errors.deleteError('la actividad');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

export default activityRouter;