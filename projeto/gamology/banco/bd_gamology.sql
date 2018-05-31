-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30-Maio-2018 às 07:24
-- Versão do servidor: 10.1.29-MariaDB
-- PHP Version: 7.2.0

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
  `nick_comentario` varchar(20) NOT NULL,
  `texto_comentario` varchar(400) NOT NULL,
  PRIMARY KEY (`id_comentario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `comentario`
--

INSERT INTO `comentario` (`id_comentario`, `nick_comentario`, `texto_comentario`) VALUES
(1, 'Mais brabo', 'Este site estÃ¡ brabo que nem eu'),
(2, 'Mais brabo', 'Este site estÃ¡ brabo que nem eu'),
(3, 'Mais brabo', 'Este site estÃ¡ brabo que nem eu');

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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

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
(49, 'poie', 'falaae', '45645645678', 'wfwo@inwf.wf', '123456');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
