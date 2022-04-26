/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * El archivo constants.js recopila un conjunto de valores que
 * se usan en los juegos. Estos valores son constantes, es decir,
 * no cambian a lo largo de la ejecución del juego.
 */


// Constantes relacionadas a diversas configuraciones y URLs en el juego
const GAME_DATA_URL = 'data/gamedata.json';

const BONUS_AUDIO = 'audios/bonus.mp3';
const MATCH_AUDIO = 'audios/match.mp3';
const MISSMATCH_AUDIO = 'audios/missmatch.mp3';

const AVATAR_IMAGE = 'images/am1_cafe_negro_azul.png';
const BOY_IMAGE = 'images/boy.png';
const GIRL_IMAGE = 'images/girl.png';
const MOM_IMAGE = 'images/mom.png';
const SCARED_BOY_IMAGE = 'images/scared_boy.png';
const AVATAR_THUMBNAIL = 'images/avatar_a_default_thumbnail.png';
const ARROW_FLIP_ICON = 'images/arrow_flip.png';
const BOY_FACE_ICON = 'images/boy_face.png';
const BOY_FACE_ICON_2 = 'images/boy_face_2.png';
const CHECKED_ICON = 'images/checked.png';
const DOMINO_CARD_BACK = 'images/domino_back.png';
const GIRL_FACE_ICON = 'images/girl_face.png';
const GOOD_ICON = 'images/good.png';
const HAND_ICON = 'images/hand.png';
const MESSAGE_DISABLED_ICON = 'images/message_disabled.png';
const MESSAGE_ENABLED_ICON = 'images/message_enabled.png';
const PAUSE_ICON = 'images/pause.png';
const PLAY_ICON ='images/play.png';
const SOUND_DISABLED_ICON = 'images/sound_disabled.png';
const SOUND_ENABLED_ICON = 'images/sound_enabled.png';
const REPEAT_ICON = 'images/repeat.png';
const STAR_ICON = 'images/star.png';
const THINK_ICON = 'images/think.png';
const UNCHECKED_ICON = 'images/unchecked.png';
const END_BACKGROUND = 'images/end_background.png';
const MINISECUENCE_BACKGROUND = 'images/minisecuence_background.png';
const SECUENCE_BACKGROUND_1 = 'images/secuencia_background_1.png';
const SECUENCE_BACKGROUND_2 = 'images/secuencia_background_2.png';
const SECUENCE_BACKGROUND_3 = 'images/secuencia_background_3.png';
const SECUENCE_BACKGROUND_4 = 'images/secuencia_background_4.png';
const SORTING_ROOM_BACKGROUND_1 = 'images/ordenando_cuarto_background_1.png';
const SORTING_ROOM_BACKGROUND_2 = 'images/ordenando_cuarto_background_2.png';
const SORTING_ROOM_BACKGROUND_3 = 'images/ordenando_cuarto_background_3.png';
const VALIDATION_BACKGROUND = 'images/validation_background.png';

const CAMBIAR_DISABLED_ICON = 'images/action_cambiar_disabled.png';
const CAMBIAR_ENABLED_ICON = 'images/action_cambiar_enabled.png';
const DOBLAR_DISABLED_ICON = 'images/action_doblar_disabled.png';
const DOBLAR_ENABLED_ICON = 'images/action_doblar_enabled.png';
const GUARDAR_DISABLED_ICON = 'images/action_guardar_disabled.png';
const GUARDAR_ENABLED_ICON = 'images/action_guardar_enabled.png';
const LAVAR_DISABLED_ICON = 'images/action_lavar_disabled.png';
const LAVAR_ENABLED_ICON = 'images/action_lavar_enabled.png';
const LIMPIAR_DISABLED_ICON = 'images/action_limpiar_disabled.png';
const LIMPIAR_ENABLED_ICON = 'images/action_limpiar_enabled.png';
const PLANCHAR_DISABLED_ICON = 'images/action_planchar_disabled.png';
const PLANCHAR_ENABLED_ICON = 'images/action_planchar_enabled.png';
const PONER_DISABLED_ICON = 'images/action_poner_disabled.png';
const PONER_ENABLED_ICON = 'images/action_poner_enabled.png';
const QUITAR_DISABLED_ICON = 'images/action_quitar_disabled.png';
const QUITAR_ENABLED_ICON = 'images/action_quitar_enabled.png';


// Constantes relacionadas con estilos y colores en el juego
const BLACK_COLOR = '#000000';
const BLUE_COLOR = '#2980B9';
const BROWN_COLOR = '#A04000';
const DARK_BLUE_COLOR = '#2471A3';
const DARK_GREEN_COLOR = '#015021';
const DARK_PURPLE_COLOR = '#8E44AD';
const GLOW_COLOR = '#33FF00';
const GRAY_COLOR = '#2C3E50';
const GREEN_COLOR = '#098233';
const LIGHT_BLUE_COLOR = '#3498DB';
const LIGHT_GREEN_COLOR = '#1ABC9C';
const LIGHT_PURPLE_COLOR = '#AF7AC5';
const LIGHT_RED_COLOR = '#F1948A';
const MARFIL_COLOR = '#FCF8EC';
const RED_COLOR = '#E74C3C';
const YELLOW_COLOR = '#F1C40F';
const WHITE_COLOR = '#FFFFFF';

