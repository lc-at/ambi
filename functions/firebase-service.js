const admin = require('firebase-admin');

admin.initializeApp({
    credential: admin.credential.applicationDefault(),
    databaseURL: 'https://asm-ambi.firebaseio.com'
});

module.exports = admin;