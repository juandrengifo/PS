/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let Avatar = sequelize.define('Avatar', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
        },
        gender: {
            type: DataTypes.TEXT,
            allowNull: false,
        }
    });

    /** Asociaciones con otros modelos */
    Avatar.associate = (models) => {
        /** Un avatar puede tener varias variaciones */
        Avatar.hasMany(models.Avatar_Variation, {
            foreignKey: 'id_avatar'
        });
    }

    return Avatar;
}