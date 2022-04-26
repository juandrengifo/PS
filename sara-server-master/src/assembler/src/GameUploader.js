/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import axios from 'axios';
import FormData from 'form-data';
import zipper from 'zip-local';

/** Definición de la clase */
class GameUploader {

    /** Constructor */
    constructor(name, path) {
        this.name = name;
        this.path = path;
    }

    /** Métodos */
    async upload(uploadUrl) {
        try {
            /** Comprimir en memoria el directorio generado */
            let buff = zipper.sync.zip(this.path).compress().memory();

            /** Agregar el buffer a un FormData */
            let form = new FormData();
            form.append('file', buff, this.name);
        
            /** Enviar el archivo comprimido al servidor de archivos */
            await axios.post(uploadUrl, form, {
                headers: {
                    "Content-Type": `multipart/form-data; ` +
                                    `boundary=${form.getBoundary()}`
                }
            });
        }
        catch (err) {
            throw Error(err);
        }
    }
}

export default GameUploader;