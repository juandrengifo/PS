/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase GameSceneDomino es un descendiente de la clase
 * GameScene y está encargada de implementar el Patrón de
 * Diseño Template Method, completando la plantilla con
 * la lógica de la mecánica Dominó.
 * @subclassof GameScene.
 */

class GameSceneDomino extends GameScene {
  
  /**
   * @description
   * Constructor de la clase.
   * @returns GameSceneDomino
   */
  constructor() {
    super();

    // Atributos
    this.correctMoves;
    this.deckForSort;
    this.foeDeck;
    this.foeThumb;
    this.playedDeck;
    this.playerDeck;
    this.playerTurn;
    this.playerThumb;
    this.randomDeck;
    this.updateButton;
  }

  // Implementación de métodos abstractos

  /**
   * @description
   * Método encargado de dibujar los objetos del juego.
   * @returns void.
   */
  drawGameObjects() {
    background(GREEN_COLOR);

    // Dibujar el puntaje del jugador
    this.score.draw();

    // Dibujar los decks principales
    this.foeDeck.draw();
    this.playedDeck.draw();
    this.playerDeck.draw();

    // Dibujar el deck random
    this.updateButton.draw();
    this.randomDeck.draw();

    // Dibujar al contrincante (máquina) y el jugador
    this.foeThumb.draw(this.playerTurn);
    this.playerThumb.draw(this.playerTurn);

    // Dibujar las opciones del juego
    this.options.draw();

    // Ejecutar evento de hover siempre que: 
    // 1. No hay una ficha seleccionada
    // 2. No se esté organizando un deck
    // 3. No se esté mostrando un modal
    // 4. No se esté mostrando el avatar
    if (!pauseGame && !this.selectedCard && !this.deckForSort && 
        !this.modal.getModalStrategy() && !this.avatar.getMessage()) {
      this.hoverDeck(this.playerDeck);
      this.hoverDeck(this.randomDeck);
    }

    if (this.modal.getModalStrategy())
      this.modal.draw();

    if (this.avatar.getMessage())
      this.avatar.draw();
  }

  /**
   * @description
   * Método encargado de realizar los distintos 
   * movimientos de los objetos del juego.
   * @returns void
   */
  executeMovements() {
    // Movimiento para una sola ficha
    if (!pauseGame) {
      if (this.selectedCard) {
        const { card, action } = this.selectedCard;
        if (action === FLIP) {
          card.flip(() => {
            // Si es el turno del jugador, después de hacer el flip
            // ya no hay más movimientos automáticos. Por otro lado,
            // si es el turno del contrincante debe realizar jugada
            if (this.playerTurn)
              this.selectedCard = null;
            else 
              this.selectedCard.action = PLAY;
          });
        }
        else if (action === PLAY || action === RETURN || action === EAT) {
          // Mover la ficha siempre y cuando el no se esté mostrando el avatar
          if (!this.avatar.getMessage()) this.moveCard();
        }
      }
      // Movimiento de organización de las fichas de un deck
      else if (this.deckForSort) {
        this.deckForSort.sortCards(() => { 
          this.deckForSort = null;
          // Si la lista de fichas del deck de fichas jugadas tiene una longitud de 4, 
          // quitar la primera ficha y hacer un sort a la lista de fichas de dicho deck
          const playedCards = this.playedDeck.getCards();
          if (playedCards.length === 4) {
            this.playedDeck.removeCard(playedCards[0]);
            this.deckForSort = this.playedDeck;
          }
        });
      }
    }
  }

