class Estoque {
    constructor(cod_produto, grupo, quant_minima,
    ressuprimento, produto) {
        this.cod_produto = cod_produto;
        this.grupo = grupo;
        this.quant_minima = quant_minima;
        this.ressuprimento = ressuprimento; 
        this.produto = produto; 
    }

    getCodProduto() {
        return this.cod_produto; 
    }
    setCodProduto(value) {
        this.cod_produto = value; 
    }
    getGrupo() {
        return this.grupo;   
    }
    setGrupo(value) {
        this.grupo = value; 
    }
    getQuantiMinima() {
        return this.quant_minima; 
    }
    setQuantiMinima(value) {
        this.quant_minima = value; 
    }
    getRessuprimento() {
        return this.ressuprimento; 
    }
    setRessuprimento(value) {
        this.ressuprimento = value; 
    }
    getProduto() {
        return this.produto; 
    }
    setProduto(value) {
        this.produto = value; 
    }

}
module.exports = Estoque;