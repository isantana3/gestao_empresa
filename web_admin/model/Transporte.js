class Transporte {
    constructor(origem_carga, destino_carga, transportador,
    veiculo, posto_abastecimento, motorista, 
    data_venda, data_vigencia, data_compra, data_financeiro, 
    data_entrega, quant_entrega, total_entrada, valor_contrato,
    quant_vendas, valor_vendas, quant_compras, valor_compras,
    quant_estoque, valor_estoque, receb_pagamento, frete) {
        this.origem_carga = origem_carga;
        this.destino_carga = destino_carga;
        this.transportador = transportador;
        this.veiculo = veiculo; 
        this.posto_abastecimento = posto_abastecimento; 
        this.motorista = motorista; 
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

    getOrigemCarga() {
        return this.origem_carga; 
    }
    setOrigemCarga(value) {
        this.origem_carga = value; 
    }
    getDestinoCarga() {
        return this.destino_carga;   
    }
    setDestinoCarga(value) {
        this.destino_carga = value; 
    }
    getTransportador() {
        return this.transportador; 
    }
    setTransportador(value) {
        this.transportador = value; 
    }
    getVeiculo() {
        return this.veiculo; 
    }
    setVeiculo(value) {
        this.veiculo = value; 
    }
    getPostoAbastecimento() {
        return this.posto_abastecimento; 
    }
    setPostoAbastecimento(value) {
        this.posto_abastecimento = value; 
    }
    getMotorista() {
        return this.motorista; 
    }
    setMotorista(value) {
        this.motorista = value; 
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
module.exports = Transporte;