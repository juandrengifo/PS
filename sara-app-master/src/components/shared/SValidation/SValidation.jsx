/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import React from 'react';
import styles from './SValidation.module.css';

const SValidation = (props) => {
    return(
        <div className={`${styles.text} ${styles[props.kind]}`}>
            {props.children}
        </div>
    );
}

export default SValidation;