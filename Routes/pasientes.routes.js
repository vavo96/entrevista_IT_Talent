const { Router } = require('express');
const { check } = require('express-validator');
const { validarCampos } = require('../Middleware/validar-campos');
const { getPacientes, crearPasiente } = require('../Controllers/pacientes.controller');

const router = Router();


router.get('/', getPacientes);
router.post('/', [
    check('id', 'El n° de expediente es obligatorio').not().isEmpty(),
    check('nombre', 'El nombre es obligatorio').not().isEmpty(),
    check('tiposSangreId', 'El tipo de sangre es obligatorio').not().isEmpty(),
    check('alergiaId', 'La alergia es obligatoria').not().isEmpty(),
    validarCampos
], crearPasiente);

module.exports = router;