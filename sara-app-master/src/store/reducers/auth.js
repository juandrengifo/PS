/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.1
 */

import {
    SET_PATIENT_REFRESH_TOKEN,
    SET_PATIENT_TOKEN,
    SET_THERAPIST_REFRESH_TOKEN,
    SET_THERAPIST_TOKEN
} from '../actions/types';

import { PATIENT, THERAPIST } from '@data/roles';

const PATIENT_REFRESH_TOKEN = `${PATIENT}RToken`;
const PATIENT_TOKEN = `${PATIENT}Token`;
const THERAPIST_REFRESH_TOKEN = `${THERAPIST}RToken`;
const THERAPIST_TOKEN = `${THERAPIST}Token`;

let initialState = {
    [PATIENT_REFRESH_TOKEN]: localStorage.getItem(PATIENT_REFRESH_TOKEN) || null,
    [PATIENT_TOKEN]: localStorage.getItem(PATIENT_TOKEN) || null,
    [THERAPIST_REFRESH_TOKEN]: localStorage.getItem(THERAPIST_REFRESH_TOKEN) || null,
    [THERAPIST_TOKEN]: localStorage.getItem(THERAPIST_TOKEN) || null
}

const authReducer = (state = initialState, action) => {
    switch(action.type) {
        case SET_PATIENT_REFRESH_TOKEN:
            return {
                ...state,
                [PATIENT_REFRESH_TOKEN]: action.payload.token
            };

        case SET_PATIENT_TOKEN:
            return {
                ...state,
                [PATIENT_TOKEN]: action.payload.token
            };

        case SET_THERAPIST_REFRESH_TOKEN:
            return {
                ...state,
                [THERAPIST_REFRESH_TOKEN]: action.payload.token
            };

        case SET_THERAPIST_TOKEN:
            return {
                ...state,
                [THERAPIST_TOKEN]: action.payload.token
            };

        default:
            return state;
    }
}

export default authReducer;