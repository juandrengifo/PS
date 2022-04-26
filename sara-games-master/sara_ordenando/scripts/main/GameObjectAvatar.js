/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase GameObjectAvatar representa el avatar de juego. El avatar
 * es el encargado de realizar interacciones con el jugador por medio
 * de voz. Las interacciones que realiza abarcan las demandas del
 * juego, validaciones de jugadas, entre otros.
 * @subclassof GameObject.
 */

class GameObjectAvatar extends GameObject {

  /**
   * @description
   * Constructor de la clase.
   * @param {Number} x 
   * Número que representa el componente en x de la posición de 
   * GameObjectAvatar.
   * @param {Number} y 
   * Número que representa el componente en y de la posición de
   * GameObjectAvatar.
   * @param {Number} width 
   * Número que representa la longitud de GameObjectAvatar.
   * @param {Number} height 
   * Número que representa la altura de GameObjectAvatar.
   * @param {String} tag
   * String cuyo valor es un identificador para GameObject. 
   * @returns GameObjectAvatar
   */
  constructor(x, y, width, height, tag) {
    super(x, y, width, height, tag);

    // Atributos
    this.lastMessage;
    this.message;
    this.speaker = new Speaker(); // Permite al avatar hablar

    const avatarImagePath = this.getAvatarImage();
    this.sprite = new Sprite(avatarImagePath, tag); 

    this.textSize = getTextSize();
  }

  // Getters

  /**
   * @description
   * Método encargado de retornar el último mensaje
   * procesado por el avatar.
   * @returns String
   */
  getLastMessage() {
    return this.lastMessage;
  }

  /**
   * @description
   * Método encargado de retornar el mensaje actual
   * procesado por el avatar.
   * @returns String
   */
  getMessage() {
    return this.message;
  }

  // Otros métodos

  /**
   * @description
   * Método encargado de dibujar el avatar del juego.
   * @returns void
   */
  draw() {
    stroke(BLACK_COLOR);

    // Dibujar el avatar
    const avatarWidth = this.width * 0.18;
    const avatarHeight = avatarWidth * 2.2;
    const avatarPosition = createVector(spaceX, this.height - avatarHeight);
    this.sprite.draw(avatarPosition, avatarWidth, avatarHeight);

    // Dibujar el cuadro de texto
    const boxHeight = this.height * 0.2;
    const boxY = this.height - boxHeight;

    const textBoxColor = color(BLACK_COLOR);
    textBoxColor.setAlpha(240);
    fill(textBoxColor);
    rect(this.position.x, boxY, this.width, boxHeight);

    if (showMessage) {
      // Dibujar el texto
      textSize(this.textSize);
      // Calcular posición del texto
      let textW = textWidth(this.message);
      if (textW > this.width) textW = Math.floor(this.width * 0.65);

      let textX = this.position.x + Math.floor((this.width / 2) - (textW / 2));
      if (textX < this.position.x) textX = this.position.x;

      const textY = boxY + Math.floor((boxHeight / 2.84) + this.textSize);

      fill(WHITE_COLOR);
      textStyle(BOLD);
      textFont(GAME_FONT);
      text(this.message, textX, textY); 
    }
  }

  /**
   * @description 
   * Método encargado de obtener el path de la imagen del avatar.
   * @returns String
   */
  getAvatarImage() {
    return AVATAR_URL ? SERVER_URL + AVATAR_URL : AVATAR_IMAGE;
  }

  /**
   * @description
   * Método encargado de hacer que el avatar pronuencie el
   * texto entrante.
   * @param {String} message
   * String cuyo valor es el texto que el avatar debe pronunciar. 
   * @param {Function} callback
   * Función de callback que ayuda a identificar el momento en el
   * que el avatar terminó de pronunciar el texto. 
   * @returns void 
   */
  speak(message, callback) {
    this.message = message;
    this.speaker.speak(this.message, () => {
      setTimeout(() => {
        this.lastMessage = message; // Asignar como último mensaje
        this.message = null;
        if (callback instanceof Function) 
          callback();
      }, 1500);
    });
  }
}