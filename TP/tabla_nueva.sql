-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 24-02-2022 a las 01:11:07
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tabla_nueva`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

DROP TABLE IF EXISTS `contacto`;
CREATE TABLE IF NOT EXISTS `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `tel` varchar(250) NOT NULL,
  `comentarios` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `tel`, `comentarios`) VALUES
(1, 'pablo', 'pabloportelabeltran03@gmail.com', '1134206825', 'Prueba 10'),
(2, 'pablo', 'pabloportelabeltran03@gmail.com', '1134206825', 'Prueba 10'),
(3, 'pablo', 'pabloportelabeltran03@gmail.com', '1134206825', 'Prueba 10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'En la provincia de Buenos Aires no será necesario un PCR negativo para volver a trabajar tras haber tenido COVID-19', 'Así lo determinaron los ministerios de Salud y de Trabajo del gobierno de Kicillof. También aplica para los que hayan sido contacto estrecho', 'El gobierno de la provincia de Buenos Aires estableció que, a partir de ahora, los empleados tanto de la administración pública como de empresas privadas no deberán presentar una prueba de PCR negativa luego de haber estado contagiados de coronavirus para reincoporarse a trabajar. El mismo criterio regirá para quienes hayan sido contacto estrecho y deban aislarse.\r\n\r\nLa decisión del Ejecutivo bonaerense salió publicada en un suplemente del Boletín Oficial y fue determinado por los ministerios de Salud y de Trabajo, Nicolás Kreplak y Mara Ruiz Malec, respectivamente.'),
(3, 'Novedad 3', 'Nueva novedad', 'Esta novedad fue generada en la pagina.'),
(5, 'Ejemplo', 'Esto es un ejemplo', 'El ejemplo que se muestra a continuación es nuevo.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` int(20) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'pablo', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'luchito', '23a6de9d1b696e1e7ddd06bb056745a2'),
(3, 'rossana', '84f5ddd735176becc72c3b1ff424149e');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
