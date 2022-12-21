class Compras {
    constructor(cod_entrada, fornecedor, grupo_compra,
    nota_fiscal, endereco_fornecedor, bairro_fornecedor) {
        this.cod_entrada = cod_entrada;
        this.fornecedor = fornecedor;
        this.grupo_compra = grupo_compra;
        this.nota_fiscal = nota_fiscal; 
        this.endereco_fornecedor = endereco_fornecedor; 
        this.bairro_fornecedor = bairro_fornecedor; 
    }

    getCodEntrada() {
        return this.cod_entrada; 
    }
    setCodEntrada(value) {
        this.cod_entrada = value; 
    }
    getFornecedor() {
        return this.fornecedor;   
    }
    setFornecedor(value) {
        this.fornecedor = value; 
    }
    getGrupoCompra() {
        return this.grupo_compra; 
    }
    setGrupoCompra(value) {
        this.grupo_compra = value; 
    }
    getDataNotaFiscal() {
        return this.nota_fiscal; 
    }
    setDataNotaFiscal(value) {
        this.nota_fiscal = value; 
    }
    getEnderecoFornecedor() {
        return this.endereco_fornecedor; 
    }
    setEnderecoFornecedor(value) {
        this.endereco_fornecedor = value; 
    }
    getBairroFornecedor() {
        return this.bairro_fornecedor; 
    }
    getBairroFornecedor(value) {
        this.bairro_fornecedor = value; 
    }
}
module.exports = Compras;