  /**
   * @description
   * Método encargado de administrar las acciones de click
   * ejecutadas por el mouse (movimientos del jugador).
   * @returns void.
   */
  handleMousePressed() {
    const click = createVector(mouseX, mouseY);
    // Los siguientes son los eventos de click que se ejecutan siempre y cuando
    // no se esté mostrando el avatar
    if (!this.avatar.getMessage()) {
      // Elementos que el jugador puede clickear siempre y cuando:
      // 1. Sea el turno del jugador
      // 2. No haya una ficha seleccionada
      // 3. No haya un deck para organizar
      if (this.playerTurn && !pauseGame && !this.selectedCard && !this.deckForSort) {
        // Evento de click para el deck del jugador
        this.playerDeck.clicked(click, card => {
          this.selectedCard = card;
        });

        // Evento de click para el deck de la ficha aleatoria
        this.randomDeck.clicked(click, card => {
          const { action } = card;
          if (action === FLIP) this.selectedCard = card;
          else {
            // Un jugador solo puede comer una ficha random si tiene menos de 5
            // fichas en su deck
            const playerCardsLen = this.playerDeck.getCards().length;
            if (playerCardsLen < 5) this.selectedCard = { ...card, action: EAT };
            else { 
              this.showAvatar('Solo puedes comer una ficha cuando tengas menos de cinco fichas para jugar.');
              this.selectedCard = null;
            }
          }
        });

        // Evento de click en el botón de actualizar
        this.updateButton.clicked(click, () => { this.createRandomCard(); });
      }

      // Otros elementos que el jugador puede clickear
      if (this.modal.getModalStrategy())
        // Evento de click en el modal
        this.modal.clicked(click, (data) => { 
          if (data.kind === START_MODAL)
            this.startGamePlay();
          else if (data.kind === VALIDATION_MODAL)
            this.showValidationModal(false, data.correct); 
          else if (data.kind === END_MODAL) {
            if (data.option === EXIT_TAG)
              apiRequest.sendMessage('exit_game', 'Salir');
            else if (data.option === RESTART_TAG) { // Reiniciar el juego
              this.startGameElements();
              this.startGamePlay();
            }
          }
        });
      else {
        this.options.clicked(click, tag => {
          if (tag === REPEAT_TAG) this.showAvatar(this.avatar.getLastMessage()); 
        });
      }
    }
  }

  /**
   * @description
   * Método donde se inicializan las variables principales
   * del juego.
   * @returns void.
   */
  startGameElements() {
    // Calcular el espacio entre fichas
    spaceX = Math.floor(windowWidth * 0.006);
    spaceY = Math.floor(windowHeight * 0.01);

    this.correctMoves = 0;
    this.playerTurn = false;

    // Se crea primero el deck de la ficha jugada de forma que se puedan
    // asegurar que para los próximos turnos pueda haber jugadas y el
    // juego no quede estancado.
    this.playedDeck = this.createCardDeck(PLAYED_TAG, 4);

    // Crear los deck de la máquina, el jugador y la ficha random.
    this.foeDeck = this.createCardDeck(FOE_TAG, 5);
    this.playerDeck = this.createCardDeck(PLAYER_TAG, 5);
    this.randomDeck = this.createCardDeck(RANDOM_TAG, 1);

    // Crear el botón de actualizar
    let x = this.randomDeck.getPosition().x;
    let y = this.randomDeck.getPosition().y + this.randomDeck.getHeight() + spaceY;
    let width = this.randomDeck.getWidth();
    let height = Math.floor(getTextSize() + (spaceY * 2));
    this.updateButton = new GameObjectButton(x, y, width, height, UPDATE_TAG, 'Actualizar');

    // Crear las imágenes de la máquina y del jugador
    this.foeThumb = this.createThumb(FOE_TAG);
    this.playerThumb = this.createThumb(PLAYER_TAG);

    // Crear las opciones del juego
    this.options = this.createOptions();

    // Crear el puntaje del jugador
    width = Math.floor(windowWidth * 0.035);
    const fixedWidth = width + (spaceX * 2);
    x = (this.playerDeck.getPosition().x + this.playerDeck.getWidth()) - (fixedWidth * 1.25);
    y = this.playerDeck.getPosition().y - width;
    this.score = new GameObjectScore(x, y, fixedWidth, width, SCORE_TAG);

    // Crear un nivel si este no ha sido creado 
    if (!levelId) apiRequest.createLevel(1);
  }

  /**
   * @description
   * Método donde se verifican las reglas del juego al ejecutarse 
   * movimientos del jugador.
   * @returns void
   */
  validateMovementRules() {
    if (this.selectedCard) {
      const { card, action } = this.selectedCard;
      if (action === VALIDATE) {
        const validation = this.validateCard(card);
        // Aquí sólo se verifica si el match del usuario fue correcto
        // por medio de la acción DONE
        let correctMatch = false;
        if (validation.action === DONE) {
          correctMatch = true;
          this.audio.play('match');
          this.showAvatar('¡Muy bien! Esa ficha es correcta.', () => {
            this.showAvatar('Dile a tu acompañante que registre tu respuesta.');
          });
          this.score.setScore(this.score.getScore() + 1);
          this.saveScore(1);
          this.showValidationModal(true);
          this.afterMovementDone();
        }
        else {
          this.showAvatar('Inténtalo nuevamente.', () => { this.audio.play('missmatch') }); 
          this.selectedCard = validation;
        }

        // Guardar en base de datos el emparejamiento realizado por el jugador
        const tag = card.getCardStructure().structure[0].tag;
        apiRequest.saveMatch({ is_good: correctMatch, variable: tag });
      }
    }
  }

