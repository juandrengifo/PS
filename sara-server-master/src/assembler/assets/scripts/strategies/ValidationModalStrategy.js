/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description 
 * La clase ValidationModalStrategy representa la estrategia que define
 * la estructura y el comportamiento de un modal de validación para el
 * área de visualización de un GameObjectModal.
 */

class ValidationModalStrategy {
  
  /**
   * @description 
   * Constructor de la clase.
   * @param {Object} area
   * Objeto que contiene la información del area de visualización
   * de la ventana modal.
   * @param {Array} answer
   * Array con los elementos de la respuesta que se
   * desea validar.
   * @param {String} title
   * String cuyo valor es el título que se desea colocar
   * en el área de visualización del modal.
   * @param {Object} options
   * Objeto que contiene información adicional para el modal 
   * de validación.
   * @returns ValidationModalStrategy
   */
  constructor(area, answer, title, options) {

    // Atributos
    this.area = area;
    this.answer = answer;
    this.title = title;
    this.options = options;
    this.textSize = getTextSize();
    this.areaMiddle = Math.floor(this.area.width / 2);

    // Sprite de fondo
    this.background = new Sprite(VALIDATION_BACKGROUND, VALIDATION_MODAL);

    // Construir la lista de GameObjectChecks a partir de los
    // elementos de la respuesta
    this.checks = this.buildChecks(this.answer);

    // Construir el botón de continuar    
    const buttonW = (this.area.width * 0.3) + (spaceX * 2);
    const buttonH = Math.floor(this.textSize + (spaceY * 2));
    const buttonX = this.area.position.x + Math.floor(this.areaMiddle - (buttonW / 2));
    const buttonY = this.area.position.y + (this.area.height - Math.floor(buttonH * 2.8));
    this.continueButton = new GameObjectButton(buttonX, buttonY, buttonW, buttonH, CONTINUE_TAG, 'Continuar');
  }

  /**
   * @description
   * Método encargado de construir la lista de GameObjectCheck
   * a partir de los elementos de la respuesta a validar.
   * @param {Array} answer
   * Array que contiene los elementos de la respuesta a
   * validar.
   * @returns Array 
   */
  buildChecks(answer) {
    // Calcular la longitud total de todas las palabras
    let totalW = 0;
    answer.forEach(element => {
      const { path, word } = element;
      textSize(this.textSize * CHECK_TEXT_SIZE);
      const wordWidth = word.includes('\n') ? textWidth(word) / 2 : textWidth(word);
      totalW += Math.floor(wordWidth + (spaceX * 3));

      if (path) totalW += (this.textSize + (spaceX * 4));

      // Asignar al elemento una nueva pareja key:value => checked:false
      // que ayudará a definir los elementos que fueron pronunciados
      // correctamente y los que no.
      element.checked = false;
    });

    // Construir la lista
    const startX = this.area.position.x + Math.floor(this.areaMiddle - (totalW / 2));
    let lastX = startX;
    let checks = [];
    answer.forEach(element => {
      const { path, word } = element;

      // Calcular el tamaño de cada GameObjectCheck
      textSize(this.textSize * CHECK_TEXT_SIZE); 
      const wordWidth = word.includes('\n') ? textWidth(word) / 2 : textWidth(word);
      let checkWidth = Math.floor(wordWidth + (spaceX * 3));

      if (path) checkWidth += (this.textSize + (spaceX * 4));

      // Calcular la altura teniendo en cuenta el tamaño aproximado del botón
      // de check.
      let checkHeight = Math.floor(this.textSize * (CHECK_TEXT_SIZE * 2));
      checkHeight += checkHeight;

      const y = this.area.position.y + Math.floor((this.area.height / 2) - (checkHeight / 2));
      const check = new GameObjectCheck(lastX, y, checkWidth, checkHeight, CHECK_TAG, element);
      checks.push(check);

      lastX += checkWidth;
    });

    return checks;
  }

