const Compras = require('../model/Compras.js'); 
const Contrato = require('../model/Contrato.js'); 
const Estoque = require('../model/Estoque.js'); 
const Financeiro = require('../model/Financeiro.js'); 
const Transporte = require('../model/Transporte.js'); 
const Vendas = require('../model/Vendas.js'); 
var db = require('./db.js');



async function comprasData() {
    let listaCompras = new Array();
    return new Promise((registros, reject) => {
    db.query('SELECT CodEntrada, fornecedor, GrupoCompra, NotaFiscal, EnderecoFornecedor, BairroFornecedor, dataVenda, dataVigencia, dataCompra, dataFinanceiro, dataEntrega, QuantEntrada, TotalEntrada, ValorContrato, QuantVendas, QuantCompras, ValorCompras, QuantEstoque, ValorEstoque, RecebPagamento, Frete  FROM ((dim_dw_compras join dim_dw_data on (dim_dw_compras.Id_DimCompras = dim_dw_data.Id_DimData)) join fatos_dw_comercial on (dim_dw_data.Id_DimData = fatos_dw_comercial.Id_Data)) ', async function (error, colecao) {
        for (const item of colecao) {
            compra = new Compras();
            compra.setCodEntrada(item.CodEntrada);
            compra.setFornecedor(item.fornecedor);
            compra.setGrupoCompra(item.GrupoCompra);
            compra.setDataNotaFiscal(item.NotaFiscal);
            compra.setEnderecoFornecedor(item.EnderecoFornecedor);
            compra.setBairroFornecedor(item.BairroFornecedor);
            compra.setDataVenda(item.dataVenda);
            compra.setDataVigencia(item.dataVigencia);
            compra.setDataCompra(item.dataCompra);
            compra.setDataFinanceiro(item.dataFinanceiro);
            compra.setDataEntrega(item.dataEntrega);
            compra.setQuantEntrega(item.QuantEntrada);
            compra.setTotalEntrada(item.TotalEntrada);
            compra.setValorContrato(item.ValorContrato);
            compra.setQuantVendas(item.QuantVendas);
            compra.setValorVendas(item.dataEntrega);
            compra.setQuantCompras(item.QuantCompras);
            compra.setValorCompras(item.ValorCompras);
            compra.setQuantEstoque(item.QuantEstoque);
            compra.setValorEstoque(item.ValorEstoque);
            compra.setRecebPagamento(item.RecebPagamento);
            compra.setFrete(item.Frete);
            listaCompras.push(compra);
        }
        registros(listaCompra);
        }); 
    }); 
}

async function contratoData() {
    let listaContrato = new Array();
    return new Promise((registros, reject) => {
    db.query('SELECT NumContrato, ParteCotrato, NotaFiscal, Aditivo, Supervisor, dataVenda, dataVigencia, dataCompra, dataFinanceiro, dataEntrega, QuantEntrada, TotalEntrada, ValorContrato, QuantVendas, QuantCompras, ValorCompras, QuantEstoque, ValorEstoque, RecebPagamento, Frete  FROM ((dim_dw_contrato join dim_dw_data on (dim_dw_contrato.Id_DimContrato = dim_dw_data.Id_DimData)) join fatos_dw_comercial on (dim_dw_data.Id_DimData = fatos_dw_comercial.Id_Data)) ', async function (error, colecao) {
        for (const item of colecao) {
            contrato = new Contrato();
            contrato.setNumContrato(item.NumContrato);
            contrato.setParteContrato(item.ParteCotrato);
            contrato.setGrupoCompra(item.NotaFiscal);
            contrato.setNotaFiscal(item.Aditivo);
            contrato.setAditivo(item.Supervisor);
            contrato.setDataVenda(item.dataVenda);
            contrato.setDataVigencia(item.dataVigencia);
            contrato.setDataCompra(item.dataCompra);
            contrato.setDataFinanceiro(item.dataFinanceiro);
            contrato.setDataEntrega(item.dataEntrega);
            contrato.setQuantEntrega(item.QuantEntrada);
            contrato.setTotalEntrada(item.TotalEntrada);
            contrato.setValorContrato(item.ValorContrato);
            contrato.setQuantVendas(item.QuantVendas);
            contrato.setValorVendas(item.dataEntrega);
            contrato.setQuantCompras(item.QuantCompras);
            contrato.setValorCompras(item.ValorCompras);
            contrato.setQuantEstoque(item.QuantEstoque);
            contrato.setValorEstoque(item.ValorEstoque);
            contrato.setRecebPagamento(item.RecebPagamento);
            contrato.setFrete(item.Frete);
            listaContrato.push(contrato);
        }
        registros(listaCompra);
        }); 
    }); 
}

