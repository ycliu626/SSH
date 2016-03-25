/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.10 : Database - career_system
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `base_enterprise` */

DROP TABLE IF EXISTS `base_enterprise`;

CREATE TABLE `base_enterprise` (
  `id` varchar(45) NOT NULL,
  `login_name` varchar(64) NOT NULL,
  `name` varchar(128) NOT NULL COMMENT '企业名称',
  `introduction` text COMMENT '企业简介',
  `corporation` varchar(45) DEFAULT NULL COMMENT '企业法人',
  `registration_no` varchar(45) DEFAULT NULL COMMENT '企业登记号',
  `organization_code` varchar(45) DEFAULT NULL COMMENT '组织机构代码',
  `email` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) NOT NULL,
  `qq` varchar(45) DEFAULT NULL,
  `contact_person` varchar(45) NOT NULL COMMENT '联系人',
  `scale` int(11) DEFAULT NULL COMMENT '企业规模 -- 枚举值',
  `capacity_category` int(11) DEFAULT NULL COMMENT '单位经济类型  -- 枚举',
  `nature` int(11) DEFAULT NULL COMMENT '单位性质 -- 枚举值',
  `remark` varchar(256) DEFAULT NULL,
  `last_update` datetime NOT NULL,
  `ver` int(11) DEFAULT NULL COMMENT '乐观锁控制',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `login_name_UNIQUE` (`login_name`),
  CONSTRAINT `login_name_fk` FOREIGN KEY (`login_name`) REFERENCES `public_user` (`login_name`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_enterprise` */

/*Table structure for table `base_student` */

DROP TABLE IF EXISTS `base_student`;

CREATE TABLE `base_student` (
  `id` varchar(64) NOT NULL,
  `studentpin` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL COMMENT '学生姓名',
  `gender` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:男  1:女',
  `age` int(11) DEFAULT NULL,
  `id_number` varchar(45) NOT NULL COMMENT '身份证号',
  `homearea` int(11) DEFAULT NULL COMMENT '生源地',
  `nationality` int(11) DEFAULT NULL COMMENT '民族 -- 枚举值',
  `date_of_entrance` date DEFAULT NULL COMMENT '入学时间',
  `date_of_graduation` date DEFAULT NULL COMMENT '毕业时间',
  `traning_categary` int(11) DEFAULT NULL COMMENT '培养方式 --  枚举值',
  `degree` int(11) DEFAULT NULL COMMENT '学位 -- 枚举值',
  `school_system` int(11) DEFAULT NULL COMMENT '学制 -- 枚举值',
  `specialty` int(11) DEFAULT NULL COMMENT '专业--枚举值',
  `college` int(11) DEFAULT NULL COMMENT '学院 -- 枚举值',
  `classes` varchar(45) DEFAULT NULL COMMENT '班级',
  `mentor` varchar(45) DEFAULT NULL COMMENT '辅导员',
  `mobile` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `is_mobile_private` tinyint(4) DEFAULT NULL COMMENT '电话是否不可见',
  `email` varchar(45) DEFAULT NULL,
  `house_hold` int(11) DEFAULT NULL COMMENT '户口所在地',
  `address` varchar(256) DEFAULT NULL,
  `zip_code` varchar(45) DEFAULT NULL COMMENT '邮政编码',
  `political_appearance` int(11) DEFAULT NULL COMMENT '政治面貌  -- 枚举值',
  `graduate_year` varchar(45) NOT NULL COMMENT '毕业年份',
  `language_skill` int(11) DEFAULT NULL COMMENT '语言技能',
  `language_skill_extra` varchar(256) DEFAULT NULL COMMENT '语言技能补充',
  `create_time` datetime DEFAULT NULL,
  `last_update` datetime NOT NULL,
  `ver` int(11) DEFAULT NULL COMMENT '乐观锁控制',
  PRIMARY KEY (`id`),
  UNIQUE KEY `studentpin_UNIQUE` (`studentpin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_student` */

/*Table structure for table `public_user` */

DROP TABLE IF EXISTS `public_user`;

CREATE TABLE `public_user` (
  `id` varchar(45) NOT NULL,
  `login_name` varchar(64) NOT NULL,
  `pwd_hash` varchar(32) NOT NULL,
  `salt` varchar(45) NOT NULL,
  `last_update` datetime NOT NULL,
  `ver` int(11) NOT NULL DEFAULT '0' COMMENT '乐观锁控制',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_name_UNIQUE` (`login_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `public_user` */

/*Table structure for table `student_status` */

DROP TABLE IF EXISTS `student_status`;

CREATE TABLE `student_status` (
  `id` varchar(45) NOT NULL,
  `current_status` int(11) NOT NULL DEFAULT '1' COMMENT '当前状态 -- 枚举值\n\n1：未登录；2：未填写个人信息；3：已填写个人信息；4：就业信息待审核；5：就业信息已审核',
  `is_employ_reg` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否登记就业?',
  `is_break_contract` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否违约',
  `is_delay_dispatch` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否违约',
  `dispatch_status` int(11) NOT NULL COMMENT '派遣状态',
  `is_apply_dispatch` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否申请派遣',
  `is_employ_reject` tinyint(4) NOT NULL DEFAULT '0' COMMENT '就业登记是否未通过',
  `apply_dispatch_remark` varchar(128) DEFAULT NULL COMMENT '派遣备注',
  `employ_target` int(11) DEFAULT NULL COMMENT '就业去向 -- 枚举值',
  `last_update` datetime NOT NULL,
  `ver` int(11) NOT NULL DEFAULT '0' COMMENT '乐观锁控制',
  PRIMARY KEY (`id`),
  CONSTRAINT `student_fk` FOREIGN KEY (`id`) REFERENCES `base_student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student_status` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
