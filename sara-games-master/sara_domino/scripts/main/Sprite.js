/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martin Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase Sprite representa un Sprite 2D o imagen. En este contexto el Sprite
 * tendrá una imagen y un tag o identificador.
 */

class Sprite {

  /**
   * @description 
   * Constructor de la clase.
   * @param {String} imageUrl
   * String cuyo valor representa la url de una imagen.
   * @param {String} name 
   * String usado para asignar un nombre a la imagen.
   * @returns Sprite.
   */
  constructor(imageUrl, name) {

    // Atributos
    this.imageUrl = imageUrl;
    this.image = name === GIF_TAG ? createImg(this.imageUrl) : loadImage(this.imageUrl);
    this.name = name;
  }

  // Getters

  /**
   * @description
   * Método que retorna la URL de la imagen del Sprite.
   * @returns String
   */
  getImageUrl() {
    return this.imageUrl;
  }

  // Métodos de la clase

  /**
   * @description
   * Método encargado de dibujar la imagen del Sprite.
   * @param {p5.Vector} position 
   * Vector cuyo valor representa la posición dónde se desea
   * dibujar el Sprite.
   * @param {Number} width
   * Entero cuyo valor representa la longitud del Sprite. 
   * @param {Number} height
   * Entero cuyo valor representa la altura del Sprite.
   * @returns void.
   */
  draw(position, width, height) {
    if (this.name === GIF_TAG) {
      this.image.position(position.x, position.y);
      this.image.size(width, height);
    }
    else
      image(this.image, position.x, position.y, width, height);
  }
}