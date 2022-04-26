/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

let status = 200;
let base = 'Se realizó exitosamente la acción:'

let success = {
    delete: (data, model) => {
        const message = `${base} eliminar ${model}`;
        return { data, message, status };
    },

    get: (data, model) => {
        let message = `${base} encontrar ${model}`;
        return { data, message, status };
    },

    join: (data, model1, model2) => {
        let message = `${base} asociar ${model1} con ${model2}`;
        return { data, message, status };
    },

    post: (data, model) => {
        let message = `${base} crear ${model}`;
        return { data, message, status };
    },

    put: (data, model) => {
        const message = `${base} actualizar ${model}`;
        return { data, message, status };
    },

    unjoin: (data, model1, model2) => {
        let message = `${base} desligar ${model1} de ${model2}`;
        return { data, message, status };
    }
};

export default success;