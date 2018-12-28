/*
SQLyog Ultimate v8.32 
MySQL - 5.5.49 : Database - yuantu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yuantu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yuantu`;

/*Table structure for table `apply_list` */

DROP TABLE IF EXISTS `apply_list`;

CREATE TABLE `apply_list` (
  `c_id` int(16) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `s_name` varchar(20) NOT NULL COMMENT '报名人姓名',
  `s_phone` varchar(15) NOT NULL COMMENT '报名人手机号',
  `s_category` varchar(6) NOT NULL COMMENT '所报类别',
  `s_class` varchar(10) DEFAULT NULL COMMENT '所报年级',
  `u_id` int(10) NOT NULL COMMENT '报名人id',
  PRIMARY KEY (`c_id`),
  KEY `FKfffuf7l69deki3jq1dbpcpim0` (`s_category`),
  CONSTRAINT `FKfffuf7l69deki3jq1dbpcpim0` FOREIGN KEY (`s_category`) REFERENCES `base_dict` (`dict_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `apply_list` */

insert  into `apply_list`(`c_id`,`s_name`,`s_phone`,`s_category`,`s_class`,`u_id`) values (5,'雷布斯','1243434','4','初一',5),(7,'马云','15498763456','10','高一',7),(17,'小明','17645679876','1','一年级',2),(18,'小刚','17645679876','10','高一',2),(20,'小花','15874129658','19','',1),(21,'小花','15632523678','1','',1),(22,'小马','15678987654','1','一年级',9),(23,'小马2','15678987654','4','初一',9);

/*Table structure for table `base_dict` */

DROP TABLE IF EXISTS `base_dict`;

CREATE TABLE `base_dict` (
  `dict_id` varchar(10) NOT NULL,
  `dict_type_code` varchar(10) DEFAULT NULL,
  `dict_type_name` varchar(12) DEFAULT NULL,
  `dict_item_name` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_dict` */

insert  into `base_dict`(`dict_id`,`dict_type_code`,`dict_type_name`,`dict_item_name`) values ('1','1','小学教育','语文'),('10','3','高中教育','物理'),('11','3','高中教育','化学'),('12','3','高中教育','生物'),('13','3','高中教育','政治'),('14','3','高中教育','地理'),('15','4','小语种教育','德语'),('16','4','小语种教育','西班牙语'),('17','4','小语种教育','葡萄牙语'),('18','4','小语种教育','日语'),('19','4','小语种教育','韩语'),('2','1','小学教育','数学'),('3','1','小学教育','英语'),('4','2','初中教育','语文'),('5','2','初中教育','数学'),('6','2','初中教育','英语'),('7','3','高中教育','语文'),('8','3','高中教育','数学'),('9','3','高中教育','英语');

/*Table structure for table `commodityclasses` */

DROP TABLE IF EXISTS `commodityclasses`;

CREATE TABLE `commodityclasses` (
  `commodityClassId` int(11) NOT NULL,
  `commodityClassName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`commodityClassId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `commodityclasses` */

/*Table structure for table `forgot` */

DROP TABLE IF EXISTS `forgot`;

CREATE TABLE `forgot` (
  `f_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '忘记密码用户表主键',
  `f_name` varchar(18) NOT NULL COMMENT '用户名',
  `f_email` varchar(18) NOT NULL COMMENT '用户邮箱',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `forgot` */

insert  into `forgot`(`f_id`,`f_name`,`f_email`) values (1,'雷布斯','1234@qq.com'),(2,'JackMa','15678799@qq.com');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `messageId` int(11) NOT NULL,
  `messagetext` varchar(255) DEFAULT NULL,
  `messagetime` varchar(255) DEFAULT NULL,
  `messagetitle` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `message` */

/*Table structure for table `orderform` */

DROP TABLE IF EXISTS `orderform`;

CREATE TABLE `orderform` (
  `orderFormId` int(11) NOT NULL,
  `consignmentTime` varchar(255) DEFAULT NULL,
  `isConsignment` varchar(255) DEFAULT NULL,
  `isPayoff` varchar(255) DEFAULT NULL,
  `orderFormNum` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `submitTime` varchar(255) DEFAULT NULL,
  `totalPrice` double DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderFormId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderform` */

/*Table structure for table `yt_user` */

DROP TABLE IF EXISTS `yt_user`;

CREATE TABLE `yt_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `uname` varchar(20) NOT NULL COMMENT '用户名',
  `u_password` varchar(50) NOT NULL COMMENT '用户密码',
  `u_phone` varchar(12) NOT NULL COMMENT '用户联系号码',
  `u_name` varchar(255) DEFAULT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `yt_user` */

insert  into `yt_user`(`uid`,`uname`,`u_password`,`u_phone`,`u_name`,`u_id`) values (1,'小明','12345','16734562345',NULL,0),(2,'周宏伟','1234qwe','1234567564',NULL,0),(3,'测试1','1234','123456',NULL,0),(5,'雷布斯','1234qwe','15734569876',NULL,0),(7,'JackMa','123456','15678965432',NULL,0),(8,'tony','b77a9a3171fbd816c3c5ef16036027dd','15676545678',NULL,0),(9,'小马','e10adc3949ba59abbe56e057f20f883e','15645679876',NULL,0),(10,'小马哥','e10adc3949ba59abbe56e057f20f883e','15678987651',NULL,0),(11,'小马2','557decc0bfc6ef3dcfeaf4f9f05819af','17645677689',NULL,0),(12,'小马3','b77a9a3171fbd816c3c5ef16036027dd','15689657412',NULL,0),(13,'didi','qaed','12321312',NULL,0),(14,'qaq','qerece','12321312',NULL,0),(16,'didi2','qaed','12321312',NULL,0),(17,'didi3','qaed','12321312',NULL,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
