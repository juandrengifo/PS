/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import Sequelize from 'sequelize';

/** Conexión a la base de datos */
let sequelize = new Sequelize('sara', 'postgres', 'toor', {
    host: 'localhost',
    dialect: 'postgres',
    pool: {
        max: 5,
        min: 0,
        required: 30000,
        idle: 10000
    }
});

export default sequelize;