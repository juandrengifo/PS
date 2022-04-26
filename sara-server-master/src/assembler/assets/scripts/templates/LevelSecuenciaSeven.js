/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase LevelSecuenciaSeven representa el séptimo nivel del 
 * videojuego Secuencia. Esta clase implementa los métodos abstractos 
 * de la clase padre Level.
 * 
 * El séptimo nivel de Secuencia consiste en organizar la respuesta de la 
 * demanda relacionada a una imagen de la secuencia, elegida de manera 
 * aleatoria.
 * 
 * @subclassof Level.
 */

class LevelSecuenciaSeven extends Level {

  /**
   * @description
   * Constructor de la clase.
   * @param {CardFactory} cardFactory
   * Objeto que representa la fábrica de fichas.
   * @returns LevelSecuenciaSeven. 
   */
  constructor(cardFactory) {
    super(cardFactory);

    // Atributos
    this.allowGestures = true;
    this.badMoves = 0;
    this.textSize = getTextSize() * 1.5;

    this.cardToMove;
    this.collisionCard;
    this.currentCard;
    this.currentDemand;
    this.currentDemandPosition;
    this.foeDeck;
    this.movement;
    this.pairedCards;
    this.playerDeck;
    this.selectedCard;
    this.validationButton;
  }

  // Implementación de métodos abstractos

  /**
   * @override
   * @description 
   * Método donde se dibujan los objetos del nivel.
   * @returns void.
   */
  drawGameObjects() {
    image(this.background, 0, 0, windowWidth, windowHeight);

    // Dibujar la ficha aleatoria
    this.currentCard.draw();

    // Dibujar la demanda
    textSize(this.textSize);
    fill(WHITE_COLOR);
    textStyle(BOLD);
    textFont(GAME_FONT);
    text(this.currentDemand.demand, this.currentDemandPosition.x, this.currentDemandPosition.y); 

    // Dibujar los deck de fichas tipo texto
    this.foeDeck.draw();
    this.playerDeck.draw();

    // Dibujar el botón de validación 
    if (this.validationButton) this.validationButton.draw();
  }

  /**
   * @override
   * @description
   * Método encargado de realizar los diferentes movimientos 
   * de los objetos del nivel.
   * @returns void.
   */
  executeMovements() {
    if (this.selectedCard)
      this.moveCard();
    else if (this.movement) {
      if (this.movement === PUT_BACK) this.putCardsBack();
      else this.putCards();
    }
  }

  /**
   * @override
   * @description 
   * Método donde se administran las acciones de click ejecutadas 
   * por el mouse.
   * @param {Function} callback 
   * Función de retorno que se ejecuta cuando se han realizado acciones 
   * relacionadas al evento click del mouse.
   * @returns void.
   */
  handleMousePressed(callback) {
    if (this.allowGestures) {
      const click = createVector(mouseX, mouseY);

      if (!this.selectedCard) {
        this.playerDeck.clicked(click, card => {
          card.action = DRAG;
          this.selectedCard = card;
        });

        if (this.validationButton)
          this.validationButton.clicked(click, () => {
            if (this.validatePairedCards()) {
              const feed = { hits: 1, mistakes: this.badMoves };
              callback({ feed, feedback: GOOD_ICON, message: '¡Excelente!', next: true, score: 3 });
            }
            else {
              this.badMoves ++;
              if (this.badMoves < 4) {
                // Devolver las fichas
                this.movement = PUT_BACK;
                callback({ feedback: THINK_ICON, message: 'Inténtalo otra vez.', next: false, restart: false });
              }
              else {
                // Terminar el nivel
                this.movement = PUT;
                const feed = { hits: 0, mistakes: this.badMoves };
                callback({ feed, feedback: THINK_ICON, message: 'Mira la respuesta correcta y sigue practicando más.', next: true });
              }
            }            
          });
      }
      else {
        const { card } = this.selectedCard;
        if (this.checkCollisions(card))
          this.selectedCard.action = PLAY;
        else
          this.selectedCard.action = RETURN;
      }
    }
  }

