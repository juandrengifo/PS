/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import React, { Component } from 'react';
import styles from './SAvatar.module.css';
import { Button } from 'reactstrap';
import { connect } from 'react-redux';
import Speaker from '@utils/Speaker';

const DEFAULT_AVATAR = process.env.REACT_APP_DEFAULT_AVATAR;
const SERVER_URL = process.env.REACT_APP_SERVER_URL;

class SAvatar extends Component {
    render() {
        const { soundEnabled, showMessage } = this.state;
        const avatarImage = this.props.auth.pacienteToken ? this.state.avatar_img : DEFAULT_AVATAR;

        return(
            <div className={styles.container}>
                <img 
                    className={styles.image}
                    alt=''
                    src={avatarImage} />
                <div className={`flex ${styles.buttons}`}>
                    <div className={`flex ${styles.innerButtons}`}>
                        <Button className='ghost-btn' onClick={this.onSoundClicked}>
                            <img
                                alt='' 
                                className={styles.buttonIcon}
                                src={`/images/other/sound_${soundEnabled ? 'enabled' : 'disabled'}.png`} />
                        </Button>
                        <Button className='ghost-btn' onClick={this.onMessageClicked}>
                            <img
                                alt='' 
                                className={styles.buttonIcon}
                                src={`/images/other/message_${showMessage ? 'enabled' : 'disabled'}.png`} />
                        </Button>
                        <Button className='ghost-btn' onClick={this.onRepeatClicked}>
                            <img
                                alt='' 
                                className={styles.buttonIcon}
                                src={'/images/other/repeat.png'} />
                        </Button>
                    </div>
                </div>
                <div className={styles.message}>
                    { showMessage && this.props.avatar.message }
                </div>
                <div className={styles.triangle}></div>
            </div>
        );
    }

    constructor(props) {
        super(props);
        this.state = { avatar_img: DEFAULT_AVATAR, soundEnabled: true, showMessage: true };

        this.onMessageClicked = this.onMessageClicked.bind(this);
        this.onRepeatClicked = this.onRepeatClicked.bind(this);
        this.onSoundClicked = this.onSoundClicked.bind(this);
    }

    componentDidMount() {
        this.setTherapistAvatar();
        this.speak();
    }

    componentDidUpdate(prevProps) {
        this.setTherapistAvatar();
        if (prevProps.avatar.message !== this.props.avatar.message) {
            this.speak();
        }
    }

    /** Métodos extra */
    onMessageClicked() {
        this.setState({ showMessage: !this.state.showMessage });
    }

    onRepeatClicked() {
        this.speak();
    }

    onSoundClicked() {
        this.setState({ soundEnabled: !this.state.soundEnabled }, () => {
            if (Speaker.isSpeaking()) {
                const volume = this.state.soundEnabled ? 1 : 0;
                Speaker.setVolume(volume);
            }
        });
    }

    setTherapistAvatar() {
        const { user } = this.props;
        if (user && user.Therapists) {
            const therapists = Object.values(user.Therapists);
            if (therapists.length > 0) {
                const therapist = therapists[0];
                const avatarVariationImage = SERVER_URL + therapist.Avatar_Variation.img_path;
                if (this.state.avatar_img !== avatarVariationImage) {
                    this.setState({ avatar_img: avatarVariationImage });
                }
            }
        }
    }

    speak() {
        const volume = this.state.soundEnabled ? 1 : 0;
        Speaker.speak(this.props.avatar.message, volume);
    }
}

/** Elementos del store */
const mapStateToProps = (state) => {
    return {
        auth: state.auth,
        avatar: state.avatar,
        user: state.user.user,
    };
}

export default connect(
    mapStateToProps
)(SAvatar);