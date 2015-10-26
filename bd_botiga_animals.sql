-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2015 a las 13:46:07
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bd_botiga_animals`
--
CREATE DATABASE IF NOT EXISTS `bd_botiga_animals` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_botiga_animals`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_anunci`
--

CREATE TABLE IF NOT EXISTS `tbl_anunci` (
`anu_id` int(11) NOT NULL,
  `anu_contingut` varchar(255) NOT NULL,
  `anu_nom` varchar(25) NOT NULL,
  `anu_data` date NOT NULL,
  `anu_foto` varchar(50) NOT NULL,
  `raca_id` int(11) NOT NULL,
  `mun_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `anu_tipus` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_anunci`
--

INSERT INTO `tbl_anunci` (`anu_id`, `anu_contingut`, `anu_nom`, `anu_data`, `anu_foto`, `raca_id`, `mun_id`, `contact_id`, `anu_tipus`) VALUES
(1, 'Perdut gos de raça beagle a la platja de El Prat de Llobregat (zona aeroport) l''11 d''octubre al matí. Respon al nom de Tacat.', 'Perdut beagle a El Prat', '2015-10-11', 'tacat.jpg', 14, 4, 2, 'Perdut'),
(2, 'Desaparegut gat amb collar i placa amb el nom de Ratlletes. És de tipus comú, ratllat de colors taronges. Rambla Badal, Barcelona.', 'Perdut gat', '2015-10-15', '', 17, 1, 6, 'Pedut'),
(3, 'Trobat Periquito Vermell de nom Felip', 'Trobat Ocell', '2015-08-15', '3.jpg', 21, 12, 5, 'Trobat'),
(4, 'Perdut Hàmster en Begues d ulls verds', 'Perdut Hàmster', '2015-09-12', '4.jpg', 24, 10, 6, 'Perdut'),
(5, 'Trobat Gos Husky de nom Pegui', 'Trobat Husky', '2015-10-17', '5.jpg', 11, 15, 1, 'Trobat'),
(6, 'Perdut Conill blanc a L Hospitalet del Llobregat', 'Perdut Conill', '2015-07-20', '6.jpg', 23, 5, 4, 'Perdut'),
(7, 'Trobat Gos Bòxer a Barcelona', 'Trobat Bòxer', '2015-06-19', '7.jpg', 8, 1, 7, 'Trobat'),
(8, 'Perdut Ànec de nom Lucas', 'Perdut Ànec', '2015-09-16', '8.jpg', 26, 6, 5, 'Perdut'),
(9, 'Trobat Gat Creuat a Martorell', 'Trobat Gat', '2015-06-07', '9.jpg', 13, 6, 2, 'Trobat'),
(10, 'Perdut Canari verd en Viladecans', 'Perdut Canari', '2015-07-17', '10.jpg', 20, 9, 4, 'Perdut'),
(11, 'Trobat gos Golden retriever a Barcelona de nom Lala', 'Trobat Golden retriever', '2015-05-06', '11.jpg', 10, 1, 3, 'Trobat'),
(12, 'Perdut Gat Persa a Sitges ', 'Perdut Gat Persa', '2015-06-15', '12.jpg', 15, 15, 3, 'Perdut'),
(13, 'Trobat Periquito Blau de nom Superman a Castelldefels', 'Trobat Ocell a Castelldef', '2015-04-24', '13.jpg', 21, 8, 4, 'Trobat'),
(14, 'Perdut Hàmster blanc en Sant Feliu de Llobregat', 'Perdut Hàmster blanc', '2015-07-14', '14.jpg', 24, 2, 4, 'Perdut'),
(15, 'Trobat Fura gris de nom Polpet ', 'Trobat Fura', '2014-10-11', '15.jpg', 22, 9, 2, 'Trobat'),
(16, 'Perdut Teixó a Rubí', 'Perdut Teixó', '2015-03-11', '16.jpg', 25, 13, 5, 'Perdut'),
(17, 'Trobat Periquito taronja a Barcelona', 'Trobat Ocell a BCN', '2014-07-21', '17.jpg', 21, 1, 7, 'Trobat'),
(18, 'Perdut Gat Persa Sant Joan d Espí', 'Perdut Gat a Sant Joan d ', '2014-04-15', '18.jpg', 15, 3, 6, 'Perdut'),
(19, 'Trobat Gos Boxer a Sitges', 'Trobat Ocell', '2015-08-15', '19.jpg', 8, 15, 3, 'Trobat'),
(20, 'Perdut Ànec negre en Begues', 'Perdut Ànec en Begues', '2015-02-03', '20.jpg', 26, 10, 6, 'Perdut'),
(21, 'Trobat Beagle de nom Peput a Martorell', 'Trobat Beagle a Martorell', '2015-08-14', '21.jpg', 14, 6, 2, 'Trobat'),
(22, 'Perdut Gat Comu blanc en el Prat del Llobregat', 'Perdut Gat al Prat de Llo', '2015-06-12', '22.jpg', 17, 4, 3, 'Perdut'),
(23, 'Trobat Conill gris de nom Epi a Viladecans', 'Trobat Conill a Viladecan', '2015-08-15', '23.jpg', 23, 9, 5, 'Trobat'),
(24, 'Trobat Fura blanca a Barcelona ', 'Trobat Fura a BCN', '2015-11-11', '24.jpg', 22, 1, 2, 'Trobat'),
(25, 'Perdut Gat Abisini en Begues', 'Perdut Gat en Begues', '2015-06-13', '25.jpg', 18, 10, 7, 'Perdut'),
(26, 'Trobat Hàmster amb taques marrons en Barcelona', 'Trobat Hàmster a BCN', '2013-09-15', '26.jpg', 24, 1, 6, 'Trobat'),
(27, 'Trobat Gat Bobtail en Viladecans', 'Trobat Gat', '2015-08-15', '27.jpg', 19, 9, 5, 'Trobat'),
(28, 'Trobat Beagle  a L Hospitalet de Llobregat de nom Sopli', 'Trobat Gos a L Hospitalet', '2015-08-14', '28.jpg', 14, 5, 3, 'Trobat'),
(29, 'Trobat Canari Vermell a Martorell', 'Trobat Ocell', '2015-08-15', '29.jpg', 20, 6, 7, 'Trobat'),
(30, 'Perdut Gos Pastor Alemany en Begues', 'Perdut Pastor Alemany', '2015-10-18', '30.jpg', 9, 10, 4, 'Perdut'),
(31, 'Trobat Gos Border Collie de nom Shipi', 'Trobat Gos a Sant Sadurni', '2015-08-15', '31.jpg', 12, 12, 5, 'Trobat'),
(32, 'Perdut Periquito de colorins de nom Plapu a Castelldefels', 'Perdut Periquito a Castel', '2015-09-12', '32.jpg', 21, 8, 6, 'Perdut');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_contacte`
--

