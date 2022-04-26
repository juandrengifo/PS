/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let SyntacticStructure = sequelize.define('Syntactic_Structure', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        name: {
            type: DataTypes.TEXT,
            allowNull: false
        },
        order: {
            type: DataTypes.INTEGER,
            allowNull: false
        }
    });

    /** Asociaciones con otros modelos */
    SyntacticStructure.associate = (models) => {
        /** 
         * Una estructura sintáctica puede tener muchas palabras
         * del vocabulario.
         */
        SyntacticStructure.hasMany(models.Vocabulary, {
            foreignKey: 'id_structure'
        });
    }

    return SyntacticStructure;
}