  /**
   * @description
   * Método que verifica la acción de click en el ValidationModalStrategy 
   * con el objetivo de detectar los elementos clickeados.
   * @param {p5.Vector} click 
   * Vector que define la posición de un evento de click.
   * @param {Function} callback 
   * Función callback que se ejecuta cuando se realiza un click 
   * sobre algún elemento del modal.
   * @return void
   */
  clicked(click, callback) {
    const { multipleChoices } = this.options;
    
    // Detectar click en el botón de continuar
    this.continueButton.clicked(click, () => {
      let data = { kind: VALIDATION_MODAL }; 
      
      // Si es un modal de selección múltiple retornar en el callback si 
      // todos los elementos de la respuesta estuvieron correctos.
      if (multipleChoices) {
        let correct = true;
        this.answer.forEach(element => {
          if (!element.checked) correct = false;
        });

        data.correct = correct;
        this.saveAnswer();
      }
      else {
        let value = null;
        this.answer.forEach(element => {
          const { checked } = element;
          if (checked) value = element.word;
        });        
        
        this.saveAnswer({ how: value });
      }

      // Devolver las selecciones si se requiere
      if (this.options.getChoices) data.choices = this.answer;

      callback(data); 
    });

    // Detectar el click en los GameObjectCheck
    this.checks.forEach((check, index) => {
      // Si no es una validación con múltiples selecciones, borrar todas las 
      // selecciones realizadas con anterioridad
      if (!multipleChoices) {
        const sprite = new Sprite(UNCHECKED_ICON, CHECK_TAG);
        check.getCheckButton().setSprite(sprite);
        let answerElement = this.answer[index];
        answerElement.checked = false;
      }
      
      check.clicked(click, () => {
        let answerElement = this.answer[index];
        answerElement.checked = !answerElement.checked;
      });
    });
  }

  /**
   * @description
   * Método encargado de dibujar los elementos del área de
   * visualización del modal. 
   * @return void
   */
  draw() {
    const { position, width, height } = this.area;
    this.background.draw(position, width, height);

    // Calcular la posición del título
    textSize(this.textSize * 1.1);
    const titleW = textWidth(this.title);
    const titleX = position.x + Math.floor(this.areaMiddle - (titleW / 2));
    const titleY = position.y + Math.floor(this.textSize * 3.7);
    
    // Dibujar el título
    fill(BLACK_COLOR);
    textStyle(BOLD);
    textFont(GAME_FONT);
    noStroke();
    text(this.title, titleX, titleY);

    // Dibujar la lista de GameObjectCheck usando la lista de 
    // elementos de la respuesta
    this.checks.forEach(check => {
      check.draw();
    });

    // Dibujar el botón de continuar
    this.continueButton.draw();
  }

  /**
   * @description 
   * Método encargado de guardar los diferentes tipos de respuestas.
   * @param {Object} recordData 
   * Objeto que contiene información para almacenar.
   * @returns void.
   */
  saveAnswer(recordData = null) {
    if (this.options.saveChoices)
      eval(`this.${this.options.saveFunction}(${recordData instanceof Object ? JSON.stringify(recordData) : recordData});`);
  }

  /**
   * @description
   * Método encargado guardar las selecciones para la phrase.
   * @returns void
   */
  savePhrase() {
    this.answer.forEach((element, index) => {
      element = { ...element, id_phrase: phraseId, order_phrase: index };
      apiRequest.savePhrase(element);
    });

    // Aumentar el identificador de la respuesta
    phraseId += 1;
  }

  /**
   * @description 
   * Método encargado de mandar a actualizar el feed de secuencia 
   * (actividades dinámicas).
   * @param {Object} feedData 
   * Objeto que contiene la información a guardar.
   * @returns void.
   */
  updateFeedByLevel(feedData) {
    apiRequest.updateFeedByLevel(feedData);
  }
}