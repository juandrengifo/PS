/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let SemanticSubcategory = sequelize.define('Semantic_Subcategory', {
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
    SemanticSubcategory.associate = (models) => {
        /** Una subcategoría sólo pertenece a una categoría */
        SemanticSubcategory.belongsTo(models.Semantic_Category, {
            foreignKey: 'id_category'
        });

        /** Una subcategoría puede tener varias palabras del vocabulario asociadas */
        SemanticSubcategory.belongsToMany(models.Vocabulary, {
            through: 'Subcategories_Vocabularies',
            foreignKey: 'id_subcategory'
        });
    }

    return SemanticSubcategory;
}