/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase EndGameModalStrategy representa la estrategia que define
 * la estructura y el comportamiento del modal de finalización del
 * juego.
 */

class EndGameModalStrategy {

  /**
   * @description
   * Constructor de la clase.
   * @param {Object} area 
   * Objeto que contiene la información del área de 
   * visualización de la ventana modal.
   * @param {Number} score
   * Número que representa el puntaje final que el 
   * jugador obtuvo.
   * @returns EndGameModalStrategy
   */
  constructor(area, score) {

    // Atributos
    this.area = area;
    this.score = `${score}`;
    this.background = new Sprite(END_BACKGROUND, END_MODAL);
    this.star = new Sprite(STAR_ICON, SCORE_TAG);
    this.textSize = getTextSize();

    // Construir el botón de reiniciar el juego
    const { position, width, height } = area;
    const buttonW = Math.floor((width * 0.2) + (spaceX * 2));
    const buttonH = Math.floor(this.textSize + (spaceY * 2));
    let buttonX = position.x + Math.floor((width / 2) - buttonW - spaceX);
    const buttonY = position.y + Math.floor(height - buttonH - (spaceY * 10));
    this.restartButton = new GameObjectButton(buttonX, buttonY, buttonW, buttonH, RESTART_TAG, 'Reiniciar');

    // Construir el botón de salir
    buttonX = position.x + Math.floor((width / 2) + spaceX);
    this.exitButton = new GameObjectButton(buttonX, buttonY, buttonW, buttonH, EXIT_TAG, 'Salir');
  }

  /**
   * @description
   * Método encargado de detectar el evento de click en los elementos
   * del EndGameModalStrategy.
   * @param {p5.Vector} click 
   * Vector que define la posición del evento click.
   * @param {Function} callback 
   * Función de callback que se ejecuta cuando se realiza un click
   * en un elemento del modal.
   * @returns void.
   */
  clicked(click, callback) {
    this.restartButton.clicked(click, () => {
      callback({ kind: END_MODAL, option: RESTART_TAG });
    });

    this.exitButton.clicked(click, () => {
      callback({ kind: END_MODAL, option: EXIT_TAG });
    });
  }

  /**
   * @description
   * Método encargado de dibujar los elementos del área de
   * visualización de la ventana modal.
   * @returns void
   */
  draw() {
    noStroke();
    
    const { position, width, height } = this.area;
    this.background.draw(position, width, height);

    // Dibujar sección de puntos ganados
    textSize(this.textSize * 1.4);
    textStyle(BOLD);
    textFont(GAME_FONT);

    const wonText = 'Ganaste';
    let textW = textWidth(wonText);
    let textX = (position.x + width) - (textW + (spaceX * 16));
    let textY = position.y + (spaceY * 22);
    text(wonText, textX, textY);

    // Calcular tamaño y posición de la estrella teniendo en cuenta
    // el tamaño del texto del puntaje
    textSize(this.textSize * 3.5);
    const scoreTextW = textWidth(this.score);
    const starW = (this.textSize * 3.5);
    const starH = starW;
    const starX = textX + Math.floor((textW / 2) - ((starW + scoreTextW + spaceX) / 2));
    const starY = textY + starH - (spaceY * 7.5);
    this.star.draw(createVector(starX, starY), starW, starH);

    // Dibujar puntaje
    textX = starX + starW;
    textY = starY + starH;
    text(this.score, textX, textY);

    // Dibujar mensaje de felicitación
    textSize(this.textSize * 1.4);
    const congratsText = '¡Lo lograste! Sigue practicando\n para mejorar en el lenguaje.';    
    textW = textWidth(congratsText);
    textX = position.x + Math.floor((width / 2) - (textW / 4));
    textY = this.exitButton.getPosition().y - this.textSize - (spaceY * 10);    
    text(congratsText, textX, textY); 

    // Dibujar botones de reiniciar y salir
    this.restartButton.draw();
    this.exitButton.draw();
  }
}