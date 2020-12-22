const { Router } = require('express');
const { getTiposDeSangre } = require('../Controllers/tipos_sangre.controller');

const router = Router();

router.get('/', getTiposDeSangre);

module.exports = router;