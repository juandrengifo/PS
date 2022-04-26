/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase LevelSecuenciaFive representa el quinto nivel del 
 * videojuego Secuencia. Esta clase implementa los métodos abstractos 
 * de la clase padre Level.
 * 
 * El quinto nivel de Secuencia consiste en responder de manera oral las preguntas 
 * relacionadas a cada imagen de la secuencia. Cada respuesta se guarda como buena 
 * o mala.
 * 
 * @subclassof Level.
 */

class LevelSecuenciaFive extends Level {

  /**
   * @description
   * Constructor de la clase.
   * @param {CardFactory} cardFactory 
   * Objeto que representa la fábrica de fichas.
   * @returns LevelSecuenciaFive.
   */
  constructor(cardFactory) {
    super(cardFactory);

    // Atributos
    this.bads = 0;
    this.goods = 0;

    this.currentCardIndex = 0;
    this.currentDemandIndex = 0;
    this.textSize = getTextSize() * 1.5;

    this.allowGestures;
    this.currentCard;
    this.currentDemand;
    this.currentDemandPosition;

    this.errorButton;
    this.successButton;
  }

  // Implementación de métodos abstractos

  /**
   * @description 
   * Método donde se dibujan los objetos del nivel.
   * @returns void.
   */
  drawGameObjects() {
    image(this.background, 0, 0, windowWidth, windowHeight);

    // Dibujar la ficha actual
    this.currentCard.draw();

    // Dibujar la demanda
    textSize(this.textSize);
    fill(WHITE_COLOR);
    textStyle(BOLD);
    textFont(GAME_FONT);
    text(this.currentDemand, this.currentDemandPosition.x, this.currentDemandPosition.y);

    // Dibujar los botones
    this.errorButton.draw();
    this.successButton.draw();
  }

  /**
   * @description
   * Método dónde se administran las acciones de click ejecutadas 
   * por el mouse.
   * @param {Function} callback 
   * Función de retorno que se ejecuta cuando se han realizado acciones 
   * relacionadas con el evento click del mouse.
   * @returns void.
   */
  handleMousePressed(callback) {
    if (this.allowGestures) {
      const click = createVector(mouseX, mouseY);

      this.errorButton.clicked(click, () => { this.validateChoice(false, callback); });

      this.successButton.clicked(click, () => { this.validateChoice(true, callback); });
    }
  }

  /**
   * @description 
   * Método donde se inicializan los elementos del nivel.
   * @returns void.
   */
  startGameElements() {
    this.background = loadImage(SECUENCE_BACKGROUND_1);

    // Crear la ficha que se quiere dibujar
    this.currentCard = this.createCard();

    // Actualizar el tamaño de la ficha
    const width = this.currentCard.getWidth() * 1.5;
    const height = this.currentCard.getHeight() * 1.5;
    this.currentCard.setWidth(width);
    this.currentCard.setHeight(height);

    // Actualizar la posición de la ficha
    const x = Math.floor((windowWidth / 2) - (width / 2));
    const y = Math.floor((windowHeight / 2) - (height / 1.25));
    this.currentCard.setPosition(createVector(x, y));

    // Asignar la demanda actual
    const demands = this.currentCard.getCardStructure().demands;
    this.currentDemand = demands[this.currentDemandIndex].demand;

    // Calcular la posición de la demanda
    textSize(this.textSize);
    const textW = Math.floor(textWidth(this.currentDemand));
    const textX = Math.floor((windowWidth / 2) - (textW / 2));
    const textY = Math.floor((this.currentCard.getPosition().y + this.currentCard.getHeight()) + (spaceY * 12));
    this.currentDemandPosition = createVector(textX, textY);

    // Inicializar los botones
    this.errorButton = this.createButton(ERROR_TAG);
    this.successButton = this.createButton(SUCCESS_TAG);
  }

