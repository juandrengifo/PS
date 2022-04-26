/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description 
 * La clase GameSceneSecuencia es un descendiente de la clase
 * GameScene y está encargada de implementar los métodos
 * abstractos de la misma siguiendo el Patrón de Diseño 
 * Template Method, completando la plantilla con la
 * lógica de la mecánica Secuencia.
 * @subclassof GameScene.
 */

class GameSceneSecuencia extends GameScene {

  /**
   * @description 
   * Constructor de la clase.
   * @returns GameSceneSecuencia
   */
  constructor() {
    super();

    // Atributos
    this.currentScore;
    this.endingLevel;
    this.lastLevel;
    this.levelManager;
    this.playerThumb;
    this.timeout;
    this.validationOptions;
  }

  // Implementación de los métodos abstractos

  /**
   * @description
   * Método encargado de dibujar los objetos del juego.
   * @returns void.
   */
  drawGameObjects() {
    // Dibujar el nivel actual
    this.levelManager.drawGameObjects();

    // Dibujar las opciones del juego
    this.options.draw();

    // Dibujar la imagen del jugador
    this.playerThumb.draw(false);

    // Dibujar el puntaje del jugador
    this.score.draw();

    if (this.modal.getModalStrategy())
      this.modal.draw();

    if (this.avatar.getMessage())
      this.avatar.draw();
  }

  /**
   * @description
   * Método encargado de realizar los distintos movimientos
   * de los objetos del juego.
   * @returns void.
   */
  executeMovements() {
    if (!pauseGame)
      this.levelManager.executeMovements();
  }

