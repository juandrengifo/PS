/**
 * @author Martín Vladimir Alonso Sierra Galvis 
 * @maintainer Martín Vladimir Alonso Sierra Galvis 
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
  let SortingImageDemand = sequelize.define('Sorting_Images_Demands', {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    vocabulary: {
      type: DataTypes.TEXT,
      allowNull: false
    }
  }, {
    schema: 'sorting'
  });

  /** Asociaciones con otros modelos */
  SortingImageDemand.associate = (models) => {
    /** Relación con las imágenes */
    SortingImageDemand.belongsTo(models.Sorting_Images, {
      foreignKey: 'id_image'
    });

    /** Relación con las demandas */
    SortingImageDemand.belongsTo(models.Sorting_Demands, {
      foreignKey: 'id_demand'
    });
  }

  return SortingImageDemand;
}