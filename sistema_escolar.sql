-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-04-2026 a las 19:18:02
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
  `anio_escolar` varchar(20) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `asignatura_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre_alumno`, `apellido_alumno`, `asignatura`, `direccion_alumno`, `telefono_alumno`, `anio_escolar`, `usuario_id`, `asignatura_id`) VALUES
(16, 'nico', 'carrascos', 'Matematicas', 'wdcwcdwcdwcwdcdw', '12444', '2024', NULL, NULL),
(17, 'nico', 'carrascos', 'Matematicas', 'wdcwcdwcdwcwdcdw', '12444', '2024', NULL, NULL),
(20, 'de2d', 'ewswx', 'Lenguaje', 'wsxwsx', '12444', '2025', NULL, NULL),
(21, 'de2d', 'ewswx', 'Ingles', 'wsxwsx', '12444', '2025', NULL, NULL),
(22, 'de2d', 'ewswx', 'Lenguaje', 'wsxwsx', '12444', '2025', NULL, NULL),
(23, 'de2d', 'ewswx', 'Ingles', 'wsxwsx', '12444', '2025', NULL, NULL),
(24, 'de2d', 'ewswx', 'Historia', 'wsxwsx', '12444', '2025', NULL, NULL),
(25, 'diego', 'topo', 'Ciencias', 'colon nrt', '12444', '2025', NULL, NULL),
(27, 'y', 'hy', 'Ingles', 'hgfh', 'fs@djhws.com', '2026', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `correo_docente` varchar(100) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `asignatura_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombre_docente`, `carrera_docente`, `asignatura`, `telefono_docente`, `correo_docente`, `usuario_id`, `asignatura_id`) VALUES
(6, 'ytruj', 't', 'Matematicas', 'ytrj', 'try@gh.com', NULL, NULL),
(7, 'jil', 'uhlo', 'Lenguaje', 'uylk', 'try@gh.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `alumno_id` int(11) DEFAULT NULL,
  `asignatura` varchar(100) DEFAULT NULL,
  `nota` decimal(3,1) DEFAULT NULL,
  `asignatura_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id`, `alumno_id`, `asignatura`, `nota`, `asignatura_id`) VALUES
(42, 16, 'Matematicas', 4.0, NULL),
(43, 16, 'Matematicas', 5.0, NULL);

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
(13, 'Nicolas', 'Osorio', 'Administrador', 'nicoosoriovenegas2004@gmail.com', '$2y$10$fiUeEhRtVM/wLiJdNRytgurMSFNDXvbJFxoN8RwYWFoY62TsBkNcy', NULL, NULL),
(14, 'nico', 'topo', 'Usuario', 'n@gmail.com', '$2y$10$QdrYzDX/T97G3gg29iuSvuPEBi8PeXH7VhOULaRg4VmoM16MD9.N2', NULL, NULL),
(15, 'luis', 'santander', 'Administrador', 'luxitrox.dbz@gmail.com', '$2y$10$4YrwXoZgzidBpuOZ300/KejDtrvI11kyHZsFcYM.iWkQzvKMjNuH6', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `asignatura_id` (`asignatura_id`),
  ADD KEY `idx_alumnos_usuario` (`usuario_id`);

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `asignatura_id` (`asignatura_id`),
  ADD KEY `idx_docentes_usuario` (`usuario_id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `asignatura_id` (`asignatura_id`),
  ADD KEY `idx_notas_alumno` (`alumno_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`),
  ADD CONSTRAINT `fk_alumno_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD CONSTRAINT `docentes_ibfk_1` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`),
  ADD CONSTRAINT `fk_docente_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
