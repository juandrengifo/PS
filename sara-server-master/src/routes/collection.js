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

let { verifyToken } = authToken;
/** Iniciar los modelos */
let { Collectable, Collection, Skin } = models;

/** Iniciar el collectionRouter */
let collectionRouter = express.Router();

/** Endpoints */

/** GET */
/** Obtener todas las colecciones con sus coleccionables */
collectionRouter.get('/', verifyToken, async (req, res) => {
    let response = {};
    try {
        let collections = await Collection.findAll({
            attributes: [ 'id', 'name' ],
            include: [{
                model: Collectable,
                attributes: [ 'id', 'name', 'price', 'id_collection' ],
                include: [{
                    model: Skin,
                    attributes: [
                        'id',
                        'img_path',
                        'name',
                        'price',
                        'id_collectable'
                    ],
                    where: { is_default: true }
                }]
            }]
        });

        if (collections && collections.length > 0) {
            /** Convertir la lista de colecciones en un objeto */
            let data = Object.assign({}, ...collections.map((collection) => {
                collection = collection.toJSON();
                let Collectables = collection.Collectables;
                /** Convertir la lista de coleccionables en un objeto */
                let collectables = Object.assign(
                    {}, 
                    ...Collectables.map((collectable) => {
                    let Skins = collectable.Skins;
                    /** 
                     * Obtener el skin por defecto y convertir Skins 
                     * en un objeto
                     */
                    let skin = Skins[0];
                    collectable.Skins = skin;
                    return { [collectable.id]: collectable };
                }));
                collection.Collectables = collectables;
                return { [collection.id]: collection };
            }));

            response = success.get(data, 'las colecciones');
        }
        else
            response = errors.getError('las colecciones');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

/** Obtener un coleccionable perteneciente a una colección */
collectionRouter.get('/:id/collectable/:cid', verifyToken, async (req, res) => {
    let { cid } = req.params;

    let response = {};
    try {
        let collectable = await Collectable.findOne({
            attributes: [ 'id', 'name', 'price', 'id_collection' ],
            where: { id: cid },
            include: [{
                model: Skin,
                attributes: [
                    'id',
                    'is_default',
                    'img_path',
                    'name',
                    'price',
                    'summary',
                ]
            }]
        });

        if (collectable) {
            collectable = collectable.toJSON();
            let Skins = collectable.Skins;
            let skins = Object.assign({}, ...Skins.map((skin) => {
                return { [skin.id]: skin };
            }));
            collectable.Skins = skins;
            response = success.get(collectable, 'el coleccionable');
        }
        else
            response = errors.getError('el coleccionable');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

export default collectionRouter;