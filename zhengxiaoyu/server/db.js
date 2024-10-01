const express = require('express');
const app = express();
const Api = require('./api');
const bodyParser = require('body-parser');
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: false }));
const cors = require('cors');
app.use(cors());
app.use('/index', Api);

app.listen(3100);

console.log('listening');