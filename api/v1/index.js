require('dotenv').config()
const express = require('express');
const { execSync } = require('child_process');
const { Nomina, Genetica, Personae, Dominia, Dynastia, Avataria } = require('opendnd');
const { Genders } = require('@opendnd/core')

const app = express();

app.get('/', (req, res) => {
   return res.send('Alright');
});

console.log(Avataria.race);

const avataria = new Avataria();

app.get('/api/v1/avatar/:race?', (req, res) => {
    let opts = {
        race: req.params.race
    }
    return res.send(avataria.generate(opts))
});

app.get('/api/v1/avatar/:race/:gender?', (req, res) => {
    let opts = {
        race: req.params.race,
        gender: req.params.gender
    }
    return res.send(avataria.generate(opts))
});
app.get('/api/v1/name', (req, res) => {
    result = execSync('dnd name');
    return res.send(result.toString().replace(/[\|_\-\\\/. \n]*<\?xml/g, '<?xml'))
});
app.listen(process.env.PORT, () =>
    console.log(`Example app listening on port ${process.env.PORT}!`)
);

