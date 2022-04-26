/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase GameObjectCard representa una ficha en el juego. Este es uno
 * de los elementos más importantes. Cabe resaltar que el GameObjectCard
 * implementa el Patrón de Diseño Strategy para cubrir las estructuras y 
 * los comportamientos de los diferentes tipos de fichas.
 * @subclassof GameObject
 */

class GameObjectCard extends GameObject {

  /**
   * @description
   * Constructor de la clase.
   * @param {Number} x 
   * Entero cuyo valor representa la posición en x de GameObjectCard.
   * @param {Number} y 
   * Entero cuyo valor representa la posición en y de GameObjectCard.
   * @param {Number} width
   * Entero cuyo valor representa la longitud de GameObjectCard. 
   * @param {Number} height 
   * Entero cuyo valor representa la altura de GameObjectCard. 
   * @param {String} tag
   * String cuyo valor es un identificador para GameObject.
   * @param {Boolean} hidden
   * Booleano que define si una ficha está escondida o no.
   * @returns GameObjectCard.
   */
  constructor(x, y, width, height, tag, hidden) {
    super(x, y, width, height, tag);

    // Atributos
    this.cardStrategy;
    this.movementStrategy;

    this.basePosition = createVector(x, y);
    this.baseWidth = width;
    this.baseHeight = height;
    this.hidden = hidden;

    this.zooming = false;
  }

  // Getters

  /**
   * @description
   * Método que retorna la estructura interna de la ficha.
   * @returns Object
   */
  getCardStructure() {
    return this.cardStrategy.getStructure();
  }

  /**
   * @description
   * Método que retorna la altura original de la ficha.
   * @returns Number
   */
  getBaseHeight() {
    return this.baseHeight;
  }

  /**
   * @description
   * Método que retorna la posición original de la ficha.
   * @returns p5.Vector
   */
  getBasePosition() {
    return this.basePosition;
  }

  /**
   * @description
   * Método que retorna la longitud original de la ficha.
   * @returns Number
   */
  getBaseWidth() {
    return this.baseWidth;
  }

  /**
   * @description
   * Método encargado de retornar el valor hidden de la ficha.
   * @returns Boolean
   */
  getHidden() {
    return this.hidden;
  }
  
  // Setters

  /**
   * @description
   * Método encargado de asignar un cardStrategy a la clase GameObjectCard.
   * @param {*} cardStrategy 
   * Estrategia usada por GameObjectCard para definir la 
   * estructura de la ficha.
   * @returns void.
   */
  setCardStrategy(cardStrategy) {
    this.cardStrategy = cardStrategy;
  }

  /**
   * @description 
   * Método encargado de asignar la estructura de la estrategia de GameObjectCard.
   * @param {*} structure 
   * Estructura nueva para ser asignada a la estrategia.
   * @returns void.
   */
  setCardStructure(structure) {
    this.cardStrategy.setStructure(structure);
  }

  /**
   * @description 
   * Método encargado de asignar un valor de correctitud en la estrategia de 
   * GameObjectCard.
   * @param {Boolean} correct 
   * Booleano a ser asignado en la estrategia.
   * @returns void.
   */
  setCorrect(correct) {
    this.cardStrategy.setCorrect(correct);
  }

  /**
   * @description 
   * Método encargado de asignar el valor de enabled en la estrategia de 
   * GameObjectCard.
   * @param {Boolean} enabled 
   * Booleano a ser asignado en la estrategia.
   * @returns void.
   */
  setEnabled(enabled) {
    this.cardStrategy.setEnabled(enabled);
  }

  /**
   * @description
   * Método encargado de asignar un movementStrategy a la clase GameObjectCard.
   * @param {*} movementStrategy 
   * Estrategia usada por GameObjectCard para definir el
   * movimiento de la ficha.
   * @returns void.
   */
  setMovementStrategy(movementStrategy) {
    this.movementStrategy = movementStrategy;
  }

  /**
   * @description
   * Método encargado de asignar el valor de la altura original a la
   * ficha.
   * @param {Number} height 
   * Número que representa el nuevo valor de la altura original de
   * la ficha.
   * @returns void
   */
  setBaseHeight(height) {
    this.baseHeight = height;
  }
  
  /**
   * @description
   * Método encargado de asignar el valor de la posición original
   * a la ficha.
   * @param {p5.Vector} position
   * Vector que representa el nuevo valor de la posición original
   * de la ficha.
   * @returns void 
   */
  setBasePosition(position) {
    this.basePosition = position;
  }

