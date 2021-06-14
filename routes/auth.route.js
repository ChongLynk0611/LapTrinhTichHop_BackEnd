const Route = require('express').Router();
const {tryCatch} = require('../middleware/errorHandle');
const controller = require('../controllers/auth.Controller');

Route.get('/', tryCatch(controller.auth));
Route.post('/login', tryCatch(controller.login));
Route.post('/login/lawyer', tryCatch(controller.loginLawyer));

module.exports = Route;

