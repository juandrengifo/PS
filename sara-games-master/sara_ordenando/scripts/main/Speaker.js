/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase Speaker es la encargada de utilizar el Speech API del navegador
 * para darle voz al GameObjectAvatar.
 */

class Speaker {
  
  /**
   * @description
   * Constructor de la clase.
   * @returns Speaker
   */
  constructor() {

    // Atributos
    this.synthesis = window.speechSynthesis;
    this.mainVoice;

    // Cargar la voz principal
    this.loadMainVoice('es-MX');
  }

  /**
   * @description
   * Método encargado de cargar la voz principal del 
   * sintetizador dependiendo del lenguaje.
   * @param {String} language
   * String cuyo valor representa el lenguaje de la voz 
   * a cargar.
   * @returns void
   */
  loadMainVoice(language) {
    this.setVoices((voices) => {
      console.log(voices);
      voices.forEach(voice => {
        if (voice.lang === language)
          this.mainVoice = voice;
      });
    });
  }

  /**
   * @description
   * Método encargado de cargar las voces disponibles del
   * sintetizador web.
   * @param {Function} callback
   * Función de callback que se ejecuta cuando las voces se 
   * han cargado.
   * @returns void 
   */
  setVoices(callback) {
    const timer = setInterval(() => {
      const voices = this.synthesis.getVoices();

      if (voices.length !== 0) {
        callback(voices);
        clearInterval(timer);
      }
    });
  }

  /**
   * @description
   * Método encargado de convertir el texto entrante en
   * voz.
   * @param {String} text
   * String cuyo valor es el texto que se desea convertir
   * en voz.
   * @param {Function} callback
   * Función de callback que que se ejecuta cuando el objeto
   * speech ha terminado de pronunciar todo el texto.
   * @returns void 
   */
  speak(text, callback) {
    const utterance = new SpeechSynthesisUtterance(text);
    utterance.voice = this.mainVoice;
    utterance.volume = muteGame ? 0 : 1;
    
    // Convertir el texto en voz
    this.synthesis.speak(utterance);

    // Detectar el momento en el que el sintetizador de voz 
    // termina de hablar
    utterance.onend = () => {
      callback();
    }
  }
}