  /**
   * @description
   * Método encargado de asignar el valor de la longitud original
   * a la ficha.
   * @param {Number} width
   * Número que representa el nuevo valor de la longitud original
   * de la ficha.
   * @returns void 
   */
  setBaseWidth(width) {
    this.baseWidth = width;
  }

  /**
   * @description
   * Método encargado de asignar el valor hidden de la ficha.
   * @param {Boolean} hidden 
   * Booleano que representa el nuevo valor hidden de la ficha.
   * @returns void
   */
  setHidden(hidden) {
    this.hidden = hidden;
  }

  // Otros métodos

  /**
   * @description
   * Método que ejecuta la acción click del cardStrategy con el
   * objetivo de verificar si la ficha fue clickeada. 
   * @param {p5.Vector} click 
   * Vector que define la posición de un evento de click.
   * @param {Function} callback
   * Función de callback que permite detectar el click realizado
   * sobre una ficha.
   * @returns void.
   */
  clicked(click, callback) {
    this.cardStrategy.clicked(this, click, (flip) => {
      if (!flip && this.zooming) this.zoom(0);
      callback(flip);
    });
  }

  /**
   * @description
   * Método encargado de verificar si la ficha colisiona con un
   * objeto en particular.
   * @param {Object} object 
   * Objeto con el que se verificará si la ficha colisiona.
   * @returns Boolean.
   */
  collides(object) {
    const x = Math.floor(this.position.x + (this.width / 2));
    const y = Math.floor(this.position.y + (this.height / 2));

    return x > object.getPosition().x && x < object.getPosition().x + object.getWidth() &&
           y > object.getPosition().y && y < object.getPosition().y + object.getHeight();
  }

  /**
   * @description
   * Método encargado de dibujar la ficha siguiendo la estrategia
   * del cardStrategy.
   * @returns void.
   */
  draw() {
    this.cardStrategy.draw(this);
  }

  /**
   * @description
   * Método encargado de intercambiar los lados de una ficha.
   * @param {Function} callback
   * Función de callback que indica si el intercambio de los
   * lados llegó a su fin.
   * @returns void.
   */
  flip(callback) {
    this.cardStrategy.flip(this, callback);
  }

  /**
   * @description
   * Método encargado de detectar si el mouse se encuentra
   * ubicado sobre la ficha
   * @param {p5.Vector} mouse
   * Vector que define la posición del mouse.
   * @param {Number} zoom
   * Número que indica el factor de escala que se debe
   * aplicar sobre la ficha para hacerle zoom.
   * @param {Function} callback
   * @returns void 
   */
  hover(mouse, zoom, callback) {
    if (checkBoundaries(this, mouse)) {
      // Realizar zoom sobre la ficha
      if (zoom > 0) {
        this.zoom(zoom);
        callback(true);
      }

      // Ejecutar la lógica de hover de la estrategia
      this.cardStrategy.hover(this, mouse);
    }
    else {
      this.zoom(0);
      callback(false);

      // Esconder la flecha de flip para las fichas de tipo dominó
      if (this.cardStrategy instanceof DominoCardStrategy)
        this.cardStrategy.setShowArrow(false);
    }
  }

  /**
   * @description
   * Método encargado de mover la ficha siguiendo la estrategia
   * del movementStrategy.
   * @param {p5.Vector} newPosition
   * Vector que define la posición a la que se desea mover la 
   * ficha.
   * @param {Function} callback
   * Función de callback que indica cuando el movimiento ha 
   * finalizado.
   * @returns void
   */
  move(newPosition, callback) {
    this.movementStrategy.move(this, newPosition, callback);
  }

  /**
   * @description
   * Método encargado de hacer zoom sobre una ficha.
   * @param {Number} scale
   * Número que indica la escala que se debe aplicar a la ficha
   * para hacerle zoom.
   * @returns void
   */
  zoom(scale) {
    this.zooming = scale > 0 ? true : false;
    
    // Verificar si se debe hacer zoom de acuerdo al valor de scale
    if (scale > 0) {
      // Calcular los valores nuevos de longitud y altura
      const newWidth = this.baseWidth + scale;
      const newHeight = this.baseHeight + scale;

      // Calcular el nuevo vector de posición
      const newX = Math.floor(this.basePosition.x - (scale / 2));
      const newY = Math.floor(this.basePosition.y - (scale / 2));
      const newPositon = createVector(newX, newY);

      // Aumentar el tamaño de la ficha
      this.width = newWidth;
      this.height = newHeight;

      // Actualizar la posición de la ficha
      this.position = newPositon;
    }
    else {
      // Resetear los atributos a sus valores originales
      this.width = this.baseWidth;
      this.height = this.baseHeight;
      this.position = this.basePosition;
    }
  }
}