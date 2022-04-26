/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description 
 * La clase LevelSecuenciaSix representa el sexto nivel del 
 * videojuego Secuencia. Esta clase implementa los métodos abtractos 
 * de la clase padre Level.
 * 
 * El sexto nivel de Secuencia consiste en escribir la historia presentada 
 * en la secuencia de imágenes.
 * 
 * @subclassof Level.
 */

class LevelSecuenciaSix extends Level {

  /**
   * @description 
   * Constructor de la clase.
   * @param {CardFactory} cardFactory 
   * Objeto que representa la fábrica de fichas.
   * @returns LevelSecuenciaSix.
   */
  constructor(cardFactory) {
    super(cardFactory);

    // Atributos
    this.continueButton;
    this.foeDeck;
    this.textarea;
  }

  // Implementación de métodos abstractos

  /**
   * @description 
   * Método dónde se dibujan los objetos del nivel.
   * @returns void.
   */
  drawGameObjects() {
    image(this.background, 0, 0, windowWidth, windowHeight);

    // Dibujar el deck de fichas
    this.foeDeck.draw();

    // Dibujar el botón de continuar sólo si hay texto en el textarea
    if (this.textarea.elt.value.trim() !== '')
      this.continueButton.draw();
  }

  /**
   * @description 
   * Método donde se administran las acciones de click ejecutadas 
   * por el mouse.
   * @param {Function} callback 
   * Función de retorno que se ejecuta cuando se han realizado acciones 
   * relacionadas con el evento de click.
   * @returns void.
   */
  handleMousePressed(callback) {
    const click = createVector(mouseX, mouseY);

    if (this.textarea.elt.value.trim() !== '')
      this.continueButton.clicked(click, () => {
        const feed = { tale: this.textarea.elt.value };
        callback({ feed, feedback: GOOD_ICON, message: 'Gracias por contarme la historia.', next: true });
        this.textarea.elt.value = '';
        this.textarea.style('opacity', '0.085');
        setTimeout(() => { this.textarea.remove(); }, 6300);
      });
  }

  /**
   * @description 
   * Método dónde se inicializan los elementos del nivel.
   * @returns void.
   */
  startGameElements() {
    this.background = loadImage(SECUENCE_BACKGROUND_2);

    // Iniciar el deck de fichas
    this.foeDeck = this.createCardDeck(FOE_TAG);

    // Descubrir las fichas del foeDeck
    this.uncoverFoeDeckCards();

    // Crear el textarea para escribir la historia 
    this.createTextArea();

    // Crear el botón de continuar 
    this.createContinueButton();
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
    callback('Ahora cuéntame toda la historia.');
    this.textarea.style('opacity', '0.5');
  }

  // Otros métodos

  /**
   * @description 
   * Método encargado de crear un GameObjectDeck.
   * @param {String} tag 
   * String que actúa como un identificador para el GameObjectDeck.
   * @returns GameObjectDeck.
   */
  createCardDeck(tag) {
    const { cards } = gameData;
    return this.cardFactory.createCardDeck({ tag, cards }, cards.length);
  }

  /**
   * @description
   * Método encargado de crear el botón de continuar.
   * @returns void.
   */
  createContinueButton() {
    // Calcular el tamaño del botón
    const width = Math.floor((windowWidth * 0.2) + (spaceX * 2));
    const height = Math.floor(getTextSize() + (spaceY * 2));

    // Calcular posición cons respecto al textarea
    const textAreaYPosition = this.textarea.position().y;
    const textAreaHeight = this.textarea.size().height;
    const x = Math.floor((windowWidth / 2) - (width / 2));
    const y = Math.floor(textAreaYPosition + textAreaHeight + (spaceY * 4));
    this.continueButton = new GameObjectButton(x, y, width, height, CONTINUE_TAG, 'Continuar');
  }

  /**
   * @description 
   * Método encargado de crear el textarea para escribir la historia.
   * @returns void.
   */
  createTextArea() {
    this.textarea = createElement('textarea');

    // Calcular la posición del textarea
    const x = this.foeDeck.getPosition().x;
    const y = Math.floor((windowHeight / 2) - (spaceY * 4));
    this.textarea.position(x, y);

    // El tamaño del textarea será igual al tamaño del foeDeck
    const width = this.foeDeck.getWidth() - 25;
    const height = this.foeDeck.getHeight() - 30;
    this.textarea.size(width, height);

    // Estilos adicionales
    this.textarea.style('background-color', DARK_GREEN_COLOR);
    this.textarea.style('border', 'none');
    this.textarea.style('border-radius', '5px');
    this.textarea.style('box-shadow', 'none');
    this.textarea.style('color', 'white');
    this.textarea.style('font-size', 'xx-large');
    this.textarea.style('opacity', '0.085');
    this.textarea.style('padding', '12px');
    this.textarea.style('resize', 'none');
  }

  /**
   * @description 
   * Método encargado de descubrir las fichas del deck de fichas foe.
   * @returns void.
   */
  uncoverFoeDeckCards() {
    const foeCards = this.foeDeck.getCards();
    foeCards.forEach(foeCard => {
      foeCard.setHidden(false);
    });
  }
}
