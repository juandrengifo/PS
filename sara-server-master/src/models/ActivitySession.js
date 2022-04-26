/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladmir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let ActivitySession = sequelize.define('Activities_Sessions', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            autoIncrement: true,
            primaryKey: true
        },
        audio: {
            type: DataTypes.TEXT,
            allowNull: true
        },
        comment: {
            type: DataTypes.TEXT
        },
        date_start: {
            type: DataTypes.DATE
        },
        date_end: {
            type: DataTypes.DATE
        }
    });

    /** Asociaciones con otros modelos */
    ActivitySession.associate = (models) => {
        /** Una sesión puede pertenecer a solo una actividad del usuario */
        ActivitySession.belongsTo(models.Activities_Users, {
            foreignKey: 'id_activity_user'
        });

        /** Una sesión puede tener varios niveles */
        ActivitySession.hasMany(models.Levels, {
            foreignKey: 'id_session'
        });
    }

    return ActivitySession;
}