  /**
   * @description
   * Método encargado de administrar las acciones de click
   * ejecutadas por el mouse (movimientos del jugador).
   * @returns void.
   */
  handleMousePressed() {
    const click = createVector(mouseX, mouseY);

    if (!this.endingLevel && !this.avatar.getMessage()) {
      if (!this.modal.getModalStrategy()) {
        if (!pauseGame)
          this.levelManager.handleMousePressed((data) => {
            const { feed, feedback, message, minisecuence, next, restart, score } = data;

            if (score) {
              this.score.setScore(this.score.getScore() + score);
              this.currentScore += score; // Acumular el puntaje del nivel
              // Guardar el puntaje acumulado en el nivel
              apiRequest.updateLevel(this.currentScore);
              // Registrar el nuevo puntaje del usuario
              userScore += score;
              apiRequest.saveScore(userScore);
            }

            // Guardar el feed
            if (feed)
              apiRequest.saveSecuence(feed);

            // Mostrar feedback
            if (feedback)
              this.showFeedbackModal(true, feedback);

            // Mostrar modal de mini secuencias
            if (minisecuence) 
              this.showMiniSecuenceModal(minisecuence);

            if (message)
              this.showAvatar(message, () => {
                if (feedback) this.showFeedbackModal(false);
                
                // Si se va a hacer un cambio de nivel, mostrar el modal de validación
                if (next) {
                  this.currentScore = 0;
                  this.endingLevel = true;
                  setTimeout(() => {
                    this.endingLevel = false;
                    this.showAvatar('Dile a tu acompañante que indique como resolviste el nivel.');
                    this.showValidationModal(true);
                  }, 2000);
                }
                else if (restart) // Reiniciar el nivel
                  this.startLevel(true);
              });
            else
              this.startLevel(true);
          });

        this.options.clicked(click, tag => {
          if (tag === REPEAT_TAG) this.showAvatar(this.avatar.getLastMessage()); 
        });
      }
      else {
        this.modal.clicked(click, ({ close, feedback, kind, message, option }) => {
          if (kind === START_MODAL) {
            this.modal.setModalStrategy(null);
            this.startLevelGamePlay();
          }

          else if (kind === VALIDATION_MODAL) {
            this.modal.setModalStrategy(null);
            this.showValidationModal(false);
          }

          else if (kind === END_MODAL) {
            this.modal.setModalStrategy(null);
            if (option === EXIT_TAG)
              apiRequest.sendMessage('exit_game', 'Salir');
            else if (option === RESTART_TAG) {
              this.startGameElements();
              this.startLevelGamePlay();
            }
          }
          else if (kind === MINISECUENCE_MODAL) {
            if (close)
              this.modal.setModalStrategy(null); 

            this.showAvatar(message, () => {
              if (feedback) this.showFeedbackModal(false);
            });
          }
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
    // Calcular los espacios entre fichas
    spaceX = Math.floor(windowWidth * 0.008);
    spaceY = Math.floor(windowHeight * 0.01);

    this.currentScore = 0;
    this.endingLevel = false;
    this.lastLevel = 0;
    this.timeout = 3800;

    // Iniciar el administrador de niveles
    this.levelManager = new LevelManager([
      new LevelSecuenciaOne(this.cardFactory),
      new LevelSecuenciaTwo(this.cardFactory),
      new LeveLSecuenciaThree(this.cardFactory),
      new LevelSecuenciaFour(this.cardFactory),
      new LevelSecuenciaFive(this.cardFactory),
      new LevelSecuenciaSix(this.cardFactory),
      new LevelSecuenciaSeven(this.cardFactory),
    ]);
    this.levelManager.startGameElements();

    // Crear las opciones del juego
    this.options = this.createOptions();

    // Crear la imagen del jugador
    this.playerThumb = this.createPlayerThumb();

    // Crear el puntaje del jugador
    this.score = this.createScore();

    // Inicar las validaciones al finalizar cada nivel
    this.validationOptions = [{ word: 'Solo' }, { word: 'Con apoyo' }, { word: 'No lo hizo' }]
  }

  /**
   * @description
   * Método dónde se verifican las reglas del juego al ejecutarse
   * movimiento del jugador.
   * @returns void.
   */
  validateMovementRules() {
    this.levelManager.validateMovementRules();
  }

  // Otros métodos de la clase

  /**
   * @description 
   * Método encargado de cambiar el nivel actual de juego. De igual forma 
   * detecta si el juego ha llegado a su fin.
   * @returns void.
   */
  changeLevel() {
    this.levelManager.changeLevel(endReached => {
      if (endReached) {
        // Al llegar al final del juego, mostrar último mensaje del avatar y modal final
        this.showAvatar('¡Lo lograste! Has completado la actividad.');
        const modalStrategy = new EndGameModalStrategy(this.modal.getModalArea(), this.score.getScore());
        this.modal.setModalStrategy(modalStrategy);
      }
      else
        this.startLevel();
    });
  }

  /**
   * @description 
   * Método encargado de crear un GameObjectOptions
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
    const y = windowHeight - radius - (spaceY * 1.5);
    return new GameObjectPlayer(x, y, width, width, PLAYER_TAG);
  }

  /**
   * @description
   * Método encargado de crear el objeto GameObjectScore.
   * @returns GameObjectScore.
   */
  createScore() {
    const width = Math.floor(windowWidth * 0.03);
    const fixedWidth = width + (spaceX * 2);
    const radius = Math.floor(this.playerThumb.getWidth() / 2);
    const x = this.playerThumb.getPosition().x - radius - fixedWidth - (spaceX * 0.8);
    const y = this.playerThumb.getPosition().y - Math.floor(width / 4);
    return new GameObjectScore(x, y, fixedWidth, width, SCORE_TAG);
  }

  /**
   * @description
   * Método encargado de hacer hablar al avatar asignándole un mensaje nuevo.
   * @param {String} message 
   * String que representa el mensaje que el avatar pronunciará.
   * @param {Function} callback 
   * Función de retorno que se ejecuta cuando el avatar ha terminado de pronunciar
   * el mensaje.
   * @returns void.
   */
  showAvatar(message, callback) {
    this.avatar.speak(message, callback);
  }

  /**
   * @description 
   * Método encargado de mostrar o no el modal de feedback.
   * @param {Boolean} show 
   * Booleano que indica si se debe mostrar o no el modal de feedback.
   * @param {String} iconUrl
   * String que representa la URL de la imagen que se usará en el modal.
   * @returns void.
   */
  showFeedbackModal(show, iconUrl = null) {
    if (show) {
      const sprite = new Sprite(iconUrl, '');
      const modalStrategy = new ImageModalStrategy(this.modal.getModalArea(), sprite);
      this.modal.setModalStrategy(modalStrategy);
    }
    else
      this.modal.setModalStrategy(null);
  }

  /**
   * @description 
   * Método encargado de mostrar o no el modal de mini secuencias.
   * @param {Object} minisecuence 
   * Objeto que contiene la información de fichas y pictogramas para 
   * armar el modal de mini secuencias.
   * @returns void.
   */
  showMiniSecuenceModal(minisecuence) {
    if (minisecuence) {
      const { cards, pictograms } = minisecuence;
      const modalStrategy = new MiniSecuenceModalStrategy(this.modal.getModalArea(), cards, pictograms);
      this.modal.setModalStrategy(modalStrategy)
    }
  }

  /**
   * @description 
   * Método encargado de mostrar o no el modal de validación.
   * @param {Boolean} show 
   * Booleano que indica si se debe mostrar el modal de validación o no.
   * @returns void.
   */
  showValidationModal(show) {
    if (show) {
      const modalStrategy = new ValidationModalStrategy(this.modal.getModalArea(), this.validationOptions, '¿Cómo lo resolvió?', {
        getChoices: false,
        multipleChoices: false,
        saveChoices: true,
        saveFunction: 'updateFeedByLevel'
      });
      this.modal.setModalStrategy(modalStrategy);
    }
    else setTimeout(() => { this.changeLevel(); }, 2000);
  }

  /**
   * @description 
   * Método encargado de iniciar el nivel actual.
   * @param {Boolean} restart 
   * Booleano que inidica si se está reiniciando in nivel o no.
   * @returns void.
   */
  startLevel(restart = false) {
    this.levelManager.startGameElements();
    this.startLevelGamePlay(restart);
  }

  /**
   * @description
   * Método encargado de iniciar el gameplay del nivel actual. El gameplay de un nivel 
   * inicia con las primeras instrucción dada por el avatar.
   * @param {Boolean} restart 
   * Booleano que indicia si se está reiniciando un nivel o no.
   * @returns void.
   */
  startLevelGamePlay(restart = false) {
    this.levelManager.startLevelGamePlay(message => {
      // Crear un nuevo nivel siempre y cuando no se esté reiniciando el nivel actual
      if (!restart) {
        const level = this.levelManager.currentIndex + 1;
        if (this.lastLevel !== level) {
          apiRequest.createLevel(level);
          this.lastLevel = level; 
        }
      }
      this.showAvatar(message);
    });
  }
}