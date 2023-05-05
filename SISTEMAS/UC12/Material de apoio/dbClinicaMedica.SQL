-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Mar-2023 às 18:37
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbclinicamedica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfuncionarios`
--

CREATE TABLE `tbfuncionarios` (
  `codfunc` int(11) NOT NULL,
  `nomefunc` varchar(100) DEFAULT NULL,
  `emailfunc` varchar(100) DEFAULT NULL,
  `telefone` char(15) DEFAULT NULL,
  `cpf` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbfuncionarios`
--

INSERT INTO `tbfuncionarios` (`codfunc`, `nomefunc`, `emailfunc`, `telefone`, `cpf`) VALUES
(1, 'senac', 'senac@senac.com', '(11) 3737-3900', '258.258-247-00'),
(2, 'Maria do Carmo', 'maria.carmo@gmail.com', '(77) 77777-7777', '888.888.888-88'),
(3, 'Carlos Antunes', 'carlos.antunes@gmail.com', '(88) 88888-8888', '999.999.999-99'),
(4, 'Lucas Albuquerque', 'lucas.albuquerque@gmail.com', '(11) 11111-1111', '111.111.111-11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpaciente`
--

CREATE TABLE `tbpaciente` (
  `codPac` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` char(14) DEFAULT NULL,
  `cpf` char(14) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `numero` char(10) DEFAULT NULL,
  `cep` char(8) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `siglaEst` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbpaciente`
--

INSERT INTO `tbpaciente` (`codPac`, `nome`, `email`, `telefone`, `cpf`, `endereco`, `numero`, `cep`, `complemento`, `bairro`, `cidade`, `siglaEst`) VALUES
(5, 'Thayna Maria da Costa Antunes', 'thayna.maria@hotmail.com', '(11) 99999-999', '457.810.478-83', 'Rua Doutor Antônio Bento', '35', '04750000', 'casa', 'Santo Amaro', 'São Paulo', 'SP'),
(6, '', '', '(  )      -', '   .   .   -', '', '', '', '', '', '', ''),
(7, 'Caio Miranda da Cunha', 'caio.miranda@gmail.com', '(88) 88888-888', '426.149.588-08', 'Rua Gagliano Netto', '355', '05872080', 'casa', 'Jardim Soraia', 'São Paulo', 'SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuarios`
--

CREATE TABLE `tbusuarios` (
  `codUsu` int(11) NOT NULL,
  `nomeUsu` varchar(20) NOT NULL,
  `senhaUsu` varchar(20) NOT NULL,
  `codfunc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbusuarios`
--

INSERT INTO `tbusuarios` (`codUsu`, `nomeUsu`, `senhaUsu`, `codfunc`) VALUES
(1, 'senac', 'senac', 1),
(2, 'maria.carmo', '123456', 2),
(3, 'carlos.antunes', '123456', 3),
(4, 'lucas.albuquerque', '123456', 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbfuncionarios`
--
ALTER TABLE `tbfuncionarios`
  ADD PRIMARY KEY (`codfunc`);

--
-- Índices para tabela `tbpaciente`
--
ALTER TABLE `tbpaciente`
  ADD PRIMARY KEY (`codPac`);

--
-- Índices para tabela `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD PRIMARY KEY (`codUsu`),
  ADD KEY `codfunc` (`codfunc`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbfuncionarios`
--
ALTER TABLE `tbfuncionarios`
  MODIFY `codfunc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tbpaciente`
--
ALTER TABLE `tbpaciente`
  MODIFY `codPac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tbusuarios`
--
ALTER TABLE `tbusuarios`
  MODIFY `codUsu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD CONSTRAINT `tbusuarios_ibfk_1` FOREIGN KEY (`codfunc`) REFERENCES `tbfuncionarios` (`codfunc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
