-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 31-Maio-2018 às 02:17
-- Versão do servidor: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_gamology`
--
CREATE DATABASE IF NOT EXISTS `bd_gamology` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bd_gamology`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

DROP TABLE IF EXISTS `comentario`;
CREATE TABLE IF NOT EXISTS `comentario` (
  `id_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_comentario` varchar(20) NOT NULL,
  `email_comentario` varchar(50) NOT NULL,
  `texto_comentario` varchar(400) NOT NULL,
  PRIMARY KEY (`id_comentario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `comentario`
--

INSERT INTO `comentario` (`id_comentario`, `nome_comentario`, `email_comentario`, `texto_comentario`) VALUES
(4, 'Felipe', 'felipe.goncalves.171819@gmail.com', 'Fala ae'),
(5, 'Felipe', 'felipe.goncalves.171819@gmail.com', 'Fala ae');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(50) NOT NULL,
  `nickname_usuario` varchar(25) DEFAULT NULL,
  `cpf_usuario` varchar(11) NOT NULL,
  `email_usuario` varchar(50) DEFAULT NULL,
  `senha_usuario` varchar(10) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `cpf_usuario` (`cpf_usuario`),
  UNIQUE KEY `nickname_usuario` (`nickname_usuario`),
  UNIQUE KEY `email_usuario` (`email_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `nickname_usuario`, `cpf_usuario`, `email_usuario`, `senha_usuario`) VALUES
(38, 'Ã§lkwhfewfh', 'iwfhewovih', '15478514565', 'qdfwckj@wqydfw.wd', ''),
(39, 'kuefgwf', 'liegh', '78945612312', 'wfv@kuf.wf', ''),
(42, 'kuyfldktdktkyt', 'kvkufkr', '45644453545', 'jyfu@ghj.iy', ''),
(43, 'trjhthlÃ§h', 'oiuhgorle', '12345678912', 'egehl@kbof.wgf', '456'),
(45, 'teste', 'teste', '13373760000', 'teste@hotmail.com', 'teste'),
(48, 'Felipe GonÃ§alves de Marins', 'dfrtjt', '33344455578', 'rherh@wge.erh', 'vaitomarno'),
(49, 'poie', 'falaae', '45645645678', 'wfwo@inwf.wf', '123456'),
(50, 'Matheus Ferro Ribeiro de Oliveira', '6lacksoul', '14725034738', 'matheus.rib12@hotmail.com', '1234'),
(51, 'wendel sda silva', 'del ', '12323937378', 'wendelsilva63@gmail.com', 'w3nd3l2304'),
(52, 'Valter Martins', 'Valter_mc', '123456789', 'valter@vmc.pro.br', '123456'),
(54, 'fabio', 'fabinho', '16687133730', 'fabio19.oliveira@hotmail.com', 'fabio123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
