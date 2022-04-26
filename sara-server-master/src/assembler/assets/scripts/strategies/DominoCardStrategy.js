/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase DominoCardStrategy implementa la estructura y el comportamiento 
 * de una ficha tipo dominó.
 */

class DominoCardStrategy {

  /**
   * @description
   * Constructor de la clase.
   * @param {Array} structure
   * Parámetro encargado de definir la estructura de la ficha
   * de tipo dominó. 
   * @returns DominoCardStrategy.
   */
  constructor(structure) {

    // Atributos
    this.arrowSprite = new Sprite(ARROW_FLIP_ICON, ARROW_FLIP_TAG);
    this.backSprite = new Sprite(DOMINO_CARD_BACK, HIDDEN_TAG);
    this.showArrow = false;
    this.shrink = true;
    this.sides = structure;
  }

  // Getters

  /**
   * @description
   * Método encargado de retornar la estructura interna de la
   * ficha de tipo dominó.
   * @returns Object
   */
  getStructure() {
    return { structure: this.sides };
  }

  // Setters

  /**
   * @description
   * Método encargado de asignar el valor de showArrow para mostrar 
   * o no la flecha de flip.
   * @param {Boolean} show 
   * Booleano que representa el nuevo valor de showArrow.
   * @returns void
   */
  setShowArrow(show) {
    this.showArrow = show;
  }

  // Métodos públicos de la clase

  /**
   * @description
   * Método encargado de definir la lógica de click en la ficha
   * de tipo dominó.
   * @param {GameObjectCard} card 
   * GameObjectCard al que se le verificará la acción del click.
   * @param {p5.Vector} click 
   * Vector que define la posición de la acción del click.
   * @param {Function} callback
   * Función de callback que permite detectar el click realizado
   * sobre el lado izquierdo de la ficha tipo dominó.
   * @returns void.
   */
  clicked(card, click, callback) {
    // Verificar que el click se encuentre dentro de los límites
    if (checkBoundaries(card, click)) {
      const halfWidth = card.getWidth() / 2;

      if (card.getHidden()) {
        card.setHidden(false);
      }
      else {
        // Verificar el lado de la ficha que se clickeó (se debe tener en cuenta que
        // la ficha de tipo dominó tienes dos lados). Las reglas son las siguientes:
        // 1. Si se clickeó el lado izquierdo, la ficha se debe mover.
        // 2. Si se clickeó el lado derecho se hace un flip. 
        if (click.x < card.getPosition().x + halfWidth) {
          callback(false);
        }
        else
          callback(true);
      }
    }
  }

  /**
   * @description
   * Método encargado de dibujar la ficha de tipo dominó.
   * @param {GameObjectCard} card 
   * GameObjectCard a dibujar.
   * @returns void.
   */
  draw(card) {
    // Obtener los componentes de posición y el tamaño de la ficha
    const position = card.getPosition();
    const x = position.x;
    const y = position.y;
    const width = card.getWidth();
    const height = card.getHeight();

    if (card.getHidden())
      // Dibujar el back de la ficha si esta se encuentra escondida
      this.backSprite.draw(createVector(x, y), width, height);
    else {
      // Dibujar la ficha completa
      fill(MARFIL_COLOR);
      strokeWeight(2.4);
      rect(x, y, width, height, 5);
      
      // Obtener la mitad de la longitud
      const halfWidth = width / 2;

      // Dibujar el lado izquierdo
      const leftSprite = this.sides[0].sprite;
      leftSprite.draw(position, halfWidth, height);

      // Dibujar el separador
      fill(BLACK_COLOR);
      strokeWeight(1);
      rect(x + halfWidth, y, 1, height); 
      
      // Dibujar el lado derecho
      const rightSprite = this.sides[1].sprite;
      const newPosition = createVector(x + halfWidth + 1, y);
      rightSprite.draw(newPosition, halfWidth, height);

      // Dibujar la flecha de flip
      if (this.showArrow) {
        const arrowH = Math.floor(height * 0.4);
        const arrowW = arrowH * 1.5;
        const arrowX = card.getBasePosition().x + Math.floor((card.getBaseWidth() / 2) - (arrowW / 2));
        const arrowY = position.y - (arrowH + spaceY);
        this.arrowSprite.draw(createVector(arrowX, arrowY), arrowW, arrowH);
      }
    }
  }

  /**
   * @description
   * Método que permite intercambiar los lados de la ficha
   * de tipo dominó.
   * @param {GameObjectCard} card
   * Ficha de tipo dominó a la que se le quiere intercambiar 
   * los lados.
   * @returns void
   */
  flip(card, callback) {
    // Lógica del movimiento de enlongación
    const pendulumSpeed = card.getBaseWidth() / 15;
    const halfSpeed = pendulumSpeed / 2;
    const factor = this.shrink ? -1 : 1;

    const position = card.getPosition();
    const newWidth = card.getWidth() + (pendulumSpeed * factor);
    card.setWidth(newWidth);

    const x = this.shrink ? position.x + halfSpeed : position.x - halfSpeed;
    card.setPosition(createVector(x, position.y));

    // Reglas del movimiento de elongación
    // 1. Si la longitud de la ficha es menor a 0, cambiar el sentido, es decir
    // dejar de encoger y comenzar a estirar
    // 2. Si la longitud es mayor a la longitud base entonces terminar el 
    // movimiento.
    if (card.getWidth() <= 0) {
      this.shrink = false;

      // Cambiar los lados de la ficha
      const leftSide = this.sides[0];
      const rightSide = this.sides[1];
      this.sides = [ rightSide, leftSide ];
    }
    else if (!this.shrink && (card.getWidth() >= card.getBaseWidth())) {
      this.shrink = true;
      callback();
    }
  }

  /**
   * @description
   * Método encargado de detectar si el mouse se encuentra
   * ubicado sobre la ficha de tipo dominó (evento hover).
   * @param {GameObjectCard} card 
   * Ficha a la que se le quiere detectar el evento de hover
   * @param {p5.Vector} mouse
   * Vector que define la posición del mouse
   * @returns void 
   */
  hover(card, mouse) {
    const halfWidth = Math.floor(card.getWidth() / 2);
    // Mostrar la flecha si el mouse está sobre el lado derecho
    // de la ficha
    this.showArrow = mouse.x > card.getPosition().x + halfWidth;
  }
}