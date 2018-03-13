-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2017 a las 08:59:12
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejemploajax`
--
CREATE DATABASE IF NOT EXISTS `ejemploajax` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ejemploajax`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `idciudad` int(11) NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `apodo` text COLLATE utf8_unicode_ci,
  `idestado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`idciudad`, `nombre`, `apodo`, `idestado`) VALUES
(1, 'Montgomery', 'The Gump', 1),
(2, 'Birmingham', 'Pittsburgh of the South', 1),
(3, 'Phoenix', 'Valley of the Sun', 2),
(4, 'Los Angeles', 'L.A., City of Angels', 3),
(5, 'Sacramento', 'City of Trees', 3),
(6, 'Denver', ' The Mile-High City', 4),
(7, 'Atlanta', ' The City in a Forest', 5),
(8, 'Miami', 'Magic City', 6),
(9, 'Jacksonville', 'The River City', 6),
(10, 'Springfield', 'Flower City', 7),
(11, 'Chicago', 'Windy City', 7),
(12, 'New Orleans', 'The Crescent City', 8),
(13, 'Boston', 'The City on a Hill', 9),
(14, 'Detroit', 'The Motor City', 10),
(15, 'Kansas City', 'KC', 11),
(16, 'Las Vegas', 'City of Lights', 12),
(17, 'Houston', 'Space City', 13),
(18, 'Austin', 'Live Music Capital of the World', 13),
(19, 'Seattle', 'The Emerald City', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `idestado` int(11) NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `abreviatura` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`idestado`, `nombre`, `abreviatura`) VALUES
(1, 'Alabama', 'AL'),
(2, 'Arizona', 'AZ'),
(3, 'California', 'CA'),
(4, 'Colorado', 'CO'),
(5, 'Georgia', 'GA'),
(6, 'Florida', 'FL'),
(7, 'Illinois', 'IL'),
(8, 'Louisiana', 'LA'),
(9, 'Massachusetts', 'MA'),
(10, 'Michigan', 'MI'),
(11, 'Missouri', 'MO'),
(12, 'Nevada', 'NV'),
(13, 'Texas', 'TX'),
(14, 'Washington', 'WA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`idciudad`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`idestado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `idciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `idestado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
