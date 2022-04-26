/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
  let RefreshToken = sequelize.define('Refresh_Tokens', {
    id: {
      type: DataTypes.TEXT,
      allowNull: false,
      primaryKey: true
    }, 
    token: {
      type: DataTypes.TEXT,
      allowNull: false
    }
  });

  /** Asociaciones con otros modelos */
  RefreshToken.associate = (models) => {}

  return RefreshToken;
}