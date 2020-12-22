require('dotenv').config();

const express = require('express');
const cors = require('cors');

//Crear servidor express
const app = express();

app.use(cors());

//lectura body

app.use(express.json());

//Base de datos

app.use('/api/pasientes', require('./Routes/pasientes.routes'));
app.use('/api/alergias', require('./Routes/alergias.routes'));
app.use('/api/tiposDeSangre', require('./Routes/tipos_sangre.routes'));
app.use('/api/busqueda', require('./Routes/busqueda.routes'));


app.listen(process.env.PORT, () => {
    console.log('servidor corriendo en puerto ' + process.env.PORT);
});