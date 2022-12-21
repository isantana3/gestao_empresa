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
    db.query('SELECT CodigoEntrada, GrupoCompra, NotaFiscal, EnderecoFornecedor, BairroFornecedor, dataVenda, dataVigencia, dataCompra, dataFinanceiro, dataEntrega, Quant_Entrada, ValorContrato, Quant_Vendas, ValorVendas, Quant_Compras, Valor_compras, Quant_Estoque, Valor_Estoque, Receb_Pagamento, Frete  FROM ((dim_dw_compras join dim_dw_data on (dim_dw_compras.Id_DimCompras = dim_dw_data.Id_DimData)) join fatos_dw_comercial on (dim_dw_data.Id_DimData = fatos_dw_comercial.Id_Data)) ', async function (error, colecao) {
        if (error != null){
            console.log(error)
        }
        else{
            for (const item of colecao) {
                compra = new Compras();
                compra.setCodEntrada(item.CodigoEntrada);
                compra.setGrupoCompra(item.GrupoCompra);
                compra.setDataNotaFiscal(item.NotaFiscal);
                compra.setEnderecoFornecedor(item.EnderecoFornecedor);
                compra.setBairroFornecedor(item.BairroFornecedor);
                compra.setDataVenda(item.dataVenda);
                compra.setDataVigencia(item.dataVigencia);
                compra.setDataCompra(item.dataCompra);
                compra.setDataFinanceiro(item.dataFinanceiro);
                compra.setDataEntrega(item.dataEntrega);
                compra.setQuantEntrega(item.Quant_Entrada);
                compra.setValorContrato(item.ValorContrato);
                compra.setQuantVendas(item.Quant_Vendas);
                compra.setValorVendas(item.dataEntrega);
                compra.setQuantCompras(item.Quant_Compras);
                compra.setValorCompras(item.Valor_compras);
                compra.setQuantEstoque(item.Quant_Estoque);
                compra.setValorEstoque(item.Valor_Estoque);
                compra.setRecebPagamento(item.Receb_Pagamento);
                compra.setFrete(item.Frete);
                listaCompras.push(compra);
            }
        }
        registros(listaCompras);
        }); 
    }); 
}

async function contratoData() {
    let listaContrato = new Array();
    return new Promise((registros, reject) => {
    db.query('SELECT NumContrato, ParteContrato, Aditivo, Supervisor, dataVenda, dataVigencia, dataCompra, dataFinanceiro, dataEntrega, Quant_Entrada, ValorContrato, Quant_Vendas, ValorVendas, Quant_Compras, Valor_compras, Quant_Estoque, Valor_Estoque, Receb_Pagamento, Frete  FROM ((dim_dw_contrato join dim_dw_data on (dim_dw_contrato.Id_DimContrato = dim_dw_data.Id_DimData)) join fatos_dw_comercial on (dim_dw_data.Id_DimData = fatos_dw_comercial.Id_Data)) ', async function (error, colecao) {
        if (error != null){
            console.log(error)
        }
        else{
            for (const item of colecao) {
                contrato = new Contrato();
                contrato.setNumContrato(item.NumContrato);
                contrato.setParteContrato(item.ParteContrato);
                contrato.setNotaFiscal(item.Aditivo);
                contrato.setAditivo(item.Supervisor);
                contrato.setDataVenda(item.dataVenda);
                contrato.setDataVigencia(item.dataVigencia);
                contrato.setDataCompra(item.dataCompra);
                contrato.setDataFinanceiro(item.dataFinanceiro);
                contrato.setDataEntrega(item.dataEntrega);
                contrato.setQuantEntrega(item.Quant_Entrada);
                contrato.setValorContrato(item.ValorContrato);
                contrato.setQuantVendas(item.Quant_Vendas);
                contrato.setValorVendas(item.dataEntrega);
                contrato.setQuantCompras(item.Quant_Compras);
                contrato.setValorCompras(item.Valor_compras);
                contrato.setQuantEstoque(item.Quant_Estoque);
                contrato.setValorEstoque(item.Valor_Estoque);
                contrato.setRecebPagamento(item.Receb_Pagamento);
                contrato.setFrete(item.Frete);
                listaContrato.push(contrato);
            }
        }
        registros(listaContrato);
        }); 
    }); 
}

async function estoqueData() {
    let listaEstoque = new Array();
    return new Promise((registros, reject) => {
    db.query('SELECT CodigoProduto, Grupo, Quant_minima, Ressuprimento, Produto, dataCompra, dataFinanceiro, dataEntrega, Quant_Entrada, ValorContrato, Quant_Vendas, ValorVendas, Quant_Compras, Valor_compras, Quant_Estoque, Valor_Estoque, Receb_Pagamento, Frete  FROM ((dim_dw_estoque join dim_dw_data on (dim_dw_estoque.Id_DimEstoque = dim_dw_data.Id_DimData)) join fatos_dw_comercial on (dim_dw_data.Id_DimData = fatos_dw_comercial.Id_Data)) ', async function (error, colecao) {
        if (error != null){
            console.log(error)
        }
        else{
            for (const item of colecao) {
                estoque = new Estoque();
                estoque.setCodProduto(item.CodigoProduto);
                estoque.setGrupo(item.Grupo);
                estoque.setQuantiMinima(item.Quant_minima);
                estoque.setRessuprimento(item.Ressuprimento);
                estoque.setProduto(item.Produto);
                estoque.setDataVenda(item.dataVenda);
                estoque.setDataVigencia(item.dataVigencia);
                estoque.setDataCompra(item.dataCompra);
                estoque.setDataFinanceiro(item.dataFinanceiro);
                estoque.setDataEntrega(item.dataEntrega);
                estoque.setQuantEntrega(item.Quant_Entrada);
                estoque.setValorContrato(item.ValorContrato);
                estoque.setQuantVendas(item.Quant_Vendas);
                estoque.setValorVendas(item.dataEntrega);
                estoque.setQuantCompras(item.Quant_Compras);
                estoque.setValorCompras(item.Valor_compras);
                estoque.setQuantEstoque(item.Quant_Estoque);
                estoque.setValorEstoque(item.Valor_Estoque);
                estoque.setRecebPagamento(item.Receb_Pagamento);
                estoque.setFrete(item.Frete);
                listaEstoque.push(estoque);
            }
        }
        registros(listaEstoque);
        }); 
    });
}

