
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'medical');
INSERT INTO `category` VALUES (2, 'education');
INSERT INTO `category` VALUES (3, 'social impact');
INSERT INTO `category` VALUES (4, 'crisis relief');

-- ----------------------------
-- Table structure for fundraiser
-- ----------------------------
DROP TABLE IF EXISTS `fundraiser`;
CREATE TABLE `fundraiser`  (
  `fundraiser_id` int NOT NULL,
  `organizer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `target_funding` decimal(20, 2) NOT NULL,
  `current_funding` decimal(20, 2) NOT NULL,
  `city` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`fundraiser_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fundraiser
-- ----------------------------
INSERT INTO `fundraiser` VALUES (1, 'Daniel Kim', 'Launch Our Health App: Your Wellness Matters!', 223000.01, 100020.56, 'ChongQing', 1, 2);
INSERT INTO `fundraiser` VALUES (2, 'Laura White', 'Revive Our Historic Theater: Preserve Culture!', 5000.00, 1367.22, 'BeiJing', 1, 3);
INSERT INTO `fundraiser` VALUES (3, 'James Wilson', 'Create an Inclusive Playground for All Kids!', 60000.00, 5560.99, 'XinJiang', 1, 4);
INSERT INTO `fundraiser` VALUES (4, 'Olivia Martinez', 'Help Fund Our Innovative Clean Energy Project!', 16000.00, 12000.01, 'GuangDong', 1, 3);
INSERT INTO `fundraiser` VALUES (5, 'Robert Taylor', 'Support Our Mission to Provide Clean Water!', 1000.00, 300.00, 'HeNan', 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
