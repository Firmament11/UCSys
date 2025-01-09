/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3306
 Source Schema         : learn1

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 13/09/2024 01:57:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `team_id` int NULL DEFAULT NULL,
  `tel` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `images` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `ct_info` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `ac_time` datetime NULL DEFAULT NULL,
  `ct_address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `host` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '社团活动管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1, '足球比赛', 1, '12345678', NULL, '足球都来了', '2022-09-01 21:25:52', '足球场', 1, '2022-08-08 21:26:16', 'lisi', 1);
INSERT INTO `activity` VALUES (2, '阅读启蒙', 2, '321321', 'http://localhost:9999//images/f304a663-a571-4cdc-a327-4b45324df934.png', '　　为丰富校园文化内容，给广大社员们一个展示自我的平台，同时也展现学生采风的成果，显现我社在美学与文学方面的成绩，通过学生作品的形式促进各方面的交流。', '2022-08-09 08:00:00', '2132312', 4, '2022-08-08 22:01:30', '321321', 1);
INSERT INTO `activity` VALUES (3, '今日文学', 2, '321321321', NULL, '学哥学姐： 是你们亲自接我们入校，又带领我们融入了这个大家庭，三年里你们留下的回忆会继续伴我们成长，希望你们一路走好，创造自己美好的未来', '2022-08-09 20:21:12', '小广场', 4, '2022-08-09 20:21:26', '张三', 1);
INSERT INTO `activity` VALUES (4, '风采归来', 2, '13212344321', 'http://localhost:9999//images/9bc85d56-4a27-4fa4-b5bf-79f7a3e4461f.png', '　　乐于展示，敢于展示。', '2022-08-31 08:00:00', '多媒体教室', 4, '2022-08-21 11:24:09', '赵晓雪', 1);
INSERT INTO `activity` VALUES (7, '买资料', 9, '12313231231', '', '很好', '2024-08-08 00:00:00', '郑州大学新校区东门', 9, '2024-08-07 03:13:41', '马冬梅', 0);
INSERT INTO `activity` VALUES (8, '仰“暮”行动', 16, '113344', '', '为老人们送来秋天的关怀', '2024-08-08 01:17:12', '夕阳红养老院', 16, '2024-08-07 17:17:46', '玛卡巴卡', 0);
INSERT INTO `activity` VALUES (9, '看电影', 3, '12313112', NULL, '看爱国电影', '2024-08-10 19:32:42', '钟楼', 2, '2024-08-10 19:33:12', 'lisi', 1);
INSERT INTO `activity` VALUES (10, '乒乓球比赛', 8, '123123', NULL, '乒乓天下无双', '2024-08-10 19:36:45', '体育场', 3, '2024-08-10 19:37:17', '占山', 1);
INSERT INTO `activity` VALUES (11, '篮球比赛', 8, '123123', NULL, '篮球天下无双', '2024-08-10 19:38:32', '体育场', 3, '2024-08-10 19:38:39', '占山', 1);
INSERT INTO `activity` VALUES (12, '羽毛球比赛', 8, '123123', NULL, '羽毛球天下无双', '2024-08-10 19:39:56', '体育场', 3, '2024-08-10 19:40:04', '占山', 1);

-- ----------------------------
-- Table structure for apply_info
-- ----------------------------
DROP TABLE IF EXISTS `apply_info`;
CREATE TABLE `apply_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `realname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `number` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qq` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `weixin` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `team_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '社团入团申请记录,申请生成可入团' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apply_info
-- ----------------------------
INSERT INTO `apply_info` VALUES (1, 'lisi', '男', '21321321321', '13443211234', 'lisi@126.com', '西门口', '123213212', '444444', '我想入团', '2024-08-01 20:33:32', 1, 1);
INSERT INTO `apply_info` VALUES (2, 'wangwu', '女', '132144324443432', '13456789023', 'wangwu@126.com', '北京', '1235432', '132456790', '社团好玩么', '2024-07-14 08:23:50', 1, 7);
INSERT INTO `apply_info` VALUES (3, 'zhaoliu', '男', '13221213244343243', '12345678909', 'zhaoliu@126.com', '天津', '321323211', '321321332', '我想加入', '2024-07-14 16:03:59', 1, 7);
INSERT INTO `apply_info` VALUES (7, 'xiaolu', '女', '324432', '13523456789', '2121@126.com', '', '212121', '212121', '21212121', '2024-08-17 20:50:52', 0, 6);
INSERT INTO `apply_info` VALUES (8, 'wangxiaoyan', '女', '32442', '13212345687', '21212121@126.com', '212121', '', '212121', '212121212121', '2024-08-17 21:13:54', 0, 2);
INSERT INTO `apply_info` VALUES (9, '测试是', '女', '55342', '13212345678', 'ceshi2@126.com', '212121', '', '212121', '测试吧', '2024-09-25 17:39:16', 0, 6);
INSERT INTO `apply_info` VALUES (10, 'qq', '女', '43245', '13512345432', 'qq@126.com', 'zhengxi', '', '1234567890', '测试下', '2024-09-28 15:43:04', 1, 6);
INSERT INTO `apply_info` VALUES (11, 'ceshisa', '男', '545335', '13212457656', 'ceshisa@126.com', '飒飒撒', '', '21212212121', '21212122121', '2024-10-28 20:10:34', 0, 7);
INSERT INTO `apply_info` VALUES (12, 'lining', '男', '4354366', '13212098765', 'lining@126.com', '122121', '', '212121212', '22111111', '2024-10-28 20:25:21', 1, 5);
INSERT INTO `apply_info` VALUES (13, 'liuhulan', '男', '45366', '13456789000', 'liuhulan@126.com', 'xian', '', '212122121', '212121212121我要入团', '2024-12-04 12:21:27', 1, 2);
INSERT INTO `apply_info` VALUES (14, 'liuhulan', '男', '75456', '13456789000', '13456789000@126.com', '13456789000', '', '13456789000', '134567890002212121', '2024-12-04 12:26:26', 1, 10);
INSERT INTO `apply_info` VALUES (17, 'user1', '男', '74556', '18624833344', '2138277532@qq.com', '河南郑州大学', '', 'WeiXin', '我要当好人', '2024-08-07 17:53:58', 0, 16);

-- ----------------------------
-- Table structure for apply_list
-- ----------------------------
DROP TABLE IF EXISTS `apply_list`;
CREATE TABLE `apply_list`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_id` int NULL DEFAULT NULL,
  `content` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `app_time` datetime NULL DEFAULT NULL,
  `app_author` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '审核记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apply_list
