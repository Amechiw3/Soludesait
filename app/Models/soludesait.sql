/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : soludesait

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-11-01 18:54:16
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categorias
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=2458 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ciudades
-- ----------------------------
INSERT INTO `ciudades` VALUES ('1', '1', 'Aguascalientes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2', '1', 'Asientos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('3', '1', 'Calvillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('4', '1', 'Cosío', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('5', '1', 'Jesús María', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('6', '1', 'Pabellón de Arteaga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('7', '1', 'Rincón de Romos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('8', '1', 'San José de Gracia', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('9', '1', 'Tepezalá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('10', '1', 'El Llano', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('11', '1', 'San Francisco de los Romo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('12', '2', 'Ensenada', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('13', '2', 'Mexicali', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('14', '2', 'Tecate', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('15', '2', 'Tijuana', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('16', '2', 'Playas de Rosarito', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('17', '3', 'Comondú', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('18', '3', 'Mulegé', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('19', '3', 'La Paz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('20', '3', 'Los Cabos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('21', '3', 'Loreto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('22', '4', 'Calkiní', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('23', '4', 'Campeche', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('24', '4', 'Carmen', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('25', '4', 'Champotón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('26', '4', 'Hecelchakán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('27', '4', 'Hopelchén', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('28', '4', 'Palizada', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('29', '4', 'Tenabo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('30', '4', 'Escárcega', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('31', '4', 'Calakmul', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('32', '4', 'Candelaria', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('33', '5', 'Abasolo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('34', '5', 'Acuña', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('35', '5', 'Allende', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('36', '5', 'Arteaga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('37', '5', 'Candela', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('38', '5', 'Castaños', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('39', '5', 'Cuatro Ciénegas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('40', '5', 'Escobedo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('41', '5', 'Francisco I. Madero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('42', '5', 'Frontera', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('43', '5', 'General Cepeda', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('44', '5', 'Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('45', '5', 'Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('46', '5', 'Jiménez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('47', '5', 'Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('48', '5', 'Lamadrid', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('49', '5', 'Matamoros', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('50', '5', 'Monclova', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('51', '5', 'Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('52', '5', 'Múzquiz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('53', '5', 'Nadadores', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('54', '5', 'Nava', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('55', '5', 'Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('56', '5', 'Parras', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('57', '5', 'Piedras Negras', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('58', '5', 'Progreso', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('59', '5', 'Ramos Arizpe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('60', '5', 'Sabinas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('61', '5', 'Sacramento', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('62', '5', 'Saltillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('63', '5', 'San Buenaventura', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('64', '5', 'San Juan de Sabinas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('65', '5', 'San Pedro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('66', '5', 'Sierra Mojada', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('67', '5', 'Torreón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('68', '5', 'Viesca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('69', '5', 'Villa Unión', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('70', '5', 'Zaragoza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('71', '6', 'Armería', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('72', '6', 'Colima', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('73', '6', 'Comala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('74', '6', 'Coquimatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('75', '6', 'Cuauhtémoc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('76', '6', 'Ixtlahuacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('77', '6', 'Manzanillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('78', '6', 'Minatitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('79', '6', 'Tecomán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('80', '6', 'Villa de Álvarez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('81', '7', 'Acacoyagua', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('82', '7', 'Acala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('83', '7', 'Acapetahua', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('84', '7', 'Altamirano', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('85', '7', 'Amatán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('86', '7', 'Amatenango de la Frontera', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('87', '7', 'Amatenango del Valle', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('88', '7', 'Angel Albino Corzo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('89', '7', 'Arriaga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('90', '7', 'Bejucal de Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('91', '7', 'Bella Vista', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('92', '7', 'Berriozábal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('93', '7', 'Bochil', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('94', '7', 'El Bosque', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('95', '7', 'Cacahoatán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('96', '7', 'Catazajá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('97', '7', 'Cintalapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('98', '7', 'Coapilla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('99', '7', 'Comitán de Domínguez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('100', '7', 'La Concordia', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('101', '7', 'Copainalá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('102', '7', 'Chalchihuitán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('103', '7', 'Chamula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('104', '7', 'Chanal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('105', '7', 'Chapultenango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('106', '7', 'Chenalhó', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('107', '7', 'Chiapa de Corzo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('108', '7', 'Chiapilla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('109', '7', 'Chicoasén', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('110', '7', 'Chicomuselo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('111', '7', 'Chilón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('112', '7', 'Escuintla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('113', '7', 'Francisco León', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('114', '7', 'Frontera Comalapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('115', '7', 'Frontera Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('116', '7', 'La Grandeza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('117', '7', 'Huehuetán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('118', '7', 'Huixtán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('119', '7', 'Huitiupán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('120', '7', 'Huixtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('121', '7', 'La Independencia', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('122', '7', 'Ixhuatán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('123', '7', 'Ixtacomitán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('124', '7', 'Ixtapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('125', '7', 'Ixtapangajoya', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('126', '7', 'Jiquipilas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('127', '7', 'Jitotol', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('128', '7', 'Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('129', '7', 'Larráinzar', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('130', '7', 'La Libertad', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('131', '7', 'Mapastepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('132', '7', 'Las Margaritas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('133', '7', 'Mazapa de Madero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('134', '7', 'Mazatán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('135', '7', 'Metapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('136', '7', 'Mitontic', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('137', '7', 'Motozintla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('138', '7', 'Nicolás Ruíz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('139', '7', 'Ocosingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('140', '7', 'Ocotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('141', '7', 'Ocozocoautla de Espinosa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('142', '7', 'Ostuacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('143', '7', 'Osumacinta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('144', '7', 'Oxchuc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('145', '7', 'Palenque', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('146', '7', 'Pantelhó', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('147', '7', 'Pantepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('148', '7', 'Pichucalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('149', '7', 'Pijijiapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('150', '7', 'El Porvenir', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('151', '7', 'Villa Comaltitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('152', '7', 'Pueblo Nuevo Solistahuacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('153', '7', 'Rayón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('154', '7', 'Reforma', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('155', '7', 'Las Rosas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('156', '7', 'Sabanilla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('157', '7', 'Salto de Agua', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('158', '7', 'San Cristóbal de las Casas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('159', '7', 'San Fernando', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('160', '7', 'Siltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('161', '7', 'Simojovel', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('162', '7', 'Sitalá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('163', '7', 'Socoltenango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('164', '7', 'Solosuchiapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('165', '7', 'Soyaló', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('166', '7', 'Suchiapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('167', '7', 'Suchiate', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('168', '7', 'Sunuapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('169', '7', 'Tapachula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('170', '7', 'Tapalapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('171', '7', 'Tapilula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('172', '7', 'Tecpatán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('173', '7', 'Tenejapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('174', '7', 'Teopisca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('175', '7', 'Tila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('176', '7', 'Tonalá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('177', '7', 'Totolapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('178', '7', 'La Trinitaria', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('179', '7', 'Tumbalá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('180', '7', 'Tuxtla Gutiérrez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('181', '7', 'Tuxtla Chico', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('182', '7', 'Tuzantán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('183', '7', 'Tzimol', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('184', '7', 'Unión Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('185', '7', 'Venustiano Carranza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('186', '7', 'Villa Corzo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('187', '7', 'Villaflores', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('188', '7', 'Yajalón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('189', '7', 'San Lucas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('190', '7', 'Zinacantán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('191', '7', 'San Juan Cancuc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('192', '7', 'Aldama', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('193', '7', 'Benemérito de las Américas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('194', '7', 'Maravilla Tenejapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('195', '7', 'Marqués de Comillas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('196', '7', 'Montecristo de Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('197', '7', 'San Andrés Duraznal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('198', '7', 'Santiago el Pinar', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('199', '8', 'Ahumada', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('200', '8', 'Aldama', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('201', '8', 'Allende', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('202', '8', 'Aquiles Serdán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('203', '8', 'Ascensión', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('204', '8', 'Bachíniva', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('205', '8', 'Balleza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('206', '8', 'Batopilas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('207', '8', 'Bocoyna', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('208', '8', 'Buenaventura', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('209', '8', 'Camargo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('210', '8', 'Carichí', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('211', '8', 'Casas Grandes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('212', '8', 'Coronado', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('213', '8', 'Coyame del Sotol', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('214', '8', 'La Cruz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('215', '8', 'Cuauhtémoc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('216', '8', 'Cusihuiriachi', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('217', '8', 'Chihuahua', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('218', '8', 'Chínipas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('219', '8', 'Delicias', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('220', '8', 'Dr. Belisario Domínguez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('221', '8', 'Galeana', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('222', '8', 'Santa Isabel', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('223', '8', 'Gómez Farías', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('224', '8', 'Gran Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('225', '8', 'Guachochi', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('226', '8', 'Guadalupe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('227', '8', 'Guadalupe y Calvo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('228', '8', 'Guazapares', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('229', '8', 'Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('230', '8', 'Hidalgo del Parral', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('231', '8', 'Huejotitán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('232', '8', 'Ignacio Zaragoza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('233', '8', 'Janos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('234', '8', 'Jiménez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('235', '8', 'Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('236', '8', 'Julimes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('237', '8', 'López', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('238', '8', 'Madera', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('239', '8', 'Maguarichi', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('240', '8', 'Manuel Benavides', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('241', '8', 'Matachí', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('242', '8', 'Matamoros', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('243', '8', 'Meoqui', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('244', '8', 'Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('245', '8', 'Moris', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('246', '8', 'Namiquipa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('247', '8', 'Nonoava', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('248', '8', 'Nuevo Casas Grandes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('249', '8', 'Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('250', '8', 'Ojinaga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('251', '8', 'Praxedis G. Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('252', '8', 'Riva Palacio', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('253', '8', 'Rosales', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('254', '8', 'Rosario', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('255', '8', 'San Francisco de Borja', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('256', '8', 'San Francisco de Conchos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('257', '8', 'San Francisco del Oro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('258', '8', 'Santa Bárbara', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('259', '8', 'Satevó', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('260', '8', 'Saucillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('261', '8', 'Temósachic', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('262', '8', 'El Tule', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('263', '8', 'Urique', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('264', '8', 'Uruachi', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('265', '8', 'Valle de Zaragoza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('266', '9', 'Azcapotzalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('267', '9', 'Coyoacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('268', '9', 'Cuajimalpa de Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('269', '9', 'Gustavo A. Madero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('270', '9', 'Iztacalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('271', '9', 'Iztapalapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('272', '9', 'La Magdalena Contreras', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('273', '9', 'Milpa Alta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('274', '9', 'Álvaro Obregón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('275', '9', 'Tláhuac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('276', '9', 'Tlalpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('277', '9', 'Xochimilco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('278', '9', 'Benito Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('279', '9', 'Cuauhtémoc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('280', '9', 'Miguel Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('281', '9', 'Venustiano Carranza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('282', '10', 'Canatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('283', '10', 'Canelas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('284', '10', 'Coneto de Comonfort', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('285', '10', 'Cuencamé', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('286', '10', 'Durango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('287', '10', 'General Simón Bolívar', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('288', '10', 'Gómez Palacio', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('289', '10', 'Guadalupe Victoria', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('290', '10', 'Guanaceví', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('291', '10', 'Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('292', '10', 'Indé', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('293', '10', 'Lerdo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('294', '10', 'Mapimí', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('295', '10', 'Mezquital', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('296', '10', 'Nazas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('297', '10', 'Nombre de Dios', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('298', '10', 'Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('299', '10', 'El Oro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('300', '10', 'Otáez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('301', '10', 'Pánuco de Coronado', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('302', '10', 'Peñón Blanco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('303', '10', 'Poanas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('304', '10', 'Pueblo Nuevo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('305', '10', 'Rodeo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('306', '10', 'San Bernardo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('307', '10', 'San Dimas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('308', '10', 'San Juan de Guadalupe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('309', '10', 'San Juan del Río', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('310', '10', 'San Luis del Cordero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('311', '10', 'San Pedro del Gallo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('312', '10', 'Santa Clara', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('313', '10', 'Santiago Papasquiaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('314', '10', 'Súchil', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('315', '10', 'Tamazula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('316', '10', 'Tepehuanes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('317', '10', 'Tlahualilo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('318', '10', 'Topia', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('319', '10', 'Vicente Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('320', '10', 'Nuevo Ideal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('321', '11', 'Abasolo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('322', '11', 'Acámbaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('323', '11', 'San Miguel de Allende', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('324', '11', 'Apaseo el Alto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('325', '11', 'Apaseo el Grande', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('326', '11', 'Atarjea', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('327', '11', 'Celaya', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('328', '11', 'Manuel Doblado', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('329', '11', 'Comonfort', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('330', '11', 'Coroneo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('331', '11', 'Cortazar', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('332', '11', 'Cuerámaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('333', '11', 'Doctor Mora', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('334', '11', 'Dolores Hidalgo Cuna de la Independencia Nacional', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('335', '11', 'Guanajuato', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('336', '11', 'Huanímaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('337', '11', 'Irapuato', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('338', '11', 'Jaral del Progreso', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('339', '11', 'Jerécuaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('340', '11', 'León', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('341', '11', 'Moroleón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('342', '11', 'Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('343', '11', 'Pénjamo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('344', '11', 'Pueblo Nuevo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('345', '11', 'Purísima del Rincón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('346', '11', 'Romita', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('347', '11', 'Salamanca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('348', '11', 'Salvatierra', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('349', '11', 'San Diego de la Unión', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('350', '11', 'San Felipe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('351', '11', 'San Francisco del Rincón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('352', '11', 'San José Iturbide', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('353', '11', 'San Luis de la Paz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('354', '11', 'Santa Catarina', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('355', '11', 'Santa Cruz de Juventino Rosas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('356', '11', 'Santiago Maravatío', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('357', '11', 'Silao de la Victoria', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('358', '11', 'Tarandacuao', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('359', '11', 'Tarimoro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('360', '11', 'Tierra Blanca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('361', '11', 'Uriangato', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('362', '11', 'Valle de Santiago', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('363', '11', 'Victoria', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('364', '11', 'Villagrán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('365', '11', 'Xichú', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('366', '11', 'Yuriria', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('367', '12', 'Acapulco de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('368', '12', 'Ahuacuotzingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('369', '12', 'Ajuchitlán del Progreso', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('370', '12', 'Alcozauca de Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('371', '12', 'Alpoyeca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('372', '12', 'Apaxtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('373', '12', 'Arcelia', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('374', '12', 'Atenango del Río', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('375', '12', 'Atlamajalcingo del Monte', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('376', '12', 'Atlixtac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('377', '12', 'Atoyac de Álvarez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('378', '12', 'Ayutla de los Libres', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('379', '12', 'Azoyú', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('380', '12', 'Benito Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('381', '12', 'Buenavista de Cuéllar', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('382', '12', 'Coahuayutla de José María Izazaga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('383', '12', 'Cocula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('384', '12', 'Copala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('385', '12', 'Copalillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('386', '12', 'Copanatoyac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('387', '12', 'Coyuca de Benítez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('388', '12', 'Coyuca de Catalán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('389', '12', 'Cuajinicuilapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('390', '12', 'Cualác', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('391', '12', 'Cuautepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('392', '12', 'Cuetzala del Progreso', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('393', '12', 'Cutzamala de Pinzón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('394', '12', 'Chilapa de Álvarez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('395', '12', 'Chilpancingo de los Bravo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('396', '12', 'Florencio Villarreal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('397', '12', 'General Canuto A. Neri', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('398', '12', 'General Heliodoro Castillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('399', '12', 'Huamuxtitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('400', '12', 'Huitzuco de los Figueroa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('401', '12', 'Iguala de la Independencia', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('402', '12', 'Igualapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('403', '12', 'Ixcateopan de Cuauhtémoc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('404', '12', 'Zihuatanejo de Azueta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('405', '12', 'Juan R. Escudero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('406', '12', 'Leonardo Bravo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('407', '12', 'Malinaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('408', '12', 'Mártir de Cuilapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('409', '12', 'Metlatónoc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('410', '12', 'Mochitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('411', '12', 'Olinalá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('412', '12', 'Ometepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('413', '12', 'Pedro Ascencio Alquisiras', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('414', '12', 'Petatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('415', '12', 'Pilcaya', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('416', '12', 'Pungarabato', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('417', '12', 'Quechultenango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('418', '12', 'San Luis Acatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('419', '12', 'San Marcos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('420', '12', 'San Miguel Totolapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('421', '12', 'Taxco de Alarcón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('422', '12', 'Tecoanapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('423', '12', 'Técpan de Galeana', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('424', '12', 'Teloloapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('425', '12', 'Tepecoacuilco de Trujano', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('426', '12', 'Tetipac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('427', '12', 'Tixtla de Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('428', '12', 'Tlacoachistlahuaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('429', '12', 'Tlacoapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('430', '12', 'Tlalchapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('431', '12', 'Tlalixtaquilla de Maldonado', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('432', '12', 'Tlapa de Comonfort', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('433', '12', 'Tlapehuala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('434', '12', 'La Unión de Isidoro Montes de Oca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('435', '12', 'Xalpatláhuac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('436', '12', 'Xochihuehuetlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('437', '12', 'Xochistlahuaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('438', '12', 'Zapotitlán Tablas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('439', '12', 'Zirándaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('440', '12', 'Zitlala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('441', '12', 'Eduardo Neri', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('442', '12', 'Acatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('443', '12', 'Marquelia', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('444', '12', 'Cochoapa el Grande', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('445', '12', 'José Joaquín de Herrera', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('446', '12', 'Juchitán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('447', '12', 'Iliatenco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('448', '13', 'Acatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('449', '13', 'Acaxochitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('450', '13', 'Actopan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('451', '13', 'Agua Blanca de Iturbide', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('452', '13', 'Ajacuba', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('453', '13', 'Alfajayucan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('454', '13', 'Almoloya', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('455', '13', 'Apan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('456', '13', 'El Arenal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('457', '13', 'Atitalaquia', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('458', '13', 'Atlapexco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('459', '13', 'Atotonilco el Grande', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('460', '13', 'Atotonilco de Tula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('461', '13', 'Calnali', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('462', '13', 'Cardonal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('463', '13', 'Cuautepec de Hinojosa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('464', '13', 'Chapantongo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('465', '13', 'Chapulhuacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('466', '13', 'Chilcuautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('467', '13', 'Eloxochitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('468', '13', 'Emiliano Zapata', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('469', '13', 'Epazoyucan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('470', '13', 'Francisco I. Madero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('471', '13', 'Huasca de Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('472', '13', 'Huautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('473', '13', 'Huazalingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('474', '13', 'Huehuetla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('475', '13', 'Huejutla de Reyes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('476', '13', 'Huichapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('477', '13', 'Ixmiquilpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('478', '13', 'Jacala de Ledezma', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('479', '13', 'Jaltocán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('480', '13', 'Juárez Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('481', '13', 'Lolotla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('482', '13', 'Metepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('483', '13', 'San Agustín Metzquititlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('484', '13', 'Metztitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('485', '13', 'Mineral del Chico', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('486', '13', 'Mineral del Monte', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('487', '13', 'La Misión', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('488', '13', 'Mixquiahuala de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('489', '13', 'Molango de Escamilla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('490', '13', 'Nicolás Flores', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('491', '13', 'Nopala de Villagrán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('492', '13', 'Omitlán de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('493', '13', 'San Felipe Orizatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('494', '13', 'Pacula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('495', '13', 'Pachuca de Soto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('496', '13', 'Pisaflores', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('497', '13', 'Progreso de Obregón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('498', '13', 'Mineral de la Reforma', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('499', '13', 'San Agustín Tlaxiaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('500', '13', 'San Bartolo Tutotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('501', '13', 'San Salvador', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('502', '13', 'Santiago de Anaya', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('503', '13', 'Santiago Tulantepec de Lugo Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('504', '13', 'Singuilucan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('505', '13', 'Tasquillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('506', '13', 'Tecozautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('507', '13', 'Tenango de Doria', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('508', '13', 'Tepeapulco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('509', '13', 'Tepehuacán de Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('510', '13', 'Tepeji del Río de Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('511', '13', 'Tepetitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('512', '13', 'Tetepango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('513', '13', 'Villa de Tezontepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('514', '13', 'Tezontepec de Aldama', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('515', '13', 'Tianguistengo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('516', '13', 'Tizayuca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('517', '13', 'Tlahuelilpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('518', '13', 'Tlahuiltepa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('519', '13', 'Tlanalapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('520', '13', 'Tlanchinol', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('521', '13', 'Tlaxcoapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('522', '13', 'Tolcayuca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('523', '13', 'Tula de Allende', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('524', '13', 'Tulancingo de Bravo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('525', '13', 'Xochiatipan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('526', '13', 'Xochicoatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('527', '13', 'Yahualica', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('528', '13', 'Zacualtipán de Ángeles', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('529', '13', 'Zapotlán de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('530', '13', 'Zempoala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('531', '13', 'Zimapán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('532', '14', 'Acatic', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('533', '14', 'Acatlán de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('534', '14', 'Ahualulco de Mercado', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('535', '14', 'Amacueca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('536', '14', 'Amatitán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('537', '14', 'Ameca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('538', '14', 'San Juanito de Escobedo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('539', '14', 'Arandas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('540', '14', 'El Arenal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('541', '14', 'Atemajac de Brizuela', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('542', '14', 'Atengo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('543', '14', 'Atenguillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('544', '14', 'Atotonilco el Alto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('545', '14', 'Atoyac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('546', '14', 'Autlán de Navarro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('547', '14', 'Ayotlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('548', '14', 'Ayutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('549', '14', 'La Barca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('550', '14', 'Bolaños', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('551', '14', 'Cabo Corrientes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('552', '14', 'Casimiro Castillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('553', '14', 'Cihuatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('554', '14', 'Zapotlán el Grande', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('555', '14', 'Cocula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('556', '14', 'Colotlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('557', '14', 'Concepción de Buenos Aires', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('558', '14', 'Cuautitlán de García Barragán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('559', '14', 'Cuautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('560', '14', 'Cuquío', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('561', '14', 'Chapala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('562', '14', 'Chimaltitán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('563', '14', 'Chiquilistlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('564', '14', 'Degollado', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('565', '14', 'Ejutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('566', '14', 'Encarnación de Díaz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('567', '14', 'Etzatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('568', '14', 'El Grullo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('569', '14', 'Guachinango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('570', '14', 'Guadalajara', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('571', '14', 'Hostotipaquillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('572', '14', 'Huejúcar', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('573', '14', 'Huejuquilla el Alto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('574', '14', 'La Huerta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('575', '14', 'Ixtlahuacán de los Membrillos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('576', '14', 'Ixtlahuacán del Río', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('577', '14', 'Jalostotitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('578', '14', 'Jamay', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('579', '14', 'Jesús María', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('580', '14', 'Jilotlán de los Dolores', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('581', '14', 'Jocotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('582', '14', 'Juanacatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('583', '14', 'Juchitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('584', '14', 'Lagos de Moreno', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('585', '14', 'El Limón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('586', '14', 'Magdalena', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('587', '14', 'Santa María del Oro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('588', '14', 'La Manzanilla de la Paz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('589', '14', 'Mascota', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('590', '14', 'Mazamitla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('591', '14', 'Mexticacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('592', '14', 'Mezquitic', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('593', '14', 'Mixtlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('594', '14', 'Ocotlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('595', '14', 'Ojuelos de Jalisco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('596', '14', 'Pihuamo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('597', '14', 'Poncitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('598', '14', 'Puerto Vallarta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('599', '14', 'Villa Purificación', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('600', '14', 'Quitupan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('601', '14', 'El Salto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('602', '14', 'San Cristóbal de la Barranca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('603', '14', 'San Diego de Alejandría', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('604', '14', 'San Juan de los Lagos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('605', '14', 'San Julián', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('606', '14', 'San Marcos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('607', '14', 'San Martín de Bolaños', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('608', '14', 'San Martín Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('609', '14', 'San Miguel el Alto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('610', '14', 'Gómez Farías', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('611', '14', 'San Sebastián del Oeste', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('612', '14', 'Santa María de los Ángeles', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('613', '14', 'Sayula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('614', '14', 'Tala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('615', '14', 'Talpa de Allende', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('616', '14', 'Tamazula de Gordiano', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('617', '14', 'Tapalpa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('618', '14', 'Tecalitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('619', '14', 'Tecolotlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('620', '14', 'Techaluta de Montenegro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('621', '14', 'Tenamaxtlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('622', '14', 'Teocaltiche', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('623', '14', 'Teocuitatlán de Corona', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('624', '14', 'Tepatitlán de Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('625', '14', 'Tequila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('626', '14', 'Teuchitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('627', '14', 'Tizapán el Alto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('628', '14', 'Tlajomulco de Zúñiga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('629', '14', 'San Pedro Tlaquepaque', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('630', '14', 'Tolimán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('631', '14', 'Tomatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('632', '14', 'Tonalá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('633', '14', 'Tonaya', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('634', '14', 'Tonila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('635', '14', 'Totatiche', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('636', '14', 'Tototlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('637', '14', 'Tuxcacuesco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('638', '14', 'Tuxcueca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('639', '14', 'Tuxpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('640', '14', 'Unión de San Antonio', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('641', '14', 'Unión de Tula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('642', '14', 'Valle de Guadalupe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('643', '14', 'Valle de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('644', '14', 'San Gabriel', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('645', '14', 'Villa Corona', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('646', '14', 'Villa Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('647', '14', 'Villa Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('648', '14', 'Cañadas de Obregón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('649', '14', 'Yahualica de González Gallo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('650', '14', 'Zacoalco de Torres', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('651', '14', 'Zapopan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('652', '14', 'Zapotiltic', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('653', '14', 'Zapotitlán de Vadillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('654', '14', 'Zapotlán del Rey', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('655', '14', 'Zapotlanejo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('656', '14', 'San Ignacio Cerro Gordo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('657', '15', 'Acambay de Ruíz Castañeda', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('658', '15', 'Acolman', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('659', '15', 'Aculco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('660', '15', 'Almoloya de Alquisiras', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('661', '15', 'Almoloya de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('662', '15', 'Almoloya del Río', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('663', '15', 'Amanalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('664', '15', 'Amatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('665', '15', 'Amecameca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('666', '15', 'Apaxco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('667', '15', 'Atenco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('668', '15', 'Atizapán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('669', '15', 'Atizapán de Zaragoza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('670', '15', 'Atlacomulco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('671', '15', 'Atlautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('672', '15', 'Axapusco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('673', '15', 'Ayapango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('674', '15', 'Calimaya', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('675', '15', 'Capulhuac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('676', '15', 'Coacalco de Berriozábal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('677', '15', 'Coatepec Harinas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('678', '15', 'Cocotitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('679', '15', 'Coyotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('680', '15', 'Cuautitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('681', '15', 'Chalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('682', '15', 'Chapa de Mota', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('683', '15', 'Chapultepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('684', '15', 'Chiautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('685', '15', 'Chicoloapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('686', '15', 'Chiconcuac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('687', '15', 'Chimalhuacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('688', '15', 'Donato Guerra', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('689', '15', 'Ecatepec de Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('690', '15', 'Ecatzingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('691', '15', 'Huehuetoca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('692', '15', 'Hueypoxtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('693', '15', 'Huixquilucan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('694', '15', 'Isidro Fabela', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('695', '15', 'Ixtapaluca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('696', '15', 'Ixtapan de la Sal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('697', '15', 'Ixtapan del Oro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('698', '15', 'Ixtlahuaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('699', '15', 'Xalatlaco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('700', '15', 'Jaltenco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('701', '15', 'Jilotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('702', '15', 'Jilotzingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('703', '15', 'Jiquipilco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('704', '15', 'Jocotitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('705', '15', 'Joquicingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('706', '15', 'Juchitepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('707', '15', 'Lerma', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('708', '15', 'Malinalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('709', '15', 'Melchor Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('710', '15', 'Metepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('711', '15', 'Mexicaltzingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('712', '15', 'Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('713', '15', 'Naucalpan de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('714', '15', 'Nezahualcóyotl', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('715', '15', 'Nextlalpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('716', '15', 'Nicolás Romero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('717', '15', 'Nopaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('718', '15', 'Ocoyoacac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('719', '15', 'Ocuilan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('720', '15', 'El Oro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('721', '15', 'Otumba', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('722', '15', 'Otzoloapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('723', '15', 'Otzolotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('724', '15', 'Ozumba', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('725', '15', 'Papalotla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('726', '15', 'La Paz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('727', '15', 'Polotitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('728', '15', 'Rayón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('729', '15', 'San Antonio la Isla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('730', '15', 'San Felipe del Progreso', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('731', '15', 'San Martín de las Pirámides', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('732', '15', 'San Mateo Atenco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('733', '15', 'San Simón de Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('734', '15', 'Santo Tomás', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('735', '15', 'Soyaniquilpan de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('736', '15', 'Sultepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('737', '15', 'Tecámac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('738', '15', 'Tejupilco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('739', '15', 'Temamatla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('740', '15', 'Temascalapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('741', '15', 'Temascalcingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('742', '15', 'Temascaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('743', '15', 'Temoaya', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('744', '15', 'Tenancingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('745', '15', 'Tenango del Aire', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('746', '15', 'Tenango del Valle', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('747', '15', 'Teoloyucan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('748', '15', 'Teotihuacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('749', '15', 'Tepetlaoxtoc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('750', '15', 'Tepetlixpa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('751', '15', 'Tepotzotlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('752', '15', 'Tequixquiac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('753', '15', 'Texcaltitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('754', '15', 'Texcalyacac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('755', '15', 'Texcoco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('756', '15', 'Tezoyuca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('757', '15', 'Tianguistenco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('758', '15', 'Timilpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('759', '15', 'Tlalmanalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('760', '15', 'Tlalnepantla de Baz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('761', '15', 'Tlatlaya', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('762', '15', 'Toluca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('763', '15', 'Tonatico', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('764', '15', 'Tultepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('765', '15', 'Tultitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('766', '15', 'Valle de Bravo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('767', '15', 'Villa de Allende', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('768', '15', 'Villa del Carbón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('769', '15', 'Villa Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('770', '15', 'Villa Victoria', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('771', '15', 'Xonacatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('772', '15', 'Zacazonapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('773', '15', 'Zacualpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('774', '15', 'Zinacantepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('775', '15', 'Zumpahuacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('776', '15', 'Zumpango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('777', '15', 'Cuautitlán Izcalli', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('778', '15', 'Valle de Chalco Solidaridad', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('779', '15', 'Luvianos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('780', '15', 'San José del Rincón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('781', '15', 'Tonanitla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('782', '16', 'Acuitzio', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('783', '16', 'Aguililla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('784', '16', 'Álvaro Obregón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('785', '16', 'Angamacutiro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('786', '16', 'Angangueo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('787', '16', 'Apatzingán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('788', '16', 'Aporo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('789', '16', 'Aquila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('790', '16', 'Ario', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('791', '16', 'Arteaga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('792', '16', 'Briseñas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('793', '16', 'Buenavista', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('794', '16', 'Carácuaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('795', '16', 'Coahuayana', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('796', '16', 'Coalcomán de Vázquez Pallares', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('797', '16', 'Coeneo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('798', '16', 'Contepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('799', '16', 'Copándaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('800', '16', 'Cotija', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('801', '16', 'Cuitzeo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('802', '16', 'Charapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('803', '16', 'Charo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('804', '16', 'Chavinda', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('805', '16', 'Cherán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('806', '16', 'Chilchota', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('807', '16', 'Chinicuila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('808', '16', 'Chucándiro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('809', '16', 'Churintzio', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('810', '16', 'Churumuco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('811', '16', 'Ecuandureo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('812', '16', 'Epitacio Huerta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('813', '16', 'Erongarícuaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('814', '16', 'Gabriel Zamora', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('815', '16', 'Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('816', '16', 'La Huacana', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('817', '16', 'Huandacareo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('818', '16', 'Huaniqueo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('819', '16', 'Huetamo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('820', '16', 'Huiramba', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('821', '16', 'Indaparapeo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('822', '16', 'Irimbo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('823', '16', 'Ixtlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('824', '16', 'Jacona', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('825', '16', 'Jiménez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('826', '16', 'Jiquilpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('827', '16', 'Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('828', '16', 'Jungapeo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('829', '16', 'Lagunillas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('830', '16', 'Madero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('831', '16', 'Maravatío', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('832', '16', 'Marcos Castellanos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('833', '16', 'Lázaro Cárdenas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('834', '16', 'Morelia', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('835', '16', 'Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('836', '16', 'Múgica', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('837', '16', 'Nahuatzen', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('838', '16', 'Nocupétaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('839', '16', 'Nuevo Parangaricutiro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('840', '16', 'Nuevo Urecho', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('841', '16', 'Numarán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('842', '16', 'Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('843', '16', 'Pajacuarán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('844', '16', 'Panindícuaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('845', '16', 'Parácuaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('846', '16', 'Paracho', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('847', '16', 'Pátzcuaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('848', '16', 'Penjamillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('849', '16', 'Peribán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('850', '16', 'La Piedad', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('851', '16', 'Purépero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('852', '16', 'Puruándiro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('853', '16', 'Queréndaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('854', '16', 'Quiroga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('855', '16', 'Cojumatlán de Régules', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('856', '16', 'Los Reyes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('857', '16', 'Sahuayo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('858', '16', 'San Lucas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('859', '16', 'Santa Ana Maya', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('860', '16', 'Salvador Escalante', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('861', '16', 'Senguio', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('862', '16', 'Susupuato', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('863', '16', 'Tacámbaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('864', '16', 'Tancítaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('865', '16', 'Tangamandapio', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('866', '16', 'Tangancícuaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('867', '16', 'Tanhuato', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('868', '16', 'Taretan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('869', '16', 'Tarímbaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('870', '16', 'Tepalcatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('871', '16', 'Tingambato', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('872', '16', 'Tingüindín', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('873', '16', 'Tiquicheo de Nicolás Romero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('874', '16', 'Tlalpujahua', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('875', '16', 'Tlazazalca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('876', '16', 'Tocumbo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('877', '16', 'Tumbiscatío', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('878', '16', 'Turicato', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('879', '16', 'Tuxpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('880', '16', 'Tuzantla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('881', '16', 'Tzintzuntzan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('882', '16', 'Tzitzio', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('883', '16', 'Uruapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('884', '16', 'Venustiano Carranza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('885', '16', 'Villamar', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('886', '16', 'Vista Hermosa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('887', '16', 'Yurécuaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('888', '16', 'Zacapu', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('889', '16', 'Zamora', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('890', '16', 'Zináparo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('891', '16', 'Zinapécuaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('892', '16', 'Ziracuaretiro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('893', '16', 'Zitácuaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('894', '16', 'José Sixto Verduzco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('895', '17', 'Amacuzac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('896', '17', 'Atlatlahucan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('897', '17', 'Axochiapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('898', '17', 'Ayala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('899', '17', 'Coatlán del Río', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('900', '17', 'Cuautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('901', '17', 'Cuernavaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('902', '17', 'Emiliano Zapata', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('903', '17', 'Huitzilac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('904', '17', 'Jantetelco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('905', '17', 'Jiutepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('906', '17', 'Jojutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('907', '17', 'Jonacatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('908', '17', 'Mazatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('909', '17', 'Miacatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('910', '17', 'Ocuituco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('911', '17', 'Puente de Ixtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('912', '17', 'Temixco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('913', '17', 'Tepalcingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('914', '17', 'Tepoztlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('915', '17', 'Tetecala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('916', '17', 'Tetela del Volcán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('917', '17', 'Tlalnepantla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('918', '17', 'Tlaltizapán de Zapata', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('919', '17', 'Tlaquiltenango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('920', '17', 'Tlayacapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('921', '17', 'Totolapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('922', '17', 'Xochitepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('923', '17', 'Yautepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('924', '17', 'Yecapixtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('925', '17', 'Zacatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('926', '17', 'Zacualpan de Amilpas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('927', '17', 'Temoac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('928', '18', 'Acaponeta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('929', '18', 'Ahuacatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('930', '18', 'Amatlán de Cañas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('931', '18', 'Compostela', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('932', '18', 'Huajicori', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('933', '18', 'Ixtlán del Río', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('934', '18', 'Jala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('935', '18', 'Xalisco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('936', '18', 'Del Nayar', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('937', '18', 'Rosamorada', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('938', '18', 'Ruíz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('939', '18', 'San Blas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('940', '18', 'San Pedro Lagunillas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('941', '18', 'Santa María del Oro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('942', '18', 'Santiago Ixcuintla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('943', '18', 'Tecuala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('944', '18', 'Tepic', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('945', '18', 'Tuxpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('946', '18', 'La Yesca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('947', '18', 'Bahía de Banderas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('948', '19', 'Abasolo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('949', '19', 'Agualeguas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('950', '19', 'Los Aldamas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('951', '19', 'Allende', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('952', '19', 'Anáhuac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('953', '19', 'Apodaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('954', '19', 'Aramberri', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('955', '19', 'Bustamante', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('956', '19', 'Cadereyta Jiménez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('957', '19', 'El Carmen', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('958', '19', 'Cerralvo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('959', '19', 'Ciénega de Flores', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('960', '19', 'China', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('961', '19', 'Doctor Arroyo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('962', '19', 'Doctor Coss', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('963', '19', 'Doctor González', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('964', '19', 'Galeana', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('965', '19', 'García', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('966', '19', 'San Pedro Garza García', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('967', '19', 'General Bravo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('968', '19', 'General Escobedo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('969', '19', 'General Terán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('970', '19', 'General Treviño', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('971', '19', 'General Zaragoza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('972', '19', 'General Zuazua', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('973', '19', 'Guadalupe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('974', '19', 'Los Herreras', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('975', '19', 'Higueras', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('976', '19', 'Hualahuises', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('977', '19', 'Iturbide', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('978', '19', 'Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('979', '19', 'Lampazos de Naranjo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('980', '19', 'Linares', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('981', '19', 'Marín', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('982', '19', 'Melchor Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('983', '19', 'Mier y Noriega', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('984', '19', 'Mina', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('985', '19', 'Montemorelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('986', '19', 'Monterrey', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('987', '19', 'Parás', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('988', '19', 'Pesquería', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('989', '19', 'Los Ramones', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('990', '19', 'Rayones', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('991', '19', 'Sabinas Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('992', '19', 'Salinas Victoria', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('993', '19', 'San Nicolás de los Garza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('994', '19', 'Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('995', '19', 'Santa Catarina', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('996', '19', 'Santiago', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('997', '19', 'Vallecillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('998', '19', 'Villaldama', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('999', '20', 'Abejones', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1000', '20', 'Acatlán de Pérez Figueroa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1001', '20', 'Asunción Cacalotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1002', '20', 'Asunción Cuyotepeji', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1003', '20', 'Asunción Ixtaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1004', '20', 'Asunción Nochixtlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1005', '20', 'Asunción Ocotlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1006', '20', 'Asunción Tlacolulita', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1007', '20', 'Ayotzintepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1008', '20', 'El Barrio de la Soledad', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1009', '20', 'Calihualá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1010', '20', 'Candelaria Loxicha', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1011', '20', 'Ciénega de Zimatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1012', '20', 'Ciudad Ixtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1013', '20', 'Coatecas Altas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1014', '20', 'Coicoyán de las Flores', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1015', '20', 'La Compañía', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1016', '20', 'Concepción Buenavista', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1017', '20', 'Concepción Pápalo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1018', '20', 'Constancia del Rosario', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1019', '20', 'Cosolapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1020', '20', 'Cosoltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1021', '20', 'Cuilápam de Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1022', '20', 'Cuyamecalco Villa de Zaragoza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1023', '20', 'Chahuites', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1024', '20', 'Chalcatongo de Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1025', '20', 'Chiquihuitlán de Benito Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1026', '20', 'Heroica Ciudad de Ejutla de Crespo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1027', '20', 'Eloxochitlán de Flores Magón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1028', '20', 'El Espinal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1029', '20', 'Tamazulápam del Espíritu Santo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1030', '20', 'Fresnillo de Trujano', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1031', '20', 'Guadalupe Etla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1032', '20', 'Guadalupe de Ramírez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1033', '20', 'Guelatao de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1034', '20', 'Guevea de Humboldt', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1035', '20', 'Mesones Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1036', '20', 'Villa Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1037', '20', 'Heroica Ciudad de Huajuapan de León', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1038', '20', 'Huautepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1039', '20', 'Huautla de Jiménez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1040', '20', 'Ixtlán de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1041', '20', 'Heroica Ciudad de Juchitán de Zaragoza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1042', '20', 'Loma Bonita', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1043', '20', 'Magdalena Apasco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1044', '20', 'Magdalena Jaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1045', '20', 'Santa Magdalena Jicotlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1046', '20', 'Magdalena Mixtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1047', '20', 'Magdalena Ocotlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1048', '20', 'Magdalena Peñasco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1049', '20', 'Magdalena Teitipac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1050', '20', 'Magdalena Tequisistlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1051', '20', 'Magdalena Tlacotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1052', '20', 'Magdalena Zahuatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1053', '20', 'Mariscala de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1054', '20', 'Mártires de Tacubaya', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1055', '20', 'Matías Romero Avendaño', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1056', '20', 'Mazatlán Villa de Flores', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1057', '20', 'Miahuatlán de Porfirio Díaz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1058', '20', 'Mixistlán de la Reforma', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1059', '20', 'Monjas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1060', '20', 'Natividad', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1061', '20', 'Nazareno Etla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1062', '20', 'Nejapa de Madero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1063', '20', 'Ixpantepec Nieves', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1064', '20', 'Santiago Niltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1065', '20', 'Oaxaca de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1066', '20', 'Ocotlán de Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1067', '20', 'La Pe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1068', '20', 'Pinotepa de Don Luis', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1069', '20', 'Pluma Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1070', '20', 'San José del Progreso', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1071', '20', 'Putla Villa de Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1072', '20', 'Santa Catarina Quioquitani', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1073', '20', 'Reforma de Pineda', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1074', '20', 'La Reforma', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1075', '20', 'Reyes Etla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1076', '20', 'Rojas de Cuauhtémoc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1077', '20', 'Salina Cruz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1078', '20', 'San Agustín Amatengo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1079', '20', 'San Agustín Atenango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1080', '20', 'San Agustín Chayuco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1081', '20', 'San Agustín de las Juntas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1082', '20', 'San Agustín Etla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1083', '20', 'San Agustín Loxicha', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1084', '20', 'San Agustín Tlacotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1085', '20', 'San Agustín Yatareni', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1086', '20', 'San Andrés Cabecera Nueva', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1087', '20', 'San Andrés Dinicuiti', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1088', '20', 'San Andrés Huaxpaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1089', '20', 'San Andrés Huayápam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1090', '20', 'San Andrés Ixtlahuaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1091', '20', 'San Andrés Lagunas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1092', '20', 'San Andrés Nuxiño', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1093', '20', 'San Andrés Paxtlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1094', '20', 'San Andrés Sinaxtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1095', '20', 'San Andrés Solaga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1096', '20', 'San Andrés Teotilálpam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1097', '20', 'San Andrés Tepetlapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1098', '20', 'San Andrés Yaá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1099', '20', 'San Andrés Zabache', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1100', '20', 'San Andrés Zautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1101', '20', 'San Antonino Castillo Velasco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1102', '20', 'San Antonino el Alto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1103', '20', 'San Antonino Monte Verde', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1104', '20', 'San Antonio Acutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1105', '20', 'San Antonio de la Cal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1106', '20', 'San Antonio Huitepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1107', '20', 'San Antonio Nanahuatípam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1108', '20', 'San Antonio Sinicahua', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1109', '20', 'San Antonio Tepetlapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1110', '20', 'San Baltazar Chichicápam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1111', '20', 'San Baltazar Loxicha', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1112', '20', 'San Baltazar Yatzachi el Bajo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1113', '20', 'San Bartolo Coyotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1114', '20', 'San Bartolomé Ayautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1115', '20', 'San Bartolomé Loxicha', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1116', '20', 'San Bartolomé Quialana', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1117', '20', 'San Bartolomé Yucuañe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1118', '20', 'San Bartolomé Zoogocho', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1119', '20', 'San Bartolo Soyaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1120', '20', 'San Bartolo Yautepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1121', '20', 'San Bernardo Mixtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1122', '20', 'San Blas Atempa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1123', '20', 'San Carlos Yautepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1124', '20', 'San Cristóbal Amatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1125', '20', 'San Cristóbal Amoltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1126', '20', 'San Cristóbal Lachirioag', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1127', '20', 'San Cristóbal Suchixtlahuaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1128', '20', 'San Dionisio del Mar', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1129', '20', 'San Dionisio Ocotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1130', '20', 'San Dionisio Ocotlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1131', '20', 'San Esteban Atatlahuca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1132', '20', 'San Felipe Jalapa de Díaz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1133', '20', 'San Felipe Tejalápam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1134', '20', 'San Felipe Usila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1135', '20', 'San Francisco Cahuacuá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1136', '20', 'San Francisco Cajonos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1137', '20', 'San Francisco Chapulapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1138', '20', 'San Francisco Chindúa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1139', '20', 'San Francisco del Mar', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1140', '20', 'San Francisco Huehuetlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1141', '20', 'San Francisco Ixhuatán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1142', '20', 'San Francisco Jaltepetongo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1143', '20', 'San Francisco Lachigoló', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1144', '20', 'San Francisco Logueche', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1145', '20', 'San Francisco Nuxaño', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1146', '20', 'San Francisco Ozolotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1147', '20', 'San Francisco Sola', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1148', '20', 'San Francisco Telixtlahuaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1149', '20', 'San Francisco Teopan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1150', '20', 'San Francisco Tlapancingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1151', '20', 'San Gabriel Mixtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1152', '20', 'San Ildefonso Amatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1153', '20', 'San Ildefonso Sola', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1154', '20', 'San Ildefonso Villa Alta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1155', '20', 'San Jacinto Amilpas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1156', '20', 'San Jacinto Tlacotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1157', '20', 'San Jerónimo Coatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1158', '20', 'San Jerónimo Silacayoapilla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1159', '20', 'San Jerónimo Sosola', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1160', '20', 'San Jerónimo Taviche', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1161', '20', 'San Jerónimo Tecóatl', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1162', '20', 'San Jorge Nuchita', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1163', '20', 'San José Ayuquila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1164', '20', 'San José Chiltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1165', '20', 'San José del Peñasco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1166', '20', 'San José Estancia Grande', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1167', '20', 'San José Independencia', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1168', '20', 'San José Lachiguiri', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1169', '20', 'San José Tenango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1170', '20', 'San Juan Achiutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1171', '20', 'San Juan Atepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1172', '20', 'Ánimas Trujano', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1173', '20', 'San Juan Bautista Atatlahuca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1174', '20', 'San Juan Bautista Coixtlahuaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1175', '20', 'San Juan Bautista Cuicatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1176', '20', 'San Juan Bautista Guelache', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1177', '20', 'San Juan Bautista Jayacatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1178', '20', 'San Juan Bautista Lo de Soto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1179', '20', 'San Juan Bautista Suchitepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1180', '20', 'San Juan Bautista Tlacoatzintepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1181', '20', 'San Juan Bautista Tlachichilco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1182', '20', 'San Juan Bautista Tuxtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1183', '20', 'San Juan Cacahuatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1184', '20', 'San Juan Cieneguilla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1185', '20', 'San Juan Coatzóspam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1186', '20', 'San Juan Colorado', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1187', '20', 'San Juan Comaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1188', '20', 'San Juan Cotzocón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1189', '20', 'San Juan Chicomezúchil', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1190', '20', 'San Juan Chilateca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1191', '20', 'San Juan del Estado', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1192', '20', 'San Juan del Río', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1193', '20', 'San Juan Diuxi', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1194', '20', 'San Juan Evangelista Analco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1195', '20', 'San Juan Guelavía', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1196', '20', 'San Juan Guichicovi', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1197', '20', 'San Juan Ihualtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1198', '20', 'San Juan Juquila Mixes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1199', '20', 'San Juan Juquila Vijanos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1200', '20', 'San Juan Lachao', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1201', '20', 'San Juan Lachigalla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1202', '20', 'San Juan Lajarcia', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1203', '20', 'San Juan Lalana', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1204', '20', 'San Juan de los Cués', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1205', '20', 'San Juan Mazatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1206', '20', 'San Juan Mixtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1207', '20', 'San Juan Mixtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1208', '20', 'San Juan Ñumí', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1209', '20', 'San Juan Ozolotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1210', '20', 'San Juan Petlapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1211', '20', 'San Juan Quiahije', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1212', '20', 'San Juan Quiotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1213', '20', 'San Juan Sayultepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1214', '20', 'San Juan Tabaá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1215', '20', 'San Juan Tamazola', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1216', '20', 'San Juan Teita', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1217', '20', 'San Juan Teitipac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1218', '20', 'San Juan Tepeuxila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1219', '20', 'San Juan Teposcolula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1220', '20', 'San Juan Yaeé', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1221', '20', 'San Juan Yatzona', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1222', '20', 'San Juan Yucuita', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1223', '20', 'San Lorenzo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1224', '20', 'San Lorenzo Albarradas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1225', '20', 'San Lorenzo Cacaotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1226', '20', 'San Lorenzo Cuaunecuiltitla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1227', '20', 'San Lorenzo Texmelúcan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1228', '20', 'San Lorenzo Victoria', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1229', '20', 'San Lucas Camotlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1230', '20', 'San Lucas Ojitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1231', '20', 'San Lucas Quiaviní', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1232', '20', 'San Lucas Zoquiápam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1233', '20', 'San Luis Amatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1234', '20', 'San Marcial Ozolotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1235', '20', 'San Marcos Arteaga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1236', '20', 'San Martín de los Cansecos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1237', '20', 'San Martín Huamelúlpam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1238', '20', 'San Martín Itunyoso', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1239', '20', 'San Martín Lachilá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1240', '20', 'San Martín Peras', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1241', '20', 'San Martín Tilcajete', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1242', '20', 'San Martín Toxpalan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1243', '20', 'San Martín Zacatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1244', '20', 'San Mateo Cajonos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1245', '20', 'Capulálpam de Méndez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1246', '20', 'San Mateo del Mar', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1247', '20', 'San Mateo Yoloxochitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1248', '20', 'San Mateo Etlatongo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1249', '20', 'San Mateo Nejápam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1250', '20', 'San Mateo Peñasco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1251', '20', 'San Mateo Piñas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1252', '20', 'San Mateo Río Hondo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1253', '20', 'San Mateo Sindihui', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1254', '20', 'San Mateo Tlapiltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1255', '20', 'San Melchor Betaza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1256', '20', 'San Miguel Achiutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1257', '20', 'San Miguel Ahuehuetitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1258', '20', 'San Miguel Aloápam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1259', '20', 'San Miguel Amatitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1260', '20', 'San Miguel Amatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1261', '20', 'San Miguel Coatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1262', '20', 'San Miguel Chicahua', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1263', '20', 'San Miguel Chimalapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1264', '20', 'San Miguel del Puerto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1265', '20', 'San Miguel del Río', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1266', '20', 'San Miguel Ejutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1267', '20', 'San Miguel el Grande', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1268', '20', 'San Miguel Huautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1269', '20', 'San Miguel Mixtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1270', '20', 'San Miguel Panixtlahuaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1271', '20', 'San Miguel Peras', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1272', '20', 'San Miguel Piedras', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1273', '20', 'San Miguel Quetzaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1274', '20', 'San Miguel Santa Flor', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1275', '20', 'Villa Sola de Vega', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1276', '20', 'San Miguel Soyaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1277', '20', 'San Miguel Suchixtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1278', '20', 'Villa Talea de Castro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1279', '20', 'San Miguel Tecomatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1280', '20', 'San Miguel Tenango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1281', '20', 'San Miguel Tequixtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1282', '20', 'San Miguel Tilquiápam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1283', '20', 'San Miguel Tlacamama', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1284', '20', 'San Miguel Tlacotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1285', '20', 'San Miguel Tulancingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1286', '20', 'San Miguel Yotao', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1287', '20', 'San Nicolás', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1288', '20', 'San Nicolás Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1289', '20', 'San Pablo Coatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1290', '20', 'San Pablo Cuatro Venados', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1291', '20', 'San Pablo Etla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1292', '20', 'San Pablo Huitzo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1293', '20', 'San Pablo Huixtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1294', '20', 'San Pablo Macuiltianguis', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1295', '20', 'San Pablo Tijaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1296', '20', 'San Pablo Villa de Mitla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1297', '20', 'San Pablo Yaganiza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1298', '20', 'San Pedro Amuzgos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1299', '20', 'San Pedro Apóstol', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1300', '20', 'San Pedro Atoyac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1301', '20', 'San Pedro Cajonos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1302', '20', 'San Pedro Coxcaltepec Cántaros', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1303', '20', 'San Pedro Comitancillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1304', '20', 'San Pedro el Alto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1305', '20', 'San Pedro Huamelula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1306', '20', 'San Pedro Huilotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1307', '20', 'San Pedro Ixcatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1308', '20', 'San Pedro Ixtlahuaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1309', '20', 'San Pedro Jaltepetongo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1310', '20', 'San Pedro Jicayán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1311', '20', 'San Pedro Jocotipac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1312', '20', 'San Pedro Juchatengo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1313', '20', 'San Pedro Mártir', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1314', '20', 'San Pedro Mártir Quiechapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1315', '20', 'San Pedro Mártir Yucuxaco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1316', '20', 'San Pedro Mixtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1317', '20', 'San Pedro Mixtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1318', '20', 'San Pedro Molinos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1319', '20', 'San Pedro Nopala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1320', '20', 'San Pedro Ocopetatillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1321', '20', 'San Pedro Ocotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1322', '20', 'San Pedro Pochutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1323', '20', 'San Pedro Quiatoni', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1324', '20', 'San Pedro Sochiápam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1325', '20', 'San Pedro Tapanatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1326', '20', 'San Pedro Taviche', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1327', '20', 'San Pedro Teozacoalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1328', '20', 'San Pedro Teutila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1329', '20', 'San Pedro Tidaá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1330', '20', 'San Pedro Topiltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1331', '20', 'San Pedro Totolápam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1332', '20', 'Villa de Tututepec de Melchor Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1333', '20', 'San Pedro Yaneri', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1334', '20', 'San Pedro Yólox', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1335', '20', 'San Pedro y San Pablo Ayutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1336', '20', 'Villa de Etla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1337', '20', 'San Pedro y San Pablo Teposcolula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1338', '20', 'San Pedro y San Pablo Tequixtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1339', '20', 'San Pedro Yucunama', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1340', '20', 'San Raymundo Jalpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1341', '20', 'San Sebastián Abasolo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1342', '20', 'San Sebastián Coatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1343', '20', 'San Sebastián Ixcapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1344', '20', 'San Sebastián Nicananduta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1345', '20', 'San Sebastián Río Hondo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1346', '20', 'San Sebastián Tecomaxtlahuaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1347', '20', 'San Sebastián Teitipac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1348', '20', 'San Sebastián Tutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1349', '20', 'San Simón Almolongas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1350', '20', 'San Simón Zahuatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1351', '20', 'Santa Ana', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1352', '20', 'Santa Ana Ateixtlahuaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1353', '20', 'Santa Ana Cuauhtémoc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1354', '20', 'Santa Ana del Valle', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1355', '20', 'Santa Ana Tavela', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1356', '20', 'Santa Ana Tlapacoyan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1357', '20', 'Santa Ana Yareni', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1358', '20', 'Santa Ana Zegache', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1359', '20', 'Santa Catalina Quierí', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1360', '20', 'Santa Catarina Cuixtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1361', '20', 'Santa Catarina Ixtepeji', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1362', '20', 'Santa Catarina Juquila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1363', '20', 'Santa Catarina Lachatao', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1364', '20', 'Santa Catarina Loxicha', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1365', '20', 'Santa Catarina Mechoacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1366', '20', 'Santa Catarina Minas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1367', '20', 'Santa Catarina Quiané', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1368', '20', 'Santa Catarina Tayata', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1369', '20', 'Santa Catarina Ticuá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1370', '20', 'Santa Catarina Yosonotú', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1371', '20', 'Santa Catarina Zapoquila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1372', '20', 'Santa Cruz Acatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1373', '20', 'Santa Cruz Amilpas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1374', '20', 'Santa Cruz de Bravo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1375', '20', 'Santa Cruz Itundujia', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1376', '20', 'Santa Cruz Mixtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1377', '20', 'Santa Cruz Nundaco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1378', '20', 'Santa Cruz Papalutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1379', '20', 'Santa Cruz Tacache de Mina', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1380', '20', 'Santa Cruz Tacahua', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1381', '20', 'Santa Cruz Tayata', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1382', '20', 'Santa Cruz Xitla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1383', '20', 'Santa Cruz Xoxocotlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1384', '20', 'Santa Cruz Zenzontepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1385', '20', 'Santa Gertrudis', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1386', '20', 'Santa Inés del Monte', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1387', '20', 'Santa Inés Yatzeche', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1388', '20', 'Santa Lucía del Camino', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1389', '20', 'Santa Lucía Miahuatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1390', '20', 'Santa Lucía Monteverde', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1391', '20', 'Santa Lucía Ocotlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1392', '20', 'Santa María Alotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1393', '20', 'Santa María Apazco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1394', '20', 'Santa María la Asunción', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1395', '20', 'Heroica Ciudad de Tlaxiaco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1396', '20', 'Ayoquezco de Aldama', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1397', '20', 'Santa María Atzompa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1398', '20', 'Santa María Camotlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1399', '20', 'Santa María Colotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1400', '20', 'Santa María Cortijo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1401', '20', 'Santa María Coyotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1402', '20', 'Santa María Chachoápam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1403', '20', 'Villa de Chilapa de Díaz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1404', '20', 'Santa María Chilchotla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1405', '20', 'Santa María Chimalapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1406', '20', 'Santa María del Rosario', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1407', '20', 'Santa María del Tule', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1408', '20', 'Santa María Ecatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1409', '20', 'Santa María Guelacé', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1410', '20', 'Santa María Guienagati', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1411', '20', 'Santa María Huatulco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1412', '20', 'Santa María Huazolotitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1413', '20', 'Santa María Ipalapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1414', '20', 'Santa María Ixcatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1415', '20', 'Santa María Jacatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1416', '20', 'Santa María Jalapa del Marqués', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1417', '20', 'Santa María Jaltianguis', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1418', '20', 'Santa María Lachixío', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1419', '20', 'Santa María Mixtequilla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1420', '20', 'Santa María Nativitas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1421', '20', 'Santa María Nduayaco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1422', '20', 'Santa María Ozolotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1423', '20', 'Santa María Pápalo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1424', '20', 'Santa María Peñoles', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1425', '20', 'Santa María Petapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1426', '20', 'Santa María Quiegolani', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1427', '20', 'Santa María Sola', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1428', '20', 'Santa María Tataltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1429', '20', 'Santa María Tecomavaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1430', '20', 'Santa María Temaxcalapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1431', '20', 'Santa María Temaxcaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1432', '20', 'Santa María Teopoxco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1433', '20', 'Santa María Tepantlali', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1434', '20', 'Santa María Texcatitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1435', '20', 'Santa María Tlahuitoltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1436', '20', 'Santa María Tlalixtac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1437', '20', 'Santa María Tonameca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1438', '20', 'Santa María Totolapilla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1439', '20', 'Santa María Xadani', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1440', '20', 'Santa María Yalina', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1441', '20', 'Santa María Yavesía', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1442', '20', 'Santa María Yolotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1443', '20', 'Santa María Yosoyúa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1444', '20', 'Santa María Yucuhiti', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1445', '20', 'Santa María Zacatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1446', '20', 'Santa María Zaniza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1447', '20', 'Santa María Zoquitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1448', '20', 'Santiago Amoltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1449', '20', 'Santiago Apoala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1450', '20', 'Santiago Apóstol', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1451', '20', 'Santiago Astata', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1452', '20', 'Santiago Atitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1453', '20', 'Santiago Ayuquililla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1454', '20', 'Santiago Cacaloxtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1455', '20', 'Santiago Camotlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1456', '20', 'Santiago Comaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1457', '20', 'Santiago Chazumba', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1458', '20', 'Santiago Choápam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1459', '20', 'Santiago del Río', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1460', '20', 'Santiago Huajolotitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1461', '20', 'Santiago Huauclilla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1462', '20', 'Santiago Ihuitlán Plumas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1463', '20', 'Santiago Ixcuintepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1464', '20', 'Santiago Ixtayutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1465', '20', 'Santiago Jamiltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1466', '20', 'Santiago Jocotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1467', '20', 'Santiago Juxtlahuaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1468', '20', 'Santiago Lachiguiri', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1469', '20', 'Santiago Lalopa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1470', '20', 'Santiago Laollaga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1471', '20', 'Santiago Laxopa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1472', '20', 'Santiago Llano Grande', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1473', '20', 'Santiago Matatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1474', '20', 'Santiago Miltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1475', '20', 'Santiago Minas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1476', '20', 'Santiago Nacaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1477', '20', 'Santiago Nejapilla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1478', '20', 'Santiago Nundiche', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1479', '20', 'Santiago Nuyoó', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1480', '20', 'Santiago Pinotepa Nacional', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1481', '20', 'Santiago Suchilquitongo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1482', '20', 'Santiago Tamazola', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1483', '20', 'Santiago Tapextla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1484', '20', 'Villa Tejúpam de la Unión', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1485', '20', 'Santiago Tenango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1486', '20', 'Santiago Tepetlapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1487', '20', 'Santiago Tetepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1488', '20', 'Santiago Texcalcingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1489', '20', 'Santiago Textitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1490', '20', 'Santiago Tilantongo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1491', '20', 'Santiago Tillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1492', '20', 'Santiago Tlazoyaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1493', '20', 'Santiago Xanica', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1494', '20', 'Santiago Xiacuí', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1495', '20', 'Santiago Yaitepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1496', '20', 'Santiago Yaveo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1497', '20', 'Santiago Yolomécatl', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1498', '20', 'Santiago Yosondúa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1499', '20', 'Santiago Yucuyachi', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1500', '20', 'Santiago Zacatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1501', '20', 'Santiago Zoochila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1502', '20', 'Nuevo Zoquiápam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1503', '20', 'Santo Domingo Ingenio', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1504', '20', 'Santo Domingo Albarradas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1505', '20', 'Santo Domingo Armenta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1506', '20', 'Santo Domingo Chihuitán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1507', '20', 'Santo Domingo de Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1508', '20', 'Santo Domingo Ixcatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1509', '20', 'Santo Domingo Nuxaá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1510', '20', 'Santo Domingo Ozolotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1511', '20', 'Santo Domingo Petapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1512', '20', 'Santo Domingo Roayaga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1513', '20', 'Santo Domingo Tehuantepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1514', '20', 'Santo Domingo Teojomulco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1515', '20', 'Santo Domingo Tepuxtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1516', '20', 'Santo Domingo Tlatayápam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1517', '20', 'Santo Domingo Tomaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1518', '20', 'Santo Domingo Tonalá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1519', '20', 'Santo Domingo Tonaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1520', '20', 'Santo Domingo Xagacía', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1521', '20', 'Santo Domingo Yanhuitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1522', '20', 'Santo Domingo Yodohino', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1523', '20', 'Santo Domingo Zanatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1524', '20', 'Santos Reyes Nopala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1525', '20', 'Santos Reyes Pápalo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1526', '20', 'Santos Reyes Tepejillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1527', '20', 'Santos Reyes Yucuná', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1528', '20', 'Santo Tomás Jalieza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1529', '20', 'Santo Tomás Mazaltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1530', '20', 'Santo Tomás Ocotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1531', '20', 'Santo Tomás Tamazulapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1532', '20', 'San Vicente Coatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1533', '20', 'San Vicente Lachixío', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1534', '20', 'San Vicente Nuñú', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1535', '20', 'Silacayoápam', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1536', '20', 'Sitio de Xitlapehua', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1537', '20', 'Soledad Etla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1538', '20', 'Villa de Tamazulápam del Progreso', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1539', '20', 'Tanetze de Zaragoza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1540', '20', 'Taniche', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1541', '20', 'Tataltepec de Valdés', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1542', '20', 'Teococuilco de Marcos Pérez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1543', '20', 'Teotitlán de Flores Magón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1544', '20', 'Teotitlán del Valle', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1545', '20', 'Teotongo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1546', '20', 'Tepelmeme Villa de Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1547', '20', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1548', '20', 'San Jerónimo Tlacochahuaya', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1549', '20', 'Tlacolula de Matamoros', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1550', '20', 'Tlacotepec Plumas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1551', '20', 'Tlalixtac de Cabrera', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1552', '20', 'Totontepec Villa de Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1553', '20', 'Trinidad Zaachila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1554', '20', 'La Trinidad Vista Hermosa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1555', '20', 'Unión Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1556', '20', 'Valerio Trujano', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1557', '20', 'San Juan Bautista Valle Nacional', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1558', '20', 'Villa Díaz Ordaz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1559', '20', 'Yaxe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1560', '20', 'Magdalena Yodocono de Porfirio Díaz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1561', '20', 'Yogana', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1562', '20', 'Yutanduchi de Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1563', '20', 'Villa de Zaachila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1564', '20', 'San Mateo Yucutindoo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1565', '20', 'Zapotitlán Lagunas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1566', '20', 'Zapotitlán Palmas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1567', '20', 'Santa Inés de Zaragoza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1568', '20', 'Zimatlán de Álvarez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1569', '21', 'Acajete', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1570', '21', 'Acateno', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1571', '21', 'Acatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1572', '21', 'Acatzingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1573', '21', 'Acteopan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1574', '21', 'Ahuacatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1575', '21', 'Ahuatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1576', '21', 'Ahuazotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1577', '21', 'Ahuehuetitla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1578', '21', 'Ajalpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1579', '21', 'Albino Zertuche', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1580', '21', 'Aljojuca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1581', '21', 'Altepexi', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1582', '21', 'Amixtlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1583', '21', 'Amozoc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1584', '21', 'Aquixtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1585', '21', 'Atempan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1586', '21', 'Atexcal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1587', '21', 'Atlixco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1588', '21', 'Atoyatempan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1589', '21', 'Atzala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1590', '21', 'Atzitzihuacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1591', '21', 'Atzitzintla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1592', '21', 'Axutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1593', '21', 'Ayotoxco de Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1594', '21', 'Calpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1595', '21', 'Caltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1596', '21', 'Camocuautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1597', '21', 'Caxhuacan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1598', '21', 'Coatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1599', '21', 'Coatzingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1600', '21', 'Cohetzala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1601', '21', 'Cohuecan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1602', '21', 'Coronango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1603', '21', 'Coxcatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1604', '21', 'Coyomeapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1605', '21', 'Coyotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1606', '21', 'Cuapiaxtla de Madero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1607', '21', 'Cuautempan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1608', '21', 'Cuautinchán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1609', '21', 'Cuautlancingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1610', '21', 'Cuayuca de Andrade', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1611', '21', 'Cuetzalan del Progreso', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1612', '21', 'Cuyoaco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1613', '21', 'Chalchicomula de Sesma', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1614', '21', 'Chapulco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1615', '21', 'Chiautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1616', '21', 'Chiautzingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1617', '21', 'Chiconcuautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1618', '21', 'Chichiquila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1619', '21', 'Chietla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1620', '21', 'Chigmecatitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1621', '21', 'Chignahuapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1622', '21', 'Chignautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1623', '21', 'Chila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1624', '21', 'Chila de la Sal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1625', '21', 'Honey', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1626', '21', 'Chilchotla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1627', '21', 'Chinantla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1628', '21', 'Domingo Arenas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1629', '21', 'Eloxochitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1630', '21', 'Epatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1631', '21', 'Esperanza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1632', '21', 'Francisco Z. Mena', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1633', '21', 'General Felipe Ángeles', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1634', '21', 'Guadalupe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1635', '21', 'Guadalupe Victoria', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1636', '21', 'Hermenegildo Galeana', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1637', '21', 'Huaquechula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1638', '21', 'Huatlatlauca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1639', '21', 'Huauchinango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1640', '21', 'Huehuetla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1641', '21', 'Huehuetlán el Chico', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1642', '21', 'Huejotzingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1643', '21', 'Hueyapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1644', '21', 'Hueytamalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1645', '21', 'Hueytlalpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1646', '21', 'Huitzilan de Serdán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1647', '21', 'Huitziltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1648', '21', 'Atlequizayan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1649', '21', 'Ixcamilpa de Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1650', '21', 'Ixcaquixtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1651', '21', 'Ixtacamaxtitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1652', '21', 'Ixtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1653', '21', 'Izúcar de Matamoros', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1654', '21', 'Jalpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1655', '21', 'Jolalpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1656', '21', 'Jonotla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1657', '21', 'Jopala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1658', '21', 'Juan C. Bonilla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1659', '21', 'Juan Galindo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1660', '21', 'Juan N. Méndez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1661', '21', 'Lafragua', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1662', '21', 'Libres', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1663', '21', 'La Magdalena Tlatlauquitepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1664', '21', 'Mazapiltepec de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1665', '21', 'Mixtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1666', '21', 'Molcaxac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1667', '21', 'Cañada Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1668', '21', 'Naupan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1669', '21', 'Nauzontla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1670', '21', 'Nealtican', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1671', '21', 'Nicolás Bravo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1672', '21', 'Nopalucan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1673', '21', 'Ocotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1674', '21', 'Ocoyucan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1675', '21', 'Olintla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1676', '21', 'Oriental', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1677', '21', 'Pahuatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1678', '21', 'Palmar de Bravo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1679', '21', 'Pantepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1680', '21', 'Petlalcingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1681', '21', 'Piaxtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1682', '21', 'Puebla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1683', '21', 'Quecholac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1684', '21', 'Quimixtlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1685', '21', 'Rafael Lara Grajales', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1686', '21', 'Los Reyes de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1687', '21', 'San Andrés Cholula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1688', '21', 'San Antonio Cañada', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1689', '21', 'San Diego la Mesa Tochimiltzingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1690', '21', 'San Felipe Teotlalcingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1691', '21', 'San Felipe Tepatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1692', '21', 'San Gabriel Chilac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1693', '21', 'San Gregorio Atzompa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1694', '21', 'San Jerónimo Tecuanipan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1695', '21', 'San Jerónimo Xayacatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1696', '21', 'San José Chiapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1697', '21', 'San José Miahuatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1698', '21', 'San Juan Atenco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1699', '21', 'San Juan Atzompa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1700', '21', 'San Martín Texmelucan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1701', '21', 'San Martín Totoltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1702', '21', 'San Matías Tlalancaleca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1703', '21', 'San Miguel Ixitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1704', '21', 'San Miguel Xoxtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1705', '21', 'San Nicolás Buenos Aires', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1706', '21', 'San Nicolás de los Ranchos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1707', '21', 'San Pablo Anicano', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1708', '21', 'San Pedro Cholula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1709', '21', 'San Pedro Yeloixtlahuaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1710', '21', 'San Salvador el Seco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1711', '21', 'San Salvador el Verde', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1712', '21', 'San Salvador Huixcolotla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1713', '21', 'San Sebastián Tlacotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1714', '21', 'Santa Catarina Tlaltempan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1715', '21', 'Santa Inés Ahuatempan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1716', '21', 'Santa Isabel Cholula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1717', '21', 'Santiago Miahuatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1718', '21', 'Huehuetlán el Grande', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1719', '21', 'Santo Tomás Hueyotlipan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1720', '21', 'Soltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1721', '21', 'Tecali de Herrera', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1722', '21', 'Tecamachalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1723', '21', 'Tecomatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1724', '21', 'Tehuacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1725', '21', 'Tehuitzingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1726', '21', 'Tenampulco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1727', '21', 'Teopantlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1728', '21', 'Teotlalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1729', '21', 'Tepanco de López', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1730', '21', 'Tepango de Rodríguez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1731', '21', 'Tepatlaxco de Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1732', '21', 'Tepeaca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1733', '21', 'Tepemaxalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1734', '21', 'Tepeojuma', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1735', '21', 'Tepetzintla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1736', '21', 'Tepexco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1737', '21', 'Tepexi de Rodríguez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1738', '21', 'Tepeyahualco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1739', '21', 'Tepeyahualco de Cuauhtémoc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1740', '21', 'Tetela de Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1741', '21', 'Teteles de Avila Castillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1742', '21', 'Teziutlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1743', '21', 'Tianguismanalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1744', '21', 'Tilapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1745', '21', 'Tlacotepec de Benito Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1746', '21', 'Tlacuilotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1747', '21', 'Tlachichuca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1748', '21', 'Tlahuapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1749', '21', 'Tlaltenango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1750', '21', 'Tlanepantla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1751', '21', 'Tlaola', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1752', '21', 'Tlapacoya', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1753', '21', 'Tlapanalá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1754', '21', 'Tlatlauquitepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1755', '21', 'Tlaxco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1756', '21', 'Tochimilco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1757', '21', 'Tochtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1758', '21', 'Totoltepec de Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1759', '21', 'Tulcingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1760', '21', 'Tuzamapan de Galeana', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1761', '21', 'Tzicatlacoyan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1762', '21', 'Venustiano Carranza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1763', '21', 'Vicente Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1764', '21', 'Xayacatlán de Bravo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1765', '21', 'Xicotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1766', '21', 'Xicotlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1767', '21', 'Xiutetelco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1768', '21', 'Xochiapulco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1769', '21', 'Xochiltepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1770', '21', 'Xochitlán de Vicente Suárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1771', '21', 'Xochitlán Todos Santos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1772', '21', 'Yaonáhuac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1773', '21', 'Yehualtepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1774', '21', 'Zacapala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1775', '21', 'Zacapoaxtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1776', '21', 'Zacatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1777', '21', 'Zapotitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1778', '21', 'Zapotitlán de Méndez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1779', '21', 'Zaragoza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1780', '21', 'Zautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1781', '21', 'Zihuateutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1782', '21', 'Zinacatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1783', '21', 'Zongozotla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1784', '21', 'Zoquiapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1785', '21', 'Zoquitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1786', '22', 'Amealco de Bonfil', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1787', '22', 'Pinal de Amoles', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1788', '22', 'Arroyo Seco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1789', '22', 'Cadereyta de Montes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1790', '22', 'Colón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1791', '22', 'Corregidora', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1792', '22', 'Ezequiel Montes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1793', '22', 'Huimilpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1794', '22', 'Jalpan de Serra', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1795', '22', 'Landa de Matamoros', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1796', '22', 'El Marqués', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1797', '22', 'Pedro Escobedo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1798', '22', 'Peñamiller', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1799', '22', 'Querétaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1800', '22', 'San Joaquín', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1801', '22', 'San Juan del Río', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1802', '22', 'Tequisquiapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1803', '22', 'Tolimán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1804', '23', 'Cozumel', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1805', '23', 'Felipe Carrillo Puerto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1806', '23', 'Isla Mujeres', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1807', '23', 'Othón P. Blanco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1808', '23', 'Benito Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1809', '23', 'José María Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1810', '23', 'Lázaro Cárdenas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1811', '23', 'Solidaridad', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1812', '23', 'Tulum', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1813', '23', 'Bacalar', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1814', '24', 'Ahualulco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1815', '24', 'Alaquines', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1816', '24', 'Aquismón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1817', '24', 'Armadillo de los Infante', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1818', '24', 'Cárdenas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1819', '24', 'Catorce', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1820', '24', 'Cedral', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1821', '24', 'Cerritos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1822', '24', 'Cerro de San Pedro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1823', '24', 'Ciudad del Maíz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1824', '24', 'Ciudad Fernández', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1825', '24', 'Tancanhuitz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1826', '24', 'Ciudad Valles', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1827', '24', 'Coxcatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1828', '24', 'Charcas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1829', '24', 'Ebano', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1830', '24', 'Guadalcázar', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1831', '24', 'Huehuetlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1832', '24', 'Lagunillas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1833', '24', 'Matehuala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1834', '24', 'Mexquitic de Carmona', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1835', '24', 'Moctezuma', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1836', '24', 'Rayón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1837', '24', 'Rioverde', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1838', '24', 'Salinas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1839', '24', 'San Antonio', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1840', '24', 'San Ciro de Acosta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1841', '24', 'San Luis Potosí', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1842', '24', 'San Martín Chalchicuautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1843', '24', 'San Nicolás Tolentino', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1844', '24', 'Santa Catarina', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1845', '24', 'Santa María del Río', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1846', '24', 'Santo Domingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1847', '24', 'San Vicente Tancuayalab', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1848', '24', 'Soledad de Graciano Sánchez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1849', '24', 'Tamasopo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1850', '24', 'Tamazunchale', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1851', '24', 'Tampacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1852', '24', 'Tampamolón Corona', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1853', '24', 'Tamuín', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1854', '24', 'Tanlajás', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1855', '24', 'Tanquián de Escobedo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1856', '24', 'Tierra Nueva', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1857', '24', 'Vanegas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1858', '24', 'Venado', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1859', '24', 'Villa de Arriaga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1860', '24', 'Villa de Guadalupe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1861', '24', 'Villa de la Paz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1862', '24', 'Villa de Ramos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1863', '24', 'Villa de Reyes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1864', '24', 'Villa Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1865', '24', 'Villa Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1866', '24', 'Axtla de Terrazas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1867', '24', 'Xilitla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1868', '24', 'Zaragoza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1869', '24', 'Villa de Arista', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1870', '24', 'Matlapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1871', '24', 'El Naranjo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1872', '25', 'Ahome', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1873', '25', 'Angostura', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1874', '25', 'Badiraguato', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1875', '25', 'Concordia', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1876', '25', 'Cosalá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1877', '25', 'Culiacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1878', '25', 'Choix', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1879', '25', 'Elota', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1880', '25', 'Escuinapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1881', '25', 'El Fuerte', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1882', '25', 'Guasave', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1883', '25', 'Mazatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1884', '25', 'Mocorito', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1885', '25', 'Rosario', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1886', '25', 'Salvador Alvarado', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1887', '25', 'San Ignacio', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1888', '25', 'Sinaloa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1889', '25', 'Navolato', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1890', '26', 'Aconchi', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
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
INSERT INTO `ciudades` VALUES ('1962', '27', 'Balancán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1963', '27', 'Cárdenas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1964', '27', 'Centla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1965', '27', 'Centro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1966', '27', 'Comalcalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1967', '27', 'Cunduacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1968', '27', 'Emiliano Zapata', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1969', '27', 'Huimanguillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1970', '27', 'Jalapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1971', '27', 'Jalpa de Méndez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1972', '27', 'Jonuta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1973', '27', 'Macuspana', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1974', '27', 'Nacajuca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1975', '27', 'Paraíso', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1976', '27', 'Tacotalpa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1977', '27', 'Teapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1978', '27', 'Tenosique', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1979', '28', 'Abasolo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1980', '28', 'Aldama', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1981', '28', 'Altamira', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1982', '28', 'Antiguo Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1983', '28', 'Burgos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1984', '28', 'Bustamante', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1985', '28', 'Camargo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1986', '28', 'Casas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1987', '28', 'Ciudad Madero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1988', '28', 'Cruillas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1989', '28', 'Gómez Farías', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1990', '28', 'González', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1991', '28', 'Güémez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1992', '28', 'Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1993', '28', 'Gustavo Díaz Ordaz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1994', '28', 'Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1995', '28', 'Jaumave', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1996', '28', 'Jiménez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1997', '28', 'Llera', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1998', '28', 'Mainero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('1999', '28', 'El Mante', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2000', '28', 'Matamoros', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2001', '28', 'Méndez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2002', '28', 'Mier', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2003', '28', 'Miguel Alemán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2004', '28', 'Miquihuana', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2005', '28', 'Nuevo Laredo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2006', '28', 'Nuevo Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2007', '28', 'Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2008', '28', 'Padilla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2009', '28', 'Palmillas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2010', '28', 'Reynosa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2011', '28', 'Río Bravo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2012', '28', 'San Carlos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2013', '28', 'San Fernando', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2014', '28', 'San Nicolás', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2015', '28', 'Soto la Marina', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2016', '28', 'Tampico', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2017', '28', 'Tula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2018', '28', 'Valle Hermoso', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2019', '28', 'Victoria', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2020', '28', 'Villagrán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2021', '28', 'Xicoténcatl', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2022', '29', 'Amaxac de Guerrero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2023', '29', 'Apetatitlán de Antonio Carvajal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2024', '29', 'Atlangatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2025', '29', 'Atltzayanca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2026', '29', 'Apizaco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2027', '29', 'Calpulalpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2028', '29', 'El Carmen Tequexquitla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2029', '29', 'Cuapiaxtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2030', '29', 'Cuaxomulco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2031', '29', 'Chiautempan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2032', '29', 'Muñoz de Domingo Arenas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2033', '29', 'Españita', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2034', '29', 'Huamantla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2035', '29', 'Hueyotlipan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2036', '29', 'Ixtacuixtla de Mariano Matamoros', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2037', '29', 'Ixtenco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2038', '29', 'Mazatecochco de José María Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2039', '29', 'Contla de Juan Cuamatzi', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2040', '29', 'Tepetitla de Lardizábal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2041', '29', 'Sanctórum de Lázaro Cárdenas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2042', '29', 'Nanacamilpa de Mariano Arista', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2043', '29', 'Acuamanala de Miguel Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2044', '29', 'Natívitas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2045', '29', 'Panotla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2046', '29', 'San Pablo del Monte', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2047', '29', 'Santa Cruz Tlaxcala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2048', '29', 'Tenancingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2049', '29', 'Teolocholco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2050', '29', 'Tepeyanco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2051', '29', 'Terrenate', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2052', '29', 'Tetla de la Solidaridad', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2053', '29', 'Tetlatlahuca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2054', '29', 'Tlaxcala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2055', '29', 'Tlaxco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2056', '29', 'Tocatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2057', '29', 'Totolac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2058', '29', 'Ziltlaltépec de Trinidad Sánchez Santos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2059', '29', 'Tzompantepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2060', '29', 'Xaloztoc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2061', '29', 'Xaltocan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2062', '29', 'Papalotla de Xicohténcatl', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2063', '29', 'Xicohtzinco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2064', '29', 'Yauhquemehcan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2065', '29', 'Zacatelco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2066', '29', 'Benito Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2067', '29', 'Emiliano Zapata', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2068', '29', 'Lázaro Cárdenas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2069', '29', 'La Magdalena Tlaltelulco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2070', '29', 'San Damián Texóloc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2071', '29', 'San Francisco Tetlanohcan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2072', '29', 'San Jerónimo Zacualpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2073', '29', 'San José Teacalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2074', '29', 'San Juan Huactzinco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2075', '29', 'San Lorenzo Axocomanitla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2076', '29', 'San Lucas Tecopilco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2077', '29', 'Santa Ana Nopalucan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2078', '29', 'Santa Apolonia Teacalco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2079', '29', 'Santa Catarina Ayometla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2080', '29', 'Santa Cruz Quilehtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2081', '29', 'Santa Isabel Xiloxoxtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2082', '30', 'Acajete', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2083', '30', 'Acatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2084', '30', 'Acayucan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2085', '30', 'Actopan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2086', '30', 'Acula', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2087', '30', 'Acultzingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2088', '30', 'Camarón de Tejeda', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2089', '30', 'Alpatláhuac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2090', '30', 'Alto Lucero de Gutiérrez Barrios', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2091', '30', 'Altotonga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2092', '30', 'Alvarado', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2093', '30', 'Amatitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2094', '30', 'Naranjos Amatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2095', '30', 'Amatlán de los Reyes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2096', '30', 'Angel R. Cabada', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2097', '30', 'La Antigua', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2098', '30', 'Apazapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2099', '30', 'Aquila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2100', '30', 'Astacinga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2101', '30', 'Atlahuilco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2102', '30', 'Atoyac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2103', '30', 'Atzacan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2104', '30', 'Atzalan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2105', '30', 'Tlaltetela', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2106', '30', 'Ayahualulco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2107', '30', 'Banderilla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2108', '30', 'Benito Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2109', '30', 'Boca del Río', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2110', '30', 'Calcahualco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2111', '30', 'Camerino Z. Mendoza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2112', '30', 'Carrillo Puerto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2113', '30', 'Catemaco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2114', '30', 'Cazones de Herrera', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2115', '30', 'Cerro Azul', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2116', '30', 'Citlaltépetl', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2117', '30', 'Coacoatzintla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2118', '30', 'Coahuitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2119', '30', 'Coatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2120', '30', 'Coatzacoalcos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2121', '30', 'Coatzintla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2122', '30', 'Coetzala', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2123', '30', 'Colipa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2124', '30', 'Comapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2125', '30', 'Córdoba', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2126', '30', 'Cosamaloapan de Carpio', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2127', '30', 'Cosautlán de Carvajal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2128', '30', 'Coscomatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2129', '30', 'Cosoleacaque', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2130', '30', 'Cotaxtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2131', '30', 'Coxquihui', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2132', '30', 'Coyutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2133', '30', 'Cuichapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2134', '30', 'Cuitláhuac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2135', '30', 'Chacaltianguis', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2136', '30', 'Chalma', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2137', '30', 'Chiconamel', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2138', '30', 'Chiconquiaco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2139', '30', 'Chicontepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2140', '30', 'Chinameca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2141', '30', 'Chinampa de Gorostiza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2142', '30', 'Las Choapas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2143', '30', 'Chocamán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2144', '30', 'Chontla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2145', '30', 'Chumatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2146', '30', 'Emiliano Zapata', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2147', '30', 'Espinal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2148', '30', 'Filomeno Mata', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2149', '30', 'Fortín', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2150', '30', 'Gutiérrez Zamora', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2151', '30', 'Hidalgotitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2152', '30', 'Huatusco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2153', '30', 'Huayacocotla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2154', '30', 'Hueyapan de Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2155', '30', 'Huiloapan de Cuauhtémoc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2156', '30', 'Ignacio de la Llave', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2157', '30', 'Ilamatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2158', '30', 'Isla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2159', '30', 'Ixcatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2160', '30', 'Ixhuacán de los Reyes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2161', '30', 'Ixhuatlán del Café', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2162', '30', 'Ixhuatlancillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2163', '30', 'Ixhuatlán del Sureste', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2164', '30', 'Ixhuatlán de Madero', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2165', '30', 'Ixmatlahuacan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2166', '30', 'Ixtaczoquitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2167', '30', 'Jalacingo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2168', '30', 'Xalapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2169', '30', 'Jalcomulco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2170', '30', 'Jáltipan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2171', '30', 'Jamapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2172', '30', 'Jesús Carranza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2173', '30', 'Xico', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2174', '30', 'Jilotepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2175', '30', 'Juan Rodríguez Clara', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2176', '30', 'Juchique de Ferrer', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2177', '30', 'Landero y Coss', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2178', '30', 'Lerdo de Tejada', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2179', '30', 'Magdalena', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2180', '30', 'Maltrata', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2181', '30', 'Manlio Fabio Altamirano', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2182', '30', 'Mariano Escobedo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2183', '30', 'Martínez de la Torre', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2184', '30', 'Mecatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2185', '30', 'Mecayapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2186', '30', 'Medellín de Bravo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2187', '30', 'Miahuatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2188', '30', 'Las Minas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2189', '30', 'Minatitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2190', '30', 'Misantla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2191', '30', 'Mixtla de Altamirano', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2192', '30', 'Moloacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2193', '30', 'Naolinco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2194', '30', 'Naranjal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2195', '30', 'Nautla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2196', '30', 'Nogales', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2197', '30', 'Oluta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2198', '30', 'Omealca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2199', '30', 'Orizaba', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2200', '30', 'Otatitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2201', '30', 'Oteapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2202', '30', 'Ozuluama de Mascareñas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2203', '30', 'Pajapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2204', '30', 'Pánuco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2205', '30', 'Papantla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2206', '30', 'Paso del Macho', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2207', '30', 'Paso de Ovejas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2208', '30', 'La Perla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2209', '30', 'Perote', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2210', '30', 'Platón Sánchez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2211', '30', 'Playa Vicente', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2212', '30', 'Poza Rica de Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2213', '30', 'Las Vigas de Ramírez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2214', '30', 'Pueblo Viejo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2215', '30', 'Puente Nacional', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2216', '30', 'Rafael Delgado', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2217', '30', 'Rafael Lucio', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2218', '30', 'Los Reyes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2219', '30', 'Río Blanco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2220', '30', 'Saltabarranca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2221', '30', 'San Andrés Tenejapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2222', '30', 'San Andrés Tuxtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2223', '30', 'San Juan Evangelista', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2224', '30', 'Santiago Tuxtla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2225', '30', 'Sayula de Alemán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2226', '30', 'Soconusco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2227', '30', 'Sochiapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2228', '30', 'Soledad Atzompa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2229', '30', 'Soledad de Doblado', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2230', '30', 'Soteapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2231', '30', 'Tamalín', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2232', '30', 'Tamiahua', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2233', '30', 'Tampico Alto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2234', '30', 'Tancoco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2235', '30', 'Tantima', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2236', '30', 'Tantoyuca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2237', '30', 'Tatatila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2238', '30', 'Castillo de Teayo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2239', '30', 'Tecolutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2240', '30', 'Tehuipango', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2241', '30', 'Álamo Temapache', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2242', '30', 'Tempoal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2243', '30', 'Tenampa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2244', '30', 'Tenochtitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2245', '30', 'Teocelo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2246', '30', 'Tepatlaxco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2247', '30', 'Tepetlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2248', '30', 'Tepetzintla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2249', '30', 'Tequila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2250', '30', 'José Azueta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2251', '30', 'Texcatepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2252', '30', 'Texhuacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2253', '30', 'Texistepec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2254', '30', 'Tezonapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2255', '30', 'Tierra Blanca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2256', '30', 'Tihuatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2257', '30', 'Tlacojalpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2258', '30', 'Tlacolulan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2259', '30', 'Tlacotalpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2260', '30', 'Tlacotepec de Mejía', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2261', '30', 'Tlachichilco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2262', '30', 'Tlalixcoyan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2263', '30', 'Tlalnelhuayocan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2264', '30', 'Tlapacoyan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2265', '30', 'Tlaquilpa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2266', '30', 'Tlilapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2267', '30', 'Tomatlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2268', '30', 'Tonayán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2269', '30', 'Totutla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2270', '30', 'Tuxpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2271', '30', 'Tuxtilla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2272', '30', 'Ursulo Galván', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2273', '30', 'Vega de Alatorre', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2274', '30', 'Veracruz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2275', '30', 'Villa Aldama', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2276', '30', 'Xoxocotla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2277', '30', 'Yanga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2278', '30', 'Yecuatla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2279', '30', 'Zacualpan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2280', '30', 'Zaragoza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2281', '30', 'Zentla', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2282', '30', 'Zongolica', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2283', '30', 'Zontecomatlán de López y Fuentes', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2284', '30', 'Zozocolco de Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2285', '30', 'Agua Dulce', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2286', '30', 'El Higo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2287', '30', 'Nanchital de Lázaro Cárdenas del Río', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2288', '30', 'Tres Valles', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2289', '30', 'Carlos A. Carrillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2290', '30', 'Tatahuicapan de Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2291', '30', 'Uxpanapa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2292', '30', 'San Rafael', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2293', '30', 'Santiago Sochiapan', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2294', '31', 'Abalá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2295', '31', 'Acanceh', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2296', '31', 'Akil', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2297', '31', 'Baca', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2298', '31', 'Bokobá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2299', '31', 'Buctzotz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2300', '31', 'Cacalchén', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2301', '31', 'Calotmul', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2302', '31', 'Cansahcab', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2303', '31', 'Cantamayec', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2304', '31', 'Celestún', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2305', '31', 'Cenotillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2306', '31', 'Conkal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2307', '31', 'Cuncunul', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2308', '31', 'Cuzamá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2309', '31', 'Chacsinkín', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2310', '31', 'Chankom', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2311', '31', 'Chapab', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2312', '31', 'Chemax', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2313', '31', 'Chicxulub Pueblo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2314', '31', 'Chichimilá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2315', '31', 'Chikindzonot', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2316', '31', 'Chocholá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2317', '31', 'Chumayel', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2318', '31', 'Dzán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2319', '31', 'Dzemul', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2320', '31', 'Dzidzantún', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2321', '31', 'Dzilam de Bravo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2322', '31', 'Dzilam González', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2323', '31', 'Dzitás', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2324', '31', 'Dzoncauich', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2325', '31', 'Espita', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2326', '31', 'Halachó', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2327', '31', 'Hocabá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2328', '31', 'Hoctún', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2329', '31', 'Homún', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2330', '31', 'Huhí', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2331', '31', 'Hunucmá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2332', '31', 'Ixil', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2333', '31', 'Izamal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2334', '31', 'Kanasín', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2335', '31', 'Kantunil', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2336', '31', 'Kaua', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2337', '31', 'Kinchil', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2338', '31', 'Kopomá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2339', '31', 'Mama', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2340', '31', 'Maní', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2341', '31', 'Maxcanú', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2342', '31', 'Mayapán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2343', '31', 'Mérida', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2344', '31', 'Mocochá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2345', '31', 'Motul', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2346', '31', 'Muna', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2347', '31', 'Muxupip', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2348', '31', 'Opichén', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2349', '31', 'Oxkutzcab', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2350', '31', 'Panabá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2351', '31', 'Peto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2352', '31', 'Progreso', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2353', '31', 'Quintana Roo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2354', '31', 'Río Lagartos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2355', '31', 'Sacalum', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2356', '31', 'Samahil', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2357', '31', 'Sanahcat', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2358', '31', 'San Felipe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2359', '31', 'Santa Elena', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2360', '31', 'Seyé', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2361', '31', 'Sinanché', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2362', '31', 'Sotuta', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2363', '31', 'Sucilá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2364', '31', 'Sudzal', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2365', '31', 'Suma', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2366', '31', 'Tahdziú', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2367', '31', 'Tahmek', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2368', '31', 'Teabo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2369', '31', 'Tecoh', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2370', '31', 'Tekal de Venegas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2371', '31', 'Tekantó', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2372', '31', 'Tekax', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2373', '31', 'Tekit', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2374', '31', 'Tekom', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2375', '31', 'Telchac Pueblo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2376', '31', 'Telchac Puerto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2377', '31', 'Temax', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2378', '31', 'Temozón', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2379', '31', 'Tepakán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2380', '31', 'Tetiz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2381', '31', 'Teya', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2382', '31', 'Ticul', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2383', '31', 'Timucuy', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2384', '31', 'Tinum', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2385', '31', 'Tixcacalcupul', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2386', '31', 'Tixkokob', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2387', '31', 'Tixmehuac', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2388', '31', 'Tixpéhual', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2389', '31', 'Tizimín', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2390', '31', 'Tunkás', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2391', '31', 'Tzucacab', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2392', '31', 'Uayma', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2393', '31', 'Ucú', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2394', '31', 'Umán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2395', '31', 'Valladolid', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2396', '31', 'Xocchel', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2397', '31', 'Yaxcabá', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2398', '31', 'Yaxkukul', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2399', '31', 'Yobaín', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2400', '32', 'Apozol', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2401', '32', 'Apulco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2402', '32', 'Atolinga', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2403', '32', 'Benito Juárez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2404', '32', 'Calera', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2405', '32', 'Cañitas de Felipe Pescador', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2406', '32', 'Concepción del Oro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2407', '32', 'Cuauhtémoc', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2408', '32', 'Chalchihuites', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2409', '32', 'Fresnillo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2410', '32', 'Trinidad García de la Cadena', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2411', '32', 'Genaro Codina', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2412', '32', 'General Enrique Estrada', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2413', '32', 'General Francisco R. Murguía', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2414', '32', 'El Plateado de Joaquín Amaro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2415', '32', 'General Pánfilo Natera', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2416', '32', 'Guadalupe', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2417', '32', 'Huanusco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2418', '32', 'Jalpa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2419', '32', 'Jerez', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2420', '32', 'Jiménez del Teul', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2421', '32', 'Juan Aldama', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2422', '32', 'Juchipila', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2423', '32', 'Loreto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2424', '32', 'Luis Moya', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2425', '32', 'Mazapil', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2426', '32', 'Melchor Ocampo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2427', '32', 'Mezquital del Oro', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2428', '32', 'Miguel Auza', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2429', '32', 'Momax', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2430', '32', 'Monte Escobedo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2431', '32', 'Morelos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2432', '32', 'Moyahua de Estrada', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2433', '32', 'Nochistlán de Mejía', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2434', '32', 'Noria de Ángeles', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2435', '32', 'Ojocaliente', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2436', '32', 'Pánuco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2437', '32', 'Pinos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2438', '32', 'Río Grande', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2439', '32', 'Sain Alto', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2440', '32', 'El Salvador', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2441', '32', 'Sombrerete', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2442', '32', 'Susticacán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2443', '32', 'Tabasco', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2444', '32', 'Tepechitlán', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2445', '32', 'Tepetongo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2446', '32', 'Teúl de González Ortega', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2447', '32', 'Tlaltenango de Sánchez Román', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2448', '32', 'Valparaíso', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2449', '32', 'Vetagrande', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2450', '32', 'Villa de Cos', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2451', '32', 'Villa García', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2452', '32', 'Villa González Ortega', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2453', '32', 'Villa Hidalgo', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2454', '32', 'Villanueva', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2455', '32', 'Zacatecas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2456', '32', 'Trancoso', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `ciudades` VALUES ('2457', '32', 'Santa María de la Paz', '2018-08-11 14:08:00', '2018-08-11 14:08:00');

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
  `status_at` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cupones
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of direcciones
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

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
INSERT INTO `estados` VALUES ('32', '1', 'Zacatecas', '2018-08-11 14:08:00', '2018-08-11 14:08:00');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of etiquetas
-- ----------------------------

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
  `id` bigint(20) NOT NULL,
  `ingreso` datetime NOT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of historial
-- ----------------------------

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
  KEY `orden_venta_id` (`orden_venta_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `ordenes_productos_ibfk_1` FOREIGN KEY (`orden_venta_id`) REFERENCES `ventas_ordenes` (`id`),
  CONSTRAINT `ordenes_productos_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of paises
-- ----------------------------
INSERT INTO `paises` VALUES ('1', 'Mexico', '2018-08-11 14:08:00', '2018-08-11 14:08:00');
INSERT INTO `paises` VALUES ('2', 'Usa', '2018-08-11 14:08:00', '2018-08-11 14:08:00');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of permisos_negados
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of productos
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of productos_etiquetas
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Administrador', '2018-09-25 15:05:51', '2018-09-25 15:05:51');
INSERT INTO `roles` VALUES ('2', 'Maestro', '2018-09-25 15:05:51', '2018-09-25 15:05:51');
INSERT INTO `roles` VALUES ('3', 'Alumno', '2018-09-25 15:05:51', '2018-09-25 15:05:51');

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
  `id` bigint(20) NOT NULL,
  `usuario_id` bigint(20) NOT NULL,
  `direccion_id` bigint(20) DEFAULT NULL,
  `orden_fecha` datetime NOT NULL,
  `total` double(12,2) NOT NULL,
  `cupon_id` bigint(11) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ventas_ordenes
-- ----------------------------
