/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : soludesait

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-11-13 10:03:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bitacora
-- ----------------------------
DROP TABLE IF EXISTS `bitacora`;
CREATE TABLE `bitacora` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bitacora` varchar(128) NOT NULL,
  `usuario_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bitacora
-- ----------------------------

-- ----------------------------
-- Table structure for categorias
-- ----------------------------
DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categorias
-- ----------------------------
INSERT INTO `categorias` VALUES ('1', 'Nueva Categorias', '2018-11-07 22:47:43', '2018-11-10 14:28:09', null);
INSERT INTO `categorias` VALUES ('2', 'Software', '2018-11-10 14:08:02', '2018-11-10 14:08:02', null);

-- ----------------------------
-- Table structure for ciudades
-- ----------------------------
DROP TABLE IF EXISTS `ciudades`;
CREATE TABLE `ciudades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `estado_id` bigint(10) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ciudades_estado_foreign` (`estado_id`),
  CONSTRAINT `ciudades_ibfk_1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1964 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ciudades
-- ----------------------------
INSERT INTO `ciudades` VALUES ('1890', '26', 'Aconchi', '2018-08-11 14:08:00', '2018-11-10 15:28:47');
INSERT INTO `ciudades` VALUES ('1891', '26', 'Agua Prieta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1892', '26', 'Alamos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1893', '26', 'Altar', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1894', '26', 'Arivechi', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1895', '26', 'Arizpe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1896', '26', 'Atil', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1897', '26', 'Bacadéhuachi', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1898', '26', 'Bacanora', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1899', '26', 'Bacerac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1900', '26', 'Bacoachi', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1901', '26', 'Bácum', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1902', '26', 'Banámichi', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1903', '26', 'Baviácora', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1904', '26', 'Bavispe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1905', '26', 'Benjamín Hill', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1906', '26', 'Caborca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1907', '26', 'Cajeme', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1908', '26', 'Cananea', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1909', '26', 'Carbó', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1910', '26', 'La Colorada', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1911', '26', 'Cucurpe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1912', '26', 'Cumpas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1913', '26', 'Divisaderos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1914', '26', 'Empalme', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1915', '26', 'Etchojoa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1916', '26', 'Fronteras', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1917', '26', 'Granados', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1918', '26', 'Guaymas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1919', '26', 'Hermosillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1920', '26', 'Huachinera', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1921', '26', 'Huásabas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1922', '26', 'Huatabampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1923', '26', 'Huépac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1924', '26', 'Imuris', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1925', '26', 'Magdalena', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1926', '26', 'Mazatán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1927', '26', 'Moctezuma', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1928', '26', 'Naco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1929', '26', 'Nácori Chico', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1930', '26', 'Nacozari de García', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1931', '26', 'Navojoa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1932', '26', 'Nogales', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1933', '26', 'Onavas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1934', '26', 'Opodepe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1935', '26', 'Oquitoa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1936', '26', 'Pitiquito', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1937', '26', 'Puerto Peñasco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1938', '26', 'Quiriego', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1939', '26', 'Rayón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1940', '26', 'Rosario', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1941', '26', 'Sahuaripa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1942', '26', 'San Felipe de Jesús', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1943', '26', 'San Javier', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1944', '26', 'San Luis Río Colorado', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1945', '26', 'San Miguel de Horcasitas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1946', '26', 'San Pedro de la Cueva', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1947', '26', 'Santa Ana', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1948', '26', 'Santa Cruz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1949', '26', 'Sáric', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1950', '26', 'Soyopa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1951', '26', 'Suaqui Grande', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1952', '26', 'Tepache', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1953', '26', 'Trincheras', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1954', '26', 'Tubutama', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1955', '26', 'Ures', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1956', '26', 'Villa Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1957', '26', 'Villa Pesqueira', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1958', '26', 'Yécora', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1959', '26', 'General Plutarco Elías Calles', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1960', '26', 'Benito Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1961', '26', 'San Ignacio Río Muerto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1962', '1', 'Nueva', '2018-11-10 02:08:47', '2018-11-10 02:08:47');

-- ----------------------------
-- Table structure for cupones
-- ----------------------------
DROP TABLE IF EXISTS `cupones`;
CREATE TABLE `cupones` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(64) NOT NULL,
  `descuento` double(12,2) NOT NULL,
  `descripcion` varchar(128) NOT NULL,
  `inicio_fecha` datetime NOT NULL,
  `fin_fecha` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cupones
-- ----------------------------
INSERT INTO `cupones` VALUES ('1', 'PRIM', '500.00', 'Primer cupon generado', '2018-11-10 00:00:00', '2018-11-24 00:00:00', '2018-11-10 15:54:43', '2018-11-10 15:58:46', '2018-11-10 15:58:46');
INSERT INTO `cupones` VALUES ('2', 'PRIM', '500.00', 'Primer cupon generado', '2018-11-10 00:00:00', '2018-11-24 00:00:00', '2018-11-10 16:02:12', '2018-11-10 16:37:55', null);
INSERT INTO `cupones` VALUES ('3', 'SegundoCx', '250.00', 'Segundo cupon Generado', '2018-11-10 00:00:00', '2018-11-17 00:00:00', '2018-11-10 16:42:18', '2018-11-10 16:42:29', null);

-- ----------------------------
-- Table structure for direcciones
-- ----------------------------
DROP TABLE IF EXISTS `direcciones`;
CREATE TABLE `direcciones` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario_id` bigint(20) NOT NULL,
  `calle` varchar(32) NOT NULL,
  `numero` varchar(8) NOT NULL,
  `avenida` varchar(32) NOT NULL,
  `colonia` varchar(32) NOT NULL,
  `codigopostal` varchar(8) NOT NULL,
  `ciudad_id` bigint(20) NOT NULL,
  `estado_id` bigint(20) NOT NULL,
  `pais_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pais_id` (`pais_id`),
  KEY `estado_id` (`estado_id`),
  KEY `ciudad_id` (`ciudad_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `direcciones_ibfk_1` FOREIGN KEY (`pais_id`) REFERENCES `paises` (`id`),
  CONSTRAINT `direcciones_ibfk_2` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`),
  CONSTRAINT `direcciones_ibfk_3` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudades` (`id`),
  CONSTRAINT `direcciones_ibfk_4` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of direcciones
-- ----------------------------
INSERT INTO `direcciones` VALUES ('1', '13', 'Suaqui Grande', '160', 'Yanez', 'Villa Sonora', '8016', '1897', '12', '1', '2018-11-10 18:03:22', '2018-11-10 18:38:47', null);
INSERT INTO `direcciones` VALUES ('2', '1', 'Suaqui Grande', '160', 'Yanez', 'Villa Sonora', '8016', '1897', '12', '1', '2018-11-10 18:51:03', '2018-11-10 18:52:43', null);

-- ----------------------------
-- Table structure for estados
-- ----------------------------
DROP TABLE IF EXISTS `estados`;
CREATE TABLE `estados` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `pais_id` bigint(10) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `estados_pais_foreign` (`pais_id`),
  CONSTRAINT `estados_ibfk_1` FOREIGN KEY (`pais_id`) REFERENCES `paises` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of estados
-- ----------------------------
INSERT INTO `estados` VALUES ('1', '1', 'Aguascalientes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('2', '1', 'Baja California', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('3', '1', 'Baja California Sur', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('4', '1', 'Campeche', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('5', '1', 'Coahuila de Zaragoza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('6', '1', 'Colima', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('7', '1', 'Chiapas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('8', '1', 'Chihuahua', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('9', '1', 'Distrito Federal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('10', '1', 'Durango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('11', '1', 'Guanajuato', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('12', '1', 'Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('13', '1', 'Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('14', '1', 'Jalisco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('15', '1', 'México', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('16', '1', 'Michoacán de Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('17', '1', 'Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('18', '1', 'Nayarit', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('19', '1', 'Nuevo León', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('20', '1', 'Oaxaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('21', '1', 'Puebla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('22', '1', 'Querétaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('23', '1', 'Quintana Roo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('24', '1', 'San Luis Potosí', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('25', '1', 'Sinaloa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('26', '1', 'Sonora', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('27', '1', 'Tabasco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('28', '1', 'Tamaulipas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('29', '1', 'Tlaxcala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('30', '1', 'Veracruz de Ignacio de la Llave', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('31', '1', 'Yucatán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `estados` VALUES ('32', '1', 'Zacatecas', '2018-08-11 14:08:00', '2018-11-10 19:51:57');

-- ----------------------------
-- Table structure for etiquetas
-- ----------------------------
DROP TABLE IF EXISTS `etiquetas`;
CREATE TABLE `etiquetas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of etiquetas
-- ----------------------------
INSERT INTO `etiquetas` VALUES ('1', 'C#', '2018-11-09 09:22:39', '2018-11-11 13:43:27', null);
INSERT INTO `etiquetas` VALUES ('2', 'PHP', '2018-11-10 19:56:58', '2018-11-11 13:37:18', '2018-11-11 13:37:18');

