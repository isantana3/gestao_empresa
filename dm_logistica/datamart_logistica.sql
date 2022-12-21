drop database if exists DM_logistica;
create database DM_logistica;
use DM_logistica


--
-- Estrutura da tabela `dim_logistica_produto`
--

CREATE TABLE `dim_logistica_produto` (
  `Id_DimEstoque` int primary key auto_increment,
  `Produto` varchar(200) DEFAULT NULL,
  `Grupo` varchar(10) DEFAULT NULL,
  `Unidade` varchar(10) DEFAULT NULL,
  `ClasseABC` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `dim_logistica_estoque`
--

CREATE TABLE `dim_logistica_estoque` (
  `Id_DimRecebimento` int primary key auto_increment,
  `Grupo` int(11) DEFAULT NULL,
  `Quant_minima` float(10,2) DEFAULT NULL,
  `Ressuprimento` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `dim_logistica_data`
--

CREATE TABLE `dim_logistica_data` (
  `Id_DimData` int primary key auto_increment,
  `DataVenda` datetime DEFAULT NULL,
  `DataFrete` datetime DEFAULT NULL,
  `DataEntrega` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estrutura da tabela `dim_logistica_venda`
--

CREATE TABLE `dim_logistica_venda` (
  `Id_DimVendas` int primary key auto_increment,
  `Num_Saida` varchar(20) DEFAULT NULL,
  `Requisitante` varchar(200) DEFAULT NULL,
  `GrupoVendas` varchar(50) DEFAULT NULL,
  `NotaFiscal` varchar(30) DEFAULT NULL,
  `SetorVendas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `dim_logistica_transporte`
--

CREATE TABLE `dim_logistica_transporte` (
  `Id_DimTransporte` int primary key auto_increment,
  `OrigemCarga` varchar(100) DEFAULT NULL,
  `DestinoCarga` varchar(100) DEFAULT NULL,
  `Transportador` varchar(150) DEFAULT NULL,
  `Veiculo` varchar(100) DEFAULT NULL,
  `Placa` varchar(12) DEFAULT NULL,
  `PostoAbastecimento` varchar(150) DEFAULT NULL,
  `Motorista` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estrutura da tabela `fato_logistica`
--
CREATE TABLE `fato_logistica` (
  `Id_FatoLogistica` int primary key auto_increment,
  `Id_Transporte` int(11) NOT NULL,
  `Id_Produto` int(11) NOT NULL,
  `Id_Estoque` int(11) NOT NULL,
  `Id_Venda` int(11) NOT NULL,
  `Id_Data` int(11) NOT NULL,
  `Quant_Saida` float(10,2) DEFAULT NULL,
  `TotalSaida` float(10,2) DEFAULT NULL,
  `Frete` float(10,2) DEFAULT NULL,
  `Combustivel` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


