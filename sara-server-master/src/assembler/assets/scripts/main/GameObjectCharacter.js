/**
 * @author Martín Vladimir Alonso Sierra Galvis 
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description 
 * La clase GameObjectCharacter representa un personaje en el juego.
 * Esta clase implementa tanto su visualización como cuestiones de 
 * comportamiento (e.g. movimiento).
 * @subclassof GameObject.
 */

class GameObjectCharacter extends GameObject {

  /**
   * @description 
   * Constructor de la clase.
   * @param {Number} x 
   * Entero cuyo valor representa la posición en x de GameObjectCharacter.
   * @param {Number} y 
   * Entero cuyo valor representa la posición en y de GameObjectCharacter.
   * @param {Number} width 
   * Entero cuyo valor representa la longitud de GameObjectCharacter.
   * @param {Number} height 
   * Entero cuyo valor representa la altura de GameObjectCharacter.
   * @param {String} tag 
   * String que actúa como un identificador para GameObjectCharacter.
   * @param {Sprite} sprite 
   * Sprite que representa la imagen a dibujar de gameObjectCharacter.
   * @returns GameObjectCharacter.
   */
  constructor(x, y, width, height, tag, sprite) {
    super(x, y, width, height, tag);

    // Atributos 
    this.basePosition = createVector(x, y);
    this.movementStrategy = new TwoDimensionMovementStrategy();
    this.sprite = sprite;

    this.held;
  }

  // Getters 

  /**
   * @description 
   * Método para obtener la posición base del GameObjectCharacter.
   * @returns p5.Vector.
   */
  getBasePosition() {
    return this.basePosition;
  }

  /**
   * @description 
   * Método para obtener el objeto que el GameObjectCharacter sostiene.
   * @returns GameObject.
   */
  getHeld() {
    return this.held;
  }

  // Setters

  /**
   * @description 
   * Método para asignar el objeto que el GameObjectCharacter sostiene.
   * @param {GameObject} held 
   * GameObject que el GameObjectCharacter sostiene.
   * @returns void.
   */
  setHeld(held) {
    this.held = held;
  }

  /**
   * @description 
   * Método para asignar el sprite del GameObjectCharacter.
   * @param {Sprite} sprite 
   * Sprite para asignar al GameObjectCharacter.
   * @returns void.
   */
  setSprite(sprite) {
    this.sprite = sprite;
  }

  // Métodos de la clase

  /**
   * @description 
   * Método encargado de verificar si GameObjectCharacter fue clickeado.
   * @param {p5.Vector} click 
   * Vector que define la posición del evento click.
   * @param {Function} callback 
   * Función de retorno que se ejecuta si GameObjectCharacter fue clickeado.
   * @returns void.
   */
  clicked(click, callback) {
    if (checkBoundaries(this, click))
      callback();
  }

  /**
   * @description 
   * Método encargado de dibujar el GameObjectCharacter.
   * @returns void.
   */
  draw() {
    this.sprite.draw(this.position, this.width, this.height);

    if (this.held) {
      // Actualizar la posición del objeto sostenido
      const x = Math.floor(this.position.x - (this.held.getWidth() / 4.5));
      const y = Math.floor(this.position.y + ((this.height / 1.5) - (this.held.getHeight() / 3)));

      if (x !== this.held.getPosition().x || y !== this.held.getPosition().y)
        this.held.setPosition(createVector(x, y));
      
      this.held.draw();
    }
  }

  /**
   * @description 
   * Método encargado de mover el GameObjectCharacter.
   * @param {p5.Vector} toPosition 
   * Vector que define la posición a la que se desea mover el GameObjectCharacter.
   * @param {Function} callback 
   * Función de retorno que se ejecuta cuando el movimiento ha finalizado.
   * @returns void.
   */
  move(toPosition, callback) {
    this.movementStrategy.move(this, toPosition, () => {
      callback();
    });
  }
}