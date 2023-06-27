

CREATE DATABASE IF NOT EXISTS studentinfo DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
use studentinfo;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for banjixinxi
-- ----------------------------
DROP TABLE IF EXISTS `banjixinxi`;
CREATE TABLE `banjixinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `banji`(`banji`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '班级信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banjixinxi
-- ----------------------------
INSERT INTO `banjixinxi` VALUES (41, '2023-03-15 16:46:07', '班级1');
INSERT INTO `banjixinxi` VALUES (42, '2023-03-15 16:46:07', '班级2');
INSERT INTO `banjixinxi` VALUES (43, '2023-03-15 16:46:07', '班级3');
INSERT INTO `banjixinxi` VALUES (44, '2023-03-15 16:46:07', '班级4');
INSERT INTO `banjixinxi` VALUES (45, '2023-03-15 16:46:07', '班级5');
INSERT INTO `banjixinxi` VALUES (46, '2023-03-15 16:46:07', '班级6');
INSERT INTO `banjixinxi` VALUES (47, '2023-03-15 16:46:07', '班级7');
INSERT INTO `banjixinxi` VALUES (48, '2023-03-15 16:46:07', '班级8');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for daibantixing
-- ----------------------------
DROP TABLE IF EXISTS `daibantixing`;
CREATE TABLE `daibantixing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `banji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `xueyuan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院',
  `jianjie` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `fabushijian` date NULL DEFAULT NULL COMMENT '发布时间',
  `neirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `daoyuanzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导员账号',
  `daoyuanxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导员姓名',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) NULL DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代办提醒' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daibantixing
-- ----------------------------
INSERT INTO `daibantixing` VALUES (91, '2023-03-15 16:46:07', '标题1', '班级1', '学院1', '简介1', '2023-03-15', '内容1', '导员账号1', '导员姓名1', '2023-03-15 16:46:07', 1);
INSERT INTO `daibantixing` VALUES (92, '2023-03-15 16:46:07', '标题2', '班级2', '学院2', '简介2', '2023-03-15', '内容2', '导员账号2', '导员姓名2', '2023-03-15 16:46:07', 2);
INSERT INTO `daibantixing` VALUES (93, '2023-03-15 16:46:07', '标题3', '班级3', '学院3', '简介3', '2023-03-15', '内容3', '导员账号3', '导员姓名3', '2023-03-15 16:46:07', 3);
INSERT INTO `daibantixing` VALUES (94, '2023-03-15 16:46:07', '标题4', '班级4', '学院4', '简介4', '2023-03-15', '内容4', '导员账号4', '导员姓名4', '2023-03-15 16:46:07', 4);
INSERT INTO `daibantixing` VALUES (95, '2023-03-15 16:46:07', '标题5', '班级5', '学院5', '简介5', '2023-03-15', '内容5', '导员账号5', '导员姓名5', '2023-03-15 16:46:07', 5);
INSERT INTO `daibantixing` VALUES (96, '2023-03-15 16:46:07', '标题6', '班级6', '学院6', '简介6', '2023-03-15', '内容6', '导员账号6', '导员姓名6', '2023-03-15 16:46:07', 6);
INSERT INTO `daibantixing` VALUES (97, '2023-03-15 16:46:07', '标题7', '班级7', '学院7', '简介7', '2023-03-15', '内容7', '导员账号7', '导员姓名7', '2023-03-15 16:46:07', 7);
INSERT INTO `daibantixing` VALUES (98, '2023-03-15 16:46:07', '标题8', '班级8', '学院8', '简介8', '2023-03-15', '内容8', '导员账号8', '导员姓名8', '2023-05-13 08:37:42', 9);

-- ----------------------------
-- Table structure for daoyuan
-- ----------------------------
DROP TABLE IF EXISTS `daoyuan`;
CREATE TABLE `daoyuan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoyuanzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '导员账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `daoyuanxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '导员姓名',
  `nianling` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `xueyuan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `daoyuanzhanghao`(`daoyuanzhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '导员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daoyuan
