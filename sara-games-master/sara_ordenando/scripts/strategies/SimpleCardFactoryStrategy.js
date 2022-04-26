/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase SimpleCardFactoryStrategy define la estrategia para
 * crear una ficha simple.
 */

class SimpleCardFactoryStrategy {

  /**
   * @description
   * Constructor de la clase.
   * @returns SimpleCardFactoryStrategy.
   */
  constructor() {}

  // Getters

  /**
   * @description
   * Método que retorna la estrategia general de la ficha
   * de tipo simple.
   * @returns Class.
   */
  getCardStrategy() {
    return SimpleCardStrategy;
  }

  /**
   * @description 
   * Método que retorna la estrategia de movimiento base de 
   * una ficha de tipo simple.
   * @returns Class.
   */
  getMovementStrategy() {
    return TwoDimensionMovementStrategy;
  }

  // Otros métodos

  /**
   * @description
   * Método encargado de crear la estructura interna de una ficha
   * de tipo simple.
   * @param {Object} data 
   * Objeto que contiene información relevante para construir la 
   * estructura de la ficha de tipo simple.
   * @returns Object.
   */
  buildCardStructure(data) {
    const { cards, index } = data;
    const generalTag = data.tag;

    // Obtener información de la ficha
    const cardData = { ...cards[index] };

    // Cargar el sprite
    const { path, tag } = cardData;
    const spriteURL = generalTag === PICTOGRAM_ACTION_TAG ? path : `${FILE_SERVER_URL}${path}`;
    const sprite = spriteURL ? new Sprite(spriteURL, tag) : null;
    delete cardData.path;
    return { ...cardData, sprite };
  }

  /**
   * @description
   * Método para generar el tamaño (compuesto por longitud y altura) de
   * una ficha de tipo simple.
   * @returns Object.
   */
  generateCardSize(data) {
    const { tag } = data;
    const widthScale = tag === PICTOGRAM_TAG || tag === ITEM_TAG ? 0.06 : 
                       tag === PICTOGRAM_ACTION_TAG ? 0.07 : 0.108;

    const heightScale = tag === PICTOGRAM_TAG || tag === ITEM_TAG ? 1 : 
                        tag === PICTOGRAM_ACTION_TAG ? 0.85 : 1.45;

    const width = Math.floor(windowWidth * widthScale);
    const height = Math.floor(width * heightScale);
    return { width, height };
  }
  
  /**
   * @description
   * Método encargado de calcular el componente en x de un deck de fichas
   * de tipo simple.
   * @param {Object} data 
   * Objeto que contiene información relevante para el cálculo del componente en x 
   * de la posición de un deck de fichas de tipo simple.
   * @returns Number.
   */
  generateDeckXPosition(data) {
    const { deckWidth, halfWidth } = data;
    const deckX = Math.floor(halfWidth - (deckWidth / 2));
    return deckX;
  }

  /**
   * @description
   * Método encargado de calcular el componente en y de un deck de fichas
   * de tipo simple.
   * @param {Object} data 
   * Objeto que contiene información relevante para el cálculo del componente en y 
   * de la posición de un deck de fichas de tipo simple.
   * @returns Number.
   */
  generateDeckYPosition(data) {
    const { deckHeight, tag } = data;
    const middleHeight = Math.floor(windowHeight / 2);

    const deckY = tag === PLAYER_TAG ? middleHeight - (spaceY * 4) : 
                  tag === PICTOGRAM_TAG ? middleHeight + (spaceY * 2) : 
                  tag === PICTOGRAM_ACTION_TAG ? spaceY * 4 :
                  middleHeight - deckHeight - (spaceY * 8);
    return deckY;
  }
}