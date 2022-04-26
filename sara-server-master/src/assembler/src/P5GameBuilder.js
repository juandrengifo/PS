/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description Clase encargada de construir los juegos cuyo motor
 * gráfico es la librería P5 de javascript
 */

/** Imports */
import path from 'path';
import fse from 'fs-extra';
import GameBuilder from "./GameBuilder";

/** Definición de la clase */
class P5GameBuilder extends GameBuilder {

    /** Constructor */
    constructor(configuration) {
        super(configuration);
    }

    /** Métodos */

    /**
     * Método para construir la estructura de directorio
     * necesaria para los juegos desarrollados con P5
     */
    buildDirectory() {
        /** Crear directorio temporal sino existe */
        const tempPath = path.join(__dirname, '..', 'temp');
        fse.ensureDirSync(tempPath);

        /** 
         * Armar el path del directorio de generación usando: 
         * 1. "id" del paciente,
         * 2. Mecánica de la actividad y,
         * 3. Key generado para el juego
         */
        const directoryPath = path.join(
            tempPath,
            'p5_' +
            `${this.game.patient.id}_` +
            `${this.game.mechanic}_` +
            `${this.game.key}`
        );
        
        /** Crear la estructura de los directorios */
        fse.mkdirSync(directoryPath);
        fse.mkdirSync(path.join(directoryPath, 'audios'));
        fse.mkdirSync(path.join(directoryPath, 'data'));
        fse.mkdirSync(path.join(directoryPath, 'images'));
        fse.mkdirSync(path.join(directoryPath, 'scripts'));
        fse.mkdirSync(path.join(directoryPath, 'scripts/factories'));
        fse.mkdirSync(path.join(directoryPath, 'scripts/main'));
        fse.mkdirSync(path.join(directoryPath, 'scripts/strategies'));
        fse.mkdirSync(path.join(directoryPath, 'scripts/templates'));
        fse.mkdirSync(path.join(directoryPath, 'scripts/utils'));

        /** Copiar los archivos propios de P5 a la raíz del directorio creado */
        try {
            const libraryPath = path.join(
                __dirname, 
                '..', 
                'assets', 
                'library'
            );
            fse.copySync(libraryPath, directoryPath);
        }
        catch (err) {
            throw Error(err);
        }
    }
}

export default P5GameBuilder;