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

 Date: 18/12/2020 16:37:58
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
  `about` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` int(255) NULL DEFAULT NULL,
  `id_address` int(255) NULL DEFAULT NULL,
  `major` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'hoang', '123', 'Nguyễn Văn A', '/resources/user/1/rong.png', 3.50, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla interdum sed diam ac fermentum. Mauris nec pellentesque neque. Cras nec diam euismod, congue sapien eu, fermentum libero. Vestibulum quis sem.</p>\r\n								', 'yourmail@gmail.com', '039595500', 1, NULL, 'Công ty phát triển phần mềm', 'Rồng Vàng', NULL, NULL, NULL, NULL, 'Quận 12');
INSERT INTO `account` VALUES (2, 'test1', '123', 'Daniel Duke', '/resources/user/2/can-2.png', 2.50, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla interdum sed diam ac fermentum. Mauris nec pellentesque neque. Cras nec diam euismod, congue sapien eu, fermentum libero. Vestibulum quis sem.</p>\r\n								', 'mail@gmail.com', '03457989', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `tinh/thanhpho` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `quan/huyen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `xa/phuong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `diachi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 'TP HCM', 'Phu Nhuan', '3', '12');

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tengoi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gia` decimal(65, 0) NULL DEFAULT NULL,
  `soluongbaidang` int(255) NULL DEFAULT NULL,
  `thoihan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mota` varchar(7000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doUuTien` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goibaidang
-- ----------------------------
INSERT INTO `goibaidang` VALUES (1, 'Dùng thử', 0, 20, '1 tuần', 'bạn có thể thoải mái trải nghiệm', 'thấp');
INSERT INTO `goibaidang` VALUES (2, 'Cơ bản', 190000, 90, '30 ngày', 'phù hợp với nhà tuyển dụng có kinh phí thấp', 'trung bình');
INSERT INTO `goibaidang` VALUES (3, 'Nâng cao', 290000, 150, '30 ngày', 'phù hợp với hầu hết nhà tuyển dụng', 'khá');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `tencongviec` varchar(6000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `chitiet` varchar(6000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `chiphi` decimal(65, 0) NULL DEFAULT NULL,
  `idAccount` int(255) NULL DEFAULT NULL,
  `img` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `soluongtuyen` int(255) NULL DEFAULT NULL,
  `ngaydang` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES (1, 'Thiết kế web bán đồ', NULL, 900000, 1, 'resources/assets/img/client-4.jpg', 2, '2020-12-12');
INSERT INTO `job` VALUES (2, 'Thiết kế LOGO', NULL, 800000, 2, 'resources/assets/img/client-1.jpg', 1, '2020-12-14');
INSERT INTO `job` VALUES (3, 'Thiết kế App', NULL, 1700000, 3, 'resources/assets/img/client-2.jpg', 3, '2020-12-15');
INSERT INTO `job` VALUES (4, 'Thiết kế quảng cáo', NULL, 120000, 1, 'resources/assets/img/client-4.jpg', 1, '2020-12-13');

-- ----------------------------
-- Table structure for subscriber
-- ----------------------------
DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE `subscriber`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_account` int(255) NULL DEFAULT NULL,
  `id_job` int(255) NOT NULL,
  `status` int(1) NULL DEFAULT NULL,
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
INSERT INTO `subscriber` VALUES (1, 2, 1, 3, '2020-12-11 17:23:15');
INSERT INTO `subscriber` VALUES (2, 1, 1, 2, '2020-12-24 18:04:05');

SET FOREIGN_KEY_CHECKS = 1;
