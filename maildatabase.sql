-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2022 a las 03:16:13
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chs44206_dbhstech`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maildatabase`
--

CREATE TABLE `maildatabase` (
  `id` int(11) NOT NULL,
  `userId` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `maildatabase`
--

INSERT INTO `maildatabase` (`id`, `userId`, `email`, `subject`, `message`) VALUES
(1, 'Jorge', 'jorge.perez@gmail.com', 'any subject', 'jorge esta es la primera notificacion'),
(2, 'Pedro', 'pedro@gmail.com', 'asunto2', 'como estas de nuevo pedro?'),
(3, 'Juan', 'JuanMail@gmail.com', 'Asunto2', 'Hola Como te ha ido con este tema???');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `maildatabase`
--
ALTER TABLE `maildatabase`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `maildatabase`
--
ALTER TABLE `maildatabase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
