class Compras {
    constructor(cod_entrada, fornecedor, grupo_compra,
    nota_fiscal, endereco_fornecedor, bairro_fornecedor, 
    data_venda, data_vigencia, data_compra, data_financeiro, 
    data_entrega, quant_entrega, total_entrada, valor_contrato,
    quant_vendas, valor_vendas, quant_compras, valor_compras,
    quant_estoque, valor_estoque, receb_pagamento, frete) {
        this.cod_entrada = cod_entrada;
        this.fornecedor = fornecedor;
        this.grupo_compra = grupo_compra;
        this.nota_fiscal = nota_fiscal; 
        this.endereco_fornecedor = endereco_fornecedor; 
        this.bairro_fornecedor = bairro_fornecedor; 
        this.data_venda = data_venda; 
        this.data_vigencia = data_vigencia; 
        this.data_compra = data_compra; 
        this.data_financeiro = data_financeiro; 
        this.data_entrega = data_entrega; 
        this.quant_entrega = quant_entrega; 
        this.total_entrada = total_entrada; 
        this.valor_contrato = valor_contrato; 
        this.quant_vendas = quant_vendas; 
        this.valor_vendas = valor_vendas; 
        this.quant_compras = quant_compras; 
        this.valor_compras = valor_compras; 
        this.quant_estoque = quant_estoque; 
        this.valor_estoque = valor_estoque; 
        this.receb_pagamento = receb_pagamento; 
        this.frete = frete; 
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
    setBairroFornecedor(value) {
        this.bairro_fornecedor = value; 
    }
    getDataVenda() {
        return this.data_venda; 
    }
    setDataVenda(value) {
        this.data_venda = value; 
    }
    getDataVigencia() {
        return this.data_vigencia; 
    }
    setDataVigencia(value) {
        this.data_vigencia = value; 
    }
    getDataCompra() {
        return this.data_compra; 
    }
    setDataCompra(value) {
        this.data_compra = value; 
    }
    getDataFinanceiro() {
        return this.data_financeiro; 
    }
    setDataFinanceiro(value) {
        this.data_financeiro = value; 
    }
    getDataEntrega() {
        return this.data_entrega; 
    }
    setDataEntrega(value) {
        this.data_entrega = value; 
    }
    getQuantEntrega() {
        return this.quant_entrega; 
    }
    setQuantEntrega(value) {
        this.quant_entrega = value; 
    }
    getTotalEntrada() {
        return this.total_entrada; 
    }
    setTotalEntrada(value) {
        this.total_entrada = value; 
    }
    getValorContrato() {
        return this.valor_contrato; 
    }
    setValorContrato(value) {
        this.valor_contrato = value; 
    }
    getQuantVendas() {
        return this.quant_vendas; 
    }
    setQuantVendas(value) {
        this.quant_vendas = value; 
    }
    getValorVendas() {
        return this.valor_vendas; 
    }
    setValorVendas(value) {
        this.valor_vendas = value; 
    }
    getQuantCompras() {
        return this.quant_compras; 
    }
    setQuantCompras(value) {
        this.quant_compras = value; 
    }
    getValorCompras() {
        return this.valor_compras; 
    }
    setValorCompras(value) {
        this.valor_compras = value; 
    }
    getQuantEstoque() {
        return this.quant_estoque; 
    }
    setQuantEstoque(value) {
        this.quant_estoque = value; 
    }
    getValorEstoque() {
        return this.valor_estoque; 
    }
    setValorEstoque(value) {
        this.valor_estoque = value; 
    }
    getRecebPagamento() {
        return this.receb_pagamento; 
    }
    setRecebPagamento(value) {
        this.receb_pagamento = value; 
    }
    getFrete() {
        return this.frete; 
    }
    setFrete(value) {
        this.frete = value; 
    }

}
module.exports = Compras;