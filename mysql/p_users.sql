SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for p_users
-- ----------------------------
DROP TABLE IF EXISTS `p_users`;
CREATE TABLE `p_users`  (
		  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
		  `nick_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
		  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
		  `created_at` datetime(0) DEFAULT CURRENT_TIMESTAMP,
		  `updated_at` datetime(0) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
		  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of p_users
-- ----------------------------
INSERT INTO `p_users` VALUES (1, 'zhangsan', 'zhangsan@qq.com', '2019-09-19 12:36:52', '2019-09-19 12:36:52');
INSERT INTO `p_users` VALUES (2, 'lisi', 'lisi@qq.com', '2019-09-19 12:37:14', '2019-09-19 12:37:14');

SET FOREIGN_KEY_CHECKS = 1;

