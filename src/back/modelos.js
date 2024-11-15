const { type } = require('@testing-library/user-event/dist/type');
const {DataTypes, Sequelize} = require('sequelize');

module.exports = (sequelize) => {
    const User = sequelize.define('User',{
        correo: {
            type : DataTypes.STRING,
            allowNull: false,
            notEmpty: true,
        },
        contrasena:{
            type: DataTypes.STRING,
            allowNull: false,
            notEmpty: true
        }
    });


    
}