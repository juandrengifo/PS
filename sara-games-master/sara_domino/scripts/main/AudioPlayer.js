/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * La clase AudioPlayer está encargada de ejecutar los distintos
 * audios del juego.
 */

class AudioPlayer {

  /**
   * @description
   * Constructor de la clase
   * @returns AudioPlayer
   */
  constructor() {

    // Atributos
    this.sounds = {
      bonus: loadSound(BONUS_AUDIO),
      match: loadSound(MATCH_AUDIO),
      missmatch: loadSound(MISSMATCH_AUDIO)
    };
  }

  /**
   * @description
   * Método encargado de ejecutar un sonido o un audio. 
   * @param {String} sound
   * String cuyo valor representa el audio que se desea
   * escuchar.
   * @returns void 
   */
  play(sound) {
    const volumeValue = muteGame ? 0 : 1;
    const soundToPlay = this.sounds[sound];
    soundToPlay.setVolume(volumeValue);
    soundToPlay.play();
  }
}