/*
 Navicat Premium Data Transfer

 Source Server         : My SQL
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : ecommerce

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 22/12/2020 02:23:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` mediumblob NULL,
  `star_average` float(3, 2) NULL DEFAULT NULL,
  `about` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` int(11) NULL DEFAULT NULL,
  `id_address` int(11) NULL DEFAULT NULL,
  `major` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `background` mediumblob NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_account` int(11) NOT NULL,
  `tinh/thanhpho` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `quan/huyen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `xa/phuong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `diachi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for evaluate
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_account` int(11) NULL DEFAULT NULL,
  `id_freelancer` int(11) NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `star` int(11) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_account`(`id_account`) USING BTREE,
  CONSTRAINT `evaluate_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `account` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goibaidang
-- ----------------------------
DROP TABLE IF EXISTS `goibaidang`;
CREATE TABLE `goibaidang`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tengoi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gia` decimal(65, 0) NULL DEFAULT NULL,
  `soluongbaidang` int(11) NULL DEFAULT NULL,
  `thoihan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mota` varchar(7000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doUuTien` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tencongviec` varchar(6000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `chitiet` varchar(6000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `chiphi` decimal(65, 0) NULL DEFAULT NULL,
  `idAccount` int(11) NULL DEFAULT NULL,
  `img` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `soluongtuyen` int(11) NULL DEFAULT NULL,
  `ngaydang` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for subscriber
-- ----------------------------
DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE `subscriber`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_account` int(11) NULL DEFAULT NULL,
  `id_job` int(11) NOT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `date_apply` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_job`(`id_job`) USING BTREE,
  INDEX `id_account`(`id_account`) USING BTREE,
  CONSTRAINT `subscriber_ibfk_1` FOREIGN KEY (`id_job`) REFERENCES `job` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `subscriber_ibfk_2` FOREIGN KEY (`id_account`) REFERENCES `account` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
