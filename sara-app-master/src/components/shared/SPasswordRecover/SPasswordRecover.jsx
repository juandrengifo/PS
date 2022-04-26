import React, { Component } from 'react';
import styles from './SPasswordRecover.module.css';
import { Form } from 'reactstrap';
import { connect } from 'react-redux';
import { recoverPassword } from '@actions/user';
import { checkEmail } from '@utils/user';

import SInputField from '@components/shared/form/SInputField';
import SSubmitField from '@components/shared/form/SSubmitField';

class SPasswordRecover extends Component {
  render() {
    return(
      <div className={styles.container}>
        <div className={styles.infoText}>
          Para recuperar tu contraseña debes ingresar el correo electrónico 
          que tu administrador te asignó. En caso de no recordar tu correo 
          electrónico, o en caso de algún problema, comunícate con el 
          administrador del sistema.
        </div>
        <Form>
          <SInputField 
            error={this.state.error} 
            onChange={this.onEmailChange}
            type='email'
            value={this.state.email}>
              Ingresa aquí el correo electrónico
          </SInputField>
          <div className={`flex ${styles.btnContainer}`}>
            {
              this.state.done ?
              <p className={styles.doneMessage}>
                Se ha enviado un correo con una contraseña provisional. Recuerda que es 
                recomendable cambiarla lo antes posible. Ya puedes cerrar esta ventana.
              </p>
              :
              <SSubmitField 
                className='primary-btn'
                loading={this.state.loading}
                onClick={this.onSendClicked}>
                Enviar
              </SSubmitField>
            }
          </div>
        </Form>
      </div>
    );
  }

  constructor(props) {
    super(props);
    this.state = { done: false, email: '', error: null, loading: false };

    this.onEmailChange = this.onEmailChange.bind(this);
    this.onSendClicked = this.onSendClicked.bind(this);
  }

  onEmailChange(e) {
    this.setState({ email: e.target.value, error: null });
  }

  async onSendClicked(e) {
    e.preventDefault();

    // Verificar posibles errores
    const { email } = this.state;
    let error = null;
    if (email.trim() === '')
      error = 'El email es obligatorio.';
    else if (!checkEmail(email))
      error = 'Debes ingresar un email válido.';

    // Si hay algún error, mostrarlo. Sino enviar petición al servidor
    if (error)
      this.setState({ error });
    else {
      this.setState({ loading: true });

      const response = await this.props.recoverPassword(email, this.props.role);
      const { error, status } = response;
      let done = false;
      let errorMsg = null;
      if (error) 
        errorMsg = status === 404 ? 'El usuario con el email especificado no fue encontrado.' : 
                   'Se presentó un error al tratar de recuperar la contraseña. Inténtalo más tarde.';
      else
        done = true;

      this.setState({ done, email: '', error: errorMsg, loading: false });
    }
  }
}

/** Elementos del store */
const mapActionsToProps = {
  recoverPassword
};

export default connect(null, mapActionsToProps)(SPasswordRecover);