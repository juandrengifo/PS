/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase GameObjectOptions es la clase encargada de contener los
 * GameObjectButton que representan diferentes opciones del juego.
 * @subclassof GameObject.
 */

class GameObjectOptions extends GameObject {

  /**
   * @description
   * Constructor de la clase.
   * @param {Number} x 
   * Número cuyo valor representa el componente en x de la 
   * posición de GameObjectOptions.
   * @param {Number} y 
   * Número cuyo valor representa el componente en y de la
   * posición de GameObjectOptions.
   * @param {Number} width 
   * Número cuyo valor representa la longitud de GameObjectOptions.
   * @param {Number} height 
   * Número cuyo valor representa la altura de GameObjectOptions.
   * @param {String} tag 
   * String cuyo valor es un identificador para GameObject.
   * @returns GameObjectOptions
   */
  constructor(x, y, width, height, tag) {
    super(x, y, width, height, tag);

    // Atributos

    // Construcción de las opciones
    const buttonW = Math.floor(this.width * 0.7);
    const buttonH = buttonW;
    const buttonX = this.position.x + Math.floor((this.width / 2) - (buttonW / 2));
    let buttonY = this.position.y + spaceY;

    let sprite = new Sprite(PAUSE_ICON, PLAY_TAG);
    this.pauseButton = new GameObjectButton(buttonX, buttonY, buttonW, buttonH, PLAY_TAG, '', sprite);

    buttonY += (spaceY + buttonH);
    sprite = new Sprite(SOUND_ENABLED_ICON, SOUND_TAG);
    this.audioButton = new GameObjectButton(buttonX, buttonY, buttonW, buttonH, SOUND_TAG, '', sprite);

    buttonY += (spaceY + buttonH);
    sprite = new Sprite(MESSAGE_ENABLED_ICON, MESSAGE_TAG);
    this.messageButton = new GameObjectButton(buttonX, buttonY, buttonW, buttonH, MESSAGE_TAG, '', sprite);

    buttonY += (spaceY + buttonH);
    sprite = new Sprite(REPEAT_ICON, REPEAT_TAG);
    this.repeatButton = new GameObjectButton(buttonX, buttonY, buttonW, buttonH, REPEAT_TAG, '', sprite);
  }

  /**
   * @description
   * Método que verifica si algunos de los botones de GameObjectOptions
   * fue clickeado.
   * @param {p5.Vector} click 
   * Vector que representa la posición del evento click.
   * @param {Function} callback
   * Función de callback que se ejecuta cuando alguna opción de 
   * GameObjectOptions fue clickeada.
   * @returns void 
   */
  clicked(click, callback) {
    if (checkBoundaries(this, click)) {
      // Verificar el evento click en los botones
      this.pauseButton.clicked(click, () => {
        pauseGame = !pauseGame;
        callback(this.pauseButton.getTag());
      });

      this.audioButton.clicked(click, () => {
        muteGame = !muteGame;
        callback(this.audioButton.getTag());
      });

      this.messageButton.clicked(click, () => {
        showMessage = !showMessage;
        callback(this.messageButton.getTag());
      });

      this.repeatButton.clicked(click, () => {
        if (!pauseGame) callback(this.repeatButton.getTag());
      });
    }
  }

  /**
   * @description
   * Método encargado de dibujar GameObjectOptions.
   * @returns void
   */
  draw() {
    stroke(BLACK_COLOR);
    
    // Dibujar el fondo
    const backgroundColor = color(BLACK_COLOR);
    backgroundColor.setAlpha(180);
    fill(backgroundColor);
    rect(this.position.x, this.position.y, this.width, this.height, 10);
    
    // Dibujar los botones
    this.pauseButton.draw();
    this.audioButton.draw();
    this.messageButton.draw();
    this.repeatButton.draw();
  }
}