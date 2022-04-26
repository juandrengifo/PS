/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase LevelSecuenciaTwo representa el segundo nivel del 
 * videojuego Secuencia. Esta clase implementa los métodos abstractos 
 * de la clase padre Level.
 * 
 * El segundo nivel de Secuencia consiste en encontrar las fichas que no 
 * concuerdan con el orden cronológico de la secuencia de imágenes.
 * 
 * @subclassof Level.
 */

class LevelSecuenciaTwo extends Level {
  
  /**
   * @description 
   * Constructor de la clase.
   * @param {CardFactory} cardFactory 
   * Objeto que representa la fábrica de fichas.
   * @returns LevelSecuenciaTwo.
   */
  constructor(cardFactory) {
    super(cardFactory);

    // Atributos
    this.attempts = 0;
    this.badMoves = 0;

    this.allowGestures;
    this.cardToMove;
    this.collisionCard;
    this.foeDeck;
    this.movement;
    this.pairedCards;
    this.playerDeck;
    this.selectedCard;
    this.sortSecuence;
    this.validateButton;
  }

  // Implementación de métodos abstractos
  
  /**
   * @override
   * @description 
   * Método donde se dibujan los elementos del nivel.
   * @returns void
   */
  drawGameObjects() {
    image(this.background, 0, 0, windowWidth, windowHeight);

    // Dibujar los decks de fichas simples
    this.foeDeck.draw();
    this.playerDeck.draw();

    // Dibujar el botón de validar
    if (this.validateButton) 
      this.validateButton.draw();
  }

  /**
   * @override
   * @description 
   * Método encargado de realizar los diferentes movimientos de 
   * los objetos del nivel.
   * @returns void.
   */
  executeMovements() {
    if (this.selectedCard) 
      this.moveCard();
    else if (this.movement) {
      if (this.movement === PUT_BACK) this.putCardsBack();
      else this.putCards(this.sortSecuence);  
    }
  }

