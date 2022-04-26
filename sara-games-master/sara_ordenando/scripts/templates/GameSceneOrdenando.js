/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description 
 * La clase GameSceneOrdenando es un descendiente de la clase 
 * GameScene y está encargada de implementar el Patrón de Diseño 
 * Template Method, completando la plantilla con la lógica de 
 * la mecánica Ordenando.
 * @subclassof GameScene.
 */

class GameSceneOrdenando extends GameScene {

  /**
   * @description 
   * Constructor de la clase.
   * @returns GameSceneOrdenando.
   */
  constructor() {
    super();

    // Atributos
    this.boy;
    this.actions;
    this.actionsDeck;
    this.background;
    this.clothesCards;
    this.currentDemand;
    this.destinationArea;
    this.expectedSelections;
    this.girl;
    this.hand;
    this.localDemands;
    this.locally;
    this.mom;
    this.playerThumb;
    this.resolvingFirstDemand;
    this.secondModal;
    this.selectedCharacter;
    this.selectedCard;
    this.selectedVerb;
    this.selections;
    this.stage;
    this.walkPosition;
  }

  // Implementación de métodos abstractos

  /**
   * @description 
   * Método encargado de dibujar los objetos del juego.
   * @returns void.
   */
  drawGameObjects() {
    image(this.background, 0, 0, windowWidth, windowHeight);

    // Dibujar el deck de acciones
    if (this.actionsDeck) this.actionsDeck.draw();

    // Dibujar los elementos seleccionados 
    if (this.expectedSelections) 
      this.expectedSelections.forEach(expected => {
        if (expected.spriteData) {
          const { position, width, height, sprite } = expected.spriteData;
          sprite.draw(position, width, height);
        }
      });

    // Dibujar las prendas
    if (this.clothesCards) this.clothesCards.forEach(cloth => { cloth.draw(); });

    // Dibujar los personajes
    if (this.boy) this.boy.draw();
    if (this.girl) this.girl.draw();
    if (this.mom) this.mom.draw();

    // Dibujar las opciones del juego
    if (this.options) this.options.draw();

    if (this.selectedCard && this.selectedCard.card && this.selectedCard.action === PUT) 
      this.selectedCard.card.draw();

    // Dibujar la imagen del jugador
    if (this.playerThumb) this.playerThumb.draw();

    // Dibujar el puntaje
    if (this.score) this.score.draw();

    // Mostrar modal
    if (this.modal.getModalStrategy()) this.modal.draw();

    // Mostrar modal secundario (feedback)
    if (this.secondModal.getModalStrategy()) this.secondModal.draw();

    // Mostrar avatar
    if (this.avatar.getMessage()) this.avatar.draw();
  }

  /**
   * @description 
   * Método encargado de realizar los distintos 
   * movimientos de los objetos del juego.
   * @returns void.
   */
  executeMovements() {
    if (!pauseGame) {
      if (this.selectedCharacter && this.walkPosition)
        this.moveCharacter();

      if (this.selectedCard && this.selectedCard.action === PUT && this.destinationArea)
        this.moveCard();
    }
  }

  /**
   * @description 
   * Método encargado de administrar las acciones de click 
   * ejecutadas por el mouse (acciones del jugador).
   * @returns void.
   */
  handleMousePressed() {
    const click = createVector(mouseX, mouseY);
    
    if (!this.avatar.getMessage()) {
      if (!this.modal.getModalStrategy()) {
        if (!pauseGame && !this.destinationArea) {
          // Selección del personaje
          if (!this.selectedCharacter) {
            this.boy.clicked(click, () => {
              this.selectedCharacter = this.boy;
              this.selections.push({ object: this.selectedCharacter, action: VALIDATE });
            });

            this.girl.clicked(click, () => {
              this.selectedCharacter = this.girl;
              this.selections.push({ object: this.selectedCharacter, action: VALIDATE });
            });
          }
          else if (!this.resolvingFirstDemand) {
            this.walkPosition = createVector(click.x, this.selectedCharacter.getPosition().y);
          }
          
          // Selección de los verbos
          if (!this.selectedVerb && this.actionsDeck) {
            this.actionsDeck.clicked(click, card => {
              this.walkPosition = null;
              this.selectedVerb = card.card;
              if (this.resolvingFirstDemand)
                this.selectDemand();
              else
                this.selections.push({ object: this.selectedVerb, action: VALIDATE });
            });
          }

          // Selección de las prendas
          if (!this.selectedCard) {
            for (let i = this.clothesCards.length - 1; i >= 0; i--) {
              const clothCard = this.clothesCards[i];
              clothCard.clicked(click, () => {
                // Mientras se este intentando resolver cuál es la primera demanda, no se puede 
                // seleccionar una prenda.
                if (this.resolvingFirstDemand && !this.selectedVerb) 
                  this.avatar.speak('Primero debes seleccionar una acción.');
                else
                  this.selectedCard = { card: clothCard, index: i }; 
              });

              if (this.selectedCard) {
                this.selections.push({ object: this.selectedCard.card, action: VALIDATE });
                break;
              }
            }
          }
        }

        if (this.options) this.options.clicked(click, tag => {
          this.walkPosition = null;
          if (tag === REPEAT_TAG) this.avatar.speak(this.avatar.getLastMessage()); 
        });
      }
      else {
        this.modal.clicked(click, data => {
          if (data.kind === START_MODAL)
            this.startGamePlay();
          else if (data.kind === END_MODAL) {
            if (data.option === EXIT_TAG)
              apiRequest.sendMessage('exit_game', 'Salir');
            else if (data.option === RESTART_TAG) {
              this.startGameElements();
              this.startGamePlay();
            }
          }
          else
            this.handleModalClicked(data);
        });
      }
    }
  }

