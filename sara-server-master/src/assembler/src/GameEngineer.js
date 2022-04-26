/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description Clase encargada de coordinar la construcción de
 * un ORJ (Objeto Representativo del Juego) dependiendo del builder
 */

/** Imports */

/** Definición de la clase */
class GameEngineer {

    /** Constructor */
    constructor(builder) {
        this.builder = builder;
    }

    /** Métodos */

    /** Método para construir el juego (Objeto Representativo del Juego - ORJ) */
    async buildGame() {
        /** Se comienza con la construcción sincrónica */
        this.builder.buildActivityId();
        this.builder.buildMechanic();
        this.builder.buildPath();
        this.builder.buildPatient();
        this.builder.buildReader();
        this.builder.buildVariability();
        this.builder.buildVocabulary();
        
        this.builder.buildDirectory();

        /** Se continúa con la construcción asincrónica */
        try {
            /** Calcular el "id" de la actividad por usuario */
            await this.builder.buildActivityUserId();
            /** Construir la lista de componentes */
            await this.builder.buildComponents();
            /** Construir la lista de elementos in-game (parámetros) */
            await this.builder.buildInnerElements();
        }
        catch (err) {
            throw Error(err);
        }
    }

    /** Método para obtener el ORJ */
    getGame() {
        return this.builder.getGame();
    }
}

export default GameEngineer;