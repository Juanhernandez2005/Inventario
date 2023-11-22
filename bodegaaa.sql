-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2023 a las 16:39:50
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bodegaaa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `Id_movimiento` int(11) NOT NULL,
  `codigo_producto` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `tipo` varchar(25) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`Id_movimiento`, `codigo_producto`, `fecha`, `tipo`, `cantidad`) VALUES
(1, 1, '2023-11-30', 'ingreso', 15),
(2, 2, '2023-11-23', 'ingreso', 14),
(3, 3, '2023-11-30', 'Salida', 1000),
(4, 4, '2023-11-24', 'Salida', 10),
(5, 9, '2023-11-16', 'Ingreso', 9),
(6, 7, '2023-11-30', 'Salida', 15),
(7, 10, '2023-11-17', 'Salida', 10),
(8, 11, '2022-11-21', 'salida', 80),
(10, 14, '2022-11-25', 'salida', 2),
(11, 15, '2022-12-01', 'salida', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `nombre`, `precio`, `cantidad`, `fecha_vencimiento`, `estado`) VALUES
(1, 'Jabones', 1500, 15, '0000-00-00', 1),
(2, 'Galletas', 1200, 14, '2024-02-23', 1),
(3, 'Pan', 300, 1000, '2024-03-13', 0),
(4, 'Celulares', 830000, 10, '2024-09-21', 0),
(6, 'Crispetas', 1500, 7, '2040-08-08', 1),
(7, 'Galletas navideñas', 2000, 15, '2017-08-04', 1),
(8, 'Dulces de fresa', 500, 9, '2023-10-10', 1),
(9, 'Dulces de mango', 500, 9, '2025-06-22', 1),
(10, 'Merengones', 12000, 10, '2028-08-08', 0),
(11, 'Periodicos', 2000, 20, '2028-08-08', 1),
(14, 'Periodicos', 2000, 15, '2028-08-08', NULL),
(15, 'Periodicos', 2000, 16, '2028-08-08', NULL),
(16, 'Periodicos', 2000, 20, '2028-08-08', NULL),
(17, 'Periodicos', 2000, 40, '2028-08-08', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`Id_movimiento`),
  ADD UNIQUE KEY `codigo` (`codigo_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `Id_movimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD CONSTRAINT `movimientos_ibfk_1` FOREIGN KEY (`codigo_producto`) REFERENCES `productos` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
