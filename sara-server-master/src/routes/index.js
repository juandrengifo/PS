/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import express from 'express';

import activityRouter from './activity';
import avatarRouter from './avatar';
import assemblerRouter from './assembler';
import authRouter from './auth';
import collectionRouter from './collection';
import dynamicRouter from './dynamic';
import feedbackRouter from './feedback';
import histoRouter from './historical';
import messageRouter from './message';
import patientRouter from './patient';
import pluginRouter from './plugin';
import sessionRouter from './session';
import staticRouter from './static';
import therapistRouter from './therapist';
import userRouter from './user';

/** Iniciar el enrutador */
let router = express.Router();

/** Asignación de rutas */
router.use('/activity', activityRouter);
router.use('/avatar', avatarRouter);
router.use('/assembler', assemblerRouter);
router.use('/auth', authRouter);
router.use('/collection', collectionRouter);
router.use('/dynamic', dynamicRouter);
router.use('/feedback', feedbackRouter);
router.use('/feedback/historical', histoRouter);
router.use('/message', messageRouter);
router.use('/patient', patientRouter);
router.use('/plugin', pluginRouter);
router.use('/session', sessionRouter);
router.use('/static', staticRouter);
router.use('/therapist', therapistRouter);
router.use('/user', userRouter);

export default router;