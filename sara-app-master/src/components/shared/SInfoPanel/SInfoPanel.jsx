import React from 'react';
import styles from './SInfoPanel.module.css';

const SInfoPanel = (props) => {
  return(
    <div className={styles.container}>
      <div className={styles.label}>
        Nombres y apellidos
      </div>
      <div className={styles.infoText}>
        { props.user.name } { props.user.last_name }
      </div>

      <div className={styles.label}>
        Correo electrónico
      </div>
      <div className={styles.infoText}>
        { props.user.email }
      </div>
    </div>
  );
}

export default SInfoPanel;