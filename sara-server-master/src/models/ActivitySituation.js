/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let ActivitySituation = sequelize.define('Activities_Situations', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        }
    });

    /** Asociaciones con otros modelos */
    ActivitySituation.associate = (models) => {
        /** Relación con actividad */
        ActivitySituation.belongsTo(models.Activity, {
            foreignKey: 'id_activity'
        });

        /** Relación con mecánica */
        ActivitySituation.belongsTo(models.Mechanic, {
            foreignKey: 'id_mechanic'
        });

        /** Relación con situación */
        ActivitySituation.belongsTo(models.Situation, {
            foreignKey: 'id_situation'
        });
    }

    return ActivitySituation;
}