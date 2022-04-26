/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let AvatarVariation = sequelize.define('Avatar_Variation', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
        },
        eye: {
            type: DataTypes.TEXT,
        },
        hair: {
            type: DataTypes.TEXT,
        },
        torso: {
            type: DataTypes.TEXT,
        },
        img_path: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
        is_default: {
            type: DataTypes.BOOLEAN,
            allowNull: false,
            defaultValue: true,
        },
        thumbnail_path: {
            type: DataTypes.TEXT,
            allowNull: false,
        }
    });

    /** Asociaciones con otros modelos */
    AvatarVariation.associate = (models) => {
        /** Una variación pertenece solamente a un avatar */
    }

    return AvatarVariation;
}