  /**
   * Método donde se inicializan las variables y elementos 
   * principales del juego.
   * @returns void.
   */
  startGameElements() {
    // Calcular espacios entre elementos
    spaceX = Math.floor(windowWidth * 0.008);
    spaceY = Math.floor(windowHeight * 0.01);
    this.girl = null;
    this.actionsDeck = null;
    this.selections = [];
    this.stage = 1;

    this.startInitialStageElements(this.stage);

    // Crear las opciones del juego
    this.options = this.createOptions();

    // Crear la imagen del jugador
    this.playerThumb = this.createPlayerThumb();

    // Crear el puntaje
    this.score = this.createScore();

    // Crear modal secundario (feedback)
    this.secondModal = new GameObjectModal(0, 0, windowWidth, windowHeight, MODAL_TAG);

    // Crear nivel si no ha sido creado
    if (!levelId) apiRequest.createLevel(1);
  }

  /**
   * @description 
   * Método donde se verifican las reglas del juego al ejecutarse 
   * movimientos del jugador.
   * @returns void.
   */
  validateMovementRules() {
    let errorIndex = -1;
    for (let i = 0; i < this.selections.length; i++) {
      const selection = this.selections[i];
      if (selection.action === VALIDATE) {
        const selectionTag = i === 0 ? selection.object.getTag() : selection.object.getCardStructure().tag;
        const expectedTag = this.expectedSelections[i].tag;
        let correctMatch = false;
        // Validar los tag entre las selecciones y las esperadas
        if (selectionTag === expectedTag) {
          selection.action = DONE;
          correctMatch = true;

          // Poblar el key spriteData de expectedSelections
          const spriteURL = selectionTag === MALE_TAG ? BOY_FACE_ICON :
                            selectionTag === FEMALE_TAG ? GIRL_FACE_ICON : HAND_ICON;
          const sprite = i === 0 ? new Sprite(spriteURL, selectionTag) : selection.object.getCardStructure().sprite;
          const generalTag = selection.object.getTag();
          const widthScale = generalTag === PICTOGRAM_ACTION_TAG ? 0.07 : 0.055;
          const heightScale = generalTag === PICTOGRAM_ACTION_TAG ? 0.85 : 1;
          // Cálculo del tamaño
          const width = Math.floor(windowWidth * widthScale);
          const height = Math.floor(width * heightScale);
          const scaleY = Math.floor(spaceY * 4.5);
          // Cálculo de la posición
          const completeWidth = Math.floor((width * 3) + (spaceX * 4));
          const startX = Math.floor((windowWidth / 2) - (completeWidth / 2)) - (spaceX * 3);
          const x = startX + (i * (width + (spaceX * 1.5)));
          const y = Math.floor(this.actionsDeck.getPosition().y + this.actionsDeck.getHeight() + scaleY);

          this.expectedSelections[i].spriteData = { position: createVector(x, y), width, height, sprite };

          // Este bloque se ejecuta solo para la prenda seleccionada (this.selectedCard)
          if (this.resolvingFirstDemand && this.selectedCard) {
            const structure = this.selectedCard.card.getCardStructure();
            if (structure.cloth_animation) // Verificar si la prenda tiene animación
              this.animateSelectedCloth(structure, false);
            else {
              this.setDestinationArea(structure);
              this.clothesCards.splice(this.selectedCard.index, 1);
              this.selectedCard = { card: this.selectedCard.card, action: PUT };
            }
          }
        }
        else
          errorIndex = i;

        // Guardar en base de datos la selección realizada por el jugador
        if ((this.resolvingFirstDemand && i > 1) || (!this.resolvingFirstDemand && i > 0))
          apiRequest.saveMatch({ is_good: correctMatch, variable: selectionTag });
      }
    }

    // Si el errorIndex >= 0 entonces hubo un error
    if (errorIndex >= 0) {
      const removed = this.selections.splice(errorIndex, 1)[0].object; // Remover la selección
      // Remover el objeto seleccionado
      if (removed === this.selectedCharacter) this.selectedCharacter = null;
      else if (removed === this.selectedVerb) this.selectedVerb = null;
      else if (removed === this.selectedCard.card) this.selectedCard = null;
      this.showFeedbackModal(true);
      this.avatar.speak(`Observa con atención. ${this.currentDemand.demand}`, () => {
        this.showFeedbackModal(false);
      });
    }
  }

