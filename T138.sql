/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t138`;
CREATE DATABASE IF NOT EXISTS `t138` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t138`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='在线客服';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `addtime`, `userid`, `adminid`, `ask`, `reply`, `isreply`) VALUES
	(61, '2021-05-26 05:15:18', 1, 1, '提问1', '回复1', 1),
	(62, '2021-05-26 05:15:18', 2, 2, '提问2', '回复2', 2),
	(63, '2021-05-26 05:15:18', 3, 3, '提问3', '回复3', 3),
	(64, '2021-05-26 05:15:18', 4, 4, '提问4', '回复4', 4),
	(65, '2021-05-26 05:15:18', 5, 5, '提问5', '回复5', 5),
	(66, '2021-05-26 05:15:18', 6, 6, '提问6', '回复6', 6);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootk3yl6/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootk3yl6/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootk3yl6/upload/picture3.jpg');

DROP TABLE IF EXISTS `discussxuexijiqiao`;
CREATE TABLE IF NOT EXISTS `discussxuexijiqiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3 COMMENT='学习技巧评论表';

DELETE FROM `discussxuexijiqiao`;
INSERT INTO `discussxuexijiqiao` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(131, '2021-05-26 05:15:18', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(132, '2021-05-26 05:15:18', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(133, '2021-05-26 05:15:18', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(134, '2021-05-26 05:15:18', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(135, '2021-05-26 05:15:18', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(136, '2021-05-26 05:15:18', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discusszaixianxuexi`;
CREATE TABLE IF NOT EXISTS `discusszaixianxuexi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='在线学习评论表';

DELETE FROM `discusszaixianxuexi`;
INSERT INTO `discusszaixianxuexi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(121, '2021-05-26 05:15:18', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(122, '2021-05-26 05:15:18', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(123, '2021-05-26 05:15:18', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(124, '2021-05-26 05:15:18', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(125, '2021-05-26 05:15:18', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(126, '2021-05-26 05:15:18', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `exampaper`;
CREATE TABLE IF NOT EXISTS `exampaper` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int NOT NULL COMMENT '考试时长(分钟)',
  `status` int NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='试卷表';

DELETE FROM `exampaper`;

DROP TABLE IF EXISTS `examquestion`;
CREATE TABLE IF NOT EXISTS `examquestion` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='试题表';

DELETE FROM `examquestion`;

DROP TABLE IF EXISTS `examrecord`;
CREATE TABLE IF NOT EXISTS `examrecord` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='考试记录表';

DELETE FROM `examrecord`;

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='英语角';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `addtime`, `title`, `content`, `parentid`, `userid`, `username`, `isdone`) VALUES
	(71, '2021-05-26 05:15:18', '帖子标题1', '帖子内容1', 1, 1, '用户名1', '开放'),
	(72, '2021-05-26 05:15:18', '帖子标题2', '帖子内容2', 2, 2, '用户名2', '开放'),
	(73, '2021-05-26 05:15:18', '帖子标题3', '帖子内容3', 3, 3, '用户名3', '开放'),
	(74, '2021-05-26 05:15:18', '帖子标题4', '帖子内容4', 4, 4, '用户名4', '开放'),
	(75, '2021-05-26 05:15:18', '帖子标题5', '帖子内容5', 5, 5, '用户名5', '开放'),
	(76, '2021-05-26 05:15:18', '帖子标题6', '帖子内容6', 6, 6, '用户名6', '开放');

DROP TABLE IF EXISTS `peixunbaoming`;
CREATE TABLE IF NOT EXISTS `peixunbaoming` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peixunmingcheng` varchar(200) NOT NULL COMMENT '培训名称',
  `kecheng` varchar(200) NOT NULL COMMENT '课程',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `peixunzhouqi` varchar(200) DEFAULT NULL COMMENT '培训周期',
  `peixundidian` varchar(200) DEFAULT NULL COMMENT '培训地点',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `peixunfeiyong` int DEFAULT NULL COMMENT '培训费用',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1622006244210 DEFAULT CHARSET=utf8mb3 COMMENT='培训报名';

DELETE FROM `peixunbaoming`;
INSERT INTO `peixunbaoming` (`id`, `addtime`, `peixunmingcheng`, `kecheng`, `tupian`, `peixunzhouqi`, `peixundidian`, `zhanghao`, `xingming`, `peixunfeiyong`, `baomingshijian`, `sfsh`, `shhf`, `ispay`) VALUES
	(51, '2021-05-26 05:15:18', '培训名称1', '课程1', 'http://localhost:8080/springbootk3yl6/upload/peixunbaoming_tupian1.jpg', '培训周期1', '培训地点1', '账号1', '姓名1', 1, '2021-05-26 13:15:18', '是', '', '未支付'),
	(52, '2021-05-26 05:15:18', '培训名称2', '课程2', 'http://localhost:8080/springbootk3yl6/upload/peixunbaoming_tupian2.jpg', '培训周期2', '培训地点2', '账号2', '姓名2', 2, '2021-05-26 13:15:18', '是', '', '未支付'),
	(53, '2021-05-26 05:15:18', '培训名称3', '课程3', 'http://localhost:8080/springbootk3yl6/upload/peixunbaoming_tupian3.jpg', '培训周期3', '培训地点3', '账号3', '姓名3', 3, '2021-05-26 13:15:18', '是', '', '未支付'),
	(54, '2021-05-26 05:15:18', '培训名称4', '课程4', 'http://localhost:8080/springbootk3yl6/upload/peixunbaoming_tupian4.jpg', '培训周期4', '培训地点4', '账号4', '姓名4', 4, '2021-05-26 13:15:18', '是', '', '未支付'),
	(55, '2021-05-26 05:15:18', '培训名称5', '课程5', 'http://localhost:8080/springbootk3yl6/upload/peixunbaoming_tupian5.jpg', '培训周期5', '培训地点5', '账号5', '姓名5', 5, '2021-05-26 13:15:18', '是', '', '未支付'),
	(56, '2021-05-26 05:15:18', '培训名称6', '课程6', 'http://localhost:8080/springbootk3yl6/upload/peixunbaoming_tupian6.jpg', '培训周期6', '培训地点6', '账号6', '姓名6', 6, '2021-05-26 13:15:18', '是', '', '未支付'),
	(1622006244209, '2021-05-26 05:17:23', '培训名称6', '课程6', 'http://localhost:8080/springbootk3yl6/upload/peixunxinxi_tupian6.jpg', '培训周期6', '培训地点6', '1', NULL, 6, '2021-05-26 13:17:16', '否', NULL, '已支付');

DROP TABLE IF EXISTS `peixunxinxi`;
CREATE TABLE IF NOT EXISTS `peixunxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peixunmingcheng` varchar(200) NOT NULL COMMENT '培训名称',
  `kecheng` varchar(200) NOT NULL COMMENT '课程',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `peixunzhouqi` varchar(200) DEFAULT NULL COMMENT '培训周期',
  `peixunfeiyong` int DEFAULT NULL COMMENT '培训费用',
  `peixundidian` varchar(200) DEFAULT NULL COMMENT '培训地点',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='培训信息';

DELETE FROM `peixunxinxi`;
INSERT INTO `peixunxinxi` (`id`, `addtime`, `peixunmingcheng`, `kecheng`, `tupian`, `peixunzhouqi`, `peixunfeiyong`, `peixundidian`, `beizhu`) VALUES
	(41, '2021-05-26 05:15:18', '培训名称1', '课程1', 'http://localhost:8080/springbootk3yl6/upload/peixunxinxi_tupian1.jpg', '培训周期1', 1, '培训地点1', '备注1'),
	(42, '2021-05-26 05:15:18', '培训名称2', '课程2', 'http://localhost:8080/springbootk3yl6/upload/peixunxinxi_tupian2.jpg', '培训周期2', 2, '培训地点2', '备注2'),
	(43, '2021-05-26 05:15:18', '培训名称3', '课程3', 'http://localhost:8080/springbootk3yl6/upload/peixunxinxi_tupian3.jpg', '培训周期3', 3, '培训地点3', '备注3'),
	(44, '2021-05-26 05:15:18', '培训名称4', '课程4', 'http://localhost:8080/springbootk3yl6/upload/peixunxinxi_tupian4.jpg', '培训周期4', 4, '培训地点4', '备注4'),
	(45, '2021-05-26 05:15:18', '培训名称5', '课程5', 'http://localhost:8080/springbootk3yl6/upload/peixunxinxi_tupian5.jpg', '培训周期5', 5, '培训地点5', '备注5'),
	(46, '2021-05-26 05:15:18', '培训名称6', '课程6', 'http://localhost:8080/springbootk3yl6/upload/peixunxinxi_tupian6.jpg', '培训周期6', 6, '培训地点6', '备注6');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1713446884267 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1713446879652, '2024-04-18 13:27:59', 11, 22, 'zaixianxuexi', '标题2', 'http://localhost:8080/springbootk3yl6/upload/zaixianxuexi_tupian2.jpg'),
	(1713446884266, '2024-04-18 13:28:04', 11, 31, 'xuexijiqiao', '标题1', 'http://localhost:8080/springbootk3yl6/upload/xuexijiqiao_fengmian1.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1622006216588, '1', 'yonghu', '用户', '8j26ufcv8np1k15d9zzk71hdy5vit8u0', '2021-05-26 05:17:02', '2021-05-26 06:17:03'),
	(2, 1, 'admin', 'users', '管理员', 'pruvb7b9b5xzmy8xbjlcjjrnpvhloktu', '2024-04-18 13:26:09', '2024-04-18 14:26:41'),
	(3, 11, '用户1', 'yonghu', '用户', 'o17b8e1s4otszv9yfv0g1nlb7ja0dfz5', '2024-04-18 13:27:49', '2024-04-18 14:27:49');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-26 05:15:19');

DROP TABLE IF EXISTS `xuexijiqiao`;
CREATE TABLE IF NOT EXISTS `xuexijiqiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `xuexiwenjian` varchar(200) DEFAULT NULL COMMENT '学习文件',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='学习技巧';

DELETE FROM `xuexijiqiao`;
INSERT INTO `xuexijiqiao` (`id`, `addtime`, `biaoti`, `neirong`, `xuexiwenjian`, `fabushijian`, `fengmian`, `clicktime`, `clicknum`) VALUES
	(31, '2021-05-26 05:15:18', '标题1', '内容1', '', '2021-05-26 13:15:18', 'http://localhost:8080/springbootk3yl6/upload/xuexijiqiao_fengmian1.jpg', '2024-04-18 21:28:06', 3),
	(32, '2021-05-26 05:15:18', '标题2', '内容2', '', '2021-05-26 13:15:18', 'http://localhost:8080/springbootk3yl6/upload/xuexijiqiao_fengmian2.jpg', '2021-05-26 13:15:18', 2),
	(33, '2021-05-26 05:15:18', '标题3', '内容3', '', '2021-05-26 13:15:18', 'http://localhost:8080/springbootk3yl6/upload/xuexijiqiao_fengmian3.jpg', '2021-05-26 13:15:18', 3),
	(34, '2021-05-26 05:15:18', '标题4', '内容4', '', '2021-05-26 13:15:18', 'http://localhost:8080/springbootk3yl6/upload/xuexijiqiao_fengmian4.jpg', '2024-04-18 21:26:59', 6),
	(35, '2021-05-26 05:15:18', '标题5', '内容5', '', '2021-05-26 13:15:18', 'http://localhost:8080/springbootk3yl6/upload/xuexijiqiao_fengmian5.jpg', '2021-05-26 13:15:18', 5),
	(36, '2021-05-26 05:15:18', '标题6', '内容6', '', '2021-05-26 13:15:18', 'http://localhost:8080/springbootk3yl6/upload/xuexijiqiao_fengmian6.jpg', '2021-05-26 13:15:18', 6);

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1622006216589 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `shenfenzheng`, `youxiang`, `zhaopian`) VALUES
	(11, '2021-05-26 05:15:18', '用户1', '123456', '姓名1', '男', '13823888881', '440300199101010001', '773890001@qq.com', 'http://localhost:8080/springbootk3yl6/upload/yonghu_zhaopian1.jpg'),
	(12, '2021-05-26 05:15:18', '用户2', '123456', '姓名2', '男', '13823888882', '440300199202020002', '773890002@qq.com', 'http://localhost:8080/springbootk3yl6/upload/yonghu_zhaopian2.jpg'),
	(13, '2021-05-26 05:15:18', '用户3', '123456', '姓名3', '男', '13823888883', '440300199303030003', '773890003@qq.com', 'http://localhost:8080/springbootk3yl6/upload/yonghu_zhaopian3.jpg'),
	(14, '2021-05-26 05:15:18', '用户4', '123456', '姓名4', '男', '13823888884', '440300199404040004', '773890004@qq.com', 'http://localhost:8080/springbootk3yl6/upload/yonghu_zhaopian4.jpg'),
	(15, '2021-05-26 05:15:18', '用户5', '123456', '姓名5', '男', '13823888885', '440300199505050005', '773890005@qq.com', 'http://localhost:8080/springbootk3yl6/upload/yonghu_zhaopian5.jpg'),
	(16, '2021-05-26 05:15:18', '用户6', '123456', '姓名6', '男', '13823888886', '440300199606060006', '773890006@qq.com', 'http://localhost:8080/springbootk3yl6/upload/yonghu_zhaopian6.jpg'),
	(1622006216588, '2021-05-26 05:16:56', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL);

DROP TABLE IF EXISTS `zaixianxuexi`;
CREATE TABLE IF NOT EXISTS `zaixianxuexi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirongjianjie` longtext COMMENT '内容简介',
  `xuexishipin` varchar(200) DEFAULT NULL COMMENT '学习视频',
  `faburiqi` datetime DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='在线学习';

DELETE FROM `zaixianxuexi`;
INSERT INTO `zaixianxuexi` (`id`, `addtime`, `biaoti`, `tupian`, `neirongjianjie`, `xuexishipin`, `faburiqi`, `clicktime`, `clicknum`) VALUES
	(21, '2021-05-26 05:15:18', '标题1', 'http://localhost:8080/springbootk3yl6/upload/zaixianxuexi_tupian1.jpg', '内容简介1', '', '2021-05-26 13:15:18', '2021-05-26 13:15:18', 1),
	(22, '2021-05-26 05:15:18', '标题2', 'http://localhost:8080/springbootk3yl6/upload/zaixianxuexi_tupian2.jpg', '内容简介2', '', '2021-05-26 13:15:18', '2024-04-18 21:28:01', 5),
	(23, '2021-05-26 05:15:18', '标题3', 'http://localhost:8080/springbootk3yl6/upload/zaixianxuexi_tupian3.jpg', '内容简介3', '', '2021-05-26 13:15:18', '2021-05-26 13:15:18', 3),
	(24, '2021-05-26 05:15:18', '标题4', 'http://localhost:8080/springbootk3yl6/upload/zaixianxuexi_tupian4.jpg', '内容简介4', '', '2021-05-26 13:15:18', '2021-05-26 13:15:18', 4),
	(25, '2021-05-26 05:15:18', '标题5', 'http://localhost:8080/springbootk3yl6/upload/zaixianxuexi_tupian5.jpg', '内容简介5', '', '2021-05-26 13:15:18', '2021-05-26 13:15:18', 5),
	(26, '2021-05-26 05:15:18', '标题6', 'http://localhost:8080/springbootk3yl6/upload/zaixianxuexi_tupian6.jpg', '内容简介6', '', '2021-05-26 13:15:18', '2021-05-26 13:15:18', 6);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
