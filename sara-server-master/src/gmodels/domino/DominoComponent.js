/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let DominoComponent = sequelize.define('Domino_Components', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        name: {
            type: DataTypes.TEXT,
            allowNull: false
        },
        file_type: {
            type: DataTypes.TEXT,
            allowNull: false
        },
        from_path: {
            type: DataTypes.TEXT,
            allowNull: false
        },
        to_path: {
            type: DataTypes.TEXT,
            allowNull: false
        }
    }, {
        schema: 'domino'
    });

    /** Asociaciones con otros modelos */

    return DominoComponent;
}

