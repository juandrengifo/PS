/**
 * @author Martín Vladimir Alonso Sierra Galvis
 * @maintainer Martín Vladimir Alonso Sierra Galvis
 * @version 1.0.0
 */

import Sequelize from 'sequelize';
import gmodels from '../../gmodels';

let Op = Sequelize.Op;

let {
    Domino_Answers,
    Domino_Images,
    Domino_Tags,
    Secuence_Answers,
    Secuence_Demands,
    Secuence_Images,
    Secuence_Pictograms,
    Sorting_Answers,
    Sorting_Demands,
    Sorting_Images,
    Sorting_Images_Demands
} = gmodels;

export const query = {
    1: async (queryData) => {
        let { id_activity, vocabulary } = queryData;
        /** Armar la condición para el query usando el vocabulario */
        let query = [];
        for (let v in vocabulary)
            query.push(vocabulary[v].name);

        try {
            let images = await Domino_Images.findAll({
                attributes: [ 'path' ],
                where: { activity: id_activity },
                order: [[ 'id', 'ASC' ]],
                include: [{
                    model: Domino_Tags,
                    attributes: [ 'demand', 'vocabulary' ],
                    where: {
                        vocabulary: {
                            [Op.or]: query
                        }
                    },
                    include: [{
                        model: Domino_Answers,
                        attributes: [ 'order_phrase', 'kind', 'word' ],
                        order: [[ 'order_phrase', 'ASC' ]]
                    }]
                }],
            });

            /** Procesamiento de la respuesta */
            let elements = images.map((image) => {
                image = image.toJSON();
                /** Obtener el array de tags */
                let tag = image['Domino_Tags'][0];

                /** Asignar los valores del tag a la imagen */
                image.demand = tag.demand;
                image.tag = tag.vocabulary;
                /** Ordenar el array Domino_Answers */
                tag.Domino_Answers.sort((a, b) => {
                    return a.order_phrase > b.order_phrase ? 1 : -1;
                });
                image.answer = tag.Domino_Answers.map((ans) => {
                    return { kind: ans.kind, word: ans.word };
                });

                /** Eliminar los valores que ya no son necesarios */
                delete image['Domino_Tags'];

                return image;
            });

            return { cards: elements };
        }
        catch (err) {
            throw Error(err);
        }
    },

    2: async (queryData) => {
        const { id_activity, vocabulary } = queryData;
        /** Armar la consdición para el vocabulario */
        let vocabularyQuery = [];
        for (let v in vocabulary)
            vocabularyQuery.push(vocabulary[v].name);

        try {
            const images = await Sorting_Images.findAll({
                attributes: [
                    'id',
                    'action',
                    'cloth_animation',
                    'final_path',
                    'next_action',
                    'path',
                    'tag'
                ], 
                where: { activity: id_activity },
                order: [[ 'id', 'ASC' ]],
                include: [{
                    model: Sorting_Images_Demands,
                    attributes: [ 'id' ],
                    where: {
                        vocabulary: {
                            [Op.or]: vocabularyQuery
                        } 
                    },
                    include: [{
                        model: Sorting_Demands,
                        attributes: [
                            'id',
                            'demand',
                            'gender',
                            'is_initial',
                            'question'
                        ],
                        include: [{
                            model: Sorting_Answers,
                            attributes: [ 'id', 'kind', 'order_phrase', 'word' ],
                            order: [['id', 'ASC' ], [ 'order_phrase', 'ASC' ]]
                        }]
                    }]
                }]
            });

            /** Procesamiento de la respuesta */
            let elements = images.map(image => {
                image = image.toJSON();

                /** Reasignar la lista de demandas */
                let demands = [];
                image['Sorting_Images_Demands'].forEach(imageDemand => {
                    demands.push(imageDemand['Sorting_Demand']);
                });

                image.demands = demands.map(demand => {
                    /** Reordenar por id */
                    demand['Sorting_Answers'].sort((a, b) => {
                        return a.id > b.id ? 1 : -1;
                    });

                    /** Reasignas las respuestas */
                    demand.answer = demand['Sorting_Answers'].map(ans => {
                        return { kind: ans.kind, word: ans.word };
                    });

                    delete demand['Sorting_Answers'];
                    return demand;
                });

                delete image['Sorting_Images_Demands'];

                return image;
            });

            return { cards: elements };
        }
        catch (err) {
            throw Error(err);
        }
    },

    3: async (queryData) => {
        const { id_activity, times } = queryData;
        const idTime = times.id;

        try {
            const images = await Secuence_Images.findAll({
                attributes: [ 'id', 'path', 'tag' ],
                where: { activity: id_activity },
                order: [[ 'id', 'ASC' ], [ 'tag', 'ASC' ]],
                include: [{
                    model: Secuence_Pictograms,
                    attributes: [ 'id', 'path' ]
                }, {
                    model: Secuence_Demands,
                    attributes: [ 'id', 'demand' ],
                    where: { time: idTime },
                    required: false,
                    include: [{
                        model: Secuence_Answers,
                        attributes: [ 'id', 'kind', 'tag', 'word' ]
                    }]
                }]
            });

            /** Procesamiento de la respuesta */
            const elements = images.map(image => {
                image = image.toJSON();

                /** Reasignar el pictograma asociado a la image */
                image.pictogram = { ...image['Secuence_Pictogram'] };

                /** Reasignar la lista de demandas */
                image.demands = image['Secuence_Demands'].map(demand => {
                    /** Ordenar la lista de respuestas */
                    demand['Secuence_Answers'].sort((a, b) => {
                        return a.tag > b.tag ? 1 : -1;
                    });

                    /** Reasignar la lista de respuestas */
                    demand.answers = [ ...demand['Secuence_Answers']];

                    /** Borrar la lista original de respuestas */
                    delete demand['Secuence_Answers'];

                    return demand;
                });
                
                /** Borrar la lista original de demandas y pictogramas */
                delete image['Secuence_Demands'];
                delete image['Secuence_Pictogram'];

                return image;
            });

            /** Construcción de cronoCards */
            const cards = elements.filter(element => element.path !== null);
            const cronoCards = elements.filter(element => element.path === null);

            return { cards, cronoCards };
        }
        catch (err) {
            throw Error(err);
        }
    }
};