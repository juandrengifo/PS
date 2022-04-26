/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

/** 
 * Esta ruta contiene los endpoints relacionados al configurador de
 * actividades pertenecientes a la descripción estática.
 */

import express from 'express'
import Sequelize from 'sequelize';

import errors from '../responses/error';
import success from '../responses/success';

import authToken from '../auth/token';
import models from '../models';

let { verifyToken } = authToken;
let Op = Sequelize.Op;

let { 
    Activities_Mechanics,
    Activity,
    Mechanic,
    Semantic_Category,
    Semantic_Subcategory,
    Syntactic_Structure,
} = models;

/** Iniciar el router */
let staticRouter = express.Router();

/** Endpoints */

/** GET */
/** Endpoint para obtener todas las categorías */
staticRouter.get('/categories', verifyToken, async (req, res) => {
    let response = {};
    try {
        let categories = await Semantic_Category.findAll({
            attributes: [ 'id', 'name' ]
        });

        if (categories && categories.length > 0) {
            let data = Object.assign({}, ...categories.map((category) => {
                return { [category.id]: category };
            }));

            response = success.get(data, 'las categorías');
        }
        else
            response = errors.getError('las categorías');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Endpoint para obtener las subcategorías de una categoría */
staticRouter.get('/categories/:id/subcategories', verifyToken, async (req, res) => {
    let { id } = req.params;

    let response = {};
    try {
        let subcategories = await Semantic_Subcategory.findAll({
            attributes: [ 'id', 'name' ],
            where: { id_category: id }
        });

        if (subcategories && subcategories.length > 0) {
            let data = Object.assign({}, ...subcategories.map((subcategory) => {
                return { [subcategory.id]: subcategory };
            }));

            response = success.get(data, 'las subcategorías');
        }
        else
            response = errors.get('las subcategorías');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Endpoint para obtener las estructuras sintáticas */
staticRouter.get('/structures', verifyToken, async (req, res) => {
    let response = {};
    try {
        let structures = await Syntactic_Structure.findAll({
            attributes: [ 'id', 'name', 'order' ],
            order: [
                [ Sequelize.col('order'), 'ASC' ]
            ]
        });

        if (structures && structures.length > 0) {
            let data = Object.assign({}, ...structures.map((structure) => {
                return { [structure.id]: structure };
            }));

            response = success.get(data, 'las estructuras');
        }
        else
            response = errors.getError('las estructuras');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** 
 * Endpoint para obtener el vocabulario dependiendo de la estructura y la
 * subcategoría seleccionados.
 */
staticRouter.get(
    '/subcategories/:sid/structures/:stid/vocabularies',
    verifyToken,
    async (req, res) => {
        let { sid, stid } = req.params;

        let response = {};
        try {
            let subcategory = await Semantic_Subcategory.findOne({
                attributes: [ 'id', 'name' ],
                where: { id: sid }
            });

            if (subcategory) {
                let vocabulary = await subcategory.getVocabularies({
                    attributes: [ 'id', 'name' ],
                    where: { id_structure: stid },
                    joinTableAttributes: [ 'id_subcategory', 'id_vocabulary' ]
                });

                if (vocabulary && vocabulary.length > 0) {
                    let data = Object.assign({}, ...vocabulary.map(voc => {
                        let v = voc.toJSON();
                        delete v.Subcategories_Vocabularies;
                        return { [v.id]: v };
                    }));

                    response = success.get(data, 'el vocabulario');
                }
                else
                    response = errors.getError('el vocabulario');
            }
            else
                response = errors.getError('el vocabulario');
        }
        catch (err) {
            response = errors.internalError();
        }

        res.json(response);
    }
);

/** Endpoint para obtener información de la mécanica y la actividad */
staticRouter.get(
    '/subcategories/:sid/structures/:stid/mechanics',
    verifyToken,
    async (req, res) => {
        let { sid, stid } = req.params;

        let response = {};
        try {
            let mechanics = await Activities_Mechanics.findAll({
                attributes: [ 'id_structure', 'id_subcategory' ],
                where: {
                    [Op.and]: [{ id_structure: stid }, { id_subcategory: sid }]
                },
                include: [{
                    model: Activity,
                    attributes: [ 'id', 'name' ]
                }, {
                    model: Mechanic,
                    attributes: [ 'id', 'name' ]
                }]
            });

            if (mechanics && mechanics.length > 0) {
                let data = Object.assign({}, ...mechanics.map(mechanic => {
                    let m = mechanic.toJSON();
                    let _activity = m.Activity;
                    let _mechanic = m.Mechanic;
                    return { [_activity.id ]: {
                        id: _activity.id,
                        id_mechanic: _mechanic.id,
                        name: _activity.name,
                        name_mechanic: _mechanic.name,                        
                    }};
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
    }
);

export default staticRouter;