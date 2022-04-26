/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

let base = 'Error al realizar la acción:'

let errors = {
    authError: () => {
        let message = 'Usted no está autorizado para realizar esta acción';
        return { data: {}, message, status: 401 };
    },

    deleteError: (model) => {
        const message = `${base} eliminar ${model}`;
        return { data: {}, message, status: 500 };
    },

    getError: (model) => {
        let message = `${base} encontrar ${model}`;
        return { data: {}, message, status: 404 };
    },

    internalError: () => {
        let message = 'Ha ocurrido un error interno en el servidor';
        return { data: {}, message, status: 500 };
    },

    joinError: (model) => {
        let message = `${base} asociar ${model}`;
        return { data: {}, message, status: 400 };
    },

    loginError: () => {
        let message = 'Email o password incorrectos';
        return { data: {}, message, status: 400 };
    },

    postError: (model) => {
        let message = `${base} crear ${model}`;
        return { data: {}, message, status: 400 };
    },

    putError: (model) => {
        const message = `${base} actualizar ${model}`;
        return { data: {}, message, status: 400 }
    },

    unjoinError: (model) => {
        let message = `${base} desligar ${model}`;
        return { data: {}, message, status: 400 };
    }
};

export default errors;