use dw_comercial;
DROP TABLE IF EXISTS `view_dw_vendas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER VIEW view_dw_vendas  AS 
SELECT 
db_compras_vendas.saida.CodigoSaida AS CodigoSaida, db_compras_vendas.estoque.CodigoEstoque AS CodigoEstoque, 
db_compras_vendas.entrada.CodigoEntrada AS Num_entrada, db_compras_vendas.Fornecedor.IdFornecedor AS IdFornecedor,
db_compras_vendas.Fornecedor.RazaoSocial AS Nomefornecedor, db_compras_vendas.Fornecedor.Grupo AS fornecedor_grupo,
db_compras_vendas.Fornecedor.CodFornecedor AS ClasseABC, db_compras_vendas.Fornecedor.Cidade AS fornecedorCidade,
db_compras_vendas.Fornecedor.Endereco AS fornecedorEndereco, db_compras_vendas.Fornecedor.NomeBanco AS fornecedorBanco,
db_compras_vendas.Fornecedor.Bairro AS fornecedorBairro,
db_compras_vendas.entrada.Grupo AS entrada_grupo, db_gestao_contrato.financeiro.NotaFiscalFin AS NotaFiscal,
db_compras_vendas.saida.Id_cliente AS Idcliente, db_compras_vendas.saida.NumSaida AS NumSaida, 
db_compras_vendas.setorvendas.IdSetor AS IdSetor, db_compras_vendas.saida.Requisitante AS Requisitante,
db_gestao_contrato.financeiro.Idfinanceiro AS Idfinanceiro, db_gestao_contrato.contrato.Id_Contrato AS Id_Contrato, 
db_gestao_contrato.aditivo.Codigo AS Codigo, db_compras_vendas.cliente.idcliente AS id_cliente, 
db_logistica_entrega.veiculo.IdVeiculo AS IdVeiculo, db_gestao_contrato.financeiro.Numrecebimento AS Numrecebimento, 
db_compras_vendas.saida.Grupo AS saida_grupo, db_compras_vendas.setorvendas.nomesetor AS nomesetor, 
db_compras_vendas.cliente.Nome AS Nome, db_compras_vendas.cliente.Endereco AS Endereco, db_compras_vendas.cliente.Cidade AS Cidade, 
db_compras_vendas.cliente.Regiao AS Regiao, db_compras_vendas.cliente.Pais AS Pais, db_gestao_contrato.contrato.Contratado AS Contratado,
db_gestao_contrato.contrato.Supervisor AS Supervisor, db_gestao_contrato.aditivo.Codigo_ad AS Codigo_ad, 
db_logistica_entrega.movimentacao.OrigemCarga AS OrigemCarga, db_logistica_entrega.movimentacao.DestinoCarga AS DestinoCarga, 
db_logistica_entrega.movimentacao.Transportador AS Transportador, db_logistica_entrega.veiculo.Marca AS Marca, 
db_logistica_entrega.abastecimento.Placa_Co AS Placa_Co, db_logistica_entrega.motorista.IdMotorista AS IdMotorista, 
db_logistica_entrega.abastecimento.Codigo AS Codigo_abast, db_logistica_entrega.abastecimento.Id_Motorista AS Id_Motorista, 
db_logistica_entrega.abastecimento.Total_Co AS Total_Co, db_logistica_entrega.abastecimento.Unitario AS Unitario, 
db_logistica_entrega.motorista.Nom_Moto AS Nom_Moto, db_logistica_entrega.abastecimento.Posto_Co AS Posto_Co, 
db_compras_vendas.estoque.Descricao AS Descricao, db_compras_vendas.estoque.Grupo AS Grupo, db_compras_vendas.saida.DataSaida AS DataSaida, 
db_gestao_contrato.financeiro.DataRecebimento AS DataRecebimento, db_gestao_contrato.contrato.Dt_assinat AS Dt_assinat, 
db_gestao_contrato.contrato.Dt_vigencia AS Dt_vigencia, db_logistica_entrega.movimentacao.DataTransp AS DataTransp, 
db_logistica_entrega.movimentacao.DataPedido AS DataPedido, db_compras_vendas.entrada.DataEntrada AS DataEntrada,
db_gestao_contrato.aditivo.Dt_assin_ad AS Dt_assin_ad, db_compras_vendas.entrada.QuantEnt AS QuantEnt,
db_compras_vendas.entrada.TotalEnt AS TotalEnt, db_logistica_entrega.movimentacao.Frete AS Frete,
db_compras_vendas.estoque.Q_minima AS Q_minima, db_compras_vendas.estoque.Qtsald AS Qtsald, db_compras_vendas.estoque.Totsaldo AS Totsaldo, 
db_compras_vendas.estoque.Ressuprimento AS Ressuprimento, db_gestao_contrato.contrato.Numero AS NumContrato,
db_compras_vendas.saida.QuantSaida AS QuantSaida, db_compras_vendas.saida.TotalSaida AS TotalSaida, db_compras_vendas.estoque.Abc AS Abc,
db_compras_vendas.estoque.Unidade AS Unidade, db_logistica_entrega.movimentacao.Num_Saida AS Num_Saida, db_compras_vendas.saida.NotaFiscal AS NotaFiscalVenda,
db_gestao_contrato.financeiro.ValorCredito AS ValorCredito, db_gestao_contrato.contrato.Valor_tot AS Valor_tot 
FROM 
(
  (
    (
      (
        (
          (
            (
              (
                (
                  db_compras_vendas.saida 
                  join db_compras_vendas.estoque on(db_compras_vendas.saida.CodigoSaida = db_compras_vendas.estoque.CodigoEstoque)
                )join db_gestao_contrato.financeiro on(db_gestao_contrato.financeiro.NotaFiscalFin = db_compras_vendas.saida.NotaFiscal)
              )join db_gestao_contrato.contrato on(db_gestao_contrato.contrato.NFiscal = db_gestao_contrato.financeiro.NotaFiscalFin)
            ) join db_gestao_contrato.aditivo on(db_gestao_contrato.aditivo.N_contrato = db_gestao_contrato.contrato.Numero)
          ) join db_compras_vendas.cliente on(db_compras_vendas.saida.Id_cliente = db_compras_vendas.cliente.Cod_cliente)
        ) join db_compras_vendas.setorvendas on(db_compras_vendas.saida.Requisitante = db_compras_vendas.setorvendas.IdSetor)
      ) join db_logistica_entrega.movimentacao on(db_logistica_entrega.movimentacao.Num_Saida = db_compras_vendas.saida.NumSaida)
    ) join db_logistica_entrega.veiculo on(db_logistica_entrega.veiculo.Placa = db_logistica_entrega.movimentacao.IdPlaca)
  ) join db_logistica_entrega.abastecimento on(db_logistica_entrega.abastecimento.Placa_Co = db_logistica_entrega.veiculo.Placa)
) join db_logistica_entrega.motorista on(db_logistica_entrega.abastecimento.Id_Motorista = db_logistica_entrega.motorista.IdMotorista);


--  Populate DM_Compras
use DM_compras;

INSERT dim_compras_compras (Num_entrada, Fornecedor, GrupoVendas, NotaFiscal)
SELECT Num_entrada, IdFornecedor, entrada_grupo, NotaFiscal
FROM dw_comercial.view_dw_empresa;


INSERT dim_compras_estoque (Grupo, Quant_minima, Ressuprimento)
SELECT Grupo, Q_minima, Ressuprimento
FROM dw_comercial.view_dw_empresa;


INSERT dim_compras_contrato (NumContrato, ParteContrato, Supervisor, NotaFiscal, Aditivo)
SELECT NumContrato, Contratado, Supervisor, NotaFiscal, Codigo
FROM dw_comercial.view_dw_empresa;

INSERT dim_compras_produto (Descricao)
SELECT Descricao
FROM dw_comercial.view_dw_empresa;


INSERT dim_compras_fornecedor (Nomefornecedor, Grupo, ClasseABC)
SELECT Nomefornecedor, fornecedor_grupo, ClasseABC
FROM dw_comercial.view_dw_empresa;

INSERT dim_compras_data (DataVenda, DataVigencia, DataCompra)
SELECT DataSaida, Dt_vigencia, DataEntrada
FROM dw_comercial.view_dw_empresa;

UPDATE dim_compras_data SET
	venda_trimestre = quarter(DataVenda),
    venda_dia_semana = date_format(DataVenda, "%W"),
    venda_semana = date_format(DataVenda, "%w"),
    venda_mes = date_format(DataVenda, "%b"),
    venda_dia_mes = date_format(DataVenda, "%d"),
    venda_ano = date_format(DataVenda, "%Y"),
    venda_dia_ano = date_format(DataVenda, "%j"),
    
    compra_trimestre = quarter(DataEntrada),
    compra_dia_semana = date_format(DataEntrada, "%W"),
    compra_semana = date_format(DataEntrada, "%w"),
    compra_mes = date_format(DataEntrada, "%b"),
    compra_dia_mes = date_format(DataEntrada, "%d"),
    compra_ano = date_format(DataEntrada, "%Y"),
    compra_dia_ano = date_format(DataEntrada, "%j"),
    
    vigencia_trimestre = quarter(Dt_vigencia),
    vigencia_dia_semana = date_format(Dt_vigencia, "%W"),
    vigencia_semana = date_format(Dt_vigencia, "%w"),
    vigencia_mes = date_format(Dt_vigencia, "%b"),
    vigencia_dia_mes = date_format(Dt_vigencia, "%d"),
    vigencia_ano = date_format(Dt_vigencia, "%Y"),
    vigencia_dia_ano = date_format(Dt_vigencia, "%j");


INSERT fato_compras (Quant_Entrada, TotalEntrada, ValorContrato, Frete)
SELECT QuantEnt, TotalEnt, Valor_tot, Frete
FROM dw_comercial.view_dw_empresa;

UPDATE fato_compras SET
  Id_Fornecedor = Id_FatoCompras,
  Id_Produto = Id_FatoCompras,
  Id_Compras = Id_FatoCompras,
  Id_Estoque = Id_FatoCompras,
  Id_Contrato = Id_FatoCompras,
  Id_Data = Id_FatoCompras;



--  Populate DM_logistica
use DM_logistica;

INSERT dim_logistica_produto (Produto, Grupo, Unidade, ClasseABC)
SELECT Descricao, Grupo, Unidade, Abc
FROM dw_comercial.view_dw_empresa;

INSERT dim_logistica_estoque (Grupo, Quant_minima, Ressuprimento)
SELECT Grupo, Q_minima, Ressuprimento
FROM dw_comercial.view_dw_empresa;

INSERT dim_logistica_venda (Num_Saida, Requisitante, GrupoVendas, NotaFiscal, SetorVendas)
SELECT Num_Saida, Requisitante, saida_grupo, NotaFiscalVenda, nomesetor
FROM dw_comercial.view_dw_empresa;

INSERT dim_logistica_transporte (OrigemCarga, DestinoCarga, Transportador, Veiculo, Placa, PostoAbastecimento, Motorista)
SELECT OrigemCarga, DestinoCarga, Transportador, Marca, Placa_Co, Posto_Co, Nom_Moto
FROM dw_comercial.view_dw_empresa;


INSERT dim_logistica_data (DataVenda, DataFrete, DataEntrega)
SELECT DataSaida, DataTransp, DataPedido
FROM dw_comercial.view_dw_empresa;

UPDATE dim_logistica_data SET
	venda_trimestre = quarter(DataVenda),
    venda_dia_semana = date_format(DataVenda, "%W"),
    venda_semana = date_format(DataVenda, "%w"),
    venda_mes = date_format(DataVenda, "%b"),
    venda_dia_mes = date_format(DataVenda, "%d"),
    venda_ano = date_format(DataVenda, "%Y"),
    venda_dia_ano = date_format(DataVenda, "%j"),
    
    frete_trimestre = quarter(DataFrete),
    frete_dia_semana = date_format(DataFrete, "%W"),
    frete_semana = date_format(DataFrete, "%w"),
    frete_mes = date_format(DataFrete, "%b"),
    frete_dia_mes = date_format(DataFrete, "%d"),
    frete_ano = date_format(DataFrete, "%Y"),
    frete_dia_ano = date_format(DataFrete, "%j"),
    
    entrega_trimestre = quarter(DataEntrega),
    entrega_dia_semana = date_format(DataEntrega, "%W"),
    entrega_semana = date_format(DataEntrega, "%w"),
    entrega_mes = date_format(DataEntrega, "%b"),
    entrega_dia_mes = date_format(DataEntrega, "%d"),
    entrega_ano = date_format(DataEntrega, "%Y"),
    entrega_dia_ano = date_format(DataEntrega, "%j");

INSERT fato_logistica (Quant_Saida, TotalSaida, Frete, Combustivel)
SELECT QuantSaida, TotalSaida, Frete, Total_Co
FROM dw_comercial.view_dw_empresa;

UPDATE fato_logistica SET
  Id_Transporte = Id_FatoLogistica,
  Id_Produto = Id_FatoLogistica,
  Id_Estoque = Id_FatoLogistica,
  Id_Venda = Id_FatoLogistica,
  Id_Data = Id_FatoLogistica;


--  Populate DM_financas
use DM_financas;

INSERT dim_financas_estoque (Grupo, Quant_minima, Ressuprimento)
SELECT Grupo, Q_minima, Ressuprimento
FROM dw_comercial.view_dw_empresa;

INSERT dim_financas_recebimento (Num_Saida, Requisitante, GrupoVendas, NotaFiscal, SetorVendas)
SELECT Num_Saida, Requisitante, saida_grupo, NotaFiscalVenda, nomesetor
FROM dw_comercial.view_dw_empresa;


INSERT dim_financas_contrato (Produto, Contratado, Supervisor)
SELECT Descricao, Contratado, Supervisor
FROM dw_comercial.view_dw_empresa;

INSERT dim_financas_pagamentos (Fornecedor, Cidade, UF, Banco)
SELECT Nomefornecedor, fornecedorCidade, fornecedorEndereco, fornecedorBanco
FROM dw_comercial.view_dw_empresa;

INSERT dim_financas_abastecimento (`Local`, Preco_total, Quant_litro)
SELECT Posto_Co, Total_Co, Unitario
FROM dw_comercial.view_dw_empresa;

INSERT dim_financas_data (DataVenda, DataCompra, DataEntrega)
SELECT DataSaida, DataEntrada, DataPedido
FROM dw_comercial.view_dw_empresa;

UPDATE dim_financas_data SET
	venda_trimestre = quarter(DataVenda),
    venda_dia_semana = date_format(DataVenda, "%W"),
    venda_semana = date_format(DataVenda, "%w"),
    venda_mes = date_format(DataVenda, "%b"),
    venda_dia_mes = date_format(DataVenda, "%d"),
    venda_ano = date_format(DataVenda, "%Y"),
    venda_dia_ano = date_format(DataVenda, "%j"),
    
    compra_trimestre = quarter(DataCompra),
    compra_dia_semana = date_format(DataCompra, "%W"),
    compra_semana = date_format(DataCompra, "%w"),
    compra_mes = date_format(DataCompra, "%b"),
    compra_dia_mes = date_format(DataCompra, "%d"),
    compra_ano = date_format(DataCompra, "%Y"),
    compra_dia_ano = date_format(DataCompra, "%j"),
    
    entrega_trimestre = quarter(DataEntrega),
    entrega_dia_semana = date_format(DataEntrega, "%W"),
    entrega_semana = date_format(DataEntrega, "%w"),
    entrega_mes = date_format(DataEntrega, "%b"),
    entrega_dia_mes = date_format(DataEntrega, "%d"),
    entrega_ano = date_format(DataEntrega, "%Y"),
    entrega_dia_ano = date_format(DataEntrega, "%j");

INSERT fato_Financas (Quant_Venda, TotalSaida, Quant_Compra, TotalCompra, Quant_Estoque, TotalEstoque, Frete)
SELECT QuantSaida, TotalSaida, QuantEnt, TotalEnt, Qtsald, Totsaldo, Frete
FROM dw_comercial.view_dw_empresa;

UPDATE fato_Financas SET
	Id_Compras = Id_FatoFinancas,
	Id_Contrato = Id_FatoFinancas,
	Id_Estoque = Id_FatoFinancas,
	Id_Vendas = Id_FatoFinancas,
	Id_Abastecimento = Id_FatoFinancas,
	Id_Data = Id_FatoFinancas;

--  Populating Dw_comercial

use dw_comercial;

INSERT dim_dw_vendas (Num_Saida, Cliente, GrupoVendas, NotaFiscal, SetorVendas, EnderecoVenda, CidadeVenda, BairroVenda, EstadoVenda)
SELECT Num_Saida, Nome, saida_grupo, NotaFiscalVenda, nomesetor, Endereco, Cidade, Regiao, Pais
FROM dw_comercial.view_dw_empresa;

INSERT dim_dw_compras (CodigoEntrada, GrupoCompra, NotaFiscal, EnderecoFornecedor, BairroFornecedor, CidadeFornecedor)
SELECT Num_entrada, entrada_grupo, NotaFiscal, fornecedorEndereco, fornecedorBairro, fornecedorCidade
FROM dw_comercial.view_dw_empresa;

INSERT dim_dw_estoque (CodigoProduto, Grupo, Quant_minima, Ressuprimento, Produto)
SELECT CodigoEstoque, Grupo, Q_minima, Ressuprimento, Descricao
FROM dw_comercial.view_dw_empresa;

INSERT dim_dw_contrato (NumContrato, ParteContrato, Supervisor, Aditivo)
SELECT NumContrato, Contratado, Supervisor, Codigo
FROM dw_comercial.view_dw_empresa;

INSERT dim_dw_transporte (OrigemCarga, DestinoCarga, Transportador, Veiculo, PostoAbastecimento, Motorista)
SELECT OrigemCarga, DestinoCarga, Transportador, Marca, Posto_Co, Nom_Moto
FROM dw_comercial.view_dw_empresa;


INSERT dim_dw_financeiro (Cliente, GrupoVendas, NotaFiscal, SetorVendas, NumeroCompra, NumeroVenda, PostoAbastecimento)
SELECT Nome, Grupo, NotaFiscal, nomesetor, Num_Saida, Num_entrada, Posto_Co
FROM dw_comercial.view_dw_empresa;

INSERT dim_dw_abastecimento (`Local`, Preco_total, Quant_litro)
SELECT Posto_Co, Total_Co, Unitario
FROM dw_comercial.view_dw_empresa;


INSERT dim_dw_data (DataVenda, DataVigencia, DataCompra, DataFinanceiro, DataEntrega)
SELECT DataSaida, Dt_vigencia, DataEntrada, DataRecebimento DataPedido
FROM dw_comercial.view_dw_empresa;

 UPDATE dim_dw_data SET
	venda_trimestre = quarter(DataVenda),
    venda_dia_semana = date_format(DataVenda, "%W"),
    venda_semana = date_format(DataVenda, "%w"),
    venda_mes = date_format(DataVenda, "%b"),
    venda_dia_mes = date_format(DataVenda, "%d"),
    venda_ano = date_format(DataVenda, "%Y"),
    venda_dia_ano = date_format(DataVenda, "%j"),
    
    vigencia_dia_semana = date_format(DataVigencia, "%W"),
    vigencia_semana = date_format(DataVigencia, "%w"),
    vigencia_mes = date_format(DataVigencia, "%b"),
    vigencia_dia_mes = date_format(DataVigencia, "%d"),
    vigencia_ano = date_format(DataVigencia, "%Y"),
    vigencia_dia_ano = date_format(DataVigencia, "%j"),
    
    compra_trimestre = quarter(DataCompra),
    compra_dia_semana = date_format(DataCompra, "%W"),
    compra_semana = date_format(DataCompra, "%w"),
    compra_mes = date_format(DataCompra, "%b"),
    compra_dia_mes = date_format(DataCompra, "%d"),
    compra_ano = date_format(DataCompra, "%Y"),
    compra_dia_ano = date_format(DataCompra, "%j"),
    
    financeiro_trimestre = quarter(DataFinanceiro),
    financeiro_dia_semana = date_format(DataFinanceiro, "%W"),
    financeiro_semana = date_format(DataFinanceiro, "%w"),
    financeiro_mes = date_format(DataFinanceiro, "%b"),
    financeiro_dia_mes = date_format(DataFinanceiro, "%d"),
    financeiro_ano = date_format(DataFinanceiro, "%Y"),
    financeiro_dia_ano = date_format(DataFinanceiro, "%j"),
    
    entrega_trimestre = quarter(DataEntrega),
    entrega_dia_semana = date_format(DataEntrega, "%W"),
    entrega_semana = date_format(DataEntrega, "%w"),
    entrega_mes = date_format(DataEntrega, "%b"),
    entrega_dia_mes = date_format(DataEntrega, "%d"),
    entrega_ano = date_format(DataEntrega, "%Y"),
    entrega_dia_ano = date_format(DataEntrega, "%j");
    
    
INSERT fatos_dw_comercial (Quant_Entrada, ValorContrato, Quant_Vendas, ValorVendas, Quant_Compras, Valor_compras, Frete, Quant_Estoque, Valor_Estoque, Receb_Pagamento)
SELECT QuantEnt, Valor_tot, QuantSaida, TotalSaida, QuantEnt, TotalEnt, Frete, Qtsald, Totsaldo, Numrecebimento
FROM dw_comercial.view_dw_empresa;

UPDATE fatos_dw_comercial SET
  Id_Financeiro = Id_FatoDwComercial,
  Id_Compras = Id_FatoDwComercial,
  Id_Estoque = Id_FatoDwComercial,
  Id_Contrato = Id_FatoDwComercial,
  Id_Data = Id_FatoDwComercial,
  Id_Vendas = Id_FatoDwComercial,
  Id_Transporte = Id_FatoDwComercial;