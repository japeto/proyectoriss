-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.21 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para encuesta
DROP DATABASE IF EXISTS `encuesta`;
CREATE DATABASE IF NOT EXISTS `encuesta` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `encuesta`;


-- Volcando estructura para tabla encuesta.encuesta
DROP TABLE IF EXISTS `encuesta`;
CREATE TABLE IF NOT EXISTS `encuesta` (
  `idrespuestas` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) DEFAULT NULL,
  `p1` int(11) NOT NULL,
  `p2` int(11) NOT NULL,
  `p3` int(11) NOT NULL,
  `p4` int(11) NOT NULL,
  `p5` int(11) NOT NULL,
  `p6` int(11) NOT NULL,
  `p7` int(11) NOT NULL,
  `p8` int(11) NOT NULL,
  `p9` int(11) NOT NULL,
  `p10` int(11) NOT NULL,
  `p11` int(11) NOT NULL,
  `p12` int(11) NOT NULL,
  `p13` int(11) NOT NULL,
  `p14` int(11) NOT NULL,
  `p15` int(11) NOT NULL,
  `p16` int(11) NOT NULL,
  `p17` int(11) NOT NULL,
  `p18` int(11) NOT NULL,
  `p19` int(11) NOT NULL,
  `p20` int(11) NOT NULL,
  `p21` int(11) NOT NULL,
  `p22` int(11) NOT NULL,
  `p23` int(11) NOT NULL,
  `p24` int(11) NOT NULL,
  `p25` int(11) NOT NULL,
  `p26` int(11) NOT NULL,
  `p27` int(11) NOT NULL,
  `p28` int(11) NOT NULL,
  `p29` int(11) NOT NULL,
  `p30` int(11) NOT NULL,
  `p31` int(11) NOT NULL,
  `p32` int(11) NOT NULL,
  `p33` int(11) NOT NULL,
  `p34` int(11) NOT NULL,
  `p35` int(11) NOT NULL,
  `p36` int(11) NOT NULL,
  `p37` int(11) NOT NULL,
  `p38` int(11) NOT NULL,
  `p39` int(11) NOT NULL,
  `p40` int(11) NOT NULL,
  `p41` int(11) NOT NULL,
  `p42` int(11) NOT NULL,
  `p43` int(11) NOT NULL,
  `p44` int(11) NOT NULL,
  `p45` int(11) NOT NULL,
  `p46` int(11) NOT NULL,
  `p47` int(11) NOT NULL,
  `p48` int(11) NOT NULL,
  `p49` int(11) NOT NULL,
  `p50` int(11) NOT NULL,
  `p51` int(11) NOT NULL,
  `p52` int(11) NOT NULL,
  `p53` int(11) NOT NULL,
  `p54` int(11) NOT NULL,
  `p55` int(11) NOT NULL,
  `p56` int(11) NOT NULL,
  `p57` int(11) NOT NULL,
  `p58` int(11) NOT NULL,
  `p59` int(11) NOT NULL,
  `p60` int(11) NOT NULL,
  `p61` int(11) NOT NULL,
  PRIMARY KEY (`idrespuestas`),
  KEY `usuarioforeneo` (`idusuario`),
  CONSTRAINT `usuarioforeneo` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla que contiene las respuestas de la encuesta';

-- Volcando datos para la tabla encuesta.encuesta: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `encuesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuesta` ENABLE KEYS */;


