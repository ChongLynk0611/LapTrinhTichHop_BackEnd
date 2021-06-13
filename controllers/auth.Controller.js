const authService = require('../services/auth.Service');
const jwt = require('jsonwebtoken');
require('dotenv').config();

const login = async (req, res) => {
    const user = {
        username: req.body.username,
        password: req.body.password
    }

    const result = await authService.login(user);
    if(!result){
        res.status(401).send('Unauthorized');
    }
    else{
         res.status(200).json(result);
    }
}

const auth = async (req, res) => {
    try {
        const token = req.headers.authorization;

        jwt.verify(token, process.env.JWT_SECRET_KEY, (err, payload) => {
            if(payload){
                res.status(200).send(payload);
            }
            else{
                res.status(401).send("Unauthorized");
            }
        })
    } catch (error) {
        res.status(401).send('Unauthorized');
    }
}

module.exports = {
    login,
    auth
}