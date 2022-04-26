/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * El archivo game.js es el archivo principal de p5.js, dónde 
 * se ejecutan las funciones principales preload(), setup(), 
 * draw(), mousePressed(), etc. Esta funciones hacen parte de 
 * la librería mencionada.
 */


let AVATAR_URL;
let FILE_SERVER_URL;
let SERVER_URL;

let apiRequest; 
let gameData;
let gameScene;
let levelId;
let muteGame;
let pauseGame;
let phraseId;
let spaceX;
let spaceY;
let sessionId;
let showMessage;
let token;
let userScore;

// Funciones de p5.js

/**
 * @description
 * Función que se ejecuta antes que la función setup(). En esta
 * función se deben cargar las configuraciones iniciales que tomen
 * más tiempo.
 * @returns void
 */
function preload() {
  loadGameData();
  loadValuesFromURL();
  loadOtherValues();
}

/**
 * @description
 * Función que se ejecuta inmediatamente antes que la función draw(). 
 * La función setup() está pensada para realizar configuraciones 
 * iniciales, como por ejemplo la creación del canvas. 
 * @returns void
 */
function setup() {
  createCanvas(windowWidth, windowHeight);
  loadGameScene();

  gameScene.setup();
}

/**
 * @description
 * La función draw() es la función encargada de actualizar el canvas
 * y los elementos dibujados en él. Desde el punto de vista de 
 * videojuegos actúa como la famosa función update().
 * @return void
 */
function draw() {
  gameScene.draw();
}

/**
 * @description
 * Función encargada de detectar los eventos relacionados a las
 * acciones de click del ratón.
 * @returns void
 */
function mousePressed() {
  gameScene.mousePressed();
}

// Otras funciones

/**
 * @description
 * Función encargada de cargar los datos del juego. Estos datos
 * representan la variabilidad por parámetros del producto.
 * @returns void
 */
function loadGameData() {
  gameData = new GameData(GAME_DATA_URL).getData();
}

/**
 * @description
 * Función encargada de cargar la escena del juego.
 * @returns void
 */
function loadGameScene() {
  const { variability: { sceneTemplate }} = gameData;
  gameScene = eval(`new ${templates[sceneTemplate]}()`);
}

/**
 * @description
 * @returns void
 */
function loadOtherValues() {
  apiRequest = new ApiRequest();
  muteGame = false;
  pauseGame = false;
  phraseId = 0;
  showMessage = true;
}

/**
 * @description
 * Función encargada de cargar algunos valores a
 * partir de la URL del juego.
 * @returns void
 */
function loadValuesFromURL() {
  const urlParams = getURLParams();
  
  // Asignar variables
  AVATAR_URL = urlParams.avatar;
  FILE_SERVER_URL = urlParams.file_server;
  SERVER_URL = urlParams.server;

  token = urlParams.token;
  sessionId = urlParams.session;
  userScore = parseInt(urlParams.score, 10);
}