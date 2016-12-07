-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2016 a las 15:04:10
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `barberia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barberos`
--

CREATE TABLE `barberos` (
  `identificacion` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` int(11) NOT NULL,
  `movil` int(11) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `barberos`
--

INSERT INTO `barberos` (`identificacion`, `nombre`, `telefono`, `movil`, `direccion`, `usuario_id`) VALUES
(1030575304, 'RUSBEL OVIEDO', 4561329, 516, 'CRA 77c # 52- 31 BARRIO LA ESMERALDA', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barbero_turno`
--

CREATE TABLE `barbero_turno` (
  `turno_id` int(11) NOT NULL,
  `barbero_id` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `corte_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `_id_cliente` int(5) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fec_nac` date NOT NULL,
  `nacionalidad` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`_id_cliente`, `email`, `fec_nac`, `nacionalidad`, `region`, `ciudad`) VALUES
(29, '1030575304', '0000-00-00', 'dgf', 'dgf', 'sd'),
(30, 'mar-c-ruyli@hotmail.com', '1990-03-15', 'asdk', 'sdfo', 'klñdf'),
(31, 'marco@gmail.com', '1989-06-12', 'asdf', 'dgfj', 'df'),
(28, 'runbi2013@hotmail.com', '2006-06-15', 'casf', 'casf', 'casd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cortes`
--

CREATE TABLE `cortes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cortes`
--

INSERT INTO `cortes` (`id`, `nombre`, `descripcion`, `precio`, `usuario_id`) VALUES
(1, 'fghdfghfghdfgh', 'fdghdfghdfhgdfhg', 15000, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `id` int(11) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`id`, `hora_inicio`, `hora_fin`) VALUES
(1, '09:01:00', '09:20:00'),
(2, '09:21:00', '09:40:00'),
(3, '09:41:00', '10:00:00'),
(4, '10:41:00', '11:00:00'),
(5, '11:01:00', '11:20:00'),
(6, '11:21:00', '11:40:00'),
(7, '11:41:00', '12:00:00'),
(8, '12:01:00', '12:20:00'),
(9, '12:21:00', '12:40:00'),
(10, '13:01:00', '13:20:00'),
(11, '13:21:00', '13:40:00'),
(12, '14:01:00', '14:20:00'),
(13, '15:01:00', '15:20:00'),
(14, '15:21:00', '15:40:00'),
(15, '15:41:00', '16:00:00'),
(16, '16:01:00', '16:20:00'),
(17, '16:21:00', '16:40:00'),
(18, '16:41:00', '17:00:00'),
(19, '17:01:00', '17:20:00'),
(20, '17:21:00', '17:40:00'),
(21, '18:01:00', '18:20:00'),
(22, '18:21:00', '18:40:00'),
(23, '19:01:00', '19:20:00'),
(24, '19:21:00', '19:40:00'),
(25, '19:41:00', '20:00:00'),
(26, '20:01:00', '20:20:00'),
(27, '20:21:00', '20:40:00'),
(28, '20:41:00', '21:00:00'),
(29, '21:21:00', '21:40:00'),
(30, '21:41:00', '22:00:00'),
(31, '22:01:00', '22:20:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `_id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contrasena` varchar(256) NOT NULL,
  `rol` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`_id_user`, `email`, `contrasena`, `rol`) VALUES
(16, 'jjaa', '$2y$10$ONLSfLNKY3dWZYCDcOQ/Iel8HeVKDNhIhA0esVrF4kAD7lEGJ5Zwe', 'root'),
(44, 'mar-c-ruyli@hotmail.com', '$2y$10$..H1A/u5l6CAeT6Nie2hUeL7qnHQYTXNG6FHvtPv/9.qOL8oU5DRW', 'empleado'),
(42, 'runbi2013@hotmail.com', '$2y$10$dynHJ.nl.XE2FmE6KW2unOXiu1HkKGFcvkw2Mhoevyxo6vQLW0dKC', 'admin'),
(47, 'marco@gmail.com', '$2y$10$133BilYr6nhs4ejsUDeo/.jZ.DfyLfZSGoocJmgrsI6dkRhWTsE6.', 'cliente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `barberos`
--
ALTER TABLE `barberos`
  ADD PRIMARY KEY (`identificacion`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`_id_cliente`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `cortes`
--
ALTER TABLE `cortes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`_id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `barberos`
--
ALTER TABLE `barberos`
  MODIFY `identificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1030575305;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `_id_cliente` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `cortes`
--
ALTER TABLE `cortes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `_id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
