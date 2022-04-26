/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import express from 'express'

import errors from '../responses/error';
import success from '../responses/success';

import authToken from '../auth/token';
import models from '../models';

const { verifyToken } = authToken;
const { 
    Activities_Sessions, 
    Levels
} = models;

/** Iniciar sessionRouter */
let sessionRouter = express.Router();

/** Endpoints */

/** POST */
/** Crear una sesión para una actividad */
sessionRouter.post('/', verifyToken, async (req, res) => {
    const { session } = req.body;

    let response = {};
    try {
        const newSession = await Activities_Sessions.create(session);

        if (newSession)
            response = success.post(newSession, 'la sesión');
        else
            response = errors.postError('la sesión');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Crear un nivel para una sesión de una actividad */
sessionRouter.post('/:id/levels', verifyToken, async (req, res) => {
    const { level } = req.body;

    let response = {};
    try {
        const newLevel = await Levels.create(level);

        if (newLevel)
            response = success.post(newLevel, 'el nivel');
        else
            response = errors.postError('level');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** PUT */
/** Endpoint para actualizar una sesión */
sessionRouter.put('/:id', verifyToken, async (req, res) => {
    const { id } = req.params;
    const { session } = req.body;

    let response = {};
    try {
        const sessionRecord = await Activities_Sessions.findOne({
            attributes: [ 
                'id', 
                'audio',
                'comment', 
                'date_start', 
                'date_end' 
            ],
            where: { id }
        });

        if (sessionRecord) {
            const updatedSession = await sessionRecord.update(session);
            if (updatedSession)
                response = success.put(updatedSession, 'la sesión');
            else
                response = errors.putError('la sesión');
        }
        else
            response = errors.putError('la sesión');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Endpoint para actualizar un nivel de una sesión */
sessionRouter.put('/:id/levels/:lid', verifyToken, async (req, res) => {
    const { lid } = req.params;
    const { level } = req.body;

    let response = {};
    try {
        const levelRecord = await Levels.findOne({
            attributes: [ 
                'id', 
                'date_start', 
                'date_end', 
                'level', 
                'score' 
            ],
            where: { id: lid }
        });

        if (levelRecord) {
            const updatedLevel = await levelRecord.update(level);
            if (updatedLevel)
                response = success.put(updatedLevel, 'el nivel');
            else
                response = errors.putError('el nivel');
        }
        else
            response = errors.putError('el nivel');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

export default sessionRouter;