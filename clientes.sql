-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Out-2022 às 21:12
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clientes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereços_usuario`
--

CREATE TABLE `endereços_usuario` (
  `ID_ENDEREÇO_USUARIO` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `LOGRADOURO` varchar(255) NOT NULL,
  `NUMERO` varchar(45) NOT NULL,
  `CIDADE` varchar(255) NOT NULL,
  `UF` varchar(2) NOT NULL,
  `CEP` varchar(45) NOT NULL,
  `BAIRRO` varchar(255) NOT NULL,
  `COMPLEMENTO` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(50) NOT NULL,
  `SOBRENOME` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `TELEFONE` varchar(45) NOT NULL,
  `CPF` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `endereços_usuario`
--
ALTER TABLE `endereços_usuario`
  ADD PRIMARY KEY (`ID_ENDEREÇO_USUARIO`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `endereços_usuario`
--
ALTER TABLE `endereços_usuario`
  ADD CONSTRAINT `endereços_usuario_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuarios` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
