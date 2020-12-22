const { Router } = require('express');
const { check } = require('express-validator');
const { getPaciente } = require('../Controllers/pacientes.controller');

const router = Router();

router.get('/', [
    check('id').not().isEmpty()
], getPaciente);

module.exports = router;