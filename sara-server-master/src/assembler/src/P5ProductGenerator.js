/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description Clase encargada de generar juegos tipo P5.
 * Para ello realiza los siguientes pasos:
 * 1. Recibir el ORJ
 * 2. Obtener los componentes relacionados al ORJ y copiarlos 
 *    desde la carpeta assets al directorio de generación
 * 3. Crear el archivo index.html que contiene los scripts 
 *    necesarios para la ejecución del juego
 */

import path from 'path';
import fse from 'fs-extra';
import ProductGenerator from './ProductGenerator';

const GAME_MOTOR = 'p5';

/** Definición de la clase */
class P5ProductGenerator extends ProductGenerator {

    /** Constructor */
    constructor(game) {
        super(game, GAME_MOTOR);
    }

    /** Método principal */
    async derivateProduct() {
        try {
            /** Acciones sincrónicas */
            /** Obtener los componentes desde los assets */
            super.derivateProduct();

            /** Acciones asíncronicas */
            /** Construir el archivo gamedata.json */
            await super.buildDataJSON();
            /** Construir el archivo index.html */
            await this.buildIndexHTML();
        }
        catch (err) {
            throw Error(err);
        }
    }

    /** Otros métodos */
    async buildIndexHTML() {
        const components = this.game.components;
        /** Obtener los nombres de aquellos componentes de tipo script */
        let scripts = [];
        components.forEach(component => {
            const { name, file_type, to_path } = component;
            if (file_type === 'script') {
                let script_to_path = to_path.substring(1);
                script_to_path = path.join(script_to_path, name);
                scripts.push(script_to_path);
            }
        });
        /** Ordenar la lista */
        scripts.sort();

        /** Armar el index.html por medio de un string */
        let indexHTML = '<!DOCTYPE html>\n' +
                        '<html>\n' +
                        '<head>\n' +
                        '<meta charset="UTF-8">\n' +
                        '<meta="viewport" content="width=device-width, initial-scale=1.0">\n' +
                        '<style>\n' +
                        '* { margin: 0; padding: 0; }\n' +
                        'canvas { display: block }\n' +
                        '</style>\n' +
                        '</head>\n' +
                        '<body>\n' +
                        '<script src="axios.min.js"></script>\n' +
                        '<script src="p5.min.js"></script>\n' +
                        '<script src="p5.sound.min.js"></script>\n\n';
        
        /** Agregar dinámicamente los scripts de los componentes */
        scripts.forEach(script => {
            indexHTML += `<script src="${script}"></script>\n`;
        });

        indexHTML += '</body>\n' +
                     '</html>';
        
        /** Escribir el indexHTML en un archivo */
        try {
            await fse.writeFile(path.join(this.path, 'index.html'), indexHTML);
        }
        catch (err) {
            throw Error(err);
        }
    }
}

export default P5ProductGenerator;