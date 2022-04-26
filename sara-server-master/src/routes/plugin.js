/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0 
 */

import express from 'express';
import crypto from 'crypto';
import fse from 'fs-extra';
import jimp from 'jimp';
import path from 'path';

import errors from '../responses/error';
import success from '../responses/success';

import authToken from '../auth/token';

const { verifyToken }  = authToken;

/** Iniciar pluginRouter */
const pluginRouter = express.Router();

/** Endpoints */

/** POST */
/** Endpoint para subir un audio al servidor */
pluginRouter.post('/upload-audio', verifyToken, async (req, res) => {
  let response = {};
  if (req.files) {
    /** Guardar el audio en el directorio público */
    const { file } = req.files;
    const { name } = file;
    const randomKey = crypto.randomBytes(8).toString('hex');
    let audioPath = path.join(__dirname, '..', '..', 'public', 'audios', `${name}_${randomKey}.mp3`);

    try {
      file.mv(audioPath);
      
      const data = { path: `/audios/${name}_${randomKey}.mp3` };
      response = success.post(data, 'el audio');
    }
    catch (err) {
      response = errors.internalError();
    }
  }
  else {
    response = errors.postError('el audio');
  }

  res.json(response);
});

/** Endpoint para subir una imagen al servidor */
pluginRouter.post('/upload-profile-image', verifyToken, async (req, res) => {
  let response = {};
  if (req.files) {
    /** Guardar la imagen en el directorio público */
    const { file } = req.files;
    const { name } = file;
    const imagePath = path.join(__dirname, '..', '..', 'public', 'profile', name);
    try {
      /** Si el archivo de imagePath existe, borrarlo */
      if (fse.pathExistsSync(imagePath))
        fse.removeSync(imagePath);
      
      file.mv(imagePath);

      /** Cortar la imagen de forma circular */
      const image = await jimp.read(imagePath);
      image.circle().write(imagePath);
      
      const data = { path: `/profile/${name}` };
      response = success.post(data, 'la imagen de perfil');
    }
    catch (err) {
      response = errors.internalError();
    }
  }
  else {
    response = errors.postError('la imagen de perfil');
  }

  res.json(response);
});

export default pluginRouter;