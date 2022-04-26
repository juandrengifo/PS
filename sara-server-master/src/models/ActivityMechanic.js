/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let ActivityMechanic = sequelize.define('Activities_Mechanics', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        }
    });

    /** Asociaciones con otros modelos */
    ActivityMechanic.associate = (models) => {
        /** Relación con actividad */
        ActivityMechanic.belongsTo(models.Activity, {
            foreignKey: 'id_activity',
        });

        /** Relación con mecánica */
        ActivityMechanic.belongsTo(models.Mechanic, {
            foreignKey: 'id_mechanic',
        });

        /** Relación con estructura sintáctica */
        ActivityMechanic.belongsTo(models.Syntactic_Structure, {
            foreignKey: 'id_structure',
        });

        /** Relación con subcategoría */
        ActivityMechanic.belongsTo(models.Semantic_Subcategory, {
            foreignKey: 'id_subcategory',
        });
    }

    return ActivityMechanic;
}