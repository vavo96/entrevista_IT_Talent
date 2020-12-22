const db = require('../models');

db.sequelize.sync().then(() => {
    console.log('suena');
}).catch(e => console.log(e));

const getPacientes = async(request, response) => {

    const pacientes = await db.pacientes.findAll({
        include: [db.tipos_sangre, db.alergias],
    });

    response.json({
        ok: true,
        pacientes
    });
}

const getPaciente = async(request, response) => {
    const paciente = await pacienteBusqueda(request.body.id);

    if (!paciente) {
        return response.status(404).json({
            ok: false,
            codigo: 400,
            msg: 'El expediente no existe'
        });
    }

    response.status(200).json({
        ok: true,
        paciente
    });
}

const crearPasiente = async(request, response) => {
    if (pacienteBusqueda(request.body.id)) {
        return response.status(400).json({
            ok: false,
            msg: 'El expediente ya existe'
        });
    }
    const paciente = await db.pacientes.create(request.body);
    response.status(200).json({
        ok: true,
        paciente
    });
}

const pacienteBusqueda = async(idPaciente) => {
    const paciente = await db.pacientes.findOne({
        include: [db.tipos_sangre, db.alergias],
        where: { id: idPaciente },
    });
    return paciente;
}

module.exports = {
    getPacientes,
    getPaciente,
    crearPasiente
};