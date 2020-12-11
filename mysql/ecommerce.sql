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

 Date: 11/12/2020 18:12:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(255) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `star_average` float(3, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'hoang', '123', 'Nguyễn Văn A', '/resources/user/image/rong.png', NULL);
INSERT INTO `account` VALUES (2, 'test1', '123', 'Daniel Duke', '/resources/user/image/can-2.png', NULL);

-- ----------------------------
-- Table structure for evaluate
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_account` int(255) NULL DEFAULT NULL,
  `id_freelancer` int(255) NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `star` int(1) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_account`(`id_account`) USING BTREE,
  CONSTRAINT `evaluate_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `account` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluate
-- ----------------------------
INSERT INTO `evaluate` VALUES (1, 2, 1, '2020-12-06 14:46:49', 3, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia volu');
INSERT INTO `evaluate` VALUES (29, 2, 1, '2020-12-10 23:52:22', 3, '<p>12323</p>');
INSERT INTO `evaluate` VALUES (30, 2, 1, '2020-12-10 23:52:31', 5, '<p>Hi</p>');
INSERT INTO `evaluate` VALUES (31, 2, 1, '2020-12-10 23:53:33', 1, '<p>Rủ đi chơi</p>');

-- ----------------------------
-- Table structure for goibaidang
-- ----------------------------
DROP TABLE IF EXISTS `goibaidang`;
CREATE TABLE `goibaidang`  (
  `id` int(11) NOT NULL,
  `tengoi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gia` int(100) NULL DEFAULT NULL,
  `soluongbaidang` int(10) NULL DEFAULT NULL,
  `thoihan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mota` varchar(7000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `doUuTien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goibaidang
-- ----------------------------
INSERT INTO `goibaidang` VALUES (1, 'BASIC', 0, 10, 'DÙNG THỬ 1 TUẦN', 'bạn có thể thoải mái trải nghiệm', 'thấp');
INSERT INTO `goibaidang` VALUES (2, 'PREMIUM', 290000, 100, '1 THÁNG', 'gói phù hợp với nhà tuyển dụng', 'trung bình');
INSERT INTO `goibaidang` VALUES (3, 'ULTIMATE', 59000, 200, '1 THÁNG', 'phù hợp với nhà tuyển dụng có nhiều công việc', 'cao');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES (1);

-- ----------------------------
-- Table structure for subscriber
-- ----------------------------
DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE `subscriber`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_account` int(255) NULL DEFAULT NULL,
  `id_job` int(255) NOT NULL,
  `apply` int(1) NULL DEFAULT NULL,
  `date_apply` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_job`(`id_job`) USING BTREE,
  INDEX `id_account`(`id_account`) USING BTREE,
  CONSTRAINT `subscriber_ibfk_1` FOREIGN KEY (`id_job`) REFERENCES `job` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `subscriber_ibfk_2` FOREIGN KEY (`id_account`) REFERENCES `account` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subscriber
-- ----------------------------
INSERT INTO `subscriber` VALUES (1, 2, 1, 1, '2020-12-11 17:23:15');
INSERT INTO `subscriber` VALUES (2, 1, 1, 2, '2020-12-24 18:04:05');

SET FOREIGN_KEY_CHECKS = 1;
