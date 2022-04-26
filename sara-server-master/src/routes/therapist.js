/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import express from 'express';
import Sequelize from 'sequelize';

import errors from '../responses/error';
import success from '../responses/success';

import authToken from '../auth/token';
import models from '../models';

let { verifyToken } = authToken;
/** Iniciar los modelos */
let { User } = models;

let { col, fn, Op } = Sequelize;

let therapistRouter = express.Router();

/** Endpoints */

/** GET */
/** Endpoint para obtener los pacientes de un usuario terapeuta */
therapistRouter.get('/:id/patient', verifyToken, async (req, res) => {
    const { search } = req.query;
    let { id } = req.params;

    let where = {};
    if (search) {
        where = {
            [Op.or]: [
                { id: { [Op.substring]: search } },
                { name: Sequelize.where(fn('LOWER', col('User.name')), 'LIKE', `%${search}%`)},
                { last_name: Sequelize.where(fn('LOWER', col('User.last_name')), 'LIKE', `%${search}%`)}
            ]
        };
    }

    let response = {};
    try {
        let user = await User.findOne({ where: { id } });

        if (user) {
            let patients = await user.getPatients({
                attributes: [ 
                    'id',
                    'color', 
                    'createdAt',
                    'email',
                    'last_name',
                    'name',
                    'profile_img',
                    'thumbnail_alias',
                    'username', 
                ],
                where,
                joinTableAttributes: [ 'id_therapist', 'id_patient' ]
            });

            if (patients && patients.length > 0) {
                let data = {};
                for (let p in patients) {
                    let patient = patients[p]; 
                    data[patient.id] = patient;
                }

                response = success.get(data, 'los pacientes');
            }
            else
                response = errors.getError('los pacientes');
        }
        else
            response = errors.getError('los pacientes');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});


/** POST */
/** Endpoint para asignar un paciente a un usuario terapeuta */
therapistRouter.post('/:id/patient', verifyToken, async (req, res) => {
    let { id } = req.params;
    let { pid } = req.body.data;

    let response = {};
    try {
        let therapist = await User.findOne({ 
            attributes: [ 'id' ],
            where: { 
                [Op.and]: [{ id }, { id_role: 2 }]
            } 
        });
        let patient = await User.findOne({ 
            attributes: [ 'id' ],
            where: { 
                [Op.and]: [{ id: pid }, { id_role: 1 }]
            } 
        });

        if (therapist && patient) {
            let txp = await therapist.addPatient(patient);            
            if (txp) {
                let associations = Object.assign({}, ...txp.map((tp) => {
                    return { [tp.id_patient]: tp };
                }));

                response = success.join(
                    associations, 
                    'el paciente', 
                    'el terapeuta'
                );
            }
            else
                response = errors.joinError('el paciente');
        }
        else
            response = errors.getError('los usuarios');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});


/** DELETE */
/** Endpoint para eliminar la relación entre un usuario y un terapeuta */
therapistRouter.delete('/:id/patient/:pid', verifyToken, async (req, res) => {
    let { id, pid } = req.params;

    let response = {};
    try {
        let therapist = await User.findOne({
            attributes: [ 'id' ],
            where: { 
                [Op.and]: [{ id }, { id_role: 2 }] 
            }
        });
        let patient = await User.findOne({
            attributes: [ 'id' ],
            where: {
                [Op.and]: [{ id: pid }, { id_role: 1 }]
            }
        });

        if (therapist && patient) {
            let utxp = await therapist.removePatient(patient);
            if (utxp) {
                response = success.unjoin(utxp, 'el paciente', 'el terapeuta');
            }
            else
                response = errors.unjoinError('el paciente');
        }
        else
            response = errors.getError('los usuarios');
    }
    catch (err) {
        response = errors.internalError();
    }

    res.json(response);
});

export default therapistRouter;