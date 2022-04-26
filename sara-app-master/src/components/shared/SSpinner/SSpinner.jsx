/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import React from 'react';
import { Spinner } from 'reactstrap';

const SSpinner = (props) => {
    return(
        <div
            style={{
                marginTop: '30px',
                padding: '5px',
                textAlign: 'center',
                width: '100%' 
            }}>
            <Spinner color={props.color} />
        </div>
    );
}

export default SSpinner;