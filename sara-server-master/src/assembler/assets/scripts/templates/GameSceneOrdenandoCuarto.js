/**
 * @author Martín Vladimir Alonso Sierra Galvis 
 * @maintainer Martín Vladimir Alonso Sierra Galvis 
 * @version 1.0.0
 * 
 * @description 
 * La clase GameSceneOrdenandoCuarto extiende de la clase GameSceneOrdenando y 
 * actúa como una especialización del Template Method, implementando funcionalidades 
 * propias de la mecánica Ordenando para el caso del cuarto.
 * @subclassof GameSceneOrdenando.
 */

class GameSceneOrdenandoCuarto extends GameSceneOrdenando {

  /**
   * @description 
   * Constructor de la clase.
   * @returns GameSceneOrdenandoCuarto.
   */
  constructor() {
    super();

    // Atributos
    this.localDemands = [{
      answer: [{ path: GIRL_FACE_ICON, word: 'Sofía' }, { path: BOY_FACE_ICON_2, word: 'Carlos' }, { path: BOY_FACE_ICON, word: 'Felipe' }],
      demand: 'Este es Felipe. ¿Quién es él?',
      expected: 'Felipe',
      errorMessage: 'Recuerda, él es Felipe.',
      question: 'Él es:'
    }, {
      answer: [{ word: 'No hizo \nla tarea' }, { word: 'No fue a \nla escuela' }, { word: 'No arregló \nsu cuarto' }],
      demand: 'Felipe está muy asustado porque su mamá lo regañó. ¿Sabes por qué lo regañó?',
      expected: 'No arregló \nsu cuarto',
      errorMessage: 'Recuerda, Felipe no arregló su cuarto.',
      question: 'Lo regañó porque:'
    }];

    this.bads;
  }

  // Implementación de métodos abstractos

  /**
   * @description 
   * Método abstracto encargado de definir las acciones a realizar para 
   * ciertos tipos de modal.
   * @param {Object} data 
   * Objeto que contiene información del modal.
   * @returns void.
   */
  handleModalClicked(data) {
    if (data.kind === VALIDATION_MODAL) {
      if (this.locally) {
        // Verificar las respuestas
        let continueStage = false;
        data.choices.forEach(choice => {
          if (choice.checked)
            if (choice.word === this.currentDemand.expected)
              continueStage = true;
        });

        if (continueStage) // Si la respuesta es la esperada continuar a la próxima etapa
          this.loadNextStage();
        else { // Si la respuesta es incorrecta verificar el número de malas
          this.bads ++;
          let message = 'Inténtalo nuevamente...';
          if (this.bads === 2) {
            message = this.localDemands[this.stage - 1].errorMessage;
            continueStage = true;
          }
          // Mostrar el modal de feedback
          this.showFeedbackModal(true);
          this.avatar.speak(message, () => {
            this.showFeedbackModal(false);
            if (continueStage) this.loadNextStage();
          });
        }
      }
      else this.showValidationModal(false, data.correct);
    }
  }

  /**
   * @description 
   * Método abstracto encargado de definir el area de destino para next_action.
   * @param {String} verb 
   * String cuyo valor corresponde a next_action.
   * @returns Object.
   */
  setDestinationAreaByVerb(verb) {
    let x;
    let y;
    let width;
    let height;
    if (verb === null || verb === 'Guardar') {
      width = Math.floor(windowWidth * 0.23);
      height = width * 2;
      x = Math.floor((windowWidth / 2) - (width / 2) - (spaceX * 2));
      y = Math.floor(windowHeight - height - (spaceY * 5));
    }
    else if (verb === 'Lavar') {
      width = Math.floor(windowWidth * 0.16);
      height = width * 1.7;
      x = Math.floor(windowWidth - width - (spaceX * 4));
      y = Math.floor(windowHeight - height - (spaceY * 5));
    }

    return { position: createVector(x, y), width, height };
  }

  /**
   * @description 
   * Método abstracto para implementar el fondo de las etapas del juego.
   * @param {Number} stage 
   * Entero que indica la etapa del juego.
   * @returns p5.Image.
   */
  setStageBackground(stage) {
    if (stage === 1 || stage === 2) return loadImage(SORTING_ROOM_BACKGROUND_1);
    else if (stage === 3) return loadImage(SORTING_ROOM_BACKGROUND_2);
    else if (stage === 4) return loadImage(SORTING_ROOM_BACKGROUND_3);
  }

  /**
   * @description 
   * Método abstracto para iniciar las etapas iniciales del juego.
   * @param {Number} stage 
   * Número que indica la etapa a iniciar.
   * @returns void.
   */
  startInitialStageElements(stage) {
    this.background = this.setStageBackground(stage);

    if (stage === 1) {
      this.bads = 0;
      this.locally = true;

      // Crear el personaje del niño
      this.boy = this.createCharacter(MALE_TAG);
    }
    else if (stage === 2) {
      this.bads = 0;
      this.locally = true;

      // Crear el personaje de la mamá
      this.mom = this.createCharacter(MOM_TAG);

      // Cambiar la expresión del niño
      this.boy.setSprite(new Sprite(SCARED_BOY_IMAGE, MALE_TAG));
    }
    else if (stage === 3) {
      this.bads = 0;
      this.locally = true;

      // Borrar el personaje de la mamá
      this.mom = null;

      // Crear el personaje de la niña
      this.girl = this.createCharacter(FEMALE_TAG);

      // Cambiar la expresión del niño
      this.boy.setSprite(new Sprite(BOY_IMAGE, MALE_TAG)); 

      // En esta etapa la demanda de la terapeuta debe lanzarse desde aquí 
      // pues no se hace uso de ningún modal de validación. Recuerda que la 
      // demanda es normalmente lanzada al cerrarse los modales
      setTimeout(() => {
        this.avatar.speak('Sofía, la hermana de Felipe, le quiere ayudar a organizar su cuarto.', () => {
          this.avatar.speak('Ayudemos a Felipe y a Sofía a organizarlo.', () => {
            setTimeout(() => {
              this.stage ++;
              this.startInitialStageElements(this.stage);
            }, 2000);
          });
        });
      }, 1000);
    }
    else {
      this.bads = 0;
      this.locally = false;
      this.startFinalStageElements();
      this.avatar.speak('¿Qué te gustaría hacer primero?', () => {
        this.setFirstDemandElements();
      });
    }
  }
}