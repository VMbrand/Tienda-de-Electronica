-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2024 a las 23:56:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_electronica`
--
CREATE DATABASE IF NOT EXISTS `tienda_electronica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tienda_electronica`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `email`, `telefono`) VALUES
(1, 'Carlos Pérez', 'carlos.perez@email.com', '3012345678'),
(2, 'Ana García', 'ana.garcia@email.com', '3023456789'),
(3, 'Luis Rodríguez', 'luis.rodriguez@email.com', '3034567890'),
(4, 'María López', 'maria.lopez@email.com', '3045678901'),
(5, 'Juan Martínez', 'juan.martinez@email.com', '3056789012'),
(6, 'Laura Sánchez', 'laura.sanchez@email.com', '3067890123'),
(7, 'Pedro Gómez', 'pedro.gomez@email.com', '3078901234'),
(8, 'Sofía Fernández', 'sofia.fernandez@email.com', '3089012345'),
(9, 'David Ramírez', 'david.ramirez@email.com', '3090123456'),
(10, 'Carmen Díaz', 'carmen.diaz@email.com', '3101234567'),
(11, 'Gabriel Torres', 'gabriel.torres@email.com', '3112345678'),
(12, 'Marta Pérez', 'marta.perez@email.com', '3123456789'),
(13, 'Alberto González', 'alberto.gonzalez@email.com', '3134567890'),
(14, 'Cristina Jiménez', 'cristina.jimenez@email.com', '3145678901'),
(15, 'Fernando Herrera', 'fernando.herrera@email.com', '3156789012'),
(16, 'Javier Molina', 'javier.molina@email.com', '3167890123'),
(17, 'Isabel Ruiz', 'isabel.ruiz@email.com', '3178901234'),
(18, 'Ricardo Martín', 'ricardo.martin@email.com', '3189012345'),
(19, 'Patricia Fernández', 'patricia.fernandez@email.com', '3190123456'),
(20, 'Jorge López', 'jorge.lopez@email.com', '3201234567'),
(21, 'Beatriz García', 'beatriz.garcia@email.com', '3212345678'),
(22, 'Raúl Sánchez', 'raul.sanchez@email.com', '3223456789'),
(23, 'Elena Pérez', 'elena.perez@email.com', '3234567890'),
(24, 'Tomás Martínez', 'tomas.martinez@email.com', '3245678901'),
(25, 'Sandra Romero', 'sandra.romero@email.com', '3256789012');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_detalle` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL CHECK (`cantidad` > 0),
  `precio_unitario` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_detalle`, `id_venta`, `cantidad`, `precio_unitario`) VALUES
(1, 1, 2, 300),
(2, 2, 1, 700),
(3, 3, 3, 400),
(4, 4, 5, 50),
(5, 5, 2, 150),
(6, 6, 3, 300),
(7, 7, 2, 700),
(8, 8, 4, 400),
(9, 9, 6, 50),
(10, 10, 3, 150),
(11, 11, 2, 300),
(12, 12, 1, 700),
(13, 13, 5, 400),
(14, 14, 7, 50),
(15, 15, 4, 150),
(16, 16, 2, 300),
(17, 17, 3, 700),
(18, 18, 4, 400),
(19, 19, 5, 50),
(20, 20, 6, 150),
(21, 21, 2, 300),
(22, 22, 3, 700),
(23, 23, 4, 400),
(24, 24, 5, 50),
(25, 25, 6, 150);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `stock` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_detalle_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre_producto`, `precio`, `stock`, `id_cliente`, `id_detalle_venta`) VALUES
(1, 'Smartphone', 300, 50, 1, 1),
(2, 'Laptop', 700, 30, 2, 2),
(3, 'Tablet', 400, 25, 3, 3),
(4, 'Headphones', 50, 100, 4, 4),
(5, 'Smartwatch', 150, 40, 5, 5),
(6, 'Keyboard', 80, 75, 6, 6),
(7, 'Mouse', 30, 150, 7, 7),
(8, 'Monitor', 250, 20, 8, 8),
(9, 'Speakers', 120, 60, 9, 9),
(10, 'Charger', 20, 200, 10, 10),
(11, 'Camera', 500, 15, 11, 11),
(12, 'Drone', 900, 10, 12, 12),
(13, 'Smart TV', 800, 8, 13, 13),
(14, 'Projector', 400, 5, 14, 14),
(15, 'Flash Drive', 30, 200, 15, 15),
(16, 'External Hard Drive', 100, 50, 16, 16),
(17, 'Bluetooth Earbuds', 60, 120, 17, 17),
(18, 'Printer', 150, 40, 18, 18),
(19, 'Router', 120, 80, 19, 19),
(20, 'Smart Ring', 90, 70, 20, 20),
(21, 'Virtual Reality Headset', 500, 10, 21, 21),
(22, 'Electric Scooter', 600, 7, 22, 22),
(23, 'E-Reader', 150, 25, 23, 23),
(24, 'Gaming Console', 400, 5, 24, 24),
(25, 'Electric Guitar', 350, 8, 25, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_cliente`, `fecha_venta`, `total`) VALUES
(1, 1, '2024-11-01', 600),
(2, 2, '2024-11-02', 400),
(3, 3, '2024-11-03', 500),
(4, 4, '2024-11-04', 200),
(5, 5, '2024-11-05', 800),
(6, 6, '2024-11-06', 650),
(7, 7, '2024-11-07', 200),
(8, 8, '2024-11-08', 300),
(9, 9, '2024-11-09', 50),
(10, 10, '2024-11-10', 60),
(11, 11, '2024-11-11', 451),
(12, 12, '2024-11-12', 1000),
(13, 13, '2024-11-13', 121),
(14, 14, '2024-11-14', 30),
(15, 15, '2024-11-15', 130),
(16, 16, '2024-11-16', 350),
(17, 17, '2024-11-17', 350),
(18, 18, '2024-11-18', 150),
(19, 19, '2024-11-19', 70),
(20, 20, '2024-11-20', 130),
(21, 21, '2024-11-21', 300),
(22, 22, '2024-11-22', 500),
(23, 23, '2024-11-23', 300),
(24, 24, '2024-11-24', 500),
(25, 25, '2024-11-25', 600);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `fk_detalle_venta_venta` (`id_venta`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_producto_cliente` (`id_cliente`),
  ADD KEY `fk_producto_detalle_venta` (`id_detalle_venta`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `fk_venta_cliente` (`id_cliente`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_detalle_venta_venta` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_producto_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `fk_producto_detalle_venta` FOREIGN KEY (`id_detalle_venta`) REFERENCES `detalle_venta` (`id_detalle`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_venta_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
