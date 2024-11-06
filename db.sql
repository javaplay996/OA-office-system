/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm884v4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm884v4` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm884v4`;

/*Table structure for table `bumenxinxi` */

DROP TABLE IF EXISTS `bumenxinxi`;

CREATE TABLE `bumenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='部门信息';

/*Data for the table `bumenxinxi` */

insert  into `bumenxinxi`(`id`,`addtime`,`bumen`) values (21,'2021-04-16 19:04:14','部门1'),(22,'2021-04-16 19:04:14','部门2'),(23,'2021-04-16 19:04:14','部门3'),(24,'2021-04-16 19:04:14','部门4'),(25,'2021-04-16 19:04:14','部门5'),(26,'2021-04-16 19:04:14','部门6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm884v4/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm884v4/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm884v4/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `daibangongzuo` */

DROP TABLE IF EXISTS `daibangongzuo`;

CREATE TABLE `daibangongzuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `liuchengdaima` varchar(200) NOT NULL COMMENT '流程代码',
  `liuchengleixing` varchar(200) DEFAULT NULL COMMENT '流程类型',
  `tijiaobiaogefujian` varchar(200) DEFAULT NULL COMMENT '提交表格附件',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `shenpishijian` datetime DEFAULT NULL COMMENT '审批时间',
  `shenpihuifu` longtext COMMENT '审批回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `liuchengdaima` (`liuchengdaima`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='待办工作';

/*Data for the table `daibangongzuo` */

insert  into `daibangongzuo`(`id`,`addtime`,`liuchengdaima`,`liuchengleixing`,`tijiaobiaogefujian`,`yuangonggonghao`,`yuangongxingming`,`tijiaoshijian`,`shenpishijian`,`shenpihuifu`) values (121,'2021-04-16 19:04:14','流程代码1','流程类型1','','员工工号1','员工姓名1','2021-04-16 19:04:14','2021-04-16 19:04:14','审批回复1'),(122,'2021-04-16 19:04:14','流程代码2','流程类型2','','员工工号2','员工姓名2','2021-04-16 19:04:14','2021-04-16 19:04:14','审批回复2'),(123,'2021-04-16 19:04:14','流程代码3','流程类型3','','员工工号3','员工姓名3','2021-04-16 19:04:14','2021-04-16 19:04:14','审批回复3'),(124,'2021-04-16 19:04:14','流程代码4','流程类型4','','员工工号4','员工姓名4','2021-04-16 19:04:14','2021-04-16 19:04:14','审批回复4'),(125,'2021-04-16 19:04:14','流程代码5','流程类型5','','员工工号5','员工姓名5','2021-04-16 19:04:14','2021-04-16 19:04:14','审批回复5'),(126,'2021-04-16 19:04:14','流程代码6','流程类型6','','员工工号6','员工姓名6','2021-04-16 19:04:14','2021-04-16 19:04:14','审批回复6');

/*Table structure for table `gangweixinxi` */

DROP TABLE IF EXISTS `gangweixinxi`;

CREATE TABLE `gangweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='岗位信息';

/*Data for the table `gangweixinxi` */

insert  into `gangweixinxi`(`id`,`addtime`,`gangwei`) values (31,'2021-04-16 19:04:14','岗位1'),(32,'2021-04-16 19:04:14','岗位2'),(33,'2021-04-16 19:04:14','岗位3'),(34,'2021-04-16 19:04:14','岗位4'),(35,'2021-04-16 19:04:14','岗位5'),(36,'2021-04-16 19:04:14','岗位6');

/*Table structure for table `gonggaotongzhi` */

DROP TABLE IF EXISTS `gonggaotongzhi`;

CREATE TABLE `gonggaotongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `neirong` longtext COMMENT '内容',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `tongzhiduixiang` varchar(200) DEFAULT NULL COMMENT '通知对象',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='公告通知';

/*Data for the table `gonggaotongzhi` */

insert  into `gonggaotongzhi`(`id`,`addtime`,`biaoti`,`fujian`,`neirong`,`tupian`,`faburen`,`tongzhiduixiang`,`fabushijian`,`sfsh`,`shhf`) values (41,'2021-04-16 19:04:14','标题1','','内容1','http://localhost:8080/ssm884v4/upload/gonggaotongzhi_tupian1.jpg','发布人1','通知对象1','2021-04-16','是',''),(42,'2021-04-16 19:04:14','标题2','','内容2','http://localhost:8080/ssm884v4/upload/gonggaotongzhi_tupian2.jpg','发布人2','通知对象2','2021-04-16','是',''),(43,'2021-04-16 19:04:14','标题3','','内容3','http://localhost:8080/ssm884v4/upload/gonggaotongzhi_tupian3.jpg','发布人3','通知对象3','2021-04-16','是',''),(44,'2021-04-16 19:04:14','标题4','','内容4','http://localhost:8080/ssm884v4/upload/gonggaotongzhi_tupian4.jpg','发布人4','通知对象4','2021-04-16','是',''),(45,'2021-04-16 19:04:14','标题5','','内容5','http://localhost:8080/ssm884v4/upload/gonggaotongzhi_tupian5.jpg','发布人5','通知对象5','2021-04-16','是',''),(46,'2021-04-16 19:04:14','标题6','','内容6','http://localhost:8080/ssm884v4/upload/gonggaotongzhi_tupian6.jpg','发布人6','通知对象6','2021-04-16','是','');

