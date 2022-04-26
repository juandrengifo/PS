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

const { verifyToken } = authToken;
const Op = Sequelize.Op;

const {
    Activities_Users,
    Activities_Sessions,
    Levels,
    Matches_Feeds,
    Phrases_Feeds,
    Secuences_Feeds
} = models;

/** Iniciar el historicalRouter */
let histoRouter = express.Router();

/** Endpoints */

/** GET */
/** Obtener el histórico de niveles */
histoRouter.get('/:uid/:mid/levels', verifyToken, async (req, res) => {
    const { uid, mid } = req.params;
    const { start, end } = req.query;

    let response = {};
    try {
        const activities = await Activities_Users.findAll({
            attributes: [ 'id' ],
            where: { id_user: uid, id_mechanic: mid },
            include: [{
                model: Activities_Sessions,
                attributes: [ 'id' ],
                where: {
                    date_start: { [Op.between]: [ start, end ] },
                    date_end: { [Op.between]: [ start, end ] }
                },
                include: [{
                    model: Levels,
                    attributes: [
                        'id',
                        'date_start',
                        'date_end',
                        'level',
                        'score',
                        'id_session'
                    ]
                }]
            }]
        });

        if (activities && activities.length > 0) {
            /** Obtener solamente la información de los niveles */
            let sessions = [];
            activities.forEach(activity => {
                activity = activity.toJSON();
                const { Activities_Sessions } = activity;
                sessions = sessions.concat(Activities_Sessions);
            });

            let levels = [];
            sessions.forEach(session => {
                const { Levels } = session;
                levels = levels.concat(Levels);
            });

            const data = Object.assign({}, ...levels.map(level => {
                return { [level.id]: level };
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

/** Obtener el histórico de matches */
histoRouter.get('/:uid/:mid/matches', verifyToken, async (req, res) => {
    const { uid, mid } = req.params;
    const { start, end } = req.query;

    let response = {};
    try {
        const activities = await Activities_Users.findAll({
            attributes: [ 'id' ],
            where: { id_user: uid, id_mechanic: mid },
            include:[{
                model: Activities_Sessions,
                attributes: [ 'id' ],
                where: {
                    date_start: { [Op.between]: [ start, end ] },
                    date_end: { [Op.between]: [ start, end ] }
                },
                include: [{
                    model: Levels,
                    attributes: [ 'id' ],
                    include: [{
                        model: Matches_Feeds,
                        attributes: [ 'id', 'is_good', 'variable']
                    }]
                }]
            }]
        });

        if (activities && activities.length > 0) {
            /** Sólo es necesario obtener los matches */
            /** Obtener las sesiones de las actividades */
            let sessions = [];
            activities.forEach(activity => {
                activity = activity.toJSON();
                const { Activities_Sessions } = activity;
                sessions = sessions.concat(Activities_Sessions);
            });

            /** Obtener los niveles de las sesiones */
            let levels = [];
            sessions.forEach(session => {
                const { Levels } = session;
                levels = levels.concat(Levels);
            });

            /** Obtener finalmente los matches */
            let feeds = [];
            levels.forEach(level => {
                const { Matches_Feeds } = level;
                feeds = feeds.concat(Matches_Feeds);
            });

            const data = Object.assign({}, ...feeds.map(feed => {
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

/** Obtener el histórico de phrases */
histoRouter.get('/:uid/:mid/phrases', verifyToken, async (req, res) => {
    const { uid, mid } = req.params;
    const { start, end } = req.query;

    let response = {};
    try {
        const activities = await Activities_Users.findAll({
            attributes: [ 'id' ],
            where: { id_user: uid, id_mechanic: mid },
            include: [{
                model: Activities_Sessions,
                attributes: [ 'id' ],
                where: {
                    date_start: { [Op.between]: [ start, end ] },
                    date_end: { [Op.between]: [ start, end ] }
                },
                include: [{
                    model: Levels,
                    attributes: [ 'id' ],
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
                }]
            }]
        });

        if (activities && activities.length > 0) {
            /** Sólo es necesario obtener las frases */
            /** Obtener las sesiones de las actividades */
            let sessions = [];
            activities.forEach(activity => {
                activity = activity.toJSON();
                const { Activities_Sessions } = activity;
                sessions = sessions.concat(Activities_Sessions);
            });

            /** Obtener los niveles de las sesiones */
            let levels = [];
            sessions.forEach(session => {
                const { Levels } = session;
                levels = levels.concat(Levels);
            });

            /** Obtener finalmente las phrases */
            let feeds = [];
            levels.forEach(level => {
                const { Phrases_Feeds } = level;
                feeds = feeds.concat(Phrases_Feeds);
            });

            const data = Object.assign({}, ...feeds.map(feed => {
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

/** Obtener histórico de sesiones */
histoRouter.get('/:uid/:mid/sessions', verifyToken, async (req, res) => {
    const { uid, mid } = req.params;
    const { start, end } = req.query;

    let response = {};
    try {
        const activities = await Activities_Users.findAll({
            attributes: [ 'id' ],
            where: { id_user: uid, id_mechanic: mid },
            include: [{
                model: Activities_Sessions,
                attributes: [ 'id', 'date_start', 'date_end' ],
                where: {
                    date_start: { [Op.between]: [ start, end] },
                    date_end: { [Op.between]: [ start, end ] }
                }
            }]
        });

        if (activities && activities.length > 0) {
            /** Retornar solamente las sesiones */
            let sessions = [];
            activities.forEach(activity => {
                activity = activity.toJSON();
                const { Activities_Sessions } = activity;
                sessions = sessions.concat(Activities_Sessions);
            });

            const data = Object.assign({}, ...sessions.map(session => {
                return { [session.id]: session };
            }));

            response = success.get({ Sessions_Feeds: data }, 'las sesiones');
        }
        else
            response = errors.getError('las sesiones');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

histoRouter.get('/:uid/:mid/secuences', verifyToken, async (req, res) => {
    const { uid, mid } = req.params;
    const { start, end } = req.query;

    let response = {};
    try {
        const activities = await Activities_Users.findAll({
            attributes: [ 'id' ],
            where: { id_user: uid, id_mechanic: mid },
            include: [{
                model: Activities_Sessions,
                attributes: [ 'id' ],
                where: {
                    date_start: { [Op.between]: [ start, end ] },
                    date_end: { [Op.between]: [ start, end ] }
                },
                include: [{
                    model: Levels,
                    attributes: [
                        'id',
                        'date_start',
                        'date_end',
                        'level',
                        'score',
                        'id_session'
                    ],
                    include: [{
                        model: Secuences_Feeds,
                        attributes: [
                            'id',
                            'hits',
                            'how',
                            'mistakes',
                            'question',
                            'tale'
                        ]
                    }]
                }]
            }]
        });

        if (activities && activities.length > 0) {
            /** Retornar solo los niveles */
            let levels = [];
            activities.forEach(activity => {
                activity = activity.toJSON();

                activity.Activities_Sessions.forEach(session => {
                    const { Levels } = session;
                    levels = levels.concat(Levels);
                });
            });

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

export default histoRouter;