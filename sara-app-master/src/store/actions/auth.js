/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import axios from 'axios';
import {
    SET_PATIENT_REFRESH_TOKEN,
    SET_PATIENT_TOKEN,
    SET_THERAPIST_REFRESH_TOKEN,
    SET_THERAPIST_TOKEN
} from './types';

import { PATIENT } from '@data/roles';

const apiURL = process.env.REACT_APP_API_URL;

export const login = (credentials, role) => async (dispatch) => {
    const url = `${apiURL}/auth/login`;
    credentials = { ...credentials, role };

    try {
        const response = await axios.post(url, { credentials });
        const { data: { data, message, status }, headers } = response;

        /** Obtener el token */
        const token = status === 200 ? headers['auth-token'] : null;
        const refreshToken = status === 200 ? headers['refresh-token'] : null;
        const userId = status === 200 ? data.id : null;
        const error = status !== 200;

        dispatch({
            type: role === PATIENT ? SET_PATIENT_TOKEN : SET_THERAPIST_TOKEN,
            payload: { token }
        });
        dispatch({
            type: role === PATIENT ? SET_PATIENT_REFRESH_TOKEN : SET_THERAPIST_REFRESH_TOKEN,
            payload: { token: refreshToken }
        });
        localStorage.setItem(`${role}Token`, token);
        localStorage.setItem(`${role}RToken`, refreshToken);
            
        return { error, message, userId };
    }
    catch (err) {
        return { 
            error: true, 
            message: 'Hubo un error de conexión. Inténtalo más tarde...', 
            userId: null 
        };
    }
}

export const logout = (role, refreshToken) => async (dispatch) => {
    const url = `${apiURL}/auth/logout`;

    try {
        const response = await axios.post(url, { token: refreshToken });
        const { data: { message, status }} = response;
        const error = status !== 200;

        dispatch({
            type: role === PATIENT ? SET_PATIENT_TOKEN : SET_THERAPIST_TOKEN,
            payload: { token: null }
        });
        dispatch({
            type: role === PATIENT ? SET_PATIENT_REFRESH_TOKEN : SET_THERAPIST_REFRESH_TOKEN,
            payload: { token: null }
        })
        localStorage.removeItem(`${role}Token`);
        localStorage.removeItem(`${role}RToken`);

        return { error, message };
    }
    catch (err) {
        return { error: true, message: err };
    }
}

export const refreshToken = (user, refreshToken) => async (dispatch) => {
    const { id, Role: { name }} = user;
    const url = `${apiURL}/auth/token`;

    try {
        const response = await axios.post(url, { user: { id }, token: refreshToken });
        const { data: { message, status }, headers } = response;

        const newToken = status === 200 ? headers['auth-token'] : null;
        const newRefreshToken = status === 200 ? headers['refresh-token'] : null;
        const error = status !== 200;

        const role = name;
        dispatch({
            type: role === PATIENT ? SET_PATIENT_TOKEN : SET_THERAPIST_TOKEN,
            payload: { token: newToken }
        });
        dispatch({
            type: role === PATIENT ? SET_PATIENT_REFRESH_TOKEN : SET_THERAPIST_REFRESH_TOKEN,
            payload: { token: newRefreshToken }
        });
        localStorage.setItem(`${role}Token`, newToken);
        localStorage.setItem(`${role}RToken`, newRefreshToken);

        /** Actualizar el token de autneticación en los headers de axios */
        axios.defaults.headers.common['Auth-Token'] = newToken;

        return { error, message };
    }
    catch (err) {
        return { error: true, message: err };
    }
}

export const register = (user) => async () => {
    const url = `${apiURL}/auth/register`;

    try {
        const response = await axios.post(url, { user });
        const { data: { message, status }} = response;

        const error = status !== 200;
        return { error, message };
    }
    catch (err) {
        return { error: true, message: err };
    }
}