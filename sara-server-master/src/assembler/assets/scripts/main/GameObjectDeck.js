/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase GameObjectDeck representa un deck de fichas. Esta clase ejecuta
 * sus acciones y las acciones de las fichas que contiene siguiendo
 * la idea del Patrón de Diseño Composite.
 * @subclassof GameObject.
 */

class GameObjectDeck extends GameObject {
  
  /**
   * @description
   * Constructor de la clase.
   * @param {Number} x 
   * Entero cuyo valor representa la posición en x de GameObjectDeck.
   * @param {Number} y 
   * Entero cuyo valor representa la posición en y de GameObjectDeck.
   * @param {Number} width 
   * Entero cuyo valor representa la longitud de GameObjectDeck.
   * @param {Number} height 
   * Entero cuyo valor representa la altura de GameObjectDeck.
   * @param {Array} cards 
   * Array de GameObjectCard.
   * @param {String} tag
   * String cuyo valor es un identificador para GameObject.
   * @returns GameObjectDeck
   */
  constructor(x, y, width, height, cards, tag) {
    super(x, y, width, height, tag);

    this.cards = [ ...cards ];
    this.zoomingCard;
  }

  // Getters

  /**
   * @description
   * Método encargado de retornar la lista de fichas.
   * @returns Array
   */
  getCards() {
    return this.cards;
  }

  // Otros métodos

  /**
   * @description
   * Método encargado de agregar una nueva ficha a la
   * lista de fichas del deck.
   * @param {GameObjectCard} card
   * Ficha que se desea agregar a la lista de fichas del
   * deck. 
   * @returns void
   */
  addCard(card) {
    // Actualizar el tag de la ficha y su posición original
    card.setTag(this.tag);
    card.setBasePosition(card.getPosition());
    this.cards.push(card);
  }

  /**
   * @description
   * Método que ejecuta la acción click sobre el deck de fichas. Este
   * se encarga de verificar si alguna ficha del deck fue clickeada.
   * @param {p5.Vector} click 
   * Vector que define la posición de un evento de click.
   * @param {Function} callback 
   * Función de callback que permite detectar el click realizado sobre
   * una ficha del deck.
   * @returns void
   */
  clicked(click, callback) {
    this.cards.forEach(card => {
      card.clicked(click, (flip) => {
        // Si se está haciendo un flip a la ficha, indicar la acción
        // FLIP, sino indicar la acción PLAY.
        const action = flip ? FLIP : PLAY;
        // Si la acción es PLAY quitar el indicador de zoom de la ficha
        if (action === PLAY && this.zoomingCard) {
          this.restoreCardsAfterZoom();
          this.zoomingCard = null;
        }
        callback({ card, action }); 
      });
    });
  }

  /**
   * @description
   * Método encargado de dibujar el deck de fichas
   * @returns void
   */
  draw() {
    // Definir el color del deck
    const squareColor = color(DARK_GREEN_COLOR);
    const alphaValue = this.tag === PLAYED_TAG ? 0 : 100;
    squareColor.setAlpha(alphaValue);
    fill(squareColor); 

    // Calcular el tamaño de los bordes del deck 
    const strokeValue = this.tag === PLAYED_TAG ? 0 : 1;
    strokeWeight(strokeValue);
    stroke(BLACK_COLOR);
    
    rect(this.position.x, this.position.y, this.width, this.height, 5);

    this.cards.forEach(card => {
      card.draw();
    });
  }
  
