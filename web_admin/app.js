var express = require("express");
var app = express();
var bodyParser = require('body-parser');
app.set("engine ejs", "ejs");
app.use(bodyParser.urlencoded({extended: false}));

const controle = require('./controller/controle.js'); //declara (Controll)

// GET GERAL
app.get('/', async function (req, res) {
    let colecao = new Array();
    colecao = await controle.comercialData();
    res.render('index.ejs', { dados: colecao }); 
});

// GET vendas
app.get('/vendas/', async function (req, res) {
    let colecao = new Array();
    colecao = await controle.vendasData();
    res.render('vendas.ejs', { dados: colecao }); 
});

// GET compras
app.get('/compras/', async function (req, res) {
    let colecao = new Array();
    colecao = await controle.comprasData();
    res.render('compras.ejs', { dados: colecao }); 
});

// GET GERAL
app.get('/financeiro/', async function (req, res) {
    let colecao = new Array();
    colecao = await controle.financeiroData();
    res.render('financeiro.ejs', { dados: colecao }); 
});

// GET GERAL
app.get('/contratos/', async function (req, res) {
    let colecao = new Array();
    colecao = await controle.contratoData();
    res.render('contratos.ejs', { dados: colecao }); 
});

// GET GERAL
app.get('/transporte/', async function (req, res) {
    let colecao = new Array();
    colecao = await controle.transporteData();
    res.render('tansporte.ejs', { dados: colecao }); 
});

// GET GERAL
app.get('/estoque/', async function (req, res) {
    let colecao = new Array();
    colecao = await controle.estoqueData();
    res.render('estoque.ejs', { dados: colecao }); 
});


app.listen(3000, () => {
    console.log('SERVIDOR ATIVO, ACESSE http://localhost:3000');
});