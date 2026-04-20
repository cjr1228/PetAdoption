/*
 Navicat MySQL Data Transfer

 Source Server         : locahost_3306
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : pets_adoption

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 01/04/2023 12:50:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adoptions
-- ----------------------------
DROP TABLE IF EXISTS `adoptions`;
CREATE TABLE `adoptions`  (
  `ado_id` int NOT NULL AUTO_INCREMENT COMMENT '领养记录id',
  `user_id` int NULL DEFAULT NULL COMMENT '领养人id',
  `pet_id` int NULL DEFAULT NULL COMMENT '宠物id',
  `ado_date` date NULL DEFAULT NULL COMMENT '领养时间',
  `ado_status` int NULL DEFAULT NULL COMMENT '领养状态：0失败，1成功，2处理中',
  `ado_note` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注信息，领养情况',
  PRIMARY KEY (`ado_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of adoptions
-- ----------------------------
INSERT INTO `adoptions` VALUES (13, 1000000019, 1000000015, '2023-03-29', 0, NULL);
INSERT INTO `adoptions` VALUES (14, 1000000020, 1000000005, '2023-03-17', 0, '用户被冻结，领养失败。');
INSERT INTO `adoptions` VALUES (15, 1000000020, 1000000005, '2023-03-29', 0, NULL);
INSERT INTO `adoptions` VALUES (16, 1000000020, 1000000005, '2023-03-30', 1, NULL);
INSERT INTO `adoptions` VALUES (17, 1000000020, 1000000015, '2023-03-29', 0, NULL);
INSERT INTO `adoptions` VALUES (18, 1000000019, 1000000015, '2023-04-06', 0, '用户取消领养');
INSERT INTO `adoptions` VALUES (19, 1000000020, 1000000015, '2023-03-23', 0, '用户取消领养');
INSERT INTO `adoptions` VALUES (20, 1000000020, 1000000015, '2023-03-30', 1, NULL);
INSERT INTO `adoptions` VALUES (21, 1000000019, 1000000009, '2023-03-30', 1, NULL);
INSERT INTO `adoptions` VALUES (22, 1000000019, 1000000010, '2023-03-30', 0, NULL);
INSERT INTO `adoptions` VALUES (23, 1000000019, 1000000010, '2023-03-30', 0, '领养失败！');
INSERT INTO `adoptions` VALUES (24, 1000000020, 1000000010, '2022-11-24', 1, '领养成功！');
INSERT INTO `adoptions` VALUES (25, 1000000021, 1000000011, '2022-11-02', 1, '领养成功！');
INSERT INTO `adoptions` VALUES (26, 1000000019, 1000000012, '2023-03-30', 1, '领养成功！');
INSERT INTO `adoptions` VALUES (27, 1000000019, 1000000013, '2023-03-30', 0, '用户取消领养');
INSERT INTO `adoptions` VALUES (28, 1000000022, 1000000017, '2022-11-10', 1, '领养成功！');
INSERT INTO `adoptions` VALUES (29, 1000000023, 1000000013, '2023-03-31', 2, NULL);

-- ----------------------------
-- Table structure for notices
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告编号',
  `notice_type` int NULL DEFAULT NULL COMMENT '公告类型：1公示，2领养日志',
  `user_id` int NULL DEFAULT NULL COMMENT '发布人编号',
  `notice_date` date NULL DEFAULT NULL COMMENT '发布时间',
  `nottice_title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `notice_context` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '内容',
  `user_realname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发布人姓名',
  `notice_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公告图片',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notices
-- ----------------------------
INSERT INTO `notices` VALUES (1, 1, 1000000014, '2023-03-29', '测试', '可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？', '复读机', NULL);
INSERT INTO `notices` VALUES (2, 1, 1000000019, '2023-03-29', '我和树獭', '最喜欢的树懒\n他居然会爬树！', '路人甲', 'cde292c0-39fa-41a2-a987-ee8ca31ea5d2.jpg');
INSERT INTO `notices` VALUES (3, 1, 1000000020, '2023-03-29', '我喜欢的宠物', '他真的超级可爱\n可是这和我是一个冷酷的复读机又有什么关系呢？\n', 'qwq', 'd99efbb1-7f95-43ad-94d7-0d2abc0ad900.jpg');
INSERT INTO `notices` VALUES (4, 2, 1000000020, '2023-03-29', '测试', '我丢我丢我丢\n这是我第一次\n领养宠物\n状\n他真的很可爱', 'qwq', '54284a1f-86a1-43d5-872a-07e07c94cc0f.jpg');
INSERT INTO `notices` VALUES (5, 1, 1000000019, '2023-03-29', '形势不容乐观', '1、兄弟们。\n2、姐妹们\n3、打包们！\n可是这和我是一个冷酷的复读机又有什么关系呢？', '路人甲', '6d039273-c8b4-440b-8094-8abc84ca689b.jpg');
INSERT INTO `notices` VALUES (6, 1, 1000000019, '2023-03-29', '不得了啦', '1、我丢\n2、可是这和我是一个冷酷的复读机又有什么关系呢？\n3、可是这和我是一个冷酷的复读机又有什么关系呢？\n4、可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？可是这和我是一个冷酷的复读机又有什么关系呢？', '路人甲', '2d64f4a1-41a2-44f2-9125-9e68deaad7ae.jpg');
INSERT INTO `notices` VALUES (7, 1, 1000000014, '2023-03-30', '累死了真的', '开发这个东西真滴好累啊\n可是这和我是一个冷酷的复读机又有什么关系呢？\n可是这和我是一个冷酷的复读机又有什么关系呢？\n可是这和我是一个冷酷的复读机又有什么关系呢？\n可是这和我是一个冷酷的复读机又有什么关系呢？\n可是这和我是一个冷酷的复读机又有什么关系呢？\n可是这和我是一个冷酷的复读机又有什么关系呢？\n可是这和我是一个冷酷的复读机又有什么关系呢？\n可是这和我是一个冷酷的复读机又有什么关系呢？\n可是这和我是一个冷酷的复读机又有什么关系呢？\n', '复读机', '8d1122e7-42d0-464b-b284-b9ecd83ab5b7.jpg');

-- ----------------------------
-- Table structure for pets
-- ----------------------------
DROP TABLE IF EXISTS `pets`;
CREATE TABLE `pets`  (
  `pet_id` int NOT NULL AUTO_INCREMENT COMMENT '宠物编号',
  `pet_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宠物昵称',
  `pet_type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宠物品种',
  `pet_sex` int NULL DEFAULT NULL COMMENT '宠物性别：1雄，0雌',
  `pet_age` date NULL DEFAULT NULL COMMENT '宠物生日，用于获取年龄',
  `pet_indata` date NULL DEFAULT NULL COMMENT '宠物入园时间',
  `pet_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宠物照片文件名',
  `pet_introduction` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宠物简介',
  `pet_personality` int NULL DEFAULT NULL COMMENT '宠物性格：1外向，0内向',
  `pet_status` int NULL DEFAULT NULL COMMENT '宠物状态：0待领养，1被领养，2被申领，3离世',
  `user_id` int NULL DEFAULT NULL COMMENT '领养人id',
  PRIMARY KEY (`pet_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000000018 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pets
-- ----------------------------
INSERT INTO `pets` VALUES (1000000000, '被修改了q', '田园犬1', 0, '2023-03-26', '2022-08-12', '', '非常可爱1', 0, 0, NULL);
INSERT INTO `pets` VALUES (1000000005, '小兔子', '兔子', 1, '2023-03-28', '2023-03-26', '4aad4d0f-acc8-49f1-b649-2b5dd86e24b2.jpg', '可爱的小兔子', 0, 1, NULL);
INSERT INTO `pets` VALUES (1000000009, 'aaa', '田园犬1', 1, '2023-03-08', '2023-03-26', '50efe419-b672-4a23-b3bf-812f443b4d23.jpg', '非常可爱1wqqwwqqw', 1, 1, NULL);
INSERT INTO `pets` VALUES (1000000010, '小猪猪ww', '猪猪', 1, '2023-03-28', '2023-03-26', '1f7b5949-934a-4292-9245-d8478cee9b89.jpg', '可是这和我是一个冷酷的复读机又有什么关系呢？', 1, 1, NULL);
INSERT INTO `pets` VALUES (1000000011, '新增宠物', '嗡嗡嗡', 1, '2023-03-28', '2023-03-26', '21fe878a-eb58-4b8f-89ed-aa3bf88edc47.jpg', '五千万', 0, 1, NULL);
INSERT INTO `pets` VALUES (1000000012, '小呱', '青蛙', 1, '2023-03-06', '2023-03-26', '8f681507-092a-4856-8d50-d8892334c1db.jpg', '全文', 1, 1, NULL);
INSERT INTO `pets` VALUES (1000000013, '害羞的宠物', '不知道', 1, '2021-03-09', '2023-03-26', 'ec8d7a19-d95a-4aea-8b03-36f0cfaf5bf4.jpg', '可是这和我是一个冷酷的复读机又有什么关系呢？', 0, 2, NULL);
INSERT INTO `pets` VALUES (1000000014, 'qqqqq', 'qqqqq', 1, '2023-03-29', '2023-03-26', 'e4420511-f549-452a-be9b-3911b9d39724.jpg', 'qwqwq', 0, 0, NULL);
INSERT INTO `pets` VALUES (1000000015, 'qqqq', 'wqwqqwq', 1, '2023-03-28', '2023-03-27', '8310bad6-569a-4460-b496-3fb25cdd67df.jpg', 'ssss', 0, 1, NULL);
INSERT INTO `pets` VALUES (1000000017, '大可爱', '鸭子', 1, '2023-03-13', '2023-03-30', '22a85b55-bd12-4508-bcec-855d11ebd391.jpg', '超级可爱的打鸭子\n   可是ksks可是这和我是一个冷酷的复读机又有什么关系呢？\n我丢\n可是这和我是一个冷酷的复读机又有什么关系呢？', 0, 1, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_account` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户账户',
  `user_password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户密码',
  `user_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `user_sex` int NULL DEFAULT NULL COMMENT '用户性别:1男，0女，2未设置',
  `user_introduction` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户简介',
  `user_registertime` date NULL DEFAULT NULL COMMENT '用户注册时间',
  `user_realname` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户真实姓名',
  `user_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `user_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户地址',
  `user_status` int NULL DEFAULT NULL COMMENT '用户状态，0未申领，1申领中，2领养后未按规发布领养日志，3暂停使用',
  `user_type` int NULL DEFAULT NULL COMMENT '用户类型，0普通用户，1管理员，2领养人',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `users_pk`(`user_account`) USING BTREE,
  UNIQUE INDEX `users_pk2`(`user_phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000000024 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1000000014, 'lurenjia', '1111', '大帅哥', 1, '可是这和我是一个冷酷的复读机又有什么关系呢？', '2023-03-27', '复读机', '17674185013', '路人甲的地址是在上上上山的路上。', 0, 1);
INSERT INTO `users` VALUES (1000000019, 'ccc', '111', 'ccc', 2, NULL, '2023-03-27', '路人甲', '17670844220', '可是这和我是一个冷酷的复读机又有什么关系呢？', 0, 1);
INSERT INTO `users` VALUES (1000000020, 'qwq', 'qwq', 'qwq', 2, NULL, '2023-03-27', 'qwq', '16356356663', '可是这和我是一个冷酷的复读机又有什么关系呢？', 0, 2);
INSERT INTO `users` VALUES (1000000021, 'rrr', '111', 'rrr', 2, NULL, '2023-03-29', '真实姓名', '17676738442', '可是这和我是一个冷酷的复读机又有什么关系呢？', 3, 2);
INSERT INTO `users` VALUES (1000000022, 'cccc', '1111', 'cccc', 1, '大帅哥', '2023-03-30', '大大怪', '17676787441', '可是这和我是一个冷酷的复读机又有什么关系呢？', 3, 1);
INSERT INTO `users` VALUES (1000000023, 'wwww', '1111', 'wwww', 2, NULL, '2023-03-30', '大坏蛋', '17676722221', '可是这和我是一个冷酷的复读机又有什么关系呢？', 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
