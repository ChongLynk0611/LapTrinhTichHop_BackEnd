const db = require('../utils/db');

const getConversation = async ({id_User}) => {
    const query = ` select LS.id_LuatSu, LS.Ten, LS.Image 
                    from LuatSu as LS, TuVan as TV 
                    where LS.id_LuatSu = TV.id_LuatSu and TV.id_User = ?`
    const result = await db.query(query, [id_User]);
    return result;
}

module.exports = {
    getConversation
}