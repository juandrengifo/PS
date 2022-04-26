/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 * 
 * @description
 * El archivo variability contiene un conjunto variabilidades de diferente índole.
 * Esta variabilidad se usa de acuerdo al tipo de juego que se esté
 * ejecutando en el momento.
 */

const factories = {
  DominoCardFactoryStrategy: 'DominoCardFactoryStrategy',
  SimpleCardFactoryStrategy: 'SimpleCardFactoryStrategy',
};

const templates = {
  GameSceneDomino: 'GameSceneDomino',
  GameSceneOrdenandoCuarto: 'GameSceneOrdenandoCuarto',
  GameSceneSecuencia: 'GameSceneSecuencia',
};