-- ----------------------------
-- Table structure for galerias
-- ----------------------------
DROP TABLE IF EXISTS `galerias`;
CREATE TABLE `galerias` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `producto_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `galerias_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of galerias
-- ----------------------------

-- ----------------------------
-- Table structure for historial
-- ----------------------------
DROP TABLE IF EXISTS `historial`;
CREATE TABLE `historial` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ingreso` datetime NOT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of historial
-- ----------------------------
INSERT INTO `historial` VALUES ('1', '2018-11-09 10:27:26', '1', '2018-11-09 10:27:26', '2018-11-09 10:27:26', null);
INSERT INTO `historial` VALUES ('2', '2018-11-10 02:03:58', '1', '2018-11-10 02:03:58', '2018-11-10 02:03:58', null);
INSERT INTO `historial` VALUES ('3', '2018-11-10 12:42:33', '1', '2018-11-10 12:42:33', '2018-11-10 12:42:33', null);
INSERT INTO `historial` VALUES ('4', '2018-11-11 13:36:55', '1', '2018-11-11 13:36:55', '2018-11-11 13:36:55', null);
INSERT INTO `historial` VALUES ('5', '2018-11-11 00:00:00', '8', '2018-11-11 19:42:15', '2018-11-11 19:56:30', null);
INSERT INTO `historial` VALUES ('6', '2018-11-11 23:46:54', '1', '2018-11-11 23:46:54', '2018-11-11 23:46:54', null);
INSERT INTO `historial` VALUES ('7', '2018-11-12 10:13:44', '1', '2018-11-12 10:13:44', '2018-11-12 10:13:44', null);
INSERT INTO `historial` VALUES ('8', '2018-11-12 22:19:25', '1', '2018-11-12 22:19:25', '2018-11-12 22:19:25', null);
INSERT INTO `historial` VALUES ('9', '2018-11-13 08:38:55', '1', '2018-11-13 08:38:55', '2018-11-13 08:38:55', null);

-- ----------------------------
-- Table structure for mensajes
-- ----------------------------
DROP TABLE IF EXISTS `mensajes`;
CREATE TABLE `mensajes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) NOT NULL,
  `correo` varchar(64) NOT NULL,
  `mensaje` varchar(255) NOT NULL,
  `visto` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mensajes
