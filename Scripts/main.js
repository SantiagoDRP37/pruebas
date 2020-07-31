const  Sequelize = require('sequelize');
const sequelize = require('../DataBase/bdConexion');

sequelize.authenticate().then(async()=>{
    const query = 'SELECT * FROM volando_alto.pasajero';
    const resultados = await sequelize.query(query,{type: sequelize.QueryTypes.SELECT});
    console.log(resultados);
 });