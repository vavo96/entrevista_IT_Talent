const { validationResult } = require('express-validator');
const db = require('../models');

db.sequelize.sync().then(() => {
    console.log('suena');
}).catch(e => console.log(e));

const getAlergias = async(request, response) => {

    const alergias = await db.alergias.findAll();

    response.json({
        ok: true,
        alergias
    });
}


module.exports = {
    getAlergias
};