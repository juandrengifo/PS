/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let Activity = sequelize.define('Activity', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        name: {
            type: DataTypes.TEXT,
            allowNull: false
        },
        description: {
            type: DataTypes.TEXT,
            allowNull: false
        },
        logo_path: {
            type: DataTypes.TEXT
        }
    });

    /** Asociaciones con otros modelos */
    Activity.associate = (models) => {
        
    }

    return Activity;
}