  /**
   * @description
   * Método encargado de detectar si el mouse se encuentra
   * ubicado sobre una ficha.
   * @param {p5.Vector} mouse
   * Vector que define la posición del mouse.
   * @param {Number} zoom
   * Número que indica el factor de escala que se debe
   * aplicar sobre una ficha para hacerle zoom.
   * @returns void 
   */
  hover(mouse, zoom = 0) {
    this.cards.forEach((card, index) => {
      card.hover(mouse, zoom, isZooming => {
        // Verificar si a la ficha se le esta haciendo zoom
        if (isZooming) {
          // Si no hay un indicador de zoom asignado, asignarlo y reajustar
          // la posición de la ficha a la que se está haciendo zoom para que 
          // se dibuje por encima de las demas fichas del deck
          if (!this.zoomingCard) {
            this.zoomingCard = { zoomCard: card, zoomIndex: index };
            this.cards.splice(index, 1);
            this.cards.push(card);
          }
        }
        else {
          // Por otro lado, si hay un indicador, verificar que la ficha de 
          // dicho indicador sea igual a la ficha actual. Si esto se cumple
          // reajustar la ficha a su posición original en la lista
          if (this.zoomingCard && card === this.zoomingCard.zoomCard) {
            this.restoreCardsAfterZoom();
            this.zoomingCard = null;
          }
        }
      });
    });
  }

  /**
   * @description
   * Método encargado de remover una ficha de la lista de fichas 
   * del deck.
   * @param {GameObjectCard} cardToRemove
   * Ficha que se desea remover de la lista de fichas
   * del deck.
   * @returns void 
   */
  removeCard(cardToRemove) {
    let removeIndex = 0;
    this.cards.forEach((card, index) => {
      if (cardToRemove === card)
        removeIndex = index;
    });

    // Usar la función splice para remover la ficha
    this.cards.splice(removeIndex, 1);
  }

  /**
   * @description
   * Método encargado de restaurar la lista de fichas al orden
   * que tenía originalmente antes del zoom.
   * @returns void
   */
  restoreCardsAfterZoom() {
    const { zoomCard, zoomIndex } = this.zoomingCard;
    this.cards.splice(zoomIndex, 0, zoomCard);
    this.cards.pop();
  }

  /**
   * @description
   * Método para realizar un ordenamiento visual de las fichas
   * del deck.
   * @param {Function} callback
   * Función callback que permite detectar el final del ordenamiento
   * realizado.
   * @returns void
   */
  sortCards(callback) {
    let sortedCards = 0;
    this.cards.forEach((card, index) => {
      // Calcular los nuevos componentes x e y de la posición para
      // cada una de las fichas de la lista de fichas del deck
      const startX = this.position.x + spaceX;
      const x = startX + (index * (card.getWidth() + spaceX));
      const y = card.getPosition().y;
      const newPosition = createVector(x, y);

      // Realizar el movimiento de las fichas
      card.move(newPosition, () => {
        // Cuando la ficha finaliza su movimiento, sumar 1 a número de
        // fichas organizadas
        sortedCards += 1;
        card.setBasePosition(newPosition);
      });
    });

    if (sortedCards === this.cards.length)
      callback();
  }

  /**
   * @description 
   * Método encargado de desordenar las fichas del deck.
   * @param {Number} limit 
   * Número que define el máximo de fichas que se desea desordenar. Si no se 
   * pasa un parámetro o si el valor del parámetro es cero, se desorganizan todas 
   * las fichas del deck. Lo mismo ocurre en el caso en que el valor del parámetro 
   * sea mayor al número de fichas en el deck.
   * @returns void.
   */
  unsortCards(limit = 0) {
    const cardsLen = this.cards.length;
    const unsortLimit = limit > 0 && limit < cardsLen ? limit : cardsLen;

    // Cambiar las posiciones de las fichas en la lista de fichas
    let index = 0;
    while (index < unsortLimit) {
      const firstIndex = Math.floor(Math.random() * cardsLen);
      const secondIndex = Math.floor(Math.random() * cardsLen);
      if (firstIndex !== secondIndex) {
        [this.cards[firstIndex], this.cards[secondIndex]] = [this.cards[secondIndex], this.cards[firstIndex]];
        index ++;
      }
    }

    // Actualizar las posiciones en el canvas
    this.cards.forEach((card, index) => {
      const startX = this.position.x + spaceX;
      const x = startX + (index * (card.getWidth() + spaceX));
      const newPosition = createVector(x, card.getPosition().y);
      card.setPosition(newPosition);
      card.setBasePosition(newPosition);
    });
  }
}