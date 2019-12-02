-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2019 a las 13:23:36
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebasweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(11) NOT NULL,
  `persona` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL,
  `durada` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `servicio` varchar(50) NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `persona`, `fecha`, `durada`, `valor`, `tipo`, `servicio`, `hora`) VALUES
(1, 'Miguel Aguilera', '2019-12-18 00:00:00', 1, 1, 2, 'Repostería a domicilio', '13:30:00'),
(2, 'Pedro Salas', '2019-12-04 00:00:00', 2, 1, 3, 'Creación página web', '20:00:00'),
(3, 'Pepe Fernández', '2019-12-19 00:00:00', 2, 1, 1, 'Clases de repaso', '09:00:00'),
(4, 'Jaume Cladera', '2019-12-12 00:00:00', 1, 1, 4, 'Planos a medida', '09:00:00'),
(5, 'Pedro Salas', '2019-12-13 00:00:00', 1, 1, 2, 'Preparación de platos mejicanos', '13:00:00'),
(6, 'Miquel Roig', '2019-12-17 00:00:00', 1, 1, 1, 'Inglés bachiller', '12:00:00'),
(7, 'Raquel Matos', '2019-12-14 00:00:00', 2, 1, 1, 'Guardería', '09:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo` (`tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `tipo` FOREIGN KEY (`tipo`) REFERENCES `tipos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
