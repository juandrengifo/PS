/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description 
 * La clase TextCardFactoryStrategy define la estrategia para crear 
 * una ficha de tipo texto.
 */

class TextCardFactoryStrategy {
  
  /**
   * @description 
   * Constructor de la clase.
   * @returns TextCardFactoryStrategy.
   */
  constructor() {
    
    // Atributos 
    this.textSize = getTextSize();
  }

  // Getters

  /**
   * @description 
   * Método que retorna la estrategia general de la ficha 
   * de tipo texto.
   * @returns Class.
   */
  getCardStrategy() {
    return TextCardStrategy;
  }

  /**
   * @description 
   * Método que retorna la estrategia del movimiento base de 
   * una ficha de tipo texto.
   * @returns Class.
   */
  getMovementStrategy() {
    return DragMovementStrategy;
  }

  // Otros métodos

  /**
   * @description 
   * Método encargado de crear la estructura interna de una ficha 
   * de tipo texto.
   * @param {Object} data 
   * Objeto que contiene información relevante para construir la 
   * estructura de la ficha de tipo texto.
   * @returns Object
   */
  buildCardStructure(data) {
    const { cards, index } = data;
    return  { ...cards[index] };
  }

  /**
   * @description 
   * Método para generar el tamaño (compuesto por longitud y altura) de la 
   * ficha de tipo texto.
   * @param {Object} data 
   * Objeto que contiene información relevante para generar el tamaño de 
   * la ficha de tipo texto.
   * @returns Object.
   */
  generateCardSize(data) {
    const { cards, index } = data;
    const cardData = { ...cards[index] };

    // Calcular el tamaño.
    textSize(this.textSize);
    const width = Math.floor(windowWidth * 0.1);
    const height = Math.floor(this.textSize + (spaceY * 2));
    
    return { width, height };
  }

  /**
   * @description 
   * Método encargado de calcular el componente en x de un deck de fichas 
   * de tipo texto.
   * @param {Object} data 
   * Objeto que contiene información relevante para el cálculo del componente en x 
   * de un deck de fichas de tipo texto.
   * @returns Number.
   */
  generateDeckXPosition(data) {
    const { deckWidth, halfWidth } = data;
    return Math.floor(halfWidth - (deckWidth / 2));
  }

  /**
   * @description 
   * Método encargado de calcular el componente en y de un deck de fichas 
   * de tipo texto.
   * @param {Object} data 
   * Objeto que contiene información relevante para el cálculo del componente en y 
   * de un deck de fichas de tipo texto.
   * @returns Number.
   */
  generateDeckYPosition(data) {
    const { tag } = data;
    const halfHeight = Math.floor(windowHeight / 2);
    const offsetY = tag === FOE_TAG ? 10 : 22;

    return Math.floor(halfHeight + (spaceY * offsetY));
  }
}