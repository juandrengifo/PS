/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let Situation = sequelize.define('Situation', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        name: {
            type: DataTypes.TEXT,
            allowNull: false
        }
    });

    /** Asociaciones con otros modelos */
    Situation.associate = (models) => {
        
    }

    return Situation;
}