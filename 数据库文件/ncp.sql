/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : ncp

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 08/05/2021 17:30:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'admin', 'tuShOfiBrA8+br7ENrMS8A==');
INSERT INTO `admins` VALUES (2, 'admin1', 'HAMVRZRssPCADKqGjGWJtQ==');

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL DEFAULT 0 COMMENT '数量',
  `good_id` int(11) NOT NULL COMMENT '商品ID',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carts
-- ----------------------------
INSERT INTO `carts` VALUES (6, 1, 12, 2);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `spec` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `price` int(11) NOT NULL DEFAULT 0 COMMENT '价格',
  `stock` int(11) NOT NULL DEFAULT 0 COMMENT '库存',
  `sales` int(11) NOT NULL DEFAULT 0 COMMENT '销量',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详情',
  `type_id` int(11) NOT NULL DEFAULT 0 COMMENT '分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '../upload/1-1.jpg', '四川耙耙柑 酸甜甘香 柔嫩多汁', '皮薄易剥 肉质软嫩', '约500g', 13, 10, 1, '', 1);
INSERT INTO `goods` VALUES (2, '../upload/1-2.jpg', '红心火龙果', NULL, '750g-1kg/两个', 28, 10, 2, '', 1);
INSERT INTO `goods` VALUES (3, '../upload/1-3.jpg', '皇冠梨 松软多汁', '果肉甘甜 细腻无渣', '约500g', 9, 10, 3, '', 1);
INSERT INTO `goods` VALUES (4, '../upload/1-4.jpg', '西州蜜瓜', '果肉厚质 中心橘红', '约1kg-1.5kg 一个', 30, 10, 4, '', 1);
INSERT INTO `goods` VALUES (5, '../upload/1-5.jpg', '小台芒果 自然生长 生态种植', '皮薄核小 果肉丰厚', '约500g', 26, 10, 5, '', 1);
INSERT INTO `goods` VALUES (6, '../upload/1-6.jpg', '栖霞苹果 爽脆清甜', '肉质紧密 味道甘甜', '约550g/2个', 9, 10, 6, '', 1);
INSERT INTO `goods` VALUES (7, '../upload/1-7.jpg', '龙眼/桂圆 新鲜水果 汁多味甜', '增强记忆 消除疲劳', '约500g', 18, 10, 7, '', 1);
INSERT INTO `goods` VALUES (8, '../upload/1-8.jpg', '广西百香果 香气浓郁 甜酸可口', '果香浓郁 搭配蜂蜜更美味', '2颗/份', 5, 10, 8, '', 1);
INSERT INTO `goods` VALUES (9, '../upload/1-9.jpg', '美早樱桃 果大核小 饱满均匀', '堪比车厘子的美味', '约300g/盒', 36, 10, 9, '', 1);
INSERT INTO `goods` VALUES (10, '../upload/1-10.jpg', '智利红提 珍贵品种 品质上等', '紧实爆汁 果肉新鲜', '约500g', 18, 10, 10, '', 1);
INSERT INTO `goods` VALUES (11, '../upload/1-11.jpg', '尖椒 烧烤食材 新鲜蔬菜', '农家种植 健康饮食', '约300g', 5, 10, 0, '', 1);
INSERT INTO `goods` VALUES (12, '../upload/20210508163315133.jpg', '荷兰瓜 生态种植 自然生长', '颜色翠绿，鲜嫩爽脆', '约300g', 5, 9, 1, '', 1);
INSERT INTO `goods` VALUES (13, '../upload/1-13.jpg', '小白菜 清脆鲜嫩 清甜回甘', '农家种植 找回儿时味道', '约500g', 10, 6, 4, '', 1);
INSERT INTO `goods` VALUES (14, '../upload/1-14.jpg', '菠菜 口感鲜嫩 入口清香', '不催熟 生长周期长', '约300g', 12, 10, 0, '', 1);
INSERT INTO `goods` VALUES (15, '../upload/2-1.jpg', '福成尚品前腱子', NULL, '1000g', 99, 10, 0, '', 2);
INSERT INTO `goods` VALUES (16, '../upload/2-2.jpg', '牦牛精肉2斤+ 牦牛肋排2斤', '自然生长', '2kg', 226, 10, 0, '', 2);
INSERT INTO `goods` VALUES (17, '../upload/2-3.jpg', '巴美草香猪后臀尖 原味原香', '精致美味，解锁味觉记忆', '约500g', 32, 10, 0, '', 2);
INSERT INTO `goods` VALUES (18, '../upload/2-4.jpg', '农畉猪肉-猪脊骨 肉厚骨细', '骨鲜髓足', '约500g', 13, 10, 0, '', 2);
INSERT INTO `goods` VALUES (19, '../upload/2-5.jpg', '一品江村黄鸡', '味道鲜美，口感软嫩弹滑', '约1kg', 46, 10, 0, '', 2);
INSERT INTO `goods` VALUES (20, '../upload/2-6.jpg', '正大单冻鸡翅根 精选种鸡', '富有弹性', '约1kg', 35, 8, 2, '', 2);
INSERT INTO `goods` VALUES (21, '../upload/3-1.jpg', '五梁红有机种植 大米', '五常市有机大米', '5kg', 68, 10, 0, '', 3);
INSERT INTO `goods` VALUES (22, '../upload/3-2.jpg', '五常大米珠光黄', NULL, '5kg', 60, 10, 0, '', 3);
INSERT INTO `goods` VALUES (23, '../upload/3-3.jpg', '五得利强筋雪花小麦粉', NULL, '2.5kg', 32, 10, 0, '', 3);
INSERT INTO `goods` VALUES (24, '../upload/3-4.jpg', '香满园美味富强小麦粉', NULL, '5kg', 21, 10, 0, '', 3);
INSERT INTO `goods` VALUES (25, '../upload/3-5.jpg', '老农帝国 黑豆 自然成熟', NULL, '2.5kg', 82, 10, 0, '', 3);
INSERT INTO `goods` VALUES (26, '../upload/3-6.jpg', '中畅佳禾 大麦 自然生长', NULL, '400g', 59, 10, 0, '', 3);
INSERT INTO `goods` VALUES (27, '../upload/4-1.jpg', '百威啤酒 经典灌装 小麦醇正拉罐', NULL, '500ml*3', 26, 10, 0, '', 4);
INSERT INTO `goods` VALUES (28, '../upload/4-2.jpg', 'Perrier巴黎水天然含气矿泉水 开启生活新方式', '天然气泡', '330ml', 9, 10, 0, '', 4);
INSERT INTO `goods` VALUES (29, '../upload/4-3.jpg', '吉吉黑糖', NULL, '玫瑰花味180g', 23, 10, 0, '', 4);
INSERT INTO `goods` VALUES (30, '../upload/4-4.jpg', '北冰洋汽水', '桔汁汽水330ml', NULL, 5, 10, 0, '', 4);
INSERT INTO `goods` VALUES (31, '../upload/4-5.jpg', '每日C葡萄柚汁', NULL, '300ml', 6, 9, 1, '', 4);
INSERT INTO `goods` VALUES (32, '../upload/20210508163323348.png', '即品坚果 台湾甄选 颗颗饱满', '留存水果本真 有滋有味', '56g', 12, 10, 0, '', 4);

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `price` int(11) NOT NULL DEFAULT 0 COMMENT '购买时价格',
  `amount` int(11) NOT NULL DEFAULT 0 COMMENT '购买数量',
  `order_id` int(11) NOT NULL DEFAULT 0 COMMENT '订单ID',
  `good_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES (1, 10, 4, 1, 13);
INSERT INTO `items` VALUES (2, 35, 2, 1, 20);
INSERT INTO `items` VALUES (3, 6, 1, 1, 31);
INSERT INTO `items` VALUES (4, 5, 1, 2, 12);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `total` int(11) NOT NULL DEFAULT 0 COMMENT '订单金额',
  `amount` int(11) NOT NULL DEFAULT 0 COMMENT '商品总数',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '订单状态(1未付款/2已付款/3已发货/4已完成)',
  `paytype` tinyint(4) NOT NULL DEFAULT 0 COMMENT '支付方式 (1微信/2支付宝)',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `systime` datetime NULL DEFAULT NULL COMMENT '下单时间',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '下单用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 116, 3, 4, 2, '马涛', '15045781245', '安徽省合肥市蜀山区', '2021-05-08 16:31:46', 2);
INSERT INTO `orders` VALUES (2, 5, 1, 1, 0, NULL, NULL, NULL, '2021-05-08 16:35:39', 1);

-- ----------------------------
-- Table structure for tops
-- ----------------------------
DROP TABLE IF EXISTS `tops`;
CREATE TABLE `tops`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '推荐类型(1今日推荐)',
  `good_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '推荐商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tops
-- ----------------------------
INSERT INTO `tops` VALUES (1, 1, 1);
INSERT INTO `tops` VALUES (2, 1, 2);
INSERT INTO `tops` VALUES (3, 1, 3);
INSERT INTO `tops` VALUES (4, 1, 4);
INSERT INTO `tops` VALUES (5, 1, 5);
INSERT INTO `tops` VALUES (6, 1, 6);
INSERT INTO `tops` VALUES (7, 1, 12);

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `num` int(11) NULL DEFAULT 0 COMMENT '排序号 (从小到大)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES (1, '生态果蔬', 1);
INSERT INTO `types` VALUES (2, '肉禽蛋奶', 2);
INSERT INTO `types` VALUES (3, '米面粮油', 3);
INSERT INTO `types` VALUES (4, '休闲零食', 4);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'user', 'R8FVKb/D6MgqaUITDhjuYQ==', '赵铁柱', '12300110011', '北京市朝阳区差不多那个地方');
INSERT INTO `users` VALUES (2, 'maker', 'HAMVRZRssPCADKqGjGWJtQ==', '马涛', '15045781245', '安徽省合肥市蜀山区');

SET FOREIGN_KEY_CHECKS = 1;
