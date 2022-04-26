/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase GameObjectScore está encargada de mostrar el
 * puntaje ganado por el jugador en el juego.
 * @subclassof GameObject.
 */

class GameObjectScore extends GameObject {

  /**
   * @description
   * Constructor de la clase.
   * @param {Number} x
   * Número cuyo valor representa el componente en x de la 
   * posición de GameObjectScore. 
   * @param {Number} y 
   * Número cuyo valor representa el componente en y de la
   * posición de GameObjectScore.
   * @param {Number} width 
   * Número cuyo valor representa la longitud de GameObjectScore.
   * @param {Number} height
   * Número cuyo valor representa la altura de GameObjectScore.
   * @param {String} tag
   * String cuyo valor es un identificador para GameObject.
   * @returns GameObjectScore. 
   */
  constructor(x, y, width, height, tag) {
    super(x, y, width, height, tag);

    // Atributos
    this.baseWidth = width;
    this.basePosition = createVector(x, y);
    this.score = 0;
    this.sprite = new Sprite(STAR_ICON, tag);
    this.textSize = getTextSize() * 1.2;
    this.update = false;

    // Primera actualización de longitud y posición
    textSize(this.textSize);
    this.updateWidthAndPosition(`${this.score}`); 
  }

  // Getters

  /**
   * @description
   * Método encargado de retornar el valor del puntaje.
   * @returns Number
   */
  getScore() {
    return this.score;
  }

  // Setters

  /**
   * @description
   * Método encargado de asignar el valor del puntaje.
   * @param {Number} score 
   * Número que representa el nuevo puntaje a asignar.
   * @returns void
   */
  setScore(score) {
    this.score = score;
    this.update = true;
  }

  /**
   * @description
   * Método encargado de dibujar el GameObjectScore.
   * @returns void
   */
  draw() {
    // Dibujar el fondo
    const backgroundColor = color(BLACK_COLOR);
    backgroundColor.setAlpha(180);
    fill(backgroundColor);  
    rect(this.position.x, this.position.y, this.width, this.height, 2); 

    // Dibujar estrella
    const starH = Math.floor(this.height * 0.8);
    const starX = this.position.x + spaceX;
    const starY = this.position.y + Math.floor((this.height / 2) - (starH / 2));
    const starPosition = createVector(starX, starY);
    this.sprite.draw(starPosition, starH, starH);

    // Dibujar puntaje
    textSize(this.textSize * 1.1); 
    const newText = `${this.score}`;
    const textX = starX + starH + (spaceX * 0.8);
    const offsetY = windowWidth > windowHeight ? spaceY : spaceX;
    const textY = starY + (starH - (offsetY * 0.4));

    fill(WHITE_COLOR);
    textStyle(BOLD);
    textFont(GAME_FONT);
    text(newText, textX, textY); 

    // Calcular la nueva longitud y la nueva posición de GameObjectScore
    if (this.update)
      this.updateWidthAndPosition(newText);
  }

  /**
   * @description
   * Método encargado de actualizar la longitud y la posición
   * de GameObjectScore.
   * @param {String} text
   * String con el que se realiza el cálculo de la nueva longitud
   * y la nueva posición de GameObjectScore. 
   * @returns void 
   */
  updateWidthAndPosition(text) {
    const textW = Math.floor(textWidth(text));
    this.width = this.baseWidth + textW;
    this.position.x = this.basePosition.x - textW;
    this.update = false;
  }
}