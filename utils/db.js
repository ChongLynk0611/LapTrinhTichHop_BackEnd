require('dotenv').config();
const mysql = require('mysql');

const config = {
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE
}

const pool = mysql.createPool(config);

pool.getConnection(err=>{
    if (err) console.log(err)
    else console.log(`connected to database ${process.env.DB_DATABASE} !!!`)
});

const logQuery = (sql, params) => {
    console.log('sql: ',
        mysql.format(sql, params)
            .replace(/\r?\n|\r/g, ' ')
            .split(' ').filter(e => e !== '').join(' '));
}

const queryOne = (sql, params) => {
    logQuery(sql, params)
    return new Promise((resolve, rejects)=>{
        pool.query(sql, params, (err, result)=>{
            if (err) rejects(err)
            else return resolve(result[0])
        })
    })
}

const query = (sql, params) => {
    logQuery(sql, params)
    return new Promise((resolve, rejects)=>{
        pool.query(sql, params, (err, result)=>{
            if (err) rejects(err)
            else return resolve(result)
        })
    })
}

module.exports = {
    query,
    queryOne
}