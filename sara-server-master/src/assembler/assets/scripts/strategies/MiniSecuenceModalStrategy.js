/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description 
 * La clase MiniSecuenceModalStrategy representa la estrategia que define 
 * la estructura y el comportamiento del modal de minijuego lanzado en 
 * el nivel tres de Secuencia.
 */

class MiniSecuenceModalStrategy {

  /**
   * @description 
   * Constructor de la clase.
   * @param {Object} area 
   * Objeto que contiene la información del área de 
   * visualización de la ventana modal.
   * @param {Array} cards 
   * @param {Array} pictograms 
   * @returns MiniSecuenceModalStrategy.
   */
  constructor(area, cards, pictograms) {

    // Atributos
    this.area = area;
    this.badMoves = 0;
    this.background = new Sprite(MINISECUENCE_BACKGROUND, MINISECUENCE_MODAL);
    this.currentCard = null;
    this.currentPictograms = null;
    this.timeout = 4000;

    // Seleccionar las fichas y los pictogramas de forma aleatoria
    const { selectedCards, selectedPictograms } = this.prepareCards(cards, pictograms);
    this.cards = selectedCards;
    this.pictograms = selectedPictograms;

    this.startMiniSecuence();
  }

  /**
   * @description 
   * Método encargado de detectar el evento de click en los elementos 
   * del MiniSecuenceModalStrategy.
   * @param {p5.Vector} click 
   * Vector que define la posición del evento click.
   * @param {Function} callback 
   * Función de callback que se ejecuta cuando se realiza un click en 
   * un elemento del modal.
   * @returns void.
   */
  clicked(click, callback) {
    if (this.currentPictograms)
      this.currentPictograms.forEach(pictogram => {
        pictogram.clicked(click, () => { 
          const close = this.cards.length === 0;
          if (this.validateClickedPictogram(pictogram)) {
            pictogram.setCorrect(true);
            callback({ kind: MINISECUENCE_MODAL, message: '¡Muy bien!' });
            setTimeout(() => { 
              pictogram.setCorrect(null);
              if (close) callback({ 
                message: 'Ahora continúa con la secuencia.',
                kind: MINISECUENCE_MODAL, 
                close 
              });
              else this.startMiniSecuence(); 
            }, this.timeout - 600);
          }
          else {
            this.badMoves += 1;
            pictogram.setCorrect(false);
            if (this.badMoves < 2) {
              callback({ kind: MINISECUENCE_MODAL, message: 'Observa con atención la imagen.' });
              setTimeout(() => { pictogram.setCorrect(null); }, this.timeout);
            }
            else {
              callback({ kind: MINISECUENCE_MODAL, message: 'Mira la respuesta correcta.' });
              this.showCorrectPictogram();
              setTimeout(() => { 
                pictogram.setCorrect(null);
                if (close) callback({ 
                  message: 'Ahora continúa con la secuencia.', 
                  kind: MINISECUENCE_MODAL, 
                  close 
                });
                else this.startMiniSecuence();
              }, this.timeout);
            }
          }
        });
      });
  }

  /**
   * @description 
   * Método encargado de dibujar los elementos del área de 
   * visualización de la ventana modal.
   * @returns void.
   */
  draw() {
    noStroke();
    const { position, width, height } = this.area;
    this.background.draw(position, width, height);

    if (this.currentCard)
      this.currentCard.draw();

    if (this.currentPictograms) 
      this.currentPictograms.forEach(pictogram => {
        pictogram.draw();
      });
  }