-- ----------------------------
INSERT INTO `apply_list` VALUES (1, 2, '不同意啊，你没有技能', 2, '2022-07-13 10:55:13', 1);
INSERT INTO `apply_list` VALUES (2, 2, '同意吧，看你不容易', 1, '2022-07-14 10:55:41', 1);
INSERT INTO `apply_list` VALUES (3, 2, '审核建议想写什么写什么', 1, NULL, 1);
INSERT INTO `apply_list` VALUES (4, 1, '你加入干什么，别加入了 回家', 2, '2022-07-14 16:02:02', 1);
INSERT INTO `apply_list` VALUES (5, 3, '我同意拉', 1, '2022-08-02 22:17:19', 1);
INSERT INTO `apply_list` VALUES (6, 10, 'tongyi', 1, '2022-09-28 15:46:01', 6);
INSERT INTO `apply_list` VALUES (7, 14, '同意了', 1, '2022-12-04 12:24:10', 9);
INSERT INTO `apply_list` VALUES (8, 15, 'keyi', 1, '2022-12-04 12:29:11', 6);
INSERT INTO `apply_list` VALUES (9, 13, '同意', 1, '2024-08-05 08:52:31', 11);
INSERT INTO `apply_list` VALUES (10, 11, '可以', 1, '2024-08-10 19:31:25', 17);

-- ----------------------------
-- Table structure for cost_list
-- ----------------------------
DROP TABLE IF EXISTS `cost_list`;
CREATE TABLE `cost_list`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `team_id` int NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `price` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `ctime` datetime NULL DEFAULT NULL,
  `remarks` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cost_list
-- ----------------------------
INSERT INTO `cost_list` VALUES (1, 3, '买礼物', '200', '2022-08-09 21:00:18', '给参加猜谜语活动的学生准备礼物');
INSERT INTO `cost_list` VALUES (2, 3, '测试费用1', '100', '2022-08-09 21:55:53', '测试成功了么1');
INSERT INTO `cost_list` VALUES (4, 2, '种子书友会', '1000', '2022-08-21 11:28:19', '买书分发');
INSERT INTO `cost_list` VALUES (5, 2, '阅读启蒙送爱心', '300', '2022-08-21 11:28:44', '发送小奖品');
INSERT INTO `cost_list` VALUES (6, 2, '测试', '122', '2022-10-28 19:41:36', '221212121');
INSERT INTO `cost_list` VALUES (7, 4, '吃饭', '100', '2024-08-10 19:43:16', '小组聚餐');
INSERT INTO `cost_list` VALUES (8, 5, '饮料', '50', '2024-08-10 19:43:55', '六瓶冰红茶');
INSERT INTO `cost_list` VALUES (9, 7, '海报', '30', '2024-08-10 19:45:09', '小组宣传海报');

