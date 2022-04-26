/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import React, { Component } from 'react';
import styles from './SSearch.module.css';
import { Input } from 'reactstrap';
import { connect } from 'react-redux';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faSearch } from '@fortawesome/free-solid-svg-icons';
import { getPatients } from '@actions/patient';
import { getUsers } from '@actions/user';

class SSearch extends Component {
    render() {
        let searchContainer = styles.searchContainer;
        if (this.props.patients)
            searchContainer = `${searchContainer} ${styles.marginTop}`;

        return(
            <div className={`flex ${searchContainer}`}>
                <FontAwesomeIcon 
                    className={styles.searchIcon}
                    icon={faSearch} />
                <Input 
                    className={styles.search}
                    type='text'
                    placeholder='Busca por nombre o identificación'
                    onChange={this.onChange} />
            </div>
        );
    }

    constructor(props) {
        super(props);
        this.onChange = this.onChange.bind(this);
    }

    /** Métodos extra */
    async onChange({ target: { value }}) {
        const { patients } = this.props;
        if (patients) {
            const userId = patients === 'my' ? this.props.userId : null;
            await this.props.getPatients(userId, value);
        }
        else
            await this.props.getUsers(value);
    }
}

/** Elementos del store */
const mapActionsToProps = {
    getPatients,
    getUsers
};

export default connect(
    null,
    mapActionsToProps
)(SSearch);