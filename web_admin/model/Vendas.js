class Vendas {
    constructor(num_saida, cliente, grupo_vendas,
    nota_fiscal, setor_vendas, cidade_venda, bairro_venda, estado_venda) {
        this.num_saida = num_saida;
        this.cliente = cliente;
        this.grupo_vendas = grupo_vendas;
        this.nota_fiscal = nota_fiscal; 
        this.setor_vendas = setor_vendas; 
        this.endereco_vendas = endereco_vendas; 
        this.cidade_venda = cidade_venda; 
        this.bairro_venda = bairro_venda; 
        this.estado_venda = estado_venda; 
    }

    getNumSaida() {
        return this.num_saida; 
    }
    setNumSaida(value) {
        this.num_saida = value; 
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
    getEnderecoVendas() {
        return this.endereco_vendas; 
    }
    getEnderecoVendas(value) {
        this.endereco_vendas = value; 
    }
    getEstadoVendas() {
        return this.estado_venda; 
    }
    getEstadoVendas(value) {
        this.estado_venda = value; 
    }
    getCidadeVendas() {
        return this.cidade_venda; 
    }
    getCidadeVendas(value) {
        this.cidade_venda = value; 
    }
    getBairroVendas() {
        return this.bairro_venda; 
    }
    getBairroVendas(value) {
        this.bairro_venda = value; 
    }
}
module.exports = Vendas;