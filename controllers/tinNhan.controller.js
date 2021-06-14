const tinNhanService = require('../services/tinNhan.service');

const getConversaton = async (req, res) => {
    const {id_User} = req.params;
    const tinNhan = await tinNhanService.getConversation({id_User});
    
    res.status(200).send(tinNhan);
}

const getConversatonLawyer = async (req, res) => {
    const {id_lawyer} = req.params;
    const tinNhan = await tinNhanService.getConversationLawyer({id_lawyer});
    
    res.status(200).send(tinNhan);
}

const getTinNhan = async (req, res) => {
    const {id_TuVan} = req.params;
    const result = await tinNhanService.getTinNhan({id_TuVan});

    res.status(200).send(result);
}

const getStatus = async (req, res) => {
    const {id_TuVan} = req.params;
    const result = await tinNhanService.getStatus({id_TuVan});
    res.status(200).send(result);
}

module.exports = {
    getConversaton,
    getConversatonLawyer,
    getTinNhan,
    getStatus
}