var express = require("express");
var app = express();
var bodyParser = require('body-parser');
app.set("engine ejs", "ejs");
app.use(bodyParser.urlencoded({extended: false}));

const controle = require('./controller/controle.js'); //declara (Controll)
const Pessoa = require('./model/Comercial.js'); //declara classe Pesssoa (Model)

//(1) GET GERAL
app.get('/', async function (req, res) {
    let colecao = new Array();
    colecao = await controle.mostraPessoa();
    res.render('index.ejs', { dados: colecao }); 
});

//(1) GET vendas
app.get('/vendas/', async function (req, res) {
    let colecao = new Array();
    colecao = await controle.mostraPessoa();
    res.render('vendas.ejs', { dados: colecao }); 
});

//(1) GET compras
app.get('/compras/', async function (req, res) {
    let colecao = new Array();
    colecao = await controle.mostraPessoa();
    res.render('compras.ejs', { dados: colecao }); 
});

//(1) GET GERAL
app.get('/financeiro/', async function (req, res) {
    let colecao = new Array();
    colecao = await controle.mostraPessoa();
    res.render('financeiro.ejs', { dados: colecao }); 
});

//(1) GET GERAL
app.get('/contratos/', async function (req, res) {
    let colecao = new Array();
    colecao = await controle.mostraPessoa();
    res.render('contratos.ejs', { dados: colecao }); 
});

//(1) GET GERAL
app.get('/transporte/', async function (req, res) {
    let colecao = new Array();
    colecao = await controle.mostraPessoa();
    res.render('tansporte.ejs', { dados: colecao }); 
});

//(1) GET GERAL
app.get('/estoque/', async function (req, res) {
    let colecao = new Array();
    colecao = await controle.mostraPessoa();
    res.render('estoque.ejs', { dados: colecao }); 
});


app.listen(3000, () => {
    console.log('SERVIDOR ATIVO, ACESSE http://localhost:3000');
});