-- ----------------------------
INSERT INTO `mensajes` VALUES ('1', 'Martin Fierro Robles', 'martinfierro97@hotmail.comx', 'Hola como estas?, funciona la mensajeria', '0', '2018-11-11 20:09:18', '2018-11-11 20:19:39', null);

-- ----------------------------
-- Table structure for ordenes_productos
-- ----------------------------
DROP TABLE IF EXISTS `ordenes_productos`;
CREATE TABLE `ordenes_productos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orden_venta_id` bigint(20) NOT NULL,
  `producto_id` bigint(20) NOT NULL,
  `precio` double(12,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` double(12,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_id` (`producto_id`),
  KEY `orden_venta_id` (`orden_venta_id`),
  CONSTRAINT `ordenes_productos_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  CONSTRAINT `ordenes_productos_ibfk_3` FOREIGN KEY (`orden_venta_id`) REFERENCES `ventas_ordenes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ordenes_productos
-- ----------------------------

-- ----------------------------
-- Table structure for paises
-- ----------------------------
DROP TABLE IF EXISTS `paises`;
CREATE TABLE `paises` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `pais` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pais` (`pais`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of paises
-- ----------------------------
INSERT INTO `paises` VALUES ('1', 'Mexico', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `paises` VALUES ('2', 'Usax', '2018-08-11 14:08:00', '2018-11-11 23:09:49');

-- ----------------------------
-- Table structure for permisos
-- ----------------------------
DROP TABLE IF EXISTS `permisos`;
CREATE TABLE `permisos` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of permisos
-- ----------------------------
INSERT INTO `permisos` VALUES ('1', 'Permiso', '2018-10-10 18:35:41', '2018-10-10 19:11:18', null);
INSERT INTO `permisos` VALUES ('2', 'Tutor', '2018-10-10 20:23:30', '2018-10-10 20:24:02', null);

-- ----------------------------
-- Table structure for permisos_negados
-- ----------------------------
DROP TABLE IF EXISTS `permisos_negados`;
CREATE TABLE `permisos_negados` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `permiso_id` bigint(11) NOT NULL,
  `rol_id` bigint(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permisos_negados_roles_id_fk` (`rol_id`),
  KEY `permisos_negados_permisos_id_fk` (`permiso_id`),
  CONSTRAINT `permisos_negados_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `permisos_negados_ibfk_2` FOREIGN KEY (`permiso_id`) REFERENCES `permisos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of permisos_negados
-- ----------------------------
INSERT INTO `permisos_negados` VALUES ('2', '1', '2', '2018-11-12 00:23:10', '2018-11-12 00:23:10');

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) NOT NULL,
  `breve_descripcion` varchar(64) NOT NULL,
  `descripcion` varchar(128) NOT NULL,
  `regular_precio` decimal(12,2) NOT NULL,
  `descuento_precio` decimal(12,2) NOT NULL,
  `categoria_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES ('1', 'Curso Bootstrap 4', 'Curso Basico Bootstrap 4', 'Curso basico de Bootstrap 4 10horas', '250.00', '10.00', '2', '2018-11-12 00:50:46', '2018-11-12 01:07:51', '2018-11-12 01:07:51');
INSERT INTO `productos` VALUES ('2', 'casd', 'asd', 'asds', '510.00', '0.00', '1', '2018-11-12 00:58:15', '2018-11-12 01:05:05', null);

-- ----------------------------
-- Table structure for productos_etiquetas
-- ----------------------------
DROP TABLE IF EXISTS `productos_etiquetas`;
CREATE TABLE `productos_etiquetas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `producto_id` bigint(20) NOT NULL,
  `etiqueta_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_id` (`producto_id`),
  KEY `etiqueta_id` (`etiqueta_id`),
  CONSTRAINT `productos_etiquetas_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  CONSTRAINT `productos_etiquetas_ibfk_2` FOREIGN KEY (`etiqueta_id`) REFERENCES `etiquetas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of productos_etiquetas
