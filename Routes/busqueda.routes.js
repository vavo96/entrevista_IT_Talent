const { Router } = require('express');
const { check } = require('express-validator');
const { validarCampos } = require('../Middleware/validar-campos');
const { getPaciente } = require('../Controllers/pacientes.controller');

const router = Router();

router.post('/', [
    check('id', 'El n° de expediente es obligatorio').not().isEmpty(),
    validarCampos
], getPaciente);

module.exports = router;