const db = require('../utils/db');

const getByService = async({idService, limit, offset}) => {
    const query = ` select LS.id_LuatSu, LS.Ten, LS.NgaySinh,LS.Image
                    from LuatSu as LS, LuatSu_DichVu as LS_DV, DichVu as DV
                    where LS.id_LuatSu = LS_DV.id_LuatSu and DV.id_DichVu = LS_DV.id_DichVu and LS_DV.id_DichVu = ? 
                    limit ?
                    offset ? `;

    const result = await db.query(query, [idService, limit, offset]);

    return result;
}
const TuVan = async ({id_LuatSu, id_User}) => {
    const query = ` select id_TuVan,TrangThai 
                    from TuVan 
                    where id_User = ? and id_LuatSu = ? `
    
    const result = await db.queryOne(query, [id_User, id_LuatSu]);
    if(!result){
        const queryCreate = `insert into TuVan(id_User,id_LuatSu,TrangThai,ThoiLuong) 
                             values(?,?,0,30) `
        
        await db.queryOne(queryCreate, [id_User, id_LuatSu]);
        return;
    }
    const status = result.TrangThai;
    if(status === 2 ){
        const queryUpdate = ` update TuVan set TrangThai = 0 where id_TuVan = ?`;
        await db.queryOne(queryUpdate, [result.id_TuVan]);
        return;
    }

    return true;
}

module.exports = {
    getByService,
    TuVan
}