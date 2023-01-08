/*
 Navicat Premium Data Transfer

 Source Server         : Me
 Source Server Type    : MySQL
 Source Server Version : 100425
 Source Host           : localhost:3306
 Source Schema         : forumhelpdesk

 Target Server Type    : MySQL
 Target Server Version : 100425
 File Encoding         : 65001

 Date: 05/01/2023 17:08:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for forum_ad
-- ----------------------------
DROP TABLE IF EXISTS `forum_ad`;
CREATE TABLE `forum_ad`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos` int(11) NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `image` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `script` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_ad
-- ----------------------------
INSERT INTO `forum_ad` VALUES (1, 1, 'image', '', '728x901.png', '', 'enable');
INSERT INTO `forum_ad` VALUES (2, 2, 'image', '', '320x100.png', '', 'disable');
INSERT INTO `forum_ad` VALUES (3, 3, 'image', '', '728x902.png', '', 'enable');
INSERT INTO `forum_ad` VALUES (4, 4, 'image', '', '300x250.png', '', 'enable');
INSERT INTO `forum_ad` VALUES (5, 5, 'image', '', '728x903.png', '', 'disable');
INSERT INTO `forum_ad` VALUES (6, 6, 'image', '', '320x1001.png', '', 'disable');

-- ----------------------------
-- Table structure for forum_admin
-- ----------------------------
DROP TABLE IF EXISTS `forum_admin`;
CREATE TABLE `forum_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pswd` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `app_logo` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fav_icon` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_admin
-- ----------------------------
INSERT INTO `forum_admin` VALUES (2, 'Administrator', 'admin', '7746c32c857a6c2e4cb85b72458778936796799836cc2005678c44f96b7171a884422f2bebebd7f263aa6a36b4bb6674a3cb6ddc4772ab071092859bc5a1c536lLl89M/mxivTN8xQ9NRky/WeDBkkMiSjZf+apGoaCiY=', 'mcproject.png', 'favicon.png');

-- ----------------------------
-- Table structure for forum_admin_copy1
-- ----------------------------
DROP TABLE IF EXISTS `forum_admin_copy1`;
CREATE TABLE `forum_admin_copy1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `app_title` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mobile_no` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `active` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'YES',
  `username` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pswd` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `app_logo` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fav_icon` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vcode` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_admin_copy1
-- ----------------------------
INSERT INTO `forum_admin_copy1` VALUES (2, 'Administrator', 'Forum Helpdesk', 'ranggarenaldi@gmail.com', NULL, NULL, 'YES', 'admin', '7746c32c857a6c2e4cb85b72458778936796799836cc2005678c44f96b7171a884422f2bebebd7f263aa6a36b4bb6674a3cb6ddc4772ab071092859bc5a1c536lLl89M/mxivTN8xQ9NRky/WeDBkkMiSjZf+apGoaCiY=', 'mcproject.png', 'favicon.png', 'xxxxxx');

-- ----------------------------
-- Table structure for forum_admin_notification
-- ----------------------------
DROP TABLE IF EXISTS `forum_admin_notification`;
CREATE TABLE `forum_admin_notification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for forum_category
-- ----------------------------
DROP TABLE IF EXISTS `forum_category`;
CREATE TABLE `forum_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `active` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'YES',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_category
-- ----------------------------
INSERT INTO `forum_category` VALUES (20, 'Printer', '-22-10-29:07:10:35', 'YES');
INSERT INTO `forum_category` VALUES (22, 'Setting Vcon App', 'setting-vcon-app', 'YES');
INSERT INTO `forum_category` VALUES (24, 'Windows OS', 'windows-os', 'YES');
INSERT INTO `forum_category` VALUES (25, 'Linux OS', 'linux-os', 'YES');
INSERT INTO `forum_category` VALUES (26, 'MAC OS', 'mac-os', 'YES');
INSERT INTO `forum_category` VALUES (27, 'Gold App', 'gold-app', 'YES');
INSERT INTO `forum_category` VALUES (28, 'Greats App', 'greats-app', 'YES');
INSERT INTO `forum_category` VALUES (29, 'Synology App', 'synology-app', 'YES');
INSERT INTO `forum_category` VALUES (30, 'Internet Error', 'internet-error', 'YES');
INSERT INTO `forum_category` VALUES (31, 'Browser Error', 'browser-error', 'YES');

-- ----------------------------
-- Table structure for forum_notification
-- ----------------------------
DROP TABLE IF EXISTS `forum_notification`;
CREATE TABLE `forum_notification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_ref` int(11) NULL DEFAULT NULL,
  `icon` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `active` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'YES',
  `created_on` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_notification
-- ----------------------------
INSERT INTO `forum_notification` VALUES (143, 60, '<i class=\"fas fa-retweet\"></i>', 'Yusuf add reply to your post', 'YES', '2022-10-29 16:26:38');

-- ----------------------------
-- Table structure for forum_posts
-- ----------------------------
DROP TABLE IF EXISTS `forum_posts`;
CREATE TABLE `forum_posts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desic` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `image` varchar(155) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_ref` int(11) NULL DEFAULT NULL,
  `cat_ref` int(11) NOT NULL,
  `created_on` datetime(0) NULL DEFAULT current_timestamp(0),
  `count` int(11) NOT NULL,
  `active` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'YES',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_ref`(`user_ref`) USING BTREE,
  CONSTRAINT `forum_posts_ibfk_1` FOREIGN KEY (`user_ref`) REFERENCES `forum_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_posts
-- ----------------------------
INSERT INTO `forum_posts` VALUES (46, 'Printer Error', '<p>Solusi untuk kode error printer ini E04 dan E05?</p>', NULL, 'printer-error', 60, 20, '2022-10-29 16:25:12', 12, 'YES');
INSERT INTO `forum_posts` VALUES (47, 'BlueScreen', '<p>Ada Solusi kenapa bisa gini ?</p><p><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Bsodwindows10.png/640px-Bsodwindows10.png\" alt=\"Blue screen of death - Wikipedia\"><br></p>', NULL, 'bluescreen', 61, 24, '2022-10-29 16:56:34', 6, 'YES');

-- ----------------------------
-- Table structure for forum_replay
-- ----------------------------
DROP TABLE IF EXISTS `forum_replay`;
CREATE TABLE `forum_replay`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_ref` int(11) NULL DEFAULT NULL,
  `post_ref` int(11) NULL DEFAULT NULL,
  `replay` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `image` varchar(155) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `time` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  `active` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'YES',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_ref`(`user_ref`) USING BTREE,
  INDEX `post_ref`(`post_ref`) USING BTREE,
  CONSTRAINT `forum_replay_ibfk_1` FOREIGN KEY (`user_ref`) REFERENCES `forum_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `forum_replay_ibfk_2` FOREIGN KEY (`post_ref`) REFERENCES `forum_posts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_replay
-- ----------------------------
INSERT INTO `forum_replay` VALUES (84, 61, 46, '<p>Penyebab kode ini adalah “The Fine Cartidge cannot be recognized “ atau Cartridge tidak terdeteksi</p><p>Biasanya cartridge tidak terpasang dengan benar atau ada salah satu cartridge rusak</p><p><span style=\"font-size: 1rem;\"><br></span></p><p><span style=\"font-size: 1rem;\">Cara mengatasinya :</span></p><p>-lepas cartridge -bersihkan -lalu pasang lagi&nbsp;&nbsp;</p><p>- ganti Cartridge</p><p>- pastikan bunyik klik saat memasangnya</p>', NULL, '2022-10-29 16:26:38', 'YES');

-- ----------------------------
-- Table structure for forum_replay_like
-- ----------------------------
DROP TABLE IF EXISTS `forum_replay_like`;
CREATE TABLE `forum_replay_like`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_ref` int(11) NULL DEFAULT NULL,
  `replay_ref` int(11) NULL DEFAULT NULL,
  `post_ref` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_ref`(`user_ref`) USING BTREE,
  INDEX `replay_ref`(`replay_ref`) USING BTREE,
  CONSTRAINT `forum_replay_like_ibfk_1` FOREIGN KEY (`user_ref`) REFERENCES `forum_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `forum_replay_like_ibfk_2` FOREIGN KEY (`replay_ref`) REFERENCES `forum_replay` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_replay_like
-- ----------------------------
INSERT INTO `forum_replay_like` VALUES (58, 61, 84, 46);

-- ----------------------------
-- Table structure for forum_reset_link
-- ----------------------------
DROP TABLE IF EXISTS `forum_reset_link`;
CREATE TABLE `forum_reset_link`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v_code` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_ref` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_ref`(`user_ref`) USING BTREE,
  CONSTRAINT `forum_reset_link_ibfk_1` FOREIGN KEY (`user_ref`) REFERENCES `forum_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for forum_script_header
-- ----------------------------
DROP TABLE IF EXISTS `forum_script_header`;
CREATE TABLE `forum_script_header`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txt` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_script_header
-- ----------------------------
INSERT INTO `forum_script_header` VALUES (1, '');

-- ----------------------------
-- Table structure for forum_settings
-- ----------------------------
DROP TABLE IF EXISTS `forum_settings`;
CREATE TABLE `forum_settings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activation` tinyint(4) NULL DEFAULT 0,
  `replay` tinyint(4) NULL DEFAULT 0,
  `like` tinyint(4) NULL DEFAULT 0,
  `pp` int(11) NOT NULL,
  `smtp` bit(1) NOT NULL,
  `host` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `port` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user` varchar(155) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pswd` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for forum_sub_cat
-- ----------------------------
DROP TABLE IF EXISTS `forum_sub_cat`;
CREATE TABLE `forum_sub_cat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_ref` int(11) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `meta` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `desic` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `active` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'YES',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for forum_users
-- ----------------------------
DROP TABLE IF EXISTS `forum_users`;
CREATE TABLE `forum_users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `image` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_users
-- ----------------------------
INSERT INTO `forum_users` VALUES (60, 'Rangga Renaldi Yusuf', 'rangga', '60IMG_20200620_184144_521.jpg', 'dee69da33dec860cff66d708efb2fd7c6ed46a9b73a23c6670459e394dc72842f0b20121acc6c53f74a9df495debe7ff806ad5155ad6ab5fc76e1c0ac78f9b90SYq8BdHFlEqdCBoI4p4n9ZlaFOMvAUm2yYi9SZ3oetc=');
INSERT INTO `forum_users` VALUES (61, 'Yusuf', 'yusuf', '', '759469ad0ef59c688eb4eae119e68a5a128cd46366f240dd16c5ae75509c6af36a433fc3c43548f2036322ce0eceeb18d80dedc7faedde95c376f50133532208TrggUhCYOnff4E18oicq7RyTzbVqS4wy8ZYLml1DRn4=');
INSERT INTO `forum_users` VALUES (63, 'test', 'test', '', 'dee69da33dec860cff66d708efb2fd7c6ed46a9b73a23c6670459e394dc72842f0b20121acc6c53f74a9df495debe7ff806ad5155ad6ab5fc76e1c0ac78f9b90SYq8BdHFlEqdCBoI4p4n9ZlaFOMvAUm2yYi9SZ3oetc=');
INSERT INTO `forum_users` VALUES (64, 'ad', 'ad', '', '80a97906717b7ced8e4ff4f950e2b585893644b0fd18b9861a1e88bae0e0470a86d6970803a0c3725838c44776691a2c13b83eec8a5bc4b7de08ff27cc297829KTv2xVnansDKY9SIGQtUkTs18YSDoalYgaNzZFuPw0c=');
INSERT INTO `forum_users` VALUES (66, 'test1', NULL, '', '2756b7178d000c16e4074c798ceb76e3b66364a4a8b3f3bbefcef4303363ec2a93f20b506fc3089aede8a193a297e5606ee90a1deb2da7d69dbce714cbc3783d58zJcdogeAKAOwkCI/zveOa50dE6lY171u57tJSdXvg=');
INSERT INTO `forum_users` VALUES (67, 'dini', 'dini', '', 'ff3319dcbda6e21248ef9a7e4a50884b825f1cd52e30170d887fac7267760cf67c9aef31a3c1c266f5cbf39a3657825cb54f8d95ef8039799b12521ac559dabdYQ6Vi4wKPt0rGTp9mzfuorJ6Xsb75NxJ/6Qbmtl9y14=');

-- ----------------------------
-- Table structure for forum_users_copy1
-- ----------------------------
DROP TABLE IF EXISTS `forum_users_copy1`;
CREATE TABLE `forum_users_copy1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mobile_number` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email_address` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `designation` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `image` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `active` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'YES',
  `verify` int(11) NOT NULL DEFAULT 0,
  `url` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_users_copy1
-- ----------------------------
INSERT INTO `forum_users_copy1` VALUES (60, 'Rangga Renaldi Yusuf', NULL, 'rangga', '', NULL, '60IMG_20200620_184144_521.jpg', 'dee69da33dec860cff66d708efb2fd7c6ed46a9b73a23c6670459e394dc72842f0b20121acc6c53f74a9df495debe7ff806ad5155ad6ab5fc76e1c0ac78f9b90SYq8BdHFlEqdCBoI4p4n9ZlaFOMvAUm2yYi9SZ3oetc=', 'YES', 0, 'rangga-renaldi-yusuf');
INSERT INTO `forum_users_copy1` VALUES (61, 'Yusuf', NULL, 'yusuf', '', NULL, '', '759469ad0ef59c688eb4eae119e68a5a128cd46366f240dd16c5ae75509c6af36a433fc3c43548f2036322ce0eceeb18d80dedc7faedde95c376f50133532208TrggUhCYOnff4E18oicq7RyTzbVqS4wy8ZYLml1DRn4=', 'YES', 0, 'yusuf');

-- ----------------------------
-- Table structure for forum_verification_link
-- ----------------------------
DROP TABLE IF EXISTS `forum_verification_link`;
CREATE TABLE `forum_verification_link`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v_code` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_ref` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `smart_verification_link_ibfk_1`(`user_ref`) USING BTREE,
  CONSTRAINT `forum_verification_link_ibfk_1` FOREIGN KEY (`user_ref`) REFERENCES `forum_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum_verification_link
-- ----------------------------
INSERT INTO `forum_verification_link` VALUES (34, 'iijQSPMNShqubKl060', 60);
INSERT INTO `forum_verification_link` VALUES (35, 'HffjtmD6U3trj0G061', 61);

-- ----------------------------
-- Table structure for forum_visitors
-- ----------------------------
DROP TABLE IF EXISTS `forum_visitors`;
CREATE TABLE `forum_visitors`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `tim` time(0) NULL DEFAULT NULL,
  `device` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `city` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `visitor` int(11) NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `active` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
