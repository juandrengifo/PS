/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase TwoDimensionMovementStrategy tiene como responsabilidad
 * la implementación del movimiento en dos dimensiones.
 */

class TwoDimensionMovementStrategy {

  /**
   * @description
   * Constructor de la clase
   * @returns TwoDimensionMovementStrategy
   */
  constructor() {

  }
  
  // Métodos de la clase

  /**
   * @description
   * Método encargado de mover un objeto usando el
   * movimiento en dos dimensiones
   * @param {GameObject} object
   * Objeto que se desea mover.
   * @param {p5.Vector} toPosition
   * Posición a la que se desea mover el objeto.
   * @param {Function} callback
   * Función de callback que se lanza cuando el movimiento
   * ha terminado.
   * @returns void
   */
  move(object, toPosition, callback) {
    // Obtener los componentes x e y de la posición del objeto
    // y de la posición de destino
    const x = object.getPosition().x;
    const y = object.getPosition().y;
    const toX = toPosition.x;
    const toY = toPosition.y;

    // Calcular el ángulo entre la posición inicial y la posición
    // final usando la función arcontangente
    const dx = toX - x;
    const dy = toY - y;

    const angle = Math.atan2(dy, dx);

    // Calcular las velocidades de los componentes x e y por medio
    // de una velocidad inicial y las funciones coseno y seno (leyes
    // del movimiento en dos dimensiones)
    const speedX = 6 * Math.cos(angle); // Cateto adyacente
    const speedY = 6 * Math.sin(angle); // Cateto opuesto

    // Actualizar los componentes x e y para la nueva posición
    const newX = Math.abs(dx) >= speedX ? x + speedX : toX;
    const newY = Math.abs(dy) >= speedY ? y + speedY : toY;

    // Actualizar la posición
    const newPosition = createVector(newX, newY);
    object.setPosition(newPosition);

    // Si los componentes en x e y nuevos son iguales a los 
    // componentes x e y de la posición de destino el movimiento
    // ha finalizado
    if (newX === toX && newY === toY)
      callback();
  }
}