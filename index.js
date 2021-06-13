const express = require('express');
const dotenv = require('dotenv').config();
var bodyParser = require('body-parser');
var cors = require('cors');

const pagination = require('./middleware/pagination')
const {pageNotFound, errorHandle} = require('./middleware/errorHandle');
const authRoute = require('./routes/auth.route');
const lawyerRoute = require('./routes/lawyer.route');
const tinNhanRoute = require('./routes/tinNhan.route');
const app = express();

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static('public'))
app.use(pagination);

const isLive = (req, res) => {
    res.send('Server alive!!!')
}

app.get('/', isLive);
app.use('/auth', authRoute);
app.use('/lawyer', lawyerRoute);
app.use('/TinNhan', tinNhanRoute)

app.use(errorHandle)
app.use('*', pageNotFound)

const PORT = process.env.API_PORT
app.listen(PORT, err => {
    if (err) console.log(err)
    else console.log(`app listen at ${PORT}`)
})