  /**
   * @override
   * @description
   * Método dónde se administran las acciones de click ejecutadas 
   * por el mouse.
   * @param {Function} callback 
   * Función de retorno que se ejecuta cuando se han realizado acciones 
   * relacionadas con el evento de click.
   * @returns void.
   */
  handleMousePressed(callback) {
    const click = createVector(mouseX, mouseY);

    if (this.allowGestures && !this.cardToMove) {
      if (!this.selectedCard) {
        this.playerDeck.clicked(click, card => {
          card.action = DRAG;
          this.selectedCard = card;
        });

        if (this.validateButton) 
          this.validateButton.clicked(click, () => {
            if (this.validatePairedCards()) {
              this.attempts += 1;
              if (this.attempts === 5) { // Enviar notificación para pasar al siguiente nivel
                const feed = { hits: this.attempts, mistakes: this.badMoves };
                callback({ feed, feedback: GOOD_ICON, message: '¡Muy bien!', next: true, score: 3 });
              }
              else // Enviar notificación para reiniciar el nivel
                callback({ feedback: GOOD_ICON, message: '¡Muy bien!', next: false, restart: true, score: 3 });
            }
            else {
              this.badMoves += 1;
              if (this.badMoves < 3)
                callback({ feedback: THINK_ICON, message: 'Observa bien la secuencia.', next: false });
              else if (this.badMoves === 3) { // Mostrar el ejemplo de la máquina
                callback({ message: 'Observa con atención el ejemplo que te daré.', next: false });
                this.movement = PUT_BACK;
                this.allowGestures = false;
                setTimeout(() => {
                  callback({ message: null, next: false, restart: true });
                }, this.timeout * 4);
              }
              else {
                const feed = { hits: this.attempts, mistakes: this.badMoves };
                callback({ feed, message: 'Mira la respuesta correcta y sigue practicando más.', next: true });
                this.movement = PUT;
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
   * Método donde se inicializan las variables del nivel.
   * @returns void.
   */
  startGameElements() {
    this.background = loadImage(SECUENCE_BACKGROUND_2);
    this.timeout = 1500;
    this.validateButton = null;

    // Inicializar los deck de fichas simples
    this.foeDeck = this.createCardDeck(FOE_TAG);
    this.playerDeck = this.createCardDeck(PLAYER_TAG);

    // Inicializar la estructura de fichas emparejadas
    this.pairedCards = this.buildPairedCards();

    // Intercambiar de posición dos fichas del deck del jugador
    this.playerDeck.unsortCards(1);
  }

  /**
   * @override
   * @description
   * Método encargado iniciar el gameplay del nivel mediante el envío de 
   * las primeras instrucciones del avatar.
   * @param {Function} callback 
   * Función de retorno que contiene las instrucciones del avatar.
   * @returns void.
   */
  startLevelGamePlay(callback) {
    this.allowGestures = false;
    setTimeout(() => {
      callback('Encuentra el error en la historia.');
      this.allowGestures = true;
      // Enlazar las fichas del jugador y colocarlas en la posición de las fichas foe 
      this.movement = PUT;
      this.sortSecuence = false;
    }, this.timeout);
  }

  // Otros métodos

  /**
   * @description 
   * Método encargado de crear o remover el enlace entre una ficha del jugador y 
   * una ficha foe.
   * @param {Boolean} attach 
   * Booleano que indica si se debe enlazar la ficha del jugador con la ficha foe.
   * @returns void. 
   */
  attachCard(attach) {
    const { card } = this.selectedCard ? this.selectedCard : this.cardToMove;
    // Remover todos los enlaces de la ficha seleccionada
    this.pairedCards.forEach(pairedCard => {
      const { attachCard } = pairedCard;
      if (attachCard === card)
        pairedCard.attachCard = null;
    });

    // Emparejar si así se require
    if (attach) {
      const { index } = this.collisionCard;
      this.pairedCards[index].attachCard = card;
    }
  }

  /**
   * @description 
   * Método encargado de construir la estructura que administra los enlaces y 
   * emparejamientos de las fichas del jugador con las fichas foe.
   * @returns Array de Objects.
   */
  buildPairedCards() {
    let pairedCards = [];
    const foeCards = this.foeDeck.getCards();
    foeCards.forEach(foeCard => {
      pairedCards.push({ foeCard, attachCard: null });
    });

    return pairedCards;
  }

  /**
   * @description 
   * Método encargado de construir el botón de validación.
   * @returns void.
   */
  buildValidateButton() {
    const playerDeckYPosition = this.playerDeck.getPosition().y;
    const playerDeckHeight = this.playerDeck.getHeight();

    const width = Math.floor((windowWidth * 0.2) + (spaceX * 2));
    const height = Math.floor(getTextSize() + (spaceY * 2));
    const x = Math.floor((windowWidth / 2) - (width / 2));
    const y = Math.floor(playerDeckYPosition + playerDeckHeight + (spaceY * 4));
    this.validateButton = new GameObjectButton(x, y, width, height, VALIDATE_TAG, 'Validar');
  }

  /**
   * @description
   * Método encargado de detectar las colisiones con las fichas foe.
   * @param {GameObjectCard} card 
   * Ficha que verificará la colisión sobre las fichas foe.
   * @returns Boolean.
   */
  checkCollisions(card) {
    const foeCards = this.foeDeck.getCards();

    let collides = false;
    foeCards.forEach((foeCard, index) => {
      if (card.collides(foeCard)) {
        const pairedCard = this.pairedCards[index];

        // Verificar que la ficha foe no este enlazada con una ficha distinta
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
   * Método encargado de verificar que todas las fichas estén enlazadas.
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
   * Método para crear un GameObjectDeck.
   * @param {String} tag 
   * String que actúa como un identificador del GameObjectDeck.
   * @returns GameObjectDeck.
   */
  createCardDeck(tag) {
    const { cards } = gameData;
    return this.cardFactory.createCardDeck({ tag, cards }, cards.length);
  }

  /**
   * @description 
   * Método encargado de ejecutar el movimiento de una ficha.
   * @param {Function} callback 
   * Función de callback que se ejecuta cuando el movimiento de 
   * la ficha ha finalizado.
   * @returns void.
   */
  moveCard(callback) {
    const { card, action } = this.selectedCard ? this.selectedCard : this.cardToMove;

    let x, y;
    if (action === DRAG) {
      card.setMovementStrategy(new DragMovementStrategy());
      x = mouseX;
      y = mouseY;
    }
    else {
      card.setMovementStrategy(new TwoDimensionMovementStrategy());

      if (action === PLAY) {
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
      // Si la acción es PLAY, entonces enlazar la ficha del jugador con la
      // ficha foe
      const attach = action === PLAY;
      this.attachCard(attach);
      
      this.cardToMove = null;
      this.collisionCard = null;
      this.selectedCard = null;

      if (this.movement !== PUT && action === PLAY && this.checkPairedComplete()) {
        if (!this.validateButton) this.buildValidateButton();
      }
      else
        this.validateButton = null;

      if (callback) callback();
    });
  }

  /**
   * @description 
   * Método encargado de colocar las fichas del jugador en la posición de 
   * las fichas foe.
   * @param {Boolean} correctSecuence
   * Booleano que indica si el posicionamiento y enlace de las fichas del jugador
   * debe seguir el orden correcto de la secuencia.
   * @returns void.
   */
  putCards(sortSecuence = false) {
    const playerCards = this.playerDeck.getCards();
    let cardsMoved = 0;

    playerCards.forEach((playerCard, index) => {
      let put = false;
      if (sortSecuence) {
        // Al necesitarse organizar la secuencia, se debe verificar cada ficha emparejada.
        this.pairedCards.forEach((pairedCard, j) => {
          const { foeCard } = pairedCard;
          if (foeCard.getCardStructure().tag === playerCard.getCardStructure().tag) {
            this.collisionCard = { foeCard, index: j };
            put = true;
          }
        });
      }
      else {
        // Como no se necesita organizar la secuencia, se arman las fichas de colisión 
        // siguiendo el orden de las fichas del jugador
        put = true;
        const foeCards = this.foeDeck.getCards();
        const foeCard = foeCards[index];
        this.collisionCard = { foeCard, index };
      }

      if (put) {
        this.cardToMove = { card: playerCard, action: PLAY };
        this.moveCard(() => { cardsMoved += 1; });
      }
    });

    if (cardsMoved === playerCards.length) this.movement = null;
  }

  /**
   * @description
   * Método encargado de devolver las fichas incorrectamente emparejadas 
   * a su posición original.
   * @returns void.
   */
  putCardsBack() {
    const playerCards = this.playerDeck.getCards();
    let verifiedCards = 0;
    // Verificar todas las fichas del jugador
    playerCards.forEach(playerCard => {
      let putBack = false;
      this.pairedCards.forEach(pairedCard => {
        const { attachCard } = pairedCard;

        // Buscar la ficha emparejada que sea igual a la ficha del jugador que
        // se está verificando.
        if (attachCard === playerCard) {
          const { foeCard } = pairedCard;
          // Comparar los identificadores de la ficha del jugador y la ficha foe para
          // saber si concuerdan o no
          if (foeCard.getCardStructure().tag !== playerCard.getCardStructure().tag)
            putBack = true; // Si no concuerdan, devolver la ficha a su posición original
        }
      });

      if (putBack) {
        this.cardToMove = { card: playerCard, action: RETURN };
        this.moveCard(() => { verifiedCards += 1; });
      }
      else 
        verifiedCards += 1;
    });

    if (verifiedCards === playerCards.length) {
      setTimeout(() => {
        this.movement = PUT;
        this.sortSecuence = true;
      }, this.timeout + 500);
    }
  }

  /**
   * @description
   * Método encargado de validar las fichas emparejadas.
   * @returns Boolean.
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