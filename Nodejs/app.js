
const express = require('express');
const app = express();
var index = require('./routes/index');

var path = require('path');

var mysql = require('mysql');

var dir = path.join(__dirname, 'public');

app.use(express.static(dir));


app.listen(9286);

//Routing
app.get("/",index);


app.engine('html', require('ejs').renderFile);
app.set('view engine', 'html');
app.set('views', __dirname + "/views");

var db = mysql.createConnection({
    host: 'localhost',
    user: 'user',
    password: '92860611',
    database: 'webbanhang'
 });

 global.db=db;

 app.get("/detail/:id", require('./routes/detail'));
