const db = require('../utils/db');

const getConversation = async ({id_User}) => {
    const query = ` select TV.id_TuVan ,LS.id_LuatSu, LS.Ten, LS.Image 
                    from LuatSu as LS, TuVan as TV 
                    where LS.id_LuatSu = TV.id_LuatSu and TV.id_User = ?`
    const result = await db.query(query, [id_User]);
    return result;
}

const getConversationLawyer = async ({id_lawyer}) => {
    const query = ` select TV.id_TuVan ,U.Ten, U.Image 
                    from User as U, TuVan as TV 
                    where U.id_User = TV.id_User and TV.id_LuatSu = ?`
    const result = await db.query(query, [id_lawyer]);
    return result;
}

const getTinNhan = async ({id_TuVan}) => {
    const query = `select * from TinNhan where id_TuVan = ?`;

    const result = await db.query(query, [id_TuVan]);
    return result;
}

const insertTinNhanLawyer = async ({sendMess, idTuVan, isSend}) => {
    const query = `insert into TinNhan(NoiDung, id_TuVan, userSend)
                    values(?, ?, ?)`;
    await db.queryOne(query, [sendMess, idTuVan, isSend]);
    
}

const getStatus = async ({id_TuVan}) => {
    const query = `select TrangThai from TuVan where id_TuVan = ?`;
    const status = await db.queryOne(query, [id_TuVan]);
    return status;
}

const acceptTuVan = async ({idTuVan}) =>{
    const query = `update TuVan set TrangThai = 1 where id_TuVan = ?`;
    await db.queryOne(query, [idTuVan]);
}

const tuChoi = async ({idTuVan}) =>{
    const query = `update TuVan set TrangThai = 2 where id_TuVan = ?`;
    await db.queryOne(query, [idTuVan]);
}

module.exports = {
    getConversation,
    getConversationLawyer,
    getTinNhan,
    insertTinNhanLawyer,
    getStatus,
    acceptTuVan,
    tuChoi
}