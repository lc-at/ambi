const admin = require('../firebase-service')
const router = require('express').Router();

router.post('', (req, res) => {
    try {
        const {
            displayName,
            email,
            password,
            university,
            major,
        } = req.body;

        console.log(req.body);

        if (!/\.(edu|sch|(ac|sch)\...)$/.test(email)) {
            return res.status(400).json({ error: 'Email must be from an educational institute' });
        }

        admin.auth().createUser({
            email,
            displayName,
            password,
        }).then((user) => {
            res.send(user)
        }).catch((err) => {
            res.status(400).json({ error: err });
        })
    } catch (err) {
        console.log(err);
        return res.status(400).json({ error: 'Invalid params' });
    }

});

module.exports = router;