/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description 
 * La clase LevelSecuenciaFour representa el cuarto nivel del 
 * videojuego Secuencia. Esta clase implementa los métodos abstractos 
 * de la clase padre Level.
 * 
 * El cuarto nivel de Secuencia consiste en inferir, por medio de pictogramas, 
 * que sucedió antes y que sucedió después en la cronología de la secuencia de imágenes.
 * 
 * @subaclassof Level.
 */

class LevelSecuenciaFour extends Level {

  /**
   * @description
   * Constructor de la clase.
   * @param {CardFactory} cardFactory 
   * Objeto que representa la fábrica de fichas.
   * @returns LevelSecuenciaFour.
   */
  constructor(cardFactory) {
    super(cardFactory);

    // Atributos
    this.badMoves = 0;
    this.cronoEnd = false;

    this.cronoCard;
    this.foeDeck;
    this.pictograms;
  }

  // Implementación de métodos abstractos

  /**
   * @description 
   * Método donde se dibujan los objetos del nivel.
   * @returns void.
   */
  drawGameObjects() {
    image(this.background, 0, 0, windowWidth, windowHeight);

    // Dibujar el deck de fichas
    this.foeDeck.draw();

    // Dibujar la ficha crono 
    this.cronoCard.draw();

    // Dibujar el deck de pictogramas
    this.pictograms.draw();
  }

  /**
   * @description
   * Método donde se administran las acciones del click ejecutadas 
   * por el mouse.
   * @param {Function} callback 
   * Función de retorno que se ejecuta cuando se han ralizado acciones 
   * relacionadas con el evento de click.
   * @returns void.
   */
  handleMousePressed(callback) {
    const click = createVector(mouseX, mouseY);

    this.pictograms.clicked(click, pictogram => {
      const { card } = pictogram;
      if (this.validateClickedPictogram(card)) {
        if (this.cronoEnd) {
          const feed = { hits: 2, mistakes: this.badMoves };
          callback({ feed, feedback: GOOD_ICON, message: '¡Excelente!', next: true, score: 3 });
        }
        else {
          this.cronoEnd = true;
          callback({ feedback: GOOD_ICON, message: '¡Muy bien!', next: false, restart: true, score: 3 });
        }
      }
      else {
        this.badMoves += 1;
        if (this.badMoves < 3) 
          callback({ feedback: THINK_ICON, message: 'Inténtalo otra vez.', next: false });
        else {
          this.showCorrecPictogram();
          callback({ message: 'Mira la respuesta correcta.', next: false, restart: false });
          setTimeout(() => {
            if (this.cronoEnd) {
              const feed = { hits: 0, mistakes: this.badMoves };
              callback({ feed, message: 'Sigue practicando más.', next: true });
            }
            else {
              this.cronoEnd = true;
              callback({ message: 'Continúa practicando.', next: false, restart: true });
            }
          }, 4200);
        }
      }
    });
  }

  /**
   * @description
   * Método dónde se inicializan los elementos del nivel.
   * @returns void.
   */
  startGameElements() {
    this.background = loadImage(SECUENCE_BACKGROUND_4);

    // Inicializar el deck de fichas
    this.foeDeck = this.createCardDeck(FOE_TAG);

    // Descubrir las fichas del foeDeck
    this.uncoverFoeDeckCards();

    // Elegir e inicializar la ficha crono
    this.cronoCard = this.loadCronoCard();

    // Inicializar el deck de pictogramas
    this.pictograms = this.createCardDeck(PICTOGRAM_TAG);

    // Desordenar los pictogramas
    this.pictograms.unsortCards();

    // Reemplazar el pictograma de la ficha crono
    this.replacePictogram();
  }

  /**
   * @description 
   * Método encargado de inicial el gameplay del nivel mediante el envío de 
   * las primeras instrucciones del avatar a la escena.
   * @param {Function} callback 
   * Función de retorno que contiene las instrucciones del avatar.
   * @returns void.
   */
  startLevelGamePlay(callback) {
    const instruction = this.cronoEnd ? 'Ahora busca una imagen que se relacione con lo que pasó después.' : 
                        'Busca una imagen que se relacione con lo que pasó antes.';    
    callback(instruction);
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
   * Método encargado de seleccionar e inicializar la ficha crono.
   * @returns GameObjectCard.
   */
  loadCronoCard() {
    const { cronoCards } = gameData;
    const cronoIndex = this.cronoEnd ? 1 : 0;

    // Calcular las posición de la ficha crono
    // Para calcular x tomar una ficha del deck como ejemplo
    const deckXPosition = this.foeDeck.getPosition().x;
    const deckWidth = this.foeDeck.getWidth();
    const foeCard = this.foeDeck.getCards()[0];
    const cardWidth = foeCard.getWidth();

    const x = Math.floor(this.cronoEnd ? deckXPosition + deckWidth + spaceX : deckXPosition - cardWidth - spaceX);
    const y = Math.floor(this.foeDeck.getPosition().y + spaceY);
    return this.cardFactory.createCard({ cards: cronoCards, index: cronoIndex, tag: FOE_TAG, x, y });
  }

  /**
   * @description
   * Método encargado de reemplazar un pictograma aleatorio de las fichas foe 
   * con el pictograma de la ficha crono actual.
   * @returns void.
   */
  replacePictogram() {
    const pictogramCards = this.pictograms.getCards();
    const randomIndex = Math.floor(Math.random() * pictogramCards.length);
    const pictogramCard = pictogramCards[randomIndex];
    
    // Calcular la posición del nuevo pictograma crono a parti del pictograma elegido
    const x = pictogramCard.getPosition().x;
    const y = pictogramCard.getPosition().y;

    // Construir el nuevo pictograma crono 
    const { cronoCards } = gameData;
    let cards = cronoCards.map(cronoCard => cronoCard.pictogram);
    const cronoIndex = this.cronoEnd ? 1 : 0;
    const newPictogramCard = this.cardFactory.createCard({ cards, index: cronoIndex, tag: PICTOGRAM_TAG, x, y });

    // Reemplazar el nuevo pictograma crono
    pictogramCards[randomIndex] = newPictogramCard;
  }

  /**
   * @description 
   * Método encargado de mostrar el pictograma correcto.
   * @returns void.
   */
  showCorrecPictogram() {
    this.pictograms.getCards().forEach(pictogram => {
      if (this.validateClickedPictogram(pictogram))
        pictogram.setCorrect(true);
    });
  }

  /**
   * @description 
   * Método encargado de descubrir las fichas del deck de fichas.
   * @returns void.
   */
  uncoverFoeDeckCards() {
    const foeCards = this.foeDeck.getCards();
    foeCards.forEach(foeCard => {
      foeCard.setHidden(false);
    });
  }

  /**
   * @description 
   * Método encargado de validar si el pictograma seleccionado concuerda 
   * con la ficha crono escondida.
   * @param {GameObjectCard} pictogram 
   * Ficha pictograma que se validará.
   * @returns Boolean.
   */
  validateClickedPictogram(pictogram) {
    const cronoPictogram = this.cronoCard.getCardStructure().pictogram;
    return cronoPictogram.id === pictogram.getCardStructure().id;
  }
}