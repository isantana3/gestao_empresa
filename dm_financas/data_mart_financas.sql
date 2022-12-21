drop database if exists DM_financas;
create database DM_financas;
use DM_financas

select * from db_compras_vendas.saida;

--
-- Estrutura da tabela `dim_financas_estoque`
--

CREATE TABLE `dim_financas_estoque` (
  `Id_DimRecebimento` int primary key auto_increment,
  `Grupo` int(11) DEFAULT NULL,
  `Quant_minima` float(10,2) DEFAULT NULL,
  `Ressuprimento` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estrutura da tabela `dim_financas_data`
--

CREATE TABLE `dim_financas_data` (
  `Id_DimData` int primary key auto_increment,
  `DataVenda` datetime DEFAULT NULL,
  `DataCompra` datetime DEFAULT NULL,
  `DataEntrega` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estrutura da tabela `dim_financas_recebimento`
--

CREATE TABLE `dim_financas_recebimento` (
  `Id_DimVendas` int primary key auto_increment,
  `Num_Saida` varchar(20) DEFAULT NULL,
  `Requisitante` varchar(200) DEFAULT NULL,
  `GrupoVendas` varchar(50) DEFAULT NULL,
  `NotaFiscal` varchar(30) DEFAULT NULL,
  `SetorVendas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estrutura da tabela `dim_financas_contrato`
--

CREATE TABLE `dim_financas_contrato` (
  `Id_DimContrato` int primary key auto_increment,
  `Produto` varchar(200) DEFAULT NULL,
  `Contratado` varchar(10) DEFAULT NULL,
  `Supervisor` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estrutura da tabela `dim_financas_pagamentos`
--

CREATE TABLE `dim_financas_pagamentos` (
  `Id_DimCompras` int primary key auto_increment,
  `Fornecedor` varchar(200) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `UF` varchar(6) DEFAULT NULL,
  `Banco` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estrutura da tabela `dim_financas_pagamentos`
--

CREATE TABLE `dim_financas_abastecimento` (
  `Id_DimAbastecimento` int primary key auto_increment,
  `Local` varchar(100) DEFAULT NULL,
  `Preco_total` float(10,2) DEFAULT NULL,
  `Quant_litro` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estrutura da tabela `fato_Financas`
--
CREATE TABLE `fato_Financas` (
  `Id_FatoFinancas` int primary key auto_increment,
  `Id_Compras` int(11) NOT NULL,
  `Id_Contrato` int(11) NOT NULL,
  `Id_Estoque` int(11) NOT NULL,
  `Id_Vendas` int(11) NOT NULL,
  `Id_Abastecimento` int(11) NOT NULL,
  `Id_Data` int(11) NOT NULL,
  `Quant_Venda` float(10,2) DEFAULT NULL,
  `TotalSaida` float(10,2) DEFAULT NULL,
  `Quant_Compra` float(10,2) DEFAULT NULL,
  `TotalCompra` float(10,2) DEFAULT NULL,
  `Quant_Estoque` float(10,2) DEFAULT NULL,
  `TotalEstoque` float(10,2) DEFAULT NULL,
  `Frete` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


