-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-04-2023 a las 06:53:47
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `consultorio_medico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aseguradora`
--

CREATE TABLE `aseguradora` (
  `id_aseguradora` bigint(20) NOT NULL,
  `nombre_aseguradora` varchar(50) NOT NULL,
  `direccion_aseguradora` varchar(50) NOT NULL,
  `correo_aseguradora` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aseguradora`
--

INSERT INTO `aseguradora` (`id_aseguradora`, `nombre_aseguradora`, `direccion_aseguradora`, `correo_aseguradora`, `telefono`, `status`) VALUES
(1, 'Humano', 'Santiago De Los Caballeros', 'humano@hotmail.com', '829-475-9875', b'1'),
(2, 'Palic', 'Santo Domingo', 'palic@gmail.com', '809-978-5454', b'1'),
(3, 'Primera', 'Puerto Plata', 'primeraars@outlook.c', '849-852-41014', b'1'),
(4, 'NINGUNA', 'NINGUNA....', 'NINGUNA@N', '000000', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id_citas` bigint(20) NOT NULL,
  `id_doctor` bigint(20) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_final` datetime NOT NULL,
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cobertura`
--

CREATE TABLE `cobertura` (
  `id_cob` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `cedula` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `celular` bigint(20) NOT NULL,
  `ars` varchar(50) NOT NULL,
  `num_ars` varchar(50) NOT NULL,
  `direccion` varchar(70) NOT NULL,
  `status` bit(1) NOT NULL,
  `procedimiento` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `cob_solicitado` int(11) NOT NULL,
  `num_autorizacion` int(11) NOT NULL,
  `fecha_cobertura` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cobertura`
--

INSERT INTO `cobertura` (`id_cob`, `nombre`, `apellido`, `cedula`, `email`, `telefono`, `celular`, `ars`, `num_ars`, `direccion`, `status`, `procedimiento`, `precio`, `cob_solicitado`, `num_autorizacion`, `fecha_cobertura`) VALUES
(1, 'ISAAC', 'ESPINAL', 40211104340, 'isaac@gmai.com', '829-280-3056', 0, '111111', 'Humano', 'SAJOMA', b'0', 'CONSULTA', 2500, 500, 7374, '2022-12-19'),
(2, 'LUIS', 'ESPINAL', 40245458888, 'luis@gmail.com', '829-888-6666', 0, '1212121', 'Humano', 'SANTIAGO', b'0', 'CONSULTA', 2500, 500, 3730, '2022-12-19'),
(3, 'LUIS', 'ESPINAL', 40245458888, 'luis@gmail.com', '829-888-6666', 0, '1212121', 'Humano', 'SANTIAGO', b'0', 'CONSULTA', 2500, 2000, 5245, '2022-12-20'),
(4, 'PEDRO', 'CABA', 99999999999, 'PEDRO@G', '54545545454', 0, '4545454', 'NINGUNA', 'LLLL', b'0', 'CONSULTA', 2500, 0, 5800, '2022-12-20'),
(5, 'PEDRO', 'CABA', 99999999999, 'PEDRO@Gmail.com', '54545545454', 0, '4545454', 'NINGUNA', 'LLLL', b'0', 'CONSULTA', 2500, 0, 9286, '2022-12-20'),
(6, 'Manuel', 'Caba', 40257899555, 'manuel@gmail.com', '555-999-9999', 0, '4040404', 'Primera', 'dkdkdk', b'0', 'Cirugias', 2000, 200, 1503, '2022-12-20'),
(7, 'ISAAC', 'ESPINAL', 40211104340, 'isaac@gmai.com', '829-280-3056', 0, '111111', 'Humano', 'SAJOMA', b'0', 'Cirugias', 2000, 10, 3083, '2022-12-20'),
(8, 'PEDRO', 'CABA', 99999999999, 'PEDRO@G', '54545545454', 0, '4545454', 'NINGUNA', 'LLLL', b'0', 'Cirugias', 2000, 0, 4824, '2022-12-20'),
(9, 'PEDRO', 'CABA', 99999999999, 'PEDRO@Gmail.com', '54545545454', 0, '4545454', 'NINGUNA', 'LLLL', b'0', 'Cirugias', 2000, 0, 8305, '2022-12-20'),
(10, 'ISAAC', 'ESPINAL', 40211104340, 'isaac@gmai.com', '829-280-3056', 0, '111111', 'Humano', 'SAJOMA', b'0', 'CONSULTA', 2500, 500, 7837, '2022-12-23'),
(11, 'ISAAC', 'ESPINAL', 40211104340, 'isaac@gmail.com', '829-280-3056', 0, '111111', 'Humano', 'SAJOMA', b'0', 'CONSULTA', 2500, 1000, 3427, '2023-04-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correo`
--

CREATE TABLE `correo` (
  `id_correo` bigint(20) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `correo`
--

INSERT INTO `correo` (`id_correo`, `correo`) VALUES
(1, 'isaac@gmai.com'),
(2, 'luis@gmail.com'),
(3, 'juan@gamil.com'),
(4, 'PEDRO@G'),
(5, 'manuel@gmail.com'),
(6, 'juan@gmail.com'),
(7, 'isaac.iee@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `id_factura` bigint(20) NOT NULL,
  `precio` float NOT NULL,
  `cobertura` float NOT NULL,
  `id_proc` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`id_factura`, `precio`, `cobertura`, `id_proc`, `cantidad`) VALUES
(1, 2500, 500, '0', 0),
(2, 2500, 500, '0', 0),
(3, 2500, 500, '0', 0),
(4, 2500, 500, '', 0),
(5, 2500, 500, 'CONSULTA', 0),
(6, 2500, 500, 'CONSULTA', 0),
(7, 2500, 2000, 'CONSULTA', 0),
(8, 2500, 0, 'CONSULTA', 0),
(9, 2500, 0, 'CONSULTA', 0),
(10, 2000, 200, 'Cirugias', 1800),
(11, 2500, 500, 'CONSULTA', 1800),
(12, 0, 0, '', 500),
(13, 2500, 0, 'CONSULTA', 0),
(14, 2000, 10, 'Cirugias', 1990),
(15, 2000, 0, 'Cirugias', 2000),
(16, 2000, 0, 'Cirugias', 2000),
(17, 2500, 500, 'CONSULTA', 2500),
(18, 2500, 500, 'CONSULTA', 2000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `id_doctor` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `sexo` char(1) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `exequatur` varchar(10) NOT NULL,
  `cedula` varchar(11) NOT NULL,
  `especialidades` varchar(20) NOT NULL,
  `horario` time NOT NULL,
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`id_doctor`, `nombre`, `sexo`, `direccion`, `exequatur`, `cedula`, `especialidades`, `horario`, `status`) VALUES
(1, 'juan', 'M', 'deded', '0', '40211104340', 'dedede', '00:00:07', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor_vs_correo`
--

CREATE TABLE `doctor_vs_correo` (
  `id_doctor` bigint(20) NOT NULL,
  `id_correo` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `doctor_vs_correo`
--

INSERT INTO `doctor_vs_correo` (`id_doctor`, `id_correo`) VALUES
(40211104340, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor_vs_telefono`
--

CREATE TABLE `doctor_vs_telefono` (
  `id_doctor` bigint(20) NOT NULL,
  `num_telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `doctor_vs_telefono`
--

INSERT INTO `doctor_vs_telefono` (`id_doctor`, `num_telefono`) VALUES
(40211104340, '85358555544');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `color` varchar(255) NOT NULL,
  `textColor` varchar(255) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `title`, `descripcion`, `color`, `textColor`, `start`, `end`) VALUES
(1, 'EVENTO 1 PRUEBA', 'EVENTO 1 PRUEBA', '#FF0F0', '#FFFFFF', '2023-04-01 07:06:07', '2023-04-04 07:06:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` bigint(20) NOT NULL,
  `id_paciente` bigint(20) NOT NULL,
  `monto` float NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `tipo_pago` varchar(20) NOT NULL,
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id_factura`, `id_paciente`, `monto`, `fecha_factura`, `tipo_pago`, `status`) VALUES
(1, 40211104340, 2500, '2022-12-19 23:02:44', 'Efectivo', b'1'),
(2, 40211104340, 2500, '2022-12-19 23:04:51', 'Efectivo', b'1'),
(3, 40211104340, 2500, '2022-12-19 23:08:06', 'Efectivo', b'1'),
(4, 40211104340, 2500, '2022-12-19 23:09:37', 'Efectivo', b'1'),
(5, 40211104340, 2500, '2022-12-19 23:10:56', 'Efectivo', b'1'),
(6, 40211104340, 2500, '2022-12-19 23:12:25', 'Efectivo', b'1'),
(7, 40245458888, 2500, '2022-12-20 00:24:31', 'Efectivo', b'1'),
(8, 99999999999, 2500, '2022-12-20 00:40:36', 'Efectivo', b'1'),
(9, 99999999999, 2500, '2022-12-20 00:57:44', 'Efectivo', b'1'),
(10, 40257899555, 2000, '2022-12-20 18:19:21', 'Efectivo', b'1'),
(11, 40211104340, 2500, '2022-12-20 18:37:35', 'Efectivo', b'1'),
(12, 40211104340, 0, '2022-12-20 18:48:02', 'Efectivo', b'1'),
(13, 99999999999, 2500, '2022-12-20 18:48:45', 'Efectivo', b'1'),
(14, 40211104340, 2000, '2022-12-20 18:49:56', 'Efectivo', b'1'),
(15, 99999999999, 2000, '2022-12-20 19:55:28', 'Efectivo', b'1'),
(16, 99999999999, 2000, '2022-12-20 19:58:04', 'Efectivo', b'1'),
(17, 40211104340, 2500, '2022-12-23 21:04:35', 'Efectivo', b'1'),
(18, 40211104340, 2500, '2023-04-03 22:39:05', 'Efectivo', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_medico`
--

CREATE TABLE `historial_medico` (
  `id_historial` bigint(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `radiografia` longblob NOT NULL,
  `otros` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_vs_paciente`
--

CREATE TABLE `historial_vs_paciente` (
  `id_paciente` bigint(20) NOT NULL,
  `id_doctor` bigint(20) NOT NULL,
  `id_historial` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hora`
--

CREATE TABLE `hora` (
  `id_hora` int(11) NOT NULL,
  `nombre` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `hora`
--

INSERT INTO `hora` (`id_hora`, `nombre`) VALUES
(1, '12:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id_paciente` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `sexo` char(1) NOT NULL,
  `fecha_naci` date NOT NULL,
  `cedula` bigint(20) NOT NULL,
  `seguro` varchar(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `tipo_sangre` char(2) NOT NULL,
  `status_paciente` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`id_paciente`, `nombre`, `apellido`, `sexo`, `fecha_naci`, `cedula`, `seguro`, `direccion`, `tipo_sangre`, `status_paciente`) VALUES
(1, 'ISAAC', 'ESPINAL', 'M', '2001-03-28', 40211104340, '111111', 'SAJOMA', 'A+', b'1'),
(2, 'LUIS', 'ESPINAL', 'M', '1999-07-05', 40245458888, '1212121', 'SANTIAGO', 'A+', b'1'),
(3, 'JUAN', 'REYES', 'M', '2000-02-05', 54555555555, '', 'SANto D', 'A+', b'1'),
(4, 'PEDRO', 'CABA', 'M', '2000-02-01', 99999999999, '4545454', 'LLLL', 'A+', b'1'),
(5, 'Manuel', 'Caba', 'M', '2555-02-05', 40257899555, '4040404', 'dkdkdk', 'A-', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente_vs_aseguradora`
--

CREATE TABLE `paciente_vs_aseguradora` (
  `id_paciente` bigint(20) NOT NULL,
  `id_aseguradora` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paciente_vs_aseguradora`
--

INSERT INTO `paciente_vs_aseguradora` (`id_paciente`, `id_aseguradora`) VALUES
(40211104340, 1),
(40245458888, 1),
(54555555555, 0),
(99999999999, 4),
(40257899555, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente_vs_correo`
--

CREATE TABLE `paciente_vs_correo` (
  `id_paciente` bigint(20) NOT NULL,
  `id_correo` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paciente_vs_correo`
--

INSERT INTO `paciente_vs_correo` (`id_paciente`, `id_correo`) VALUES
(40211104340, 1),
(40245458888, 2),
(54555555555, 3),
(99999999999, 4),
(40257899555, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente_vs_telefono`
--

CREATE TABLE `paciente_vs_telefono` (
  `id_paciente` bigint(20) NOT NULL,
  `num_telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paciente_vs_telefono`
--

INSERT INTO `paciente_vs_telefono` (`id_paciente`, `num_telefono`) VALUES
(40211104340, '829-280-3056'),
(40245458888, '829-888-6666'),
(54555555555, '5555555555'),
(99999999999, '54545545454'),
(40257899555, '555-999-9999');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procedimientos`
--

CREATE TABLE `procedimientos` (
  `id_proc` int(11) NOT NULL,
  `nombre_proc` varchar(50) NOT NULL,
  `descripcion` varchar(25) NOT NULL,
  `precio_proc` float(10,0) NOT NULL,
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `procedimientos`
--

INSERT INTO `procedimientos` (`id_proc`, `nombre_proc`, `descripcion`, `precio_proc`, `status`) VALUES
(1, 'CONSULTA', 'CONSULTA GENERAL', 2500, b'1'),
(2, 'Cirugias', 'cirugia', 2000, b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `id_receta` bigint(20) NOT NULL,
  `id_doctor` bigint(20) NOT NULL,
  `id_paciente` bigint(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fecha_receta` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_medico`
--

CREATE TABLE `registro_medico` (
  `id_reg` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cedula` bigint(20) NOT NULL,
  `celular` bigint(20) NOT NULL,
  `alergia_medic` varchar(100) NOT NULL,
  `alergia_comi` varchar(100) NOT NULL,
  `resultados` longblob NOT NULL,
  `observaciones` varchar(100) NOT NULL,
  `objeto_consulta` varchar(100) NOT NULL,
  `enfermedad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `id_tel` bigint(20) NOT NULL,
  `num_telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`id_tel`, `num_telefono`) VALUES
(1, '829-280-3056'),
(2, '829-888-6666'),
(3, '5555555555'),
(4, '54545545454'),
(5, '555-999-9999'),
(6, '85358555544'),
(7, '8292803056');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo` int(11) NOT NULL,
  `nombre_tipo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `tipo_user` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `hora_entrada` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `username`, `password`, `tipo_user`, `nombre`, `apellido`, `hora_entrada`, `status`) VALUES
(1, 'isaac', 'isaac', 1, 'isaac', 'isaac', '2022-11-18 00:42:17', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL,
  `nombre_user` varchar(50) NOT NULL,
  `apellido_user` varchar(50) NOT NULL,
  `correo_user` varchar(50) NOT NULL,
  `tel_user` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `nombre_user`, `apellido_user`, `correo_user`, `tel_user`, `user`, `pass`) VALUES
(1, 'Isaac', 'Espinal', '', '', 'isaac', 'isaac'),
(2, 'Isaac', 'Espinal', 'isaac.iee@gmail.com', '8292803056', 'isaac', 'isaac'),
(3, 'Juan', 'Perez', 'juanitoperez@gmail.com', '87954621212', 'juan', 'perez'),
(4, 'Marino', 'Suarez', 'marinito@outllook.com', '87954621032', 'marino', 'suarez'),
(5, 'Hola', 'Perez', 'isaac.iee@gmail.com', '8292803056', 'isaac', 'ddd'),
(6, 'isaac', 'isaac', 'correo@gmail.com', '8292803056', 'isaac', 'eeeee');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aseguradora`
--
ALTER TABLE `aseguradora`
  ADD PRIMARY KEY (`id_aseguradora`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id_citas`);

--
-- Indices de la tabla `cobertura`
--
ALTER TABLE `cobertura`
  ADD PRIMARY KEY (`id_cob`);

--
-- Indices de la tabla `correo`
--
ALTER TABLE `correo`
  ADD PRIMARY KEY (`id_correo`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`id_factura`);

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id_doctor`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`);

--
-- Indices de la tabla `historial_medico`
--
ALTER TABLE `historial_medico`
  ADD PRIMARY KEY (`id_historial`);

--
-- Indices de la tabla `hora`
--
ALTER TABLE `hora`
  ADD PRIMARY KEY (`id_hora`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Indices de la tabla `paciente_vs_correo`
--
ALTER TABLE `paciente_vs_correo`
  ADD PRIMARY KEY (`id_correo`);

--
-- Indices de la tabla `procedimientos`
--
ALTER TABLE `procedimientos`
  ADD PRIMARY KEY (`id_proc`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`id_receta`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`id_tel`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aseguradora`
--
ALTER TABLE `aseguradora`
  MODIFY `id_aseguradora` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id_citas` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cobertura`
--
ALTER TABLE `cobertura`
  MODIFY `id_cob` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `correo`
--
ALTER TABLE `correo`
  MODIFY `id_correo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  MODIFY `id_factura` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id_doctor` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `historial_medico`
--
ALTER TABLE `historial_medico`
  MODIFY `id_historial` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hora`
--
ALTER TABLE `hora`
  MODIFY `id_hora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id_paciente` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `paciente_vs_correo`
--
ALTER TABLE `paciente_vs_correo`
  MODIFY `id_correo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `procedimientos`
--
ALTER TABLE `procedimientos`
  MODIFY `id_proc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `recetas`
--
ALTER TABLE `recetas`
  MODIFY `id_receta` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `id_tel` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `paciente_vs_correo`
--
ALTER TABLE `paciente_vs_correo`
  ADD CONSTRAINT `paciente_vs_correo_ibfk_1` FOREIGN KEY (`id_correo`) REFERENCES `correo` (`id_correo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
