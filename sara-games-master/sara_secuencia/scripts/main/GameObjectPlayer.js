/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase GameObjectPlayer representa los elementos del espacio
 * de juego que muestra las imágenes o nombres de los jugadores.
 * @subclassof GameObject.
 */

class GameObjectPlayer extends GameObject {

  /**
   * @description
   * Constructor de la clase
   * @param {Number} x 
   * Número cuyo valor es el componente en x de la posición de
   * GameObjectPlayer.
   * @param {Number} y 
   * Número cuyo valor es el componente en y de la posición de
   * GameObjectPlayer.
   * @param {Number} width 
   * Número cuyo valor representa la longitud de GameObjectPlayer.
   * @param {Number} height 
   * Número cuyo valor representa la altura de GameObjectPlayer.
   * @param {String} tag 
   * String cuyo valor es un identificador para GameObject.
   * @returns GameObjectPlayer
   */
  constructor(x, y, width, height, tag) {
    super(x, y, width, height, tag);

    // Atributos
    this.textSize = getTextSize();
    this.alias = tag === FOE_TAG ? '' : gameData.user.thumbnail_alias;
    this.color = tag === FOE_TAG ? WHITE_COLOR : gameData.user.color;

    // Construir sprite de la imagen
    this.sprite;
    if (tag === FOE_TAG)
      this.sprite = new Sprite(AVATAR_THUMBNAIL, tag);
    else if (gameData.user.profile_img) {
      const imagePath = `${SERVER_URL}${gameData.user.profile_img}`;
      this.sprite = new Sprite(imagePath, tag);
    }
  }

  /**
   * @description
   * Método encargado de dibujar GameObjectPlayer.
   * @param {Boolean} playerTurn
   * Booleano que indica el turno del jugador.
   * @returns void
   */
  draw(playerTurn) {
    // Verififar si se debe realizar un glow sobre el císuclo de fondo
    if ((playerTurn && this.tag === PLAYER_TAG) || (!playerTurn && this.tag === FOE_TAG))
      fill(GLOW_COLOR);
    else
      fill(GRAY_COLOR);
    strokeWeight(0);
    circle(this.position.x, this.position.y, this.width);

    // Dibujar un círculo interno dónde irá la imagen
    const innerCircleW = this.width * 0.88;
    const innerCircleX = this.position.x;
    const innerCircleY = this.position.y;
    fill(this.color);
    strokeWeight(1);
    circle(innerCircleX, innerCircleY, innerCircleW);

    // Dibujar sprite. Si no se tiene sprite, dibujar alias
    if (this.sprite) {
      const spriteX = innerCircleX - Math.floor(innerCircleW / 2);
      const spriteY = innerCircleY - Math.floor(innerCircleW / 2);
      const spritePosition = createVector(spriteX, spriteY);
      this.sprite.draw(spritePosition, innerCircleW, innerCircleW);
    }
    else {
      textSize(this.textSize * 1.5);
      const textW = textWidth(this.alias);
      const x = innerCircleX - Math.floor(textW / 2);
      const y = innerCircleY + Math.floor(this.textSize / 2);
      fill(BLACK_COLOR);
      text(this.alias, x, y);
    } 
  }
}