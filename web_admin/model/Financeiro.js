class Vendas {
    constructor(cliente, grupo_vendas,
    nota_fiscal, setor_vendas, numero_compra, numero_venda) {
        this.cliente = cliente;
        this.grupo_vendas = grupo_vendas;
        this.nota_fiscal = nota_fiscal; 
        this.setor_vendas = setor_vendas; 
        this.endereco_vendas = endereco_vendas; 
        this.numero_compra = numero_compra; 
        this.numero_venda = numero_venda; 
    }

    getCliente() {
        return this.cliente;   
    }
    setCliente(value) {
        this.cliente = value; 
    }
    getGrupoVendas() {
        return this.grupo_vendas; 
    }
    setGrupoVendas(value) {
        this.grupo_vendas = value; 
    }
    getNotaFiscal() {
        return this.nota_fiscal; 
    }
    setNotaFiscal(value) {
        this.nota_fiscal = value; 
    }
    getSetorVendas() {
        return this.setor_vendas; 
    }
    setSetorVendas(value) {
        this.setor_vendas = value; 
    }
    getNumeroCompra() {
        return this.numero_compra; 
    }
    getNumeroCompra(value) {
        this.numero_compra = value; 
    }
    getNumeroVendas() {
        return this.numero_venda; 
    }
    getNumeroVendas(value) {
        this.numero_venda = value; 
    }
}
module.exports = Vendas;