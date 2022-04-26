/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

/** Imports necesarios */ 
import express, { json } from 'express';
import fileUpload from 'express-fileupload';
import http from 'http';
import cors from 'cors';
import path from 'path';

import './gmodels';
import './models';
import gmodels from './gmodels';
import models from './models';

import authToken from './auth/token';
import router from './routes';
import Messenger from './connections/Messenger';

const { verifyToken } = authToken;

/** Inicialización de express */
let app = express();

/** Asignación de puertos */
let PORT = process.env.PORT || 5000;

/** Middlewares */
app.use(cors({
    exposedHeaders: [ 'Auth-Token', 'Content-Type', 'Refresh-Token' ],
    credentials: true
}));
app.use(fileUpload());
app.use(json());

app.use(express.static(path.join(__dirname, '..', 'build')));
app.use(express.static(path.join(__dirname, '..', 'public')));

/** Rutas de endpoints para la api */
app.use('/api', router);

/** Ping */
app.get('/ping', verifyToken, (req, res) => {
  res.json({ status: 200, message: 'Ping!' });
});

/** Ruta raíz */
app.get('/*', (req, res) => {
    res.sendFile(path.join(__dirname, '..', 'build', 'index.html'));
});

/** Inicialización del servidor */
startServer();

async function startServer() {
    try {
        /** Iniciar las bases de datos */
        await models.sequelize.sync(/*{ force: true }*/);
        await gmodels.sequelize.sync(/*{ force: true }*/);

        /** Iniciar comunicación por sockets */
        const messenger = new Messenger();
        const httpServer = http.createServer(app);
        messenger.startConnection(httpServer);
        
        
        /** Iniciar el servidor */
        httpServer.listen(PORT, () => { 
            console.log(`Servidor iniciado en el puerto ${PORT}`);
        });
    }
    catch (err) {
        console.log(`Error al iniciar el servidor: ${err}`);
    }
}