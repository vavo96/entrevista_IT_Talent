'use strict';

module.exports = (sequelize, DataTypes) => {
    const attributes = {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            allowNull: false
        },
        nombre: {
            type: DataTypes.STRING,
            allowNull: false
        }
    };

    const options = {
        underscored: true,
        paranoid: true
    }

    return sequelize.define('tipos_sangre', attributes, options);
}