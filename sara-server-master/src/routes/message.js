/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import express from 'express';

import Messenger from '../connections/Messenger';

import authToken from '../auth/token';
const { verifyToken } = authToken;

/** Iniciar messageRouter */
let messageRouter = express.Router();

/** Endpoints */

/** POST */
messageRouter.post('/', verifyToken, (req, res) => {
    const { messageData, userId } = req.body;

    const messenger = new Messenger();
    const { status, message } = messenger.sendMessage(messageData, userId);

    res.json({ data: {}, status, message });
});

export default messageRouter;