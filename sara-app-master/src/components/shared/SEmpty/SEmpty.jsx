/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import React from 'react';
import styles from './SEmpty.module.css';

const SEmpty = (props) => {
    return(
        <div className={`flex ${styles.container}`}>
            <p className={styles.text} style={{ color: props.color ? props.color: 'darkgray' }}>
                { props.children }
            </p>
        </div>
    );
}

export default SEmpty;