  // Otros métodos de la clase

  /**
   * @description 
   * Método para cargar las animaciones GIF de las prendas. 
   * @param {Object} structure 
   * Objecto que representa la estructura interna de la ficha prenda.
   * @param {Boolean} fromCharacterMovement
   * Booleano que indica si se está intentando lograr la animación al moverse 
   * el persoanje o no.
   * @returns void.
   */
  animateSelectedCloth(structure, fromCharacterMovement) {
    const sprite = new Sprite(`${FILE_SERVER_URL}${structure.cloth_animation}`, GIF_TAG);
    const card = this.clothesCards.splice(this.selectedCard.index, 1)[0];
    card.setCardStructure({ ...structure, sprite });
    this.clothesCards.push(card);

    setTimeout(() => {
      if (fromCharacterMovement)
        this.setCharacterHeld(true);
      else {
        this.setDestinationArea(structure);
        this.clothesCards.splice(this.clothesCards.length - 1, 1);
        this.selectedCard = { card: this.selectedCard.card, action: PUT };
      }
    }, 2500);
  }

  /**
   * @description 
   * Método encargado de crear un GameObjectDeck para las acciones.
   * @returns GameObjectDeck.
   */
  createActionsDeck() {
    const sortingActions = Object.values(SORTING_ACTIONS);
    return this.cardFactory.createCardDeck({ tag: PICTOGRAM_ACTION_TAG, cards: sortingActions }, sortingActions.length);
  }

  /**
   * @description 
   * Método encargado de crear un GameObjectCharacter.
   * @param {String} gender 
   * String que indica el género de GameObjectCharacter.
   * @returns GameObjectCharacter.
   */
  createCharacter(gender) {
    // Calcular las escalas
    const widthScale = gender === MOM_TAG ? 0.18 : 0.09;
    // Calcular tamaño
    const width = Math.floor(windowWidth * widthScale);
    const height = width * 2;
    // Calcular la posición
    const xOffset = gender === MOM_TAG ? 55 : gender === FEMALE_TAG ? 22 : 35;
    const x = Math.floor(windowWidth - width - (spaceX * xOffset));
    const y = Math.floor(windowHeight - height - (spaceY * 5));

    // Asignar el sprite
    const spriteURL = gender === MALE_TAG ? BOY_IMAGE : gender === FEMALE_TAG ? GIRL_IMAGE : MOM_IMAGE;
    const sprite = new Sprite(spriteURL, gender);
    return new GameObjectCharacter(x, y, width, height, gender, sprite);
  }

