-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2023 a las 23:02:44
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `backendndf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla `estudios`
--

CREATE TABLE `estudios` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `lugar` varchar(255) NOT NULL,
  `anio` varchar(5) NOT NULL,
  `Persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Datos `estudios`
--

INSERT INTO `estudios` (`id`, `titulo`, `lugar`, `anio`, `Persona_id`) VALUES
(1, 'Licenciada en Economía', 'UNIVERSIDAD DE BUENOS AIRES', '1989', 1),
(2, '#YoProgramo 4ta edición', 'ARGENTINA PROGRAMA', '2023', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla `experiencias`
--

CREATE TABLE `experiencias` (
  `id` int(11) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `puesto` varchar(255) NOT NULL,
  `inicio` varchar(255) NOT NULL,
  `fin` varchar(255) NOT NULL,
  `Persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Datos `experiencias`
--

INSERT INTO `experiencias` (`id`, `empresa`, `puesto`, `inicio`, `fin`, `Persona_id`) VALUES
(1, 'Secretaría de Agricultura, Ganadería y Pesca', 'Analista Económico Senior', '1991', '2023', 1),
(2, 'Banco de la Nación Argentina (BNA)', 'Analista Económico Jr', '1982', '1991', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `titulo1` varchar(255) NOT NULL,
  `titulo2` varchar(255) NOT NULL,
  `sobre_mi` varchar(255) NOT NULL,
  `cvpdf` varchar(255) NOT NULL,
  `textofooter` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Datos `persona`
--

INSERT INTO `persona` (`id`, `banner`, `profile_image`, `nombre`, `apellido`, `titulo1`, `titulo2`, `sobre_mi`, `cvpdf`, `textofooter`, `email`, `password`) VALUES
(1, '../../../../assets/img/banner3.jpg', '../../../../assets/img/NDF.jpg', 'Norma D.', 'Fernandez', 'Licenciada en Economía', 'Desarrolladora Full Stack Jr', 'Me especializo en ciencia de datos. Estoy cursando la segunda etapa del programa Argentina Programa.', '../../../../assets/img/CV-NDF.pdf', 'Copyright, Norma D. Fernandez 2023 All Rights Reserved', 'admin@gmail.com', 'admin2023');

-- --------------------------------------------------------

--
-- Estructura de tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `logo_proyecto` varchar(255) NOT NULL,
  `url_proyecto` varchar(255) NOT NULL,
  `titulo_proyecto` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Datos `proyectos`
--

INSERT INTO `proyectos` (`id`, `logo_proyecto`, `url_proyecto`, `titulo_proyecto`, `descripcion`, `persona_id`) VALUES
(1, '../../../../assets/img/proyecto1.jpg', 'https://www.magyp.gob.ar/sitio/areas/gestion/carne/', 'Información de Faena', 'Informes realizados a partir de bases de datos SQL', 1),
(2, '../../../../assets/img/proyecto2.jpg', 'https://siocarnes.magyp.gob.ar/', 'SIO Carnes', 'Informes realizados a partir de bases de datos SQL', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla `redes`
--

CREATE TABLE `redes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ico_font` varchar(255) NOT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Datos `redes`
--

INSERT INTO `redes` (`id`, `nombre`, `url`, `ico_font`, `persona_id`) VALUES
(1, 'Github', 'https://github.com/ND-magyp', 'fa-brands fa-github', 1),
(2, 'Instagram', 'https://www.instagram.com/agriculturaar/?hl=es', 'fa-brands fa-instagram', 1),
(3, 'Twitter', 'https://twitter.com/AgriculturaAR?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor', 'fa-brands fa-twitter', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `nombre` varchar(55) NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `color` varchar(55) NOT NULL,
  `ico_font` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Datos `skills`
--

INSERT INTO `skills` (`id`, `nombre`, `porcentaje`, `color`, `ico_font`, `titulo`, `persona_id`) VALUES
(1, 'HTML', 80, 'bg-info', 'fa fa-html5', 'Full Stack', 1),
(2, 'CSS', 50, 'bg-info', 'fab fa-css3-alt', 'Full Stack', 1),
(3, 'JavaScript', 40, 'bg-info', 'fab fa-js', 'Full Stack', 1),
(4, 'Phyton', 85, 'bg-info', 'fab fa-python', 'Full Stack', 1),
(5, 'SQL', 90, 'bg-warning', 'fa-solid fa-database', 'Bases de Datos', 1),
(6, 'ACCESS', 50, 'bg-warning', 'fa-solid fa-database', 'Bases de Datos', 1),
(7, 'Inglés', 95, 'bg-success', 'fa fa-comment', 'Idiomas', 1),
(8, 'Francés', 75, 'bg-success', 'fa fa-comment', 'Idiomas', 1),
(9, 'Portugués', 55, 'bg-success', 'fa fa-comment', 'Idiomas', 1);


-- Indices de la tabla `estudios`

ALTER TABLE `estudios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_estudios_idPersona` (`Persona_id`);


-- Indices de la tabla `experiencias`

ALTER TABLE `experiencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_experiencias_idPersona` (`Persona_id`);


-- Indices de la tabla `persona`

ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);


-- Indices de la tabla `proyectos`

ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_proyectos_idPersona` (`persona_id`);


-- Indices de la tabla `redes`

ALTER TABLE `redes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_redes_idPersona` (`persona_id`);


-- Indices de la tabla `skills`

ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_skills_idPersona` (`persona_id`);



-- AUTO_INCREMENT de la tabla `estudios`

ALTER TABLE `estudios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


-- AUTO_INCREMENT de la tabla `experiencias`

ALTER TABLE `experiencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


-- AUTO_INCREMENT de la tabla `persona`

ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


-- AUTO_INCREMENT de la tabla `proyectos`

ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


-- AUTO_INCREMENT de la tabla `redes`

ALTER TABLE `redes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


-- AUTO_INCREMENT de la tabla `skills`

ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
