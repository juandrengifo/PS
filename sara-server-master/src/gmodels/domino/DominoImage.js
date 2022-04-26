/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let DominoImage = sequelize.define('Domino_Images', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        activity: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        path: {
            type: DataTypes.TEXT,
            allowNull: false
        }
    }, {
        schema: 'domino'
    });

    /** Asociaciones con otros modelos */
    DominoImage.associate = (models) => {
        /** Una imagen puede tener varios tags */
        DominoImage.hasMany(models.Domino_Tags, {
            foreignKey: 'id_image'
        });
    }

    return DominoImage;
}