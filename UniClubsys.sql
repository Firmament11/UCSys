
SET FOREIGN_KEY_CHECKS=0;

-- 创建 activity 表
CREATE TABLE activity (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    team_id INT(10) NOT NULL,
    tel VARCHAR(200),
    images VARCHAR(200),
    ct_info VARCHAR(2000),
    ac_time DATETIME NOT NULL,
    ct_address VARCHAR(200),
    user_id INT(10),
    create_time DATETIME NOT NULL,
    host VARCHAR(10),
    status INT(10) NOT NULL
);

-- 创建 apply_info 表
CREATE TABLE apply_info (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    realname VARCHAR(20) NOT NULL,
    sex VARCHAR(20),
    number VARCHAR(40),
    tel VARCHAR(20),
    email VARCHAR(60),
    address VARCHAR(60),
    qq VARCHAR(60),
    weixin VARCHAR(60),
    content VARCHAR(200),
    create_time DATETIME NOT NULL,
    status INT(10) NOT NULL,
    team_id INT(10) NOT NULL
);

-- 创建 apply_list 表
CREATE TABLE apply_list (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    app_id INT(10) NOT NULL,
    content VARCHAR(300),
    status INT(10) NOT NULL,
    app_time DATETIME NOT NULL,
    app_author INT(10) NOT NULL
);

-- 创建 cost_list 表
CREATE TABLE cost_list (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    team_id INT(11) NOT NULL,
    name VARCHAR(20) NOT NULL,
    price VARCHAR(20),
    ctime DATETIME NOT NULL,
    remarks VARCHAR(200)
);

-- 创建 leave_info 表
CREATE TABLE leave_info (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    tel VARCHAR(20),
    email VARCHAR(20),
    username VARCHAR(20),
    content VARCHAR(120),
    leave_time DATETIME NOT NULL
);

-- 创建 notice 表
CREATE TABLE notice (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    content VARCHAR(20) NOT NULL,
    user_id VARCHAR(120),
    create_time DATETIME NOT NULL
);

-- 创建 team 表
CREATE TABLE team (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    create_by VARCHAR(20),
    type INT(10) NOT NULL,
    user_id INT(10) NOT NULL,
    create_time DATETIME NOT NULL,
    status INT(10) NOT NULL,
    images VARCHAR(200)
);

-- 创建 team_user 表
CREATE TABLE team_user (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(20) NOT NULL,
    realname VARCHAR(120),
    sex VARCHAR(20),
    tel VARCHAR(20),
    email VARCHAR(20),
    image VARCHAR(120),
    join_time DATETIME NOT NULL,
    team_id INT(11) NOT NULL,
    password VARCHAR(20)
);

-- 创建 type_info 表
CREATE TABLE type_info (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    remarks VARCHAR(200)
);

-- 创建 userinfo 表
CREATE TABLE userinfo (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    realname VARCHAR(120),
    sex VARCHAR(20),
    tel VARCHAR(20),
    email VARCHAR(20),
    status INT(10) NOT NULL,
    type INT(10) NOT NULL
);

-- 插入数据到 activity 表
INSERT INTO activity (name, team_id, tel, images, ct_info, ac_time, ct_address, user_id, create_time, host, status) VALUES
('迎新晚会', 1, '1234567890', 'http://example.com/img1.jpg', '欢迎新生加入社团的活动', '2024-08-15 18:00:00', '大学礼堂', 1, '2024-08-01 12:00:00', '学生会', 0),
('技术讲座', 1, '1234567891', 'http://example.com/img2.jpg', '讲解最新技术的讲座', '2024-08-20 10:00:00', '教学楼301', 2, '2024-08-02 09:00:00', '科技协会', 1),
('篮球比赛', 2, '1234567892', 'http://example.com/img3.jpg', '年度篮球比赛', '2024-08-25 14:00:00', '体育馆', 3, '2024-08-03 11:00:00', '体育部', 0),
('书展', 2, '1234567893', 'http://example.com/img4.jpg', '各类书籍的展览活动', '2024-08-30 09:00:00', '图书馆', 4, '2024-08-04 10:00:00', '图书社', 1),
('音乐会', 3, '1234567894', 'http://example.com/img5.jpg', '校园音乐会', '2024-09-01 19:00:00', '演艺中心', 5, '2024-08-05 16:00:00', '音乐协会', 0),
('志愿服务', 3, '1234567895', 'http://example.com/img6.jpg', '社区志愿服务活动', '2024-09-05 08:00:00', '社区中心', 6, '2024-08-06 15:00:00', '志愿者协会', 1),
('舞蹈晚会', 4, '1234567896', 'http://example.com/img7.jpg', '社团舞蹈晚会', '2024-09-10 20:00:00', '演讲厅', 7, '2024-08-07 14:00:00', '舞蹈社', 0),
('学术研讨会', 4, '1234567897', 'http://example.com/img8.jpg', '学术领域的研讨会', '2024-09-15 13:00:00', '学术中心', 8, '2024-08-08 13:00:00', '学术部', 1),
('运动会', 5, '1234567898', 'http://example.com/img9.jpg', '年度运动会', '2024-09-20 09:00:00', '运动场', 9, '2024-08-09 12:00:00', '运动社', 0),
('电影放映', 5, '1234567899', 'http://example.com/img10.jpg', '校园电影放映活动', '2024-09-25 17:00:00', '多功能厅', 10, '2024-08-10 11:00:00', '电影社', 1);

