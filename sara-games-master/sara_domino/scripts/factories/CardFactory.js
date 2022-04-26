/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase CardFactory implementa el Patrón de Diseño Factory y el
 * Patrón de diseño Strategy de forma que pueda crear fichas de distintos tipos.
 */

class CardFactory {

  /**
   * @description
   * Constructor de la clase.
   * @returns CardFactory.
   */
  constructor() {

    // Atributos
    this.cardFactoryStrategy;
  }

  // Setters

  /**
   * @description
   * Método setter para asignar una estrategia de fabricación
   * de fichas.
   * @param {*} cardFactoryStrategy 
   * Estrategia usada por CardFactory para crear diferentes
   * tipos de fichas.
   * @returns void.
   */
  setCardFactoryStrategy(cardFactoryStrategy) {
    this.cardFactoryStrategy = cardFactoryStrategy;
  }

  // Otros métodos de la clase

  /**
   * @description
   * Método encargado de crear fichas siguiendo la estrategia
   * definida por cardFactoryStrategy.
   * @param {Object} data
   * Objeto que contiene información para construir la ficha,
   * como index y tag.
   * @param {Boolean} forDeck
   * Boolano que indica si la ficha será creada en un deck.
   * @returns GameObjectCard.
   */
  createCard(data, forDeck = false) {
    // Calcular longitud y altura de la ficha.
    const { width, height } = this.cardFactoryStrategy.generateCardSize(data);

    // Calcular componentes de la posición.
    let x, y;
    if (forDeck) {
      const { deckX, deckY, index } = data;
      const startX = deckX + spaceX; 
      x = Math.floor(startX + (index * (width + spaceX)));
      y = deckY + spaceY;
    }
    else {
      x = data.x;
      y = data.y;
    }

    // Construir la ficha
    const { tag } = data;
    const hidden = tag === FOE_TAG || tag === RANDOM_TAG;
    const card = new GameObjectCard(x, y, width, height, tag, hidden);

    // Construir la estructura interna de la ficha
    const structure = this.cardFactoryStrategy.buildCardStructure(data);

    // Estrategias para la ficha
    const cardStrategy = this.cardFactoryStrategy.getCardStrategy();
    const movementStrategy = this.cardFactoryStrategy.getMovementStrategy();

    // Asignar las estrategias a la ficha
    card.setCardStrategy(new cardStrategy(structure));
    card.setMovementStrategy(new movementStrategy());

    return card;
  }

  /**
   * @description
   * Método encargado de crear un GameObjectDeck compuesto de 
   * un array de fichas.
   * @param {Object} data 
   * Objeto que contiene información para construir la ficha,
   * como index y tag.
   * @param {Number} numberOfCards 
   * Número de fichas que va a contener el deck.
   * @returns GameObjecDeck compuesto de un array GameObjectCard[].
   */
  createCardDeck(data, numberOfCards) {
    // Calcular la longitud y la altura de cada ficha
    const { width, height } = this.cardFactoryStrategy.generateCardSize(data);

    // Calcular la mitad de la pantalla
    const halfWidth = Math.floor(windowWidth / 2);
    
    // Calcular la longitud y la altura del deck
    const deckWidth = Math.floor((width * numberOfCards) + (spaceX * (numberOfCards + 1)));
    const deckHeight = Math.floor(height + (spaceY * 2));

    // Calcular los componentes de la posición del deck
    const { tag } = data;
    const deckX = this.cardFactoryStrategy.generateDeckXPosition({ deckWidth, halfWidth, tag, width });
    const deckY = this.cardFactoryStrategy.generateDeckYPosition({ deckHeight, tag });


    // Construir la lista de fichas
    data = { ...data, deckX, deckY };

    let cards = [];
    const cardsToDraw = tag === PLAYED_TAG ? 1 : numberOfCards;
    for (let i = 0; i < cardsToDraw; i++) {
      // Agregar el índice para el cálculo de la posición.
      data = { ...data, index: i }; 
      const card = this.createCard(data, true);
      cards.push(card);
    }

    // Construir el deck
    return new GameObjectDeck(deckX, deckY, deckWidth, deckHeight, cards, tag);
  }
}