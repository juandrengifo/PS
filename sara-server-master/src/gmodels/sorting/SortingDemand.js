/**
 * @author Martín Vladimir Alonso Sierra Galvis 
 * @maintainer Martín Vladimir Alonso Sierra Galvis 
 * @version 1.0.0 
 */

export default (sequelize, DataTypes) => {
  let SortingDemand = sequelize.define('Sorting_Demands', {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    demand: {
      type: DataTypes.TEXT,
      allowNull: false
    },
    gender: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    is_initial: {
      type: DataTypes.BOOLEAN,
      allowNull: false
    },
    question: {
      type: DataTypes.TEXT,
      allowNull: false
    }
  }, {
    schema: 'sorting'
  });

  /** Asociaciones con otros modelos */
  SortingDemand.associate = (models) => {
    /** Una demanda pertenece a diferentes tipos de imagen */
    SortingDemand.hasMany(models.Sorting_Images_Demands, {
      foreignKey: 'id_demand'
    });

    /** Una demanda tiene varias palabras en su respuesta */
    SortingDemand.hasMany(models.Sorting_Answers, {
      foreignKey: 'id_demand'
    });
  }

  return SortingDemand;
}