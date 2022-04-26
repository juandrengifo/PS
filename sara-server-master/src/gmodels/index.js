/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import fs from 'fs';
import path from 'path';
import Sequelize from 'sequelize';
import sequelize from '../connections/db';

/** Objeto que alberga los modelos de la base de datos */
let gmodels = {};

/** Construir los modelos de los juegos usando fs */
fs.readdirSync(__dirname).forEach(dir => {
    /** No incluir el index.js */
    if (dir !== 'index.js') {
        /** Verificar cada subdirectorio */
        let dirPath = path.join(__dirname, dir);
        fs.readdirSync(dirPath).forEach(file => {
            /** 
             * En estos subdirectorios todos los archivos 
             * son modelos
             */
            let filePath = path.join(dirPath, file);
            let model = sequelize.import(filePath);
            gmodels[model.name] = model;
        });
    } 
});

/** Aplicar asociaciones a cada modelo */
Object.keys(gmodels).forEach(modelName => {
    if ('associate' in gmodels[modelName])
        gmodels[modelName].associate(gmodels);
});

gmodels.sequelize = sequelize;
gmodels.Sequelize = Sequelize;

export default gmodels;