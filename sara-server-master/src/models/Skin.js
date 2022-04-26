/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let Skin = sequelize.define('Skin', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
        },
        is_default: {
            type: DataTypes.BOOLEAN,
            allowNull: false,
            defaultValue: true
        },
        img_path: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
        name: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
        price: {
            type: DataTypes.INTEGER,
            allowNull: false,
            defaultValue: 0
        },
        summary: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
    });

    /** Asociaciones con otros modelos */
    Skin.associate = (models) => {
        /** Varios aspectos pueden pertenecer a varios usuarios */
        Skin.belongsToMany(models.User, {
            through: 'Users_Skins',
            foreignKey: 'id_skin',
        })
    }

    return Skin;
}