create database db_logistica_entrega;
use db_logistica_entrega

--
-- Estrutura da tabela `motorista`
--
CREATE TABLE `motorista` (
  `IdMotorista` int(11) NOT NULL,
  `Nom_Moto` varchar(40) DEFAULT NULL,
  `Endere` varchar(40) DEFAULT NULL,
  `Bairro` varchar(15) DEFAULT NULL,
  `Cidade` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Estrutura da tabela `abastecimento`
--

CREATE TABLE `abastecimento` (
  `Codigo` int(11) NOT NULL,
  `Codigo_Co` int(11) DEFAULT NULL,
  `Placa_Co` varchar(8) DEFAULT NULL,
  `Data_Co` datetime DEFAULT NULL,
  `Posto_Co` varchar(255) DEFAULT NULL,
  `Inicial` int(11) DEFAULT NULL,
  `Final` int(11) DEFAULT NULL,
  `Quantid` double DEFAULT NULL,
  `Unitario` decimal(19,4) DEFAULT NULL,
  `Total_Co` decimal(19,4) DEFAULT NULL,
  `Id_Motorista` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `IdVeiculo` int(11) NOT NULL,
  `Placa` varchar(8) CHARACTER SET utf8 NOT NULL,
  `Modelo` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Marca` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Ano` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `Posto` varchar(14) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `movimentacao`
--

CREATE TABLE `movimentacao` (
  `Id_Moviment` int(11) NOT NULL,
  `CuponFiscal` varchar(8) DEFAULT NULL,
  `Carga` varchar(255) DEFAULT NULL,
  `OrigemCarga` varchar(30) DEFAULT NULL,
  `DestinoCarga` varchar(30) DEFAULT NULL,
  `ValorDecla` decimal(19,4) DEFAULT NULL,
  `Frete` decimal(19,4) DEFAULT NULL,
  `Unidade` varchar(4) DEFAULT NULL,
  `DataMovimen` datetime DEFAULT NULL,
  `GrupoMovim` varchar(1) DEFAULT NULL,
  `Transportador` varchar(58) DEFAULT NULL,
  `DataTransp` datetime DEFAULT NULL,
  `DataPedido` datetime DEFAULT NULL,
  `Devolucao` varchar(3) DEFAULT NULL,
  `Num_Saida` int(11) DEFAULT 0,
  `IdPlaca` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