-- 插入数据到 apply_info 表
INSERT INTO apply_info (realname, sex, number, tel, email, address, qq, weixin, content, create_time, status, team_id) VALUES
('张三', '男', '2021001', '13800000001', 'zhangsan@example.com', '北京市', '123456789', 'zhangsanwx', '希望加入社团贡献力量', '2024-08-01 10:00:00', 0, 1),
('李四', '女', '2021002', '13800000002', 'lisi@example.com', '上海市', '987654321', 'lisix', '希望与大家一起活动', '2024-08-02 11:00:00', 1, 1),
('王五', '男', '2021003', '13800000003', 'wangwu@example.com', '广州市', '456123789', 'wangwux', '对社团活动很感兴趣', '2024-08-03 12:00:00', 0, 2),
('赵六', '女', '2021004', '13800000004', 'zhaoliu@example.com', '深圳市', '654789123', 'zhaoliux', '希望参与社团组织工作', '2024-08-04 13:00:00', 1, 2),
('孙七', '男', '2021005', '13800000005', 'sunqi@example.com', '武汉市', '321654987', 'sunqix', '有丰富的社团活动经验', '2024-08-05 14:00:00', 0, 3),
('周八', '女', '2021006', '13800000006', 'zhoub@example.com', '西安市', '789456123', 'zhoubx', '喜欢参与社团活动', '2024-08-06 15:00:00', 1, 3),
('吴九', '男', '2021007', '13800000007', 'wuj@example.com', '成都市', '159753456', 'wujx', '希望加入后帮助组织活动', '2024-08-07 16:00:00', 0, 4),
('郑十', '女', '2021008', '13800000008', 'zhengsh@example.com', '杭州市', '753951456', 'zhengshx', '对社团有强烈的兴趣', '2024-08-08 17:00:00', 1, 4),
('钱十一', '男', '2021009', '13800000009', 'qiansh@example.com', '济南市', '456987123', 'qianshx', '希望利用特长为社团服务', '2024-08-09 18:00:00', 0, 5),
('刘十二', '女', '2021010', '13800000010', 'liush@example.com', '南京市', '258963147', 'liushx', '希望参与社团活动组织', '2024-08-10 19:00:00', 1, 5);

-- 插入数据到 apply_list 表
INSERT INTO apply_list (app_id, content, status, app_time, app_author) VALUES
(1, '申请理由不够详细', 2, '2024-08-01 11:00:00', 1),
(2, '符合社团要求，批准通过', 1, '2024-08-02 12:00:00', 2),
(3, '社团活动时间冲突，申请未通过', 2, '2024-08-03 13:00:00', 3),
(4, '申请理由充分，批准通过', 1, '2024-08-04 14:00:00', 4),
(5, '有丰富经验，批准通过', 1, '2024-08-05 15:00:00', 5),
(6, '申请理由充分，批准通过', 1, '2024-08-06 16:00:00', 6),
(7, '社团活动与申请者兴趣不符，申请未通过', 2, '2024-08-07 17:00:00', 7),
(8, '符合社团要求，批准通过', 1, '2024-08-08 18:00:00', 8),
(9, '社团活动时间冲突，申请未通过', 2, '2024-08-09 19:00:00', 9),
(10, '申请理由充分，批准通过', 1, '2024-08-10 20:00:00', 10);