-- ----------------------------
INSERT INTO `daoyuan` VALUES (31, '2023-03-15 16:46:06', '导员账号1', '123456', '导员姓名1', 1, '男', '13823888881', '学院1', 'upload/daoyuan_touxiang1.jpg');
INSERT INTO `daoyuan` VALUES (32, '2023-03-15 16:46:06', '导员账号2', '123456', '导员姓名2', 2, '男', '13823888882', '学院2', 'upload/daoyuan_touxiang2.jpg');
INSERT INTO `daoyuan` VALUES (33, '2023-03-15 16:46:06', '导员账号3', '123456', '导员姓名3', 3, '男', '13823888883', '学院3', 'upload/daoyuan_touxiang3.jpg');
INSERT INTO `daoyuan` VALUES (34, '2023-03-15 16:46:06', '导员账号4', '123456', '导员姓名4', 4, '男', '13823888884', '学院4', 'upload/daoyuan_touxiang4.jpg');
INSERT INTO `daoyuan` VALUES (35, '2023-03-15 16:46:06', '导员账号5', '123456', '导员姓名5', 5, '男', '13823888885', '学院5', 'upload/daoyuan_touxiang5.jpg');
INSERT INTO `daoyuan` VALUES (36, '2023-03-15 16:46:06', '导员账号6', '123456', '导员姓名6', 6, '男', '13823888886', '学院6', 'upload/daoyuan_touxiang6.jpg');
INSERT INTO `daoyuan` VALUES (37, '2023-03-15 16:46:06', '导员账号7', '123456', '导员姓名7', 7, '男', '13823888887', '学院7', 'upload/daoyuan_touxiang7.jpg');
INSERT INTO `daoyuan` VALUES (38, '2023-03-15 16:46:06', '导员账号8', '123456', '导员姓名8', 8, '男', '13823888888', '学院8', 'upload/daoyuan_touxiang8.jpg');

-- ----------------------------
-- Table structure for gonggaoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `gonggaoxinxi`;
CREATE TABLE `gonggaoxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `jianjie` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `fabushijian` date NULL DEFAULT NULL COMMENT '发布时间',
  `fengmian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '封面',
  `neirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gonggaoxinxi
-- ----------------------------
INSERT INTO `gonggaoxinxi` VALUES (61, '2023-03-15 16:46:07', '标题1', '简介1', '2023-03-15', 'upload/gonggaoxinxi_fengmian1.jpg,upload/gonggaoxinxi_fengmian2.jpg,upload/gonggaoxinxi_fengmian3.jpg', '内容1');
INSERT INTO `gonggaoxinxi` VALUES (62, '2023-03-15 16:46:07', '标题2', '简介2', '2023-03-15', 'upload/gonggaoxinxi_fengmian2.jpg,upload/gonggaoxinxi_fengmian3.jpg,upload/gonggaoxinxi_fengmian4.jpg', '内容2');
INSERT INTO `gonggaoxinxi` VALUES (63, '2023-03-15 16:46:07', '标题3', '简介3', '2023-03-15', 'upload/gonggaoxinxi_fengmian3.jpg,upload/gonggaoxinxi_fengmian4.jpg,upload/gonggaoxinxi_fengmian5.jpg', '内容3');
INSERT INTO `gonggaoxinxi` VALUES (64, '2023-03-15 16:46:07', '标题4', '简介4', '2023-03-15', 'upload/gonggaoxinxi_fengmian4.jpg,upload/gonggaoxinxi_fengmian5.jpg,upload/gonggaoxinxi_fengmian6.jpg', '内容4');
INSERT INTO `gonggaoxinxi` VALUES (65, '2023-03-15 16:46:07', '标题5', '简介5', '2023-03-15', 'upload/gonggaoxinxi_fengmian5.jpg,upload/gonggaoxinxi_fengmian6.jpg,upload/gonggaoxinxi_fengmian7.jpg', '内容5');
INSERT INTO `gonggaoxinxi` VALUES (66, '2023-03-15 16:46:07', '标题6', '简介6', '2023-03-15', 'upload/gonggaoxinxi_fengmian6.jpg,upload/gonggaoxinxi_fengmian7.jpg,upload/gonggaoxinxi_fengmian8.jpg', '内容6');
INSERT INTO `gonggaoxinxi` VALUES (67, '2023-03-15 16:46:07', '标题7', '简介7', '2023-03-15', 'upload/gonggaoxinxi_fengmian7.jpg,upload/gonggaoxinxi_fengmian8.jpg,upload/gonggaoxinxi_fengmian9.jpg', '内容7');
INSERT INTO `gonggaoxinxi` VALUES (68, '2023-03-15 16:46:07', '标题8', '简介8', '2023-03-15', 'upload/gonggaoxinxi_fengmian8.jpg,upload/gonggaoxinxi_fengmian9.jpg,upload/gonggaoxinxi_fengmian10.jpg', '内容8');

-- ----------------------------
-- Table structure for jiaoshi
-- ----------------------------
DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE `jiaoshi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshizhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师姓名',
  `nianling` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `xueyuan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `jiaoshizhanghao`(`jiaoshizhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiaoshi
