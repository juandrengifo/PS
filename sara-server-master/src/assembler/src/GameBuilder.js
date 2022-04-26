/**
 * @author martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description Clase encargada de la funcionalidad base de un
 * constructor de juegos. Construye un ORJ (Objeto Representativo del Juego)
 */

/** Imports */
import crypto from 'crypto';
import GameProduct from './GameProduct';
import { componentsModels } from '../utils/models';
import { query } from '../utils/queries';
import { variabilityData } from '../utils/variability';
import models from '../../models';

let { Activities_Users } = models;

/** Definición de la clase */
class GameBuilder {

    /** Constructor */
    constructor(configuration) {
        this.configuration = configuration;
        this.game = new GameProduct(); /** ORJ */
    }

    /** Métodos */

    /** Método para asignar el "id" de la actividad al juego */
    buildActivityId() {
        const { mechanic, situations } = this.configuration;
        const id = situations ? situations.id : mechanic.id;
        this.game.setActivityId(id);
    }

    /** Método para asignar el "id" de la actividad de un usuario */
    async buildActivityUserId() {
        let id = 1;
        try {
            let activityUsers = await Activities_Users.findAll({
                attributes: [ 'id' ],
                order: [[ 'id', 'DESC' ]],
                limit: 1
            });

            if (activityUsers && activityUsers.length > 0)
                id = activityUsers[0].id + 1;
        }
        catch (err) {
            console.log(err);
        }
        this.game.setActivityUserId(id);
    }

    /** 
     * Método para obtener los nombres de los componentes necesarios
     * para la generación del juego
     */
    async buildComponents() {
        const { mechanic } = this.configuration;
        const id_mechanic = mechanic.id_mechanic ? mechanic.id_mechanic : mechanic.id;
        const Component = componentsModels[id_mechanic];

        try {
            let components = await Component.findAll({
                attributes: [ 'id', 'name', 'file_type', 'from_path', 'to_path' ],
                raw: true
            });

            if (components)
                this.game.setComponents(components);
        }
        catch (err) {
            console.log(err);
            throw Error(err);
        }
    }

    /**
     * Método para obtener los elementos que varían dentro del juego como
     * audios, demandas, imágenes, etc
     */
    async buildInnerElements() {
        const { mechanic, situations, times, vocabulary } = this.configuration;
        let { id, id_mechanic } = mechanic;
        let queryData;
        /** Reasignación de variables para determinadas mecánicas */
        if (id_mechanic)
            queryData = { id_activity: id, vocabulary: vocabulary };
        else {
            id_mechanic = id;
            queryData = { id_activity: situations.id, times };
        }

        try {
            let images = await query[id_mechanic](queryData);

            if (images)
                this.game.setInnerElements(images);
        }
        catch (err) {
            console.log(err);
            throw Error(err);
        }
    }

    /** Método para asignar la mecánica del juego */
    buildMechanic() {
        const { mechanic } = this.configuration;
        const name_mechanic = mechanic.name_mechanic ? mechanic.name_mechanic : mechanic.name;
        this.game.setMechanic(name_mechanic);
    }

    /** Método para generar la url donde estará almacenado el juego */
    buildPath() {
        const { id } = this.configuration.patient;
        const { mechanic } = this.configuration;
        const name_mechanic = mechanic.name_mechanic ? mechanic.name_mechanic : mechanic.name;

        /** Armar el path base */
        const basePath = `${id}_${name_mechanic}`;
        /** Generar un key random para el juego */
        const key = crypto.randomBytes(8).toString('hex');
        /** Armar el path de juego */
        const path = `${basePath}_${key}`;

        this.game.setKey(key)
        this.game.setPath(path);
    }

    /** Método para asignar el "id" del paciente al cual se le generó el juego */
    buildPatient() {
        const { patient } = this.configuration;
        this.game.setPatient(patient);
    }

    /** Método para asignar el proceso lector del juego */
    buildReader() {
        const { reader } = this.configuration;
        if (reader) {
            const readerValue = reader.name === 'Si' ? true : false;
            this.game.setReader({ id: reader.id, value: readerValue });
        }
    }

    /** 
     * Método para obtener ciertos elementos variables dependiendo de 
     * la mecánica del juego a construir
     */
    buildVariability() {
        const { mechanic } = this.configuration;
        const id_mechanic = mechanic.id_mechanic ? mechanic.id_mechanic : mechanic.id;
        const variability = variabilityData[id_mechanic];
        this.game.setVariability(variability);
    }

    /** Método para asignar el vocabulario del juego */
    buildVocabulary() {
        const { vocabulary } = this.configuration;
        this.game.setVocabulary(vocabulary);
    }

    /** Método para obtener el juego */
    getGame() {
        return this.game;
    }
}

export default GameBuilder;