  /**
   * @description 
   * Método encargado de crear las fichas de las prendas.
   * @returns void.
   */
  createClothes() {
    // Seleccionar aleatoriamente 9 fichas de gameData.
    const { cards } = gameData;
    const randomCards = [];
    while (randomCards.length < 9) {
      let addCard = true;
      const randomIndex = Math.floor(Math.random() * cards.length);
      const cardData = cards[randomIndex];

      // Evitar fichas repetidas
      if (randomCards.length > 0) {
        for (let i = 0; i < randomCards.length; i++) {
          const randomCard = randomCards[i];
          if (randomCard.tag === cardData.tag && randomCard.action === cardData.action) {
            addCard = false;
            break;
          }
        }
      }

      if (addCard)
        randomCards.push(cardData);
    }

    // Definir los límites del espacio en el que deben ubicarse las fichas
    const minimumX = 0;
    const maximumX = Math.floor((windowWidth / 2) - (spaceX * 20));
    const minimumY = Math.floor((windowHeight / 2) + (spaceY * 20));
    const maximumY = windowHeight - (spaceY * 15);

    // Crear el grupo de fichas a partir de las fichas seleccionadas
    let clothesCards = [];
    let positions = [];
    randomCards.forEach((randomCard, index) => {
      // Calcular posición
      const cardPosition = getUniquePosition(positions, { minimumX, maximumX, minimumY, maximumY });
      const x = cardPosition.x;
      const y = cardPosition.y;
      
      const card = this.cardFactory.createCard({ cards: randomCards, index, tag: ITEM_TAG, x, y });
      clothesCards.push(card);
      positions.push(cardPosition);
    });

    return clothesCards;
  }

  /**
   * @description 
   * Método encargado de crear un GameObjectOptions.
   * @returns GameObjectOptions.
   */
  createOptions() {
    const width = Math.floor(windowWidth * 0.05);
    const numberOfOptions = 4;
    const height = Math.floor(((width * 0.7) * numberOfOptions) + (spaceY * (numberOfOptions + 1)));
    const y = Math.floor((windowHeight / 2) - (height / 2));
    return new GameObjectOptions(spaceX, y, width, height, OPTIONS_TAG);
  }

  /**
   * @description 
   * Método encargado de crear un objeto GameObjectPlayer.
   * @returns GameObjectPlayer.
   */
  createPlayerThumb() {
    const width = Math.floor(windowWidth * 0.058);
    const radius = Math.floor(width / 2);
    const x = windowWidth - radius - (spaceX * 1.25);
    const y = windowHeight - radius - spaceY;
    return new GameObjectPlayer(x, y, width, width, PLAYER_TAG);
  }

  /**
   * @description 
   * Método encargado de crear un objeto GameObjectScore.
   * @returns GameObjectScore.
   */
  createScore() {
    const width = Math.floor(windowWidth * 0.03);
    const fixedWidth = width + (spaceX * 2);
    const radius = this.playerThumb.getWidth() / 2;
    const x = this.playerThumb.getPosition().x - radius - fixedWidth - (spaceX * 0.8);
    const y = this.playerThumb.getPosition().y - Math.floor(width / 4);
    return new GameObjectScore(x, y, fixedWidth, width, SCORE_TAG);
  }

  /**
   * @description 
   * Método encargado de activar las acciones dependiendo de las 
   * acciones presentes en gamedata.json.
   * @returns void.
   */
  enableActions() {
    // Obtener las acciones disponibles para las prendas seleccionadas (acciones no repetidas)
    let actions = [];
    this.clothesCards.forEach(clothCard => {
      const clothAction = clothCard.getCardStructure().action;
      if (!actions.includes(clothAction)) actions.push(clothAction);
    });

    // Habilitar las acciones
    actions.forEach(action => {
      const actionsCards = this.actionsDeck.getCards();
      actionsCards.forEach(actionCard => {
        let structure = { ...actionCard.getCardStructure() };
        const actionTag = structure.tag;
        if (action === actionTag) {
          // Cambiar el valor de enabled y el sprite de la ficha de acción
          const path = SORTING_ACTIONS[action].path_enabled;
          const sprite = new Sprite(path, PICTOGRAM_ACTION_TAG);
          structure = { ...structure, sprite };

          actionCard.setCardStructure(structure);
          actionCard.setEnabled(true);
        }
      });
    });
  }

  /**
   * @description 
   * Método abstracto encargado de definir las acciones a realizar para 
   * ciertos tipos de modal.
   * @param {Object} data 
   * Objeto que contiene información del modal.
   * @returns void.
   */
  handleModalClicked(data) {}

  /**
   * @description 
   * Método encargado de cargar la siguiente etapa del juego.
   * @returns void.
   */
  loadNextStage() {
    this.stage ++;
    this.startInitialStageElements(this.stage);
    this.showValidationModal(false);
  }