  /**
   * @description 
   * Método encargado de seleccionar aleatoriamente las fichas que se 
   * usarán en la mini secuencia. Se seleccionan tres fichas y para 
   * cadda una tres pictogramas, siendo uno de ellos el correcto.
   * @param {Array} cards 
   * Array que contiene las fichas originales de la secuencia.
   * @param {Array} pictograms 
   * Array que contiene los pictogramas originales que se relacionan a 
   * las fichas originales de la secuencia.
   * @returns Object.
   */
  prepareCards(cards, pictograms) {
    const { position, width, height } = this.area;
    // Seleccionar aleatoriamente 3 fichas
    let temporalCards = [ ...cards ];
    let selectedCards = [];
    for (let i = 0; i < 3; i++) {
      const randomIndex = Math.floor(Math.random() * temporalCards.length);
      const selectedCard = temporalCards.splice(randomIndex, 1)[0];
      selectedCard.setHidden(false);

      // Actualizar la posición de la ficha
      const y = position.y + (Math.floor((height / 2) - (selectedCard.getHeight() / 2)));
      const x = position.x + (spaceX * 14);
      selectedCard.setPosition(createVector(x, y));

      selectedCards.push(selectedCard);
    }

    // Seleccionar tres pictogramas (uno correcto y dos aleatorios) por cada ficha
    let selectedPictograms = [];
    selectedCards.forEach((card, i) => {
      const listOfPictograms = pictograms[i];
      let temporalPictograms = pictograms[i];
      let innerPictograms = [];

      // Seleccionar el pictograma correcto
      const cardPictogram = card.getCardStructure().pictogram;
      listOfPictograms.forEach((pictogram, i) => {
        if (cardPictogram.id === pictogram.getCardStructure().id) {
          const selectedPictogram = temporalPictograms.splice(i, 1)[0];
          innerPictograms.push(selectedPictogram);
        }
      });

      // Seleccionar dos pictogramas aleatorios
      let randomIndex = Math.floor(Math.random() * temporalPictograms.length);
      const selectedPictogramOne = temporalPictograms.splice(randomIndex, 1)[0];
      innerPictograms.push(selectedPictogramOne);

      randomIndex = Math.floor(Math.random() * temporalPictograms.length);
      const selectedPictogramTwo = temporalPictograms.splice(randomIndex, 1)[0];
      innerPictograms.push(selectedPictogramTwo);

      // Desordenar los pictogramas seleccionados
      innerPictograms = this.unsortPictograms(innerPictograms);

      // Valores necesarios para actualizar la posición de los pictogramas seleccionados
      const innerPictogramsLen = innerPictograms.length;
      const pictogramWidth = selectedPictogramOne.getWidth();
      const pictogramHeight = selectedPictogramOne.getHeight();
      const innerPictogramsHeight = Math.floor((innerPictogramsLen * pictogramHeight) + (spaceY * 2));
      const startY = position.y + Math.floor((height / 2) - (innerPictogramsHeight / 2));

      // Actualizar la posición de los pictogramas seleccionados
      innerPictograms.forEach((pictogram, i) => {
        const x = position.x + width - pictogramWidth - (spaceX * 17);
        const y = startY + (i * (pictogramHeight + spaceY));
        pictogram.setPosition(createVector(x, y));
      });

      // Agregar a la lista general de pictogramas seleccionados
      selectedPictograms.push(innerPictograms);
    });

    return { selectedCards, selectedPictograms };
  }

  /**
   * @description 
   * Método encargado de mostrar el pictograma correcto.
   * @returns void.
   */
  showCorrectPictogram() {
    let correctPictogram = null;
    this.currentPictograms.forEach(pictogram => {
      const correct = pictogram.getCardStructure().id === this.currentCard.getCardStructure().pictogram.id;
      pictogram.setCorrect(correct ? correct : null);

      if (correct) correctPictogram = pictogram;
    });

    setTimeout(() => { correctPictogram.setCorrect(null); }, this.timeout);
  }

  /**
   * @description 
   * Método encargado de iniciar la mini secuencia eligiendo las 
   * fichas para mostrar.
   * @returns void.
   */
  startMiniSecuence() {
    this.badMoves = 0;
    this.currentCard = this.cards.shift();
    this.currentPictograms = this.pictograms.shift();
  }

  /**
   * @description 
   * Método encargado de desordenar la lista de pictogramas.
   * @param {Array} pictograms 
   * @returns Array.
   */
  unsortPictograms(pictograms) {
    let temporalPictograms = [ ...pictograms ];
    let unsortedPictograms = [];

    pictograms.forEach(() => {
      const randomIndex = Math.floor(Math.random() * temporalPictograms.length);
      unsortedPictograms.push(temporalPictograms.splice(randomIndex, 1)[0]);
    });

    return unsortedPictograms;
  }

  /**
   * @description
   * @param {GameObjectCard} pictogram 
   * @returns void.
   */
  validateClickedPictogram(pictogram) {
    return pictogram.getCardStructure().id === this.currentCard.getCardStructure().pictogram.id;
  }
}