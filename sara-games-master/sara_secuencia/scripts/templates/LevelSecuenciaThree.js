/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description 
 * La clase LevelSecuenciaThree representa el tercer nivel del 
 * videojuego Secuencia. Esta clase implementa los métodos abstractos 
 * de la clase padre Level. 
 * 
 * El tercer nivel de Secuencia consiste en identificar, por medio de 
 * pictogramas, la imagen escondida de la secuencia de imágenes.
 * 
 * @subclassof Level.
 */

class LeveLSecuenciaThree extends Level {

  /**
   * @description
   * Constructor de la clase.
   * @param {CardFactory} cardFactory 
   * Objeto que representa la fábrica de fichas.
   * @returns LevelSecuenciaThree.
   */
  constructor(cardFactory) {
    super(cardFactory);

    // Atributos
    this.attempts = 0;
    this.badMoves = 0;

    this.foeDeck;
    this.lastSelection;
    this.pictograms;
  }

  // Implementación de de los métodos abstractos

  /**
   * @override
   * @description 
   * Método donde se dibujan los objetos del nivel.
   * @returns void.
   */
  drawGameObjects() {
    image(this.background, 0, 0, windowWidth, windowHeight); 

    // Dibujar el deck de fichas
    this.foeDeck.draw();

    // Dibujar el deck de pictogramas
    this.pictograms.draw();
  }

  /**
   * @override
   * @description 
   * Método donde se realizan los diferentes movimientos de los 
   * objetos del nivel.
   * @returns void.
   */
  executeMovements() {

  }

  /**
   * @override
   * @description 
   * Método dónde se administran las acciones del click ejecutadas 
   * por el mouse.
   * @param {Function} callback 
   * Función de retorno que se ejecuta cuando se han realizado acciones 
   * relacionadas con el evento de click.
   * @returns void.
   */
  handleMousePressed(callback) {
    const click = createVector(mouseX, mouseY);

    this.pictograms.clicked(click, pictogram => {
      const { card } = pictogram;
      if (this.validateClickedPictogram(card)) {
        this.attempts += 1;
        if (this.attempts < 5)
          callback({ feedback: GOOD_ICON, message: '¡Muy bien!', next: false, restart: true, score: 3 });
        else {
          const feed = { hits: this.attempts, mistakes: this.badMoves }; 
          callback({ feed, feedback: GOOD_ICON, message: '¡Excelente!', next: true, score: 3 });
        }
      }
      else {
        this.badMoves += 1;
        if (this.badMoves < 4) {
          if (this.badMoves === 3)
            callback({ 
              message: 'Encuentra las imágenes que se relacionan con las escenas.', 
              minisecuence: {
                cards: this.createCardDeck(FOE_TAG).getCards(),
                pictograms: [
                  this.createCardDeck(PICTOGRAM_TAG).getCards(),
                  this.createCardDeck(PICTOGRAM_TAG).getCards(),
                  this.createCardDeck(PICTOGRAM_TAG).getCards(),
                ]
              }, 
              next: false 
            });
          else
            callback({ feedback: THINK_ICON, message: 'Inténtalo otra vez.', next: false });
        }
        else {
          this.showCorrectPictogram();
          callback({ message: 'Mira la respuesta correcta', next: false, restart: false });
          setTimeout(() => {
            const feed = { hits: this.attempts, mistakes: this.badMoves };
            callback({ feed, feedback: THINK_ICON, message: 'Sigue practicando más.', next: true });
          }, 4200);
        }
      }
    });
  }

  /**
   * @override
   * @description 
   * Método donde se inicializan los elementos del nivel.
   * @returns void
   */
  startGameElements() {
    this.background = loadImage(SECUENCE_BACKGROUND_3);

    // Inicializar el deck de fichas
    this.foeDeck = this.createCardDeck(FOE_TAG);

    // Preparar fichas del foeDeck
    this.prepareFoeDeckCards();

    // Inicializar el deck de pictogramas
    this.pictograms = this.createCardDeck(PICTOGRAM_TAG);

    // Desordenar los pictogramas
    this.pictograms.unsortCards();
  }

  /**
   * @override
   * @description 
   * Método encargado de iniciar el gameplay del nivel mediante el envío de las 
   * primeras instrucciones del avatar a la escena.
   * @param {Function} callback 
   * Función de retorno que contiene las instrucciones del avatar.
   * @returns void.
   */
  startLevelGamePlay(callback) {
    callback('Elige la imagen que se relaciona con la ficha que falta.');
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
    let cards = [];
    if (tag === FOE_TAG)
      cards = gameData.cards;
    else
      cards = gameData.cards.map(card => card.pictogram);

    return this.cardFactory.createCardDeck({ tag, cards }, cards.length);
  }

  /**
   * @description 
   * Método encargado de preparar las fichas: descubrir todas las fichas y 
   * esconder aleatoriamente una.
   * @returns void.
   */
  prepareFoeDeckCards() {
    const foeCards = this.foeDeck.getCards();
    foeCards.forEach(foeCard => { 
      foeCard.setHidden(false);
    });

    // Elegir aleatoriamente una ficha para esconder
    const randomIndex = Math.floor(Math.random() * foeCards.length);
    const foeCard = foeCards[randomIndex];
    foeCard.setHidden(true);

    // Verificar que la ficha seleccionada no sea la misma de la última selección
    if (this.lastSelection) {
      if (this.lastSelection.getCardStructure().tag !== foeCard.getCardStructure().tag)
        this.lastSelection = foeCard;
      else
        this.prepareFoeDeckCards();
    }
    else
      this.lastSelection = foeCard;
  }

  /**
   * @description 
   * Método encargado de mostrar el pictograma correcto.
   * @returns void.
   */
  showCorrectPictogram() {
    this.pictograms.getCards().forEach(pictogram => {
      if (this.validateClickedPictogram(pictogram))
        pictogram.setCorrect(true);
    });
  }

  /**
   * @description 
   * Método encargado de validar si el pictograma seleccionado concuerda con 
   * la ficha escondida.
   * @param {GameObjectCard} pictogram 
   * Ficha pictograma que se validará.
   * @returns Boolean.
   */
  validateClickedPictogram(pictogram) {
    const foeCards = this.foeDeck.getCards();

    let correct = false;
    foeCards.forEach(foeCard => {
      const foePictogram = foeCard.getCardStructure().pictogram;
      if (foeCard.getHidden() && foePictogram.id === pictogram.getCardStructure().id) {
        foeCard.setHidden(false);
        correct = true;
      }
    });

    return correct;
  }
}