-- ----------------------------
INSERT INTO `jiaoshi` VALUES (21, '2023-03-15 16:46:06', '教师账号1', '123456', '教师姓名1', 1, '男', '13823888881', '学院1', 'upload/jiaoshi_touxiang1.jpg');
INSERT INTO `jiaoshi` VALUES (22, '2023-03-15 16:46:06', '教师账号2', '123456', '教师姓名2', 2, '男', '13823888882', '学院2', 'upload/jiaoshi_touxiang2.jpg');
INSERT INTO `jiaoshi` VALUES (23, '2023-03-15 16:46:06', '教师账号3', '123456', '教师姓名3', 3, '男', '13823888883', '学院3', 'upload/jiaoshi_touxiang3.jpg');
INSERT INTO `jiaoshi` VALUES (24, '2023-03-15 16:46:06', '教师账号4', '123456', '教师姓名4', 4, '男', '13823888884', '学院4', 'upload/jiaoshi_touxiang4.jpg');
INSERT INTO `jiaoshi` VALUES (25, '2023-03-15 16:46:06', '教师账号5', '123456', '教师姓名5', 5, '男', '13823888885', '学院5', 'upload/jiaoshi_touxiang5.jpg');
INSERT INTO `jiaoshi` VALUES (26, '2023-03-15 16:46:06', '教师账号6', '123456', '教师姓名6', 6, '男', '13823888886', '学院6', 'upload/jiaoshi_touxiang6.jpg');
INSERT INTO `jiaoshi` VALUES (27, '2023-03-15 16:46:06', '教师账号7', '123456', '教师姓名7', 7, '男', '13823888887', '学院7', 'upload/jiaoshi_touxiang7.jpg');
INSERT INTO `jiaoshi` VALUES (28, '2023-03-15 16:46:06', '教师账号8', '123456', '教师姓名8', 8, '男', '13823888888', '学院8', 'upload/jiaoshi_touxiang8.jpg');

-- ----------------------------
-- Table structure for kechengxinxi
-- ----------------------------
DROP TABLE IF EXISTS `kechengxinxi`;
CREATE TABLE `kechengxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院',
  `banji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `kechengmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程分类',
  `kaikeshijian` datetime NULL DEFAULT NULL COMMENT '开课时间',
  `jieshushijian` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `jiaoshididian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教室地点',
  `kechengneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程内容',
  `jiaoshizhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) NULL DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kechengxinxi
