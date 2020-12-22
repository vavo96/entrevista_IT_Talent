const { validationResult } = require('express-validator');
const db = require('../models');

db.sequelize.sync().then(() => {
    console.log('suena');
}).catch(e => console.log(e));

const getTiposDeSangre = async(request, response) => {

    const tiposDeSangre = await db.tipos_sangre.findAll();

    response.json({
        ok: true,
        tiposDeSangre
    });
}


module.exports = {
    getTiposDeSangre
};