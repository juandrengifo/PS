/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description 
 * La clase ImageModalStrategy representa la estrategia que define la 
 * estructura y el comportamiento de un modal de validación para el 
 * área de visualización de un GameObjectModal.
 */

class ImageModalStrategy {

  /**
   * @description 
   * Constructor de la clase.
   * @param {Object} area 
   * Objeto que contiene la información del área de visualización 
   * de la ventana modal.
   * @param {Sprite} sprite 
   * Sprite cuya imagen se mostrará en el área de visualización de 
   * la ventana modal.
   * @returns ImageModalStrategy.
   */
  constructor(area, sprite) {

    // Atributos 
    this.area = area;
    this.sprite = sprite;

    // Calcular tamaño y posición del sprite
    const { position, width, height } = this.area;
    const areaWidthMiddle = Math.floor((width / 2));

    this.spriteWidth = Math.floor(width * 0.4);
    this.spriteHeight = this.spriteWidth * 1.4;

    const x = Math.floor(position.x + areaWidthMiddle - (this.spriteWidth / 2));
    const y = Math.floor(position.y + (height / 2) - (this.spriteHeight / 2));
    this.spritePosition = createVector(x, y);
  }

  /**
   * @description 
   * Método encargado de dibujar los elementos del área de 
   * visualización del modal.
   * @returns void.
   */
  draw() {
    this.sprite.draw(this.spritePosition, this.spriteWidth, this.spriteHeight);
  }
}