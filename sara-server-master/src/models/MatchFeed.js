/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
    let MatchFeed = sequelize.define('Matches_Feeds', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            autoIncrement: true,
            primaryKey: true
        },
        is_good: {
            type: DataTypes.BOOLEAN,
            allowNull: false
        },
        variable: {
            type: DataTypes.TEXT,
            allowNull: false
        }
    });

    /** Asociaciones con otros modelos */
    MatchFeed.associate = (models) => {
        /** Un match pertenece solamente a un nivel */
        MatchFeed.belongsTo(models.Levels, {
            foreignKey: 'id_level'
        });
    }

    return MatchFeed;
}