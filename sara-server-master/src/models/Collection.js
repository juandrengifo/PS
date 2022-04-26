/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let Collection = sequelize.define('Collection', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
        },
        name: {
            type: DataTypes.TEXT,
            allowNull: false,
        }
    });

    /** Asociaciones con otros modelos */
    Collection.associate = (models) => {
        /** Una colección puede tener muchos coleccionables */
        Collection.hasMany(models.Collectable, {
            foreignKey: 'id_collection'
        });

    }

    return Collection;
}