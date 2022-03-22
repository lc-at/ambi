const functions = require("firebase-functions");
const express = require("express");
const bodyParser = require("body-parser");
const app = express();


app.use(bodyParser.json());
app.use('/api', require('./routes'))

app.get('/api', (req, res) => {
   res.send({ status: 'ok', msg: 'hi asm! :D, this is your first function' });
})


exports.app = functions.https.onRequest(app);