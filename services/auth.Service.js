const db = require('../utils/db');
const security = require('../utils/security');

const login = async ({username, password}) => {
    const query = `select id_User,TaiKhoan, MatKhau from User where TaiKhoan = ? `;
    const result = await db.queryOne(query, [username]);
    if(!result) return false;
    const compare = result.MatKhau === password;

    if(compare){
        const accesstoken = await security.generateToken({id_User: result.id_User});
        return accesstoken;
    }

    return false;
}

const loginLawyer = async ({username, password}) => {
    const query = `select id_LuatSu,TaiKhoan, MatKhau from LuatSu where TaiKhoan = ? `;
    const result = await db.queryOne(query, [username]);
    if(!result) return false;
    const compare = result.MatKhau === password;
    if(compare){
        const accesstoken = await security.generateToken({id_User: result.id_LuatSu});
        return accesstoken;
    }

    return false;
}

module.exports = {
    login,
    loginLawyer
}