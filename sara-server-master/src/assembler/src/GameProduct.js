/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description Clase encargada de contener toda la información
 * de un ORJ (Objeto Representativo del Juego)
 */

/** Imports */

/** Definición de la clase */
class GameProduct {

    /** Constructor */
    constructor() {
        this.activityId = null;
        this.activityUserId = null;
        this.components = null;
        this.elements = null;
        this.key = null;
        this.mechanic = null;
        this.patient = null;
        this.path = null;
        this.reader = null;
        this.variability = null;
        this.vocabulary = null;
    }

    /** Métodos */

    /** Método para asignar el "id" de la actividad */
    setActivityId(id) {
        this.activityId = id;
    }

    /** Método para asignar el "id" de la actividad de un usuario */
    setActivityUserId(id) {
        this.activityUserId = id;
    }

    /** Método para asignar los componentes */
    setComponents(components) {
        this.components = components;
    }

    /** Método para asignar los elementos internos */
    setInnerElements(elements) {
        this.elements = elements;
    }

    /** Método para asignar el key aleatorio */
    setKey(key) {
        this.key = key;
    }

    /** Método para asignar la mecánica */
    setMechanic(mechanic) {
        this.mechanic = mechanic;
    } 

    /** Método para asignar el "id" del paciente */
    setPatient(patient) {
        this.patient = patient;
    }

    /** Método para asignar la url de ubicación */
    setPath(path) {
        this.path = path;
    }

    /** Método para asignar el proceso lector */
    setReader(reader) {
        this.reader = reader;
    }

    /** Método para asignar ciertos elementos de variabilidad del juego */
    setVariability(variability) {
        this.variability = variability;
    }

    /** Método para asignar el vocabulario */
    setVocabulary(vocabulary) {
        this.vocabulary = vocabulary;
    }

    /** Método para convertir la clase en un objeto JSON */
    toJSON() {
        let json = { 
            ...this.elements, 
            user: this.patient,
            variability: this.variability 
        };

        if (this.reader) 
            json.reader = this.reader;
        
        return json;
    }
}

export default GameProduct;