DROP TABLE IF EXISTS `commodity`;

DROP TABLE IF EXISTS `art_comment`;
DROP TABLE IF EXISTS `pho_comment`;
DROP TABLE IF EXISTS `article_pic`;
DROP TABLE IF EXISTS `article`;
DROP TABLE IF EXISTS `phone`;
DROP TABLE IF EXISTS `user`;

CREATE TABLE `user`(
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255),
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

INSERT INTO `user`(id, userName, password) VALUES ('1', 'admin', '123123');

-- ==========================================================================;

CREATE TABLE `phone`(
    `id` INT(11) NOT NULL AUTO_INCREMENT,

    `head_pic` LONGBLOB,

    `name` VARCHAR(32) DEFAULT '锤子',
    `cpu` VARCHAR(32) DEFAULT '暂无信息',
    `ram` VARCHAR(32) DEFAULT '暂无信息',
    `memory` VARCHAR(32) DEFAULT '暂无信息' COMMENT '存储空间',
    `camera` VARCHAR(32) DEFAULT '暂无信息',
    `battery` VARCHAR(32) DEFAULT '暂无信息' COMMENT '电池容量',
    `screen_size` VARCHAR(32) DEFAULT '暂无信息',
    `resolution` VARCHAR(32) DEFAULT '暂无信息' COMMENT '分辨率',
    `prices` VARCHAR(32) DEFAULT '暂无信息',

    `listing_date` VARCHAR(32) DEFAULT '暂无信息' COMMENT '上市日期',

    `screen_type` VARCHAR(32) DEFAULT '暂无信息',
    `os` VARCHAR(32) DEFAULT '暂无信息',
    `color` VARCHAR(32) DEFAULT '暂无信息',
    `screen_pixel` VARCHAR(32) DEFAULT '暂无信息' COMMENT '像素密度',
    `cpu_fre` VARCHAR(32) DEFAULT '暂无信息' COMMENT 'CPU频率',
    `core_num` VARCHAR(32) DEFAULT '暂无信息' COMMENT '核心数',
    `gpu` VARCHAR(32) DEFAULT '暂无信息',
    `ram_size` VARCHAR(32) DEFAULT '暂无信息',
    `rom_size` VARCHAR(32) DEFAULT '暂无信息',
    `charging` VARCHAR(32) DEFAULT '暂无信息' COMMENT '充电功率',
    `four_g` VARCHAR(32) DEFAULT '暂无信息',
    `three_g` VARCHAR(32) DEFAULT '暂无信息',
    `fre_band` VARCHAR(32) DEFAULT '暂无信息' COMMENT '支持频段',
    `bluetooth` VARCHAR(32) DEFAULT '暂无信息',
    `port` VARCHAR(32) DEFAULT '暂无信息' COMMENT '机身接口',
    `post_camera` VARCHAR(32) DEFAULT '暂无信息',
    `front_camera` VARCHAR(32) DEFAULT '暂无信息',
    `sensor_type` VARCHAR(32) DEFAULT '暂无信息' COMMENT '传感器类型',
    `sensor_model` VARCHAR(32) DEFAULT '暂无信息' COMMENT '传感器型号',
    `size` VARCHAR(32) DEFAULT '暂无信息',
    `weight` VARCHAR(32) DEFAULT '暂无信息',
    `texture` VARCHAR(32) DEFAULT '暂无信息' COMMENT '机身材质',

    PRIMARY KEY (`id`) USING BTREE
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ==========================================================================;

CREATE TABLE `article`(
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `user_id` INT(11) NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `time` DATE,
    `text` LONGTEXT,
    `like_count` INT(11) DEFAULT 0,
    `dislike` INT(11) DEFAULT 0,
    `read_counts` INT(11) DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

INSERT INTO `article`(id, user_id, title, time, text) VALUES ('1', '1', 'vivo X30系列视频曝光，挖孔屏+潜望式超远摄', '2019-10-02', 'read committed：事务A未提交的数据，事务B读取不到，事务A提交后的数据事务B才能读取到。这个事务级别不会导致"dirty read"，但会导致"不可重复读"。假设事务A需要半天，在这期间有很多的其它事务都在修改数据，那么就导致了一个问题，事务A在开启时读到的数据与半天后读到的数据差别很大，那么事务A需要在这半天内读到的数据都是一样的该怎么办，比如每个月底网络运营商系统出账的时候，那肯定得在出账期间读到的数据都必须一样才行。');
INSERT INTO `article`(id, user_id, title, time, text) VALUES ('2', '1', '金色一加7T曝光，这是你买不到的手机', '2019-10-03', '你可能会认为电话号码和邮政编码应该存储在数值字段中（数值字段只存储数值数据），但是，这样做却是不可取的。如果在数值字段中存储邮政编码01234，则保存的将是数值1234，实际上丢失了一位数字。需要遵守的基本规则是：如果数值是计算（求和、平均等）中使用的数值，则应该存储在数值数据类型列中。如果作为字符串（可能只包含数字）使用，则应该保存在串数据类型列中。');
INSERT INTO `article`(id, user_id, title, time, text) VALUES ('3', '2', '三星Galaxy S11+渲染图曝光，摄像头逼疯强迫症？', '2019-10-13', '下面是关于事务处理需要知道的几个术语：事务（transaction）指一组SQL语句；回退（rollback）指撤销指定SQL语句的过程，即恢复到开启事务管理之前；提交（commit）指将未存储的SQL语句结果写入数据库表；保留点（savepoint）指事务处理中设置的临时占位符（place-holder），你可以对它发布回退（与回退整个事务处理不同）。
事务处理用来管理INSERT、UPDATE和DELETE语句。你不能回退SELECT语句。（这样做也没有什么意义。）你不能回退CREATE或DROP操作。事务处理块中可以使用这两条语句，但如果你执行回退，它们不会被撤销。');
INSERT INTO `article`(id, user_id, title, time, text) VALUES ('4', '3', '荣耀 V30 系列正式发布：3299元起，买不买', '2019-10-13', '这个例子把一个名为custnew的表中的数据导入customers表中。为了试验这个例子，应该首先创建和填充custnew表。custnew表的结构与附录B中描述的customers表的相同。在填充custnew时，不应该使用已经在customers中使用过的cust_id值（如果主键值重复，后续的INSERT操作将会失败）或仅省略这列值让MySQL在导入数据的过程中产生新值。');
INSERT INTO `article`(id, user_id, title, time, text) VALUES ('5', '3', '三星 Galaxy S11+ 相机以及价格曝光', '2019-10-13', '你可能会认为电话号码和邮政编码应该存储在数值字段中（数值字段只存储数值数据），但是，这样做却是不可取的。如果在数值字段中存储邮政编码01234，则保存的将是数值1234，实际上丢失了一位数字。需要遵守的基本规则是：如果数值是计算（求和、平均等）中使用的数值，则应该存储在数值数据类型列中。如果作为字符串（可能只包含数字）使用，则应该保存在串数据类型列中。');
INSERT INTO `article`(id, user_id, title, time, text) VALUES ('6', '4', 'vivo X30 系列来了：潜望式超远摄+5G 双模', '2019-10-14', '你可能会认为电话号码和邮政编码应该存储在数值字段中（数值字段只存储数值数据），但是，这样做却是不可取的。如果在数值字段中存储邮政编码01234，则保存的将是数值1234，实际上丢失了一位数字。需要遵守的基本规则是：如果数值是计算（求和、平均等）中使用的数值，则应该存储在数值数据类型列中。如果作为字符串（可能只包含数字）使用，则应该保存在串数据类型列中。');
INSERT INTO `article`(id, user_id, title, time, text) VALUES ('7', '5', '小米Redmi Note 8 Pro海洋蓝', '2019-10-16', '你可能会认为电话号码和邮政编码应该存储在数值字段中（数值字段只存储数值数据），但是，这样做却是不可取的。如果在数值字段中存储邮政编码01234，则保存的将是数值1234，实际上丢失了一位数字。需要遵守的基本规则是：如果数值是计算（求和、平均等）中使用的数值，则应该存储在数值数据类型列中。如果作为字符串（可能只包含数字）使用，则应该保存在串数据类型列中。');
INSERT INTO `article`(id, user_id, title, time, text) VALUES ('8', '5', '表现强劲，AirPods 出货量暴增！', '2019-10-17', '你可能会认为电话号码和邮政编码应该存储在数值字段中（数值字段只存储数值数据），但是，这样做却是不可取的。如果在数值字段中存储邮政编码01234，则保存的将是数值1234，实际上丢失了一位数字。需要遵守的基本规则是：如果数值是计算（求和、平均等）中使用的数值，则应该存储在数值数据类型列中。如果作为字符串（可能只包含数字）使用，则应该保存在串数据类型列中。');

-- =========================================================================;

CREATE TABLE `art_comment`(
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `article_id` INT(11) NOT NULL,
    `group_id` int(11) NOT NULL,
    `author` VARCHAR(255) NOT NULL,
    `responder` VARCHAR(255) DEFAULT NULL,
    `time` DATE,
    `text` TEXT,
    `like_count` INT(11) DEFAULT 0,
    `dislike` INT(11) DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

INSERT INTO `art_comment`(id, article_id, group_id, author, responder, time, text)
VALUES ('1', '1', '1', 'testUser3', NULL, '2019-10-03', '666');
INSERT INTO `art_comment`(id, article_id, group_id, author, responder, time, text)
VALUES ('2', '1', '1', 'testUser1', 'testUser3', '2019-10-03', 'thanks');
INSERT INTO `art_comment`(id, article_id, group_id, author, responder, time, text)
VALUES ('3', '1', '1', 'testUser3', 'testUser1', '2019-10-03', 'no thanks');
INSERT INTO `art_comment`(id, article_id, group_id, author, responder, time, text)
VALUES ('4', '1', '1', 'testUser2', 'testUser1', '2019-10-03', 'ke qi');
INSERT INTO `art_comment`(id, article_id, group_id, author, responder, time, text)
VALUES ('5', '1', '5', 'testUser1', NULL, '2019-10-03', 'you jump');
INSERT INTO `art_comment`(id, article_id, group_id, author, responder, time, text)
VALUES ('6', '1', '6', 'testUser1', NULL, '2019-10-03', 'i jump');

-- ====================================================================;
DROP TABLE IF EXISTS `pho_comment`;

CREATE TABLE `pho_comment`(
    `id` INT(11) AUTO_INCREMENT,
    `phone_id` INT(11) NOT NULL,
    `author` VARCHAR(255) NOT NULL,
    `responder` VARCHAR(255) DEFAULT NULL,
    `time` DATE,
    `text` TEXT,
    `like_count` INT(11) DEFAULT 0,
    `dislike` INT(11) DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
VALUES ('1', 'testUser3', NULL, '2019-10-03', '666');
INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
VALUES ('1', 'testUser1', 'testUser3', '2019-10-05', '真香');
INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
VALUES ('1', 'testUser3', 'testUser1', '2019-10-07', '不懂就问');
INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
VALUES ('1', 'testUser2', 'testUser1', '2019-10-13', 'ke qi');
INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
VALUES ('1', 'testUser1', NULL, '2019-10-15', 'you jump');
INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
VALUES ('1', 'testUser1', NULL, '2019-10-16', 'i jump');

-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('2', 'testUser3', NULL, '2019-10-03', '777');
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('2', 'testUser1', 'testUser3', '2019-10-05', '真香');
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('2', 'testUser3', 'testUser1', '2019-10-07', '不懂就问');
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('2', 'testUser2', 'testUser1', '2019-10-13', 'ke qi');
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('2', 'testUser1', NULL, '2019-10-15', 'you jump');
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('2', 'testUser1', NULL, '2019-10-16', 'i jump');
--
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('3', 'testUser3', NULL, '2019-10-03', '666');
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('3', 'testUser1', 'testUser3', '2019-10-05', '真香');
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('3', 'testUser3', 'testUser1', '2019-10-07', '不懂就问');
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('3', 'testUser2', 'testUser1', '2019-10-13', 'ke qi');
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('3', 'testUser1', NULL, '2019-10-15', 'you jump');
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('3', 'testUser1', NULL, '2019-10-16', 'i jump');
--
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('4', 'testUser3', NULL, '2019-10-03', '666');
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('4', 'testUser1', 'testUser3', '2019-10-05', '真香');
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('4', 'testUser3', 'testUser1', '2019-10-07', '不懂就问');
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('4', 'testUser2', 'testUser1', '2019-10-13', 'ke qi');
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('4', 'testUser1', NULL, '2019-10-15', 'you jump');
-- INSERT INTO `pho_comment`(phone_id, author, responder, time, text)
-- VALUES ('4', 'testUser1', NULL, '2019-10-16', 'i jump');

-- =====================================================================;

CREATE TABLE `commodity`(
    `id` INT(11) AUTO_INCREMENT,
    `c_name` VARCHAR(255) NOT NULL,
    `c_price` VARCHAR(255) NOT NULL,
    `c_pic` LONGBLOB,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

INSERT INTO `commodity`(id, c_name, c_price) VALUES ('1', 'commodity1', '123');
INSERT INTO `commodity`(id, c_name, c_price) VALUES ('2', 'commodity2', '345');
INSERT INTO `commodity`(id, c_name, c_price) VALUES ('3', 'commodity3', '567');
INSERT INTO `commodity`(id, c_name, c_price) VALUES ('4', 'commodity4', '987');
INSERT INTO `commodity`(id, c_name, c_price) VALUES ('5', 'commodity5', '4123');
INSERT INTO `commodity`(id, c_name, c_price) VALUES ('6', 'commodity6', '6134');

-- =====================================================================;

CREATE TABLE `article_pic`(
    `pic_id` INT(11) NOT NULL AUTO_INCREMENT,
    `article_id` INT(11) NOT NULL ,
    `pic` LONGBLOB,
    PRIMARY KEY (`pic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci;