  /**
   * @override
   * @description 
   * Método donde se inicializan los elementos del nivel.
   * @returns void.
   */
  startGameElements() {
    this.background = loadImage(SECUENCE_BACKGROUND_3);

    // Asignar la ficha aleatoria
    this.currentCard = this.createCard();

    // Actualizar el tamaño de la ficha
    const width = this.currentCard.getWidth() * 1.3;
    const height = this.currentCard.getHeight() * 1.3;
    this.currentCard.setWidth(width);
    this.currentCard.setHeight(height);

    // Actualizar la posición de la ficha
    const x = Math.floor((windowWidth / 2) - (width / 2));
    const y = Math.floor((windowHeight / 2) - height - (spaceY * 6));
    this.currentCard.setPosition(createVector(x, y));

    // Asignar la demanda aleatoria
    const { demands } = this.currentCard.getCardStructure();
    const randomIndex = Math.floor(Math.random() * demands.length);
    this.currentDemand = demands[randomIndex];

    // Calcular la posición de la demanda
    textSize(this.textSize);
    const textW = Math.floor(textWidth(this.currentDemand.demand));
    const textX = Math.floor((windowWidth / 2) - (textW / 2));
    const textY = Math.floor((windowHeight / 2) + (this.textSize / 1.1));
    this.currentDemandPosition = createVector(textX, textY);

    // Cambiar la estrategia de la fábrica de fichas
    this.cardFactory.setCardFactoryStrategy(new TextCardFactoryStrategy());

    // Inicializar los deck de fichas tipo texto
    this.foeDeck = this.createCardDeck(FOE_TAG);
    this.playerDeck = this.createCardDeck(PLAYER_TAG); 

    // Volver a la estrategia original
    this.cardFactory.setCardFactoryStrategy(new SimpleCardFactoryStrategy());

    // Construir la estructura que administra las fichas emparejadas
    this.pairedCards = this.buildPairedCards();

    // Desordernar las fichas del jugador
    this.playerDeck.unsortCards();
  }

  /**
   * @override
   * @description 
   * Método que inicia el gameplay del nivel mediante el envío de 
   * las primeras instrucciones del avatar. 
   * @param {Function} callback 
   * Función de retorno que contiene las instrucciones del avatar.
   * @returns void.
   */
  startLevelGamePlay(callback) {
    callback('Ahora responde la pregunta de acuerdo a la imagen y organiza la respuesta.');
    this.allowGestures = false;
    setTimeout(() => { 
      this.allowGestures = true;
      callback(this.currentDemand.demand); 
    }, 8000);
  }

  // Métodos extra

  /**
   * @description 
   * Método encargado de crear o remover el enlace entre una ficha del 
   * jugador y una ficha foe.
   * @param {Boolean} attach 
   * Booleano que indica si se debe remover o no el enlace.
   * @returns void. 
   */
  attachCard(attach) {
    // Remover todas los emparejamientos de la ficha
    const { card } = this.selectedCard ? this.selectedCard : this.cardToMove;
    this.pairedCards.forEach(pairedCard => {
      const { attachCard } = pairedCard;
      if (attachCard === card) pairedCard.attachCard = null;
    });

    if (attach) {
      // Crear un nuevo emparejamiento para la ficha seleccionada
      const { index } = this.collisionCard;
      this.pairedCards[index].attachCard = card;
    }
  }

  /**
   * @description 
   * Método encargado de construir la estructura con la que se administra 
   * las fichas que se emparejan.
   * @returns Array of Objects.
   */
  buildPairedCards() {
    const foeCards = this.foeDeck.getCards();
    let pairedCards = [];
    foeCards.forEach(foeCard => { pairedCards.push({ foeCard, attachCard: null }); });

    return pairedCards;
  }

  /**
   * @description 
   * Método encargado de construir el botón de validación.
   * @returns void.
   */
  buildValidationButton() {
    // Calcular el tamaño del botón
    const width = Math.floor((windowWidth * 0.15) + (spaceX * 2));
    const height = Math.floor(getTextSize() + (spaceY * 2));

    // Calcular la posición.
    const playerDeckYPosition = this.playerDeck.getPosition().y;
    const playerDeckHeight = this.playerDeck.getHeight();
    const x = Math.floor((windowWidth / 2) - (width / 2));
    const y = Math.floor(playerDeckYPosition + playerDeckHeight + (spaceY * 5));
    
    // Inicializar el botón
    this.validationButton = new GameObjectButton(x, y, width, height, VALIDATE_TAG, 'Validar');
  }

  /**
   * @description 
   * Método encargado de detectar las colisiones con las fichas foe.
   * @param {GameObjectCard} card 
   * GameObjectCard con el que se verificará las colisiones.
   * @returns Boolean.
   */
  checkCollisions(card) {
    let collides = false;
    this.pairedCards.forEach((pairedCard, index) => {
      const { foeCard } = pairedCard;

      if (card.collides(foeCard)) {
        const { attachCard } = pairedCard;

        if (attachCard === null || attachCard === card) {
          this.collisionCard = { foeCard, index };
          collides = true;
        }
      }
    });

    return collides;
  }

  /**
   * @description 
   * Método encargado de verificar si todas las fichas del jugador 
   * se encuentran enlazadas con fichas foe.
   * @returns Boolean.
   */
  checkPairedComplete() {
    let complete = true;
    this.pairedCards.forEach(pairedCard => {
      if (pairedCard.attachCard === null) complete = false;
    });

    return complete;
  }

