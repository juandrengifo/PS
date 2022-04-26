/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let SemanticCategory = sequelize.define('Semantic_Category', {
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
    SemanticCategory.associate = (models) => {
        /** Una categoría tiene muchas subcategorías */
        SemanticCategory.hasMany(models.Semantic_Subcategory, {
            foreignKey: 'id_category'
        });

    }

    return SemanticCategory;
}