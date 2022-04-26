/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import bcrypt from 'bcryptjs';

/** Función para encriptar el password */
let encryptPassword = async (password) => {
    let salt = await bcrypt.genSalt(12);
    return bcrypt.hash(password, salt);
}

/** Función para validar el password */
let validatePassword = (password, userPassword) => {
    return bcrypt.compare(password, userPassword);
}

export default { 
    encryptPassword, 
    validatePassword 
}