  /**
   * @description 
   * Método encargado de crear un GameObjectCard.
   * @returns GameObjectCard.
   */
  createCard() {
    const { cards } = gameData;
    const randomIndex = Math.floor(Math.random() * cards.length);
    return this.cardFactory.createCard({ cards, tag: PLAYER_TAG, index: randomIndex, x: 0, y: 0 });
  }

  /**
   * @description 
   * Método encargado de crear un GameObjectDeck de fichas tipo texto.
   * @param {String} tag 
   * @returns GameObjectDeck.
   */
  createCardDeck(tag) {
    const cards = this.currentDemand.answers;
    return this.cardFactory.createCardDeck({ cards, tag }, cards.length);
  }

  /**
   * @description 
   * Método encargado de mover una ficha, de manera autónoma, a la posición de 
   * una ficha foe con la que se vaya a emparejar.
   * @param {Function} callback 
   * Función de retorno que se ejecuta cuando el movimiento de la ficha ha 
   * terminado.
   * @returns void.
   */
  moveCard(callback) {
    const { action, card } = this.selectedCard ? this.selectedCard : this.cardToMove;

    let x, y;
    if (action === DRAG) {
      card.setMovementStrategy(new DragMovementStrategy());
      x = mouseX;
      y = mouseY;
    }
    else {
      card.setMovementStrategy(new TwoDimensionMovementStrategy());

      if (action === PLAY) { // La ficha se mueve a la posición de la ficha con la que colisionó
        const { foeCard } = this.collisionCard;
        const collisionCardPosition = foeCard.getPosition();
        x = collisionCardPosition.x;
        y = collisionCardPosition.y;
      }
      else if (action === RETURN) {
        const basePosition = card.getBasePosition();
        x = basePosition.x;
        y = basePosition.y;
      }
    }

    card.move(createVector(x, y), () => {
      // Enlazar o no la ficha que termina su movimiento
      const attach = action === PLAY;
      this.attachCard(attach);

      this.collisionCard = null;
      this.selectedCard = null;
      this.cardToMove = null;

      if (this.movement !== PUT && action === PLAY && this.checkPairedComplete()) {
        if (!this.validationButton) this.buildValidationButton();
      }
      else
        this.validationButton = null;

      if (callback) callback();
    });
  }

  /**
   * @description 
   * Método encargado de colocar las fichas del jugador en la
   * secuencia correcta.
   * @returns void.
   */
  putCards() {
    // Recorrer todas las fichas del jugador
    const playerCards = this.playerDeck.getCards();
    let movedCards = 0;
    playerCards.forEach(playerCard => {
      // Por cada ficha del jugador, evaluar con cada ficha foe
      const foeCards = this.foeDeck.getCards();
      let put = false;
      foeCards.forEach((foeCard, index) => {
        // Verificar los tags de las fichas. Si los tags coinciden, mover la ficha del jugador 
        // y emparejar
        if (playerCard.getCardStructure().tag === foeCard.getCardStructure().tag) {
          // Asignar la ficha de colisión
          this.collisionCard = { foeCard, index };
          put  = true;
        }
      });

      if (put) {
        this.cardToMove = { action: PLAY, card: playerCard };
        this.moveCard(() => { movedCards ++; });
      }
    });

    if (movedCards === playerCards.length) this.movement = null;
  }

  /**
   * @description 
   * Método encargado de devolver las fichas a su posición original.
   * @returns void.
   */
  putCardsBack() {
    const playerCards = this.playerDeck.getCards();
    let movedCards = 0;
    playerCards.forEach(playerCard => {
      let putBack = false;
      if (this.badMoves < 3) // Devolver cada una de las fichas del jugador
        putBack = true;
      else {
        this.pairedCards.forEach(pairedCard => {
          const { attachCard } = pairedCard;
          // Verificar que la ficha del jugador y la ficha emparejada sean la misma
          if (playerCard === attachCard) {
            const { foeCard } = pairedCard;
            // Validar la ficha emparejada con la ficha foe
            if (playerCard.getCardStructure().tag !== foeCard.getCardStructure().tag)
              putBack = true;
          }
        });
      }

      if (putBack) {
        this.cardToMove = { action: RETURN, card: playerCard };
        this.moveCard(() => { movedCards ++; });
      }
      else
        movedCards ++;
    });

    if (movedCards === playerCards.length) this.movement = null;
  }

  /**
   * @description
   * Método encargadode validar los emparejamientos.
   * @returns void.
   */
  validatePairedCards() {
    let correctPairings = true;
    this.pairedCards.forEach(pairedCard => {
      const { foeCard, attachCard } = pairedCard;
      if (foeCard.getCardStructure().tag !== attachCard.getCardStructure().tag)
        correctPairings = false;
    });

    return correctPairings;
  }
}