const CHECK_TEXT_SIZE = 1.4;
const GAME_FONT = 'Comic Sans MS';


// Constantes para realizar validaciones de movimientos que pueden 
// presentarse en el jugador
const DONE = 'DONE';            // Acción de término de la jugada del usuario
const DRAG = 'DRAG';            // Acción para arrastrar una ficha
const EAT = 'EAT';              // Acción de comer una ficha aleatoria
const FLIP = 'FLIP';            // Acción de intercambiar los lados de una ficha
const PLAY = 'PLAY';            // Acción de realizar una jugada
const PUT = 'PUT';              // Acción para colocar una ficha de manera automática
const PUT_BACK = 'PUT_BACK';    // Acción para devolver una ficha automáticamente
const RETURN = 'RETURN';        // Acción de retornar una ficha a su posición original
const VALIDATE = 'VALIDATE';    // Acción de validar la jugada del usuario


// Constantes cuyo valor esta relacionado a los tag de los elementos
// del juego.
const ARROW_FLIP_TAG = 'ARROW_FLIP';
const AVATAR_TAG = 'AVATAR';
const CHECK_TAG = 'CHECK';
const CONTINUE_TAG = 'CONTINUE';
const ERROR_TAG = 'ERROR';
const EXIT_TAG = 'EXIT';
const FEMALE_TAG = 'F';
const FOE_TAG = 'FOE';
const GIF_TAG = 'GIF';
const HIDDEN_TAG = 'HIDDEN';
const ITEM_TAG = 'ITEM';
const MALE_TAG = 'M';
const ME_TAG = 'ME';
const MESSAGE_TAG = 'MESSAGE';
const MODAL_TAG = 'MODAL';
const MOM_TAG = 'MOM';
const OPTIONS_TAG = 'OPTIONS';
const PICTOGRAM_ACTION_TAG = 'PICTOGRAM_ACTION';
const PICTOGRAM_TAG = 'PICTOGRAM';
const PLAY_TAG = 'PLAY';
const PLAYED_TAG = 'PLAYED';
const PLAYER_TAG = 'PLAYER';
const RANDOM_TAG = 'RANDOM';
const REPEAT_TAG = 'REPEAT';
const RESTART_TAG = 'RESTART';
const SCORE_TAG = 'SCORE';
const SOUND_TAG = 'SOUND';
const START_TAG = 'START';
const SUCCESS_TAG = 'SUCCESS';
const UPDATE_TAG = 'UPDATE';
const VALIDATE_TAG = 'VALIDATE';


// Otras constantes
const LEFT = 'LEFT';
const RIGHT = 'RIGHT';

const END_MODAL = 'END_MODAL';
const MINISECUENCE_MODAL = 'MINISECUENCE_MODAL';
const START_MODAL = 'START_MODAL';
const VALIDATION_MODAL = 'VALIDATION_MODAL';

// Estructuras constantes
const SORTING_ACTIONS = { // Representan verbos
  Cambiar: {  
    path: CAMBIAR_DISABLED_ICON,
    path_enabled: CAMBIAR_ENABLED_ICON,
    tag: 'Cambiar',
  }, 
  Doblar: {
    path: DOBLAR_DISABLED_ICON,
    path_enabled: DOBLAR_ENABLED_ICON,
    tag: 'Doblar'
  }, 
  Guardar: {
    path: GUARDAR_DISABLED_ICON,
    path_enabled: GUARDAR_ENABLED_ICON,
    tag: 'Guardar'
  }, 
  Lavar: {
    path: LAVAR_DISABLED_ICON,
    path_enabled: LAVAR_ENABLED_ICON,
    tag: 'Lavar'
  }, 
  Limpiar: {
    path: LIMPIAR_DISABLED_ICON,
    path_enabled: LIMPIAR_ENABLED_ICON,
    tag: 'Limpiar',
  }, 
  Planchar: {
    path: PLANCHAR_DISABLED_ICON,
    path_enabled: PLANCHAR_ENABLED_ICON,
    tag: 'Planchar'
  }, 
  Poner: {
    path: PONER_DISABLED_ICON,
    path_enabled: PONER_ENABLED_ICON,
    tag: 'Poner',
  }, 
  Quitar: {
    path: QUITAR_DISABLED_ICON,
    path_enabled: QUITAR_ENABLED_ICON,
    tag: 'Quitar'
  }
};