async function estoqueData() {
    let listaEstoque = new Array();
    return new Promise((registros, reject) => {
    db.query('SELECT CodProduto, Grupo, Quant_minima, Ressuprimento, Produto, dataCompra, dataFinanceiro, dataEntrega, QuantEntrada, TotalEntrada, ValorContrato, QuantVendas, QuantCompras, ValorCompras, QuantEstoque, ValorEstoque, RecebPagamento, Frete  FROM ((dim_dw_estoque join dim_dw_data on (dim_dw_estoque.Id_DimEstoque = dim_dw_data.Id_DimData)) join fatos_dw_comercial on (dim_dw_data.Id_DimData = fatos_dw_comercial.Id_Data)) ', async function (error, colecao) {
        for (const item of colecao) {
            estoque = new Estoque();
            estoque.setCodProduto(item.CodProduto);
            estoque.setGrupo(item.Grupo);
            estoque.setQuantiMinima(item.Quant_minima);
            estoque.setRessuprimento(item.Ressuprimento);
            estoque.setProduto(item.Produto);
            estoque.setDataVenda(item.dataVenda);
            estoque.setDataVigencia(item.dataVigencia);
            estoque.setDataCompra(item.dataCompra);
            estoque.setDataFinanceiro(item.dataFinanceiro);
            estoque.setDataEntrega(item.dataEntrega);
            estoque.setQuantEntrega(item.QuantEntrada);
            estoque.setTotalEntrada(item.TotalEntrada);
            estoque.setValorContrato(item.ValorContrato);
            estoque.setQuantVendas(item.QuantVendas);
            estoque.setValorVendas(item.dataEntrega);
            estoque.setQuantCompras(item.QuantCompras);
            estoque.setValorCompras(item.ValorCompras);
            estoque.setQuantEstoque(item.QuantEstoque);
            estoque.setValorEstoque(item.ValorEstoque);
            estoque.setRecebPagamento(item.RecebPagamento);
            estoque.setFrete(item.Frete);
            listaEstoque.push(estoque);
        }
        registros(listaEstoque);
        }); 
    });
}

async function financeiroData() {
    let listaFinanceiro = new Array();
    return new Promise((registros, reject) => {
    db.query('SELECT Cliente, GrupoVendas, NotaFiscal, SetorVendas, NumeroCompra, NumeroVenda, dataCompra, dataFinanceiro, dataEntrega, QuantEntrada, TotalEntrada, ValorContrato, QuantVendas, QuantCompras, ValorCompras, QuantEstoque, ValorEstoque, RecebPagamento, Frete  FROM ((dim_dw_financeiro join dim_dw_data on (dim_dw_financeiro.Id_DimFinanceiro = dim_dw_data.Id_DimData)) join fatos_dw_comercial on (dim_dw_data.Id_DimData = fatos_dw_comercial.Id_Data)) ', async function (error, colecao) {
        for (const item of colecao) {
            financeiro = new Financeiro();
            financeiro.setCliente(item.Cliente);
            financeiro.setGrupoVendas(item.GrupoVendas);
            financeiro.setNotaFiscal(item.NotaFiscal);
            financeiro.setSetorVendas(item.SetorVendas);
            financeiro.setNumeroCompra(item.NumeroCompra);
            financeiro.setNumeroVendas(item.NumeroVenda);
            financeiro.setDataVenda(item.dataVenda);
            financeiro.setDataVigencia(item.dataVigencia);
            financeiro.setDataCompra(item.dataCompra);
            financeiro.setDataFinanceiro(item.dataFinanceiro);
            financeiro.setDataEntrega(item.dataEntrega);
            financeiro.setQuantEntrega(item.QuantEntrada);
            financeiro.setTotalEntrada(item.TotalEntrada);
            financeiro.setValorContrato(item.ValorContrato);
            financeiro.setQuantVendas(item.QuantVendas);
            financeiro.setValorVendas(item.dataEntrega);
            financeiro.setQuantCompras(item.QuantCompras);
            financeiro.setValorCompras(item.ValorCompras);
            financeiro.setQuantEstoque(item.QuantEstoque);
            financeiro.setValorEstoque(item.ValorEstoque);
            financeiro.setRecebPagamento(item.RecebPagamento);
            financeiro.setFrete(item.Frete);
            listaFinanceiro.push(financeiro);
        }
        registros(listaFinanceiro);
        }); 
    });
}

