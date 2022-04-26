/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
  let SecuenceImage = sequelize.define('Secuence_Images', {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    activity: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    path: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    tag: {
      type: DataTypes.INTEGER,
      allowNull: false
    }
  }, {
    schema: 'secuence'
  });

  /** Asociaciones con otros modelos */
  SecuenceImage.associate = (models) => {
    /** Una imagen tiene asociado un solo pictograma */
    SecuenceImage.belongsTo(models.Secuence_Pictograms, {
      foreignKey: 'id_pictogram'
    });

    /** Una imagen tiene varias demandas */
    SecuenceImage.hasMany(models.Secuence_Demands, {
      foreignKey: 'id_image'
    });
  }

  return SecuenceImage;
}