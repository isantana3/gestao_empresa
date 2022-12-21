drop database if exists dw_comercial;
create database dw_comercial;
use dw_comercial

--
-- Estrutura da tabela `dim_dw_data`
--

CREATE TABLE `dim_dw_data` (
  `Id_DimData` int primary key auto_increment,
  `DataVenda` datetime DEFAULT NULL,
  `DataVigencia` datetime DEFAULT NULL,
  `DataCompra` datetime DEFAULT NULL,
  `DataFinanceiro` datetime DEFAULT NULL,
  `DataEntrega` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `dim_dw_vendas`
--
CREATE TABLE `dim_dw_vendas` (
  `Id_DimVendas` int primary key auto_increment,
  `Num_Saida` varchar(20) DEFAULT NULL,
  `Cliente` varchar(200) DEFAULT NULL,
  `GrupoVendas` varchar(50) DEFAULT NULL,
  `NotaFiscal` varchar(30) DEFAULT NULL,
  `SetorVendas` varchar(100) DEFAULT NULL,
  `EnderecoVenda` varchar(200) DEFAULT NULL,
  `CidadeVenda` varchar(100) DEFAULT NULL,
  `BairroVenda` varchar(50) DEFAULT NULL,
  `EstadoVenda` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Estrutura da tabela `dim_dw_compras`
--

CREATE TABLE `dim_dw_compras` (
  `Id_DimCompras` int primary key auto_increment,
  `CodigoEntrada` int(11) DEFAULT NULL,
  `GrupoCompra` varchar(10) DEFAULT NULL,
  `NotaFiscal` varchar(30) DEFAULT NULL,
  `EnderecoFornecedor` varchar(200) DEFAULT NULL,
  `BairroFornecedor` varchar(100) DEFAULT NULL,
  `CidadeFornecedor` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Estrutura da tabela `dim_dw_estoque`
--

CREATE TABLE `dim_dw_estoque` (
  `Id_DimEstoque` int primary key auto_increment,
  `CodigoProduto` varchar(20) DEFAULT NULL,
  `Grupo` int(11) DEFAULT NULL,
  `Quant_minima` float(10,2) DEFAULT NULL,
  `Ressuprimento` varchar(5) DEFAULT NULL,
  `Produto` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Estrutura da tabela `dim_dw_contrato`
--

CREATE TABLE `dim_dw_contrato` (
  `Id_DimContrato` int primary key auto_increment,
  `NumContrato` varchar(20) DEFAULT NULL,
  `ParteContrato` varchar(150) DEFAULT NULL,
  `Supervisor` varchar(150) DEFAULT NULL,
  `Aditivo` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Estrutura da tabela `dim_dw_transporte`
--

CREATE TABLE `dim_dw_transporte` (
  `Id_DimTransporte` int primary key auto_increment,
  `OrigemCarga` varchar(100) DEFAULT NULL,
  `DestinoCarga` varchar(100) DEFAULT NULL,
  `Transportador` varchar(150) DEFAULT NULL,
  `Veiculo` varchar(100) DEFAULT NULL,
  `PostoAbastecimento` varchar(150) DEFAULT NULL,
  `Motorista` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Estrutura da tabela `dim_dw_financeiro`
--

CREATE TABLE `dim_dw_financeiro` (
  `Id_DimFinanceiro` int primary key auto_increment,
  `Cliente` varchar(200) DEFAULT NULL,
  `GrupoVendas` varchar(50) DEFAULT NULL,
  `NotaFiscal` varchar(30) DEFAULT NULL,
  `SetorVendas` varchar(100) DEFAULT NULL,
  `NumeroCompra` int(11) DEFAULT NULL,
  `NumeroVenda` int(11) DEFAULT NULL,
  `PostoAbastecimento` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Estrutura da tabela `dim_dw_abastecimento`
--
CREATE TABLE `dim_dw_abastecimento` (
  `Id_DimAbastecimento` int primary key auto_increment,
  `Local` varchar(100) DEFAULT NULL,
  `Preco_total` float(10,2) DEFAULT NULL,
  `Quant_litro` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estrutura da tabela `fatos_dw_comercial`
--
CREATE TABLE `fatos_dw_comercial` (
  `Id_FatoDwComercial` int primary key auto_increment,
  `Id_Financeiro` int(11) NOT NULL,
  `Id_Compras` int(11) NOT NULL,
  `Id_Estoque` int(11) NOT NULL,
  `Id_Contrato` int(11) NOT NULL,
  `Id_Data` int(11) NOT NULL,
  `Id_Vendas` int(11) NOT NULL,
  `Id_Transporte` int(11) NOT NULL,
  `Id_Abastecimento` int(11) NOT NULL,
  `Quant_Entrada` float(10,2) DEFAULT NULL,
  `ValorContrato` float(10,2) DEFAULT NULL,
  `Quant_Vendas` float(10,2) DEFAULT NULL,
  `ValorVendas` float(10,2) DEFAULT NULL,
  `Quant_Compras` float(10,2) DEFAULT NULL,
  `Valor_compras` float(10,2) DEFAULT NULL,
  `Frete` float(10,2) DEFAULT NULL,
  `Quant_Estoque` float(10,2) DEFAULT NULL,
  `Valor_Estoque` float(10,2) DEFAULT NULL,
  `Receb_Pagamento` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



