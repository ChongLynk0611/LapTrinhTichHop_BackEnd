const Route = require('express').Router();
const controller = require('../controllers/tinNhan.controller');

Route.get('/conversation/:id_User', controller.getConversaton);
Route.get('/conversation/Lawyer/:id_lawyer', controller.getConversatonLawyer);
Route.get('/TinNhan/:id_TuVan', controller.getTinNhan);
Route.get('/Status/:id_TuVan', controller.getStatus);

module.exports = Route;
