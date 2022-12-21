drop database if exists DM_compras;
create database DM_compras;
use DM_compras

--
-- Estrutura da tabela `dim_compras_compras`
--
CREATE TABLE `dim_compras_compras` (
  `Id_DimVendas` int primary key auto_increment,
  `Num_Entrada` varchar(20) DEFAULT NULL,
  `Fornecedor` varchar(200) DEFAULT NULL,
  `GrupoVendas` varchar(50) DEFAULT NULL,
  `NotaFiscal` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `dim_compras_estoque`
--

CREATE TABLE `dim_compras_estoque` (
  `Id_DimEstoque` int primary key auto_increment,
  `Grupo` int(11) DEFAULT NULL,
  `Quant_minima` float(10,2) DEFAULT NULL,
  `Ressuprimento` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `dim_compras_data`
--

CREATE TABLE `dim_compras_data` (
  `Id_DimData` int primary key auto_increment,
  `DataVenda` datetime DEFAULT NULL,
  `DataVigencia` datetime DEFAULT NULL,
  `DataCompra` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estrutura da tabela `dim_compras_contrato`
--

CREATE TABLE `dim_compras_contrato` (
  `Id_DimContrato` int primary key auto_increment,
  `NumContrato` varchar(20) DEFAULT NULL,
  `ParteContrato` varchar(150) DEFAULT NULL,
  `Supervisor` varchar(150) DEFAULT NULL,
  `NotaFiscal` varchar(20) DEFAULT NULL,
  `Aditivo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estrutura da tabela `dim_compras_produto`
--

CREATE TABLE `dim_compras_produto` (
  `Id_Produto` int primary key auto_increment,
  `Descricao` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estrutura da tabela `dim_compras_fornecedor`
--

CREATE TABLE `dim_compras_fornecedor` (
  `Id_DimEstoque` int primary key auto_increment,
  `Nomefornecedor` varchar(200) DEFAULT NULL,
  `Grupo` varchar(10) DEFAULT NULL,
  `ClasseABC` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estrutura da tabela `fato_compras`
--
CREATE TABLE `fato_compras` (
  `Id_FatoCompras` int primary key auto_increment,
  `Id_Fornecedor` int(11) NOT NULL,
  `Id_Produto` int(11) NOT NULL,
  `Id_Compras` int(11) NOT NULL,
  `Id_Estoque` int(11) NOT NULL,
  `Id_Contrato` int(11) NOT NULL,
  `Id_Data` int(11) NOT NULL,
  `Quant_Entrada` float(10,2) DEFAULT NULL,
  `TotalEntrada` float(10,2) DEFAULT NULL,
  `ValorContrato` float(10,2) DEFAULT NULL,
  `Frete` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

