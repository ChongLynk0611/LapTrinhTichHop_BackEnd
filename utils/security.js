require('dotenv').config();
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

//ma hoa 1 chieu

const generatePassword = async (password) => {
    const satl = await bcrypt.genSalt(parseInt(process.env.SALT_ROUND))
    const hasdPassword = await bcrypt.hash(password, satl)
    return hasdPassword
}

const comfirmPassword = async (password, hasdPassword) => {
    const result = await bcrypt.compare(password, hasdPassword)
    return result
}

//ma hoa 2 chieu

const generateToken = ({id_User}) => {
    const token = jwt.sign({id_User}, process.env.JWT_SECRET_KEY,
        {
            expiresIn: '1h'
        })
    return token
}

const verifyToken = (token) => {
    const data = jwt.verify(token, process.env.JWT_SECRET_KEY)
    return data
}

module.exports = {
    generatePassword,
    comfirmPassword,
    generateToken,
    verifyToken
}