-- ----------------------------
-- Table structure for leave_info
-- ----------------------------
DROP TABLE IF EXISTS `leave_info`;
CREATE TABLE `leave_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tel` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `content` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `leave_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '在线留言管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leave_info
-- ----------------------------
INSERT INTO `leave_info` VALUES (1, '13567899876', 'zhangsan@126.com', 'ceshizhang', '一老一幼”系民心，一枝一叶总关情。习近平总书记说“要让老百姓体会到我们党是全心全意为人民服务的', '2022-08-21 09:32:39');
INSERT INTO `leave_info` VALUES (2, '13212345678', 'xukai@126.com', '徐凯', '毕业时节，相逢又告别，归帆又离岸，既是往日欢乐的终结，又是未来幸福的开端', '2022-08-21 10:46:54');
INSERT INTO `leave_info` VALUES (3, '13245677654', 'zhaowei@126.com', 'zhaoxiaowei', '别忘了，受伤时给我电话，成功时给我短信，寂寞时找我聊天，难忘社友情', '2022-08-21 10:47:36');
INSERT INTO `leave_info` VALUES (16, '18624833344', '2138277532@qq.com', '连通', 'hahahha', '2024-08-06 02:28:21');
INSERT INTO `leave_info` VALUES (17, '18624833344', '2138277532@qq.com', '扎马哈', '我想加入你们呢', '2024-08-07 17:42:17');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `user_id` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '公告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '各个社团注意，百团大战即将于10.1日在南操开展，请提前做好宣传准备。预祝我们的社团大家庭越来越人热闹。--系统管理员', '1', '2024-08-06 00:28:27');
INSERT INTO `notice` VALUES (2, '注意', '1', '2024-08-10 19:27:59');
INSERT INTO `notice` VALUES (3, '1', '1', '2024-08-10 19:28:11');
INSERT INTO `notice` VALUES (4, '幅度萨芬', '1', '2024-08-10 19:28:22');
INSERT INTO `notice` VALUES (5, '发啊打发打发', '1', '2024-08-10 19:28:32');
INSERT INTO `notice` VALUES (6, '案发打发发达', '1', '2024-08-10 19:28:44');
INSERT INTO `notice` VALUES (7, '发达打发打发发达', '1', '2024-08-10 19:28:55');
INSERT INTO `notice` VALUES (8, '阿斯顿法定法定', '1', '2024-08-10 19:29:05');
INSERT INTO `notice` VALUES (9, '阿凡达打发打发', '1', '2024-08-10 19:29:15');
INSERT INTO `notice` VALUES (10, '放大打发的', '1', '2024-08-10 19:29:29');

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_by` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `images` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '社团信息管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES (1, '海韵文学社', '1', 2, 7, '2024-07-11 15:28:03', 1, 'http://localhost:9527//images/wenxue.png');
INSERT INTO `team` VALUES (2, '文渊汉服社', '1', 1, 4, '2024-07-12 21:34:58', 1, 'http://localhost:9527//images/hanfu.png');
INSERT INTO `team` VALUES (3, '好好学习社', '1', 2, 2, '2024-08-30 08:00:00', 1, NULL);
INSERT INTO `team` VALUES (4, '桐源工作室', '1', 3, 8, '2024-07-12 22:41:14', 1, 'http://localhost:9527//images/wenxue.png');
INSERT INTO `team` VALUES (5, '文艺摄影社', '1', 3, 5, '2024-07-12 22:46:21', 1, 'http://localhost:9527//images/sheying.png');
INSERT INTO `team` VALUES (6, '地表最强社', '1', 5, 10, '2024-07-22 08:00:00', 1, 'http://localhost:9527//images/lunhua.png');
INSERT INTO `team` VALUES (7, '少林武术社', '1', 5, 17, '2024-07-13 22:46:52', 1, 'http://localhost:9527//images/wushu.png');
INSERT INTO `team` VALUES (8, '二次元の浪漫社', '1', 4, 3, '2024-08-05 11:01:00', 1, NULL);
INSERT INTO `team` VALUES (9, '一休动漫社', '1', 4, 9, '2024-07-28 20:56:57', 1, 'http://localhost:9527//images/dongman.png');
INSERT INTO `team` VALUES (10, '美好时光', '1', 6, 6, '2024-08-31 08:00:00', 1, 'http://localhost:9527//images/fd4121af-281b-4005-a31f-8c200462ef6a.png');
INSERT INTO `team` VALUES (15, '3121', NULL, 6, 15, '2024-08-07 11:20:55', 1, '');
INSERT INTO `team` VALUES (16, '思源小青桔', NULL, 6, 16, '2024-08-08 01:11:28', 1, '');