/*Table structure for table `kaoqindaka` */

DROP TABLE IF EXISTS `kaoqindaka`;

CREATE TABLE `kaoqindaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `kaoqinleixing` varchar(200) DEFAULT NULL COMMENT '考勤类型',
  `dakashijian` datetime DEFAULT NULL COMMENT '打卡时间',
  `dakatu` varchar(200) DEFAULT NULL COMMENT '打卡图',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='考勤打卡';

/*Data for the table `kaoqindaka` */

insert  into `kaoqindaka`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`bumen`,`gangwei`,`kaoqinleixing`,`dakashijian`,`dakatu`,`sfsh`,`shhf`,`userid`) values (61,'2021-04-16 19:04:14','员工工号1','员工姓名1','部门1','岗位1','签到','2021-04-16 19:04:14','http://localhost:8080/ssm884v4/upload/kaoqindaka_dakatu1.jpg','是','',1),(62,'2021-04-16 19:04:14','员工工号2','员工姓名2','部门2','岗位2','签到','2021-04-16 19:04:14','http://localhost:8080/ssm884v4/upload/kaoqindaka_dakatu2.jpg','是','',2),(63,'2021-04-16 19:04:14','员工工号3','员工姓名3','部门3','岗位3','签到','2021-04-16 19:04:14','http://localhost:8080/ssm884v4/upload/kaoqindaka_dakatu3.jpg','是','',3),(64,'2021-04-16 19:04:14','员工工号4','员工姓名4','部门4','岗位4','签到','2021-04-16 19:04:14','http://localhost:8080/ssm884v4/upload/kaoqindaka_dakatu4.jpg','是','',4),(65,'2021-04-16 19:04:14','员工工号5','员工姓名5','部门5','岗位5','签到','2021-04-16 19:04:14','http://localhost:8080/ssm884v4/upload/kaoqindaka_dakatu5.jpg','是','',5),(66,'2021-04-16 19:04:14','员工工号6','员工姓名6','部门6','岗位6','签到','2021-04-16 19:04:14','http://localhost:8080/ssm884v4/upload/kaoqindaka_dakatu6.jpg','是','',6);

/*Table structure for table `kaoqinjilu` */

DROP TABLE IF EXISTS `kaoqinjilu`;

CREATE TABLE `kaoqinjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `kaoqinleixing` varchar(200) DEFAULT NULL COMMENT '考勤类型',
  `kaoqinzhuangtai` varchar(200) DEFAULT NULL COMMENT '考勤状态',
  `dakashijian` datetime DEFAULT NULL COMMENT '打卡时间',
  `beizhu` longtext COMMENT '备注',
  `dakatu` varchar(200) DEFAULT NULL COMMENT '打卡图',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='考勤记录';

/*Data for the table `kaoqinjilu` */

insert  into `kaoqinjilu`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`bumen`,`gangwei`,`kaoqinleixing`,`kaoqinzhuangtai`,`dakashijian`,`beizhu`,`dakatu`,`userid`) values (71,'2021-04-16 19:04:14','员工工号1','员工姓名1','部门1','岗位1','签到','正常','2021-04-16 19:04:14','备注1','http://localhost:8080/ssm884v4/upload/kaoqinjilu_dakatu1.jpg',1),(72,'2021-04-16 19:04:14','员工工号2','员工姓名2','部门2','岗位2','签到','正常','2021-04-16 19:04:14','备注2','http://localhost:8080/ssm884v4/upload/kaoqinjilu_dakatu2.jpg',2),(73,'2021-04-16 19:04:14','员工工号3','员工姓名3','部门3','岗位3','签到','正常','2021-04-16 19:04:14','备注3','http://localhost:8080/ssm884v4/upload/kaoqinjilu_dakatu3.jpg',3),(74,'2021-04-16 19:04:14','员工工号4','员工姓名4','部门4','岗位4','签到','正常','2021-04-16 19:04:14','备注4','http://localhost:8080/ssm884v4/upload/kaoqinjilu_dakatu4.jpg',4),(75,'2021-04-16 19:04:14','员工工号5','员工姓名5','部门5','岗位5','签到','正常','2021-04-16 19:04:14','备注5','http://localhost:8080/ssm884v4/upload/kaoqinjilu_dakatu5.jpg',5),(76,'2021-04-16 19:04:14','员工工号6','员工姓名6','部门6','岗位6','签到','正常','2021-04-16 19:04:14','备注6','http://localhost:8080/ssm884v4/upload/kaoqinjilu_dakatu6.jpg',6);

