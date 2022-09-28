/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : hadoop

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 28/09/2022 12:13:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for battery
-- ----------------------------
DROP TABLE IF EXISTS `battery`;
CREATE TABLE `battery` (
  `battery` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of battery
-- ----------------------------
BEGIN;
INSERT INTO `battery` (`battery`) VALUES ('4400mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4800mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('5000mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('5160mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4000mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4500mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4360mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4100mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4300mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4200mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('3700mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4460mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('6000mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4700mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4650mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4600mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4610mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('3400mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('3800mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('5500mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('5080mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4860mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('3500mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('2150mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4230mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('1400mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('5100mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('3900mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('2000mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4950mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4250mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('800mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('2120mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('1000mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('2942mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('1600mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('1700mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('1450mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('1200mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('3000mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('1020mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4850mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('1500mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('1650mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('1850mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('1550mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4770mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('3687mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('2400mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('5600mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('1150mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('10000mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('3300mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('2500mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('3320mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('2851mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('3227mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('950mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4352mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4450mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('5020mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('1300mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4270mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('1480mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4050mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('3110mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('194mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('1800mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('5001mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('8000mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4040mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('3095mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4900mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4750mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4820mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('2406mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('60000mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('8800mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('420mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4350mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('3200mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('9000mAh(typ)');
INSERT INTO `battery` (`battery`) VALUES ('4880mAh(typ)');
COMMIT;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `brand` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of brand
-- ----------------------------
BEGIN;
INSERT INTO `brand` (`brand`) VALUES ('三星（SAMSUNG）');
INSERT INTO `brand` (`brand`) VALUES ('荣耀（HONOR）');
INSERT INTO `brand` (`brand`) VALUES ('一加');
INSERT INTO `brand` (`brand`) VALUES ('Apple');
INSERT INTO `brand` (`brand`) VALUES ('OPPO');
INSERT INTO `brand` (`brand`) VALUES ('小米（MI）');
INSERT INTO `brand` (`brand`) VALUES ('vivo');
INSERT INTO `brand` (`brand`) VALUES ('华为（HUAWEI）');
INSERT INTO `brand` (`brand`) VALUES ('Hi nova');
INSERT INTO `brand` (`brand`) VALUES ('中兴（ZTE）');
INSERT INTO `brand` (`brand`) VALUES ('魅族（MEIZU）');
INSERT INTO `brand` (`brand`) VALUES ('天语（K-Touch）');
INSERT INTO `brand` (`brand`) VALUES ('黑鲨');
INSERT INTO `brand` (`brand`) VALUES ('摩托罗拉（Motorola）');
INSERT INTO `brand` (`brand`) VALUES ('金立（Gionee）');
INSERT INTO `brand` (`brand`) VALUES ('鼎桥（TD Tech）');
INSERT INTO `brand` (`brand`) VALUES ('百事乐（LEBEST）');
INSERT INTO `brand` (`brand`) VALUES ('索尼（SONY）');
INSERT INTO `brand` (`brand`) VALUES ('努比亚（nubia）');
INSERT INTO `brand` (`brand`) VALUES ('真我（realme）');
INSERT INTO `brand` (`brand`) VALUES ('麦芒');
INSERT INTO `brand` (`brand`) VALUES ('iQOO');
INSERT INTO `brand` (`brand`) VALUES ('小辣椒');
INSERT INTO `brand` (`brand`) VALUES ('多亲（QIN）');
INSERT INTO `brand` (`brand`) VALUES ('朵唯（DOOV）');
INSERT INTO `brand` (`brand`) VALUES ('酷维（KUWEI）');
INSERT INTO `brand` (`brand`) VALUES ('飞利浦（PHILIPS）');
INSERT INTO `brand` (`brand`) VALUES ('联想（Lenovo）');
INSERT INTO `brand` (`brand`) VALUES ('索爱（soaiy）');
INSERT INTO `brand` (`brand`) VALUES ('诺基亚（NOKIA）');
INSERT INTO `brand` (`brand`) VALUES ('U-Magic');
INSERT INTO `brand` (`brand`) VALUES ('中兴');
INSERT INTO `brand` (`brand`) VALUES ('纽曼（Newman）');
INSERT INTO `brand` (`brand`) VALUES ('海信（Hisense）');
INSERT INTO `brand` (`brand`) VALUES ('ROG');
INSERT INTO `brand` (`brand`) VALUES ('关爱心');
INSERT INTO `brand` (`brand`) VALUES ('康佳（KONKA）');
INSERT INTO `brand` (`brand`) VALUES ('酷派（Coolpad）');
INSERT INTO `brand` (`brand`) VALUES ('SAMSUNG');
INSERT INTO `brand` (`brand`) VALUES ('守护宝');
INSERT INTO `brand` (`brand`) VALUES ('索野（SOYES）');
INSERT INTO `brand` (`brand`) VALUES ('Unihertz');
INSERT INTO `brand` (`brand`) VALUES ('360 OS');
INSERT INTO `brand` (`brand`) VALUES ('海语（HAIYU）');
INSERT INTO `brand` (`brand`) VALUES ('IPRO');
INSERT INTO `brand` (`brand`) VALUES ('AGM');
INSERT INTO `brand` (`brand`) VALUES ('乐视（Letv）');
INSERT INTO `brand` (`brand`) VALUES ('华为');
INSERT INTO `brand` (`brand`) VALUES ('三星');
INSERT INTO `brand` (`brand`) VALUES ('飞利浦');
INSERT INTO `brand` (`brand`) VALUES ('誉品（YEPEN）');
INSERT INTO `brand` (`brand`) VALUES ('小米');
INSERT INTO `brand` (`brand`) VALUES ('荣耀');
INSERT INTO `brand` (`brand`) VALUES ('关爱心（GAIX）');
INSERT INTO `brand` (`brand`) VALUES ('8848');
INSERT INTO `brand` (`brand`) VALUES ('Tonino Lamborghini');
INSERT INTO `brand` (`brand`) VALUES ('Letv');
INSERT INTO `brand` (`brand`) VALUES ('N-ZONE');
INSERT INTO `brand` (`brand`) VALUES ('iPhone');
INSERT INTO `brand` (`brand`) VALUES ('SONY');
INSERT INTO `brand` (`brand`) VALUES ('天翼1号');
INSERT INTO `brand` (`brand`) VALUES ('酷比（koobee）');
INSERT INTO `brand` (`brand`) VALUES ('VERTU');
INSERT INTO `brand` (`brand`) VALUES ('ONEPLUS');
INSERT INTO `brand` (`brand`) VALUES ('欧亚信（OYSIN）');
INSERT INTO `brand` (`brand`) VALUES ('黑莓（BlackBerry）');
INSERT INTO `brand` (`brand`) VALUES ('硕王');
INSERT INTO `brand` (`brand`) VALUES ('HONOR');
INSERT INTO `brand` (`brand`) VALUES ('CONQUEST');
INSERT INTO `brand` (`brand`) VALUES ('酷和（KUH）');
INSERT INTO `brand` (`brand`) VALUES ('克里特（kreta）');
INSERT INTO `brand` (`brand`) VALUES ('NOTHING');
INSERT INTO `brand` (`brand`) VALUES ('尼凯恩（neken）');
INSERT INTO `brand` (`brand`) VALUES ('21KE');
INSERT INTO `brand` (`brand`) VALUES ('金铠特（JKAITE）');
INSERT INTO `brand` (`brand`) VALUES ('KUFONE');
INSERT INTO `brand` (`brand`) VALUES ('优尚丰');
INSERT INTO `brand` (`brand`) VALUES ('碧娟');
INSERT INTO `brand` (`brand`) VALUES ('维沃（vivo）');
INSERT INTO `brand` (`brand`) VALUES ('爱户外（ioutdoor）');
COMMIT;

-- ----------------------------
-- Table structure for camera
-- ----------------------------
DROP TABLE IF EXISTS `camera`;
CREATE TABLE `camera` (
  `camera` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of camera
-- ----------------------------
BEGIN;
INSERT INTO `camera` (`camera`) VALUES ('5000万像素');
INSERT INTO `camera` (`camera`) VALUES ('4800万像素');
INSERT INTO `camera` (`camera`) VALUES ('6400万像素');
INSERT INTO `camera` (`camera`) VALUES ('1200万像素');
INSERT INTO `camera` (`camera`) VALUES ('1300万像素');
INSERT INTO `camera` (`camera`) VALUES ('1万像素');
INSERT INTO `camera` (`camera`) VALUES ('5400万像素');
INSERT INTO `camera` (`camera`) VALUES ('10800万像素');
INSERT INTO `camera` (`camera`) VALUES ('10000万像素');
INSERT INTO `camera` (`camera`) VALUES ('20000万像素');
INSERT INTO `camera` (`camera`) VALUES ('500万像素');
INSERT INTO `camera` (`camera`) VALUES ('2100万像素');
INSERT INTO `camera` (`camera`) VALUES ('800万像素');
INSERT INTO `camera` (`camera`) VALUES ('30万像素');
INSERT INTO `camera` (`camera`) VALUES ('0万像素');
INSERT INTO `camera` (`camera`) VALUES ('10600万像素');
INSERT INTO `camera` (`camera`) VALUES ('6000万像素');
INSERT INTO `camera` (`camera`) VALUES ('8万像素');
INSERT INTO `camera` (`camera`) VALUES ('6200万像素');
INSERT INTO `camera` (`camera`) VALUES ('4000万像素');
INSERT INTO `camera` (`camera`) VALUES ('2300万像素');
INSERT INTO `camera` (`camera`) VALUES ('200万像素');
INSERT INTO `camera` (`camera`) VALUES ('2800万像素');
INSERT INTO `camera` (`camera`) VALUES ('3万像素');
INSERT INTO `camera` (`camera`) VALUES ('10万像素');
INSERT INTO `camera` (`camera`) VALUES ('20万像素');
INSERT INTO `camera` (`camera`) VALUES ('7800万像素');
INSERT INTO `camera` (`camera`) VALUES ('100000万像素');
INSERT INTO `camera` (`camera`) VALUES ('13万像素');
INSERT INTO `camera` (`camera`) VALUES ('25万像素');
INSERT INTO `camera` (`camera`) VALUES ('1500万像素');
INSERT INTO `camera` (`camera`) VALUES ('10240万像素');
INSERT INTO `camera` (`camera`) VALUES ('108万像素');
INSERT INTO `camera` (`camera`) VALUES ('5800万像素');
INSERT INTO `camera` (`camera`) VALUES ('50万像素');
INSERT INTO `camera` (`camera`) VALUES ('1080万像素');
INSERT INTO `camera` (`camera`) VALUES ('3200万像素');
INSERT INTO `camera` (`camera`) VALUES ('2400万像素');
INSERT INTO `camera` (`camera`) VALUES ('9000万像素');
COMMIT;

-- ----------------------------
-- Table structure for cpu
-- ----------------------------
DROP TABLE IF EXISTS `cpu`;
CREATE TABLE `cpu` (
  `cpu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cpu
-- ----------------------------
BEGIN;
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙8+ Gen 1');
INSERT INTO `cpu` (`cpu`) VALUES ('定制版天玑 8100-MAX');
INSERT INTO `cpu` (`cpu`) VALUES ('A15');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑810');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑700');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙778G+');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑900');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑920');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙778G');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑1200');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙8+ Gen1');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科 Helio G25');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙888');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙680');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙870');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑8100-MAX');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙870');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙888+');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑1300');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙778G Plus');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙8 Gen 1');
INSERT INTO `cpu` (`cpu`) VALUES ('虎贲');
INSERT INTO `cpu` (`cpu`) VALUES ('Exynos系列');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙8');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟710A');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙8+');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙™ 888');
INSERT INTO `cpu` (`cpu`) VALUES ('紫光展锐');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑9000');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙7 Gen 1');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙680');
INSERT INTO `cpu` (`cpu`) VALUES ('G88芯片');
INSERT INTO `cpu` (`cpu`) VALUES ('第一代骁龙8+');
INSERT INTO `cpu` (`cpu`) VALUES ('8gen1');
INSERT INTO `cpu` (`cpu`) VALUES ('第一代骁龙8+移动平台');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑8100');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑930');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙695');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙 888+');
INSERT INTO `cpu` (`cpu`) VALUES ('第一代骁龙8+ 4G');
INSERT INTO `cpu` (`cpu`) VALUES ('全新一代骁龙 8');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙 888');
INSERT INTO `cpu` (`cpu`) VALUES ('三星Exynos 1080');
INSERT INTO `cpu` (`cpu`) VALUES ('虎贲T310');
INSERT INTO `cpu` (`cpu`) VALUES ('A14');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙8gen1');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑9000+');
INSERT INTO `cpu` (`cpu`) VALUES ('旗舰款');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科 曦力P35');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙480');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑700');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙 870');
INSERT INTO `cpu` (`cpu`) VALUES ('MT6261D');
INSERT INTO `cpu` (`cpu`) VALUES ('A15仿生芯片');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙8+Gen1');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑1100');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙 888');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑1000系列');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙778G');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙778G Plus');
INSERT INTO `cpu` (`cpu`) VALUES ('展锐SC9863A');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙460');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑800系列');
INSERT INTO `cpu` (`cpu`) VALUES ('虎贲T610');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙662');
INSERT INTO `cpu` (`cpu`) VALUES ('A16');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙 8+ Gen 1 5G移动平台');
INSERT INTO `cpu` (`cpu`) VALUES ('第一代骁龙®8+移动平台');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟700系列');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙8 Gen1');
INSERT INTO `cpu` (`cpu`) VALUES ('780');
INSERT INTO `cpu` (`cpu`) VALUES ('MTK G系列');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟990');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑700系列');
INSERT INTO `cpu` (`cpu`) VALUES ('其他');
INSERT INTO `cpu` (`cpu`) VALUES ('SC8910FF-S');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑8000');
INSERT INTO `cpu` (`cpu`) VALUES ('Apple A系列');
INSERT INTO `cpu` (`cpu`) VALUES ('全新一代骁龙8');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑800U');
INSERT INTO `cpu` (`cpu`) VALUES ('G80');
INSERT INTO `cpu` (`cpu`) VALUES ('A12');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙8 移动平台');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙865');
INSERT INTO `cpu` (`cpu`) VALUES ('MT6261D0');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑800');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科P60');
INSERT INTO `cpu` (`cpu`) VALUES ('778');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙695');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙™ 778G Plus');
INSERT INTO `cpu` (`cpu`) VALUES ('展讯T610');
INSERT INTO `cpu` (`cpu`) VALUES ('展锐107');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑 1000+');
INSERT INTO `cpu` (`cpu`) VALUES ('A系列');
INSERT INTO `cpu` (`cpu`) VALUES ('紫光展锐 T107');
INSERT INTO `cpu` (`cpu`) VALUES ('T7510');
INSERT INTO `cpu` (`cpu`) VALUES ('第一代骁龙8移动平台、独立显示芯片Pro');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙600系列');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑1000+');
INSERT INTO `cpu` (`cpu`) VALUES ('紫光展锐T760');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙888+');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙888+');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑900系列');
INSERT INTO `cpu` (`cpu`) VALUES ('海思 麒麟710A');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 骁龙778G Plus');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科天玑920');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科 天玑1300');
INSERT INTO `cpu` (`cpu`) VALUES ('虎贲T7510');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 骁龙778G');
INSERT INTO `cpu` (`cpu`) VALUES ('展锐 T107');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑720');
INSERT INTO `cpu` (`cpu`) VALUES ('海思 麒麟 990E');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 骁龙768G');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 骁龙888 4G');
INSERT INTO `cpu` (`cpu`) VALUES ('MTK Helio G80');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑700或者骁龙480');
INSERT INTO `cpu` (`cpu`) VALUES ('紫光展锐ums9117');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙 750G');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙680处理器');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙 870 5G 处理器');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟985');
INSERT INTO `cpu` (`cpu`) VALUES ('海思 麒麟 985');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙™ 680');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙480 5G平台');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科MTK6765');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟9000');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 骁龙778G 4G');
INSERT INTO `cpu` (`cpu`) VALUES ('展讯 T610');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟 985');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙4系列');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙778G 4G');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 骁龙888');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 骁龙480');
INSERT INTO `cpu` (`cpu`) VALUES ('MTK P系列');
INSERT INTO `cpu` (`cpu`) VALUES ('Helio G25');
INSERT INTO `cpu` (`cpu`) VALUES ('SC8910');
INSERT INTO `cpu` (`cpu`) VALUES ('T107');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙855');
INSERT INTO `cpu` (`cpu`) VALUES ('6531');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 骁龙8 Gen1');
INSERT INTO `cpu` (`cpu`) VALUES ('A11');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑9000或者骁龙778Gplus');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙888 4G');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科MT6761');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙8+Gen 1');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙865');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑8000-Max');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑 9000');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙888plus');
INSERT INTO `cpu` (`cpu`) VALUES ('第一代骁龙 8+');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙865G');
INSERT INTO `cpu` (`cpu`) VALUES ('Unisoc T610');
INSERT INTO `cpu` (`cpu`) VALUES ('紫光展锐 虎贲T610');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑1300/骁龙7/天玑8100');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科天玑1000+');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 骁龙680');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙845');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑810');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙778gplus');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙778G 4G');
INSERT INTO `cpu` (`cpu`) VALUES ('海思麒麟985');
INSERT INTO `cpu` (`cpu`) VALUES ('海思 麒麟 9000');
INSERT INTO `cpu` (`cpu`) VALUES ('700系列');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙8+Gne1');
INSERT INTO `cpu` (`cpu`) VALUES ('新骁龙8+');
INSERT INTO `cpu` (`cpu`) VALUES ('SM8250 AC');
INSERT INTO `cpu` (`cpu`) VALUES ('MTK 天玑700');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科 天玑900');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑1200-MAX');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙SM855');
INSERT INTO `cpu` (`cpu`) VALUES ('Qualcomm Snapdragon 778G （高通骁龙™ 778G）');
INSERT INTO `cpu` (`cpu`) VALUES ('以官方为准');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科 天玑700');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑 800U');
INSERT INTO `cpu` (`cpu`) VALUES ('MT6771');
INSERT INTO `cpu` (`cpu`) VALUES ('A15 仿生芯片');
INSERT INTO `cpu` (`cpu`) VALUES ('虎喷310');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙865+处理器');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑 700');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科天玑8000-MAX');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙888');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 骁龙695');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科 天玑8000');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科 天玑810');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙7');
INSERT INTO `cpu` (`cpu`) VALUES ('天机700');
INSERT INTO `cpu` (`cpu`) VALUES ('MT6833');
INSERT INTO `cpu` (`cpu`) VALUES ('6531E');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙700系列');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟 9000');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙210');
INSERT INTO `cpu` (`cpu`) VALUES ('8000-MAX');
INSERT INTO `cpu` (`cpu`) VALUES ('苹果');
INSERT INTO `cpu` (`cpu`) VALUES ('A13');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙750G');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙888 Plus');
INSERT INTO `cpu` (`cpu`) VALUES ('紫光展锐UIS8910FF-S');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙 480 Plus');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科 MTK天玑700');
INSERT INTO `cpu` (`cpu`) VALUES ('展锐T310');
INSERT INTO `cpu` (`cpu`) VALUES ('MT6762');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙888+/骁龙888');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙780G');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟9000L');
INSERT INTO `cpu` (`cpu`) VALUES ('八核心，最高主频 2.4Ghz');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟710');
INSERT INTO `cpu` (`cpu`) VALUES ('9810');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑 9000');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 骁龙870');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑1000');
INSERT INTO `cpu` (`cpu`) VALUES ('8910');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑 1300');
INSERT INTO `cpu` (`cpu`) VALUES ('海思 麒麟 990 5G');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙 8 Gen 1');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙8+旗舰处理器');
INSERT INTO `cpu` (`cpu`) VALUES ('T310');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙660');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙480');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 Adreno 642L');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科技天玑8100');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑8100+');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟 9000L');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 骁龙8+ Gen1');
INSERT INTO `cpu` (`cpu`) VALUES ('虎贲610');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙8+Gen1');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑1000+');
INSERT INTO `cpu` (`cpu`) VALUES ('海思 麒麟 820E');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙™ 695');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科 Helio P35');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟 710A');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙™888');
INSERT INTO `cpu` (`cpu`) VALUES ('八核芯片');
INSERT INTO `cpu` (`cpu`) VALUES ('P70');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑 900');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科 天玑8100');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟 990E');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 骁龙480 Plus');
INSERT INTO `cpu` (`cpu`) VALUES ('新骁龙8');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科MT6853');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑8100、独立显示芯片Pro');
INSERT INTO `cpu` (`cpu`) VALUES ('A14仿生芯片');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙 8+ Gen 1');
INSERT INTO `cpu` (`cpu`) VALUES ('SM4250');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 骁龙888 Plus');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙 8+');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑 810');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙720G');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙');
INSERT INTO `cpu` (`cpu`) VALUES ('展锐 T107');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙™778G');
INSERT INTO `cpu` (`cpu`) VALUES ('三星 Exynos 1280');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科 MT6765');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟986');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟98X');
INSERT INTO `cpu` (`cpu`) VALUES ('全新骁龙8+');
INSERT INTO `cpu` (`cpu`) VALUES ('全新一代骁龙8移动平台');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙888 4G');
INSERT INTO `cpu` (`cpu`) VALUES ('高通 骁龙750G');
INSERT INTO `cpu` (`cpu`) VALUES ('5321');
INSERT INTO `cpu` (`cpu`) VALUES ('天机900系列');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科 天玑9000');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科天玑1100');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟810');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙™ 695处理器');
INSERT INTO `cpu` (`cpu`) VALUES ('MTK Helio G25');
INSERT INTO `cpu` (`cpu`) VALUES ('MT6765');
INSERT INTO `cpu` (`cpu`) VALUES ('Exynos 1080');
INSERT INTO `cpu` (`cpu`) VALUES ('6+128G麒麟710A');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙8+旗舰处理器');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科 天玑1100');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙778');
INSERT INTO `cpu` (`cpu`) VALUES ('天机8000');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙888/天玑8000-Max');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟990E');
INSERT INTO `cpu` (`cpu`) VALUES ('3232');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙680');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙888 Plus');
INSERT INTO `cpu` (`cpu`) VALUES ('高通骁龙 680');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟990 5G');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟 990 5G');
INSERT INTO `cpu` (`cpu`) VALUES ('A14仿生');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙888Plus');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟 990');
INSERT INTO `cpu` (`cpu`) VALUES ('6353');
INSERT INTO `cpu` (`cpu`) VALUES ('天玑700系列');
INSERT INTO `cpu` (`cpu`) VALUES ('联发科 天玑800U');
INSERT INTO `cpu` (`cpu`) VALUES ('麒麟710');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙888系列');
INSERT INTO `cpu` (`cpu`) VALUES ('骁龙 778G');
COMMIT;

-- ----------------------------
-- Table structure for generate_record
-- ----------------------------
DROP TABLE IF EXISTS `generate_record`;
CREATE TABLE `generate_record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `num` int DEFAULT NULL COMMENT '生成数量',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '0-正在处理；1-处理完成',
  `system_percent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '30;30;30;10； 安卓；ios；鸿蒙；功能机；',
  `sim_percent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Sim卡数量；30;30;40； 1个；2个；3个；',
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '品牌，如果是0则随机，不是0则使用分号分隔',
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '型号，如果是0则随机，不是0则使用分号分隔',
  `operate_time` datetime DEFAULT NULL COMMENT '生成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of generate_record
-- ----------------------------
BEGIN;
INSERT INTO `generate_record` (`id`, `name`, `num`, `status`, `system_percent`, `sim_percent`, `brand`, `model`, `operate_time`) VALUES (1, '测试', 1000, '1', '1;2;3', '4;5;6', '7;8;9', '10;11;12', '2022-09-26 00:00:00');
INSERT INTO `generate_record` (`id`, `name`, `num`, `status`, `system_percent`, `sim_percent`, `brand`, `model`, `operate_time`) VALUES (2, '测试任务', 1000, '0', '30;30;30;10', '30;70', '1;2;3', '4;5;6', '2022-09-26 00:00:00');
INSERT INTO `generate_record` (`id`, `name`, `num`, `status`, `system_percent`, `sim_percent`, `brand`, `model`, `operate_time`) VALUES (3, '测试任务', 1000, '0', '30;30;30;10', '30;70', '1;2;3', '4;5;6', '2022-09-27 00:00:00');
INSERT INTO `generate_record` (`id`, `name`, `num`, `status`, `system_percent`, `sim_percent`, `brand`, `model`, `operate_time`) VALUES (4, '测试任务', 1000, '0', '30;30;30;10', '30;70', '品牌1;品牌2;品牌3', '型号1;型号2;型号3', '2022-09-27 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for model
-- ----------------------------
DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `model` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of model
-- ----------------------------
BEGIN;
INSERT INTO `model` (`model`) VALUES ('三星 Z Fold4');
INSERT INTO `model` (`model`) VALUES ('荣耀 X30');
INSERT INTO `model` (`model`) VALUES ('一加 Ace 竞速版');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone 14');
INSERT INTO `model` (`model`) VALUES ('OPPO A55s');
INSERT INTO `model` (`model`) VALUES ('荣耀 X40');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi Note11');
INSERT INTO `model` (`model`) VALUES ('荣耀 70');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO Z5x');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi Note11 Pro');
INSERT INTO `model` (`model`) VALUES ('荣耀 Play5T');
INSERT INTO `model` (`model`) VALUES ('vivo X80');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi Note11 SE');
INSERT INTO `model` (`model`) VALUES ('荣耀 X40i');
INSERT INTO `model` (`model`) VALUES ('OPPO K9 Pro');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi K50 至尊版');
INSERT INTO `model` (`model`) VALUES ('华为 P50 Pro');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi 10A');
INSERT INTO `model` (`model`) VALUES ('华为 P50');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO U5x');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO Neo5 SE');
INSERT INTO `model` (`model`) VALUES ('一加 Ace');
INSERT INTO `model` (`model`) VALUES ('Hi nova 9z');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi K40S');
INSERT INTO `model` (`model`) VALUES ('中兴 Axon 30');
INSERT INTO `model` (`model`) VALUES ('魅族 18X');
INSERT INTO `model` (`model`) VALUES ('三星 Z Flip4');
INSERT INTO `model` (`model`) VALUES ('天语 T12 Pro Max');
INSERT INTO `model` (`model`) VALUES ('荣耀 Play6T');
INSERT INTO `model` (`model`) VALUES ('黑鲨 5 RS');
INSERT INTO `model` (`model`) VALUES ('三星 F52');
INSERT INTO `model` (`model`) VALUES ('OPPO A36');
INSERT INTO `model` (`model`) VALUES ('摩托罗拉 edge S30');
INSERT INTO `model` (`model`) VALUES ('OPPO Reno8');
INSERT INTO `model` (`model`) VALUES ('华为 Mate50');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO Z6');
INSERT INTO `model` (`model`) VALUES ('华为 畅享50');
INSERT INTO `model` (`model`) VALUES ('三星 S22');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone 12 mini');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO Neo6 SE');
INSERT INTO `model` (`model`) VALUES ('荣耀 Magic4');
INSERT INTO `model` (`model`) VALUES ('vivo S15');
INSERT INTO `model` (`model`) VALUES ('荣耀 50');
INSERT INTO `model` (`model`) VALUES ('OPPO Reno8 Pro+');
INSERT INTO `model` (`model`) VALUES ('金立 K13 Pro');
INSERT INTO `model` (`model`) VALUES ('摩托罗拉 S30 Pro');
INSERT INTO `model` (`model`) VALUES ('三星 A53');
INSERT INTO `model` (`model`) VALUES ('黑鲨 5');
INSERT INTO `model` (`model`) VALUES ('黑鲨 5 Pro');
INSERT INTO `model` (`model`) VALUES ('荣耀 X20');
INSERT INTO `model` (`model`) VALUES ('华为 畅享20 Plus');
INSERT INTO `model` (`model`) VALUES ('小米 12S');
INSERT INTO `model` (`model`) VALUES ('vivo Y77');
INSERT INTO `model` (`model`) VALUES ('小米 12X');
INSERT INTO `model` (`model`) VALUES ('OPPO Find X3 Pro');
INSERT INTO `model` (`model`) VALUES ('小米 12S Pro');
INSERT INTO `model` (`model`) VALUES ('鼎桥 M40');
INSERT INTO `model` (`model`) VALUES ('百事乐 P13 Pro');
INSERT INTO `model` (`model`) VALUES ('华为 nova10');
INSERT INTO `model` (`model`) VALUES ('摩托罗拉 X30 Pro');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi K50 Pro');
INSERT INTO `model` (`model`) VALUES ('天语 M10');
INSERT INTO `model` (`model`) VALUES ('华为 畅享50 Pro');
INSERT INTO `model` (`model`) VALUES ('百事乐 X14 Pro Max');
INSERT INTO `model` (`model`) VALUES ('vivo Y32t');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi Note11 4G');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO 10');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO 10 Pro');
INSERT INTO `model` (`model`) VALUES ('索尼 Xperia1 IV');
INSERT INTO `model` (`model`) VALUES ('华为 nova8 SE');
INSERT INTO `model` (`model`) VALUES ('努比亚 Z40 Pro');
INSERT INTO `model` (`model`) VALUES ('一加 Ace Pro');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi K50');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi Note11T Pro');
INSERT INTO `model` (`model`) VALUES ('realme GT Neo3');
INSERT INTO `model` (`model`) VALUES ('realme Q5');
INSERT INTO `model` (`model`) VALUES ('魅族 18s Pro');
INSERT INTO `model` (`model`) VALUES ('vivo S15 Pro');
INSERT INTO `model` (`model`) VALUES ('天语 X13');
INSERT INTO `model` (`model`) VALUES ('realme GT 大师探索版');
INSERT INTO `model` (`model`) VALUES ('华为 Mate50 Pro');
INSERT INTO `model` (`model`) VALUES ('华为 P50E');
INSERT INTO `model` (`model`) VALUES ('OPPO A97');
INSERT INTO `model` (`model`) VALUES ('荣耀 Magic4 Pro');
INSERT INTO `model` (`model`) VALUES ('荣耀 Play6T Pro');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO Neo6');
INSERT INTO `model` (`model`) VALUES ('麦芒 9');
INSERT INTO `model` (`model`) VALUES ('华为 nova9 Pro');
INSERT INTO `model` (`model`) VALUES ('vivo S15e');
INSERT INTO `model` (`model`) VALUES ('realme GT2 大师探索版');
INSERT INTO `model` (`model`) VALUES ('荣耀 Play5');
INSERT INTO `model` (`model`) VALUES ('OPPO Find X5 Pro 天玑版');
INSERT INTO `model` (`model`) VALUES ('vivo Y72t');
INSERT INTO `model` (`model`) VALUES ('努比亚 Z40S Pro');
INSERT INTO `model` (`model`) VALUES ('小米 12S Ultra');
INSERT INTO `model` (`model`) VALUES ('小辣椒 NB18');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi Note11T Pro+');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone 12');
INSERT INTO `model` (`model`) VALUES ('多亲 F22 Pro');
INSERT INTO `model` (`model`) VALUES ('索尼 Xperia1 III');
INSERT INTO `model` (`model`) VALUES ('vivo T2x');
INSERT INTO `model` (`model`) VALUES ('中兴 Axon 40 Ultra');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO U5');
INSERT INTO `model` (`model`) VALUES ('小米 12 Pro 天玑版');
INSERT INTO `model` (`model`) VALUES ('努比亚 红魔7 Pro');
INSERT INTO `model` (`model`) VALUES ('朵唯 D50 Pro');
INSERT INTO `model` (`model`) VALUES ('华为 nova9 SE');
INSERT INTO `model` (`model`) VALUES ('华为 nova9');
INSERT INTO `model` (`model`) VALUES ('OPPO A35');
INSERT INTO `model` (`model`) VALUES ('U-Magic 30e');
INSERT INTO `model` (`model`) VALUES ('努比亚 红魔6R');
INSERT INTO `model` (`model`) VALUES ('荣耀 60');
INSERT INTO `model` (`model`) VALUES ('金立 A880');
INSERT INTO `model` (`model`) VALUES ('酷维 A13');
INSERT INTO `model` (`model`) VALUES ('realme GT Neo2');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone 13');
INSERT INTO `model` (`model`) VALUES ('飞利浦 PH1');
INSERT INTO `model` (`model`) VALUES ('摩托罗拉 edge X30');
INSERT INTO `model` (`model`) VALUES ('OPPO K10 Pro');
INSERT INTO `model` (`model`) VALUES ('联想 拯救者电竞手机 Y70');
INSERT INTO `model` (`model`) VALUES ('荣耀 Magic3 Pro');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi Note10 Pro');
INSERT INTO `model` (`model`) VALUES ('荣耀 70 Pro');
INSERT INTO `model` (`model`) VALUES ('摩托罗拉 razr 2022');
INSERT INTO `model` (`model`) VALUES ('荣耀 50 SE');
INSERT INTO `model` (`model`) VALUES ('一加 9');
INSERT INTO `model` (`model`) VALUES ('索爱 S08A');
INSERT INTO `model` (`model`) VALUES ('诺基亚 G50');
INSERT INTO `model` (`model`) VALUES ('U-Magic 50');
INSERT INTO `model` (`model`) VALUES ('OPPO A96');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO Z5');
INSERT INTO `model` (`model`) VALUES ('荣耀 X30 Max');
INSERT INTO `model` (`model`) VALUES ('纽曼 X13');
INSERT INTO `model` (`model`) VALUES ('荣耀 畅玩30 Plus');
INSERT INTO `model` (`model`) VALUES ('vivo X80 Pro');
INSERT INTO `model` (`model`) VALUES ('小米 Civi 1S');
INSERT INTO `model` (`model`) VALUES ('realme GT2');
INSERT INTO `model` (`model`) VALUES ('中兴 Blade V880+');
INSERT INTO `model` (`model`) VALUES ('OPPO A32');
INSERT INTO `model` (`model`) VALUES ('vivo Y32');
INSERT INTO `model` (`model`) VALUES ('天语 i13');
INSERT INTO `model` (`model`) VALUES ('荣耀 X30i');
INSERT INTO `model` (`model`) VALUES ('荣耀 60 SE');
INSERT INTO `model` (`model`) VALUES ('魅族 18s');
INSERT INTO `model` (`model`) VALUES ('一加 9 RT');
INSERT INTO `model` (`model`) VALUES ('一加 10 Pro');
INSERT INTO `model` (`model`) VALUES ('海信 阅读手机 A9');
INSERT INTO `model` (`model`) VALUES ('红魔 7s Pro');
INSERT INTO `model` (`model`) VALUES ('华为 畅享20e');
INSERT INTO `model` (`model`) VALUES ('索尼 Xperia5 III');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone 14 Pro Max');
INSERT INTO `model` (`model`) VALUES ('ROG 6');
INSERT INTO `model` (`model`) VALUES ('关爱心 A8');
INSERT INTO `model` (`model`) VALUES ('vivo X Note');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone 13 Pro');
INSERT INTO `model` (`model`) VALUES ('华为 Mate Xs2');
INSERT INTO `model` (`model`) VALUES ('诺基亚 C20 Plus');
INSERT INTO `model` (`model`) VALUES ('华为 nova10 Pro');
INSERT INTO `model` (`model`) VALUES ('小米 12');
INSERT INTO `model` (`model`) VALUES ('小米 11 青春版');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone 14 Plus');
INSERT INTO `model` (`model`) VALUES ('荣耀 V40');
INSERT INTO `model` (`model`) VALUES ('诺基亚 105');
INSERT INTO `model` (`model`) VALUES ('多亲 F21 Pro+');
INSERT INTO `model` (`model`) VALUES ('康佳 U20');
INSERT INTO `model` (`model`) VALUES ('天语 P50 Pro');
INSERT INTO `model` (`model`) VALUES ('小米 11');
INSERT INTO `model` (`model`) VALUES ('麦芒 11');
INSERT INTO `model` (`model`) VALUES ('vivo X Fold');
INSERT INTO `model` (`model`) VALUES ('康佳 U21');
INSERT INTO `model` (`model`) VALUES ('U-Magic 20 Plus');
INSERT INTO `model` (`model`) VALUES ('OPPO K10');
INSERT INTO `model` (`model`) VALUES ('N-ZONE S7 Pro');
INSERT INTO `model` (`model`) VALUES ('荣耀 Magic4 至臻版');
INSERT INTO `model` (`model`) VALUES ('荣耀 Magic3');
INSERT INTO `model` (`model`) VALUES ('索爱 M9');
INSERT INTO `model` (`model`) VALUES ('三星 S22 Ultra');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO 9 Pro');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone SE3');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi Note9');
INSERT INTO `model` (`model`) VALUES ('酷派 COOL20');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone XR');
INSERT INTO `model` (`model`) VALUES ('中兴 Axon 40 Pro');
INSERT INTO `model` (`model`) VALUES ('vivo T1');
INSERT INTO `model` (`model`) VALUES ('Hi nova 9 Pro');
INSERT INTO `model` (`model`) VALUES ('小米 12 Pro');
INSERT INTO `model` (`model`) VALUES ('荣耀 60 Pro');
INSERT INTO `model` (`model`) VALUES ('realme Q3s');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO Z6x');
INSERT INTO `model` (`model`) VALUES ('荣耀 畅玩20');
INSERT INTO `model` (`model`) VALUES ('realme Q5i');
INSERT INTO `model` (`model`) VALUES ('华为 P40');
INSERT INTO `model` (`model`) VALUES ('小米 10');
INSERT INTO `model` (`model`) VALUES ('努比亚 红魔6');
INSERT INTO `model` (`model`) VALUES ('索尼 Xperia PRO-I');
INSERT INTO `model` (`model`) VALUES ('朵唯 MAX');
INSERT INTO `model` (`model`) VALUES ('守护宝 K230');
INSERT INTO `model` (`model`) VALUES ('小米 11 青春活力版');
INSERT INTO `model` (`model`) VALUES ('金立 L9+');
INSERT INTO `model` (`model`) VALUES ('Hi nova 9 SE');
INSERT INTO `model` (`model`) VALUES ('守护宝 K210');
INSERT INTO `model` (`model`) VALUES ('荣耀 70 Pro+');
INSERT INTO `model` (`model`) VALUES ('联想 拯救者电竞手机 Y90');
INSERT INTO `model` (`model`) VALUES ('康佳 U22');
INSERT INTO `model` (`model`) VALUES ('诺基亚 2660 Flip');
INSERT INTO `model` (`model`) VALUES ('索爱 Z6');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi K50 电竞版');
INSERT INTO `model` (`model`) VALUES ('VERTU AYXTA FOLD');
INSERT INTO `model` (`model`) VALUES ('索爱 P60 Pro');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone 11');
INSERT INTO `model` (`model`) VALUES ('诺基亚 105 4G');
INSERT INTO `model` (`model`) VALUES ('360 OS Q10 Pro');
INSERT INTO `model` (`model`) VALUES ('小米 Civi');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E102A');
INSERT INTO `model` (`model`) VALUES ('360 OS Q10');
INSERT INTO `model` (`model`) VALUES ('小辣椒 R17');
INSERT INTO `model` (`model`) VALUES ('诺基亚 6300');
INSERT INTO `model` (`model`) VALUES ('OPPO Find X5 Pro');
INSERT INTO `model` (`model`) VALUES ('OPPO Find N');
INSERT INTO `model` (`model`) VALUES ('三星 S21 FE');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO Neo5S');
INSERT INTO `model` (`model`) VALUES ('华为 nova10z');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi 9A');
INSERT INTO `model` (`model`) VALUES ('OPPO A36');
INSERT INTO `model` (`model`) VALUES ('索爱 T1');
INSERT INTO `model` (`model`) VALUES ('中兴 远航30');
INSERT INTO `model` (`model`) VALUES ('诺基亚 5310');
INSERT INTO `model` (`model`) VALUES ('朵唯 F21');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E528');
INSERT INTO `model` (`model`) VALUES ('OPPO Reno6 Pro+');
INSERT INTO `model` (`model`) VALUES ('诺基亚 新150');
INSERT INTO `model` (`model`) VALUES ('守护宝 K199');
INSERT INTO `model` (`model`) VALUES ('索爱 M6');
INSERT INTO `model` (`model`) VALUES ('守护宝 K289 健康码版');
INSERT INTO `model` (`model`) VALUES ('vivo S12');
INSERT INTO `model` (`model`) VALUES ('守护宝 F20');
INSERT INTO `model` (`model`) VALUES ('康佳 19');
INSERT INTO `model` (`model`) VALUES ('海信 阅读手机 A7');
INSERT INTO `model` (`model`) VALUES ('Hi nova 9');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone 12 Pro Max');
INSERT INTO `model` (`model`) VALUES ('纽曼 R15C');
INSERT INTO `model` (`model`) VALUES ('金立 X6');
INSERT INTO `model` (`model`) VALUES ('朵唯 D60 Pro Max');
INSERT INTO `model` (`model`) VALUES ('努比亚 红魔7S');
INSERT INTO `model` (`model`) VALUES ('纽曼 N220');
INSERT INTO `model` (`model`) VALUES ('OPPO A57');
INSERT INTO `model` (`model`) VALUES ('天语 T2');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E163K');
INSERT INTO `model` (`model`) VALUES ('realme V23');
INSERT INTO `model` (`model`) VALUES ('vivo S12 Pro');
INSERT INTO `model` (`model`) VALUES ('诺基亚 125');
INSERT INTO `model` (`model`) VALUES ('飞利浦 S351F');
INSERT INTO `model` (`model`) VALUES ('U-Magic 50 Plus');
INSERT INTO `model` (`model`) VALUES ('华为 Mate40E');
INSERT INTO `model` (`model`) VALUES ('AGM G1S');
INSERT INTO `model` (`model`) VALUES ('OPPO K9');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E535');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E319');
INSERT INTO `model` (`model`) VALUES ('AGM M6');
INSERT INTO `model` (`model`) VALUES ('纽曼 N99');
INSERT INTO `model` (`model`) VALUES ('华为 Mate40 Pro');
INSERT INTO `model` (`model`) VALUES ('AGM G1');
INSERT INTO `model` (`model`) VALUES ('诺基亚 215 4G 支付版');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi Note9 Pro');
INSERT INTO `model` (`model`) VALUES ('诺基亚 225 4G 支付版');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone 13 mini');
INSERT INTO `model` (`model`) VALUES ('努比亚 Z30 Pro');
INSERT INTO `model` (`model`) VALUES ('乐视 Y1 Pro');
INSERT INTO `model` (`model`) VALUES ('小辣椒 310');
INSERT INTO `model` (`model`) VALUES ('AGM H2');
INSERT INTO `model` (`model`) VALUES ('金立 M3');
INSERT INTO `model` (`model`) VALUES ('华为 nova7');
INSERT INTO `model` (`model`) VALUES ('realme Q5 Pro');
INSERT INTO `model` (`model`) VALUES ('诺基亚 110');
INSERT INTO `model` (`model`) VALUES ('华为 P50 Pocket');
INSERT INTO `model` (`model`) VALUES ('vivo Y55s');
INSERT INTO `model` (`model`) VALUES ('小辣椒 320');
INSERT INTO `model` (`model`) VALUES ('OPPO A93s');
INSERT INTO `model` (`model`) VALUES ('三星 A52');
INSERT INTO `model` (`model`) VALUES ('金立 Ti13');
INSERT INTO `model` (`model`) VALUES ('三星 S22+');
INSERT INTO `model` (`model`) VALUES ('华为 nova8');
INSERT INTO `model` (`model`) VALUES ('OPPO Reno7 SE');
INSERT INTO `model` (`model`) VALUES ('realme GT Neo2T');
INSERT INTO `model` (`model`) VALUES ('金立 L19');
INSERT INTO `model` (`model`) VALUES ('麦芒 10');
INSERT INTO `model` (`model`) VALUES ('OPPO A35');
INSERT INTO `model` (`model`) VALUES ('vivo T1x');
INSERT INTO `model` (`model`) VALUES ('诺基亚 8000');
INSERT INTO `model` (`model`) VALUES ('三星 Z Flip3');
INSERT INTO `model` (`model`) VALUES ('华为 畅享20');
INSERT INTO `model` (`model`) VALUES ('荣耀 Play5T Pro');
INSERT INTO `model` (`model`) VALUES ('纽曼 L99s');
INSERT INTO `model` (`model`) VALUES ('AGM M7');
INSERT INTO `model` (`model`) VALUES ('纽曼 D189');
INSERT INTO `model` (`model`) VALUES ('关爱心 X13 Pro');
INSERT INTO `model` (`model`) VALUES ('荣耀 50 Pro');
INSERT INTO `model` (`model`) VALUES ('华为 nova8 Pro');
INSERT INTO `model` (`model`) VALUES ('天语 Q1S');
INSERT INTO `model` (`model`) VALUES ('荣耀 畅玩30');
INSERT INTO `model` (`model`) VALUES ('荣耀 X20 SE');
INSERT INTO `model` (`model`) VALUES ('朵唯 X21');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E515A');
INSERT INTO `model` (`model`) VALUES ('魅族 18');
INSERT INTO `model` (`model`) VALUES ('金立 V3');
INSERT INTO `model` (`model`) VALUES ('realme V11s');
INSERT INTO `model` (`model`) VALUES ('纽曼 NM20');
INSERT INTO `model` (`model`) VALUES ('OPPO Reno7');
INSERT INTO `model` (`model`) VALUES ('天语 Q3(Q31)');
INSERT INTO `model` (`model`) VALUES ('vivo X70t');
INSERT INTO `model` (`model`) VALUES ('索爱 Z9C');
INSERT INTO `model` (`model`) VALUES ('海信 音乐阅读');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E568');
INSERT INTO `model` (`model`) VALUES ('摩托罗拉 edge X30 Pro');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E256S');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone 14 Pro');
INSERT INTO `model` (`model`) VALUES ('多亲 F21 Pro');
INSERT INTO `model` (`model`) VALUES ('黑鲨 3');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E536');
INSERT INTO `model` (`model`) VALUES ('誉品 K12 Pro Max');
INSERT INTO `model` (`model`) VALUES ('纽曼 T10mini');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO 8 Pro');
INSERT INTO `model` (`model`) VALUES ('ROG 5s');
INSERT INTO `model` (`model`) VALUES ('努比亚 红魔7');
INSERT INTO `model` (`model`) VALUES ('华为 Mate30E Pro');
INSERT INTO `model` (`model`) VALUES ('守护宝 K399');
INSERT INTO `model` (`model`) VALUES ('守护宝 K580');
INSERT INTO `model` (`model`) VALUES ('纽曼 L8');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi Note10');
INSERT INTO `model` (`model`) VALUES ('华为 Mate40E Pro');
INSERT INTO `model` (`model`) VALUES ('华为 P40 Pro');
INSERT INTO `model` (`model`) VALUES ('小米 MIX Fold 2');
INSERT INTO `model` (`model`) VALUES ('OPPO Reno6 Pro');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E529');
INSERT INTO `model` (`model`) VALUES ('纽曼 9s');
INSERT INTO `model` (`model`) VALUES ('三星 W22');
INSERT INTO `model` (`model`) VALUES ('小米 MIX4');
INSERT INTO `model` (`model`) VALUES ('vivo Y71t');
INSERT INTO `model` (`model`) VALUES ('OPPO A72');
INSERT INTO `model` (`model`) VALUES ('天语 S6');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E506');
INSERT INTO `model` (`model`) VALUES ('OPPO Reno6');
INSERT INTO `model` (`model`) VALUES ('朵唯 D11');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone 13 Pro Max');
INSERT INTO `model` (`model`) VALUES ('三星 Z Fold3');
INSERT INTO `model` (`model`) VALUES ('N-ZONE 50 Pro');
INSERT INTO `model` (`model`) VALUES ('金立 G13 Pro');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E258S');
INSERT INTO `model` (`model`) VALUES ('realme GT2 Pro');
INSERT INTO `model` (`model`) VALUES ('努比亚 红魔7S Pro');
INSERT INTO `model` (`model`) VALUES ('酷派 COOL20S');
INSERT INTO `model` (`model`) VALUES ('小辣椒 X12');
INSERT INTO `model` (`model`) VALUES ('金立 T90');
INSERT INTO `model` (`model`) VALUES ('小米 MIX FOLD');
INSERT INTO `model` (`model`) VALUES ('OPPO A56');
INSERT INTO `model` (`model`) VALUES ('华为 nova7 Pro');
INSERT INTO `model` (`model`) VALUES ('金立 T30D');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E309');
INSERT INTO `model` (`model`) VALUES ('华为 nova8 SE 4G');
INSERT INTO `model` (`model`) VALUES ('关爱心 N99');
INSERT INTO `model` (`model`) VALUES ('AGM X5');
INSERT INTO `model` (`model`) VALUES ('8848 M6');
INSERT INTO `model` (`model`) VALUES ('华为 Mate40 RS 保时捷设计');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi Note11E');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi Note11E Pro');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi Note9 4G');
INSERT INTO `model` (`model`) VALUES ('纽曼 A9');
INSERT INTO `model` (`model`) VALUES ('索爱 Z58');
INSERT INTO `model` (`model`) VALUES ('多亲 Qin2 Pro');
INSERT INTO `model` (`model`) VALUES ('realme V25');
INSERT INTO `model` (`model`) VALUES ('OPPO K7x');
INSERT INTO `model` (`model`) VALUES ('多亲 Qin1s+');
INSERT INTO `model` (`model`) VALUES ('三星 Note20 Ultra');
INSERT INTO `model` (`model`) VALUES ('Tonino Lamborghini TL68');
INSERT INTO `model` (`model`) VALUES ('OPPO A55s');
INSERT INTO `model` (`model`) VALUES ('守护宝 F20 Plus');
INSERT INTO `model` (`model`) VALUES ('vivo S10');
INSERT INTO `model` (`model`) VALUES ('小米 11 Ultra');
INSERT INTO `model` (`model`) VALUES ('纽曼 L6');
INSERT INTO `model` (`model`) VALUES ('vivo Y33s');
INSERT INTO `model` (`model`) VALUES ('天语 V3S');
INSERT INTO `model` (`model`) VALUES ('华为 Mate40 RS 保时捷设计 典藏版');
INSERT INTO `model` (`model`) VALUES ('荣耀 Magic3 至臻版');
INSERT INTO `model` (`model`) VALUES ('誉品 X12');
INSERT INTO `model` (`model`) VALUES ('索爱 T618');
INSERT INTO `model` (`model`) VALUES ('朵唯 D11 Pro');
INSERT INTO `model` (`model`) VALUES ('中兴 远航4');
INSERT INTO `model` (`model`) VALUES ('诺基亚 105 新SS');
INSERT INTO `model` (`model`) VALUES ('vivo X70 Pro+');
INSERT INTO `model` (`model`) VALUES ('纽曼 F91');
INSERT INTO `model` (`model`) VALUES ('诺基亚 5710 XpressAudio');
INSERT INTO `model` (`model`) VALUES ('realme V20');
INSERT INTO `model` (`model`) VALUES ('纽曼 M560');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone 11 Pro Max');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO 9');
INSERT INTO `model` (`model`) VALUES ('荣耀 V40 轻奢版');
INSERT INTO `model` (`model`) VALUES ('纽曼 F9');
INSERT INTO `model` (`model`) VALUES ('鼎桥 TD Tech P50');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E308');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E517A');
INSERT INTO `model` (`model`) VALUES ('华为 Mate40 Pro+');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone 12 Pro');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E219');
INSERT INTO `model` (`model`) VALUES ('华为 Mate50 RS 保时捷设计');
INSERT INTO `model` (`model`) VALUES ('中兴 S30 SE');
INSERT INTO `model` (`model`) VALUES ('VERTU iVERTU');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E527');
INSERT INTO `model` (`model`) VALUES ('守护宝 K299');
INSERT INTO `model` (`model`) VALUES ('酷派 COOL20 Pro');
INSERT INTO `model` (`model`) VALUES ('天语 N1');
INSERT INTO `model` (`model`) VALUES ('荣耀 X10');
INSERT INTO `model` (`model`) VALUES ('红魔 7s');
INSERT INTO `model` (`model`) VALUES ('纽曼 S90');
INSERT INTO `model` (`model`) VALUES ('纽曼 K99 mini');
INSERT INTO `model` (`model`) VALUES ('小米 11 Pro');
INSERT INTO `model` (`model`) VALUES ('麦芒 10 SE');
INSERT INTO `model` (`model`) VALUES ('U-Magic 20');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E566');
INSERT INTO `model` (`model`) VALUES ('realme GT 大师版');
INSERT INTO `model` (`model`) VALUES ('小米 10S');
INSERT INTO `model` (`model`) VALUES ('天语 V6S');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E259S');
INSERT INTO `model` (`model`) VALUES ('OPPO A93');
INSERT INTO `model` (`model`) VALUES ('金立 V16D');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO 8');
INSERT INTO `model` (`model`) VALUES ('realme Q3t');
INSERT INTO `model` (`model`) VALUES ('天语 Q8');
INSERT INTO `model` (`model`) VALUES ('vivo iQOO 7');
INSERT INTO `model` (`model`) VALUES ('华为 Mate X2');
INSERT INTO `model` (`model`) VALUES ('天语 E2');
INSERT INTO `model` (`model`) VALUES ('纽曼 F20');
INSERT INTO `model` (`model`) VALUES ('天语 N1S');
INSERT INTO `model` (`model`) VALUES ('纽曼 F6');
INSERT INTO `model` (`model`) VALUES ('欧亚信 13 Pro');
INSERT INTO `model` (`model`) VALUES ('朵唯 D9');
INSERT INTO `model` (`model`) VALUES ('华为 P40 Pro+');
INSERT INTO `model` (`model`) VALUES ('关爱心 G3');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E366');
INSERT INTO `model` (`model`) VALUES ('CONQUEST S30');
INSERT INTO `model` (`model`) VALUES ('摩托罗拉 G51');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E533');
INSERT INTO `model` (`model`) VALUES ('三星 S21');
INSERT INTO `model` (`model`) VALUES ('索爱 Z6S');
INSERT INTO `model` (`model`) VALUES ('OPPO K9s');
INSERT INTO `model` (`model`) VALUES ('一加 9R');
INSERT INTO `model` (`model`) VALUES ('荣耀 30');
INSERT INTO `model` (`model`) VALUES ('CONQUEST S21');
INSERT INTO `model` (`model`) VALUES ('酷和 K13 Pro');
INSERT INTO `model` (`model`) VALUES ('CONQUEST S20');
INSERT INTO `model` (`model`) VALUES ('华为 Mate X2 典藏版');
INSERT INTO `model` (`model`) VALUES ('华为 nova7 SE 乐活版');
INSERT INTO `model` (`model`) VALUES ('OPPO A96');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E209');
INSERT INTO `model` (`model`) VALUES ('OPPO K9x');
INSERT INTO `model` (`model`) VALUES ('华为 Mate40');
INSERT INTO `model` (`model`) VALUES ('纽曼 T30');
INSERT INTO `model` (`model`) VALUES ('金立 L20');
INSERT INTO `model` (`model`) VALUES ('乐视 S1');
INSERT INTO `model` (`model`) VALUES ('守护宝 X13 Pro');
INSERT INTO `model` (`model`) VALUES ('克里特 M7');
INSERT INTO `model` (`model`) VALUES ('纽曼 F80');
INSERT INTO `model` (`model`) VALUES ('vivo S10e');
INSERT INTO `model` (`model`) VALUES ('ROG 6 Pro');
INSERT INTO `model` (`model`) VALUES ('vivo Y76s');
INSERT INTO `model` (`model`) VALUES ('尼凯恩 EN3');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E218L');
INSERT INTO `model` (`model`) VALUES ('CONQUEST F2');
INSERT INTO `model` (`model`) VALUES ('荣耀 Magic V');
INSERT INTO `model` (`model`) VALUES ('N-ZONE S7');
INSERT INTO `model` (`model`) VALUES ('vivo Y10 t1版');
INSERT INTO `model` (`model`) VALUES ('华为 Mate30');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi K40');
INSERT INTO `model` (`model`) VALUES ('天语 S8');
INSERT INTO `model` (`model`) VALUES ('华为 Mate X2 4G');
INSERT INTO `model` (`model`) VALUES ('OPPO Find X3');
INSERT INTO `model` (`model`) VALUES ('OPPO K10');
INSERT INTO `model` (`model`) VALUES ('海信 阅读手机 A5');
INSERT INTO `model` (`model`) VALUES ('克里特 12 Pro');
INSERT INTO `model` (`model`) VALUES ('克里特 V11V 折叠屏');
INSERT INTO `model` (`model`) VALUES ('vivo S10 Pro');
INSERT INTO `model` (`model`) VALUES ('黑鲨 4 Pro');
INSERT INTO `model` (`model`) VALUES ('酷风 X2');
INSERT INTO `model` (`model`) VALUES ('纽曼 C9');
INSERT INTO `model` (`model`) VALUES ('金立 F6 Pro');
INSERT INTO `model` (`model`) VALUES ('天语 G5');
INSERT INTO `model` (`model`) VALUES ('多亲 K201');
INSERT INTO `model` (`model`) VALUES ('华为 畅享20 Pro');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi Note11 Pro+');
INSERT INTO `model` (`model`) VALUES ('金铠特 T5');
INSERT INTO `model` (`model`) VALUES ('三星 S21+');
INSERT INTO `model` (`model`) VALUES ('朵唯 12i');
INSERT INTO `model` (`model`) VALUES ('N-ZONE S7 Pro+');
INSERT INTO `model` (`model`) VALUES ('优尚丰 B9000');
INSERT INTO `model` (`model`) VALUES ('诺基亚 220');
INSERT INTO `model` (`model`) VALUES ('天语 F12 Pro');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi K40 游戏增强版');
INSERT INTO `model` (`model`) VALUES ('华为 畅享20 SE');
INSERT INTO `model` (`model`) VALUES ('Apple iPhone XS Max');
INSERT INTO `model` (`model`) VALUES ('金立 M50 Pro');
INSERT INTO `model` (`model`) VALUES ('OPPO Reno8 Pro');
INSERT INTO `model` (`model`) VALUES ('纽曼 N21');
INSERT INTO `model` (`model`) VALUES ('海信 阅读手机 A6L');
INSERT INTO `model` (`model`) VALUES ('纽曼 F10');
INSERT INTO `model` (`model`) VALUES ('海信 D11');
INSERT INTO `model` (`model`) VALUES ('守护宝 H30');
INSERT INTO `model` (`model`) VALUES ('飞利浦 E212A');
INSERT INTO `model` (`model`) VALUES ('华为 Mate30 RS 保时捷版');
INSERT INTO `model` (`model`) VALUES ('OPPO Reno7 Pro');
INSERT INTO `model` (`model`) VALUES ('小米 10 青春版');
INSERT INTO `model` (`model`) VALUES ('乐视 Y2 Pro');
INSERT INTO `model` (`model`) VALUES ('OPPO Find X5');
INSERT INTO `model` (`model`) VALUES ('努比亚 红魔6S Pro');
INSERT INTO `model` (`model`) VALUES ('朵唯 R20');
INSERT INTO `model` (`model`) VALUES ('小米 Redmi K40 Pro+');
INSERT INTO `model` (`model`) VALUES ('纽曼 R15');
INSERT INTO `model` (`model`) VALUES ('华为 Mate40 Pro 4G');
COMMIT;

-- ----------------------------
-- Table structure for power
-- ----------------------------
DROP TABLE IF EXISTS `power`;
CREATE TABLE `power` (
  `power` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of power
-- ----------------------------
BEGIN;
INSERT INTO `power` (`power`) VALUES ('25W');
INSERT INTO `power` (`power`) VALUES ('66W');
INSERT INTO `power` (`power`) VALUES ('67W');
INSERT INTO `power` (`power`) VALUES ('20W');
INSERT INTO `power` (`power`) VALUES ('33W');
INSERT INTO `power` (`power`) VALUES ('10W');
INSERT INTO `power` (`power`) VALUES ('1W');
INSERT INTO `power` (`power`) VALUES ('44W');
INSERT INTO `power` (`power`) VALUES ('22.5W');
INSERT INTO `power` (`power`) VALUES ('18W');
INSERT INTO `power` (`power`) VALUES ('30W');
INSERT INTO `power` (`power`) VALUES ('40W');
INSERT INTO `power` (`power`) VALUES ('60W');
INSERT INTO `power` (`power`) VALUES ('120W');
INSERT INTO `power` (`power`) VALUES ('55W');
INSERT INTO `power` (`power`) VALUES ('150W');
INSERT INTO `power` (`power`) VALUES ('80W');
INSERT INTO `power` (`power`) VALUES ('68W');
INSERT INTO `power` (`power`) VALUES ('65W');
INSERT INTO `power` (`power`) VALUES ('125W');
INSERT INTO `power` (`power`) VALUES ('5W');
INSERT INTO `power` (`power`) VALUES ('200W');
INSERT INTO `power` (`power`) VALUES ('100W');
INSERT INTO `power` (`power`) VALUES ('27W');
INSERT INTO `power` (`power`) VALUES ('135W');
INSERT INTO `power` (`power`) VALUES ('36W');
INSERT INTO `power` (`power`) VALUES ('45W');
INSERT INTO `power` (`power`) VALUES ('24W');
INSERT INTO `power` (`power`) VALUES ('50W');
INSERT INTO `power` (`power`) VALUES ('22W');
INSERT INTO `power` (`power`) VALUES ('15W');
INSERT INTO `power` (`power`) VALUES ('151W');
INSERT INTO `power` (`power`) VALUES ('49W');
INSERT INTO `power` (`power`) VALUES ('500W');
INSERT INTO `power` (`power`) VALUES ('26W');
INSERT INTO `power` (`power`) VALUES ('3W');
COMMIT;

-- ----------------------------
-- Table structure for refreshRate
-- ----------------------------
DROP TABLE IF EXISTS `refreshRate`;
CREATE TABLE `refreshRate` (
  `refreshRate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of refreshRate
-- ----------------------------
BEGIN;
INSERT INTO `refreshRate` (`refreshRate`) VALUES ('120Hz');
INSERT INTO `refreshRate` (`refreshRate`) VALUES ('90Hz');
INSERT INTO `refreshRate` (`refreshRate`) VALUES ('144Hz');
INSERT INTO `refreshRate` (`refreshRate`) VALUES ('60Hz');
INSERT INTO `refreshRate` (`refreshRate`) VALUES ('165Hz');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`id`, `username`, `password`, `avatar`, `real_name`, `type`, `create_time`) VALUES ('1', 'admin', 'b9d11b3be25f5a1a7dc8ca04cd310b28', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for wirelessCharging
-- ----------------------------
DROP TABLE IF EXISTS `wirelessCharging`;
CREATE TABLE `wirelessCharging` (
  `wirelessCharging` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of wirelessCharging
-- ----------------------------
BEGIN;
INSERT INTO `wirelessCharging` (`wirelessCharging`) VALUES ('20W');
INSERT INTO `wirelessCharging` (`wirelessCharging`) VALUES ('50W');
INSERT INTO `wirelessCharging` (`wirelessCharging`) VALUES ('30W');
INSERT INTO `wirelessCharging` (`wirelessCharging`) VALUES ('40W');
INSERT INTO `wirelessCharging` (`wirelessCharging`) VALUES ('15W');
INSERT INTO `wirelessCharging` (`wirelessCharging`) VALUES ('60W');
INSERT INTO `wirelessCharging` (`wirelessCharging`) VALUES ('10W');
INSERT INTO `wirelessCharging` (`wirelessCharging`) VALUES ('5W');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
