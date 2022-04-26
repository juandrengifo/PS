/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase DominoCardFactoryStrategy define la estrategia para crear
 * fichas de tipo dominó.
 */

class DominoCardFactoryStrategy {

  /**
   * @description
   * Constructor de la clase.
   * @returns DominoCardFactoryStrategy.
   */
  constructor() {}

  // Getters

  /**
   * @description
   * Métdodo que retorna la estrategia general de la 
   * ficha de tipo dominó.
   * @returns Class
   */
  getCardStrategy() {
    return DominoCardStrategy;
  }

  /**
   * @description
   * Método que retorna la estrategia de movimiento de
   * la ficha de tipo dominó.
   * @returns Class
   */
  getMovementStrategy() {
    return TwoDimensionMovementStrategy;
  }
  
  // Otros métodos

  /**
   * @description
   * Método encargado de crear la estructura interna de una ficha
   * de tipo dominó.
   * @param {Object} data
   * Objeto que contiene información relevante para construir la
   * estructura de la ficha de tipo dominó.
   * @returns Array de Objects.
   */
  buildCardStructure(data) { 
    const { cards } = gameData;

    const leftSide = this.buildSide(cards, data, LEFT);
    const rightSide = this.buildSide(cards, data, RIGHT);

    let structure = [ leftSide, rightSide ];

    // Elegir aleatoriamente si cambiar los lados de la ficha o no,
    // esto para dar una sensación de mas variedad
    const flip = [ true, false ];
    const randomIndex = Math.floor(Math.random() * flip.length);
    const flipValue = flip[randomIndex];

    if (flipValue)
      structure = [ rightSide, leftSide ];

    return structure;
  }

  /**
   * @description
   * Método encargado de crear la estructura de un lado de la ficha
   * de tipo dominó.
   * @param {Array} cards
   * Array que contiene información con las que se construirán las 
   * fichas de tipo dominó.
   * @param {Object} data
   * Objeto que contiene información adicional que puede ser relevante
   * para la construcción de las fichas de tipo dominó.
   * @param {String} side 
   * String con el que se identifica el lado de la ficha tipo dominó
   * que se desea construir.
   * @returns Object
   */
  buildSide(cards, data, side) {
    const { ensuranceCard, index, lookForLeft } = data;

    let cardsForStructure = cards;    
    // Verificar si se necesita asegurar una jugada
    if (ensuranceCard && index === 0)
      // Si la jugada necesita asegurarse, entonces se debe asegurar
      // un solo lado de la ficha, en este caso elegimos el lado izquierdo
      if (side === LEFT) {
        // Obtener el tag del lado derecho de la ficha utilizada para
        // asegurar la jugada
        const ensuranceIndex = lookForLeft ? 0 : 1; 
        const ensuranceTag = ensuranceCard.getCardStructure().structure[ensuranceIndex].tag;

        // Actualizar la lista de fichas con información relacionada al
        // tag que asegura jugadas
        cardsForStructure = [];
        cards.forEach(card => {
          if (card.tag === ensuranceTag) cardsForStructure.push(card);
        });
      }
    
    // Obtener la información por medio de un index aleatorio
    const randomIndex = Math.floor(Math.random() * cardsForStructure.length);
    const cardData = { ...cardsForStructure[randomIndex] };

    // Armar el sprite
    const { path, tag } = cardData;
    const sprite = new Sprite(`${FILE_SERVER_URL}${path}`, tag);

    // Retornar el objeto side
    delete cardData.path;
    return { ...cardData, sprite };
  }

  /**
   * @description
   * Método encargado de calcular el componente en x de la posición
   * de un deck de fichas de tipo dominó.
   * @param {Object} data 
   * Objeto que contiene la información relevante para el cálculo 
   * del componente en x de la posición de un deck de fichas
   * de tipo dominó.
   * @returns Number
   */
  generateDeckXPosition(data) {
    const { deckWidth, halfWidth, tag, width } = data;
    const commonX = Math.floor(halfWidth - (deckWidth / 2));
    const deckX = tag === PLAYED_TAG ? Math.floor(commonX - (width / 2)) : 
                  tag === RANDOM_TAG ? Math.floor(windowWidth - deckWidth) - spaceX :
                  commonX;

    return deckX;
  }

  /**
   * @description
   * Método encargado de calcular el componente en y de la posición
   * de un deck de fichas de tipo dominó.
   * @param {Object} data
   * Objeto que contiene información relevante para el cálculo
   * del componente en y de la posición de un deck de fichas
   * de tipo dominó.
   * @returns Number
   */
  generateDeckYPosition(data) {
    const { deckHeight, tag } = data;
    const deckY = tag === FOE_TAG ? spaceY : 
                  tag === PLAYED_TAG ? Math.floor((windowHeight / 2) - (deckHeight / 2)) :
                  tag === RANDOM_TAG ? Math.floor((windowHeight / 2) - (deckHeight / 2)) - spaceY :
                  (windowHeight - deckHeight) - spaceY;

    return deckY;
  }

  /**
   * @description 
   * Método para generar el tamaño (compuesto por longitud y
   * altura) de una ficha de tipo dominó.
   * @returns Object
   */
  generateCardSize() {
    const width = Math.floor((windowWidth * 0.14) + 1);
    const height = Math.floor(width / 2);

    return { width, height };
  }
}