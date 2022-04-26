/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let PhraseFeed = sequelize.define('Phrases_Feeds', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            autoIncrement: true,
            primaryKey: true
        },
        id_phrase: { 
            type: DataTypes.INTEGER,
            allowNull: false
        },
        checked: {
            type: DataTypes.BOOLEAN,
            allowNull: false
        },
        kind: {
            type: DataTypes.TEXT,
            allowNull: false
        },
        order_phrase: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        word: {
            type: DataTypes.TEXT,
            allowNull: false
        }
    });

    /** Asociaciones con otros modelos */
    PhraseFeed.associate = (models) => {
        /** Un registro de frase pertenece a un solo nivel */
        PhraseFeed.belongsTo(models.Levels, {
            foreignKey: 'id_level'
        });
    }

    return PhraseFeed;
}