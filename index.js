const express = require('express');
const dotenv = require('dotenv').config();
var bodyParser = require('body-parser');
var cors = require('cors');
const http = require('http');
const tinNhanService = require('./services/tinNhan.service');

const pagination = require('./middleware/pagination')
const {pageNotFound, errorHandle} = require('./middleware/errorHandle');
const authRoute = require('./routes/auth.route');
const lawyerRoute = require('./routes/lawyer.route');
const tinNhanRoute = require('./routes/tinNhan.route');
const { stat } = require('fs');
const app = express();

var server = http.createServer(app);
var io = require("socket.io")(server, {cors: {origin: '*',}});

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

io.on("connection", (socket) => {
    console.log("Ket noi socket");

    socket.on('join', ({idTuVan, idUser}, callback) => {
        socket.join(idTuVan);
    })

    socket.on('accept',async ({idTuVan}) => {
        await tinNhanService.acceptTuVan({idTuVan});
        const status = await tinNhanService.getStatus({id_TuVan: idTuVan});
        io.to(idTuVan).emit('resStatus', {status:status});
    })
    
    socket.on('tuChoi',async ({idTuVan}) => {
        await tinNhanService.tuChoi({idTuVan});
        const status = await tinNhanService.getStatus({id_TuVan: idTuVan});
        io.to(idTuVan).emit('resStatus', {status:status});
    })
    
    socket.on('sendMess', async ({sendMess, idTuVan, isSend}) => {
        await tinNhanService.insertTinNhanLawyer({sendMess, idTuVan, isSend});
        const mess = await tinNhanService.getTinNhan({id_TuVan: idTuVan});
        io.to(idTuVan).emit('mess', {mess});
    });

    socket.on('disconnect', () => {
        console.log("Ngat ket noi socket");
    })
})

app.use(errorHandle)
app.use('*', pageNotFound)

const PORT = process.env.API_PORT
server.listen(PORT, err => {
    if (err) console.log(err)
    else console.log(`app listen at ${PORT}`)
})

// const SOCKET_PORT = process.env.SOCKET_PORT ;
// server.listen(SOCKET_PORT, (err) => {
//     if(err) console.log(err);
//     else console.log(`socket listen at ${SOCKET_PORT}`);
// })