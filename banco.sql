-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/11/2026 às 22:58
-- Versão do servidor: 10.11.16-MariaDB
-- Versão do PHP: 8.3.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco_final`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mensagem` text NOT NULL,
  `data_envio` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `email`, `mensagem`, `data_envio`) VALUES
(1, 'Yalei', 'yaleibevilaqua@gmail.com', 'Teste mensagem', '2026-11-24 03:01:18'),
(2, 'Yakea', 'dadad@hmailc', 'Teste contato', '2026-11-24 03:07:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `depoimentos`
--

CREATE TABLE `depoimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `depoimento` text NOT NULL,
  `data_depoimento` date NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `depoimentos`
--

INSERT INTO `depoimentos` (`id`, `nome`, `depoimento`, `data_depoimento`, `foto`) VALUES
(1, 'Yalei', 'Teste depoimentos', '2026-11-24', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `orcamentos`
--

CREATE TABLE `orcamentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `data_desejada` date NOT NULL,
  `observacoes` text DEFAULT NULL,
  `servico` varchar(150) NOT NULL,
  `data_solicitacao` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `orcamentos`
--

INSERT INTO `orcamentos` (`id`, `nome`, `email`, `telefone`, `endereco`, `cidade`, `uf`, `data_desejada`, `observacoes`, `servico`, `data_solicitacao`) VALUES
(1, 'Yalei', 'yaleibdcbevilaquadecarvalho@gmail.com', '49984058885', 'jerusalém', 'chapecó', 'SC', '2026-12-03', 'Teste', 'Organização de Cozinhas e Despensas', '2026-11-24 02:29:55'),
(2, 'Tania', 'yaleibdcbevilaquadecarvalho@gmail.com', '49984058885', 'Acides Geraldo Faganello', 'Seara', 'SC', '2026-12-09', 'TEste orçamento', 'Organização de Cozinhas e Despensas', '2026-11-24 03:06:11');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `depoimentos`
--
ALTER TABLE `depoimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `depoimentos`
--
ALTER TABLE `depoimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
