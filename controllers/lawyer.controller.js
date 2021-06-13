const lawyerService = require('../services/lawyer.service');

const getByService =  async (req, res) => {
    const { idService } = req.params;
    
    const luatSu = await lawyerService.getByService({idService, ...req.pagination});
    res.status(200).send(luatSu);
}

const TuVan = async (req, res) => {
    const status = await lawyerService.TuVan({...req.body});
    res.status(200).send("successfully");
}

module.exports = {
    getByService,
    TuVan
}