  // Otros métodos de la clase

  /**
   * @description
   * Método que se ejecuta cuando el movimiento de una ficha ha
   * llegado a su fin de manera exitosa (DONE). 
   * @returns void
   */
  afterMovementDone() {
    const { card, action } = this.selectedCard;

    // Seleccionar el deck dependiendo de la acción y el turno actual 
    const deck = this.playerTurn ? this.playerDeck : this.foeDeck;
    const toDeck = action !== EAT ? this.playedDeck : deck;
    const fromDeck = action === EAT ? this.randomDeck : deck;

    // Adicionar la ficha en el deck de destino y quitarla del deck
    // de origen
    toDeck.addCard(card);
    fromDeck.removeCard(card); 
    
    this.selectedCard = null;  

    if (action === EAT) {
      // Crear una nueva ficha y adicionarla al deck random
      this.createRandomCard();
      // Si es el turno de la máquina, mover su respectiva ficha
      if (!this.playerTurn) this.chooseFoeCard();
    } 
    else {
      // Realizar un sort a la lista de ficha del deck de origen (fromDeck)
      this.deckForSort = fromDeck;  
      this.playerTurn = !this.playerTurn;
    }
  }

  /**
   * @description
   * Método encargado de seleccionar la ficha del
   * constrincante (máquina).
   * @returns void
   */
  chooseFoeCard() {
    const foeCards = this.foeDeck.getCards();
    foeCards.forEach(card => {
      if (!this.selectedCard) {
        const validation = this.validateCard(card);
        if (validation) this.selectedCard = validation;
      }
    });

    // Si el contrincante no pudo seleccionar una ficha entonces 
    // comer una ficha aleatoria
    if (!this.selectedCard) this.eatRandomCard();
    else this.showAvatar();
  }

  /**
   * @description
   * Método encargado de crear un deck de fichas.
   * @param {String} tag 
   * String que representa un identificador en concreto.
   * Este identificador se asigna a las fichas y sirve,
   * en este caso, para ubicar el deck de fichas.
   * @param {Number} numberOfCards
   * Define el número de fichas que teiene el deck.
   * @returns GameObjectDeck
   */
  createCardDeck(tag, numberOfCards) {
    const { ensuranceCard, lookForLeft } = this.getEnsuranceCard(tag);
    return this.cardFactory.createCardDeck({ ensuranceCard, lookForLeft, tag }, numberOfCards);
  }

  /**
   * @description
   * Método encargado de crear un GameObjectOptions.
   * @returns GameObjectOptions
   */
  createOptions() {
    const width = Math.floor(windowWidth * 0.05);
    const numberOfOptions = 4;
    const height = Math.floor((width * 0.7) * numberOfOptions + (spaceY * (numberOfOptions + 1)));
    const y = Math.floor((windowHeight / 2) - (height / 2));
    return new GameObjectOptions(spaceX, y, width, height, OPTIONS_TAG);
  }

  /**
   * @description
   * Método encargado de crear un GameObjectPlayer.
   * @param {String} tag 
   * String cuyo valor es un identificador del GameObjectPlayer
   * creado.
   * @returns GameObjectPlayer
   */
  createThumb(tag) {
    const width = Math.floor(windowWidth * 0.082);
    const radius = Math.floor(width / 2);
    const x = tag === FOE_TAG ? radius + (spaceX * 4) : windowWidth - radius - (spaceX * 4);
    const y = tag === FOE_TAG ? radius + spaceY : windowHeight - radius - spaceY;
    return new GameObjectPlayer(x, y, width, width, tag);
  }

  /**
   * @description
   * Método encargado de crear una ficha aleatoria y anexarla
   * al deck de fichas aleatorias.
   * @returns void
   */
  createRandomCard() {
    const x = this.randomDeck.getPosition().x + spaceX;
    const y = this.randomDeck.getPosition().y + spaceY;
    const randomCard = this.cardFactory.createCard({ x, y, tag: RANDOM_TAG });
    this.randomDeck.addCard(randomCard);

    // Si el deck de fichas aleatorias tiene dos ficha, entonces borrar la primera
    const randomCards = this.randomDeck.getCards();
    if (randomCards.length > 1)
      this.randomDeck.removeCard(randomCards[0]);
  }

