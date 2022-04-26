/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import React from 'react';
import styles from './SMenuHeader.module.css';

const serverURL = process.env.REACT_APP_SERVER_URL;

const SMenuHeader = (props) => {
    return(
        <div className={`flex ${styles.container}`}>
            {
                props.user.profile_img ?
                <img
                    alt='' 
                    className={styles.image}
                    src={`${serverURL}${props.user.profile_img}`} />
                :
                <div 
                    className={`flex ${styles.image} ${styles.thumb}`} 
                    style={{ backgroundColor: props.user.color }}>
                    { props.user.thumbnail_alias }
                </div>
            }
            <span className={styles.name}>
                { props.user.name } { props.user.last_name }
            </span>
            <span className={styles.email}>
                { props.user.email }
            </span>
        </div>
    );
}

export default SMenuHeader;