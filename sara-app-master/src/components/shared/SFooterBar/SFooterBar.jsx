/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import React from 'react';
import styles from './SFooterBar.module.css';

const SFooterBar = () => {
    return(
        <div className={`flex ${styles.container}`}>
            <div className={styles.innerContainer}>
                <p className={styles.logo}>
                    SATReLO 2<br />
                    <span className={styles.copyright}>
                        &copy; Copyright 2019-2020
                    </span>
                </p>
            </div>
        </div>
    );
}

export default SFooterBar;