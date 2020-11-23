SET NAMES UTF8;
DROP DATABASE IF EXISTS pet;
CREATE DATABASE pet CHARSET=UTF8;
USE pet;

DROP TABLE IF EXISTS `pet_lab`;
CREATE TABLE `pet_lab` (
  `lid` int(64) NOT NULL,
  `lname` varchar(64) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `src` varchar(255) NOT NULL,
  `srb` varchar(255) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_lab
-- ----------------------------
INSERT INTO `pet_lab` VALUES ('1', '顺口味 无尘豆腐猫砂6L 快速除臭结团', '29.00', 'http://localhost:8080/1.1.webp', 'http://localhost:8080/1.2.webp');
INSERT INTO `pet_lab` VALUES ('2', '麦富迪 宠物狗粮 牛肉双拼通用成犬粮', '68.00', 'http://localhost:8080/2.1.webp', 'http://localhost:8080/2.2.webp');
INSERT INTO `pet_lab` VALUES ('3', '麦富迪 宠物猫粮藻趣儿 金枪鱼猫粮', '255.99', 'http://localhost:8080/3.1.webp', 'http://localhost:8080/3.2.webp');
INSERT INTO `pet_lab` VALUES ('4', '维斯康 VITSCAN宠物保健品海藻颗粒', '98.00', 'http://localhost:8080/4.1.webp', 'http://localhost:8080/4.2.webp');
INSERT INTO `pet_lab` VALUES ('5', '小佩饮水机 宠物自动喂食器智能饮水器', '239.00', 'http://localhost:8080/5.1.webp', 'http://localhost:8080/5.2.webp');
INSERT INTO `pet_lab` VALUES ('6', '乐妃猫爬架 磨爪猫咪玩具宠物休闲娱乐', '88.00', 'http://localhost:8080/6.1.webp', 'http://localhost:8080/6.2.webp');
INSERT INTO `pet_lab` VALUES ('7', '福莱希 自动伸缩 宠物狗牵引绳遛狗绳', '199.00', 'http://localhost:8080/7.1.webp', 'http://localhost:8080/7.2.webp');
INSERT INTO `pet_lab` VALUES ('8', '亚禾 幼犬小型大型犬狗咬洁齿骨棒零食', '19.89', 'http://localhost:8080/8.1.webp', 'http://localhost:8080/8.2.webp');
INSERT INTO `pet_lab` VALUES ('9', '猫狗天然植物除耳螨滴耳液耳漂洗耳水', '158.00', 'http://localhost:8080/9.1.webp', 'http://localhost:8080/9.2.webp');
INSERT INTO `pet_lab` VALUES ('10', '维克 营养膏克补软膏发育宠狗用猫用', '96.99', 'http://localhost:8080/10.1.webp', 'http://localhost:8080/10.2.webp');
INSERT INTO `pet_lab` VALUES ('11', '顺口味 无尘豆腐猫砂6L 快速除臭结团', '29.00', 'http://localhost:8080/1.1.webp', 'http://localhost:8080/1.2.webp');
INSERT INTO `pet_lab` VALUES ('12', '麦富迪 宠物狗粮 牛肉双拼通用成犬粮', '68.00', 'http://localhost:8080/2.1.webp', 'http://localhost:8080/2.2.webp');
INSERT INTO `pet_lab` VALUES ('13', '麦富迪 宠物猫粮藻趣儿 金枪鱼猫粮', '255.99', 'http://localhost:8080/3.1.webp', 'http://localhost:8080/3.2.webp');
INSERT INTO `pet_lab` VALUES ('14', '维斯康 VITSCAN宠物保健品海藻颗粒', '98.00', 'http://localhost:8080/4.1.webp', 'http://localhost:8080/4.2.webp');
INSERT INTO `pet_lab` VALUES ('15', '小佩饮水机 宠物自动喂食器智能饮水器', '239.00', 'http://localhost:8080/5.1.webp', 'http://localhost:8080/5.2.webp');

DROP TABLE IF EXISTS `pet_cat`;
CREATE TABLE `pet_cat` (
  `lid_c` int(64) NOT NULL,
  `lname_c` varchar(64) NOT NULL,
  `price_c` decimal(10,2) NOT NULL,
  `src_c` varchar(255) NOT NULL,
  `srb_c` varchar(255) NOT NULL,
  PRIMARY KEY (`lid_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_cat
-- ----------------------------
INSERT INTO `pet_cat` VALUES ('1', '顺口味 无尘豆腐猫砂6L 快速除臭结团', '29.00', 'http://localhost:8080/1.1c.webp', 'http://localhost:8080/1.2c.webp');
INSERT INTO `pet_cat` VALUES ('2', '麦富迪 宠物狗粮 牛肉双拼通用成犬粮', '68.00', 'http://localhost:8080/2.1c.webp', 'http://localhost:8080/2.2c.webp');
INSERT INTO `pet_cat` VALUES ('3', '麦富迪 宠物猫粮藻趣儿 金枪鱼猫粮', '255.99', 'http://localhost:8080/3.1c.webp', 'http://localhost:8080/3.2c.webp');
INSERT INTO `pet_cat` VALUES ('4', '维斯康 VITSCAN宠物保健品海藻颗粒', '98.00', 'http://localhost:8080/4.1c.webp', 'http://localhost:8080/4.2c.webp');
INSERT INTO `pet_cat` VALUES ('5', '小佩饮水机 宠物自动喂食器智能饮水器', '239.00', 'http://localhost:8080/5.1c.webp', 'http://localhost:8080/5.2c.webp');
INSERT INTO `pet_cat` VALUES ('6', '乐妃猫爬架 磨爪猫咪玩具宠物休闲娱乐', '88.00', 'http://localhost:8080/6.1c.webp', 'http://localhost:8080/6.2c.webp');
INSERT INTO `pet_cat` VALUES ('7', '福莱希 自动伸缩 宠物狗牵引绳遛狗绳', '199.00', 'http://localhost:8080/7.1c.webp', 'http://localhost:8080/7.2c.webp');
INSERT INTO `pet_cat` VALUES ('8', '亚禾 幼犬小型大型犬狗咬洁齿骨棒零食', '19.89', 'http://localhost:8080/8.1c.webp', 'http://localhost:8080/8.2c.webp');
INSERT INTO `pet_cat` VALUES ('9', '猫狗天然植物除耳螨滴耳液耳漂洗耳水', '158.00', 'http://localhost:8080/9.1c.webp', 'http://localhost:8080/9.2c.webp');
INSERT INTO `pet_cat` VALUES ('10', '维克 营养膏克补软膏发育宠狗用猫用', '96.99', 'http://localhost:8080/10.1c.webp', 'http://localhost:8080/10.2c.webp');

-- ----------------------------
-- Table structure for pet_user
-- ----------------------------
DROP TABLE IF EXISTS `pet_user`;
CREATE TABLE `pet_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(8) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_user
-- ----------------------------
INSERT INTO `pet_user` VALUES ('1', 'qiaoqiao', '123456', '13909087988');
INSERT INTO `pet_user` VALUES ('2', 'yanxueli', '123456', '17883658826');
INSERT INTO `pet_user` VALUES ('3', 'yanyuton', '123456', '13909087988');

DROP TABLE IF EXISTS `pet_car`;
CREATE TABLE `pet_car` (
  `bid` int(64) NOT NULL AUTO_INCREMENT,
  `bname` varchar(64) NOT NULL,
  `bprice` decimal(10,2) NOT NULL,
  `bsrc` varchar(255) NOT NULL,
  `count` int(64) default '1',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_car
-- ----------------------------