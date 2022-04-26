/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description Clase encargada de generar un producto a partir de un ORJ.
 * Para este caso particular el producto es un juego
 */

import path from 'path';
import fse from 'fs-extra';

/** Definición de la clase */
class ProductGenerator {

    /** Constructor */
    constructor(game, tool) {
        this.game = game;
        this.tool = tool;
        /** 
         * Armar el path del directorio de generación tal como en
         * P5GameBuilder 
         */
        this.path = path.join(
            __dirname,
            '..',
            'temp',
            `${this.tool}_` +
            `${this.game.patient.id}_` +
            `${this.game.mechanic}_` +
            `${this.game.key}`
        );
    }

    /** Métodos principales */
    derivateProduct() {
        this.getComponentsFromAssets();
    }

    removeProduct() {
        fse.remove(this.path);
    }

    /** Otros métodos */
    async buildDataJSON() {
        const json = this.game.toJSON();
        const writePath = path.join(
            this.path,
            'data',
            'gamedata.json'
        );
        /** Guardar el diccionario en un archivo tipo json */
        try {
            await fse.writeFile(writePath, JSON.stringify(json, null, 4));
        }
        catch (err) {
            throw Error(err);
        }
    }

    getComponentsFromAssets() {
        const components = this.game.components;

        components.forEach(component => {
            let { name, from_path, to_path } = component;
            from_path = path.join(
                __dirname,
                '..',
                from_path,
                name
            );
            const filePath = this.path + to_path;

            /** Copiar los archivos */
            /** Verificar que el archivo existe */
            if (fse.pathExistsSync(filePath)) {
                try {
                    fse.copySync(from_path, path.join(filePath, name));
                }
                catch (err) {
                    throw Error(err);
                }
            }
        });
    }
}

export default ProductGenerator;