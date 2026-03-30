-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-03-2026 a las 20:54:55
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
-- Base de datos: `sistema_escolar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre_alumno` varchar(50) DEFAULT NULL,
  `apellido_alumno` varchar(50) DEFAULT NULL,
  `asignatura` text DEFAULT NULL,
  `direccion_alumno` varchar(100) DEFAULT NULL,
  `telefono_alumno` varchar(20) DEFAULT NULL,
  `anio_escolar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre_alumno`, `apellido_alumno`, `asignatura`, `direccion_alumno`, `telefono_alumno`, `anio_escolar`) VALUES
(16, 'nico', 'carrascos', 'Matematicas', 'wdcwcdwcdwcwdcdw', '12444', '2024'),
(17, 'nico', 'carrascos', 'Matematicas', 'wdcwcdwcdwcwdcdw', '12444', '2024'),
(18, 'de2d', 'ewswx', 'Matematicas', 'wsxwsx', '', ''),
(19, 'diego', 'topo', 'Matematicas', 'colon nrt', '', ''),
(20, 'de2d', 'ewswx', 'Lenguaje', 'wsxwsx', '12444', '2025'),
(21, 'de2d', 'ewswx', 'Ingles', 'wsxwsx', '12444', '2025'),
(22, 'de2d', 'ewswx', 'Lenguaje', 'wsxwsx', '12444', '2025'),
(23, 'de2d', 'ewswx', 'Ingles', 'wsxwsx', '12444', '2025'),
(24, 'de2d', 'ewswx', 'Historia', 'wsxwsx', '12444', '2025'),
(25, 'diego', 'topo', 'Ciencias', 'colon nrt', '12444', '2025'),
(26, 'diego', 'topo', 'Ciencias', 'colon nrt', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(50) DEFAULT NULL,
  `carrera_docente` varchar(100) DEFAULT NULL,
  `asignatura` varchar(50) DEFAULT NULL,
  `telefono_docente` varchar(20) DEFAULT NULL,
  `correo_docente` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombre_docente`, `carrera_docente`, `asignatura`, `telefono_docente`, `correo_docente`) VALUES
(3, 'diego topo', 'Pedagogia', 'Lenguaje', '12444', 'hfdhdrfh@jnfue.com'),
(4, 'diego topo', 'Pedagogia', 'Matematicas', '12444', 'hfdhdrfh@jnfue.com'),
(5, 'nico', 'Pedagogia', 'Matematicas', '12444', 'hfdhdrthfh@jnfue.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `alumno_id` int(11) DEFAULT NULL,
  `asignatura` varchar(100) DEFAULT NULL,
  `nota` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id`, `alumno_id`, `asignatura`, `nota`) VALUES
(16, 16, 'Matematicas', 7.0),
(17, 16, 'Matematicas', 4.0),
(18, 16, 'Matematicas', 3.0),
(19, 17, 'Matematicas', 2.0),
(20, 18, 'Ingles', 5.0),
(21, 18, 'Ciencias', 5.0),
(22, 19, 'Historia', 7.0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `tipo_usuario` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `token_expira` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `tipo_usuario`, `correo`, `password`, `token`, `token_expira`) VALUES
(13, 'Nicolas', 'Osorio', 'Administrador', 'nicoosoriovenegas2004@gmail.com', '$2y$10$fiUeEhRtVM/wLiJdNRytgurMSFNDXvbJFxoN8RwYWFoY62TsBkNcy', '73d918f87de305d64f0a9d6383066f9716c1a1938aded168105e84dc11f8ec2fdb2d045c2e886b88b19590d092d9f03c6112', '2026-03-27 21:02:20'),
(14, 'nico', 'topo', 'Usuario', 'n@gmail.com', '$2y$10$QdrYzDX/T97G3gg29iuSvuPEBi8PeXH7VhOULaRg4VmoM16MD9.N2', '675c2d246a6f08fa550e4ef77df6691af6ca9247cf8ac3451dd653c0195f3117d79a25226212470792522713859f31e7dfb9', '2026-03-27 21:02:28'),
(15, 'luis', 'santander', 'Administrador', 'luxitrox.dbz@gmail.com', '$2y$10$4YrwXoZgzidBpuOZ300/KejDtrvI11kyHZsFcYM.iWkQzvKMjNuH6', '636b76427904ffbb683364a222c31906f0f65d31ca1c61e669cf4cab105bf521c2ee272a97ab0c3ffabc15f4b2ce00f9c304', '2026-03-27 21:29:56');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumno_id` (`alumno_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
