const addHeader = (req, res, next) => {
    res.header('Access-Control-Expose-Headers', 'Content-Range')
    next()
}

module.exports = addHeader