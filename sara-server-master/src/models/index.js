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
let models = {};

/** Construir los modelos principales usando fs */
fs.readdirSync(__dirname).forEach(file => {
    let filePath = path.join(__dirname, file);
    /** No incluir index.js */
    if (fs.lstatSync(filePath).isFile() && file !== 'index.js') {
        let model = sequelize.import(filePath);
        models[model.name] = model;
    }
});

/** Aplicar asociaciones a cada modelo */
Object.keys(models).forEach(modelName => {
    if ('associate' in models[modelName])
        models[modelName].associate(models);
});

models.sequelize = sequelize;
models.Sequelize = Sequelize;

export default models;