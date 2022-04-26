/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase GameObject representa todos los objetos del juego. En ese sentido
 * un GameObject contiene una posición y un tamaño.
 */

 class GameObject {

  /**
   * @description
   * Constructor de la clase.
   * @param {Number} x 
   * Entero cuyo valor representa la posición en x de GameObject.
   * @param {Number} y 
   * Entero cuyo valor representa la posición en y de GameObject.
   * @param {Number} width 
   * Entero cuyo valor representa la longitud de GameObject.
   * @param {Number} height
   * Entero cuyo valor representa la altura de GameObject.
   * @param {String} tag
   * String cuyo valor es un identificador para GameObject.
   * @returns GameObject.
   */
  constructor(x, y, width, height, tag) {

    // Atributos
    this.position = createVector(x, y);
    this.width = width;
    this.height = height;
    this.tag = tag;
  }
  
  // Getters

  /**
   * @description
   * Método que retorna el valor de la altura del
   * GameObject.
   * @returns Number
   */
  getHeight() {
    return this.height;
  }

  /**
   * @description
   * Método que retorna la posición actual del GameObject.
   * @returns p5.Vector
   */
  getPosition() {
    return this.position;
  }

  /**
   * @description
   * Método que retorna el tag identificador del GameObject.
   * @returns String
   */
  getTag() {
    return this.tag;
  }

  /**
   * @description
   * Método que retorna el valor de la longitud del
   * GameObject.
   * @returns Number
   */
  getWidth() {
    return this.width;
  }

  // Setters

  /**
   * @description
   * Método que asigna el valor de la altura al GameObject.
   * @param {Number} height
   * Número que representa el nuevo valor de la altura.
   * @returns void 
   */
  setHeight(height) {
    this.height = height;
  }

  /**
   * @description
   * Método que asigna el valor de posición al GameObject.
   * @param {p5.Vector} position
   * Vector que representa el nuevo valor de posición.
   * @returns void 
   */
  setPosition(position) {
    this.position = position;
  }

  /**
   * @description
   * Método que asigna el tag identificador al GameObject.
   * @param {String} tag
   * String cuyo valor representa un identificador del
   * GameObject.
   * @returns void 
   */
  setTag(tag) {
    this.tag = tag;
  }

  /**
   * @description
   * Método que asigna el valor la longitud al GameObject.
   * @param {Number} width
   * Número que representa el nuevo valor de la longitud.
   * @returns void 
   */
  setWidth(width) {
    this.width = width;
  }
 }