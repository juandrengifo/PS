/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
  let SecuenceDemand = sequelize.define('Secuence_Demands', {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    demand: {
      type: DataTypes.TEXT,
      allowNull: false
    },
    time: {
      type: DataTypes.INTEGER,
      allowNull: false
    }
  }, {
    schema: 'secuence'
  });

  /** Asociaciones con otros modelos */
  SecuenceDemand.associate = (models) => {
    /** Una demanda pertenece a una sola imagen */
    SecuenceDemand.belongsTo(models.Secuence_Images, {
      foreignKey: 'id_image'
    });

    /** Una demanda tiene muchas palabras de respuesta */
    SecuenceDemand.hasMany(models.Secuence_Answers, {
      foreignKey: 'id_demand'
    });
  }

  return SecuenceDemand;
}