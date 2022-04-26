/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let Mechanic = sequelize.define('Mechanic', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        name: {
            type: DataTypes.TEXT,
            allowNull: false
        },
        pdf_path: {
            type: DataTypes.TEXT,
            allowNull: true
        },
        semantic_description: {
            type: DataTypes.INTEGER,
            allowNull: false,
            defaultValue: 1
        },
        tutorial_path: {
            type: DataTypes.TEXT,
            allowNull: false
        }
    });

    /** Asociaciones con otros modelos */
    Mechanic.associate = (models) => {
        
    }

    return Mechanic;
}