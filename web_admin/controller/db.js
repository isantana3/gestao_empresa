var mysql = require("mysql");
var conexao = mysql.createConnection({
    host: "localhost",
    database: "Bd_Faculdades",
    password: "",
    user: "root",
    port:3366
});

conexao.connect();

module.exports = conexao;