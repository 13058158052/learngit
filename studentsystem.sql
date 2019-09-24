/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.20 : Database - studentsystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`studentsystem` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `  `;

/*Table structure for table `grade` */

DROP TABLE IF EXISTS `grade`;

CREATE TABLE `grade` (
  `id` INT(4) NOT NULL AUTO_INCREMENT COMMENT '年级编号',
  `gradeName` VARCHAR(10) NOT NULL COMMENT '年级名称',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `grade` */

INSERT  INTO `grade`(`id`,`gradeName`) VALUES (1,'S1'),(2,'S2'),(3,'Y2');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` INT(4) NOT NULL AUTO_INCREMENT COMMENT '学生编号',
  `studentName` VARCHAR(10) NOT NULL COMMENT '学生名称',
  `age` INT(4) NOT NULL COMMENT '年龄',
  `address` VARCHAR(255) DEFAULT NULL COMMENT '地址',
  `gradeId` INT(4) NOT NULL COMMENT '年级编号',
  `photo` VARCHAR(255) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  KEY `fk_gradeId_student_grade` (`gradeId`),
  CONSTRAINT `fk_gradeId_student_grade` FOREIGN KEY (`gradeId`) REFERENCES `grade` (`id`)
) ENGINE=INNODB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

INSERT  INTO `student`(`id`,`studentName`,`age`,`address`,`gradeId`,`photo`) VALUES (1,'张三',20,'深圳福田',1,NULL),(2,'李四',21,'北京',2,NULL),(3,'jack',18,'上海',2,NULL),(4,'rose',20,'湖北武汉市',2,NULL),(5,'bill',20,'深圳福田',1,NULL),(6,'jim',26,'湖南岳阳',1,NULL),(7,'李涛',20,'深圳龙岗',3,NULL),(8,'李三',20,'深圳龙华',1,NULL),(9,'欧阳',24,'深圳宝安',3,NULL),(10,'李萍',20,'深圳南山',3,NULL),(11,'李阳',24,'深圳大鹏',3,NULL),(12,'赵四',20,'深圳南山',1,NULL),(13,'丁涛',23,'深圳福田',2,NULL),(14,'张明',20,'深圳福田',1,NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` INT(4) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` VARCHAR(10) NOT NULL COMMENT '用户名',
  `password` VARCHAR(10) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

INSERT  INTO `user`(`id`,`username`,`password`) VALUES (1,'admin','123456'),(2,'zhangsan','123456'),(3,'lisi','123456'),(4,'zhaoliu','121212'),(5,'wangwu','123123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


DROP TABLE IF EXISTS bank;
CREATE TABLE bank(
bId INT(4) PRIMARY KEY AUTO_INCREMENT,
bName VARCHAR(10) NOT NULL,
balance INT(4) NOT NULL
);

INSERT INTO `bank`(`bId`,`bName`,`balance`) VALUE (DEFAULT,'zhangsan',2000);
INSERT INTO `bank`(`bId`,`bName`,`balance`) VALUE (DEFAULT,'lisi',3000);
