async function financeiroData() {
    let listaFinanceiro = new Array();
    return new Promise((registros, reject) => {
    db.query('SELECT Cliente, GrupoVendas, NotaFiscal, SetorVendas, NumeroCompra, NumeroVenda, dataCompra, dataFinanceiro, dataEntrega, Quant_Entrada, ValorContrato, Quant_Vendas, ValorVendas, Quant_Compras, Valor_compras, Quant_Estoque, Valor_Estoque, Receb_Pagamento, Frete  FROM ((dim_dw_financeiro join dim_dw_data on (dim_dw_financeiro.Id_DimFinanceiro = dim_dw_data.Id_DimData)) join fatos_dw_comercial on (dim_dw_data.Id_DimData = fatos_dw_comercial.Id_Data)) ', async function (error, colecao) {
        if (error != null){
            console.log(error)
        }
        else{
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
                financeiro.setQuantEntrega(item.Quant_Entrada);
                financeiro.setValorContrato(item.ValorContrato);
                financeiro.setQuantVendas(item.Quant_Vendas);
                financeiro.setValorVendas(item.dataEntrega);
                financeiro.setQuantCompras(item.Quant_Compras);
                financeiro.setValorCompras(item.Valor_compras);
                financeiro.setQuantEstoque(item.Quant_Estoque);
                financeiro.setValorEstoque(item.Valor_Estoque);
                financeiro.setRecebPagamento(item.Receb_Pagamento);
                financeiro.setFrete(item.Frete);
                listaFinanceiro.push(financeiro);
            }
        }
        registros(listaFinanceiro);
        }); 
    });
}

async function transporteData() {
    let listaTransporte = new Array();
    return new Promise((registros, reject) => {
    db.query('SELECT OrigemCarga, DestinoCarga, Transportador, Veiculo, PostoAbastecimento, Motorista, dataCompra, dataFinanceiro, dataEntrega, Quant_Entrada, ValorContrato, Quant_Vendas, ValorVendas, Quant_Compras, Valor_compras, Quant_Estoque, Valor_Estoque, Receb_Pagamento, Frete  FROM ((dim_dw_transporte join dim_dw_data on (dim_dw_transporte.Id_DimTransporte = dim_dw_data.Id_DimData)) join fatos_dw_comercial on (dim_dw_data.Id_DimData = fatos_dw_comercial.Id_Data)) ', async function (error, colecao) {
        if (error != null){
            console.log(error)
        }
        else{
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
                transporte.setQuantEntrega(item.Quant_Entrada);
                transporte.setValorContrato(item.ValorContrato);
                transporte.setQuantVendas(item.Quant_Vendas);
                transporte.setValorVendas(item.dataEntrega);
                transporte.setQuantCompras(item.Quant_Compras);
                transporte.setValorCompras(item.Valor_compras);
                transporte.setQuantEstoque(item.Quant_Estoque);
                transporte.setValorEstoque(item.Valor_Estoque);
                transporte.setRecebPagamento(item.Receb_Pagamento);
                transporte.setFrete(item.Frete);
                listaTransporte.push(transporte);
            }
        }
        registros(listaTransporte);
        }); 
    }); 
}

async function vendasData() {
    let listaVendas = new Array();
    return new Promise((registros, reject) => {
    db.query('SELECT Num_Saida, Cliente, GrupoVendas, NotaFiscal, SetorVendas, EnderecoVenda, CidadeVenda, BairroVenda, EstadoVenda, dataCompra, dataFinanceiro, dataEntrega, Quant_Entrada, ValorContrato, Quant_Vendas, ValorVendas, Quant_Compras, Valor_compras, Quant_Estoque, Valor_Estoque, Receb_Pagamento, Frete  FROM ((dim_dw_vendas join dim_dw_data on (dim_dw_vendas.Id_DimVendas = dim_dw_data.Id_DimData)) join fatos_dw_comercial on (dim_dw_data.Id_DimData = fatos_dw_comercial.Id_Data)) ', async function (error, colecao) {
        if (error != null){
            console.log(error)
        }
        else{
            for (const item of colecao) {
                venda = new Vendas();
                venda.setOrigemCarga(item.Num_Saida);
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
                venda.setQuantEntrega(item.Quant_Entrada);
                venda.setValorContrato(item.ValorContrato);
                venda.setQuantVendas(item.Quant_Vendas);
                venda.setValorVendas(item.ValorVendas);
                venda.setQuantCompras(item.Quant_Compras);
                venda.setValorCompras(item.Valor_compras);
                venda.setQuantEstoque(item.Quant_Estoque);
                venda.setValorEstoque(item.Valor_Estoque);
                venda.setRecebPagamento(item.Receb_Pagamento);
                venda.setFrete(item.Frete);
                listaVendas.push(venda);
            }
        }
        registros(listaVendas);
        }); 
    }); 
}



module.exports = {
    comprasData: comprasData,
    contratoData: contratoData,
    estoqueData: estoqueData,
    financeiroData: financeiroData,
    transporteData: transporteData,
    vendasData: vendasData
};