  /**
   * @description
   * Método encargado de permitir al contrincante (máquina) 
   * comer una ficha aleatoria.
   * @returns void
   */
  eatRandomCard() {
    let randomCard = this.randomDeck.getCards()[0];
    const validation = this.validateCard(randomCard, true);
    if (validation) {
      this.selectedCard = { ...validation, card: randomCard };
    }
    else {
      this.createRandomCard();
      this.eatRandomCard();
    }
  }
  
  /**
   * @description
   * Método encargado de obtener la ficha necesaria para asegurar
   * las primeras jugadas del juego. 
   * @param {String} tag
   * @returns GameObjectCard
   */
  getEnsuranceCard(tag) {
    let lookForLeft = false;

    if (tag === PLAYED_TAG) 
      return { ensuranceCard: null, lookForLeft };
    
    // Obtener la ficha que se jugó de manera automática al comenzar
    // el juego
    const playedCards = this.playedDeck.getCards();
    const playedCard = playedCards[0];

    // Obtener la ficha de acuerdo al tag
    if (tag === FOE_TAG)
      // Si el tag hace referencia al contricante (máquina) entonces
      // retornar como ensuranceCard la ficha jugada
      return { ensuranceCard: playedCard, lookForLeft };

    // Sino obtener el ensuranceCard a partir de la lista de fichas
    // del contrincante
    const foeCards = this.foeDeck.getCards(); 

    let ensuranceCard = null;
    foeCards.forEach(card => {
      const playedCardSides = playedCard.getCardStructure().structure;
      const foeCardSides = card.getCardStructure().structure;

      if (!ensuranceCard) {
        // Como las fichas al crearse pueden cambiar su lado aleatoriamente,
        // verificar a que lado es igual
        const equalToLeft = playedCardSides[1].tag === foeCardSides[0].tag;
        const equalToRight = playedCardSides[1].tag === foeCardSides[1].tag;
        if (equalToLeft || equalToRight) {
          ensuranceCard = card;
          // Verificar si se tiene que buscar la igualdad en el lado izquierdo
          // de la ficha
          lookForLeft = equalToRight && equalToRight !== equalToLeft ? true : false;
        }
      }
    });

    return { ensuranceCard, lookForLeft };
  }

  /**
   * @description
   * Método encargado de verificar el evento de hover
   * sobre un deck de fichas. El evento hover consiste
   * en posicionar el mouse sobre determinado elemento.
   * @param {GameObjectDeck} deck 
   * GameObjectDeck que detectará el evento hover.
   * @returns void
   */
  hoverDeck(deck) {
    const mouse = createVector(mouseX, mouseY);
    deck.hover(mouse, 80);
  }

  /**
   * @description
   * Método encargado de calcular los componentes x e y  de la posición 
   * de destino y ejecutar el movimiento de la ficha.
   * @returns void 
   */
  moveCard() {
    const { card, action } = this.selectedCard;

    let x, y;
    // Si la acción es RETURN, volver a la posición original de la ficha
    if (action === RETURN) {
      x = card.getBasePosition().x;
      y = card.getBasePosition().y;
    }
    else {
      // Si la acción es PLAY, el deck al cuál se adicionará la ficha es el de
      // fichas jugadas. Por el contrario, si la acción es EAT, entonces el deck
      // depende del turno actual en el juego
      const deck = action === PLAY ? this.playedDeck : 
                   this.playerTurn ? this.playerDeck : this.foeDeck;

      const cards = deck.getCards();
      const lastCard = cards.length > 0 ? cards[cards.length - 1] : null;

      // Calcular la nueva posición dependiendo de la última ficha del deck
      x = lastCard ? lastCard.getPosition().x + lastCard.getWidth() + spaceX :
          deck.getPosition().x + spaceX;
      y = lastCard ? lastCard.getPosition().y : 
          deck.getPosition().y + spaceY;
    }

    // Realizar movimiento
    card.move(createVector(x, y), () => {
      const { action } = this.selectedCard;
      if (this.playerTurn) {
        // Si el movimiento que termina tenía como acción retornar o comer una ficha
        // entonces la jugada termina, de lo contrario se valida la ficha jugada
        if (action === RETURN)
          this.selectedCard = null;
        else if (action === EAT)
          this.afterMovementDone();
        else
          // Ir al método validateteMovementRules()
          this.selectedCard.action = VALIDATE;
      }
      else
        this.afterMovementDone();
    });
  }

  /**
   * @description
   * Método encargado de guardar el puntaje en base de datos.
   * @param {Number} newScore
   * Número que representa el nuevo puntaje adicionado.
   * @returns void
   */
  saveScore(newScore) {
    const currentScore = this.score.getScore();
    apiRequest.updateLevel(currentScore);
    userScore += newScore;
    apiRequest.saveScore(userScore);
  }

