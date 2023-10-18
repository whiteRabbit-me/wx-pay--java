/*
 Navicat Premium Data Transfer

 Source Server         : 腾讯云
 Source Server Type    : MySQL
 Source Server Version : 50740
 Source Host           : 101.43.30.228:8000
 Source Schema         : wx-pay

 Target Server Type    : MySQL
 Target Server Version : 50740
 File Encoding         : 65001

 Date: 18/10/2023 10:50:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_order_info
-- ----------------------------
DROP TABLE IF EXISTS `t_order_info`;
CREATE TABLE `t_order_info`  (
  `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `title` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单标题',
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商户订单编号',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `product_id` bigint(20) NULL DEFAULT NULL COMMENT '支付产品id',
  `total_fee` int(11) NULL DEFAULT NULL COMMENT '订单金额(分)',
  `code_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单二维码连接',
  `order_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单状态',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_info
-- ----------------------------
INSERT INTO `t_order_info` VALUES (3, 'Java程', 'ORDER_20231016164009190', NULL, 1, 1, 'weixin://wxpay/bizpayurl?pr=iPWCE2lzz', '超时已关闭', '2023-10-16 16:40:09', '2023-10-17 14:37:31');
INSERT INTO `t_order_info` VALUES (4, '前端端程', 'ORDER_20231017115137507', NULL, 3, 1, 'weixin://wxpay/bizpayurl?pr=4NjMqVXzz', '用户已取消', '2023-10-17 11:51:37', '2023-10-17 13:44:50');
INSERT INTO `t_order_info` VALUES (5, 'UI程', 'ORDER_20231017134330304', NULL, 4, 1, 'weixin://wxpay/bizpayurl?pr=HpjMfeMzz', '用户已取消', '2023-10-17 13:43:30', '2023-10-17 13:44:41');
INSERT INTO `t_order_info` VALUES (6, '大数据课程', 'ORDER_20231018091919694', NULL, 2, 1, 'weixin://wxpay/bizpayurl?pr=xG1KzWNzz', '用户已取消', '2023-10-18 09:19:19', '2023-10-18 09:19:26');
INSERT INTO `t_order_info` VALUES (7, 'Java程', 'ORDER_20231018092028148', NULL, 1, 1, 'weixin://wxpay/bizpayurl?pr=ye2nzUrzz', '超时已关闭', '2023-10-18 09:20:28', '2023-10-18 09:25:31');
INSERT INTO `t_order_info` VALUES (8, '大数据课程', 'ORDER_20231018095520795', NULL, 2, 1, 'weixin://wxpay/bizpayurl?pr=kGlw94dzz', '已退款', '2023-10-18 09:55:21', '2023-10-18 10:27:29');
INSERT INTO `t_order_info` VALUES (9, '大数据课程', 'ORDER_20231018100521796', NULL, 2, 1, 'weixin://wxpay/bizpayurl?pr=j3cTm8Nzz', '已退款', '2023-10-18 10:05:21', '2023-10-18 10:29:43');
INSERT INTO `t_order_info` VALUES (10, '前端端程', 'ORDER_20231018101831222', NULL, 3, 1, 'weixin://wxpay/bizpayurl?pr=ntNN2T1zz', '已退款', '2023-10-18 10:18:32', '2023-10-18 10:31:55');
INSERT INTO `t_order_info` VALUES (11, 'UI程', 'ORDER_20231018103036270', NULL, 4, 1, 'weixin://wxpay/bizpayurl?pr=eJAGKsjzz', '已退款', '2023-10-18 10:30:37', '2023-10-18 10:32:49');
INSERT INTO `t_order_info` VALUES (12, 'Java程', 'ORDER_20231018104421218', NULL, 1, 1, 'weixin://wxpay/bizpayurl?pr=cQHCaaXzz', '已退款', '2023-10-18 10:44:21', '2023-10-18 10:45:28');

-- ----------------------------
-- Table structure for t_payment_info
-- ----------------------------
DROP TABLE IF EXISTS `t_payment_info`;
CREATE TABLE `t_payment_info`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '支付记录id',
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商户订单编号',
  `transaction_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付系统交易编号',
  `payment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付类型',
  `trade_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易类型',
  `trade_state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易状态',
  `payer_total` int(11) NULL DEFAULT NULL COMMENT '支付金额(分)',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '通知参数',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_payment_info
-- ----------------------------
INSERT INTO `t_payment_info` VALUES (1, 'ORDER_20231018095520795', NULL, '微信', 'NATIVE', 'SUCCESS', 1, '{\"amount\":{\"currency\":\"CNY\",\"payer_currency\":\"CNY\",\"payer_total\":1,\"total\":1},\"appid\":\"wx74862e0dfcf69954\",\"attach\":\"\",\"bank_type\":\"OTHERS\",\"mchid\":\"1558950191\",\"out_trade_no\":\"ORDER_20231018095520795\",\"payer\":{\"openid\":\"oHwsHuBh6yZfphfT1ARr2cZdMGJA\"},\"promotion_detail\":[],\"success_time\":\"2023-10-18T09:55:37+08:00\",\"trade_state\":\"SUCCESS\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"transaction_id\":\"4200002026202310184832807686\"}', '2023-10-18 10:00:30', '2023-10-18 10:00:30');
INSERT INTO `t_payment_info` VALUES (2, 'ORDER_20231018100521796', NULL, '微信', 'NATIVE', 'SUCCESS', 1, '{\"amount\":{\"currency\":\"CNY\",\"payer_currency\":\"CNY\",\"payer_total\":1,\"total\":1},\"appid\":\"wx74862e0dfcf69954\",\"attach\":\"\",\"bank_type\":\"OTHERS\",\"mchid\":\"1558950191\",\"out_trade_no\":\"ORDER_20231018100521796\",\"payer\":{\"openid\":\"oHwsHuBh6yZfphfT1ARr2cZdMGJA\"},\"promotion_detail\":[],\"success_time\":\"2023-10-18T10:05:33+08:00\",\"trade_state\":\"SUCCESS\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"transaction_id\":\"4200002013202310182072265168\"}', '2023-10-18 10:10:30', '2023-10-18 10:10:30');
INSERT INTO `t_payment_info` VALUES (3, 'ORDER_20231018101831222', NULL, '微信', 'NATIVE', 'SUCCESS', 1, '{\"amount\":{\"currency\":\"CNY\",\"payer_currency\":\"CNY\",\"payer_total\":1,\"total\":1},\"appid\":\"wx74862e0dfcf69954\",\"attach\":\"\",\"bank_type\":\"OTHERS\",\"mchid\":\"1558950191\",\"out_trade_no\":\"ORDER_20231018101831222\",\"payer\":{\"openid\":\"oHwsHuBh6yZfphfT1ARr2cZdMGJA\"},\"promotion_detail\":[],\"success_time\":\"2023-10-18T10:18:50+08:00\",\"trade_state\":\"SUCCESS\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"transaction_id\":\"4200002033202310188262845067\"}', '2023-10-18 10:24:00', '2023-10-18 10:24:00');
INSERT INTO `t_payment_info` VALUES (4, 'ORDER_20231018103036270', NULL, '微信', 'NATIVE', 'SUCCESS', 1, '{\"mchid\":\"1558950191\",\"appid\":\"wx74862e0dfcf69954\",\"out_trade_no\":\"ORDER_20231018103036270\",\"transaction_id\":\"4200002007202310180296863006\",\"trade_type\":\"NATIVE\",\"trade_state\":\"SUCCESS\",\"trade_state_desc\":\"支付成功\",\"bank_type\":\"OTHERS\",\"attach\":\"\",\"success_time\":\"2023-10-18T10:30:52+08:00\",\"payer\":{\"openid\":\"oHwsHuBh6yZfphfT1ARr2cZdMGJA\"},\"amount\":{\"total\":1,\"payer_total\":1,\"currency\":\"CNY\",\"payer_currency\":\"CNY\"}}', '2023-10-18 10:30:53', '2023-10-18 10:30:53');
INSERT INTO `t_payment_info` VALUES (5, 'ORDER_20231018104421218', '4200002013202310184939744404', '微信', 'NATIVE', 'SUCCESS', 1, '{\"mchid\":\"1558950191\",\"appid\":\"wx74862e0dfcf69954\",\"out_trade_no\":\"ORDER_20231018104421218\",\"transaction_id\":\"4200002013202310184939744404\",\"trade_type\":\"NATIVE\",\"trade_state\":\"SUCCESS\",\"trade_state_desc\":\"支付成功\",\"bank_type\":\"OTHERS\",\"attach\":\"\",\"success_time\":\"2023-10-18T10:44:37+08:00\",\"payer\":{\"openid\":\"oHwsHuBh6yZfphfT1ARr2cZdMGJA\"},\"amount\":{\"total\":1,\"payer_total\":1,\"currency\":\"CNY\",\"payer_currency\":\"CNY\"}}', '2023-10-18 10:44:43', '2023-10-18 10:44:43');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商Bid',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `price` int(11) NULL DEFAULT NULL COMMENT '价格(分)',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES (1, 'Java程', 1, '2023-10-13 11:51:48', '2023-10-13 11:51:48');
INSERT INTO `t_product` VALUES (2, '大数据课程', 1, '2023-10-13 11:51:48', '2023-10-13 11:51:48');
INSERT INTO `t_product` VALUES (3, '前端端程', 1, '2023-10-13 11:51:48', '2023-10-13 11:51:48');
INSERT INTO `t_product` VALUES (4, 'UI程', 1, '2023-10-13 11:51:49', '2023-10-13 11:51:49');

-- ----------------------------
-- Table structure for t_refund_info
-- ----------------------------
DROP TABLE IF EXISTS `t_refund_info`;
CREATE TABLE `t_refund_info`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '款单id',
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商户订单编号',
  `refund_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商户退款单编号',
  `refund_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付系统退款单号',
  `total_fee` int(11) NULL DEFAULT NULL COMMENT '原订单金额(分)',
  `refund` int(11) NULL DEFAULT NULL COMMENT '退款金额(分)',
  `reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款原因',
  `refund_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款状态',
  `content_return` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '申请退款返回参数',
  `content_notify` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '退款结果通知参数',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_refund_info
-- ----------------------------
INSERT INTO `t_refund_info` VALUES (4, 'ORDER_20231018095520795', 'REFUND_20231018101739432', '50310007362023101803365939459', 1, 1, '不喜欢', 'SUCCESS', '{\"amount\":{\"currency\":\"CNY\",\"discount_refund\":0,\"from\":[],\"payer_refund\":1,\"payer_total\":1,\"refund\":1,\"refund_fee\":0,\"settlement_refund\":1,\"settlement_total\":1,\"total\":1},\"channel\":\"ORIGINAL\",\"create_time\":\"2023-10-18T10:17:45+08:00\",\"funds_account\":\"UNAVAILABLE\",\"out_refund_no\":\"REFUND_20231018101739432\",\"out_trade_no\":\"ORDER_20231018095520795\",\"promotion_detail\":[],\"refund_id\":\"50310007362023101803365939459\",\"status\":\"PROCESSING\",\"transaction_id\":\"4200002026202310184832807686\",\"user_received_account\":\"支付用户零钱\"}', '{\"mchid\":\"1558950191\",\"out_trade_no\":\"ORDER_20231018095520795\",\"transaction_id\":\"4200002026202310184832807686\",\"out_refund_no\":\"REFUND_20231018101739432\",\"refund_id\":\"50310007362023101803365939459\",\"refund_status\":\"SUCCESS\",\"success_time\":\"2023-10-18T10:17:52+08:00\",\"amount\":{\"total\":1,\"refund\":1,\"payer_total\":1,\"payer_refund\":1},\"user_received_account\":\"支付用户零钱\"}', '2023-10-18 10:17:39', '2023-10-18 10:27:29');
INSERT INTO `t_refund_info` VALUES (5, 'ORDER_20231018100521796', 'REFUND_20231018102915266', '50310207562023101804952676181', 1, 1, '买错了', 'SUCCESS', '{\"amount\":{\"currency\":\"CNY\",\"discount_refund\":0,\"from\":[],\"payer_refund\":1,\"payer_total\":1,\"refund\":1,\"refund_fee\":0,\"settlement_refund\":1,\"settlement_total\":1,\"total\":1},\"channel\":\"ORIGINAL\",\"create_time\":\"2023-10-18T10:29:16+08:00\",\"funds_account\":\"UNAVAILABLE\",\"out_refund_no\":\"REFUND_20231018102915266\",\"out_trade_no\":\"ORDER_20231018100521796\",\"promotion_detail\":[],\"refund_id\":\"50310207562023101804952676181\",\"status\":\"PROCESSING\",\"transaction_id\":\"4200002013202310182072265168\",\"user_received_account\":\"支付用户零钱\"}', '{\"mchid\":\"1558950191\",\"out_trade_no\":\"ORDER_20231018100521796\",\"transaction_id\":\"4200002013202310182072265168\",\"out_refund_no\":\"REFUND_20231018102915266\",\"refund_id\":\"50310207562023101804952676181\",\"refund_status\":\"SUCCESS\",\"success_time\":\"2023-10-18T10:29:33+08:00\",\"amount\":{\"total\":1,\"refund\":1,\"payer_total\":1,\"payer_refund\":1},\"user_received_account\":\"支付用户零钱\"}', '2023-10-18 10:29:15', '2023-10-18 10:29:43');
INSERT INTO `t_refund_info` VALUES (6, 'ORDER_20231018101831222', 'REFUND_20231018103027617', '50310207622023101804242987808', 1, 1, '买错了', 'SUCCESS', '{\"amount\":{\"currency\":\"CNY\",\"discount_refund\":0,\"from\":[],\"payer_refund\":1,\"payer_total\":1,\"refund\":1,\"refund_fee\":0,\"settlement_refund\":1,\"settlement_total\":1,\"total\":1},\"channel\":\"ORIGINAL\",\"create_time\":\"2023-10-18T10:30:28+08:00\",\"funds_account\":\"UNAVAILABLE\",\"out_refund_no\":\"REFUND_20231018103027617\",\"out_trade_no\":\"ORDER_20231018101831222\",\"promotion_detail\":[],\"refund_id\":\"50310207622023101804242987808\",\"status\":\"PROCESSING\",\"transaction_id\":\"4200002033202310188262845067\",\"user_received_account\":\"支付用户零钱\"}', '{\"mchid\":\"1558950191\",\"out_trade_no\":\"ORDER_20231018101831222\",\"transaction_id\":\"4200002033202310188262845067\",\"out_refund_no\":\"REFUND_20231018103027617\",\"refund_id\":\"50310207622023101804242987808\",\"refund_status\":\"SUCCESS\",\"success_time\":\"2023-10-18T10:30:36+08:00\",\"amount\":{\"total\":1,\"refund\":1,\"payer_total\":1,\"payer_refund\":1},\"user_received_account\":\"支付用户零钱\"}', '2023-10-18 10:30:28', '2023-10-18 10:31:55');
INSERT INTO `t_refund_info` VALUES (7, 'ORDER_20231018103036270', 'REFUND_20231018103221128', '50301507642023101846702279656', 1, 1, '不喜欢', 'SUCCESS', '{\"amount\":{\"currency\":\"CNY\",\"discount_refund\":0,\"from\":[],\"payer_refund\":1,\"payer_total\":1,\"refund\":1,\"refund_fee\":0,\"settlement_refund\":1,\"settlement_total\":1,\"total\":1},\"channel\":\"ORIGINAL\",\"create_time\":\"2023-10-18T10:32:22+08:00\",\"funds_account\":\"UNAVAILABLE\",\"out_refund_no\":\"REFUND_20231018103221128\",\"out_trade_no\":\"ORDER_20231018103036270\",\"promotion_detail\":[],\"refund_id\":\"50301507642023101846702279656\",\"status\":\"PROCESSING\",\"transaction_id\":\"4200002007202310180296863006\",\"user_received_account\":\"支付用户零钱\"}', '{\"mchid\":\"1558950191\",\"out_trade_no\":\"ORDER_20231018103036270\",\"transaction_id\":\"4200002007202310180296863006\",\"out_refund_no\":\"REFUND_20231018103221128\",\"refund_id\":\"50301507642023101846702279656\",\"refund_status\":\"SUCCESS\",\"success_time\":\"2023-10-18T10:32:39+08:00\",\"amount\":{\"total\":1,\"refund\":1,\"payer_total\":1,\"payer_refund\":1},\"user_received_account\":\"支付用户零钱\"}', '2023-10-18 10:32:21', '2023-10-18 10:32:49');
INSERT INTO `t_refund_info` VALUES (8, 'ORDER_20231018104421218', 'REFUND_20231018104502090', '50301507442023101890752165746', 1, 1, '不喜欢', 'SUCCESS', '{\"amount\":{\"currency\":\"CNY\",\"discount_refund\":0,\"from\":[],\"payer_refund\":1,\"payer_total\":1,\"refund\":1,\"refund_fee\":0,\"settlement_refund\":1,\"settlement_total\":1,\"total\":1},\"channel\":\"ORIGINAL\",\"create_time\":\"2023-10-18T10:45:03+08:00\",\"funds_account\":\"UNAVAILABLE\",\"out_refund_no\":\"REFUND_20231018104502090\",\"out_trade_no\":\"ORDER_20231018104421218\",\"promotion_detail\":[],\"refund_id\":\"50301507442023101890752165746\",\"status\":\"PROCESSING\",\"transaction_id\":\"4200002013202310184939744404\",\"user_received_account\":\"支付用户零钱\"}', '{\"mchid\":\"1558950191\",\"out_trade_no\":\"ORDER_20231018104421218\",\"transaction_id\":\"4200002013202310184939744404\",\"out_refund_no\":\"REFUND_20231018104502090\",\"refund_id\":\"50301507442023101890752165746\",\"refund_status\":\"SUCCESS\",\"success_time\":\"2023-10-18T10:45:21+08:00\",\"amount\":{\"total\":1,\"refund\":1,\"payer_total\":1,\"payer_refund\":1},\"user_received_account\":\"支付用户零钱\"}', '2023-10-18 10:45:02', '2023-10-18 10:45:28');

SET FOREIGN_KEY_CHECKS = 1;
