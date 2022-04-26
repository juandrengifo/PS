/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import React, { Component } from 'react';
import styles from './SBubbleNotification.module.css';
import { connect } from 'react-redux';
import { setNotification } from '@actions/ui';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faDizzy, faGrinBeam } from '@fortawesome/free-solid-svg-icons';

class SBubbleNotification extends Component {
    render() {
        const { error, message, slide } = this.props.notification;
        const { parallax, windowWidth } = this.props;

        const faIcon = error ? faDizzy : faGrinBeam;
        const state = error ? styles.error : styles.success;

        const container = windowWidth >= 768 ? 
                          styles.containerDesktop : styles.containerMobile;

        let finalSlide = windowWidth >= 768 ? -368 : -200;
        if (!slide)
            finalSlide = windowWidth >= 768 ?  -1 : 0;
        
        const border = parallax ? '': styles.border;
        
        return(
            <div 
                className={`${styles.container} ${container} ${border} flex`}
                style={{ '--finalSlide': `${finalSlide}px`}}>
                <div className={`flex ${styles.iconContainer} ${state}`}>
                    <FontAwesomeIcon icon={faIcon} size='3x' />
                </div>
                <span className={styles.message}>
                    { message }
                </span>
            </div>
        );
    }

    componentDidMount() {
        const { slide } = this.props.notification;
        if (slide)
            setTimeout(() => {
                this.props.setNotification(null);
            }, 6001);
    }
}

/** Elementos del store */
const mapActionsToProps = {
    setNotification
}

const mapStateToProps = (state) => {
    return {
        notification: state.ui.notification,
        parallax: state.ui.parallax,
        windowWidth: state.ui.windowWidth
    };
}

export default connect(
    mapStateToProps,
    mapActionsToProps,
)(SBubbleNotification);