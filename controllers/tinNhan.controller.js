const tinNhanService = require('../services/tinNhan.service');

const getConversaton = async (req, res) => {
    const {id_User} = req.params;
    const tinNhan = await tinNhanService.getConversation({id_User});
    
    res.status(200).send(tinNhan);
}

module.exports = {
    getConversaton
}