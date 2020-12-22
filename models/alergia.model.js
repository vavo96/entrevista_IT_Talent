'use strict';
const { DataTypes } = require('sequelize');
module.exports = (sequelize) => {
    const attributes = {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            allowNull: false
        },
        nombre: {
            type: DataTypes.STRING,
            allowNull: false
        },
        medicamento: {
            type: DataTypes.STRING,
            allowNull: false
        }
    };

    return sequelize.define('alergias', attributes);
}