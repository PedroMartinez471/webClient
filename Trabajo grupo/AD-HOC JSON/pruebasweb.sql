-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2019 a las 13:24:10
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
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `ID` int(11) NOT NULL,
  `ID_PROVINCIA` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`ID`, `ID_PROVINCIA`, `Nombre`) VALUES
(1, 1, 'Palma'),
(2, 1, 'Inca'),
(3, 2, 'Getafe'),
(4, 5, 'Alicante'),
(5, 2, 'Vallecas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`ID`, `Nombre`) VALUES
(1, 'Islas Baleares'),
(2, 'Madrid'),
(3, 'Barcelona'),
(4, 'Girona'),
(5, 'Alicante');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `Nombre`) VALUES
(1, 'Educación'),
(2, 'Cocina'),
(3, 'Informática'),
(4, 'Arquitectura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `age`, `country`) VALUES
(1, 'Pepe', 'Martínez', 33, 'Spain'),
(2, 'Miguel', 'Fernández', 22, 'Portugal'),
(3, 'Lucia', 'Llull', 32, 'Spain'),
(4, 'Andrés', 'Fuster', 25, 'France');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_PROVINCIA` (`ID_PROVINCIA`),
  ADD KEY `ID_PROVINCIA_2` (`ID_PROVINCIA`),
  ADD KEY `ID_PROVINCIA_3` (`ID_PROVINCIA`),
  ADD KEY `ID_PROVINCIA_4` (`ID_PROVINCIA`),
  ADD KEY `ID_PROVINCIA_5` (`ID_PROVINCIA`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo` (`tipo`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ID_PROVINCIA` FOREIGN KEY (`ID_PROVINCIA`) REFERENCES `provincia` (`ID`);

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `tipo` FOREIGN KEY (`tipo`) REFERENCES `tipos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
