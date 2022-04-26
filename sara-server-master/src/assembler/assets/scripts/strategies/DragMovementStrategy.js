/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase DragMovementStrategy implementa el movimiento de tipo 
 * drag o arrastre.
 */

class DragMovementStrategy {

  /**
   * @description 
   * Constructor de la clase.
   * @returns SimpleMovementStrategy.
   */
  constructor() {}

  // Métodos de la clase

  /**
   * @description
   * Metodo encargado de mover un objeto usando drag o arrastre.
   * @param {GameObject} object 
   * Objeto que se desar mover.
   * @param {p5.Vector} toPosition 
   * Posición a la que se desea mover el objeto.
   * @returns void.
   */
  move(object, toPosition) {
    // Calcular la posición de la ficha para que quede centrada con respecto
    // a la posición del cursor.
    const width = object.getWidth();
    const height = object.getHeight();
    const x = Math.floor(toPosition.x - (width / 2));
    const y = Math.floor(toPosition.y - (height / 2)); 
    object.setPosition(createVector(x, y));
  }
}