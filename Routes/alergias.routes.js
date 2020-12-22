const { Router } = require('express');
const { getAlergias } = require('../Controllers/alergias.controller');

const router = Router();

router.get('/', getAlergias);

module.exports = router;