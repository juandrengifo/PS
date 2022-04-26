/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase Level representa un nivel del juego y contiene los métodos abstractos 
 * encargados de implementar la funcionalidad de cada nivel concreto.
 */

class Level {

  /**
   * @description 
   * Constructor de la clase.
   * @param {CardFactory} cardFactory
   * Objeto que representa la fábrica de fichas
   * del juego.
   * @returns LevelSecuencia.
   */
  constructor(cardFactory) {

    // Atributos
    this.background;
    this.cardFactory = cardFactory;
  }

  // Métodos abstractos

  /**
   * @description
   * Método abstracto donde se dibujan los elementos del nivel.
   * @returns void.
   */
  drawGameObjects() {}

  /**
   * @description
   * Método encargado de realizar los diferentes movimientos de los
   * objetos del nivel.
   * @returns void.
   */
  executeMovements() {}

  /**
   * @description
   * Método abstracto donde se administran las acciones de click
   * ejecutadas por el mouse.
   * @param {Function} callback
   * Función de retorno que se ejecuta cuando se han realizado acciones
   * relacionadas con el evento de click.
   * @returns void.
   */
  handleMousePressed(callback) {}

  /**
   * @description
   * Método abstracto donde se inicializan las variables del nivel.
   * @returns void.
   */
  startGameElements() {}

  /**
   * @description
   * Método abstracto encargado de iniciar el gameplay de un nivel. El gameplay 
   * de un nivel inicia con las primeras instrucciones del avatar.
   * @param {Function} callback 
   * Función de retorno que contiene la instrucción dada por el avatar.
   * @returns void.
   */
  startLevelGamePlay(callback) {}

  /**
   * @description
   * Método abstracto para validar las reglas de juego cuando se 
   * ejecutan movimientos realizados por el jugador en el nivel. 
   */
  validateMovementRules() {}
}