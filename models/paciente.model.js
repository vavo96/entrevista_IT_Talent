'use strict';
const { DataTypes } = require('sequelize');

module.exports = (sequelize) => {
    const attributes = {
        id: {
            primaryKey: true,
            type: DataTypes.UUID,
            allowNull: false
        },
        nombre: {
            type: DataTypes.STRING,
            allowNull: false
        },
        alergiaId: {
            type: DataTypes.INTEGER,
        },
        tiposSangreId: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        updatedAt: { type: DataTypes.DATE },
        createdAt: { type: DataTypes.DATE },
    };

    return sequelize.define('pacientes', attributes);
}