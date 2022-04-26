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
    Levels,
    Matches_Feeds,
    Phrases_Feeds,
    Secuences_Feeds,  
} = models;

/** Iniciar feedbackRouter */
let feedbackRouter = express.Router();

/** Endpoints */

/** GET */
/** Obtener los niveles para una sesión de una actividad */
feedbackRouter.get('/:id_session/levels', verifyToken, async (req, res) => {
    const { id_session } = req.params;

    let response = {};
    try {
        const levels = await Levels.findAll({
            attributes: [
                'id',
                'date_start',
                'date_end',
                'level',
                'score',
                'id_session'
            ],
            where: { id_session }
        });

        if (levels && levels.length > 0) {
            const data = Object.assign({}, ...levels.map(level => {
                return { [level.id]: level }
            }));

            response = success.get({ Levels_Feeds: data }, 'los niveles');
        }
        else
            response = errors.getError('los niveles');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Obtener los matches para una sesión de una actividad */
feedbackRouter.get('/:id_session/matches', verifyToken, async (req, res) => {
    const { id_session } = req.params;

    let response = {};
    try {
        const levels = await Levels.findAll({
            attributes: [ 'id' ],
            where: { id_session },
            include: [{
                model: Matches_Feeds,
                attributes: [ 'id', 'is_good', 'variable' ]
            }]
        });

        if (levels && levels.length > 0) {
            /** Como lo importante son los feeds y no los niveles es
              * conveniente para el frontend extraer y enviar sólo la
              * información de los feeds.
              */
            let feeds = [];
            levels.forEach(level => {
                level = level.toJSON();
                const { Matches_Feeds } = level;
                /** Concatenar los Match_Feeds */
                feeds = feeds.concat(Matches_Feeds);
            });

            let data = Object.assign({}, ...feeds.map(feed => {
                return { [feed.id]: feed };
            }));

            response = success.get({ Matches_Feeds: data }, 'los matches');
        }
        else
            response = errors.getError('los matches');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Obtener las phrases para una sesión de una actividad */
feedbackRouter.get('/:id_session/phrases', verifyToken, async (req, res) => {
    const { id_session } = req.params;

    let response = {};
    try {
        const levels = await Levels.findAll({
            attributes: [ 'id' ],
            where: { id_session },
            include: [{
                model: Phrases_Feeds,
                attributes: [
                    'id',
                    'id_phrase',
                    'checked',
                    'kind',
                    'order_phrase',
                    'word'
                ]
            }]
        });

        if (levels && levels.length > 0) {
            let feeds = [];
            levels.forEach(level => {
                level = level.toJSON();
                const { Phrases_Feeds } = level;
                /** Concatenar los Phrases_Feeds */
                feeds = feeds.concat(Phrases_Feeds);
            });

            let data = Object.assign({}, ...feeds.map(feed => {
                return { [feed.id]: feed };
            }));

            response = success.get({ Phrases_Feeds: data }, 'las phrases');
        }
        else
            response = errors.getError('las phrases');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Obtener los secuences para una sesión de una actividad */
feedbackRouter.get('/:id_session/secuences', verifyToken, async (req, res) => {
    const { id_session } = req.params;

    let response = {};
    try {
        const levels = await Levels.findAll({
            attributes: [ 
                'id',
                'date_end',
                'date_start', 
                'level', 
                'score',
                'id_session' 
            ],
            where: { id_session },
            include: [{
                model: Secuences_Feeds,
                attributes: [
                    'id',
                    'hits',
                    'how',
                    'mistakes',
                    'tale'
                ]
            }]
        });

        if (levels && levels.length > 0) {
            const data = Object.assign({}, ...levels.map(level => {
                return { [level.id]: level };
            }));

            response = success.get({ Levels_Feeds: data }, 'los secuences');
        }
        else 
            response = errors.getError('los secuences');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** POST */
/** Crear nuevo match para un nivel */
feedbackRouter.post('/matches', verifyToken, async (req, res) => {
    const { match } = req.body;
    
    let response = {};
    try {
        const newMatch = await Matches_Feeds.create(match);

        if (newMatch)
            response = success.post(newMatch, 'el match');
        else
            response = errors.postError('el match');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Crear nuevo phrase para un nivel */
feedbackRouter.post('/phrases', verifyToken, async (req, res) => {
    const { phrase } = req.body;

    let response = {};
    try {
        const newPhrase = await Phrases_Feeds.create(phrase);

        if (newPhrase)
            response = success.post(newPhrase, 'la phrase');
        else
            response = errors.postError('la phrase');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Crear un nuevo feed para secuencia */
feedbackRouter.post('/secuences', verifyToken, async (req, res) => {
    const { secuence } = req.body;

    let response = {};
    try {
        const newSecuence = await Secuences_Feeds.create(secuence);

        if (newSecuence)
            response = success.post(newSecuence, 'el secuence');
        else
            response = errors.postError('el secuence');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** PUT */
/** Endpoint para actualizar los feed de secuencia */
feedbackRouter.put('/secuences/levels/:id_level', verifyToken, async (req, res) => {
    const { id_level } = req.params;
    const { feed } = req.body;

    let response = {};
    try {
        const updatedRecords = await Secuences_Feeds.update(feed, {
            where: { id_level }
        });

        if (updatedRecords)
            response = success.put(updatedRecords, 'los secuences');
        else
            response = errors.putError('los secuences');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});


export default feedbackRouter;