  /**
   * @description
   * Método encargado de hacer hablar al avatar asignándole un nuevo mensaje.
   * @param {String} message
   * String que define el mensaje que debe decir el avatar.
   * @param {Function} callback
   * Función de callback que se ejecuta cuando el avatar terminó de decir el mensaje.
   * @returns void
   */
  showAvatar(message = null, callback = null) {
    if (message)
      this.avatar.speak(message, callback);
    else {
      const { card, action } = this.selectedCard;
      // Si la acción es un FLIP la demanda debe ser la del lado derecho
      // de la ficha
      const demandIndex = action === FLIP ? 1 : 0; 
      const demand = card.getCardStructure().structure[demandIndex].demand;
      this.avatar.speak(demand, callback);
    }
  }

  /**
   * @description
   * Método encargado de asignar ValidationModalStrategy al GameObjectModel
   * para mostrar o no el modal de validación.
   * @param {Boolean} show
   * Booleano que define si se debe mostrar el modal de validación. 
   * @param {Boolean} correct
   * Booleano que define si la respuesta en el modal de validación
   * fue correcta o no.
   * @returns void
   */
  showValidationModal(show, correct = false) {
    if (show) {
      const { card } = this.selectedCard;
      const answer = card.getCardStructure().structure[0].answer;
      const modalStrategy = new ValidationModalStrategy(this.modal.getModalArea(), answer, 'Registro', {
        getChoices: false,
        multipleChoices: true,
        saveChoices: true,
        saveFunction: 'savePhrase'
      });
      this.modal.setModalStrategy(modalStrategy);
    }
    else {
      this.modal.setModalStrategy(null);
      let message = 'Sigue practicando más...';
      if (correct) {
        this.correctMoves += 1;
        this.audio.play('bonus');
        this.score.setScore(this.score.getScore() + 2);
        message = '¡Excelente! Ganaste dos puntos más.';

        // Validación para finalizar el juego
        if (this.correctMoves === 10 || (this.correctMoves >= 5 && this.playerDeck.getCards().length === 0)) {
          const modalStrategy = new EndGameModalStrategy(this.modal.getModalArea(), this.score.getScore());
          this.modal.setModalStrategy(modalStrategy);
        }
      }

      this.saveScore(2);
      this.showAvatar(message, () => {
        if (this.modal.getModalStrategy() instanceof EndGameModalStrategy) // Juego terminado!
          this.showAvatar('¡Lo lograste! Has completado la actividad.');
        else 
          this.chooseFoeCard();
      });
    }
  }

  /**
   * @description
   * Método encargado de iniciar toda la lógica del juego.
   * @returns void
   */
  startGamePlay() {
    this.modal.setModalStrategy(null);
    const message = '¡Hola! Vamos a jugar por turnos. Primero empiezo yo.';
    this.showAvatar(message, () => { this.chooseFoeCard(); });
  }

  /**
   * @description
   * Método encargado de verificar si el emparejamiento de
   * fichas es correcto.
   * @param {GameObjectCard} card
   * Ficha a verificar
   * @param {Boolean} eating
   * Booleano que permite identificar si la verificación ocurre
   * cuando el contrincante (máquina) esta tratando de comer una ficha.
   * @returns Object
   */
  validateCard(card, eating = false) {
    const playedCards = this.playedDeck.getCards();
    const lastCard = playedCards[playedCards.length - 1];
    // Obtener el tag del lado derecho de la última ficha jugada
    const lastCardTag = lastCard.getCardStructure().structure[1].tag;

    // Realizar la verificación dependiendo del turno (contrincante o jugador)
    // Siempre verificar el lado izquierdo.
    const sides = card.getCardStructure().structure;
    const equalLeft = sides[0].tag === lastCardTag;

    let validation = null;
    if (this.playerTurn) {
      const action = equalLeft ? DONE : RETURN;
      validation = { card, action };
    }
    else {
      // Si la ficha a verificar pertenece al contrincante (máquina) entonces verificar 
      // también el lado derecho de la ficha.
      const equalRight = sides[1].tag === lastCardTag;
      if (equalLeft || equalRight) {
        card.setHidden(false); // Descubrir la ficha
        validation = { card };
        if (eating) 
          validation.action = EAT;
        else if (equalRight && !equalLeft) 
          validation.action = FLIP;
        else
          validation.action = PLAY;
      }
    }

    return validation;
  }
}