async function transporteData() {
    let listaTransporte = new Array();
    return new Promise((registros, reject) => {
    db.query('SELECT OrigemCarga, DestinoCarga, Transportador, Veiculo, PostoAbastecimento, Motorista, dataCompra, dataFinanceiro, dataEntrega, QuantEntrada, TotalEntrada, ValorContrato, QuantVendas, QuantCompras, ValorCompras, QuantEstoque, ValorEstoque, RecebPagamento, Frete  FROM ((dim_dw_transporte join dim_dw_data on (dim_dw_transporte.Id_DimTransporte = dim_dw_data.Id_DimData)) join fatos_dw_comercial on (dim_dw_data.Id_DimData = fatos_dw_comercial.Id_Data)) ', async function (error, colecao) {
        for (const item of colecao) {
            transporte = new Transporte();
            transporte.setOrigemCarga(item.OrigemCarga);
            transporte.setDestinoCarga(item.DestinoCarga);
            transporte.setTransportador(item.Transportador);
            transporte.setVeiculo(item.Veiculo);
            transporte.setPostoAbastecimento(item.PostoAbastecimento);
            transporte.setMotorista(item.Motorista);
            transporte.setDataVenda(item.dataVenda);
            transporte.setDataVigencia(item.dataVigencia);
            transporte.setDataCompra(item.dataCompra);
            transporte.setDataFinanceiro(item.dataFinanceiro);
            transporte.setDataEntrega(item.dataEntrega);
            transporte.setQuantEntrega(item.QuantEntrada);
            transporte.setTotalEntrada(item.TotalEntrada);
            transporte.setValorContrato(item.ValorContrato);
            transporte.setQuantVendas(item.QuantVendas);
            transporte.setValorVendas(item.dataEntrega);
            transporte.setQuantCompras(item.QuantCompras);
            transporte.setValorCompras(item.ValorCompras);
            transporte.setQuantEstoque(item.QuantEstoque);
            transporte.setValorEstoque(item.ValorEstoque);
            transporte.setRecebPagamento(item.RecebPagamento);
            transporte.setFrete(item.Frete);
            listaTransporte.push(transporte);
        }
        registros(listaTransporte);
        }); 
    }); 
}

async function vendasData() {
    let listaVendas = new Array();
    return new Promise((registros, reject) => {
    db.query('SELECT NumSaida, Cliente, GrupoVendas, NotaFiscal, SetorVendas, EnderecoVenda, CidadeVenda, BairroVenda, EstadoVenda, dataCompra, dataFinanceiro, dataEntrega, QuantEntrada, TotalEntrada, ValorContrato, QuantVendas, QuantCompras, ValorCompras, QuantEstoque, ValorEstoque, RecebPagamento, Frete  FROM ((dim_dw_vendas join dim_dw_data on (dim_dw_vendas.Id_DimVendas = dim_dw_data.Id_DimData)) join fatos_dw_comercial on (dim_dw_data.Id_DimData = fatos_dw_comercial.Id_Data)) ', async function (error, colecao) {
        for (const item of colecao) {
            venda = new Vendas();
            venda.setOrigemCarga(item.NumSaida);
            venda.setDestinoCarga(item.Cliente);
            venda.setTransportador(item.GrupoVendas);
            venda.setVeiculo(item.NotaFiscal);
            venda.setPostoAbastecimento(item.SetorVendas);
            venda.setMotorista(item.EnderecoVenda);
            venda.setMotorista(item.CidadeVenda);
            venda.setMotorista(item.BairroVenda);
            venda.setMotorista(item.EstadoVenda);
            venda.setDataVenda(item.dataVenda);
            venda.setDataVigencia(item.dataVigencia);
            venda.setDataCompra(item.dataCompra);
            venda.setDataFinanceiro(item.dataFinanceiro);
            venda.setDataEntrega(item.dataEntrega);
            venda.setQuantEntrega(item.QuantEntrada);
            venda.setTotalEntrada(item.TotalEntrada);
            venda.setValorContrato(item.ValorContrato);
            venda.setQuantVendas(item.QuantVendas);
            venda.setValorVendas(item.dataEntrega);
            venda.setQuantCompras(item.QuantCompras);
            venda.setValorCompras(item.ValorCompras);
            venda.setQuantEstoque(item.QuantEstoque);
            venda.setValorEstoque(item.ValorEstoque);
            venda.setRecebPagamento(item.RecebPagamento);
            venda.setFrete(item.Frete);
            listaVendas.push(venda);
        }
        registros(listaVendas);
        }); 
    }); 
}



module.exports = {
    comercialData: comercialData,
    comprasData: comprasData,
    contratoData: contratoData,
    estoqueData: estoqueData,
    financeiroData: financeiroData,
    transporteData: transporteData,
    vendasData: vendasData
};