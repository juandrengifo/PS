/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * El archivo utilities contiene funciones que pueden ser útiles
 * en diferentes partes del proyecto.
 */

/**
 * @description
 * Función encargada de verificar si dos arrays son iguales.
 * @param {Array} arrayA 
 * Primer array para verificar.
 * @param {Array} arrayB 
 * Segundo array para verificar.
 * @returns Boolean
 */
function checkArrayEquals(arrayA, arrayB) {
  // Verificar que los parámtros son arrays
  const areArrays = Array.isArray(arrayA) && Array.isArray(arrayB);

  // Verificar que los dos arrays tienen la misma longitud
  const sameLengths = arrayA.length === arrayB.length;

  // Verificar cada elemento del array
  const sameValues = arrayA.every((element, index) => {
    return element === arrayB[index];
  });

  return areArrays && sameLengths && sameValues;
}

/**
 * @description
 * Función encargada de verificar si un evento click se realizó
 * dentro de los límites de un objeto del juego.
 * @param {GameObject} gameObject
 * Objeto con el que se desea verificar el evento del click. 
 * @param {p5.Vector} click 
 * Vector que representa la posición del evento click.
 * @return Boolean
 */
function checkBoundaries(gameObject, click, checkBase = true) {
  // Obtener los elementos de la posición del click
  const clickX = click.x;
  const clickY = click.y;

  const position = checkBase && gameObject.basePosition ? gameObject.basePosition : gameObject.position;
  // Obtener los elementos de la posición del objeto a verificar
  const x = position.x;
  const y = position.y;
  
  // Obtener la altura y la longitud del objeto a verificar
  const width = checkBase && gameObject.baseWidth ? gameObject.baseWidth : gameObject.width;
  const height = checkBase && gameObject.baseHeight ? gameObject.baseHeight : gameObject.height;

  // Calcular los límites del objeto.
  const lBoundary = clickX >= x;
  const rBoundary = clickX <= x + width;
  const tBoundary = clickY >= y;
  const bBoundary = clickY <= y + height;

  return lBoundary && rBoundary && tBoundary && bBoundary;
}

/**
 * @description
 * Función encargada de obtener los colores de un botón
 * dependiendo del tag del mismo.
 * @param {String} tag
 * String cuyo valor representa el tag del botón.
 * @returns Object 
 */
function getButtonColors(tag) {
  switch(tag) {
    case CONTINUE_TAG:
      return { 
        color: BLUE_COLOR, 
        textColor: WHITE_COLOR 
      };
    
    case EXIT_TAG:
      return { 
        color: RED_COLOR, 
        textColor: WHITE_COLOR 
      };

    case ERROR_TAG:
      return {
        color: RED_COLOR,
        textColor: WHITE_COLOR
      };

    case RESTART_TAG:
      return {
        color: BLUE_COLOR,
        textColor: WHITE_COLOR
      };

    case SUCCESS_TAG:
      return {
        color: GREEN_COLOR,
        textColor: WHITE_COLOR
      };

    default:
      return { 
        color: YELLOW_COLOR, 
        textColor: BLACK_COLOR 
      };
  }
}

/**
 * @description
 * Función encargada de calcular el tamaño del texto
 * usado en los juegos.
 * @returns Number
 */
function getTextSize() {
  return Math.floor(windowWidth * 0.016);
}

/**
 * @description
 * Función encargada de obtener la URL de la imagen contrario del
 * botón clickeado.
 * @param {String} imageUrl
 * String que representa la URL de la imagen actual del botón
 * clickeado.
 * @returns String 
 */
function getToggleImage(imageUrl) {
  switch(imageUrl) {    
    case CHECKED_ICON:
      return UNCHECKED_ICON;

    case MESSAGE_DISABLED_ICON:
      return MESSAGE_ENABLED_ICON;
    
    case MESSAGE_ENABLED_ICON:
      return MESSAGE_DISABLED_ICON;

    case PLAY_ICON:
      return PAUSE_ICON;

    case PAUSE_ICON:
      return PLAY_ICON;

    case SOUND_DISABLED_ICON:
      return SOUND_ENABLED_ICON;

    case SOUND_ENABLED_ICON:
      return SOUND_DISABLED_ICON;
    
    case UNCHECKED_ICON:
      return CHECKED_ICON;
    
    default:
      return imageUrl;
  }
} 

/**
 * @description
 * @param {Array} positions 
 * @param {Object} boundaries 
 * @returns p5.Vector
 */
function getUniquePosition(positions, boundaries) {
  const { minimumX, maximumX, minimumY, maximumY } = boundaries;
  const fixedX = Math.floor(Math.random() * (maximumX - minimumX) + minimumX);
  const fixedY = Math.floor(Math.random() * (maximumY - minimumY) + minimumY);

  // Verificar si se debe recalcular la posición
  let recalculate = false;
  for (let i = 0; i < positions.length; i++) {
    const position = positions[i];
    if ((fixedX >= position.x - 20) && (fixedX <= position.x + 20) && (fixedY >= position.y - 20) && (fixedY <= position.y + 20)) {
      recalculate = true;
      break;
    }
  }

  if (recalculate) 
    return getUniquePosition(positions, boundaries);
  else 
    return createVector(fixedX, fixedY);
}

/**
 * @description 
 * Método encargado de obtener un color dependiendo del 
 * tipo de palabra.
 * @param {String} wordKind 
 * String cuyo valor representa el tipo de palabra.
 * @returns String.
 */
function getWordKindColor(wordKind) {
  switch(wordKind) {
    case 'adjetivo':
      return LIGHT_PURPLE_COLOR;
    case 'adverbio':
      return DARK_GREEN_COLOR;
    case 'artículo':
      return DARK_PURPLE_COLOR;
    case 'complemento':
      return DARK_BLUE_COLOR;
    case 'conjunción':
      return YELLOW_COLOR;
    case 'gerundio':
      return LIGHT_RED_COLOR;
    case 'preposición':
      return GRAY_COLOR;
    case 'pronombre':
      return BROWN_COLOR;
    case 'pronominal':
      return LIGHT_GREEN_COLOR;
    case 'sujeto':
      return LIGHT_BLUE_COLOR;
    case 'sustantivo':
      return LIGHT_BLUE_COLOR;
    case 'verbo':
      return RED_COLOR;
    default:
      return BLUE_COLOR;
  }
}