/*Table structure for table `liuchengleixing` */

DROP TABLE IF EXISTS `liuchengleixing`;

CREATE TABLE `liuchengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `liuchengleixing` varchar(200) DEFAULT NULL COMMENT '流程类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='流程类型';

/*Data for the table `liuchengleixing` */

insert  into `liuchengleixing`(`id`,`addtime`,`liuchengleixing`) values (101,'2021-04-16 19:04:14','流程类型1'),(102,'2021-04-16 19:04:14','流程类型2'),(103,'2021-04-16 19:04:14','流程类型3'),(104,'2021-04-16 19:04:14','流程类型4'),(105,'2021-04-16 19:04:14','流程类型5'),(106,'2021-04-16 19:04:14','流程类型6');

/*Table structure for table `renshidangan` */

DROP TABLE IF EXISTS `renshidangan`;

CREATE TABLE `renshidangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `ruzhishijian` date DEFAULT NULL COMMENT '入职时间',
  `zaizhizhuangtai` varchar(200) DEFAULT NULL COMMENT '在职状态',
  `gongzuolvli` longtext COMMENT '工作履历',
  `jibenxinzi` int(11) DEFAULT NULL COMMENT '基本薪资',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='人事档案';

/*Data for the table `renshidangan` */

insert  into `renshidangan`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`bumen`,`gangwei`,`dianhua`,`zhaopian`,`ruzhishijian`,`zaizhizhuangtai`,`gongzuolvli`,`jibenxinzi`,`gengxinshijian`) values (51,'2021-04-16 19:04:14','员工工号1','员工姓名1','部门1','岗位1','电话1','http://localhost:8080/ssm884v4/upload/renshidangan_zhaopian1.jpg','2021-04-16','在职','工作履历1',1,'2021-04-16 19:04:14'),(52,'2021-04-16 19:04:14','员工工号2','员工姓名2','部门2','岗位2','电话2','http://localhost:8080/ssm884v4/upload/renshidangan_zhaopian2.jpg','2021-04-16','在职','工作履历2',2,'2021-04-16 19:04:14'),(53,'2021-04-16 19:04:14','员工工号3','员工姓名3','部门3','岗位3','电话3','http://localhost:8080/ssm884v4/upload/renshidangan_zhaopian3.jpg','2021-04-16','在职','工作履历3',3,'2021-04-16 19:04:14'),(54,'2021-04-16 19:04:14','员工工号4','员工姓名4','部门4','岗位4','电话4','http://localhost:8080/ssm884v4/upload/renshidangan_zhaopian4.jpg','2021-04-16','在职','工作履历4',4,'2021-04-16 19:04:14'),(55,'2021-04-16 19:04:14','员工工号5','员工姓名5','部门5','岗位5','电话5','http://localhost:8080/ssm884v4/upload/renshidangan_zhaopian5.jpg','2021-04-16','在职','工作履历5',5,'2021-04-16 19:04:14'),(56,'2021-04-16 19:04:14','员工工号6','员工姓名6','部门6','岗位6','电话6','http://localhost:8080/ssm884v4/upload/renshidangan_zhaopian6.jpg','2021-04-16','在职','工作履历6',6,'2021-04-16 19:04:14');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-16 19:04:14');

/*Table structure for table `wodeyoujian` */

DROP TABLE IF EXISTS `wodeyoujian`;

CREATE TABLE `wodeyoujian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youjianbiaoti` varchar(200) DEFAULT NULL COMMENT '邮件标题',
  `youjianneirong` longtext COMMENT '邮件内容',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='我的邮件';

/*Data for the table `wodeyoujian` */

insert  into `wodeyoujian`(`id`,`addtime`,`youjianbiaoti`,`youjianneirong`,`fujian`,`yuangonggonghao`,`yuangongxingming`) values (81,'2021-04-16 19:04:14','邮件标题1','邮件内容1','','员工工号1','员工姓名1'),(82,'2021-04-16 19:04:14','邮件标题2','邮件内容2','','员工工号2','员工姓名2'),(83,'2021-04-16 19:04:14','邮件标题3','邮件内容3','','员工工号3','员工姓名3'),(84,'2021-04-16 19:04:14','邮件标题4','邮件内容4','','员工工号4','员工姓名4'),(85,'2021-04-16 19:04:14','邮件标题5','邮件内容5','','员工工号5','员工姓名5'),(86,'2021-04-16 19:04:14','邮件标题6','邮件内容6','','员工工号6','员工姓名6');

