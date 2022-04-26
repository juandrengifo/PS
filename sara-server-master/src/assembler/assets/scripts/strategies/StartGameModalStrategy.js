/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase StartGameModalStrategy representa la estrategia que define
 * la estructura y el comportamiento del modal inicial del juego. Este
 * modal es necesario para activar la funcionalidad de la voz por medio
 * de la interacción del jugador.
 */

class StartGameModalStrategy {

  /**
   * @description
   * Constructor de la clase
   * @param {Object} area 
   * Objeto que contiene la información del área de 
   * visualización de la centana modal.
   * @returns StartGameModalStrategy
   */
  constructor(area) {

    // Atributos
    this.textSize = getTextSize();

    // Construir el botón de inicio
    const { position, width, height } = area;
    const buttonW = Math.floor((width * 0.2) + (spaceX * 2));
    const buttonH = Math.floor(this.textSize + (spaceY * 2));
    const buttonX = position.x + Math.floor((width / 2) - (buttonW / 2));
    const buttonY = position.y + Math.floor((height / 2) - (buttonH / 2));
    this.startButton = new GameObjectButton(buttonX, buttonY, buttonW, buttonH, START_TAG, 'Iniciar');
  }

  /**
   * @description
   * Método que verifica la acción de click en StartGameModalStrategy
   * con el objetivo de detectar los elementos clickeados.
   * @param {p5.Vector} click
   * Vector que define la posición de un evento click.
   * @param {Function} callback
   * Función de callback que se ejecuta cuando se realiza un click
   * sobre algún elemento del modal.
   * @returns void
   */
  clicked(click, callback) {
    this.startButton.clicked(click, () => {
      callback({ kind: START_MODAL });
    });
  }

  /**
   * @description
   * Método encargado de dibujar los elementos del área de 
   * visualización del modal.
   * @returns void
   */
  draw() {
    this.startButton.draw();
  }
}