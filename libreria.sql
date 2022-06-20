-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3305
-- Tiempo de generación: 31-03-2022 a las 04:28:07
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

create database libreria;
use libreria;
CREATE TABLE `inventario` (
  `Codigo` int(11) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `Autor` varchar(100) NOT NULL,
  `Genero` varchar(100) NOT NULL,
  `Editorial` varchar(100) NOT NULL,
  `Cantidad` int(100) NOT NULL,
  `Fecha_publicacion` date NOT NULL,
  `Edicion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`Codigo`, `Titulo`, `Autor`, `Genero`, `Editorial`, `Cantidad`, `Fecha_publicacion`, `Edicion`) VALUES
(4, 'Harry Potter y la piedra filosofal ', 'JK ROWLING', 'Infantil', 'Bloomsbury Publishing', 1000, '1997-07-07', 'Primera'),
(5, 'Top Notch 1', 'Joan Saslow', 'Infantil', 'Pearson', 700, '2017-05-01', 'Segunda'),
(6, 'La Bruja', 'German Castro Caycedo', 'Historia', 'Planeta', 800, '2001-05-01', 'Primera'),
(7, 'La Esperanza es la última en morir (Nadzieja umiera Ostatnia)', 'Halina Birenbaum', 'Historia', 'Museo Estatal Auschwitz-Birkenau', 1000, '2015-01-01', 'Primera'),
(8, 'Lecciones Preliminares de Filosofía', 'Manuel García Morente ', 'Historia', 'Gráficas Modernas', 600, '2005-11-01', 'Segunda'),
(9, 'E Hueco ', 'German Castro Caycedo', 'Historia', 'Planeta', 1000, '1989-01-01', 'Tercera'),
(10, 'Selva Adentro, colonización del Guaviare ', 'Alfredo Molano', 'Historia', 'Ancora Editores', 500, '1987-01-01', 'Primera'),
(11, 'Cuentos Infantiles', 'Hans Christian Andersen', 'Infantil', 'Universal', 400, '1851-01-01', 'Quinta');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`Codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
