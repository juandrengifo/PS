/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description 
 * La clase SimpleCardStrategy implementa la estructura y el comportamiento
 * de una ficha de tipo simple.
 */

class SimpleCardStrategy {

  /**
   * @description
   * Constructor de la clase.
   * @param {Object} structure 
   * Objeto que contiene la estructura interna de la ficha.
   * @returns SimpleCardStrategy. 
   */
  constructor(structure) {

    // Atributos
    this.correct = null;
    this.enabled = false;

    this.structure = structure;
    this.textSize = getTextSize();
  }

  // Getters

  /**
   * @description
   * Método encargado de retornar la estructura interna de la
   * ficha de tipo simple.
   * @returns Object.
   */
  getStructure() {
    return this.structure;
  }

  // Setters

  /**
   * @description 
   * Método encargado de asignar un valor al atributo correct.
   * @param {Boolean} correct 
   * Valor a ser asignado en el atributo correct.
   * @returns void.
   */
  setCorrect(correct) {
    this.correct = correct;
  }

  /**
   * @description 
   * Método encargado de asignar un valor al atributo enabled.
   * @param {Boolean} enabled 
   * Booleano que representan el valor a asignar en el atributo enabled.
   * @returns void.
   */
  setEnabled(enabled) {
    this.enabled = enabled;
  }

  /**
   * @description 
   * Método encargado de asignar la estructura de la ficha.
   * @param {Object} structure 
   * Objeto que representa la nueva estructura a asignar.
   * @returns void.
   */
  setStructure(structure) {
    this.structure = structure;
  }

  // Otros métodos

  /**
   * @description
   * Método encargado de definir la lógica click en la ficha
   * de tipo simple.
   * @param {GameObjectCard} card 
   * GameObjectCard al que se le verificará la acción de click.
   * @param {p5.Vector} click 
   * Vector que define la posición de la acción del click.
   * @param {Function} callback 
   * Función de callback que permite detectar el click realizado
   * sobre la ficha de tipo simple.
   * @returns void.
   */
  clicked(card, click, callback) {
    if (checkBoundaries(card, click, false)) {
      const tag = card.getTag();
      if (tag !== PICTOGRAM_ACTION_TAG || (tag === PICTOGRAM_ACTION_TAG && this.enabled))
        callback(false);
    }
  }

  /**
   * @description
   * Método encargado de dibujar la ficha de tipo simple.
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
    const tag = card.getTag();

    let borderRadius = 0;
    // Dibujar la ficha completa
    if (tag === PICTOGRAM_TAG || tag === PICTOGRAM_ACTION_TAG) {
      fill(WHITE_COLOR);
      borderRadius = 5;
    }
    else {
      // Asignar el alfa dependiendo del tag
      const alphaValue = tag === ITEM_TAG ? 0 : 100;
      const boxColor = color(DARK_GREEN_COLOR);
      boxColor.setAlpha(alphaValue);
      fill(boxColor);
    }

    const strokeWeightValue = card.getHidden() || tag === ITEM_TAG ? 0 : 2;
    // Color del stroke
    let strokeColor = this.correct === null ? BLACK_COLOR : this.correct === true ? GREEN_COLOR : RED_COLOR;
    stroke(strokeColor);
    strokeWeight(strokeWeightValue);
    rect(x, y, width, height, borderRadius);

    if (!card.getHidden()) {
      const { sprite } = this.structure; 
      if (sprite)
        sprite.draw(createVector(x + 2, y + 2), width - 4, height - 4);
    }
    else {
      const symbol = '?';
      textSize(this.textSize * (height / 55));
      const symbolWidth = Math.floor(textWidth(symbol));
      const symbolHeight = Math.floor(this.textSize);

      // Calcular la posición del símbolo
      const symbolX = Math.floor(x + ((width / 2) - (symbolWidth / 2)));
      const symbolY = Math.floor(y + height - (symbolHeight * 3));

      // Dibujar el símbolo
      fill(WHITE_COLOR);
      textStyle(BOLD);
      textFont(GAME_FONT);
      text(symbol, symbolX, symbolY);
    }
  }
}