/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import React, { Component } from 'react';
import styles from './SUserHero.module.css';
import { Row, Col } from 'reactstrap';

const serverURL = process.env.REACT_APP_SERVER_URL; 

class SUserHero extends Component {
    render() {
        const { user } = this.props;
        
        return(
            <div className={styles.container}>
                <div className={styles.header}>

                </div>
                <div className={`flex ${styles.userContainer}`}>
                    <Row 
                        className={`justify-content-center ${styles.row}`} 
                        noGutters>
                        <Col className={`flex ${styles.col}`} xs='12' xl='9'>
                            {
                                user && user.profile_img ?
                                <img
                                    alt=''
                                    className={styles.uimage}
                                    src={`${serverURL}${user.profile_img}`} />
                                :
                                user && user.thumbnail_alias ?
                                <div 
                                    className={`flex ${styles.alias}`}
                                    style={{ backgroundColor: user.color }}>
                                    {user.thumbnail_alias}
                                </div>
                                :
                                null
                            }
                            <div className={styles.uname}>
                                {user && 
                                <span>{user.name} {user.last_name}</span>}
                            </div>
                        </Col>
                    </Row>
                </div>
            </div>
        );
    }
}

export default SUserHero;