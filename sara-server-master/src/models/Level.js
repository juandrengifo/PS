/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let Level = sequelize.define('Levels', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            autoIncrement: true,
            primaryKey: true
        },
        date_start: {
            type: DataTypes.DATE
        },
        date_end: {
            type: DataTypes.DATE
        },
        level: {
            type: DataTypes.INTEGER,
            allowNull: false,
            defaultValue: 1
        },
        score: {
            type: DataTypes.INTEGER,
            allowNull: false,
            defaultValue: 0
        }
    });

    /** Asociaciones con otros modelos */
    Level.associate = (models) => {
        /** Un nivel pertenece a solamente a una sesión */
        Level.belongsTo(models.Activities_Sessions, {
            foreignKey: 'id_session'
        });

        /** Un nivel puede tener muchos matches */
        Level.hasMany(models.Matches_Feeds, {
            foreignKey: 'id_level'
        });

        /** Un nivel puede tener muchos phrases */
        Level.hasMany(models.Phrases_Feeds, {
            foreignKey: 'id_level'
        });

        /** Un nivel puede tener muchos feed de secuencia */
        Level.hasMany(models.Secuences_Feeds, {
            foreignKey: 'id_level'
        });
    }

    return Level;
}