-- Volcando estructura para tabla encuesta.municipios
DROP TABLE IF EXISTS `municipios`;
CREATE TABLE IF NOT EXISTS `municipios` (
  `idmunicipio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT '0',
  PRIMARY KEY (`idmunicipio`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla encuesta.municipios: ~42 rows (aproximadamente)
/*!40000 ALTER TABLE `municipios` DISABLE KEYS */;
INSERT INTO `municipios` (`idmunicipio`, `nombre`) VALUES
	(1, 'Alcal '),
	(2, 'Andalucía'),
	(3, 'Ansermanuevo'),
	(4, 'Argelia'),
	(5, 'Bolívar'),
	(6, 'Buenaventura'),
	(7, 'Buga'),
	(8, 'Bugalagrande'),
	(9, 'Caicedonia'),
	(10, 'Cali'),
	(11, 'Candelaria'),
	(12, 'Cartago'),
	(13, 'Dagua'),
	(14, 'Calima - El Darién'),
	(15, 'El Águila'),
	(16, 'El Cairo'),
	(17, 'El Cerrito'),
	(18, 'El Dovio'),
	(19, 'Florida'),
	(20, 'Ginebra'),
	(21, 'Guacarí'),
	(22, 'Jamundí'),
	(23, 'La Cumbre'),
	(24, 'La Unión'),
	(25, 'La Victoria'),
	(26, 'Obando'),
	(27, 'Palmira'),
	(28, 'Pradera'),
	(29, 'Restrepo'),
	(30, 'Riofrío'),
	(31, 'Roldanillo'),
	(32, 'San Pedro'),
	(33, 'Sevilla'),
	(34, 'Toro'),
	(35, 'Trujillo'),
	(36, 'Tuluá '),
	(37, 'Ulloa'),
	(38, 'Versalles'),
	(39, 'Vijes'),
	(40, 'Yotoco'),
	(41, 'Yumbo'),
	(42, 'Zarzal');
/*!40000 ALTER TABLE `municipios` ENABLE KEYS */;


-- Volcando estructura para tabla encuesta.preguntas
DROP TABLE IF EXISTS `preguntas`;
CREATE TABLE IF NOT EXISTS `preguntas` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `opcion1` varchar(50) CHARACTER SET latin1 NOT NULL,
  `opcion2` varchar(50) CHARACTER SET latin1 NOT NULL,
  `opcion3` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla encuesta.preguntas: ~61 rows (aproximadamente)
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` (`id`, `pregunta`, `opcion1`, `opcion2`, `opcion3`) VALUES
	(1, '<h3>Atributo No 1. Conocimiento del Territorio o Jurisdicción y Población definidos.</h3> 1. ¿Plan de desarrollo actualizado para los últimos cuatro años?', 'Si', 'No', 'No sabe / No responde'),
	(2, '2. ¿Análisis de Situación de Salud actualizado en menos de dos años?', 'Si', 'No', 'No sabe / No responde'),
	(3, '3. ¿Perfil epidemiológico de los últimos dos años?', 'Si', 'No', 'No sabe / No responde'),
	(4, '4. ¿Plan de ordenamiento territorial? ', 'Si', 'No', 'No sabe / No responde'),
	(5, '5. ¿Identificación actualizada de la población según régimen de afiliación en el último año?', 'Si', 'No', 'No sabe / No responde'),
	(6, '6. ¿Identificación formal de grupos étnicos en el último año?', 'Si', 'No', 'No sabe / No responde'),
	(7, '<h3>Atributo No 2. Oferta de servicios de salud individuales y colectivos accesibles geográficamente.<br> Su municipio cuenta con:</h3>7. ¿Referenciación geográfica de la oferta de servicios de salud, incluida la zona rural?', 'Si', 'No', 'No sabe / No responde'),
	(8, '8. ¿Caracterización de la oferta y demanda de servicios de salud?', 'Si', 'No', 'No sabe / No responde'),
	(9, '9. ¿Información de la red de servicios de salud en el área de influencia actualizada en el último año? ', 'Si', 'No', 'No sabe / No responde'),
	(10, '10. ¿La organización de una Red de Servicios para promoción, prevención, tratamiento (con especialidades médicas) o rehabilitación?', 'Si', 'No', 'No sabe / No responde'),
	(11, '11. ¿Alianzas entre prestadores de servicios de salud  para la prestación de los servicios?', 'Si', 'No', 'No sabe / No responde'),
	(12, '12. ¿Alianzas del sector salud con redes de apoyo a grupos poblacionales específicos? ', 'Si', 'No', 'No sabe / No responde'),
	(13, '13. ¿La entidad territorial tiene vínculos con la comunidad en espacios formales de articulación?', 'Si', 'No', 'No sabe / No responde'),
	(14, '14. ¿Se existen las ligas de usuarios, las veedurías u otras instancias de participación?', 'Si', 'No', 'No sabe / No responde'),
	(15, '15. ¿La entidad territorial de salud dispone de mecanismos de comunicación permanente con los actores que representan a la comunidad?', 'Si', 'No', 'No sabe / No responde'),
	(16, '16. ¿Se cuenta con un sistema de información entre los integrantes de la Red de prestadores de  Salud desde el primer nivel de atención al nivel superior?', 'Si', 'No', 'No sabe / No responde'),
	(17, '17. ¿Existe un Modelo de Atención en salud definido por la entidad territorial?', 'Si', 'No', 'No sabe / No responde'),
	(18, '18. ¿Las aseguradoras de su región tienen definido un modelo de atención en salud? ', 'Si', 'No', 'No sabe / No responde'),
	(19, '19. ¿Se tienen identificados por la entidad territorial municipal los prestadores de servicios de salud en entornos extra hospitalarios? ', 'Si', 'No', 'No sabe / No responde'),
	(20, '20. ¿En su región existen instituciones que prestan servicios especializados de mediana y alta complejidad? ', 'Si', 'No', 'No sabe / No responde'),
	(21, '21. ¿Están diseñados los procesos para la recepción, ingreso y revisión de los usuarios entre las diferentes entidades de salud del municipio?', 'Si', 'No', 'No sabe / No responde'),
	(22, '22. ¿Se han adoptado y adaptado las guías de práctica clínica dadas por el ministerio de salud', 'Si', 'No', 'No sabe / No responde'),
	(23, '23. ¿Está definido un sistema de referencia y contrarreferencia por la entidad territorial de salud municipal?', 'Si', 'No', 'No sabe / No responde'),
	(24, '24. La entidad territorial municipal de salud aplica lineamientos y directrices dadas por la autoridad sanitaria en temas de prestación de servicios?', 'Si', 'No', 'No sabe / No responde'),
	(25, '25. ¿La entidad territorial municipal tiene caracterizadas las organizaciones que atienden poblaciones especificas?', 'Si', 'No', 'No sabe / No responde'),
	(26, '26. ¿Las instituciones de salud articulan sus acciones con las redes de apoyo social?', 'Si', 'No', 'No sabe / No responde'),
	(27, '27. ¿Las condiciones de vida y trabajo son consideradas por las IPS para la prestación de los servicios de salud?', 'Si', 'No', 'No sabe / No responde'),
	(28, '28. ¿Los prestadores de servicios de salud integran estrategias con enfoque etnocultural para la atención?\r\n', 'Si', 'No', 'No sabe / No responde'),
	(29, '29. ¿Los planes de prestación de servicios de salud consideran la participación comunitaria?', 'Si', 'No', 'No sabe / No responde'),
	(30, '30. ¿La entidad territorial departamental tiene lineamientos que den un orden general a la organización y operación de la red de servicios en la jurisdicción', 'Si', 'No', 'No sabe / No responde'),
	(31, '31. ¿Las instituciones de salud de la región reconocen las capacidades de oferta y limitaciones entre sí?', 'Si', 'No', 'No sabe / No responde'),
	(32, '32. ¿Hay articulación administrativa entre actores del sector salud a nivel regional para el desarrollo de sus funciones?', 'Si', 'No', 'No sabe / No responde'),
	(33, '33. ¿La entidad territorial municipal mantiene un vínculo con las entidades de salud de la jurisdicción, desde la asistencia técnica hasta el monitoreo de sus funciones?', 'Si', 'No', 'No sabe / No responde'),
	(34, '34. ¿Los actores del sistema de salud en la región tienen definidos mecanismos o instancias de trabajo con las comunidades para asegurar la atención de necesidades en salud?', 'Si', 'No', 'No sabe / No responde'),
	(35, '35. ¿La comunidad participa de las decisiones de gobierno local frente a la organización y planeación de la oferta de red?', 'Si', 'No', 'No sabe / No responde'),
	(36, '36. ¿Las entidades de salud (IPS, EPS, ARL, y otras) brindan a la comunidad orientación y educación para hagan uso de sus derechos y deberes en salud?', 'Si', 'No', 'No sabe / No responde'),
	(37, '37. La entidad territorial municipal de salud brinda asistencia técnica a la comunidad para que conozcan la operación del sistema de salud y actúen sobre él?', 'Si', 'No', 'No sabe / No responde'),
	(38, '38. ¿Las instituciones de salud han implementado sistemas de garantía y mejoramiento continuo de la calidad? ', 'Si', 'No', 'No sabe / No responde'),
	(39, '39. ¿La entidad territorial municipal ha definido políticas explicitas de calidad en la atención para la población en su jurisdicción?', 'Si', 'No', 'No sabe / No responde'),
	(40, '40. ¿Las instituciones de salud tienen definidos indicadores de gestión clínica y administrativa conforme a lineamientos generales de la entidad territorial? ', 'Si', 'No', 'No sabe / No responde'),
	(41, '41. ¿Las instituciones de salud tienen estrategias de economía de escala para la prestación de servicios de salud?', 'Si', 'No', 'No sabe / No responde'),
	(42, '42. ¿La comunidad recibe información de la gestión clínica y administrativa de las instituciones de salud?', 'Si', 'No', 'No sabe / No responde'),
	(43, '43. La entidad territorial de salud realiza capacitación continua a sus equipos de trabajo técnico en temas de fortalecimiento y organización de la red de servicios?', 'Si', 'No', 'No sabe / No responde'),
	(44, '44. Se brinda por parte de la entidad territorial de salud asistencia técnica orientada a fortalecer el conocimiento en temas relacionados con organización de la red, el modelo de atención, análisis de situación de salud?', 'Si', 'No', 'No sabe / No responde'),
	(45, '45. Las entidades de salud, generan estrategias encaminadas a mejorar su cultura organizacional, a partir de trabajo en equipo y apoyo colaborativo entre IPS?', 'Si', 'No', 'No sabe / No responde'),
	(46, '46. Se evidencia en las diferentes entidades de salud, acciones para mantener el recurso humano capacitado, motivado y valorado?', 'Si', 'No', 'No sabe / No responde'),
	(47, '47. Las entidades desarrollan análisis orientados a reconocer las condiciones del talento humano en salud, para mejorar sus condiciones?\r\n', 'Si', 'No', 'No sabe / No responde'),
	(48, '48. La instituciones de salud tienen definidas directrices orientadas a medir sus resultados, basándose en  las variables y datos definidas por la entidad territorial?', 'Si', 'No', 'No sabe / No responde'),
	(49, '49. Los actores del sistema en su territorio disponen de la información y datos generados entre si? ', 'Si', 'No', 'No sabe / No responde'),
	(50, '50. Las instituciones de salud han incorporado la tecnología para mejorar los sistemas de información para la gestión clínica y administrativa?', 'Si', 'No', 'No sabe / No responde'),
	(51, '51. Las entidades de salud de la región, integran desarrollos tecnológicos ‘para la comunicación interna y con otros actores del sistema?', 'Si', 'No', 'No sabe / No responde'),
	(52, '52. La entidad territorial de salud tiene definidos lineamientos, para el reporte de información por parte de los actores del sistema de salud según sus competencias?', 'Si', 'No', 'No sabe / No responde'),
	(53, '53. Las instituciones de salud realizan análisis de costo/efectividad de sus operaciones? ', 'Si', 'No', 'No sabe / No responde'),
	(54, '54. Se tienen definidas estrategias de articulación entre los actores del sistema para optimizar recursos, a través de economías de escala?', 'Si', 'No', 'No sabe / No responde'),
	(55, '55. La entidad territorial de salud concerta con las instituciones de salud para redefinir la oferta de servicios  específicas según demanda?', 'Si', 'No', 'No sabe / No responde'),
	(56, '56. Las entidades de salud integran lineamientos orientados a mejorar las condiciones laborales del talento humano en salud?', 'Si', 'No', 'No sabe / No responde'),
	(57, '57. La entidad territorial de salud tiene definido espacios de planeación intersectorial', 'Si', 'No', 'No sabe / No responde'),
	(58, '58. La entidad territorial de salud tiene definidos lineamientos para el monitoreo de la equidad en salud de salud?   ', 'Si', 'No', 'No sabe / No responde'),
	(59, '59. Las entidades de salud participan activamente de consejos consultivos, comités permanentes, grupos de trabajo de otros sectores diferente a salud?', 'Si', 'No', 'No sabe / No responde'),
	(60, '60. La entidad territorial cuenta con análisis en Determinantes Sociales de la Salud  conocido por los diferentes actores del sistema?', 'Si', 'No', 'No sabe / No responde'),
	(61, '61. La entidad de salud reconoce los determinantes sociales como pertinente para el análisis de equidad  en salud?', 'Si', 'No', 'No sabe / No responde');
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;


-- Volcando estructura para tabla encuesta.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `Cedula` varchar(50) NOT NULL DEFAULT '0',
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `user` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `fecha` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `municipio` int(11) NOT NULL DEFAULT '0',
  `tipo_entidad` int(11) NOT NULL DEFAULT '0',
  `caracter` int(11) unsigned NOT NULL DEFAULT '0',
  `IPS` int(11) NOT NULL DEFAULT '0',
  `EPS` int(11) NOT NULL DEFAULT '0',
  `categoria` int(11) NOT NULL DEFAULT '0',
  `cargo` int(11) NOT NULL DEFAULT '0',
  `t_servicio` int(11) NOT NULL DEFAULT '0',
  `formacion` int(11) NOT NULL DEFAULT '0',
  `intentos` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='tabla de usuarios con datos personales';

-- Volcando datos para la tabla encuesta.usuario: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`idusuario`, `Cedula`, `nombre`, `user`, `password`, `fecha`, `municipio`, `tipo_entidad`, `caracter`, `IPS`, `EPS`, `categoria`, `cargo`, `t_servicio`, `formacion`, `intentos`) VALUES
	(1, '45454', 'jefferson Amado', 'japeto', 'bd99810d82df296b9266ad803a8e62b5', '0000-00-00 00:00:00', 45454, 45454, 45454, 45454, 45454, 45454, 45454, 45454, 45454, 1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
