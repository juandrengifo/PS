/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
  let SecuenceAnswer = sequelize.define('Secuence_Answers', {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    kind: {
      type: DataTypes.TEXT,
      allowNull: false
    },
    tag: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    word: {
      type: DataTypes.TEXT,
      allowNull: false
    }
  }, {
    schema: 'secuence'
  });

  /** Asociaciones con otros modelos */
  SecuenceAnswer.associate = (models) => {
    /** Una palabra de una respuesta está asociada con una demanda */
    SecuenceAnswer.belongsTo(models.Secuence_Demands, {
      foreignKey: 'id_demand'
    });
  }

  return SecuenceAnswer;
}