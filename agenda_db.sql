-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-05-2018 a las 17:30:57
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id_evento` int(11) NOT NULL,
  `titulo_evt` varchar(125) NOT NULL,
  `fecha_inicio_evt` date NOT NULL,
  `hora_inicio_evt` varchar(25) NOT NULL,
  `fecha_fin_evt` date NOT NULL,
  `hora_fin_evt` varchar(25) NOT NULL,
  `todo_dia_evt` int(11) NOT NULL,
  `fk_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`id_evento`, `titulo_evt`, `fecha_inicio_evt`, `hora_inicio_evt`, `fecha_fin_evt`, `hora_fin_evt`, `todo_dia_evt`, `fk_id_usuario`) VALUES
(4, 'kk', '2018-06-01', '07:00', '2018-06-01', '08:00', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `correo_usr` varchar(50) NOT NULL,
  `password_usr` varchar(255) NOT NULL,
  `nombre_completo_usr` varchar(125) NOT NULL,
  `fecha_nacimiento_usr` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `correo_usr`, `password_usr`, `nombre_completo_usr`, `fecha_nacimiento_usr`) VALUES
(1, 'andres@gmail.com', '$2y$10$HMbggonEmoh1QdOEI/cX5.gd5PeRHQDyQYTtpCEtMmR2cqdB4xjVa', 'Andres Felipe Fonseca', '1996-02-15'),
(2, 'juan@gmail.com', '$2y$10$xxvru0Ziu6HxVQme2VCEa.j2ZUUCpx2yDTqqXaxkXcEs3QISgL7eS', 'Juan Ortiz Urbano', '1969-10-20'),
(3, 'julio@gmail.com', '$2y$10$19NU48H8aaUVk/3NXssl9ugooW6I7JziGxdB3/8PY3CzAXTc/uxSW', 'Julio Ordoñez Bolívar', '1943-04-13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `fk_id_usuario` (`fk_id_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo_usr` (`correo_usr`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`fk_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
