/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import express from 'express';

import errors from '../responses/error';
import success from '../responses/success';

import GameEngineer from '../assembler/src/GameEngineer';
import GameUploader from '../assembler/src/GameUploader';
import P5GameBuilder from '../assembler/src/P5GameBuilder';
import P5ProductGenerator from '../assembler/src/P5ProductGenerator';

import authToken from '../auth/token';
import models from '../models';

let { verifyToken } = authToken;
let { Activities_Users } = models;

/** Iniciar assemblerRouter */
let assemblerRouter = express.Router();

/** Cargar el ambiente y variables de entorno */
require('custom-env').env(process.env.NODE_ENV || 'dev');
const FILE_UPLOAD_URL = `${process.env.FILE_SERVER_URL}/game/upload`;

/** Endpoints */

/** POST */
assemblerRouter.post('/', verifyToken, async (req, res) => {
    /** Obtener la configuración */
    const { configuration } = req.body;

    /** Ejecución de la lógica de ensamblaje */
    let builder = new P5GameBuilder(configuration);
    let engineer = new GameEngineer(builder);

    let response = {};
    try {
        /** Construir el ORJ */
        await engineer.buildGame();
        let game = engineer.getGame();

        /** Iniciar el generador del juego */
        let generator = new P5ProductGenerator(game);

        /** Iniciar la generación del juego */
        await generator.derivateProduct();

        /** Enviar el juego generado al servidor de archivos */        
        let uploader = new GameUploader(game.path, generator.path);
        uploader.upload(FILE_UPLOAD_URL);

        /** Borrar el directorio de generación */
        generator.removeProduct();

        /**
         * Guardar el nuevo juego generado en la base de datos.
         * Este se guarda en la tabla Activities_Users.
         */

        /** Calcular las horas de inicio y fin de la actividad */
        let today = new Date();
        let weekLater = new Date();
        weekLater.setDate(weekLater.getDate() + 7);

        const { mechanic, patient, sintactic } = configuration;
        const record = {
            id: game.activityUserId,
            build_path: game.path,
            date_from: today,
            date_to: weekLater,
            id_activity: game.activityId,
            id_mechanic: mechanic.id_mechanic ? mechanic.id_mechanic : mechanic.id,
            id_structure: sintactic ? sintactic.id : null,
            id_user: patient.id
        };
        
        await Activities_Users.create(record);
        
        /** Respuesta */
        let data = { 
            id: game.activityUserId,
            path: game.path 
        };
        response = success.post(data, 'la actividad');
    }
    catch (err) {
        response = errors.postError('la actividad');
    }

    res.json(response);
});

export default assemblerRouter;