  /**
   * @description 
   * Método encargado de mover la ficha seleccionada.
   * @returns void.
   */
  moveCard() {
    const { card } = this.selectedCard;
    const x = this.destinationArea.position.x + ((this.destinationArea.width / 2) - (card.getWidth() / 2));
    const y = this.destinationArea.position.y + ((this.destinationArea.height / 2) - (card.getHeight() / 2));

    card.move(createVector(x, y), () => {
      this.destinationArea = null;
      this.resolvingFirstDemand = false;
      // Limpiar la lista de selecciones realizadas por el jugador para dejar de dibujarlas
      this.expectedSelections = [];
      this.selections = [];

      // Borrar la ficha y el verbo seleccionados
      this.selectedCard = null;
      this.selectedVerb = null;
      removeElements();

      // Mostrar modal de validación
      this.showValidationModal(true);
      this.avatar.speak('!Muy bien! Dile a tu acompañante que registre tu respuesta.');
    });
  }

  /**
   * @description 
   * Método encargado de mover al personaje seleccionado.
   * @returns void.
   */
  moveCharacter() {
    this.selectedCharacter.move(this.walkPosition, () => {
      const currentPosition = this.walkPosition;
      this.walkPosition = null;

      if (this.selectedCard) {
        if (this.selectedCard.action !== PUT) {
          const structure = this.selectedCard.card.getCardStructure();
          if (!this.selectedCharacter.getHeld()) { // Verificar si el personaje ya sostiene una prenda
            if (structure.cloth_animation) // Verificar animación de la prenda
              this.animateSelectedCloth(structure, true);
            else
              this.setCharacterHeld();
          }
          else {
            this.setDestinationArea(structure);
            if (checkBoundaries(this.destinationArea, currentPosition, false)) {
              setTimeout(() => { 
                const heldCard = this.selectedCharacter.getHeld();
                this.selectedCard = { card: heldCard, action: PUT };
                this.selectedCharacter.setHeld(null); // El personaje deja de sostener la prenda
                this.walkPosition = this.selectedCharacter.getBasePosition();
              }, 1000);
            }
            else this.destinationArea = null;
          }
        }
      }
    });
  }

  /**
   * @description 
   * Método para seleccionar aleatoriamente una demanda de una prenda 
   * seleccionada igualmente de manera aleatoria.
   * @returns void.
   */
  selectDemand() { 
    if (this.locally)
      this.currentDemand = this.localDemands[this.stage - 1];
    else {
      // Asignar la lista de prendas
      let clothes = this.resolvingFirstDemand ? this.clothesCards.filter(clothCard => {
        return clothCard.getCardStructure().action === this.selectedVerb.getCardStructure().tag;
      }) : this.clothesCards;

      // Seleccionar aleatoriamente una prenda de la lista de prendas
      const clothIndex = Math.floor(Math.random() * clothes.length);
      const card = clothes[clothIndex];

      // Seleccionar la demanda
      const structure = card.getCardStructure();
      let demands = [ ...structure.demands ];
      if (!this.resolvingFirstDemand) demands.shift(); // Quitar la primera demanda
      const demandIndex = this.resolvingFirstDemand ? 0 : Math.floor(Math.random() * demands.length);
      this.currentDemand = demands[demandIndex];

      // Armar el resultado esperado
      if (!this.resolvingFirstDemand) this.expectedSelections[0] = { spriteData: null, tag: this.currentDemand.gender };
      this.expectedSelections[1] = { spriteData: null, tag: structure.action };
      this.expectedSelections[2] = { spriteData: null, tag: structure.tag };

      // Agregar el verbo seleccionado a las selecciones
      if (this.resolvingFirstDemand) 
        this.selections.push({ object: this.selectedVerb, action: VALIDATE });
    }
    
    if (this.currentDemand)
      this.avatar.speak(this.currentDemand.demand, () => {
        if (this.locally) this.showValidationModal(true);
      });
  }
  
  /**
   * @description 
   * Método encargado de asignar un objeto al personaje para sostener. 
   * @returns void.
   */
  setCharacterHeld(takeLast = false) {
    const index = takeLast ? this.clothesCards.length - 1 : this.selectedCard.index;
    const removedCard = this.clothesCards.splice(index, 1)[0];
    this.selectedCharacter.setHeld(removedCard);
  }

  /**
   * @description 
   * Método para asignar el área de destino dependiendo de action o next_action.
   * @param {Object} structure 
   * Objeto que contiene la estructura interna de la ficha prenda.
   * @returns void.
   */
  setDestinationArea(structure) {
    const verb = structure.cloth_animation ? structure.next_action : structure.action;
    this.destinationArea = this.setDestinationAreaByVerb(verb);
  }

  /**
   * @description 
   * Método encargado de definir el area de destino para next_action.
   * @param {String} verb 
   * String cuyo valor corresponde a next_action.
   * @returns Object.
   */
  setDestinationAreaByVerb(verb) {}

