/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let ActivityUser = sequelize.define('Activities_Users', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        build_path: {
            type: DataTypes.TEXT,
            allowNull: false
        },
        date_from: {
            type: DataTypes.DATE,
            allowNull: false
        },
        date_to: {
            type: DataTypes.DATE,
            allowNull: false
        }
    });

    /** Asociaciones con otros modelos */
    ActivityUser.associate = (models) => {
        /** Relación con actividad */
        ActivityUser.belongsTo(models.Activity, {
            foreignKey: 'id_activity'
        });

        /** Relación con mecánica de la actividad */
        ActivityUser.belongsTo(models.Mechanic, {
            foreignKey: 'id_mechanic'
        });

        /** Relación con estructura sintáctica */
        ActivityUser.belongsTo(models.Syntactic_Structure, {
            foreignKey: 'id_structure'
        });

        /** Relación con usuario */
        ActivityUser.belongsTo(models.User, {
            foreignKey: 'id_user'
        });

        /** Una actividad de usuario puede tener muchas sesiones */
        ActivityUser.hasMany(models.Activities_Sessions, {
            foreignKey: 'id_activity_user'
        });
    }

    return ActivityUser;
}