-- 插入数据到 cost_list 表
INSERT INTO cost_list (team_id, name, price, ctime, remarks) VALUES
(1, '场地租赁', '2000', '2024-08-01 09:00:00', '校园礼堂租赁费用'),
(1, '活动宣传', '500', '2024-08-02 10:00:00', '宣传材料费用'),
(2, '设备购买', '1500', '2024-08-03 11:00:00', '音响设备费用'),
(2, '活动组织', '800', '2024-08-04 12:00:00', '组织活动的费用'),
(3, '场地租赁', '1000', '2024-08-05 13:00:00', '体育馆租赁费用'),
(3, '活动宣传', '300', '2024-08-06 14:00:00', '宣传材料费用'),
(4, '书籍采购', '2000', '2024-08-07 15:00:00', '书展的书籍费用'),
(4, '展览布置', '600', '2024-08-08 16:00:00', '布置展览的费用'),
(5, '场地租赁', '1200', '2024-08-09 17:00:00', '演艺中心租赁费用'),
(5, '设备租赁', '500', '2024-08-10 18:00:00', '音响和灯光设备费用');

-- 插入数据到 leave_info 表
INSERT INTO leave_info (tel, email, username, content, leave_time) VALUES
('13800000001', 'user1@example.com', 'user1', '请问社团活动的具体安排是什么？', '2024-08-01 10:00:00'),
('13800000002', 'user2@example.com', 'user2', '我对加入社团有兴趣，请提供更多信息。', '2024-08-02 11:00:00'),
('13800000003', 'user3@example.com', 'user3', '请问如何申请成为社团成员？', '2024-08-03 12:00:00'),
('13800000004', 'user4@example.com', 'user4', '能否提供一下社团的联系方式？', '2024-08-04 13:00:00'),
('13800000005', 'user5@example.com', 'user5', '社团活动的报名时间是什么时候？', '2024-08-05 14:00:00'),
('13800000006', 'user6@example.com', 'user6', '希望了解更多关于社团的信息。', '2024-08-06 15:00:00'),
('13800000007', 'user7@example.com', 'user7', '社团的主要活动有哪些？', '2024-08-07 16:00:00'),
('13800000008', 'user8@example.com', 'user8', '如何才能成为社团的管理人员？', '2024-08-08 17:00:00'),
('13800000009', 'user9@example.com', 'user9', '我想知道社团的活动安排，请告知。', '2024-08-09 18:00:00'),
('13800000010', 'user10@example.com', 'user10', '能否提供一下社团的活动日历？', '2024-08-10 19:00:00');

-- 插入数据到 notice 表
INSERT INTO notice (content, user_id, create_time) VALUES
('欢迎新生加入社团！', 'admin1', '2024-08-01 10:00:00'),
('本月活动安排已公布，请查看。', 'admin2', '2024-08-02 11:00:00'),
('社团招募活动开始，请有意者报名。', 'admin3', '2024-08-03 12:00:00'),
('社团志愿者招募公告。', 'admin4', '2024-08-04 13:00:00'),
('新学期社团活动安排。', 'admin5', '2024-08-05 14:00:00'),
('社团年度总结及表彰活动。', 'admin6', '2024-08-06 15:00:00'),
('社团交流会通知。', 'admin7', '2024-08-07 16:00:00'),
('社团成员培训通知。', 'admin8', '2024-08-08 17:00:00'),
('社团活动报名开始。', 'admin9', '2024-08-09 18:00:00'),
('本学期社团活动总结。', 'admin10', '2024-08-10 19:00:00');

-- 插入数据到 team 表
INSERT INTO team (name, create_by, type, user_id, create_time, status, images) VALUES
('技术社', '张三', 1, 1, '2024-08-01 10:00:00', 1, 'http://example.com/tech.jpg'),
('文学社', '李四', 2, 2, '2024-08-02 11:00:00', 1, 'http://example.com/literature.jpg'),
('体育社', '王五', 3, 3, '2024-08-03 12:00:00', 1, 'http://example.com/sports.jpg'),
('音乐社', '赵六', 4, 4, '2024-08-04 13:00:00', 1, 'http://example.com/music.jpg'),
('志愿者协会', '孙七', 5, 5, '2024-08-05 14:00:00', 1, 'http://example.com/volunteer.jpg'),
('电影社', '周八', 6, 6, '2024-08-06 15:00:00', 1, 'http://example.com/movie.jpg'),
('舞蹈社', '吴九', 7, 7, '2024-08-07 16:00:00', 1, 'http://example.com/dance.jpg'),
('学术部', '郑十', 8, 8, '2024-08-08 17:00:00', 1, 'http://example.com/academic.jpg'),
('游戏社', '钱十一', 9, 9, '2024-08-09 18:00:00', 1, 'http://example.com/game.jpg'),
('摄影社', '刘十二', 10, 10, '2024-08-10 19:00:00', 1, 'http://example.com/photo.jpg');

