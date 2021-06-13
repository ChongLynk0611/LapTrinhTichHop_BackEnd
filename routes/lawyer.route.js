const Route = require('express').Router();
const controller = require('../controllers/lawyer.controller');

Route.get('/:idService', controller.getByService);
Route.post('/TuVan', controller.TuVan);

module.exports = Route;