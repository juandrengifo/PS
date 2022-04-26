/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import socketIO from 'socket.io';

class Messenger {
    
    constructor() {
        /** Singleton */
        if (Messenger.instance instanceof Messenger) 
            return Messenger.instance;

        this.connections = {};
        Messenger.instance = this;
    }

    /** Métodos de la clase */
    sendMessage(messageData, userId) {
        console.log(this.connections);
        const userData = this.connections[userId];
        if (userData) {
            let status = 200;
            let message = '¡Mensaje enviado!';

            /** Verificar si el socket esta connectado */
            const { socket } = userData;
            if (socket && socket.connected) {
                /** Enviar el mensaje */
                const { customEvent, text } = messageData;
                socket.emit(customEvent, text);
            }
            else {
                status = 500;
                message = '¡Socket desconectado!'
            }

            return { status, message };
        }

        return { 
            status: 400, 
            message: '¡No se encontró al destinatario!'
        };
    }

    startConnection(httpServer) {
        const socketServer = socketIO(httpServer);

        socketServer.on('connection', socket => {
            /** Desconectar el socket */
            socket.on('disconnect', () => {
                socket.disconnect(true);
            });

            /** Latidos */
            socket.on('heart', () => {
                socket.emit('beat');
            });

            /** Registrar un usuario en la lista de conexiones */
            socket.on('register', (data) => {
                const { userId } = data;
                const userData = { userId, socket };
                if (!this.connections[userId]) {
                    this.connections[userId] = userData;
                    socket.emit('registered');
                }
            });

            /** Eliminar un usuario del registro de conexiones */
            socket.on('unregister', (data) => {
                const { userId } = data;
                if (this.connections[userId])
                    delete this.connections[userId];
            });
        });
    }
}

export default Messenger;