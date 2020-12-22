require('dotenv').config();

const express = require('express');
const cors = require('cors');
const { dbConnection } = require('./database/config');

//Crear servidor express
const app = express();
app.use(cors());

dbConnection();
app.get('/', (request, response) => {
    response.json({
        ok: true,
        msg: 'hola mundo'
    })
});

app.listen(process.env.PORT, () => {
    console.log('servidor corriendo en puerto ' + process.env.PORT);
});