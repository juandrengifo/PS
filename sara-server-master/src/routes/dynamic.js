/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import express from 'express';

import errors from '../responses/error';
import success from '../responses/success';

import models from '../models';

let {
    Activities_Situations, 
    Activity, 
    Mechanic,
    Situation 
} = models;

/** Iniciar el router */
let dynamicRouter = express.Router();

/** Endpoints */

/** GET */
/** Obtener todas las mecánicas de tipo dinámico */
dynamicRouter.get('/mechanics', async (req, res) => {
    let response = {};
    try {
        let mechanics = await Mechanic.findAll({
            attributes: [ 'id', 'name' ],
            where: { semantic_description: 2 }
        });

        if (mechanics && mechanics.length > 0) {
            let data = Object.assign({}, ...mechanics.map(mechanic => {
                return { [mechanic.id]: mechanic };
            }));

            response = success.get(data, 'las mecánicas');
        }
        else
            response = errors.getError('las mecánicas');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** 
 * Obtener la información de situaciones y actividades 
 * dependiendo de la mecánica 
 */
dynamicRouter.get('/mechanics/:id/situations', async (req, res) => {
    let { id } = req.params;

    let response = {};
    try {
        let situations = await Activities_Situations.findAll({
            attributes: [ 'id_mechanic' ],
            where: { id_mechanic: id },
            include: [{
                model: Activity,
                attributes: [ 'id', 'name' ]
            }, {
                model: Situation,
                attributes: [ 'id', 'name' ]
            }]
        });

        if (situations && situations.length > 0) {
            let data = Object.assign({}, ...situations.map(situation => {
                let s = situation.toJSON();
                let _activity = s.Activity;
                let _situation = s.Situation;
                return {
                    [_activity.id]: {
                        id: _activity.id,
                        id_situation: _situation.id,
                        name: _activity.name,
                    }
                };
            }));

            response = success.get(data, 'las situaciones');
        }
        else
            response = errors.getError('las situaciones');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

export default dynamicRouter;