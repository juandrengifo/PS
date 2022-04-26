/**
 * @author Martín Vladimir Alonso Sierra Galvis 
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
  let SortingImage = sequelize.define('Sorting_Images', {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    action: {
      type: DataTypes.TEXT,
      allowNull: false
    },
    activity: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    cloth_animation: { 
      type: DataTypes.TEXT,
      allowNull: true
    },
    final_path: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    next_action: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    path: {
      type: DataTypes.TEXT,
      allowNull: false
    },
    tag: {
      type: DataTypes.TEXT,
      allowNull: false
    }
  }, {
    schema: 'sorting'
  });

  /** Asociaciones con otros modelos */
  SortingImage.associate = (models) => {
    /** Una imagen puede tener varias demandas */
    SortingImage.hasMany(models.Sorting_Images_Demands, {
      foreignKey: 'id_image'
    });
  }

  return SortingImage;
}