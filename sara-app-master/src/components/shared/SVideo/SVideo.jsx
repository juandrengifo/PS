/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import React from 'react';
import styles from './SVideo.module.css';

const serverURL = process.env.REACT_APP_SERVER_URL;

const SVideo = (props) => {
    const absolute = props.absolute ? styles.absolute : '';
    const width = props.width ? props.width : '100%';

    return(
        <div 
            className={`${styles.container} ${absolute}`}
            style={{'--width': width }}>
            <video 
                src={`${serverURL}${props.src}`}
                className={styles.video}
                controls>

            </video>
        </div>
    );
}

export default SVideo;