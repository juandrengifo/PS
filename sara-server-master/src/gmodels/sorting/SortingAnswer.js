/**
 * @author Martín Vladimir Alonso Sierra Galvis 
 * @maintainer Martín Vladimir Alonso Sierra Galvis 
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
  let SortingAnswer = sequelize.define('Sorting_Answers', {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    kind: {
      type: DataTypes.TEXT,
      allowNull: false
    },
    order_phrase: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    word: {
      type: DataTypes.TEXT,
      allowNull: false
    }
  }, {
    schema: 'sorting'
  });

  /** Asociaciones con otros modelos */
  SortingAnswer.associate = (models) => {
    /** Una palabra de la respuesta pertenece a una demanda */
    SortingAnswer.belongsTo(models.Sorting_Demands, {
      foreignKey: 'id_demand'
    });
  }

  return SortingAnswer;
}