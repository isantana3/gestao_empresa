const Pessoa = require('../model/Comercial.js'); //declara classe
var db = require('./db.js');
var pessoa;



//(2A) GET inserir
async function mostraPessoa() {
    let listaPessoa = new Array();
    return new Promise((registros, reject) => {
    db.query('SELECT matricula, nome, endereco, datanascimento FROM pessoa', async function (error, colecao) {
        //SETTERS dados para objeto pessoa
        for (const item of colecao) {
            pessoa = new Pessoa();
            pessoa.setMatricula(item.matricula);
            pessoa.setNome(item.nome);
            pessoa.setEndereco(item.endereco);
            pessoa.setDatanascimento(item.datanascimento);
            listaPessoa.push(pessoa);
        }
        registros(listaPessoa);
        }); //fim promise
    }); //fim funcao
}




//(2B) POST inserir
function inserePessoa(pessoa) {
    //GETTERS
    const params = [
    pessoa.getNome(),
    pessoa.getEndereco(),
    pessoa.getDatanascimento()];
    let sql = `INSERT INTO pessoa (nome, endereco, datanascimento) VALUES ('${params[0]}', '${params[1]}', '${params[2]}')`;
    console.log(sql)
    db.query(sql, function (err, result) {
        if (err) throw err;
        console.log("1 record inserted");
    });
}

// Retrieve
async function retrievePessoa(id) {
    var sql = `SELECT * FROM pessoa WHERE matricula = ${id}`;
    console.log(sql)
    return new Promise((registros, reject) => {
        db.query(sql, async function (err, result) {
            if (err) throw err;
            const pessoa = new Pessoa(result[0]['matricula'],  result[0]['nome'], result[0]['endereco'], result[0]['datanascimento']);
            registros(pessoa);
        });
    });
}

// UPDATE
function updatePessoa(pessoa) {
    let id = pessoa.getMatricula();
    let name = pessoa.getNome();
    let end = pessoa.getEndereco();
    let nasc = pessoa.getDatanascimento();
    var sql = `UPDATE pessoa SET nome = '${name}', endereco = '${end}', datanascimento = '${nasc}' WHERE matricula = ${id}`;
    console.log(sql)
    db.query(sql, async function (err, result) {
        if (err) throw err;
        console.log("Number of records updated: " + result.affectedRows);
    });
}

// Delete
function deletePessoa(id) {
    var sql = `DELETE FROM pessoa WHERE matricula = ${id}`;
    db.query(sql, function (err, result) {
        if (err) throw err;
        console.log("Number of records deleted: " + result.affectedRows);
    });
}


module.exports = {
    mostraPessoa: mostraPessoa,
    inserePessoa: inserePessoa,
    deletePessoa: deletePessoa,
    retrievePessoa: retrievePessoa,
    updatePessoa: updatePessoa
};