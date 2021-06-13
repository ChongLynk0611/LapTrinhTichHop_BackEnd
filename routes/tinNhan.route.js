const Route = require('express').Router();
const controller = require('../controllers/tinNhan.controller');

Route.get('/conversation/:id_User', controller.getConversaton);

module.exports = Route;
