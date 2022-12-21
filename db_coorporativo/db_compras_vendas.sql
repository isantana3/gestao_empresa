create database db_compras_vendas;
use db_compras_vendas

--
-- Estrutura da tabela `fornecedor`
--
CREATE TABLE `fornecedor` (
  `IdFornecedor` int(11) NOT NULL,
  `CodFornecedor` varchar(4) DEFAULT NULL,
  `RazaoSocial` varchar(100) DEFAULT NULL,
  `Endereco` varchar(58) DEFAULT NULL,
  `Cidade` varchar(20) DEFAULT NULL,
  `Cnpj` varchar(17) DEFAULT NULL,
  `Inscricao` varchar(15) DEFAULT NULL,
  `Contato` varchar(15) DEFAULT NULL,
  `Grupo` varchar(5) DEFAULT NULL,
  `Fone` varchar(13) DEFAULT NULL,
  `Bairro` varchar(25) DEFAULT NULL,
  `CEP` varchar(10) DEFAULT NULL,
  `NomeBanco` varchar(10) DEFAULT NULL,
  `Agencia` varchar(6) DEFAULT NULL,
  `NumConta` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Estrutura da tabela `entrada`
--
CREATE TABLE `entrada` (
  `Id_Entrada` int(11) NOT NULL,
  `CodigoEntrada` varchar(19) DEFAULT NULL,
  `Grupo` varchar(2) DEFAULT NULL,
  `Material` varchar(50) DEFAULT NULL,
  `Num_fornec` varchar(4) DEFAULT NULL,
  `DataEntrada` datetime DEFAULT NULL,
  `QuantEnt` double DEFAULT 0,
  `UnitarioEnt` float DEFAULT NULL,
  `TotalEnt` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Estrutura da tabela `estoque`
--
CREATE TABLE `estoque` (
  `Id_Estoque` int(11) NOT NULL,
  `CodigoEstoque` varchar(19) DEFAULT NULL,
  `Grupo` varchar(2) DEFAULT NULL,
  `Descricao` varchar(50) DEFAULT NULL,
  `Unidade` varchar(5) DEFAULT NULL,
  `Q_minima` float DEFAULT NULL,
  `Qtsald` float DEFAULT NULL,
  `Unisaldo` float DEFAULT NULL,
  `Totsaldo` decimal(19,4) DEFAULT NULL,
  `Abc` varchar(1) DEFAULT NULL,
  `Ressuprimento` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Estrutura da tabela `setorvendas`
--
CREATE TABLE `setorvendas` (
  `IdSetor` int(11) NOT NULL,
  `nomesetor` varchar(35) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Estrutura da tabela `saida`
--
CREATE TABLE `saida` (
  `IdSaida` int(11) NOT NULL,
  `CodigoSaida` varchar(19) DEFAULT NULL,
  `NumSaida` int(11) DEFAULT NULL,
  `Grupo` varchar(2) DEFAULT NULL,
  `Requisitante` int(11) DEFAULT 0,
  `DataSaida` datetime DEFAULT NULL,
  `NotaFiscal` varchar(12) DEFAULT NULL,
  `QuantSaida` float DEFAULT NULL,
  `UnitSaida` float DEFAULT NULL,
  `TotalSaida` float DEFAULT NULL,
  `Id_cliente` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Estrutura da tabela `cliente`
--
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `Cod_cliente` int(11) DEFAULT NULL,
  `Nome` varchar(40) CHARACTER SET latin1 NOT NULL,
  `Contato` varchar(30) CHARACTER SET latin1 NOT NULL,
  `Cargo` varchar(30) CHARACTER SET latin1 NOT NULL,
  `Endereco` varchar(60) CHARACTER SET latin1 NOT NULL,
  `Cidade` varchar(15) CHARACTER SET latin1 NOT NULL,
  `Regiao` varchar(15) CHARACTER SET latin1 NOT NULL,
  `CEP` varchar(10) CHARACTER SET latin1 NOT NULL,
  `Pais` varchar(15) CHARACTER SET latin1 NOT NULL,
  `Telefone` varchar(24) CHARACTER SET latin1 NOT NULL,
  `Fax` varchar(24) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