-- ----------------------------
-- Table structure for team_user
-- ----------------------------
DROP TABLE IF EXISTS `team_user`;
CREATE TABLE `team_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `realname` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `image` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `join_time` datetime NULL DEFAULT NULL,
  `team_id` int NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '社团成员管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of team_user
-- ----------------------------
INSERT INTO `team_user` VALUES (1, 'zhaoliu', 'zhaoliu', '男', '123456789098', 'zhaoliu@126.com', NULL, '2022-08-02 22:17:19', 4, '123456');
INSERT INTO `team_user` VALUES (2, 'lili', 'lili', '女', '13212345678', 'lili@126.com', NULL, '2022-08-06 21:22:49', 2, '123456');
INSERT INTO `team_user` VALUES (3, 'zhangsi2', 'zhangsi2', '男', '213321321321321', 'zhangsi@163.com', NULL, '2022-08-10 21:35:15', 3, '123456');
INSERT INTO `team_user` VALUES (4, 'qq', 'qq', '女', '13512345432', 'qq@126.com', NULL, '2022-09-28 15:47:25', 4, '123456');
INSERT INTO `team_user` VALUES (5, 'liuhulan', 'liuhulan', '男', '13456789000', 'liuhulan@126.com', NULL, '2022-12-04 12:24:10', 7, '123456');
INSERT INTO `team_user` VALUES (6, 'liuhulan', 'liuhulan', '男', '13456789000', '13456789000@126.com', NULL, '2022-12-04 12:29:11', 8, '123456');
INSERT INTO `team_user` VALUES (7, 'lining', 'lining', '男', '13212098765', 'lining@126.com', NULL, '2024-08-05 08:52:31', 5, '123456');
INSERT INTO `team_user` VALUES (8, 'user0', 'user0', '男', '21321323', '2133113@ex.com', NULL, '2024-08-06 10:21:55', 3, '12313');
INSERT INTO `team_user` VALUES (9, 'user1', 'user1', '男', '1234567890', 'user1@ex.com', 'image1.jpg', '2024-08-06 10:17:38', 4, 'password1');
INSERT INTO `team_user` VALUES (10, 'user2', 'user2', '女', '1234567891', 'user2@ex.com', 'image2.jpg', '2024-08-06 10:17:38', 2, 'password2');
INSERT INTO `team_user` VALUES (11, 'user3', 'use3', '男', '1234567892', 'user3@ex.com', 'image3.jpg', '2024-08-06 10:17:38', 9, 'password3');
INSERT INTO `team_user` VALUES (12, 'user4', 'use4', '女', '1234567893', 'user4@ex.com', 'image4.jpg', '2024-08-06 10:17:38', 10, 'password4');
INSERT INTO `team_user` VALUES (13, 'user5', 'user5', '男', '1234567894', 'user5@ex.com', 'image5.jpg', '2024-08-06 10:17:38', 9, 'password5');
INSERT INTO `team_user` VALUES (14, 'user6', 'user6', '女', '1234567895', 'user6@ex.com', 'image6.jpg', '2024-08-06 10:17:38', 8, 'password6');
INSERT INTO `team_user` VALUES (15, 'user7', 'user7', '男', '1234567896', 'user7@ex.com', 'image7.jpg', '2024-08-06 10:17:38', 10, 'password7');
INSERT INTO `team_user` VALUES (16, 'user8', 'user8', '女', '1234567897', 'user8@ex.com', 'image8.jpg', '2024-08-06 10:17:38', 8, 'password8');
INSERT INTO `team_user` VALUES (17, 'user9', 'user9', '男', '1234567898', 'user9@ex.com', 'image9.jpg', '2024-08-06 10:17:38', 10, 'password9');
INSERT INTO `team_user` VALUES (18, 'user10', 'user10', '女', '1234567899', 'user10@ex.com', 'image10.jpg', '2024-08-06 10:17:38', 3, 'password10');
INSERT INTO `team_user` VALUES (19, 'user11', '孙磊', '男', '1234567800', 'user11@ex.com', 'image11.jpg', '2024-08-06 10:17:38', 6, 'password11');
INSERT INTO `team_user` VALUES (20, 'user12', '马丽', '女', '1234567801', 'user12@ex.com', 'image12.jpg', '2024-08-06 10:17:38', 9, 'password12');
INSERT INTO `team_user` VALUES (21, 'user13', '朱涛', '男', '1234567802', 'user13@ex.com', 'image13.jpg', '2024-08-06 10:17:38', 8, 'password13');
INSERT INTO `team_user` VALUES (22, 'user14', '胡丽', '女', '1234567803', 'user14@ex.com', 'image14.jpg', '2024-08-06 10:17:38', 1, 'password14');
INSERT INTO `team_user` VALUES (23, 'user15', '郭强', '男', '1234567804', 'user15@ex.com', 'image15.jpg', '2024-08-06 10:17:38', 2, 'password15');
INSERT INTO `team_user` VALUES (24, 'user16', '何敏', '女', '1234567805', 'user16@ex.com', 'image16.jpg', '2024-08-06 10:17:38', 6, 'password16');
INSERT INTO `team_user` VALUES (25, 'user17', '高磊', '男', '1234567806', 'user17@ex.com', 'image17.jpg', '2024-08-06 10:17:38', 4, 'password17');
INSERT INTO `team_user` VALUES (26, 'user18', '林丽', '女', '1234567807', 'user18@ex.com', 'image18.jpg', '2024-08-06 10:17:38', 10, 'password18');
INSERT INTO `team_user` VALUES (27, 'user19', '罗勇', '男', '1234567808', 'user19@ex.com', 'image19.jpg', '2024-08-06 10:17:38', 7, 'password19');
INSERT INTO `team_user` VALUES (28, 'user20', '梁静', '女', '1234567809', 'user20@ex.com', 'image20.jpg', '2024-08-06 10:17:38', 7, 'password20');
INSERT INTO `team_user` VALUES (29, 'user21', '宋磊', '男', '1234567810', 'user21@ex.com', 'image21.jpg', '2024-08-06 10:17:38', 4, 'password21');
INSERT INTO `team_user` VALUES (30, 'user22', '郑丽', '女', '1234567811', 'user22@ex.com', 'image22.jpg', '2024-08-06 10:17:38', 6, 'password22');
INSERT INTO `team_user` VALUES (31, 'user23', '谢勇', '男', '1234567812', 'user23@ex.com', 'image23.jpg', '2024-08-06 10:17:38', 9, 'password23');
INSERT INTO `team_user` VALUES (32, 'user24', '韩敏', '女', '1234567813', 'user24@ex.com', 'image24.jpg', '2024-08-06 10:17:38', 7, 'password24');
INSERT INTO `team_user` VALUES (33, 'user25', '潘磊', '男', '1234567814', 'user25@ex.com', 'image25.jpg', '2024-08-06 10:17:38', 7, 'password25');
INSERT INTO `team_user` VALUES (34, 'user26', '曹丽', '女', '1234567815', 'user26@ex.com', 'image26.jpg', '2024-08-06 10:17:38', 3, 'password26');
INSERT INTO `team_user` VALUES (35, 'user27', '袁勇', '男', '1234567816', 'user27@ex.com', 'image27.jpg', '2024-08-06 10:17:38', 5, 'password27');
INSERT INTO `team_user` VALUES (36, 'user28', '邓静', '女', '1234567817', 'user28@ex.com', 'image28.jpg', '2024-08-06 10:17:38', 3, 'password28');
INSERT INTO `team_user` VALUES (37, 'user29', '肖磊', '男', '1234567818', 'user29@ex.com', 'image29.jpg', '2024-08-06 10:17:38', 2, 'password29');
INSERT INTO `team_user` VALUES (38, 'user30', '范丽', '女', '1234567819', 'user30@ex.com', 'image30.jpg', '2024-08-06 10:17:38', 8, 'password30');

-- ----------------------------
-- Table structure for type_info
-- ----------------------------
DROP TABLE IF EXISTS `type_info`;
CREATE TABLE `type_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `remarks` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '社团分类和介绍' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_info
-- ----------------------------
INSERT INTO `type_info` VALUES (1, '汉服社', '从名字当中我们就能看出来，汉服社跟汉服有关。汉服社主要是弘扬跟继承中国传统文化。让大学生通过穿汉服，体验古人的生活方式，了解汉服的起源与发展。');
INSERT INTO `type_info` VALUES (2, '文学社', '      文学社是文化气息非常浓厚的社团，爱好文学、喜欢咬文嚼字的学生，一定要参加文学社。在文学社当中，我们不仅可以结交喜爱文学的同学，还能提高自己的文化素养');
INSERT INTO `type_info` VALUES (3, '摄影社', '摄影社是爱好摄影同学的集结地。对于喜欢摄影，喜欢拍照的学生，一定要参加学校的摄影社。但是摄影社的同学一般每人一部相机，一部好的相机价值不菲，同学们要做好经济之间的平衡');
INSERT INTO `type_info` VALUES (4, '动漫社', '动漫社是一个好玩又有趣的社团。动漫社会不定期地举办一些cosplay活动。通过角色扮演，大学生可以感受动漫人物的快乐');
INSERT INTO `type_info` VALUES (5, '武术社', '武术社是大学当中比较吃香的社团。每个学校几乎都有武术社，对于喜欢武术的学生，可以参加学校的武术社。这样不仅可以学习武术，还能强身健体');
INSERT INTO `type_info` VALUES (6, '公益活动社', '该社团的宗旨是通过组织和参与环保、扶贫、救助动物、教育、健康等多种类型的公益活动，帮助有需要的人群，同时也为学生提供一个实践和锻炼的平台。社团不仅注重活动的实际效果，还注重成员的个人成长，鼓励大家在活动中发挥创意和领导才能。通过积极的公益实践，大学公益活动社致力于传递爱心，营造一个更和谐美好的社会。');
INSERT INTO `type_info` VALUES (7, '筹备1', '筹备中。。。');
INSERT INTO `type_info` VALUES (8, '筹备2', '筹备2.。。。。');
INSERT INTO `type_info` VALUES (9, '筹备3', '筹备3');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `realname` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL COMMENT '0 社团管理员\r\n            1 总管理员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '管理员信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 'admin', '123456', '连通', '男', '13912345432', 'zhangsan@126.com', 1, 1);
INSERT INTO `userinfo` VALUES (2, 'kevin', '123456', 'lisi', '男', '13712345678', 'lisi@163.com', 0, 0);
INSERT INTO `userinfo` VALUES (3, 'kappy', '123456', '占山', '女', '13812345432', 'zhangsan@126.com', 0, 0);
INSERT INTO `userinfo` VALUES (4, 'lily', '123456', '丽丽', '女', '13456789876', 'lili@163.com', 0, 0);
INSERT INTO `userinfo` VALUES (5, 'wangxiaoming', '123456', '王小明', '男', '13212349876', 'wangxiaoming@126.com', 0, 0);
INSERT INTO `userinfo` VALUES (6, 'xiaozhan', '123456', '肖战', '男', '13567896543', 'xiaozhan@126.com', 0, 0);
INSERT INTO `userinfo` VALUES (7, 'chengyi', '123456', '成毅', '男', '13212344321', 'chegyi@163.com', 0, 0);
INSERT INTO `userinfo` VALUES (8, 'ceshi', '123456', '测试', '女', '21221', '21212121', 0, 0);
INSERT INTO `userinfo` VALUES (9, 'huangsang', '123456', '黄上', '女', '186666', '23123123123@qq.com', 0, 0);
INSERT INTO `userinfo` VALUES (10, 'sangsang', '123456', '商商', '男', '12324', '23432455444@qq.com', 0, 0);
INSERT INTO `userinfo` VALUES (15, 'hello', '123456', '马冬梅', '女', '1231323213', '213123@qq.com', 0, 0);
INSERT INTO `userinfo` VALUES (16, 'makabaka', '123456', '玛卡巴卡', '女', '113344', 'makabaka@qq.com', 0, 0);
INSERT INTO `userinfo` VALUES (18, '11211111132213', '123456', '1dfaadfadf223faddafadsfafad', '女', '123123', 'dssfadadfdaf', 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
