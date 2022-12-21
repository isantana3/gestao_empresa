create database db_gestao_contrato;

use db_gestao_contrato
--
-- Estrutura da tabela `supervisor`
--
CREATE TABLE `supervisor` (
  `IdSetor` int(11) NOT NULL,
  `nomesetor` varchar(35) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Estrutura da tabela `contrato`
--

CREATE TABLE `contrato` (
  `Id_Contrato` int(11) NOT NULL,
  `Numero` varchar(10) NOT NULL,
  `Contratado` varchar(40) DEFAULT NULL,
  `Dt_assinat` datetime DEFAULT NULL,
  `Dt_vigencia` datetime DEFAULT NULL,
  `Supervisor` int(11) DEFAULT 0,
  `Valor_tot` decimal(19,4) DEFAULT NULL,
  `Id_Produto` int(11) DEFAULT 0,
  `NFiscal` varchar(12) DEFAULT NULL,
  `CodClient` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `IdProduto` int(11) NOT NULL,
  `Objeto` int(11) DEFAULT 0,
  `Codigo` varchar(19) DEFAULT NULL,
  `Descricao` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Estrutura da tabela `financeiro`
--

CREATE TABLE `financeiro` (
  `Idfinanceiro` int(11) NOT NULL,
  `Numpagamento` bigint(20) DEFAULT NULL,
  `ValorDebito` float DEFAULT NULL,
  `DataPagamento` datetime DEFAULT NULL,
  `ValorCredito` float DEFAULT NULL,
  `DataRecebimento` datetime DEFAULT NULL,
  `Numrecebimento` bigint(20) DEFAULT NULL,
  `NotaFiscalFin` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estrutura da tabela `aditivo`
--

CREATE TABLE `aditivo` (
  `Codigo` int(11) NOT NULL,
  `Codigo_ad` int(11) DEFAULT NULL,
  `N_contrato` varchar(10) DEFAULT NULL,
  `Dt_assin_ad` datetime DEFAULT NULL,
  `Dt_vigen_ad` datetime DEFAULT NULL,
  `Razao_ad` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

