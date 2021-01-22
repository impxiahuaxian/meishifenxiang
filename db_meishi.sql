/*
MySQL Data Transfer
Source Host: localhost
Source Database: db_meishi
Target Host: localhost
Target Database: db_meishi
Date: 2017/9/23 22:18:44
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) default NULL,
  `userPw` varchar(50) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_canguan
-- ----------------------------
CREATE TABLE `t_canguan` (
  `canguan_id` int(11) NOT NULL,
  `canguan_name` varchar(50) default NULL,
  `canguan_add` varchar(50) default NULL,
  `canguan_tel` varchar(50) default NULL,
  `canguan_beizhu` varchar(4000) default NULL,
  `canguan_del` varchar(50) default NULL,
  PRIMARY KEY  (`canguan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_catelog
-- ----------------------------
CREATE TABLE `t_catelog` (
  `catelog_id` int(11) NOT NULL,
  `catelog_name` varchar(50) default NULL,
  `catelog_del` varchar(50) default NULL,
  PRIMARY KEY  (`catelog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_doc
-- ----------------------------
CREATE TABLE `t_doc` (
  `id` int(11) NOT NULL,
  `mingcheng` varchar(50) default NULL,
  `fujian` varchar(50) default NULL,
  `fujianYuanshiming` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_gonggao
-- ----------------------------
CREATE TABLE `t_gonggao` (
  `gonggao_id` int(11) NOT NULL,
  `gonggao_title` varchar(50) default NULL,
  `gonggao_content` varchar(2555) default NULL,
  `gonggao_data` varchar(50) default NULL,
  PRIMARY KEY  (`gonggao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
CREATE TABLE `t_goods` (
  `goods_id` int(11) NOT NULL,
  `goods_name` varchar(50) default NULL,
  `goods_miaoshu` varchar(4000) default NULL,
  `goods_pic` varchar(50) default NULL,
  `goods_jiage` int(11) default NULL,
  `goods_catelog_id` int(11) default NULL,
  `goods_canguan_id` int(11) default NULL,
  `goods_del` varchar(50) default NULL,
  PRIMARY KEY  (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_liuyan
-- ----------------------------
CREATE TABLE `t_liuyan` (
  `liuyan_id` int(11) NOT NULL,
  `liuyan_title` varchar(50) default NULL,
  `liuyan_content` varchar(255) default NULL,
  `liuyan_date` varchar(50) default NULL,
  `liuyan_user` varchar(50) default NULL,
  PRIMARY KEY  (`liuyan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_mingdian
-- ----------------------------
CREATE TABLE `t_mingdian` (
  `id` int(11) NOT NULL,
  `name` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `tel` varchar(50) default NULL,
  `beizhu` varchar(4000) default NULL,
  `zhuantai` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_shipin
-- ----------------------------
CREATE TABLE `t_shipin` (
  `shipin_id` int(11) NOT NULL,
  `shipin_name` varchar(50) default NULL,
  `shipin_jianjie` varchar(500) default NULL,
  `fujian` varchar(500) default NULL,
  `fujianYuanshiming` varchar(500) default NULL,
  `shijian` varchar(50) default NULL,
  PRIMARY KEY  (`shipin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) default NULL,
  `user_pw` varchar(55) default NULL,
  `user_realname` varchar(50) default NULL,
  `user_sex` varchar(50) default NULL,
  `user_address` varchar(50) default NULL,
  `user_tel` varchar(50) default NULL,
  `user_del` varchar(50) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'a', 'a');
INSERT INTO `t_canguan` VALUES ('3', '比利时烧烤', '上清路22号', '0512-4578411', '比利时烧烤', 'no');
INSERT INTO `t_canguan` VALUES ('4', '小李小吃店', '华阳路22号', '1452-4512528', '小李小吃店', 'no');
INSERT INTO `t_canguan` VALUES ('5', '胖子快餐店', '正后路335#', '1245-4587411', '胖子快餐店', 'no');
INSERT INTO `t_canguan` VALUES ('6', '老马家拉面', '乡大夫路33#', '4512-4512222', '老马家拉面', 'no');
INSERT INTO `t_canguan` VALUES ('7', '喜得水饺', '花园路12号', '13390018911', '<p>好吃不贵，大家都爱</p>', 'no');
INSERT INTO `t_catelog` VALUES ('1', '川菜', 'no');
INSERT INTO `t_catelog` VALUES ('2', '鲁菜', 'no');
INSERT INTO `t_catelog` VALUES ('3', '粤菜', 'no');
INSERT INTO `t_catelog` VALUES ('4', '东北菜系', 'no');
INSERT INTO `t_doc` VALUES ('3', '川菜大全', '/upload/1300192624906.doc', '菜谱.rtf', 'yes');
INSERT INTO `t_doc` VALUES ('4', '精通鲁菜', '/upload/1300192624906.doc', '菜谱.rtf', 'no');
INSERT INTO `t_doc` VALUES ('5', '家常版辣子鸡教材', '/upload/1506163703740.txt', '111.txt', 'yes');
INSERT INTO `t_doc` VALUES ('6', '东北菜大全', '/upload/1506163731328.txt', '2222.txt', 'yes');
INSERT INTO `t_doc` VALUES ('7', '东北菜大全 ', '/upload/1506164370301.txt', '111.txt', 'no');
INSERT INTO `t_doc` VALUES ('8', '家常版辣子鸡教材', '/upload/1506164382001.txt', '2222.txt', 'no');
INSERT INTO `t_doc` VALUES ('9', '11', '/upload/1506168832672.txt', 'miaozhao.txt', 'yes');
INSERT INTO `t_gonggao` VALUES ('1', '测试公告测试公告测试公告测试公告', '测试公告测试公告测试公告测试公告', '2017-9-23 10:10:14');
INSERT INTO `t_gonggao` VALUES ('2', '网站公告', '网站公告网站公告网站公告网站公告网站公告网站公告', '2017-9-23 18:35:00');
INSERT INTO `t_goods` VALUES ('6', '酸辣土豆丝', '酸辣土豆丝', '/upload/1298929303703.jpg', '55', '1', '4', 'no');
INSERT INTO `t_goods` VALUES ('7', '极品佛跳墙 ', '极品佛跳墙 ', '/upload/1298929323453.jpg', '44', '2', '4', 'no');
INSERT INTO `t_goods` VALUES ('8', '宫保鸡丁', '宫保鸡丁宫保鸡丁宫保鸡丁宫保鸡丁', '/upload/1506163049453.jpg', '23', '4', '4', 'no');
INSERT INTO `t_goods` VALUES ('9', '口水鸡', '口水鸡口水鸡', '/upload/1506163090503.jpg', '25', '1', '5', 'no');
INSERT INTO `t_goods` VALUES ('10', '水饺', '水饺水饺水饺水饺', '/upload/1506163220408.jpg', '28', '4', '7', 'no');
INSERT INTO `t_goods` VALUES ('11', '海鲜', '<p>正宗粤菜</p>', '/upload/1506163357822.jpg', '35', '3', '6', 'no');
INSERT INTO `t_goods` VALUES ('12', '正宗烤虾', '正宗烤虾正宗烤虾', '/upload/1506163586701.jpg', '22', '4', '3', 'no');
INSERT INTO `t_goods` VALUES ('13', '家常菜茄子', '家常菜茄子家常菜茄子', '/upload/1506163624979.jpg', '21', '4', '4', 'no');
INSERT INTO `t_liuyan` VALUES ('4', '挺好的', '<p>哈哈哈</p>', '2017-9-23 18:32:16', 'zhangsan');
INSERT INTO `t_liuyan` VALUES ('5', '网站还行', '<p>不错哦</p>\r\n<p>不错哦</p>\r\n<p>不错哦</p>\r\n<p>不错哦</p>', '2017-9-23 22:18:28', 'wangwu');
INSERT INTO `t_mingdian` VALUES ('1', '小肥羊火锅城', '清江路22#', '0532-13456455', '小肥羊火锅城', 'yishenhe', 'yes');
INSERT INTO `t_mingdian` VALUES ('2', '王府井大酒店', '王府井路', '0534-45789521', '王府井大酒店', 'yishenhe', 'no');
INSERT INTO `t_mingdian` VALUES ('3', '小肥羊火锅城', '汽车站对过50米处', '18900001111', '正宗小肥羊，好吃不贵<br  />', 'yishenhe', 'no');
INSERT INTO `t_mingdian` VALUES ('4', '海悦海鲜城', '长治大街12号', '13889902443', '海悦海鲜城海悦海鲜城海悦海鲜城<br  />', 'noshenhe', 'no');
INSERT INTO `t_shipin` VALUES ('1', '鲶鱼炖茄子', '鲶鱼炖茄子', '/upload/1354336492754.avi', '视频.avi', '2017-9-23 12:34');
INSERT INTO `t_shipin` VALUES ('2', '啤酒酱猪蹄', '啤酒酱猪蹄', '/upload/1354336492754.avi', '视频.avi', '2017-9-23 12:36');
INSERT INTO `t_user` VALUES ('1', 'liusan', '000000', '刘三', '男', '北京路1', '13888888888', 'no');
INSERT INTO `t_user` VALUES ('2', 'zhangsan', 'zhangsan', '张三', '男', '长江路10号', '13356665789', 'no');
INSERT INTO `t_user` VALUES ('3', 'wangwu', 'wangwu', '王武', '女', '丽江小区', '15689901113', 'no');
