/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase GameObjectModal representa una ventana modal. La ventana
 * modal es una ventana que aparece encima de todos los elementos del
 * juego y bloquea cualquier interacción con ellos.
 * @subclassof GameObject.
 */

class GameObjectModal extends GameObject {

  /**
   * @description
   * Constructor de la clase.
   * @param {Number} x 
   * Número cuyo valor representa el componente en x de la posición de
   * GameObjectModal.
   * @param {Number} y 
   * Número cuyo valor representa el componente en y de la posición de
   * GameObjectModal.
   * @param {Number} width 
   * Número cuyo valor representa la longitud de GameObjectModal.
   * @param {Number} height 
   * Número vuyo valor representa la altura de GameObjectModal.
   * @param {String} tag
   * String cuyo valor es un identificador para GameObject.
   * @returns GameObjectModal 
   */
  constructor(x, y, width, height, tag) {
    super(x, y, width, height, tag);

    // Atributos
    this.modalStrategy;

    // Representación del área del modal dónde aparece
    // información (área de visualización)
    const halfW = Math.floor(this.width / 2);
    const halfH = Math.floor(this.height / 2);
    const areaWidth = Math.floor(this.width * 0.6);
    const areaHeight = Math.floor(this.height * 0.72);
    this.modalArea = { 
      width: areaWidth, 
      height: areaHeight, 
      position: createVector(halfW - Math.floor(areaWidth / 2), halfH - Math.floor(areaHeight / 2))
    };
  }

  // Getters
  
  /**
   * @description
   * Método encargado de retornar el área de visualización
   * de la ventana modal.
   * @returns Object
   */
  getModalArea() {
    return this.modalArea;
  }

  /**
   * @description
   * @returns modalStrategy.
   */
  getModalStrategy() {
    return this.modalStrategy;
  }

  // Setters

  /**
   * @description
   * Método encargado de asignar un modalStrategy a GameObjectModal.
   * @param {Object} modalStrategy 
   * Estrategia usada por GameObjectModal para definir la estructura
   * y el comportamiento de la ventana modal.
   * @returns void
   */
  setModalStrategy(modalStrategy) {
    this.modalStrategy = modalStrategy;
  }

  /**
   * @description
   * Método encargado de ejecutar el método clicked del modalStrategy para
   * verificar que acción realizar si algún elemento del área de visualización 
   * de la ventana modal fue clickeado.
   * @param {p5.Vector} click 
   * Vector que representa la posición de un evento click.
   * @param {Function} callback 
   * Función de callback que permite identificar si un elemento del área de
   * visualización de la ventana modal fue clickeado.
   * @returns void
   */
  clicked(click, callback) {
    this.modalStrategy.clicked(click, callback);
  }

  /**
   * @description
   * Método encargado de dibujar la ventana modal siguiendo
   * la estrategia del modalStrategy.
   * @returns void
   */
  draw() {
    const backgroundColor = color(BLACK_COLOR);
    const alphaValue = 180;
    backgroundColor.setAlpha(alphaValue);
    fill(backgroundColor);
    rect(this.position.x, this.position.y, this.width, this.height);

    // Dibujar los elementos del área de visualización de la
    // ventana modal
    this.modalStrategy.draw();
  }
}