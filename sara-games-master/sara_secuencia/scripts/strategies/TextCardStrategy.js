/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase TextCardStrategy implementa la estructura y el comportamiento 
 * de una ficha de tipo texto.
 */

class TextCardStrategy {

  /**
   * @description 
   * Constructor de la clase.
   * @param {Object} structure 
   * Objeto que contiene la estructura interna de la ficha.
   * @returns TextCardStrategy.
   */
  constructor(structure) {

    // Atributos 
    this.structure = structure;
    this.textSize = getTextSize();
  }

  // Getters

  /**
   * @description 
   * Método encargado de retornar la estructura interna de la ficha
   * de tipo texto.
   * @returns Object.
   */
  getStructure() {
    return this.structure;
  }

  // Otros métodos 

  /**
   * @description 
   * Método encargado de definir la lógica click en la ficha 
   * de tipo texto.
   * @param {GameObjectCard} card 
   * GameObjectCard al que se le verificará la acción de click.
   * @param {p5.Vector} click 
   * Vector que define la posición de la acción de click.
   * @param {Function} callback 
   * Función de retorno que permite detectar el evento de click realizado 
   * sobre la ficha de tipo texto.
   * @returns void.
   */
  clicked(card, click, callback) {
    if (checkBoundaries(card, click, false))
      callback(false);
  }

  /**
   * @description 
   * Método encargado de dibujar la ficha de tipo texto usando su 
   * estructura interna.
   * @param {GameObjectCard} card 
   * GameObjectCard a dibujar.
   * @returns void.
   */
  draw(card) {
    // Obtener el tamaño de la ficha
    const width = card.getWidth();
    const height = card.getHeight();

    // Obtener la posición de la ficha
    const cardPosition = card.getPosition();

    if (card.getHidden()) {
      stroke(WHITE_COLOR);
      const y = cardPosition.y + (height - 1);
      line(cardPosition.x, y, cardPosition.x + width, y);
    }
    else {
      // Dibujar los contornos de la ficha
      const wordKind = this.structure.kind;
      const colorString = gameData.reader.value ? DARK_GREEN_COLOR : getWordKindColor(wordKind);
      const squareColor = color(colorString);
      squareColor.setAlpha(200);
      fill(squareColor);
      stroke(BLACK_COLOR);
      rect(cardPosition.x, cardPosition.y, width, height, 5);

      // Calcular la posición del texto
      const word = this.structure.word;
      textSize(this.textSize);
      const textW = textWidth(word);

      const textX = cardPosition.x + Math.floor((width / 2) - (textW / 2));
      const textY = cardPosition.y + Math.floor((height / 2) + (this.textSize / 3));

      // Dibujar la palabra asociada a la ficha por medio de la estructura interna
      fill(WHITE_COLOR);
      textStyle(BOLD);
      textFont(GAME_FONT);
      noStroke();
      text(this.structure.word, textX, textY);
    }
  }
}

