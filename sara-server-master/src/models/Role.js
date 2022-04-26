/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    /** Definir el modelo de los tipos de usuario */
    let Role = sequelize.define('Role', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
        },
        name: {
            type: DataTypes.TEXT,
            allowNull: false,
        }
    });

    /** Asociaciones con otros modelos */
    Role.associate = (models) => {
        
    }

    return Role;
}