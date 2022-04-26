import nodemailer from 'nodemailer';

/** Cargar variables de entorno */
require('custom-env').env(process.env.NODE_ENV || 'dev');
const EMAIL_USER = process.env.EMAIL_USER;
const PSSWD_USER = process.env.PSSWD_USER;

const transporter = nodemailer.createTransport({
  host: 'smtp.gmail.com',
  port: 465,
  secure: true,
  auth: {
    user: EMAIL_USER,
    pass: PSSWD_USER
  }
});

transporter.verify().then(() => {
  console.log('Servidor listo para enviar correos!');
});

export default transporter;