-- ----------------------------
INSERT INTO `productos_etiquetas` VALUES ('1', '2', '1', '2018-11-12 01:40:55', '2018-11-12 01:58:21', '2018-11-12 01:58:21');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Administrador', '2018-09-25 15:05:51', '2018-09-25 15:05:51', null);
INSERT INTO `roles` VALUES ('2', 'Maestro', '2018-09-25 15:05:51', '2018-11-12 07:08:05', '2018-11-12 07:08:05');
INSERT INTO `roles` VALUES ('3', 'Cliente', '2018-09-25 15:05:51', '2018-11-12 07:01:26', null);

-- ----------------------------
-- Table structure for tarjetas
-- ----------------------------
DROP TABLE IF EXISTS `tarjetas`;
CREATE TABLE `tarjetas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) NOT NULL,
  `apaterno` varchar(32) NOT NULL,
  `amaterno` varchar(32) NOT NULL,
  `numero` varchar(64) NOT NULL,
  `fecha` date NOT NULL,
  `cvv` varchar(8) NOT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `tarjetas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tarjetas
-- ----------------------------
INSERT INTO `tarjetas` VALUES ('1', 'Martin', 'asd', 'asdas', '1564 8648 6451 5165', '2018-12-31', '1324', '10', '2018-11-12 07:28:19', '2018-11-12 10:26:14', null);
INSERT INTO `tarjetas` VALUES ('2', 'Martin', 'asd', 'asdas', '15648 648 6451 5165', '2018-12-31', '1324', '10', '2018-11-12 07:28:36', '2018-11-12 10:31:43', '2018-11-12 10:31:43');
INSERT INTO `tarjetas` VALUES ('3', 'Martin', 'asd', 'asdas', '1564 8648 6451 5165', '2018-12-31', '1324', '10', '2018-11-12 07:29:21', '2018-11-12 10:26:47', null);
INSERT INTO `tarjetas` VALUES ('4', 'Martin', 'asd', 'asdas', '1564 8648 6451 5165', '2018-12-31', '1324', '10', '2018-11-12 07:31:04', '2018-11-12 10:25:54', null);
INSERT INTO `tarjetas` VALUES ('5', 'Martin', 'asd', 'asdas', '1564 8648 6454 1507', '2018-12-31', '1324', '10', '2018-11-12 07:31:22', '2018-11-12 10:27:03', null);
INSERT INTO `tarjetas` VALUES ('6', 'Martin', 'asd', 'asdas', '1564 8648 6457 1507', '2018-12-31', '1326', '10', '2018-11-12 07:31:35', '2018-11-12 10:27:13', null);

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `apaterno` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `amaterno` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `avatar` varchar(200) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'default.png',
  `rol_id` bigint(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuarios_roles_id_fk` (`rol_id`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'Martin', 'Fierro', 'Robles', 'martinfierro97@hotmail.com', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'martinfierro.jpg', '1', '2018-09-26 08:08:24', '2018-10-02 14:54:58', null);
INSERT INTO `usuarios` VALUES ('4', 'Jose', 'Olivas', 'Vasquez', 'joseperez@hotmail.com', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'user.svg', '3', '2018-10-02 11:59:16', '2018-10-02 15:54:12', null);
INSERT INTO `usuarios` VALUES ('5', 'Alan', 'Gonzales', 'Espinoza', 'alangl@gmail.com', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'user.svg', '3', '2018-10-02 12:01:11', '2018-10-03 07:54:33', null);
INSERT INTO `usuarios` VALUES ('6', 'Miguel Angel', 'Suniga', 'Pacheco', 'mig@gmail.com', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'user.svg', '2', '2018-10-02 15:21:17', '2018-10-02 15:21:17', null);
INSERT INTO `usuarios` VALUES ('8', 'Franks', 'Marie ', 'Annelies', 'Anafrank@gmail.coms', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'user.svg', '1', '2018-10-02 15:40:40', '2018-10-03 08:18:35', null);
INSERT INTO `usuarios` VALUES ('9', 'Jesus Alfredo', 'Jimenez', 'Gonzalesz', 'jesusalfredo@gmail.com', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'user.svg', '1', '2018-10-02 15:47:32', '2018-10-03 07:11:46', null);
INSERT INTO `usuarios` VALUES ('10', 'Franksz', 'Marie ', 'Annelies', 'Anafrank@gmail.comszx', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'user.svg', '1', '2018-10-02 15:47:46', '2018-10-03 08:19:38', null);
INSERT INTO `usuarios` VALUES ('11', 'Estefania', 'Duarte', 'Garcia', 'estefi@hotmail.com', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'user.svg', '3', '2018-10-02 15:55:11', '2018-10-04 04:37:43', null);
INSERT INTO `usuarios` VALUES ('12', 'Sergio', 'Sinohui', 'Cordova', 'sergio.sino@gmail.com', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'user.svg', '3', '2018-10-08 18:34:27', '2018-10-08 18:34:27', null);
INSERT INTO `usuarios` VALUES ('13', 'Jose', 'Encinas', 'Ramos', 'jer@gmail.com', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'user.svg', '3', '2018-10-08 18:37:57', '2018-10-08 18:37:57', null);
INSERT INTO `usuarios` VALUES ('14', 'Noe', 'Cazares', 'Camargo', 'noe@gmail.com', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'user.svg', '2', '2018-10-08 18:53:17', '2018-10-08 18:53:17', null);
INSERT INTO `usuarios` VALUES ('15', 'Bernardo', 'Prado', 'Diaz', 'prado@yahoo.com.mx', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'user.svg', '2', '2018-10-08 19:23:05', '2018-10-08 19:23:05', null);
INSERT INTO `usuarios` VALUES ('16', 'Ramon', 'Ramon', 'Zamora', 'ramon@gmail.com', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'user.svg', '2', '2018-10-08 19:25:41', '2018-10-08 19:25:41', null);
INSERT INTO `usuarios` VALUES ('17', 'Fausto', 'Montijo', 'Haro', 'fausto@gmail.com', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'user.svg', '2', '2018-10-08 19:26:37', '2018-10-08 19:26:37', null);
INSERT INTO `usuarios` VALUES ('18', 'Nuevo', 'Usuario', 'Alumno', 'nusuario@alumno.com', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'user.svg', '3', '2018-10-10 08:05:22', '2018-10-10 08:05:22', null);
INSERT INTO `usuarios` VALUES ('19', 'Jesus', 'Perez', 'Gonzalez', 'jesusgzlz@gmail.com', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', 'user.svg', '3', '2018-10-10 08:21:38', '2018-10-10 08:21:38', null);

-- ----------------------------
-- Table structure for ventas_ordenes
-- ----------------------------
DROP TABLE IF EXISTS `ventas_ordenes`;
CREATE TABLE `ventas_ordenes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario_id` bigint(20) NOT NULL,
  `direccion_id` bigint(20) NOT NULL,
  `orden_fecha` datetime NOT NULL,
  `total` double(12,2) NOT NULL,
  `cupon_id` bigint(11) DEFAULT NULL,
  `status_at` tinyint(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `cupon_id` (`cupon_id`),
  KEY `direccion_id` (`direccion_id`),
  CONSTRAINT `ventas_ordenes_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `ventas_ordenes_ibfk_2` FOREIGN KEY (`cupon_id`) REFERENCES `cupones` (`id`),
  CONSTRAINT `ventas_ordenes_ibfk_3` FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ventas_ordenes
-- ----------------------------
INSERT INTO `ventas_ordenes` VALUES ('1', '5', '2', '2018-11-13 00:00:00', '8520.00', '3', '0', '2018-11-13 07:12:16', '2018-11-13 07:18:19', '2018-11-13 07:18:19');
INSERT INTO `ventas_ordenes` VALUES ('2', '5', '1', '2018-11-13 00:00:00', '8520.00', '3', '0', '2018-11-13 07:18:52', '2018-11-13 07:18:52', null);
INSERT INTO `ventas_ordenes` VALUES ('3', '19', '1', '2018-11-13 00:00:00', '85200.00', '3', '0', '2018-11-13 07:31:14', '2018-11-13 07:32:50', null);
