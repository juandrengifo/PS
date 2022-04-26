/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let Vocabulary = sequelize.define('Vocabulary', {
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
    Vocabulary.associate = (models) => {
        /** 
         * Una palabra del vocabulario pertenece a una sola 
         * estructura sintáctica 
         */
        Vocabulary.belongsTo(models.Syntactic_Structure, {
            foreignKey: 'id_structure'
        });

        /** Una palabra del vocabulario puede pertenecer a varias subcategorías */
        Vocabulary.belongsToMany(models.Semantic_Subcategory, {
            through: 'Subcategories_Vocabularies',
            foreignKey: 'id_vocabulary'
        });
    }

    return Vocabulary;
}