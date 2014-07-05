-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2014 a las 16:18:09
-- Versión del servidor: 5.6.14
-- Versión de PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `geology`
--
CREATE DATABASE IF NOT EXISTS `geology` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `geology`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gts_age`
--

DROP TABLE IF EXISTS `gts_age`;
CREATE TABLE IF NOT EXISTS `gts_age` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age_code` varchar(10) NOT NULL,
  `gts_epoch_id` int(11) NOT NULL,
  `age_name_en` varchar(100) NOT NULL,
  `age_name_es` varchar(100) NOT NULL,
  `age_period` varchar(100) DEFAULT NULL COMMENT 'In millions of years ago',
  `age_color` varchar(11) NOT NULL COMMENT 'RGB',
  PRIMARY KEY (`id`),
  UNIQUE KEY `age_code` (`age_code`),
  UNIQUE KEY `age_name_en` (`age_name_en`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=133 ;

--
-- Volcado de datos para la tabla `gts_age`
--

INSERT INTO `gts_age` (`id`, `age_code`, `gts_epoch_id`, `age_name_en`, `age_name_es`, `age_period`, `age_color`) VALUES
(35, 'q4', 2, 'Upper', 'Superior', '0.126–0.0117', '255,242,211'),
(36, 'q3', 2, 'Middle', 'Medio', '0.781–0.126', '255,242,199'),
(37, 'q2', 2, 'Calabrian', 'Calabriense', '1.806–0.781', '255,242,186'),
(38, 'q1', 2, 'Gelasian', 'Gelasiense', '2.588–1.806', '255,237,179'),
(39, 'n8', 3, 'Piacenzian', 'Piacenziense', '3.600–2.588', '255,255,191'),
(40, 'n7', 3, 'Zanclean', 'Zancliense', '5.333–3.600', '255,255,179'),
(41, 'n6', 4, 'Messinian', 'Messiniense', '7.246–5.333', '255,255,115'),
(42, 'n5', 4, 'Tortonian', 'Tortoniense', '11.62–7.246', '255,255,102'),
(43, 'n4', 4, 'Serravallian', 'Serravalliense', '13.82–11.62', '255,255,89'),
(44, 'n3', 4, 'Langhian', 'Langhiense', '15.97–13.82', '255,255,77'),
(45, 'n2', 4, 'Burdigalian', 'Burdigaliense', '20.44–15.97', '255,255,65'),
(46, 'n1', 4, 'Aquitanian', 'Aquitaniense', '23.03–20.44', '255,255,51'),
(47, 'e9', 5, 'Chattian', 'Chattiense', '28.1–23.03', '254,230,170'),
(48, 'e8', 5, 'Rupelian', 'Rupeliense', '33.9–28.1', '254,217,154'),
(49, 'e7', 6, 'Priabonian', 'Priaboniense', '38.0–33.9', '253,205,161'),
(50, 'e6', 6, 'Bartonian', 'Bartoniense', '41.3–38.0', '253,192,145'),
(51, 'e5', 6, 'Lutetian', 'Luteciense', '47.8–41.3', '252,180,130'),
(52, 'e4', 6, 'Ypresian', 'Ypresiense', '56.0–47.8', '252,167,115'),
(53, 'e3', 7, 'Thanetian', 'Thanetiense', '59.2–56.0', '253,191,111'),
(54, 'e2', 7, 'Selandian', 'Selandiense', '61.6–59.2', '254,191,101'),
(55, 'e1', 7, 'Danian', 'Daniense', '66.0–61.6', '253,180,98'),
(56, 'k6', 8, 'Maastrichtian', 'Maastrichtiense', '72.1 ±0.2–66.0', '242,250,140'),
(57, 'k5', 8, 'Campanian', 'Campaniense', '83.6 ±0.2–72.1 ±0.2', '230,244,127'),
(58, 'k4', 8, 'Santonian', 'Santoniense', '86.3 ±0.5–83.6 ±0.2', '217,239,116'),
(59, 'k3', 8, 'Coniacian', 'Coniaciense', '89.8 ±0.3–86.3 ±0.5', '204,233,104'),
(60, 'k2', 8, 'Turonian', 'Turoniense', '93.9–89.8 ±0.3', '191,227,93'),
(61, 'k1', 8, 'Cenomanian', 'Cenomaniense', '100.5–93.9', '179,222,83'),
(62, 'b6', 9, 'Albian', 'Albiense', '~ 113.0–100.5', '204,234,151'),
(63, 'b5', 9, 'Aptian', 'Aptiense', '~ 125.0–~ 113.0', '191,228,138'),
(64, 'b4', 9, 'Barremian', 'Barremiense', '~ 129.4–~ 125.0', '179,223,127'),
(65, 'b3', 9, 'Hauterivian', 'Hauteriviense', '~ 132.9–~ 129.4', '166,217,117'),
(66, 'b2', 9, 'Valanginian', 'Valanginiense', '~ 139.8–~ 132.9', '153,211,106'),
(67, 'b1', 9, 'Berriasian', 'Berriasiense', '~ 145.0–~ 139.8', '140,205,96'),
(68, 'j7', 10, 'Tithonian', 'Tithoniense', '152.1 ±0.9–~ 145.0', '217,241,247'),
(69, 'j6', 10, 'Kimmeridgian', 'Kimmeridgiense', '157.3 ±1.0–152.1 ±0.9', '204,236,244'),
(70, 'j5', 10, 'Oxfordian', 'Oxfordiense', '163.5 ±1.0–157.3 ±1.0', '191,231,241'),
(71, 'j4', 11, 'Callovian', 'Calloviense', '166.1 ±1.2–163.5 ±1.0', '191,231,229'),
(72, 'j3', 11, 'Bathonian', 'Bathoniense', '168.3 ±1.3–166.1 ±1.2', '179,226,227'),
(73, 'j2', 11, 'Bajocian', 'Bajociense', '170.3 ±1.4–168.3 ±1.3', '166,221,224'),
(74, 'j1', 11, 'Aalenian', 'Aaleniense', '174.1 ±1.0–170.3 ±1.4', '154,217,221'),
(75, 'l4', 12, 'Toarcian', 'Toarciense', '182.7 ±0.7–174.1 ±1.0', '153,206,227'),
(76, 'l3', 12, 'Pliensbachian', 'Pliensbachiense', '190.8 ±1.0–182.7 ±0.7', '128,197,221'),
(77, 'l2', 12, 'Sinemurian', 'Sinemuriense', '199.3 ±0.3–190.8 ±1.0', '103,188,216'),
(78, 'l1', 12, 'Hettangian', 'Hettangiense', '201.3 ±0.2–199.3 ±0.3', '78,179,211'),
(79, 't7', 13, 'Rhaetian', 'Rhaetiense', '~208.5–201.3 ±0.2', '227,185,219'),
(80, 't6', 13, 'Norian', 'Noriense', '~227–~208.5', '214,170,211'),
(81, 't5', 13, 'Carnian', 'Carniense', '~237–~227', '201,155,203'),
(82, 't4', 14, 'Ladinian', 'Ladiniense', '~242–~237', '201,131,191'),
(83, 't3', 14, 'Anisian', 'Anisiense', '247.2–~242', '188,117,183'),
(84, 't2', 15, 'Olenekian', 'Olenekiense', '251.2–247.2', '176,81,165'),
(85, 't1', 15, 'Induan', 'Induan', '252.17 ±0.06–251.2', '164,70,159'),
(86, 'p9', 16, 'Changhsingian', 'Changhsingiense', '254.14 ±0.07–252.17 ±0.06', '252,192,178'),
(87, 'p8', 16, 'Wuchiapingian', 'Wuchiapingiense', '259.8 ±0.4–254.14 ±0.07', '252,180,162'),
(88, 'p7', 17, 'Capitanian', 'Capitaniense', '265.1 ±0.4–259.8 ±0.4', '251,154,133'),
(89, 'p6', 17, 'Wordian', 'Wordiense', '268.8 ±0.5–265.1 ±0.4', '251,141,118'),
(90, 'p5', 17, 'Roadian', 'Roadiense', '272.3 ±0.5–268.8 ±0.5', '251,128,105'),
(91, 'p4', 18, 'Kungurian', 'Kunguriense', '283.5 ±0.6–272.3 ±0.5', '227,135,118'),
(92, 'p3', 18, 'Artinskian', 'Artinskiense', '290.1 ±0.26–283.5 ±0.6', '227,123,104'),
(93, 'p2', 18, 'Sakmarian', 'Sakmariense', '295.0 ±0.18–290.1 ±0.26', '227,111,92'),
(94, 'p1', 18, 'Asselian', 'Asseliense', '298.9 ±0.15–295.0 ±0.18', '227,99,80'),
(95, 'c7', 19, 'Gzhelian', 'Gzheliense', '303.7 ±0.1–290.1 ±0.26', '204,212,199'),
(96, 'c6', 19, 'Kasimovian', 'Kasimoviense', '307.0 ±0.1–303.7 ±0.1', '191,208,197'),
(97, 'c5', 19, 'Moscovian', 'Moscoviense', '315.2 ±0.2–307.0 ±0.1', '166,199,185'),
(98, 'c4', 19, 'Bashkirian', 'Bashkiriense', '323.2 ±0.4–315.2 ±0.2', '153,194,181'),
(99, 'c3', 20, 'Serpukhovian', 'Serpukhoviense', '330.9 ±0.2–323.2 ±0.4', '191,194,107'),
(100, 'c2', 20, 'Visean', 'Visean', '346.7 ±0.4–330.9 ±0.2', '166,185,108'),
(101, 'c1', 20, 'Tournaisian', 'Tournaisiense', '358.9 ±0.4–346.7 ±0.4', '140,176,108'),
(102, 'd7', 21, 'Famennian', 'Famenniense', '372.2 ±1.6–358.9 ±0.4', '242,237,197'),
(103, 'd6', 21, 'Frasnian', 'Frasniense', '382.7 ±1.6–372.2 ±1.6', '242,237,173'),
(104, 'd5', 22, 'Givetian', 'Givetiense', '387.7 ±0.8–382.7 ±1.6', '241,225,133'),
(105, 'd4', 22, 'Eifelian', 'Eifeliense', '393.3 ±1.2–387.7 ±0.8', '241,213,118'),
(106, 'd3', 23, 'Emsian', 'Emsiense', '407.6 ±2.6–393.3 ±1.2', '229,208,117'),
(107, 'd2', 23, 'Pragian', 'Pragiense', '410.8 ±2.8–407.6 ±2.6', '229,196,104'),
(108, 'd1', 23, 'Lochkovian', 'Lochkoviense', '419.2 ±3.2–410.8 ±2.8', '229,183,90'),
(109, 's7', 25, 'Ludfordian', 'Ludfordiense', '425.6 ±0.9–423.0 ±2.3', '217,240,223'),
(110, 's6', 25, 'Gorstian', 'Gorstiense', '427.4 ±0.5–425.6 ±0.9', '204,236,221'),
(111, 's5', 26, 'Homerian', 'Homeriense', '430.5 ±0.7–427.4 ±0.5', '204,235,209'),
(112, 's4', 26, 'Sheinwoodian', 'Sheinwoodiense', '433.4 ±0.8–430.5 ±0.7', '191,230,195'),
(113, 's3', 27, 'Telychian', 'Telychiense', '438.5 ±1.1–433.4 ±0.8', '191,230,207'),
(114, 's2', 27, 'Aeronian', 'Aeroniense', '440.8 ±1.2–438.5 ±1.1', '179,225,194'),
(115, 's1', 27, 'Rhuddanian', 'Rhuddaniense', '443.4 ±1.5–440.8 ±1.2', '166,220,181'),
(116, 'o7', 28, 'Hirnantian', 'Hirnantiense', '445.2 ±1.4–443.4 ±1.5', '166,219,171'),
(117, 'o6', 28, 'Katian', 'Katiense', '453.0 ±0.7–445.2 ±1.4', '153,214,159'),
(118, 'o5', 28, 'Sandbian', 'Sandbiense', '458.4 ±0.9–453.0 ±0.7', '140,208,148'),
(119, 'o4', 29, 'Darriwilian', 'Darriwiliense', '467.3 ±1.1–458.4 ±0.9', '116,198,156'),
(120, 'o3', 29, 'Dapingian', 'Dapingiense', '470.0 ±1.4–467.3 ±1.1', '102,192,146'),
(121, 'o2', 30, 'Floian', 'Floiense', '477.7 ±1.4–470.0 ±1.4', '65,176,135'),
(122, 'o1', 30, 'Tremadocian', 'Tremadociense', '485.4 ±1.9–477.7 ±1.4', '51,169,126'),
(123, 'x10', 34, 'State 10', 'Piso 10', '~ 489.5–485.4 ±1.9', '230,245,201'),
(124, 'x9', 34, 'Jiangshanian', 'Jiensegshaniense', '~ 494–~ 489.5', '217,240,187'),
(125, 'x8', 34, 'Paibian', 'Paibiense', '~ 497–~ 494', '204,235,174'),
(126, 'x7', 33, 'Guzhangian', 'Guzhangiense', '~ 500.5–~ 497', '204,223,170'),
(127, 'x6', 33, 'Drumian', 'Drumiense', '~ 504.5–~ 500.5', '191,217,157'),
(128, 'x5', 33, 'Stage 5', 'Piso 5', '~ 509–~ 504.5', '179,212,146'),
(129, 'x4', 32, 'Stage 4', 'Piso 4', '~ 514–~ 509', '179,202,142'),
(130, 'x3', 32, 'Stage 3', 'Piso 3', '~ 521–~ 514', '166,197,131'),
(131, 'x2', 31, 'Stage 2', 'Piso 2', '~ 529–~ 521', '166,186,128'),
(132, 'x1', 31, 'Fortunian', 'Fortuniense', '541.0 ±1.0–~ 529', '153,181,117');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gts_eon`
--

DROP TABLE IF EXISTS `gts_eon`;
CREATE TABLE IF NOT EXISTS `gts_eon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eon_code` varchar(10) NOT NULL,
  `gts_supereon_id` int(11) DEFAULT NULL,
  `eon_name_en` varchar(100) NOT NULL,
  `eon_name_es` varchar(100) NOT NULL,
  `eon_period` varchar(100) DEFAULT NULL COMMENT 'In millions of years ago',
  `eon_color` varchar(11) NOT NULL COMMENT 'RGB',
  PRIMARY KEY (`id`),
  UNIQUE KEY `eon_code` (`eon_code`),
  UNIQUE KEY `eon_name_en` (`eon_name_en`),
  UNIQUE KEY `eon_name_es` (`eon_name_es`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `gts_eon`
--

INSERT INTO `gts_eon` (`id`, `eon_code`, `gts_supereon_id`, `eon_name_en`, `eon_name_es`, `eon_period`, `eon_color`) VALUES
(1, 'HA', 1, 'Hadean', 'Hádico', '~4600–4000', '174,2,126'),
(2, 'AR', 1, 'Archean', 'Arcaico', '4000–2500', '240,4,127'),
(3, 'PR', 1, 'Proterozoic', 'Proterozoico', '2500–~541.0 ±1.0', '247,53,99'),
(4, 'PH', NULL, 'Phanerozoic', 'Fanerozoico', '~541.0 ±1.0–', '154,217,221');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gts_epoch`
--

DROP TABLE IF EXISTS `gts_epoch`;
CREATE TABLE IF NOT EXISTS `gts_epoch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epoch_code` varchar(10) NOT NULL,
  `gts_period_id` int(11) NOT NULL,
  `epoch_name_en` varchar(100) NOT NULL,
  `epoch_name_es` varchar(100) NOT NULL,
  `epoch_period` varchar(100) DEFAULT NULL COMMENT 'In millions of years ago',
  `epoch_color` varchar(11) NOT NULL COMMENT 'RGB',
  PRIMARY KEY (`id`),
  UNIQUE KEY `epoch_code` (`epoch_code`,`epoch_name_en`,`epoch_name_es`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Volcado de datos para la tabla `gts_epoch`
--

INSERT INTO `gts_epoch` (`id`, `epoch_code`, `gts_period_id`, `epoch_name_en`, `epoch_name_es`, `epoch_period`, `epoch_color`) VALUES
(1, 'Q2', 22, 'Holocene', 'Holceno', '0.0117–', '254,242,236'),
(2, 'Q1', 22, 'Pleistocene', 'Pleistoceno', '2.588–0.0117', '255,242,174'),
(3, 'N2', 21, 'Pliocene', 'Plioceno', '5.333–2.588', '255,255,153'),
(4, 'N1', 21, 'Miocene', 'Mioceno', '23.03–5.333', '255,255,0'),
(5, 'E3', 20, 'Oligocene', 'Oligoceno', '33.9–23.03', '253,192,122'),
(6, 'E2', 20, 'Eocene', 'Eoceno', '56.0–33.9', '253,180,108'),
(7, 'E1', 20, 'Paleocene', 'Paleoceno', '66.0–56.0', '253,167,95'),
(8, 'K2', 19, 'Upper', 'Superior', '100.5–66.0', '166,216,74'),
(9, 'K1', 19, 'Lower', 'Inferior', '~145.0–100.5', '140,205,87'),
(10, 'J3', 18, 'Upper', 'Superior', '163.5 ±1.0–~145.0', '179,227,238'),
(11, 'J2', 18, 'Middle', 'Medio', '174.1 ±1.0–163.5 ±1.0', '128,207,216'),
(12, 'J1', 18, 'Lower', 'Inferior', '201.3 ±0.2–174.1 ±1.0', '66,174,208'),
(13, 'T3', 17, 'Upper', 'Superior', '~237–201.3 ±0.2', '189,140,195'),
(14, 'T2', 17, 'Middle', 'Medio', '247.2–~237', '177,104,177'),
(15, 'T1', 17, 'Lower', 'Inferior', '252.17 ±0.06–247.2', '152,57,153'),
(16, 'P3', 16, 'Lopingian', 'Lopingiense', '259.8 ±0.4–252.17 ±0.06', '251,167,148'),
(17, 'P2', 16, 'Guadalupian', 'Guadalupiense', '272.3 ±0.5–259.8 ±0.4', '251,116,92'),
(18, 'P1', 16, 'Cisuralian', 'Cisuraliense', '298.9 ±0.15–272.3 ±0.5', '239,88,69'),
(19, 'C2', 15, 'Pennsylvanian', 'Pensilvánico', '323.2 ±0.4–298.9 ±0.15', '153,194,181'),
(20, 'C1', 15, 'Mississippian', 'Misisípico', '358.9 ±0.4–323.2 ±0.4', '103,143,102'),
(21, 'D3', 14, 'Upper', 'Superior', '382.7 ±1.6–358.9 ± 0.4', '241,225,157'),
(22, 'D2', 14, 'Middle', 'Medio', '393.3 ±1.2–382.7 ±1.6', '241,200,104'),
(23, 'D1', 14, 'Lower', 'Inferior', '419.2 ±3.2–393.3 ±1.2', '229,172,77'),
(24, 'S4', 13, 'Pridoli', 'Prídoli', '423.0 ±2.3–419.2 ±3.2', '230,245,225'),
(25, 'S3', 13, 'Ludlow', 'Ludlow', '427.4 ±0.5–423.0 ±2.3', '191,230,207'),
(26, 'S2', 13, 'Wenlock', 'Wenlock', '433.4 ±0.8–427.4 ±0.5', '179,225,194'),
(27, 'S1', 13, 'Llandovery', 'Llandovery', '443.4 ±1.5–433.4 ±0.8', '153,215,179'),
(28, 'O3', 12, 'Upper', 'Superior', '458.4 ±0.9–443.4 ±1.5', '127,202,147'),
(29, 'O2', 12, 'Middle', 'Medio', '470.0 ±1.4–458.4 ±0.9', '77,180,126'),
(30, 'O1', 12, 'Lower', 'Inferior', '485.4 ±1.9–470.0 ±1.4', '26,157,111'),
(31, 'ɛ1', 11, 'Terreneuvian', 'Terreneuviense', '541.0 ±1.0–~52', '140,176,108'),
(32, 'ɛ2', 11, 'Series 2', 'Serie 2', '~52–~509', '153,192,120'),
(33, 'ɛ3', 11, 'Series 3', 'Serie 3', '~509–~497', '166,207,134'),
(34, 'ɛ4', 11, 'Furongian', 'Furongiense', '~497–485.4 ±1.9', '179,224,149');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gts_era`
--

DROP TABLE IF EXISTS `gts_era`;
CREATE TABLE IF NOT EXISTS `gts_era` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `era_code` varchar(10) NOT NULL,
  `gts_eon_id` int(11) NOT NULL,
  `era_name_en` varchar(100) NOT NULL,
  `era_name_es` varchar(100) NOT NULL,
  `era_period` varchar(100) DEFAULT NULL COMMENT 'In millions of years ago',
  `era_color` varchar(11) NOT NULL COMMENT 'RGB',
  PRIMARY KEY (`id`),
  UNIQUE KEY `era_code` (`era_code`,`era_name_en`,`era_name_es`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `gts_era`
--

INSERT INTO `gts_era` (`id`, `era_code`, `gts_eon_id`, `era_name_en`, `era_name_es`, `era_period`, `era_color`) VALUES
(1, 'EA', 2, 'Eoarchean', 'Eoarcaico', '4000–3600', '218,3,127'),
(2, 'PA', 2, 'Paleoarchean', 'Paleoarcaico', '3600–3200', '244,68,159'),
(3, 'MA', 2, 'Mesoarchean', 'Mesoarcaico', '3200–2800', '247,104,169'),
(4, 'NA', 2, 'Neoarchean', 'Neoarcaico', '2800–2500', '249,155,193'),
(5, 'PP', 3, 'Paleoproterozoic', 'Paleoproterozoico', '2500–1600', '247,67,112'),
(6, 'MP', 3, 'Mesoproterozoic', 'Mesoproterozoico', '1600–1000', '253,180,98'),
(7, 'NP', 3, 'Neoproterozoic', 'Neoproterozoico', '1000–~541.0 ±1.0', '254,179,66'),
(8, 'PH', 4, 'Paleozoic', 'Paleozoico', '541.0 ±1.0–252.17 ±0.06', '153,192,141'),
(9, 'MZ', 4, 'Mesozoic', 'Mesozoico', '252.17 ±0.06–66.0', '103,197,202'),
(10, 'CZ', 4, 'Cenozoic', 'Cenozoico', '66.0–', '242,249,29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gts_period`
--

DROP TABLE IF EXISTS `gts_period`;
CREATE TABLE IF NOT EXISTS `gts_period` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period_code` varchar(10) NOT NULL,
  `gts_era_id` int(11) NOT NULL,
  `period_name_en` varchar(100) NOT NULL,
  `period_name_es` varchar(100) NOT NULL,
  `period_period` varchar(100) DEFAULT NULL COMMENT 'In millions of years ago',
  `period_color` varchar(11) NOT NULL COMMENT 'RGB',
  PRIMARY KEY (`id`),
  UNIQUE KEY `period_code` (`period_code`),
  UNIQUE KEY `period_name_en` (`period_name_en`),
  UNIQUE KEY `period_name_es` (`period_name_es`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `gts_period`
--

INSERT INTO `gts_period` (`id`, `period_code`, `gts_era_id`, `period_name_en`, `period_name_es`, `period_period`, `period_color`) VALUES
(1, 'PP1', 5, 'Siderian', 'Sidérico', '2500–2300', '247,79,124'),
(2, 'PP2', 5, 'Rhyacian', 'Riácico', '2300–2050', '247,91,137'),
(3, 'PP3', 5, 'Orosirian', 'Orosírico', '2050–1800', '247,104,152'),
(4, 'PP4', 5, 'Statherian', 'Estatérico', '1800–1600', '248,117,167'),
(5, 'MP1', 6, 'Calymmian', 'Calímico', '1600–1400', '254,204,92'),
(6, 'MP2', 6, 'Ectasian', 'Ectásico', '1400–1200', '254,191,78'),
(7, 'MP3', 6, 'Stenian', 'Esténico', '1200–1000', '254,217,154'),
(8, 'NP1', 7, 'Tonian', 'Tónico', '1000–850', '253,204,138'),
(9, 'NP2', 7, 'Cryogenian', 'Criogénico', '850–~635', '253,192,122'),
(10, 'NP3', 7, 'Ediacaran', 'Ediacárico', '~635–541.0 ±1.0', '254,217,106'),
(11, 'ɛ', 8, 'Cambrian', 'Cámbrico', '541.0 ±1.0–485.4 ±1.9', '127,160,86'),
(12, 'O', 8, 'Ordovician', 'Ordovícico', '485.4 ±1.9–443.4 ±1.5', '0,146,112'),
(13, 'S', 8, 'Silurian', 'Silúrico', '443.4 ±1.5–419.2 ±3.2', '179,225,182'),
(14, 'D', 8, 'Devonian', 'Devónico', '419.2 ±3.2–358.9 ±0.4', '203,140,55'),
(15, 'C', 8, 'Carboniferous', 'Carbonífero', '358.9 ±0.4–298.9 ±0.15', '103,165,153'),
(16, 'P', 8, 'Permian', 'Pérmico', '298.9 ±0.15–252.17 ±0.06', '240,64,40'),
(17, 'T', 9, 'Triassic', 'Triásico', '252.17 ±0.06–201.3 ±0.2', '129,43,146'),
(18, 'J', 9, 'Jurassic', 'Jurásico', '201.3 ±0.2–~145.0', '52,178,201'),
(19, 'K', 9, 'Cretaceous', 'Cretácico', '~145.0–66.0', '127,198,78'),
(20, 'E', 10, 'Paleogene', 'Paleógeno', '66.0–23.03', '253,154,82'),
(21, 'N', 10, 'Neogene', 'Neógeno', '23.03–2.588', '255,230,25'),
(22, 'Q', 10, 'Quaternary', 'Cuaternario', '2.588–', '249,249,127');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gts_supereon`
--

DROP TABLE IF EXISTS `gts_supereon`;
CREATE TABLE IF NOT EXISTS `gts_supereon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supereon_code` varchar(10) NOT NULL,
  `supereon_name_en` varchar(100) NOT NULL,
  `supereon_name_es` varchar(100) NOT NULL,
  `supereon_period` varchar(100) NOT NULL COMMENT 'In millions of years ago',
  `supereon_color` varchar(11) NOT NULL COMMENT 'RGB',
  PRIMARY KEY (`id`),
  UNIQUE KEY `supereon_code` (`supereon_code`,`supereon_name_en`),
  UNIQUE KEY `supereon_name_es` (`supereon_name_es`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Stores the geologic time scale supereon' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `gts_supereon`
--

INSERT INTO `gts_supereon` (`id`, `supereon_code`, `supereon_name_en`, `supereon_name_es`, `supereon_period`, `supereon_color`) VALUES
(1, 'Pɛ', 'Precambrian', 'Precámbrico', '~4600–~541.0 ±1.0', '247,67,112');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