CREATE TABLE IF NOT EXISTS `tbl_contacte` (
`contact_id` int(11) NOT NULL,
  `contact_nom` varchar(25) NOT NULL,
  `contact_telf` varchar(9) NOT NULL,
  `contact_adre` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_contacte`
--

INSERT INTO `tbl_contacte` (`contact_id`, `contact_nom`, `contact_telf`, `contact_adre`) VALUES
(1, 'Carles Martín', '934534236', ''),
(2, 'Antonio Gámez', '667542343', 'Carrer del Mig, 76 3r 1a'),
(3, 'Carlos Martínez', '654583454', ''),
(4, 'Isabel Vázquez', '698722284', ''),
(5, 'Pedro Santiesteban', '656989931', 'Avinguda Carrilet, 54 3r'),
(6, 'Sònia Gómez', '688341009', 'Gran Via de les Corts Catalanes, 12 Esc. A 3r 2a'),
(7, 'Patricia Martín', '932124654', ''),
(10, 'Víctor', '987654321', 'C/Francia 70'),
(11, 'Sergio Ayala', '984657354', 'Av Europa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_municipi`
--

CREATE TABLE IF NOT EXISTS `tbl_municipi` (
`municipi_id` int(11) NOT NULL,
  `municipi_nom` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_municipi`
--

INSERT INTO `tbl_municipi` (`municipi_id`, `municipi_nom`) VALUES
(1, 'Barcelona'),
(2, 'Sant Feliu de Llobregat'),
(3, 'Sant Joan d''Espí'),
(4, 'El Prat de Llobregat'),
(5, 'L''Hospitalet de Llobregat'),
(6, 'Martorell'),
(7, 'Cornellà de Llobregat'),
(8, 'Castelldefels'),
(9, 'Viladecans'),
(10, 'Begues'),
(11, 'Castellbisbal'),
(12, 'Sant Sadurní d''Anoia'),
(13, 'Rubí'),
(14, 'Sant Cugat del Vallès'),
(15, 'Sitges');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_raca`
--

CREATE TABLE IF NOT EXISTS `tbl_raca` (
`raca_id` int(11) NOT NULL,
  `raca_nom` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tipus_anim_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_raca`
--

INSERT INTO `tbl_raca` (`raca_id`, `raca_nom`, `tipus_anim_id`) VALUES
(8, 'Bòxer', 1),
(9, 'Pastor alemany', 1),
(10, 'Golden retriever', 1),
(11, 'Husky', 1),
(12, 'Border collie', 1),
(13, 'Creuat', 1),
(14, 'Beagle', 1),
(15, 'Persa', 2),
(16, 'Siamés', 2),
(17, 'Comú', 2),
(18, 'Abisini', 2),
(19, 'Bobtail', 2),
(20, 'Canari', 3),
(21, 'Periquito', 3),
(22, 'Fura', 4),
(23, 'Conill', 4),
(24, 'Hàmster', 4),
(25, 'Teixó', 4),
(26, 'Ànec', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipus_animal`
--

CREATE TABLE IF NOT EXISTS `tbl_tipus_animal` (
`tipus_anim_id` int(11) NOT NULL,
  `tipus_anim_nom` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tipus_animal`
--

INSERT INTO `tbl_tipus_animal` (`tipus_anim_id`, `tipus_anim_nom`) VALUES
(1, 'Gos'),
(2, 'Gat'),
(3, 'Ocell'),
(4, 'Altres');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_anunci`
--
ALTER TABLE `tbl_anunci`
 ADD PRIMARY KEY (`anu_id`), ADD KEY `FK_ANU_RACA` (`raca_id`), ADD KEY `FK_MUN_ANU` (`mun_id`), ADD KEY `FK_CONTACT_ANU` (`contact_id`);

--
-- Indices de la tabla `tbl_contacte`
--
ALTER TABLE `tbl_contacte`
 ADD PRIMARY KEY (`contact_id`);

--
-- Indices de la tabla `tbl_municipi`
--
ALTER TABLE `tbl_municipi`
 ADD PRIMARY KEY (`municipi_id`);

--
-- Indices de la tabla `tbl_raca`
--
ALTER TABLE `tbl_raca`
 ADD PRIMARY KEY (`raca_id`), ADD KEY `FK_RACA_TIPUS_A` (`tipus_anim_id`);

--
-- Indices de la tabla `tbl_tipus_animal`
--
ALTER TABLE `tbl_tipus_animal`
 ADD PRIMARY KEY (`tipus_anim_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_anunci`
--
ALTER TABLE `tbl_anunci`
MODIFY `anu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `tbl_contacte`
--
ALTER TABLE `tbl_contacte`
MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `tbl_municipi`
--
ALTER TABLE `tbl_municipi`
MODIFY `municipi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `tbl_raca`
--
ALTER TABLE `tbl_raca`
MODIFY `raca_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `tbl_tipus_animal`
--
ALTER TABLE `tbl_tipus_animal`
MODIFY `tipus_anim_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_anunci`
--
ALTER TABLE `tbl_anunci`
ADD CONSTRAINT `RELACIO_ANU_CONTACT` FOREIGN KEY (`contact_id`) REFERENCES `tbl_contacte` (`contact_id`),
ADD CONSTRAINT `RELACIO_ANU_MUN` FOREIGN KEY (`mun_id`) REFERENCES `tbl_municipi` (`municipi_id`),
ADD CONSTRAINT `RELACIO_ANU_RACA` FOREIGN KEY (`raca_id`) REFERENCES `tbl_raca` (`raca_id`);

--
-- Filtros para la tabla `tbl_raca`
--
ALTER TABLE `tbl_raca`
ADD CONSTRAINT `tbl_raca_ibfk_1` FOREIGN KEY (`tipus_anim_id`) REFERENCES `tbl_tipus_animal` (`tipus_anim_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
