/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase LevelSecuenciaOne representa el primer nivel del
 * videojuego Secuencia. Esta clase implementa los métodos abstractos 
 * de la clase padre Level.
 * 
 * El primer nivel de Secuencia consiste en organizar de manera cronológica 
 * una secuencia de imágenes.
 * 
 * @subclassof Level.
 */

class LevelSecuenciaOne extends Level {

  /**
   * @description
   * Constructor de la clase.
   * @param {CardFactory} cardFactory
   * Objeto que representa la fábrica de fichas.
   * @returns LevelSecuenciaOne.
   */
  constructor(cardFactory) {
    super(cardFactory);

    // Atributos
    this.badMoves;
    this.cardToMove;
    this.collisionCard;
    this.foeDeck;
    this.movement;
    this.pairedCards;
    this.playerDeck;
    this.selectedCard;
    this.validateButton;
  }

  // Implementación de métodos abstractos

  /**
   * @override
   * @description
   * Método dónde se dibujan los elementos del nivel.
   * @returns void.
   */
  drawGameObjects() {
    image(this.background, 0, 0, windowWidth, windowHeight);

    // Dibujar el deck de fichas
    this.foeDeck.draw();
    this.playerDeck.draw();

    // Dibujar el botón de validación
    if (this.validateButton) this.validateButton.draw();
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
      else this.putCards();
    }
  }

  /**
   * @override
   * @description
   * Método donde se administran las acciones de click 
   * ejecutadas por el mouse.
   * @param {Function} callback
   * Función de retorno que se ejecuta cuando se han realizado acciones
   * relacionadas con el evento de click.
   * @returns void.
   */
  handleMousePressed(callback) {
    const click = createVector(mouseX, mouseY);

    if (!this.cardToMove) {
      if (!this.selectedCard) {
        this.playerDeck.clicked(click, card => {
          card.action = DRAG;
          this.selectedCard = card;
        });

        if (this.validateButton)
          this.validateButton.clicked(click, () => { 
            if (this.validatePairedCards()) {
              const feed = { hits: 1, mistakes: this.badMoves };
              // Si la validación es correcta, gana el nivel y pasa al siguiente
              callback({ feed, feedback: GOOD_ICON, message: '¡Bien hecho!', next: true, score: 3 });
            }
            else {
              this.badMoves += 1;
              if (this.badMoves === 5) {
                // Con cinco movimientos malos, se pierde el nivel y pasa al siguiente.
                // Además se debe mostrar la secuencia correcta
                this.movement = PUT;
                const feed = { hits: 0, mistakes: this.badMoves }; 
                callback({ feed, feedback: THINK_ICON, message: 'Sigue practicando más.', next: true });
              }
              else {
                // Con menos de cinco movimientos malos se debe ejecutar la lógica para
                // devolver las fichas a su posición original.
                this.movement = PUT_BACK;
                callback({ feedback: THINK_ICON, message: 'Inténtalo otra vez.', next: false });
              }
            }
          });
      }
      else {
        const { card } = this.selectedCard;
        // Verificar si hay colisión con alguna ficha foe
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
    this.background = loadImage(SECUENCE_BACKGROUND_1);
    this.badMoves = 0;
    this.timeout = 2000;

    // Inicializar los decks de fichas simples
    this.foeDeck = this.createCardDeck(FOE_TAG);
    this.playerDeck = this.createCardDeck(PLAYER_TAG);

    // Inicializar la estructura de fichas emparejadas
    this.pairedCards = this.buildPairedCards();

    // Desordernar las fichas del jugador
    this.playerDeck.unsortCards();
  }

  /**
   * @description
   * Método encargado de iniciar el gameplay del nivel mediante el envío de 
   * las primeras instrucciones del avatar.
   * @param {Function} callback 
   * Función de retorno que contiene las instrucciones del avatar.
   * @returns void.
   */
  startLevelGamePlay(callback) {
    callback('Tú vas a organizar esta historia. Escoge las fichas y ubícalas donde creas que van.\n' + 
              'Recuerda que puedes cambiar el orden cuando sea necesario.');
  }

  // Otros métodos

  /**
   * @description
   * Método encargado de crear o remover el enlace entre una ficha del jugador
   * y una ficha foe.
   * @param {Boolean} attach 
   * Booleano que indica si se debe crear o remover el enlace.
   * @returns void.
   */
  attachCard(attach) {
    const { card } = this.selectedCard ? this.selectedCard : this.cardToMove;

    // Remover los enlaces de la ficha seleccionada
    this.pairedCards.forEach(pairedCard => {
      const { attachCard } = pairedCard;
      if (attachCard === card)
        pairedCard.attachCard = null;
    });

    if (attach) {
      // Crear un nuevo enlace para la ficha seleccionada
      const { index } = this.collisionCard;
      this.pairedCards[index].attachCard = card;
    }
  }

  /**
   * @description
   * Método encargado de construir la estructura con la que se administra
   * las fichas que se emparejan.
   * @returns Array de Objects
   */
  buildPairedCards() {
    const foeCards = this.foeDeck.getCards();
    let pairedCards = [];
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

    const width = Math.floor((windowWidth * 0.15) + (spaceX * 2));
    const height = Math.floor(getTextSize() + (spaceY * 2));
    const x = Math.floor((windowWidth / 2) - (width / 2));
    const y = Math.floor(playerDeckYPosition + playerDeckHeight + (spaceY * 4));
    this.validateButton = new GameObjectButton(x, y, width, height, VALIDATE_TAG, 'Validar');
  }

  /**
   * @description
   * Método encargado de verificar si todas las fichas se encuentran
   * emparejadas.
   * @returns Boolean.
   */
  checkPairedComplete() {
    let complete = true;
    this.pairedCards.forEach(pairedCard => {
      if (pairedCard.attachCard === null)
        complete = false;
    });

    return complete;
  }

  /**
   * @description 
   * Método para crear un GameObjectDeck.
   * @param {String} tag 
   * String que actúa como identificador del GameObjectDeck.
   * @returns void.
   */
  createCardDeck(tag) {
    const { cards } = gameData;
    return this.cardFactory.createCardDeck({ tag, cards }, cards.length);
  }

  /**
   * @description
   * Método encargado de detectar las colisiones con las fichas foe.
   * @param {GameObjectCard} card
   * Ficha que verificará la colisión sobre las fichas foe.
   * @returns void.
   */
  checkCollisions(card) {
    const foeCards = this.foeDeck.getCards();

    let collides = false;
    foeCards.forEach((foeCard, index) => {
      if (card.collides(foeCard)) {
        const pairedCard = this.pairedCards[index];

        // Verificar que la ficha con la que está colisionando, no tenga ya otra ficha
        // enlazada.
        const { attachCard } = pairedCard;
        if (attachCard === null || attachCard === card) {
          this.collisionCard = { foeCard, index }; // Armar data de ficha con la que colisionó
          collides = true;
        }
      }
    });

    return collides;
  }

  /**
   * @description
   * Método encargado de mover una ficha de manera autónoma siguiendo
   * unas acciones.
   * @param {Function} callback
   * Función que se ejecuta cuando el movimiento de una ficha ha finalizado.
   * @returns void.
   */
  moveCard(callback) {
    const { action, card } = this.selectedCard ? this.selectedCard : this.cardToMove;

    let x, y;
    if (action === DRAG) { // El cursor está arrastrando la ficha
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
      else if (action === RETURN) { // La ficha se devuelve a su posición original
        const basePosition = card.getBasePosition();
        x = basePosition.x;
        y = basePosition.y;
      }
    }

    card.move(createVector(x, y), () => {
      // Si la acción era PLAY, lo que refleja que la ficha colisionó con otra foe,
      // entonces enlazar las dos fichas
      const attach = action === PLAY;
      this.attachCard(attach);

      this.collisionCard = null;
      this.selectedCard = null;
      this.cardToMove = null;
      
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
   * Método encargado de color las fichas del jugador en la secuencia
   * correcta.
   * @returns void.
   */
  putCards() {
    const playerCards = this.playerDeck.getCards();
    let cardsMoved = 0;
    playerCards.forEach(playerCard => {
      let put = false;
      this.pairedCards.forEach((pairedCard, index) => {
        const { foeCard } = pairedCard;
        if (foeCard.getCardStructure().tag === playerCard.getCardStructure().tag) {
          this.collisionCard = { foeCard, index };
          put = true;
        }
      });

      if (put) {
        this.cardToMove = { card: playerCard, action: PLAY };
        this.moveCard(() => { cardsMoved += 1; });
      }
    });

    if (cardsMoved === playerCards.length) this.movement = null;
  }

  /**
   * @description
   * Método para devolver las fichas a su posición de origen.
   * @returns void.
   */
  putCardsBack() {
    const playerCards = this.playerDeck.getCards();
    let cardsMoved = 0;
    playerCards.forEach(playerCard => {
      let putBack = false;
      if (this.badMoves < 3) // Con menos de 3 movimientos malos, se devuelven todas las fichas
        putBack = true;
      else { // 3 movimientos o más
        this.pairedCards.forEach(pairedCard => {
          const { attachCard } = pairedCard;
          // Verificar que la ficha del jugador sea la misma ficha enlazada
          if (attachCard && attachCard.getCardStructure().tag === playerCard.getCardStructure().tag) {
            const { foeCard } = pairedCard;
            // Devolver la ficha si el enlace con la ficha foe no es correcto 
            if (foeCard.getCardStructure().tag !== playerCard.getCardStructure().tag)
              putBack = true;
          }
        });
      }

      if (putBack) {
        this.cardToMove = { card: playerCard, action: RETURN };
        this.moveCard(() => { cardsMoved += 1 });
      }
      else cardsMoved += 1;
    });

    if (cardsMoved === playerCards.length) this.movement = null;
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