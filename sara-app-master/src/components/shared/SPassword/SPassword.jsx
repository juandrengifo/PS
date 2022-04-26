/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import React, { Component } from 'react';
import styles from './SPassword.module.css';

import SPPassButton from './SPPassButton';

class SPassword extends Component {
    render() {
        return(
            <div className={styles.container}>
                <div className={`flex ${styles.btnContainer}`}>
                    {this.state.passwordOptions.map((po) => {
                        return(
                            <SPPassButton
                                key={po.id}
                                {...po}
                                onPassButtonClicked={
                                    this.onPasswordOptionClicked
                                } />
                        );
                    })}
                </div>
                <div className={`flex ${styles.btnContainer}`}>
                    {this.state.optionsSelected.map((os) => {
                        return(
                            <SPPassButton key={os.id} {...os} />
                        );
                    })}
                    <SPPassButton 
                        kind='delete'
                        onDeletePassClicked={this.onDeleteButtonClicked} />
                </div>
            </div>
        );
    }

    constructor(props) {
        super(props);
        this.state = {
            passwordOptions: [
                { id: 1, kind: 'select', name: 'árbol', src: '/images/pwd/tree.png' },
                { id: 2, kind: 'select', name: 'corazón', src: '/images/pwd/heart.png' },
                { id: 3, kind: 'select', name: 'flor', src: '/images/pwd/flower.png' },
                { id: 4, kind: 'select', name: 'nube', src: '/images/pwd/cloud.png' },
                { id: 5, kind: 'select', name: 'sol', src: '/images/pwd/sun.png' },
            ],
            optionsSelected: [
                { id: 1, kind: 'not', name: '', src: '' },
                { id: 2, kind: 'not', name: '', src: '' },
                { id: 3, kind: 'not', name: '', src: '' },
                { id: 4, kind: 'not', name: '', src: '' }
            ]
        };

        this.onDeleteButtonClicked = this.onDeleteButtonClicked.bind(this);
        this.onPasswordOptionClicked = this.onPasswordOptionClicked.bind(this);
    }

    /** Métodos extra */
    onDeleteButtonClicked() {
        let { optionsSelected } = this.state;
        /** Limpiar las asociaciones */
        optionsSelected.forEach(option => {
            option.name = '';
            option.src = '';
        });
        this.setState({ optionsSelected });
    }

    onPasswordOptionClicked(selected) {
        let { optionsSelected } = this.state;
        /** Asociar el nombre y el src seleccionado */
        let added = false;
        optionsSelected.forEach(option => {
            if (!added && option.name.trim() === '') {
                option.name = selected.name;
                option.src = selected.src;
                added = true;
            }
        });
        this.setState({ optionsSelected }, () => {
            /** Obtener las nombres de las opciones seleccionadas */
            const words = this.state.optionsSelected.filter((option) => {
                return option.name.trim() !== '';
            }).map((option) => { 
                return option.name; 
            });
            /** Enviar la lista de palabras hacia el componente padre */
            this.props.setPassword(words);
        });
    }
}

export default SPassword;