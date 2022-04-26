/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase GameObjectCheck representa una celda de validación y está
 * compuesta de un texto y un botón. Esta clase es usada por la estrategia
 * ValidationModalStrategy para realizar la validación de los elementos
 * de la respuesta de las demandas en cada jugada.
 * @subclassof GameObject.
 */

class GameObjectCheck extends GameObject {

  /**
   * @description
   * Constructor de la clase
   * @param {Number} x 
   * Número cuyo valor representa el componente x de la posición
   * del GameObjectCheck.
   * @param {Number} y 
   * Número cuyo valor representa el componente y de la posición
   * del GameObjectCheck.
   * @param {Number} width 
   * Número cuyo valor representa la longitud del GameObjectCheck.
   * @param {Number} height 
   * Número cuyo valor representa la altura del GameObjectCheck.
   * @param {String} tag
   * String cuyo valor es un identificador para GameObject.
   * @param {Object} data 
   * Objeto que contiene la información sobre el elemento de la
   * respuesta a la demanda.
   * @returns GameObjectCheck
   */
  constructor(x, y, width, height, tag, data) {
    super(x, y, width, height, tag);

    // Atributos
    this.data = data;
    this.textSize = getTextSize();

    // Creación de la imagen que acompaña al texto
    if (this.data.path) this.image = new Sprite(this.data.path, '');

    // Creación del botón
    const sprite = new Sprite(UNCHECKED_ICON, this.tag);
    const buttonW = Math.floor(this.textSize * (CHECK_TEXT_SIZE * 2));
    const buttonH = buttonW;
    const buttonX = this.position.x + Math.floor((this.width / 2) - (buttonW / 2));
    const buttonY = this.position.y + buttonH;
    this.checkButton = new GameObjectButton(buttonX, buttonY, buttonW, buttonH, this.tag, null, sprite);
  }

  // Getters

  /**
   * @description 
   * Método encargado de retornar el botón check.
   * @returns GameObjectButton.
   */
  getCheckButton() {
    return this.checkButton;
  }

  /**
   * @description
   * Método encargado de verificar el evento click sobre el botón
   * del GameObjectCheck.
   * @param {p5.Vector} click
   * Vector que define la posición del evento click. 
   * @param {Function} callback 
   * Función de callback que permite detectar si el botón del 
   * GameObjectCheck fue clickeado.
   * @returns void
   */
  clicked(click, callback) {
    this.checkButton.clicked(click, () => {
      callback();
    });
  }

  /**
   * @description
   * Método encargado de dibujar los elementos del GameObjectCheck.
   * @returns void
   */
  draw() {    
    const { word } = this.data;
    textSize(this.textSize * CHECK_TEXT_SIZE);
    const textW = word.includes('\n') ? textWidth(word) / 2 : textWidth(word);
    let x = this.position.x + Math.floor((this.width / 2) - (textW / 2));
    const y = this.position.y + this.textSize;

    if (this.image) {
      x -= (spaceX * 2);
      const imagePosition = createVector(x + textW + (spaceX / 2), this.position.y - (this.textSize / 1.5));
      this.image.draw(imagePosition, this.textSize * 2.5, this.textSize * 2.5);
    }

    fill(BLACK_COLOR);
    textStyle(BOLD);
    textFont(GAME_FONT); 
    noStroke();   
    text(word, x, y); 

    // Dibujar el botón de check
    this.checkButton.draw();
  }
}