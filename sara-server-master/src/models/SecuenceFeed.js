/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
  let SecuenceFeed = sequelize.define('Secuences_Feeds', {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      autoIncrement: true,
      primaryKey: true
    },
    hits: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    how: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    mistakes: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    question: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    tale: {
      type: DataTypes.TEXT,
      allowNull: true
    }
  });

  /** Asociaciones con otros modelos */
  SecuenceFeed.associate = (models) => {
    /** Un feed pertenece a un único nivel */
    SecuenceFeed.belongsTo(models.Levels, {
      foreignKey: 'id_level'
    });
  }

  return SecuenceFeed;
}