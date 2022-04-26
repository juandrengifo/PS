/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let DominoAnswer = sequelize.define('Domino_Answers', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        order_phrase: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        kind: {
            type: DataTypes.TEXT,
            allowNull: false
        },
        word: {
            type: DataTypes.TEXT,
            allowNull: false
        }
    }, {
        schema: 'domino'
    });

    /** Asociaciones con otros modelos */
    DominoAnswer.associate = (models) => {
        /** Una respuesta pertenece a un tag */
        DominoAnswer.belongsTo(models.Domino_Tags, {
            foreignKey: 'id_tag'
        });
    }

    return DominoAnswer;
}