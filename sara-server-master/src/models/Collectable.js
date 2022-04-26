/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let Collectable = sequelize.define('Collectable', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        name: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
        price:{
            type: DataTypes.INTEGER,
            allowNull: false,
            defaultValue: 0
        },
    });

    /** Asociaciones con otros modelos */
    Collectable.associate = (models) => {
        /** Un coleccionable puse tener varios aspectos */
        Collectable.hasMany(models.Skin, {
            foreignKey: 'id_collectable'
        });
    }

    return Collectable;
}