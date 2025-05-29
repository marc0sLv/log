-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/05/2025 às 21:49
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `usuarios`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `ID_A` int(11) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `IDADE` varchar(2) NOT NULL,
  `MATRICULA` varchar(30) NOT NULL,
  `SERIE` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `ID_LIVRO` int(11) NOT NULL,
  `TÍTULO` varchar(30) NOT NULL,
  `AUTOR` varchar(30) NOT NULL,
  `EDITORA` varchar(30) NOT NULL,
  `ISBN` varchar(15) NOT NULL,
  `EXEMPLAR` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `logers`
--

CREATE TABLE `logers` (
  `ID_LOG` int(11) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `SENHA` varchar(30) NOT NULL,
  `SEXO` varchar(15) NOT NULL,
  `CIDADE` varchar(30) NOT NULL,
  `ESTADO` varchar(30) NOT NULL,
  `BAIRRO` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `logers`
--

INSERT INTO `logers` (`ID_LOG`, `NOME`, `EMAIL`, `SENHA`, `SEXO`, `CIDADE`, `ESTADO`, `BAIRRO`) VALUES
(4, 'Carlos Daniel Pereira Rodrigue', 'carlosdnovo01@gmail.com', '$2y$10$5UyDM/vYoZu7R1oah6V1Bun', 'masculino', 'Ipu-CE', 'ceara', 'pereiros'),
(6, 'marcos', 'aaa@gmail.com', '$2y$10$jQjVTuFhJiuFCJqONrbvmOt', 'masculino', 'aa', 'aa', 'aa'),
(7, 'marcos', 'aaa@gmail.com', '$2y$10$ts24n1tJ4tWk3zsOV9XN/.2', 'masculino', 'aa', 'aa', 'aa'),
(8, 'marcos', 'aaa@gmail.com', '$2y$10$0FLZsRY5CFOdgLjZEpSwgO/', 'masculino', 'aa', 'aa', 'aa'),
(9, 'marcos', 'aaa@gmail.com', '$2y$10$udU1m6x0q9yd4q8.U9HnOu4', 'masculino', 'aa', 'aa', 'aa'),
(10, 'marcos', 'aaa@gmail.com', '$2y$10$Joybqe/sWzkZyJBKLiUS4ua', 'masculino', 'aa', 'aa', 'aa'),
(11, 'marcos', 'aaa@gmail.com', '$2y$10$qccR8WXUK1uhgBi5I8U73Oo', 'masculino', 'aa', 'aa', 'aa'),
(12, 'marcos', 'aaa@gmail.com', '$2y$10$fUVX1kd2vz0Iv11sMiJsWeJ', 'masculino', 'aa', 'aa', 'aa'),
(13, 'marcos', 'aaa@gmail.com', '$2y$10$gNUEoWcDgrzGvuPl/ZoLo.9', 'masculino', 'aa', 'aa', 'aa'),
(14, 'marcos', 'aaa@gmail.com', '$2y$10$YjrP8/dSly4BYETLuCSwoOu', 'masculino', 'aa', 'aa', 'aa'),
(15, 'marcos', 'aaa@gmail.com', '$2y$10$EJ1tAzk7wwTJKrAThTkhY.m', 'masculino', 'aa', 'aa', 'aa'),
(16, 'marcos', 'aaa@gmail.com', '$2y$10$VwIrUUXksYAeLhy.ri2Vl.S', 'masculino', 'aa', 'aa', 'aa'),
(17, 'marcos', 'aaa@gmail.com', '$2y$10$J4XVl77u3Euw5i56RGv9COX', 'masculino', 'aa', 'aa', 'aa'),
(18, 'marcos', 'aaa@gmail.com', '$2y$10$B18yh1BEUNg3HX7hC6GxUO6', 'masculino', 'aa', 'aa', 'aa'),
(19, 'marcos', 'aaa@gmail.com', '$2y$10$NPMBUqx9o//QM5WKZ32lfO8', 'masculino', 'aa', 'aa', 'aa'),
(20, 'marcos', 'aaa@gmail.com', '$2y$10$F.LOMBD65dkE.RdMzvUNKOb', 'masculino', 'aa', 'aa', 'aa');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`ID_A`);

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`ID_LIVRO`);

--
-- Índices de tabela `logers`
--
ALTER TABLE `logers`
  ADD PRIMARY KEY (`ID_LOG`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `ID_A` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `ID_LIVRO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `logers`
--
ALTER TABLE `logers`
  MODIFY `ID_LOG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