  /**
   * @description 
   * Método que inicia el gameplay del nivel mediante el envío de 
   * las primeras instrucciones del avatar.
   * @param {Function} callback 
   * Función de retorno que contiene las instrucciones del avatar.
   * @returns void.
   */
  startLevelGamePlay(callback) {
    this.allowGestures = false;
    if (this.currentCardIndex === 0 && this.currentDemandIndex === 0) { // El nivel apenas inicia
      callback('Ahora observa la imagen y responde las preguntas que te voy a hacer.');
      setTimeout(() => { this.sendDemand(callback); }, 8000);
    }
    else
      setTimeout(() => { this.sendDemand(callback); }, 2000);
  }

  // Otros métodos

  /**
   * @description
   * Método encargado de crear los botones que permiten registrar si la respuesta 
   * a la demanda fue dicha de manera correcta o no.
   * @param {String} tag 
   * String que actúa como identificador del botón.
   * @returns GameObjectButton.
   */
  createButton(tag) {
    const width = Math.floor((windowWidth * 0.12) + (spaceX * 2));
    const height = Math.floor(this.textSize + (spaceY * 2));
    
    const middle = Math.floor(windowWidth / 2);
    const x = tag === SUCCESS_TAG ? Math.floor(middle - width - spaceX) : Math.floor(middle + spaceX);
    const y = Math.floor(this.currentCard.getPosition().y + this.currentCard.getHeight() + (spaceY * 20));
    const title = tag === SUCCESS_TAG ? 'Si' : 'No';
    return new GameObjectButton(x, y, width, height, tag, title);
  }

  /**
   * @description 
   * Método encargado de construir la ficha actual.
   * @returns GameObjectCard.
   */
  createCard() {
    const { cards } = gameData;
    return this.cardFactory.createCard({ cards, tag: PLAYER_TAG, index: this.currentCardIndex, x: 0, y: 0 });
  }

  /**
   * @description 
   * Método encargado de enviar mediante una función de retorno la demanda actual
   * para que sea dicha por el avatar.
   * @param {Function} callback 
   * Función de retorno que contiene la demanda.
   * @returns void.
   */
  sendDemand(callback) {
    this.allowGestures = true;
    callback(this.currentDemand);
  }

  /**
   * @description 
   * Método encargado de realizar la verificación de la opción seleccionada 
   * por medio de los botones.
   * @param {Boolean} success 
   * Booleano que indica si la respuesta fue exitosa o no.
   * @param {Function} callback 
   * Función de retorno que se ejecuta una vez se ha realizado la verificación.
   * @returns void.
   */
  validateChoice(success, callback) {
    let checkLevel = false;
    let feedback;
    let message;
    let score = 0;

    // Verificación de la selección inicial de los botones
    if (success) {
      feedback = GOOD_ICON;
      message = '¡Muy bien!';
      checkLevel = true;
      score = 3;
      this.goods += 1;
    }
    else {
      feedback = THINK_ICON;
      message = '¡Vamos tú puedes! Sigue practicando más.';
      this.bads += 1;
      if (this.bads === 2) checkLevel = true;
    }

    // Verificación del nivel
    let next = false;
    let restart = false;
    let feed = null;
    if (checkLevel) {     
      const { cards } = gameData;
      const { demands } = this.currentCard.getCardStructure();

      const demand = demands[this.currentDemandIndex].demand;
      feed = { hits: this.goods, mistakes: this.bads, question: demand };

      // Si el índice actual de la demanda es menor al total de las demandas entonces incrementarlo.
      // De lo contrario verificar si el índice actual de la ficha es menor al total de las fichas.
      // Si lo es, incrementarlo. Si estas dos condiciones no se cumplen quiere decir que el nivel terminó
      if (this.currentDemandIndex < demands.length - 1) {
        this.currentDemandIndex += 1;
        restart = true;
      }
      else if (this.currentCardIndex < cards.length - 1) {
        this.currentCardIndex += 1;
        this.currentDemandIndex = 0;
        restart = true;
      }
      else {
        message = this.bads === 2 ? message : '¡Excelente!';
        next = true;
        restart = false;
      }

      this.bads = 0;
      this.goods = 0; 
    }

    let callbackData = { feedback, message, next, restart };
    if (score > 0) callbackData = { ...callbackData, score };
    if (feed) callbackData = { ...callbackData, feed };
    callback(callbackData);
  }
}