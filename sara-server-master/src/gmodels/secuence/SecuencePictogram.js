/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

export default (sequelize, DataTypes) => {
  let SecuencePictogram = sequelize.define('Secuence_Pictograms', {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    path: {
      type: DataTypes.TEXT,
      allowNull: false
    }
  }, {
    schema: 'secuence'
  });

  /** Asociaciones con otros modelos */
  SecuencePictogram.associate = (models) => {
    /** Un pictograma puede tener asociadas varias imágenes */
    SecuencePictogram.hasMany(models.Secuence_Images, {
      foreignKey: 'id_pictogram'
    });
  }

  return SecuencePictogram;
}