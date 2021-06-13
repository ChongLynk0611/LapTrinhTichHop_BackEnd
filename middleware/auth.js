const e = require('express')
const security = require('../utils/security')

const requireLogin = (req, res, next) => {
   try {
        const token = req.headers.authorization.split(' ')[1]
        const decodedToken = security.verifyToken(token)
        req.username = decodedToken.username
        req.role = decodedToken.role 
        next()
   } catch (error) {
       console.log(error)
       next('xac thuc that bai')
   }  
}

const requireRole = (role) => {
    const middleware = async (req, res, next) =>{
        if (req.role == role) next()
        else {
            console.log(req.role)
            console.log(role)
            next('khong duoc cap quyen')
        }
    }
    return middleware()
}

module.exports = {
    requireLogin,
    requireRole
}
