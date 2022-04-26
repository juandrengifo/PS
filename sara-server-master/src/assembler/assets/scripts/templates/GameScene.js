/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase GameScene implementará el Patrón de Diseño
 * Template Method. Los métodos ejecutados por las funciones
 * de p5.js serán los métodos template. Cada hijo de esta clase
 * implementa los métodos abstractos que componen a los métodos template.
 */

class GameScene {

  /**
   * @description
   * Constructor de la clase
   * @returns GameScene
   */
  constructor() {

    // Atributos
    this.audio;
    this.avatar;
    this.cardFactory;
    this.modal;
    this.options;
    this.score;
  }

  // Métodos que son ejecutados por las funciones principales
  // de la librería p5. 

  /**
   * @description
   * Método template ejecutado por la función de p5.js setup().
   * @returns void
   */
  setup() {
    // Creación de la fábrica de fichas
    const { variability: { cardFactoryStrategy }} = gameData;
    const _cardFactoryStrategy = eval(`new ${factories[cardFactoryStrategy]}()`);
    this.cardFactory = new CardFactory();
    this.cardFactory.setCardFactoryStrategy(_cardFactoryStrategy);

    // Creación del audio player del juego
    this.audio = new AudioPlayer();

    // Creación del modal
    this.modal = new GameObjectModal(0, 0, windowWidth, windowHeight, MODAL_TAG);

    // Creación del avatar del juego
    this.avatar = new GameObjectAvatar(0, 0, windowWidth, windowHeight, AVATAR_TAG);

    this.startGameElements();

    // Asignar el modal de inicio
    this.modal.setModalStrategy(new StartGameModalStrategy(this.modal.getModalArea()));
  }

  /**
   * @description
   * Método template ejecutado por la función de p5.js draw().
   * @returns void
   */
  draw() {
    this.drawGameObjects();
    this.executeMovements();
    this.validateMovementRules();
  }

  /**
   * @description
   * Método template ejecutado por la función de p5.js 
   * mousePressed().
   * @returns void
   */
  mousePressed() {
    this.handleMousePressed();
  }

  // Métodos abstractos que implementan los hijos

  /**
   * @description
   * Método abstracto para dibujar los elementos del juego.
   * @returns void.
   */
  drawGameObjects() {}

  /**
   * @description
   * Método abstracto para realizar los diferentes movimientos
   * de los objetos.
   * @returns void
   */
  executeMovements() {}

  /**
   * @description
   * Método abstracto para administrar las acciones de click
   * ejecutadas por el mouse.
   * @returns void.
   */
  handleMousePressed() {}

  /**
   * @description
   * Método abstracto para iniciar las distintas variables
   * del juego.
   * @returns void.
   */
  startGameElements() {}

  /**
   * @description
   * Método abstracto para validar las reglas del juego cuando
   * se ejecutan movimientos del jugador.
   * @returns void.
   */
  validateMovementRules() {}
}