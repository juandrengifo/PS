/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase GameData es la responsable de obtener los datos 
 * que representan la variabilidad parámetrica del juego. 
 * Esta variabilidad es importante debido a que el juego
 * es un producto de una Línea de Productos de Software.
 */

class GameData {

  /**
   * @description
   * Constructor de la clase
   * @param {String} dataUrl
   * String que contiene la url de la ubicación de los datos
   * del juego.
   * @returns GameData.
   */
  constructor(dataUrl) {

    // Atributos
    this.data = loadJSON(dataUrl); 
  }

  // Getters

  /**
   * @description
   * Método getter que retorna los datos que representan
   * la variabilidad por parámetros del juego.
   * @returns Object.
   */
  getData() {
    return this.data;
  }
}