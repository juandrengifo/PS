/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintaier Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase ApiRequest está encargada de agrupar todas
 * las peticiones que los juegos pueden realizar al 
 * servidor.
 */

class ApiRequest {

  /**
   * @description
   * Constructor de la clase.
   * @returns ApiRequest
   */
  constructor() {
    
    // Asignar el token
    if (!axios.defaults.headers.common['Auth-Token'])
      axios.defaults.headers.common['Auth-Token'] = token;

    this.apiURL = `${SERVER_URL}/api`;
  }

  // Métodos API

  // POST

  /**
   * @description
   * Método encargado enviar una petición para crear un
   * nivel en base de datos.
   * @param {Number} levelNumber
   * Número cuyo valor representa el nivel a crear.
   * @returns void 
   */
  createLevel(levelNumber) {
    const url = `${this.apiURL}/session/${sessionId}/levels`;
    const level = { 
      date_start: new Date(), 
      level: levelNumber, 
      id_session: sessionId 
    };

    axios.post(url, { level }).then(response => {
      const { data: { data, status }} = response;

      // Asignar identificador del nivel
      if (status === 200) levelId = data.id;
    });
  }

  /**
   * @description
   * Método encargado de enviar una petición para guardar 
   * la información de un emparejamiento.
   * @param {Object} matchData 
   * Objeto que contiene la información del emparejamiento.
   * @returns void
   */
  saveMatch(matchData) {
    const url = `${this.apiURL}/feedback/matches`;
    const match = { ...matchData, id_level: levelId };

    axios.post(url, { match });
  }

  /**
   * @description
   * Método encargado de enviar una petición para guardar 
   * la información de un elemento de la respuesta.
   * @param {Object} phraseData
   * Objeto que contiene la información del elemento de la
   * respuesta. 
   * @returns void
   */
  savePhrase(phraseData) {
    const url = `${this.apiURL}/feedback/phrases`;
    const phrase = { ...phraseData, id_level: levelId };

    axios.post(url, { phrase });
  }

  /**
   * @description 
   * Método encargado de enviar una petición para guardar 
   * la información obtenida de un nivel de secuencia (puede 
   * servir para otras actividades de tipo dinámicas).
   * @param {Object} secuenceData 
   * Objeto que contiene la información a guardar.
   * @returns void.
   */
  saveSecuence(secuenceData) {
    const url = `${this.apiURL}/feedback/secuences`;
    const secuence = { ...secuenceData, id_level: levelId };

    axios.post(url, { secuence });
  }

  /**
   * @description
   * Método encargado de enviar una petición para redirigir 
   * un mensaje a la aplicación web.
   * @param {String} event 
   * String cuyo valor representa el evento con el que se
   * envía el mensaje.
   * @param {String} message
   * String que contiene el mensaje que se desea enviar.
   * @returns void 
   */
  sendMessage(event, message) {
    const userId = gameData.user.id;
    const url = `${this.apiURL}/message`;
    const body = {
      userId,
      messageData: {
        customEvent: event,
        text: message
      }
    };

    axios.post(url, body);
  }

  // PUT

  /**
   * @description
   * Método encargado de enviar una petición para guardar 
   * el puntaje obtenido por el jugador.
   * @param {Number} score 
   * Número que representa el puntaje obtenido por el jugador.
   * @returns void
   */
  saveScore(score) {
    const userId = gameData.user.id;
    const url = `${this.apiURL}/user/${userId}`;
    const user = { score };

    axios.put(url, { user });
  }

  /**
   * @description 
   * Método encargado de actualizar feeds secuences (actividades dinámicas) 
   * dependiendo del id del nivel.
   * @param {Object} feedData 
   * Objeto que contiene la información a guardar.
   * @returns void.
   */
  updateFeedByLevel(feedData) {
    const url = `${this.apiURL}/feedback/secuences/levels/${levelId}`;
    const feed = { ...feedData };

    axios.put(url, { feed });
  }

  /**
   * @description
   * Método encargado de enviar una petición para actualizar 
   * el nivel en base de datos.
   * @param {Number} score 
   * @returns void
   */
  updateLevel(score) {
    const url = `${this.apiURL}/session/${sessionId}/levels/${levelId}`;
    const level = { date_end: new Date(), score };

    axios.put(url, { level });
  }
}