/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let DominoTag = sequelize.define('Domino_Tags', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        demand: {
            type: DataTypes.TEXT,
            allowNull: false
        },
        vocabulary: {
            type: DataTypes.TEXT,
            allowNull: false 
        }
    }, {
        schema: 'domino'
    });

    /** Asociaciones con otros modelos */
    DominoTag.associate = (models) => {
        /** Un tag pertenece a una única imagen */
        DominoTag.belongsTo(models.Domino_Images, {
            foreignKey: 'id_image'
        });

        /** Un tag tiene múltiples words de respuesta */
        DominoTag.hasMany(models.Domino_Answers, {
            foreignKey: 'id_tag'
        });
    }

    return DominoTag;
}