-- 插入数据到 team_user 表
INSERT INTO team_user (username, realname, sex, tel, email, image, join_time, team_id, password) VALUES
('user1', '张伟', '男', '13800000001', 'zhangwei@example.com', 'http://example.com/avatar1.jpg', '2024-08-01 10:00:00', 1, 'password1'),
('user2', '李娜', '女', '13800000002', 'lina@example.com', 'http://example.com/avatar2.jpg', '2024-08-02 11:00:00', 1, 'password2'),
('user3', '王鹏', '男', '13800000003', 'wangpeng@example.com', 'http://example.com/avatar3.jpg', '2024-08-03 12:00:00', 2, 'password3'),
('user4', '赵敏', '女', '13800000004', 'zhaomin@example.com', 'http://example.com/avatar4.jpg', '2024-08-04 13:00:00', 2, 'password4'),
('user5', '孙洋', '男', '13800000005', 'sunyang@example.com', 'http://example.com/avatar5.jpg', '2024-08-05 14:00:00', 3, 'password5'),
('user6', '周婷', '女', '13800000006', 'zhouting@example.com', 'http://example.com/avatar6.jpg', '2024-08-06 15:00:00', 3, 'password6'),
('user7', '吴杰', '男', '13800000007', 'wujie@example.com', 'http://example.com/avatar7.jpg', '2024-08-07 16:00:00', 4, 'password7'),
('user8', '郑洁', '女', '13800000008', 'zhengjie@example.com', 'http://example.com/avatar8.jpg', '2024-08-08 17:00:00', 4, 'password8'),
('user9', '钱雷', '男', '13800000009', 'qianlei@example.com', 'http://example.com/avatar9.jpg', '2024-08-09 18:00:00', 5, 'password9'),
('user10', '刘静', '女', '13800000010', 'liujing@example.com', 'http://example.com/avatar10.jpg', '2024-08-10 19:00:00', 5, 'password10');

-- 插入数据到 type_info 表
INSERT INTO type_info (name, remarks) VALUES
('技术', '与技术相关的社团'),
('文学', '与文学相关的社团'),
('体育', '与体育相关的社团'),
('音乐', '与音乐相关的社团'),
('志愿者', '从事志愿服务的社团'),
('电影', '与电影相关的社团'),
('舞蹈', '与舞蹈相关的社团'),
('学术', '与学术研究相关的社团'),
('游戏', '与游戏相关的社团'),
('摄影', '与摄影相关的社团');

-- 插入数据到 userinfo 表
INSERT INTO userinfo (username, password, realname, sex, tel, email, status, type) VALUES
('admin1', 'adminpass1', '王管理员', '男', '13900000001', 'admin1@example.com', 1, 1),
('admin2', 'adminpass2', '李管理员', '女', '13900000002', 'admin2@example.com', 1, 1),
('admin3', 'adminpass3', '张管理员', '男', '13900000003', 'admin3@example.com', 1, 1),
('admin4', 'adminpass4', '刘管理员', '女', '13900000004', 'admin4@example.com', 1, 1),
('admin5', 'adminpass5', '陈管理员', '男', '13900000005', 'admin5@example.com', 1, 0),
('admin6', 'adminpass6', '杨管理员', '女', '13900000006', 'admin6@example.com', 1, 0),
('admin7', 'adminpass7', '赵管理员', '男', '13900000007', 'admin7@example.com', 1, 0),
('admin8', 'adminpass8', '孙管理员', '女', '13900000008', 'admin8@example.com', 1, 0),
('admin9', 'adminpass9', '周管理员', '男', '13900000009', 'admin9@example.com', 1, 0),
('admin10', 'adminpass10', '吴管理员', '女', '13900000010', 'admin10@example.com', 1, 0');