/*Table structure for table `xinjiangongzuo` */

DROP TABLE IF EXISTS `xinjiangongzuo`;

CREATE TABLE `xinjiangongzuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `liuchengdaima` varchar(200) NOT NULL COMMENT '流程代码',
  `liuchengleixing` varchar(200) DEFAULT NULL COMMENT '流程类型',
  `tijiaobiaogefujian` varchar(200) DEFAULT NULL COMMENT '提交表格附件',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='新建工作';

/*Data for the table `xinjiangongzuo` */

insert  into `xinjiangongzuo`(`id`,`addtime`,`liuchengdaima`,`liuchengleixing`,`tijiaobiaogefujian`,`yuangonggonghao`,`yuangongxingming`,`tijiaoshijian`) values (111,'2021-04-16 19:04:14','流程代码1','流程类型1','','员工工号1','员工姓名1','2021-04-16 19:04:14'),(112,'2021-04-16 19:04:14','流程代码2','流程类型2','','员工工号2','员工姓名2','2021-04-16 19:04:14'),(113,'2021-04-16 19:04:14','流程代码3','流程类型3','','员工工号3','员工姓名3','2021-04-16 19:04:14'),(114,'2021-04-16 19:04:14','流程代码4','流程类型4','','员工工号4','员工姓名4','2021-04-16 19:04:14'),(115,'2021-04-16 19:04:14','流程代码5','流程类型5','','员工工号5','员工姓名5','2021-04-16 19:04:14'),(116,'2021-04-16 19:04:14','流程代码6','流程类型6','','员工工号6','员工姓名6','2021-04-16 19:04:14');

/*Table structure for table `xinjiangongzuomoban` */

DROP TABLE IF EXISTS `xinjiangongzuomoban`;

CREATE TABLE `xinjiangongzuomoban` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `liuchengdaima` varchar(200) NOT NULL COMMENT '流程代码',
  `liuchengleixing` varchar(200) DEFAULT NULL COMMENT '流程类型',
  `biaogefujian` varchar(200) DEFAULT NULL COMMENT '表格附件',
  `liuchengshuoming` longtext COMMENT '流程说明',
  PRIMARY KEY (`id`),
  UNIQUE KEY `liuchengdaima` (`liuchengdaima`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='新建工作模板';

/*Data for the table `xinjiangongzuomoban` */

insert  into `xinjiangongzuomoban`(`id`,`addtime`,`liuchengdaima`,`liuchengleixing`,`biaogefujian`,`liuchengshuoming`) values (91,'2021-04-16 19:04:14','流程代码1','流程类型1','','流程说明1'),(92,'2021-04-16 19:04:14','流程代码2','流程类型2','','流程说明2'),(93,'2021-04-16 19:04:14','流程代码3','流程类型3','','流程说明3'),(94,'2021-04-16 19:04:14','流程代码4','流程类型4','','流程说明4'),(95,'2021-04-16 19:04:14','流程代码5','流程类型5','','流程说明5'),(96,'2021-04-16 19:04:14','流程代码6','流程类型6','','流程说明6');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `ruzhishijian` date DEFAULT NULL COMMENT '入职时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`zhaopian`,`dianhua`,`youxiang`,`bumen`,`gangwei`,`ruzhishijian`) values (11,'2021-04-16 19:04:14','员工1','123456','员工姓名1','男','http://localhost:8080/ssm884v4/upload/yuangong_zhaopian1.jpg','13823888881','773890001@qq.com','部门1','岗位1','2021-04-16'),(12,'2021-04-16 19:04:14','员工2','123456','员工姓名2','男','http://localhost:8080/ssm884v4/upload/yuangong_zhaopian2.jpg','13823888882','773890002@qq.com','部门2','岗位2','2021-04-16'),(13,'2021-04-16 19:04:14','员工3','123456','员工姓名3','男','http://localhost:8080/ssm884v4/upload/yuangong_zhaopian3.jpg','13823888883','773890003@qq.com','部门3','岗位3','2021-04-16'),(14,'2021-04-16 19:04:14','员工4','123456','员工姓名4','男','http://localhost:8080/ssm884v4/upload/yuangong_zhaopian4.jpg','13823888884','773890004@qq.com','部门4','岗位4','2021-04-16'),(15,'2021-04-16 19:04:14','员工5','123456','员工姓名5','男','http://localhost:8080/ssm884v4/upload/yuangong_zhaopian5.jpg','13823888885','773890005@qq.com','部门5','岗位5','2021-04-16'),(16,'2021-04-16 19:04:14','员工6','123456','员工姓名6','男','http://localhost:8080/ssm884v4/upload/yuangong_zhaopian6.jpg','13823888886','773890006@qq.com','部门6','岗位6','2021-04-16');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
