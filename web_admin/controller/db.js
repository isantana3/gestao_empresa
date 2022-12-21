var mysql = require("mysql");
var conexao = mysql.createConnection({
    host: "localhost",
    database: "dw_comercial",
    password: "",
    user: "root",
    port:3306
});

conexao.connect();

module.exports = conexao;