  /**
   * @description 
   * Método encargado de asignar los elementos necesarios para resolver 
   * la primera demanda del juego.
   * @returns void.
   */
  setFirstDemandElements() {
    this.resolvingFirstDemand = true;
    // Crear el sprite de la mano (Yo)
    const handSprite = new Sprite(HAND_ICON, ME_TAG);
    // Asignar la mano como personaje seleccionado (Yo)
    this.selectedCharacter = { sprite: handSprite, getTag: () => { return ME_TAG; }};
    // Asignar el personaje a las selecciones realizadas
    this.selections.push({ object: this.selectedCharacter, action: VALIDATE });
    // Asignar el primer elemento esperado
    this.expectedSelections = [{ spriteData: null, tag: ME_TAG }];
  }

  /**
   * @description 
   * Método abstracto para asignar el fondo de las etapas del juego.
   * @param {Number} stage 
   * Entero que indica la etapa del juego.
   * @returns p5.Image.
   */
  setStageBackground(stage) {}

  /**
   * @description 
   * Método encargado de mostrar o no el modal de feedback.
   * @param {Boolean} show 
   * Booleano que indica si se debe mostrar o no el modal de feedback.
   * @returns void.
   */
  showFeedbackModal(show) {
    if (show) {
      const sprite = new Sprite(THINK_ICON, '');
      const modalStrategy = new ImageModalStrategy(this.modal.getModalArea(), sprite);
      if (this.locally) 
        this.secondModal.setModalStrategy(modalStrategy);
      else
        this.modal.setModalStrategy(modalStrategy);
    }
    else {
      if (this.locally) 
        this.secondModal.setModalStrategy(null);
      else
        this.modal.setModalStrategy(null);
    }
  }

  /**
   * @description 
   * Método encargado de mostrar o no el modal de validación.
   * @param {Boolean} show 
   * Booleano que define si se debe mostrar o no el modal de validación.
   * @param {Boolean} correct 
   * @returns void.
   */
  showValidationModal(show, correct) {
    if (show) {
      const { answer, question } = this.currentDemand;
      const modalStrategy = new ValidationModalStrategy(this.modal.getModalArea(), answer, question, { 
        getChoices: this.locally,
        multipleChoices: !this.locally,
        saveChoices: !this.locally,
        saveFunction: 'savePhrase' 
      });
      this.modal.setModalStrategy(modalStrategy);
    }
    else {
      this.modal.setModalStrategy(null);
      this.currentDemand = null;
      if (this.locally)
        this.selectDemand();
      else {
        this.selectedCharacter = null;
        let message = 'Sigue practicando más...';
        let newScore = 1;
        if (correct) {
          message = '¡Excelente!';
          this.audio.play('bonus');
          newScore = 3;
        }

        // Actualizar el puntaje
        this.score.setScore(this.score.getScore() + newScore);
        // Guardar el nuevo puntaje en base de datos
        const currentScore = this.score.getScore();
        apiRequest.updateLevel(currentScore);
        userScore += newScore;
        apiRequest.saveScore(userScore);

        // Si ya no hay prendas entonces terminar el juego
        if (this.clothesCards.length === 0) {
          const modalStrategy = new EndGameModalStrategy(this.modal.getModalArea(), currentScore);
          this.modal.setModalStrategy(modalStrategy);
        }

        this.avatar.speak(message, () => {
          if (this.modal.getModalStrategy() instanceof EndGameModalStrategy)
            this.avatar.speak('¡Lo lograste! Has completado la actividad.');
          else
            this.selectDemand();
        });
      }
    }
  }

  /**
   * @description 
   * Método encargado de inicializar los elementos de 
   * la estapa final del juego.
   * @returns void.
   */
  startFinalStageElements() {
    // Crear el deck de acciones
    this.actionsDeck = this.createActionsDeck();

    // Crear las prendas de vestir
    this.clothesCards = this.createClothes();

    // Activar las acciones disponibles
    this.enableActions();
  }

  /**
   * @description 
   * Método abstracto para iniciar los elementos de las etapas 
   * iniciales del juego.
   * @param {Number} stage 
   * Número que indica la etapa a iniciar.
   * @returns void.
   */
  startInitialStageElements(stage) {}

  /**
   * @description 
   * Método abstracto encargado de iniciar la lógica del juego.
   * @returns void.
   */
  startGamePlay() {
    this.modal.setModalStrategy(null);
    this.selectDemand();
  }
}