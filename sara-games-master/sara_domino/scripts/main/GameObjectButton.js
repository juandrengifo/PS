/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase GameObjectButton representa un botón del juego. Este botón
 * puede ser un botón que sólo contiene texto, un botón que sólo contiene 
 * una imagen, o un botón que contiene una image y un texto.
 * @subclassof GameObject.
 */

class GameObjectButton extends GameObject {

  /**
   * @description
   * Constructor de la clase
   * @param {Number} x 
   * Número que representa el componente en x de la posición del GameObjectButton.
   * @param {Number} y 
   * Número que representa el componente en y de la posición del gameObjectButton.
   * @param {Number} width
   * Número cuyo valor representa la longitud del GameObjectButton. 
   * @param {Number} height 
   * Número cuyo valor representa la altura del gameObjectButton.
   * @param {String} tag
   * String cuyo valor es un identificador para GameObject.
   * @param {Sprite} sprite
   * Imagen para agregar al botón.
   * @returns GameObjectButton 
   */
  constructor(x, y, width, height, tag, text, sprite = null) {
    super(x, y, width, height, tag);

    // Atributos
    this.text = text;
    this.textSize = getTextSize();
    this.sprite = sprite;

    // Obtener los colores del botón
    const { color, textColor } = getButtonColors(tag);
    this.color = color;
    this.textColor = textColor;
  }

  // Setters

  /**
   * @description
   * Método encargado de asignar un Sprite a GameObjectButton.
   * @param {Sprite} sprite
   * Sprite nuevo para asignar.
   * @returns void 
   */
  setSprite(sprite) {
    this.sprite = sprite;
  }

  // Otros métodos

  /**
   * @description
   * Método que verifica si el GameObjectButton fue clickeado.
   * @param {p5.Vector} click 
   * Vector que define la posición de un evento click del mouse.
   * @param {Function} callback 
   * Función de callback que permite detectar si el evento click
   * se realizó sobre GameObjectButton.
   * @returns void
   */
  clicked(click, callback) {
    if (checkBoundaries(this, click)) {
      // Actualizar el sprite del botón si este tiene uno
      if (this.sprite) {
        const imageUrl = this.sprite.getImageUrl();
        const newImageUrl = getToggleImage(imageUrl);       

        // Actualizar el sprite si hay una imagen nueva
        if (newImageUrl !== imageUrl) 
          this.sprite = new Sprite(newImageUrl, this.tag);
      }

      callback();
    }
  }

  /**
   * @description
   * Método encargado de dibujar el GameObjectButton.
   * @returns void
   */
  draw() {
    if (this.sprite) {
      this.sprite.draw(this.position, this.width, this.height);
    }
    else {
      fill(this.color);
      stroke(BLACK_COLOR);
      strokeWeight(2);
      rect(this.position.x, this.position.y, this.width, this.height, 10); 

      textSize(this.textSize);
      // Calcular componente x de la posición del texto
      const textW = Math.floor(textWidth(this.text));
      const x = this.position.x + Math.floor((this.width / 2) - (textW / 2));
      //const y = (this.position.y + this.height) - spaceY;
      const y = this.position.y + Math.floor((this.height / 2) + (this.textSize / 2.5));

      fill(this.textColor);
      textStyle(BOLD);
      textFont(GAME_FONT);
      noStroke();
      text(this.text, x, y);
    }
  }
}