-- ----------------------------
INSERT INTO `kechengxinxi` VALUES (71, '2023-03-15 16:46:07', '学院1', '班级1', '课程名称1', '课程分类1', '2023-03-15 16:46:07', '2023-03-15 16:46:07', '教室地点1', '课程内容1', '教师账号1', '教师姓名1', '2023-03-15 16:46:07', 1);
INSERT INTO `kechengxinxi` VALUES (72, '2023-03-15 16:46:07', '学院2', '班级2', '课程名称2', '课程分类2', '2023-03-15 16:46:07', '2023-03-15 16:46:07', '教室地点2', '课程内容2', '教师账号2', '教师姓名2', '2023-03-15 16:46:07', 2);
INSERT INTO `kechengxinxi` VALUES (73, '2023-03-15 16:46:07', '学院3', '班级3', '课程名称3', '课程分类3', '2023-03-15 16:46:07', '2023-03-15 16:46:07', '教室地点3', '课程内容3', '教师账号3', '教师姓名3', '2023-03-15 16:46:07', 3);
INSERT INTO `kechengxinxi` VALUES (74, '2023-03-15 16:46:07', '学院4', '班级4', '课程名称4', '课程分类4', '2023-03-15 16:46:07', '2023-03-15 16:46:07', '教室地点4', '课程内容4', '教师账号4', '教师姓名4', '2023-03-15 16:46:07', 4);
INSERT INTO `kechengxinxi` VALUES (75, '2023-03-15 16:46:07', '学院5', '班级5', '课程名称5', '课程分类5', '2023-03-15 16:46:07', '2023-03-15 16:46:07', '教室地点5', '课程内容5', '教师账号5', '教师姓名5', '2023-03-15 16:46:07', 5);
INSERT INTO `kechengxinxi` VALUES (76, '2023-03-15 16:46:07', '学院6', '班级6', '课程名称6', '课程分类6', '2023-03-15 16:46:07', '2023-03-15 16:46:07', '教室地点6', '课程内容6', '教师账号6', '教师姓名6', '2023-03-15 16:46:07', 6);
INSERT INTO `kechengxinxi` VALUES (77, '2023-03-15 16:46:07', '学院7', '班级7', '课程名称7', '课程分类7', '2023-03-15 16:46:07', '2023-03-15 16:46:07', '教室地点7', '课程内容7', '教师账号7', '教师姓名7', '2023-03-15 16:46:07', 7);
INSERT INTO `kechengxinxi` VALUES (78, '2023-03-15 16:46:07', '学院8', '班级8', '课程名称8', '课程分类8', '2023-03-15 16:46:07', '2023-03-15 16:46:07', '教室地点8', '课程内容8', '教师账号8', '教师姓名8', '2023-03-15 16:46:07', 8);

