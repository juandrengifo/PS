/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase LevelManager está encargada de realizar la 
 * administración de los niveles de los juegos que así lo requieran.
 */

class LevelManager {

  /**
   * @description
   * Constructor de la clase.
   * @param {Array} levels
   * Lista que representa los niveles del juego.
   * @returns LevelManager.
   */
  constructor(levels) {

    // Atributos
    this.currentIndex = 0;
    this.levels = levels;
  }

  // Métodos de la clase

  /**
   * @description
   * Método encargado de cambiar de nivel, aumentando el índice actual
   * de niveles.
   * @param {Function} callback
   * Función de retorno que indica si se llegó al último nivel o no.
   * @returns void.
   */
  changeLevel(callback) {
    const nextIndex = this.currentIndex + 1;
    const endReached = nextIndex === this.levels.length;
    this.currentIndex = endReached ? this.currentIndex : nextIndex;

    callback(endReached);
  }

  /**
   * @description
   * Método encargado de dibujar el nivel actual.
   * @returns void.
   */
  drawGameObjects() {
    this.levels[this.currentIndex].drawGameObjects();
  }
  
  /**
   * @description 
   * Método encargado de realizar los distintos movimientos 
   * de los objetos del nivel actual.
   * @returns void.
   */
  executeMovements() {
    this.levels[this.currentIndex].executeMovements();
  }

  /**
   * @description
   * Método encargado de administrar las acciones del mouse
   * en el nivel actual.
   * @param {Function} callback
   * Función de retorno que se ejecuta cuando se han realizado acciones 
   * relacionadas con el evento de click en el nivel actual.
   * @returns void.
   */
  handleMousePressed(callback) {
    this.levels[this.currentIndex].handleMousePressed(callback);
  }

  /**
   * @description
   * Método encargado de inicializar el nivel.
   * @returns void.
   */
  startGameElements() {
    this.levels[this.currentIndex].startGameElements();
  }
  
  /**
   * @description 
   * Método encargado de iniciar el gameplay del nivel actual. El gameplay 
   * de un nivel inicia con las primeras instrucciones del avatar.
   * @param {Function} callback 
   * Función de retorno que contiene la instrucción dada por el avatar.
   * @returns void.
   */
  startLevelGamePlay(callback) {
    this.levels[this.currentIndex].startLevelGamePlay(callback);
  }

  /**
   * @description
   * Método encargado de validar las reglas de juego cuando 
   * se ejecutan movimientos realizados por el jugador en el 
   * nivel actual.
   * @returns void.
   */
  validateMovementRules() {
    this.levels[this.currentIndex].validateMovementRules();
  }
}