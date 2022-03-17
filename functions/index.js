const functions = require("firebase-functions");
const express = require("express");
const app = express();

app.get('/api', (req, res) => {
   res.send({status: 'ok', msg: 'hi asm! :D, this is your first function'});
})

exports.app = functions.https.onRequest(app);