-- ----------------------------
-- Table structure for operating_information
-- ----------------------------
DROP TABLE IF EXISTS `operating_information`;
CREATE TABLE `operating_information`  (
  `operator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `operating_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `operation_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operating_information
-- ----------------------------
INSERT INTO `operating_information` VALUES ('admin', '2023-05-10 17:45:18', 1, 'class com.controller.BanjixinxiControllerpage');
INSERT INTO `operating_information` VALUES ('md5', '2023-05-11 14:17:32', 2, 'class com.controller.BanjixinxiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-11 14:53:18', 3, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-11 15:24:28', 4, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-11 16:50:56', 5, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-11 16:55:57', 6, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-11 17:01:30', 7, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-11 17:01:50', 8, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-11 17:01:56', 9, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-11 17:02:07', 10, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-11 17:03:28', 11, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-11 17:03:41', 12, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-11 17:03:48', 13, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-11 17:04:00', 14, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('admin', '2023-05-11 19:49:51', 15, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-13 08:33:43', 16, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-13 08:34:15', 17, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('导员姓名8', '2023-05-13 08:37:57', 18, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-13 08:54:02', 19, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('导员姓名8', '2023-05-13 08:54:30', 20, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('教师姓名8', '2023-05-13 14:02:35', 21, 'class com.controller.XueshengchengjiController中的page方法');
INSERT INTO `operating_information` VALUES ('导员姓名8', '2023-05-13 14:03:06', 22, 'class com.controller.XueshengchengjiController中的page方法');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 21, '教师账号1', 'jiaoshi', '教师', 'gmo0vdndjf8awx8blym1cbkcslj7g64p', '2023-03-15 16:48:17', '2023-03-15 17:48:17');
INSERT INTO `token` VALUES (2, 1, 'admin', 'users', '管理员', 'x0sd79dle5tucljhybh9gh408jenu36m', '2023-05-10 11:11:49', '2023-05-26 22:51:29');
INSERT INTO `token` VALUES (3, 2, 'md5', 'users', '管理员', 'e3nua3gdsmpm7ic1cc2niccdto2nj4ya', '2023-05-10 11:52:06', '2023-05-10 12:52:04');
INSERT INTO `token` VALUES (4, 2, 'md5', 'users', '导员', '7hz2oznpiqf24eyieth37vefyizyfpah', '2023-05-10 12:22:14', '2023-05-11 15:15:02');
INSERT INTO `token` VALUES (5, 28, '教师账号8', 'jiaoshi', '教师', 'p0zan56k10kbdzc4jzkarm43z131ed0w', '2023-05-11 13:34:47', '2023-05-23 23:00:39');
INSERT INTO `token` VALUES (6, 38, '导员账号8', 'daoyuan', '导员', 'dgwa4dsunkv0ueycvy41owwanew28l7n', '2023-05-11 13:37:18', '2023-05-26 22:51:48');
INSERT INTO `token` VALUES (7, 18, '学号8', 'xuesheng', '学生', '37ndsd969e8xmilh6l1tmebfcgkrckij', '2023-05-23 22:04:03', '2023-05-23 23:04:03');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '1234', '管理员', '2023-03-15 16:46:07');
INSERT INTO `users` VALUES (2, 'md5', '{md5}81dc9bdb52d04dc20036dbd8313ed055', '导员', '2023-05-10 11:51:24');
INSERT INTO `users` VALUES (3, 'BCrypt', '{bcrypt}$2a$10$u/BcsUUqZNWUxdmDhbnoeeobJy6IBsL1Gn/S0dMxI2RbSgnMKJ.4a', '管理员', '2023-05-10 11:51:44');

-- ----------------------------
-- Table structure for xuesheng
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `nianling` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `banji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `xueyuan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `daoyuanzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导员账号',
  `daoyuanxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导员姓名',
  `jiaoshizhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xuehao`(`xuehao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES (11, '2023-03-15 16:46:06', '学号1', '123456', '姓名1', 1, '男', '13823888881', '班级1', '学院1', 'upload/xuesheng_touxiang1.jpg', '导员账号1', '导员姓名1', '教师账号1', '教师姓名1');
INSERT INTO `xuesheng` VALUES (12, '2023-03-15 16:46:06', '学号2', '123456', '姓名2', 2, '男', '13823888882', '班级2', '学院2', 'upload/xuesheng_touxiang2.jpg', '导员账号2', '导员姓名2', '教师账号2', '教师姓名2');
INSERT INTO `xuesheng` VALUES (13, '2023-03-15 16:46:06', '学号3', '123456', '姓名3', 3, '男', '13823888883', '班级3', '学院3', 'upload/xuesheng_touxiang3.jpg', '导员账号3', '导员姓名3', '教师账号3', '教师姓名3');
INSERT INTO `xuesheng` VALUES (14, '2023-03-15 16:46:06', '学号4', '123456', '姓名4', 4, '男', '13823888884', '班级4', '学院4', 'upload/xuesheng_touxiang4.jpg', '导员账号4', '导员姓名4', '教师账号4', '教师姓名4');
INSERT INTO `xuesheng` VALUES (15, '2023-03-15 16:46:06', '学号5', '123456', '姓名5', 5, '男', '13823888885', '班级5', '学院5', 'upload/xuesheng_touxiang5.jpg', '导员账号5', '导员姓名5', '教师账号5', '教师姓名5');
INSERT INTO `xuesheng` VALUES (16, '2023-03-15 16:46:06', '学号6', '123456', '姓名6', 6, '男', '13823888886', '班级6', '学院6', 'upload/xuesheng_touxiang6.jpg', '导员账号6', '导员姓名6', '教师账号6', '教师姓名6');
INSERT INTO `xuesheng` VALUES (17, '2023-03-15 16:46:06', '学号7', '123456', '姓名7', 7, '男', '13823888887', '班级7', '学院7', 'upload/xuesheng_touxiang7.jpg', '导员账号7', '导员姓名7', '教师账号7', '教师姓名7');
INSERT INTO `xuesheng` VALUES (18, '2023-03-15 16:46:06', '学号8', '123456', '姓名8', 8, '男', '13823888888', '班级8', '学院8', 'upload/xuesheng_touxiang8.jpg', '导员账号8', '导员姓名8', '教师账号8', '教师姓名8');

-- ----------------------------
-- Table structure for xueshengchengji
-- ----------------------------
DROP TABLE IF EXISTS `xueshengchengji`;
CREATE TABLE `xueshengchengji`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `daoyuanzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导员账号',
  `daoyuanxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导员姓名',
  `xueyuan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院',
  `banji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `kechengmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `fenshu` float NOT NULL COMMENT '分数',
  `pingyu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '评语',
  `jiaoshizhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `dengjiriqi` date NULL DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生成绩' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xueshengchengji
-- ----------------------------
INSERT INTO `xueshengchengji` VALUES (101, '2023-03-15 16:46:07', '学号1', '姓名1', '导员账号1', '导员姓名1', '学院1', '班级1', '课程名称1', 1, '评语1', '教师账号1', '教师姓名1', '2023-03-15');
INSERT INTO `xueshengchengji` VALUES (102, '2023-03-15 16:46:07', '学号2', '姓名2', '导员账号2', '导员姓名2', '学院2', '班级2', '课程名称2', 2, '评语2', '教师账号2', '教师姓名2', '2023-03-15');
INSERT INTO `xueshengchengji` VALUES (103, '2023-03-15 16:46:07', '学号3', '姓名3', '导员账号3', '导员姓名3', '学院3', '班级3', '课程名称3', 3, '评语3', '教师账号3', '教师姓名3', '2023-03-15');
INSERT INTO `xueshengchengji` VALUES (104, '2023-03-15 16:46:07', '学号4', '姓名4', '导员账号4', '导员姓名4', '学院4', '班级4', '课程名称4', 4, '评语4', '教师账号4', '教师姓名4', '2023-03-15');
INSERT INTO `xueshengchengji` VALUES (105, '2023-03-15 16:46:07', '学号5', '姓名5', '导员账号5', '导员姓名5', '学院5', '班级5', '课程名称5', 5, '评语5', '教师账号5', '教师姓名5', '2023-03-15');
INSERT INTO `xueshengchengji` VALUES (106, '2023-03-15 16:46:07', '学号6', '姓名6', '导员账号6', '导员姓名6', '学院6', '班级6', '课程名称6', 6, '评语6', '教师账号6', '教师姓名6', '2023-03-15');
INSERT INTO `xueshengchengji` VALUES (107, '2023-03-15 16:46:07', '学号7', '姓名7', '导员账号7', '导员姓名7', '学院7', '班级7', '课程名称7', 7, '评语7', '教师账号7', '教师姓名7', '2023-03-15');
INSERT INTO `xueshengchengji` VALUES (108, '2023-03-15 16:46:07', '学号8', '姓名8', '导员账号8', '导员姓名8', '学院8', '班级8', '课程名称8', 8, '评语8', '教师账号8', '教师姓名8', '2023-03-15');

-- ----------------------------
-- Table structure for xueshengxuanke
-- ----------------------------
DROP TABLE IF EXISTS `xueshengxuanke`;
CREATE TABLE `xueshengxuanke`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `kechengmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `jiaoshididian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教室地点',
  `xuankeshijian` datetime NULL DEFAULT NULL COMMENT '选课时间',
  `xuanzeyuanyin` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选择原因',
  `jiaoshizhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生选课' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xueshengxuanke
-- ----------------------------
INSERT INTO `xueshengxuanke` VALUES (81, '2023-03-15 16:46:07', '班级1', '课程名称1', '教室地点1', '2023-03-15 16:46:07', '选择原因1', '教师账号1', '教师姓名1', '学号1', '姓名1', '是', '');
INSERT INTO `xueshengxuanke` VALUES (82, '2023-03-15 16:46:07', '班级2', '课程名称2', '教室地点2', '2023-03-15 16:46:07', '选择原因2', '教师账号2', '教师姓名2', '学号2', '姓名2', '是', '');
INSERT INTO `xueshengxuanke` VALUES (83, '2023-03-15 16:46:07', '班级3', '课程名称3', '教室地点3', '2023-03-15 16:46:07', '选择原因3', '教师账号3', '教师姓名3', '学号3', '姓名3', '是', '');
INSERT INTO `xueshengxuanke` VALUES (84, '2023-03-15 16:46:07', '班级4', '课程名称4', '教室地点4', '2023-03-15 16:46:07', '选择原因4', '教师账号4', '教师姓名4', '学号4', '姓名4', '是', '');
INSERT INTO `xueshengxuanke` VALUES (85, '2023-03-15 16:46:07', '班级5', '课程名称5', '教室地点5', '2023-03-15 16:46:07', '选择原因5', '教师账号5', '教师姓名5', '学号5', '姓名5', '是', '');
INSERT INTO `xueshengxuanke` VALUES (86, '2023-03-15 16:46:07', '班级6', '课程名称6', '教室地点6', '2023-03-15 16:46:07', '选择原因6', '教师账号6', '教师姓名6', '学号6', '姓名6', '是', '');
INSERT INTO `xueshengxuanke` VALUES (87, '2023-03-15 16:46:07', '班级7', '课程名称7', '教室地点7', '2023-03-15 16:46:07', '选择原因7', '教师账号7', '教师姓名7', '学号7', '姓名7', '是', '');
INSERT INTO `xueshengxuanke` VALUES (88, '2023-03-15 16:46:07', '班级8', '课程名称8', '教室地点8', '2023-03-15 16:46:07', '选择原因8', '教师账号8', '教师姓名8', '学号8', '姓名8', '是', '');

-- ----------------------------
-- Table structure for xueyuanxinxi
-- ----------------------------
DROP TABLE IF EXISTS `xueyuanxinxi`;
CREATE TABLE `xueyuanxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学院信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xueyuanxinxi
-- ----------------------------
INSERT INTO `xueyuanxinxi` VALUES (51, '2023-03-15 16:46:07', '学院1');
INSERT INTO `xueyuanxinxi` VALUES (52, '2023-03-15 16:46:07', '学院2');
INSERT INTO `xueyuanxinxi` VALUES (53, '2023-03-15 16:46:07', '学院3');
INSERT INTO `xueyuanxinxi` VALUES (54, '2023-03-15 16:46:07', '学院4');
INSERT INTO `xueyuanxinxi` VALUES (55, '2023-03-15 16:46:07', '学院5');
INSERT INTO `xueyuanxinxi` VALUES (56, '2023-03-15 16:46:07', '学院6');
INSERT INTO `xueyuanxinxi` VALUES (57, '2023-03-15 16:46:07', '学院7');
INSERT INTO `xueyuanxinxi` VALUES (58, '2023-03-15 16:46:07', '学院8');

SET FOREIGN_KEY_CHECKS = 1;
