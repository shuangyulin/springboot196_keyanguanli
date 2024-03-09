-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootl33wm
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springbootl33wm`
--

/*!40000 DROP DATABASE IF EXISTS `springbootl33wm`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootl33wm` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootl33wm`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) NOT NULL COMMENT '电话',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (11,'2022-03-20 02:50:12','教师工号1','123456','教师姓名1','男','职称1','13823888881','upload/jiaoshi_zhaopian1.jpg'),(12,'2022-03-20 02:50:12','教师工号2','123456','教师姓名2','男','职称2','13823888882','upload/jiaoshi_zhaopian2.jpg'),(13,'2022-03-20 02:50:12','教师工号3','123456','教师姓名3','男','职称3','13823888883','upload/jiaoshi_zhaopian3.jpg'),(14,'2022-03-20 02:50:12','教师工号4','123456','教师姓名4','男','职称4','13823888884','upload/jiaoshi_zhaopian4.jpg'),(15,'2022-03-20 02:50:12','教师工号5','123456','教师姓名5','男','职称5','13823888885','upload/jiaoshi_zhaopian5.jpg'),(16,'2022-03-20 02:50:12','教师工号6','123456','教师姓名6','男','职称6','13823888886','upload/jiaoshi_zhaopian6.jpg');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyanchengguo`
--

DROP TABLE IF EXISTS `keyanchengguo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyanchengguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chengguomingcheng` varchar(200) NOT NULL COMMENT '成果名称',
  `chengguoleixing` varchar(200) NOT NULL COMMENT '成果类型',
  `chengguotupian` varchar(200) DEFAULT NULL COMMENT '成果图片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `chengguoxiangqing` longtext COMMENT '成果详情',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='科研成果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyanchengguo`
--

LOCK TABLES `keyanchengguo` WRITE;
/*!40000 ALTER TABLE `keyanchengguo` DISABLE KEYS */;
INSERT INTO `keyanchengguo` VALUES (71,'2022-03-20 02:50:13','成果名称1','专利','upload/keyanchengguo_chengguotupian1.jpg','2022-03-20','成果详情1','教师工号1','教师姓名1'),(72,'2022-03-20 02:50:13','成果名称2','专利','upload/keyanchengguo_chengguotupian2.jpg','2022-03-20','成果详情2','教师工号2','教师姓名2'),(73,'2022-03-20 02:50:13','成果名称3','专利','upload/keyanchengguo_chengguotupian3.jpg','2022-03-20','成果详情3','教师工号3','教师姓名3'),(74,'2022-03-20 02:50:13','成果名称4','专利','upload/keyanchengguo_chengguotupian4.jpg','2022-03-20','成果详情4','教师工号4','教师姓名4'),(75,'2022-03-20 02:50:13','成果名称5','专利','upload/keyanchengguo_chengguotupian5.jpg','2022-03-20','成果详情5','教师工号5','教师姓名5'),(76,'2022-03-20 02:50:13','成果名称6','专利','upload/keyanchengguo_chengguotupian6.jpg','2022-03-20','成果详情6','教师工号6','教师姓名6');
/*!40000 ALTER TABLE `keyanchengguo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyanchengguoxiaoshen`
--

DROP TABLE IF EXISTS `keyanchengguoxiaoshen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyanchengguoxiaoshen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chengguomingcheng` varchar(200) NOT NULL COMMENT '成果名称',
  `chengguoleixing` varchar(200) NOT NULL COMMENT '成果类型',
  `chengguotupian` varchar(200) DEFAULT NULL COMMENT '成果图片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `chengguoxiangqing` longtext COMMENT '成果详情',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `shenhezhuangtai` varchar(200) NOT NULL COMMENT '审核状态',
  `shenheqingkuang` longtext NOT NULL COMMENT '审核情况',
  `xueyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '学院账号',
  `xueyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '学院名称',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='科研成果校审';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyanchengguoxiaoshen`
--

LOCK TABLES `keyanchengguoxiaoshen` WRITE;
/*!40000 ALTER TABLE `keyanchengguoxiaoshen` DISABLE KEYS */;
INSERT INTO `keyanchengguoxiaoshen` VALUES (121,'2022-03-20 02:50:13','成果名称1','专利','upload/keyanchengguoxiaoshen_chengguotupian1.jpg','2022-03-20','成果详情1','教师工号1','教师姓名1','通过','审核情况1','学院账号1','学院名称1','2022-03-20 10:50:13','是',''),(122,'2022-03-20 02:50:13','成果名称2','专利','upload/keyanchengguoxiaoshen_chengguotupian2.jpg','2022-03-20','成果详情2','教师工号2','教师姓名2','通过','审核情况2','学院账号2','学院名称2','2022-03-20 10:50:13','是',''),(123,'2022-03-20 02:50:13','成果名称3','专利','upload/keyanchengguoxiaoshen_chengguotupian3.jpg','2022-03-20','成果详情3','教师工号3','教师姓名3','通过','审核情况3','学院账号3','学院名称3','2022-03-20 10:50:13','是',''),(124,'2022-03-20 02:50:13','成果名称4','专利','upload/keyanchengguoxiaoshen_chengguotupian4.jpg','2022-03-20','成果详情4','教师工号4','教师姓名4','通过','审核情况4','学院账号4','学院名称4','2022-03-20 10:50:13','是',''),(125,'2022-03-20 02:50:13','成果名称5','专利','upload/keyanchengguoxiaoshen_chengguotupian5.jpg','2022-03-20','成果详情5','教师工号5','教师姓名5','通过','审核情况5','学院账号5','学院名称5','2022-03-20 10:50:13','是',''),(126,'2022-03-20 02:50:13','成果名称6','专利','upload/keyanchengguoxiaoshen_chengguotupian6.jpg','2022-03-20','成果详情6','教师工号6','教师姓名6','通过','审核情况6','学院账号6','学院名称6','2022-03-20 10:50:13','是','');
/*!40000 ALTER TABLE `keyanchengguoxiaoshen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyanketi`
--

DROP TABLE IF EXISTS `keyanketi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyanketi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketimingcheng` varchar(200) DEFAULT NULL COMMENT '课题名称',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keyanwenjian` varchar(200) DEFAULT NULL COMMENT '科研文件',
  `chengyuan` varchar(200) DEFAULT NULL COMMENT '成员',
  `yanjiumude` longtext COMMENT '研究目的',
  `yanjiuneirong` longtext COMMENT '研究内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='科研课题';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyanketi`
--

LOCK TABLES `keyanketi` WRITE;
/*!40000 ALTER TABLE `keyanketi` DISABLE KEYS */;
INSERT INTO `keyanketi` VALUES (31,'2022-03-20 02:50:12','课题名称1','教师工号1','教师姓名1','职称1','','成员1','研究目的1','研究内容1'),(32,'2022-03-20 02:50:12','课题名称2','教师工号2','教师姓名2','职称2','','成员2','研究目的2','研究内容2'),(33,'2022-03-20 02:50:12','课题名称3','教师工号3','教师姓名3','职称3','','成员3','研究目的3','研究内容3'),(34,'2022-03-20 02:50:12','课题名称4','教师工号4','教师姓名4','职称4','','成员4','研究目的4','研究内容4'),(35,'2022-03-20 02:50:12','课题名称5','教师工号5','教师姓名5','职称5','','成员5','研究目的5','研究内容5'),(36,'2022-03-20 02:50:12','课题名称6','教师工号6','教师姓名6','职称6','','成员6','研究目的6','研究内容6');
/*!40000 ALTER TABLE `keyanketi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyanketixiaoshen`
--

DROP TABLE IF EXISTS `keyanketixiaoshen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyanketixiaoshen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketimingcheng` varchar(200) DEFAULT NULL COMMENT '课题名称',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keyanwenjian` varchar(200) DEFAULT NULL COMMENT '科研文件',
  `chengyuan` varchar(200) DEFAULT NULL COMMENT '成员',
  `yanjiumude` longtext COMMENT '研究目的',
  `yanjiuneirong` longtext COMMENT '研究内容',
  `shenheqingkuang` longtext NOT NULL COMMENT '审核情况',
  `shenhezhuangtai` varchar(200) NOT NULL COMMENT '审核状态',
  `xueyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '学院账号',
  `xueyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '学院名称',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='科研课题校审';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyanketixiaoshen`
--

LOCK TABLES `keyanketixiaoshen` WRITE;
/*!40000 ALTER TABLE `keyanketixiaoshen` DISABLE KEYS */;
INSERT INTO `keyanketixiaoshen` VALUES (81,'2022-03-20 02:50:13','课题名称1','教师工号1','教师姓名1','职称1','','成员1','研究目的1','研究内容1','审核情况1','通过','学院账号1','学院名称1','2022-03-20 10:50:13','是',''),(82,'2022-03-20 02:50:13','课题名称2','教师工号2','教师姓名2','职称2','','成员2','研究目的2','研究内容2','审核情况2','通过','学院账号2','学院名称2','2022-03-20 10:50:13','是',''),(83,'2022-03-20 02:50:13','课题名称3','教师工号3','教师姓名3','职称3','','成员3','研究目的3','研究内容3','审核情况3','通过','学院账号3','学院名称3','2022-03-20 10:50:13','是',''),(84,'2022-03-20 02:50:13','课题名称4','教师工号4','教师姓名4','职称4','','成员4','研究目的4','研究内容4','审核情况4','通过','学院账号4','学院名称4','2022-03-20 10:50:13','是',''),(85,'2022-03-20 02:50:13','课题名称5','教师工号5','教师姓名5','职称5','','成员5','研究目的5','研究内容5','审核情况5','通过','学院账号5','学院名称5','2022-03-20 10:50:13','是',''),(86,'2022-03-20 02:50:13','课题名称6','教师工号6','教师姓名6','职称6','','成员6','研究目的6','研究内容6','审核情况6','通过','学院账号6','学院名称6','2022-03-20 10:50:13','是','');
/*!40000 ALTER TABLE `keyanketixiaoshen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lunwenxiaoshen`
--

DROP TABLE IF EXISTS `lunwenxiaoshen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lunwenxiaoshen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lunwentimu` varchar(200) DEFAULT NULL COMMENT '论文题目',
  `lunwenleixing` varchar(200) DEFAULT NULL COMMENT '论文类型',
  `lunwenfubiaoti` varchar(200) DEFAULT NULL COMMENT '论文副标题',
  `zuozheshuming` varchar(200) DEFAULT NULL COMMENT '作者署名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shijian` varchar(200) DEFAULT NULL COMMENT '时间',
  `lunwenwenjian` varchar(200) DEFAULT NULL COMMENT '论文文件',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `beizhu` longtext COMMENT '备注',
  `shenhezhuangtai` varchar(200) NOT NULL COMMENT '审核状态',
  `shenheqingkuang` longtext NOT NULL COMMENT '审核情况',
  `xueyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '学院账号',
  `xueyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '学院名称',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='论文校审';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunwenxiaoshen`
--

LOCK TABLES `lunwenxiaoshen` WRITE;
/*!40000 ALTER TABLE `lunwenxiaoshen` DISABLE KEYS */;
INSERT INTO `lunwenxiaoshen` VALUES (101,'2022-03-20 02:50:13','论文题目1','论文类型1','论文副标题1','作者署名1','专业1','时间1','','教师工号1','教师姓名1','备注1','通过','审核情况1','学院账号1','学院名称1','2022-03-20 10:50:13','是',''),(102,'2022-03-20 02:50:13','论文题目2','论文类型2','论文副标题2','作者署名2','专业2','时间2','','教师工号2','教师姓名2','备注2','通过','审核情况2','学院账号2','学院名称2','2022-03-20 10:50:13','是',''),(103,'2022-03-20 02:50:13','论文题目3','论文类型3','论文副标题3','作者署名3','专业3','时间3','','教师工号3','教师姓名3','备注3','通过','审核情况3','学院账号3','学院名称3','2022-03-20 10:50:13','是',''),(104,'2022-03-20 02:50:13','论文题目4','论文类型4','论文副标题4','作者署名4','专业4','时间4','','教师工号4','教师姓名4','备注4','通过','审核情况4','学院账号4','学院名称4','2022-03-20 10:50:13','是',''),(105,'2022-03-20 02:50:13','论文题目5','论文类型5','论文副标题5','作者署名5','专业5','时间5','','教师工号5','教师姓名5','备注5','通过','审核情况5','学院账号5','学院名称5','2022-03-20 10:50:13','是',''),(106,'2022-03-20 02:50:13','论文题目6','论文类型6','论文副标题6','作者署名6','专业6','时间6','','教师工号6','教师姓名6','备注6','通过','审核情况6','学院账号6','学院名称6','2022-03-20 10:50:13','是','');
/*!40000 ALTER TABLE `lunwenxiaoshen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lunwenxinxi`
--

DROP TABLE IF EXISTS `lunwenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lunwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lunwentimu` varchar(200) DEFAULT NULL COMMENT '论文题目',
  `lunwenleixing` varchar(200) DEFAULT NULL COMMENT '论文类型',
  `lunwenfubiaoti` varchar(200) DEFAULT NULL COMMENT '论文副标题',
  `zuozheshuming` varchar(200) DEFAULT NULL COMMENT '作者署名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `lunwenwenjian` varchar(200) DEFAULT NULL COMMENT '论文文件',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='论文信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunwenxinxi`
--

LOCK TABLES `lunwenxinxi` WRITE;
/*!40000 ALTER TABLE `lunwenxinxi` DISABLE KEYS */;
INSERT INTO `lunwenxinxi` VALUES (51,'2022-03-20 02:50:12','论文题目1','论文类型1','论文副标题1','作者署名1','专业1','2022-03-20','','教师工号1','教师姓名1','备注1'),(52,'2022-03-20 02:50:12','论文题目2','论文类型2','论文副标题2','作者署名2','专业2','2022-03-20','','教师工号2','教师姓名2','备注2'),(53,'2022-03-20 02:50:12','论文题目3','论文类型3','论文副标题3','作者署名3','专业3','2022-03-20','','教师工号3','教师姓名3','备注3'),(54,'2022-03-20 02:50:12','论文题目4','论文类型4','论文副标题4','作者署名4','专业4','2022-03-20','','教师工号4','教师姓名4','备注4'),(55,'2022-03-20 02:50:12','论文题目5','论文类型5','论文副标题5','作者署名5','专业5','2022-03-20','','教师工号5','教师姓名5','备注5'),(56,'2022-03-20 02:50:12','论文题目6','论文类型6','论文副标题6','作者署名6','专业6','2022-03-20','','教师工号6','教师姓名6','备注6');
/*!40000 ALTER TABLE `lunwenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruanjianzhuzuoquan`
--

DROP TABLE IF EXISTS `ruanjianzhuzuoquan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruanjianzhuzuoquan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ruanjianmingcheng` varchar(200) NOT NULL COMMENT '软件名称',
  `yingyongleixing` varchar(200) NOT NULL COMMENT '应用类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `banben` varchar(200) DEFAULT NULL COMMENT '版本',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `jieshao` longtext COMMENT '介绍',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `banquanguishu` varchar(200) DEFAULT NULL COMMENT '版权归属',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='软件著作权';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruanjianzhuzuoquan`
--

LOCK TABLES `ruanjianzhuzuoquan` WRITE;
/*!40000 ALTER TABLE `ruanjianzhuzuoquan` DISABLE KEYS */;
INSERT INTO `ruanjianzhuzuoquan` VALUES (41,'2022-03-20 02:50:12','软件名称1','应用类型1','upload/ruanjianzhuzuoquan_tupian1.jpg','版本1','','介绍1','教师工号1','教师姓名1','版权归属1','2022-03-20 10:50:12'),(42,'2022-03-20 02:50:12','软件名称2','应用类型2','upload/ruanjianzhuzuoquan_tupian2.jpg','版本2','','介绍2','教师工号2','教师姓名2','版权归属2','2022-03-20 10:50:12'),(43,'2022-03-20 02:50:12','软件名称3','应用类型3','upload/ruanjianzhuzuoquan_tupian3.jpg','版本3','','介绍3','教师工号3','教师姓名3','版权归属3','2022-03-20 10:50:12'),(44,'2022-03-20 02:50:12','软件名称4','应用类型4','upload/ruanjianzhuzuoquan_tupian4.jpg','版本4','','介绍4','教师工号4','教师姓名4','版权归属4','2022-03-20 10:50:12'),(45,'2022-03-20 02:50:12','软件名称5','应用类型5','upload/ruanjianzhuzuoquan_tupian5.jpg','版本5','','介绍5','教师工号5','教师姓名5','版权归属5','2022-03-20 10:50:12'),(46,'2022-03-20 02:50:12','软件名称6','应用类型6','upload/ruanjianzhuzuoquan_tupian6.jpg','版本6','','介绍6','教师工号6','教师姓名6','版权归属6','2022-03-20 10:50:12');
/*!40000 ALTER TABLE `ruanjianzhuzuoquan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-20 02:50:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueyuan`
--

DROP TABLE IF EXISTS `xueyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuanzhanghao` varchar(200) NOT NULL COMMENT '学院账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueyuanmingcheng` varchar(200) NOT NULL COMMENT '学院名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `xueyuandizhi` varchar(200) DEFAULT NULL COMMENT '学院地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueyuanzhanghao` (`xueyuanzhanghao`),
  UNIQUE KEY `xueyuanmingcheng` (`xueyuanmingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='学院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueyuan`
--

LOCK TABLES `xueyuan` WRITE;
/*!40000 ALTER TABLE `xueyuan` DISABLE KEYS */;
INSERT INTO `xueyuan` VALUES (21,'2022-03-20 02:50:12','学院账号1','123456','学院名称1','upload/xueyuan_tupian1.jpg','负责人1','联系电话1','773890001@qq.com','学院地址1'),(22,'2022-03-20 02:50:12','学院账号2','123456','学院名称2','upload/xueyuan_tupian2.jpg','负责人2','联系电话2','773890002@qq.com','学院地址2'),(23,'2022-03-20 02:50:12','学院账号3','123456','学院名称3','upload/xueyuan_tupian3.jpg','负责人3','联系电话3','773890003@qq.com','学院地址3'),(24,'2022-03-20 02:50:12','学院账号4','123456','学院名称4','upload/xueyuan_tupian4.jpg','负责人4','联系电话4','773890004@qq.com','学院地址4'),(25,'2022-03-20 02:50:12','学院账号5','123456','学院名称5','upload/xueyuan_tupian5.jpg','负责人5','联系电话5','773890005@qq.com','学院地址5'),(26,'2022-03-20 02:50:12','学院账号6','123456','学院名称6','upload/xueyuan_tupian6.jpg','负责人6','联系电话6','773890006@qq.com','学院地址6');
/*!40000 ALTER TABLE `xueyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanlixiaoshen`
--

DROP TABLE IF EXISTS `zhuanlixiaoshen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanlixiaoshen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanlibianhao` varchar(200) DEFAULT NULL COMMENT '专利编号',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `zhuanlimingcheng` varchar(200) DEFAULT NULL COMMENT '专利名称',
  `zhuanlileixing` varchar(200) DEFAULT NULL COMMENT '专利类型',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `shenhezhuangtai` varchar(200) NOT NULL COMMENT '审核状态',
  `shenheqingkuang` longtext NOT NULL COMMENT '审核情况',
  `xueyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '学院账号',
  `xueyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '学院名称',
  `shenheshijian` datetime DEFAULT NULL COMMENT '审核时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='专利校审';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanlixiaoshen`
--

LOCK TABLES `zhuanlixiaoshen` WRITE;
/*!40000 ALTER TABLE `zhuanlixiaoshen` DISABLE KEYS */;
INSERT INTO `zhuanlixiaoshen` VALUES (111,'2022-03-20 02:50:13','专利编号1','','专利名称1','专利类型1','备注1','教师工号1','教师姓名1','通过','审核情况1','学院账号1','学院名称1','2022-03-20 10:50:13','是',''),(112,'2022-03-20 02:50:13','专利编号2','','专利名称2','专利类型2','备注2','教师工号2','教师姓名2','通过','审核情况2','学院账号2','学院名称2','2022-03-20 10:50:13','是',''),(113,'2022-03-20 02:50:13','专利编号3','','专利名称3','专利类型3','备注3','教师工号3','教师姓名3','通过','审核情况3','学院账号3','学院名称3','2022-03-20 10:50:13','是',''),(114,'2022-03-20 02:50:13','专利编号4','','专利名称4','专利类型4','备注4','教师工号4','教师姓名4','通过','审核情况4','学院账号4','学院名称4','2022-03-20 10:50:13','是',''),(115,'2022-03-20 02:50:13','专利编号5','','专利名称5','专利类型5','备注5','教师工号5','教师姓名5','通过','审核情况5','学院账号5','学院名称5','2022-03-20 10:50:13','是',''),(116,'2022-03-20 02:50:13','专利编号6','','专利名称6','专利类型6','备注6','教师工号6','教师姓名6','通过','审核情况6','学院账号6','学院名称6','2022-03-20 10:50:13','是','');
/*!40000 ALTER TABLE `zhuanlixiaoshen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanlixinxi`
--

DROP TABLE IF EXISTS `zhuanlixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanlixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanlibianhao` varchar(200) DEFAULT NULL COMMENT '专利编号',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `zhuanlimingcheng` varchar(200) DEFAULT NULL COMMENT '专利名称',
  `zhuanlileixing` varchar(200) DEFAULT NULL COMMENT '专利类型',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuanlibianhao` (`zhuanlibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='专利信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanlixinxi`
--

LOCK TABLES `zhuanlixinxi` WRITE;
/*!40000 ALTER TABLE `zhuanlixinxi` DISABLE KEYS */;
INSERT INTO `zhuanlixinxi` VALUES (61,'2022-03-20 02:50:13','1111111111','','专利名称1','发明专利','备注1','2022-03-20','教师工号1','教师姓名1'),(62,'2022-03-20 02:50:13','2222222222','','专利名称2','发明专利','备注2','2022-03-20','教师工号2','教师姓名2'),(63,'2022-03-20 02:50:13','3333333333','','专利名称3','发明专利','备注3','2022-03-20','教师工号3','教师姓名3'),(64,'2022-03-20 02:50:13','4444444444','','专利名称4','发明专利','备注4','2022-03-20','教师工号4','教师姓名4'),(65,'2022-03-20 02:50:13','5555555555','','专利名称5','发明专利','备注5','2022-03-20','教师工号5','教师姓名5'),(66,'2022-03-20 02:50:13','6666666666','','专利名称6','发明专利','备注6','2022-03-20','教师工号6','教师姓名6');
/*!40000 ALTER TABLE `zhuanlixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuzuoquanxiaoshen`
--

DROP TABLE IF EXISTS `zhuzuoquanxiaoshen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuzuoquanxiaoshen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ruanjianmingcheng` varchar(200) NOT NULL COMMENT '软件名称',
  `yingyongleixing` varchar(200) NOT NULL COMMENT '应用类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `banben` varchar(200) DEFAULT NULL COMMENT '版本',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `jieshao` longtext COMMENT '介绍',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `banquanguishu` varchar(200) DEFAULT NULL COMMENT '版权归属',
  `shenqingshijian` varchar(200) DEFAULT NULL COMMENT '申请时间',
  `shenhezhuangtai` varchar(200) NOT NULL COMMENT '审核状态',
  `shenheqingkuang` longtext NOT NULL COMMENT '审核情况',
  `xueyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '学院账号',
  `xueyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '学院名称',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='著作权校审';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuzuoquanxiaoshen`
--

LOCK TABLES `zhuzuoquanxiaoshen` WRITE;
/*!40000 ALTER TABLE `zhuzuoquanxiaoshen` DISABLE KEYS */;
INSERT INTO `zhuzuoquanxiaoshen` VALUES (91,'2022-03-20 02:50:13','软件名称1','应用类型1','upload/zhuzuoquanxiaoshen_tupian1.jpg','版本1','','介绍1','教师工号1','教师姓名1','版权归属1','申请时间1','通过','审核情况1','学院账号1','学院名称1','2022-03-20 10:50:13','是',''),(92,'2022-03-20 02:50:13','软件名称2','应用类型2','upload/zhuzuoquanxiaoshen_tupian2.jpg','版本2','','介绍2','教师工号2','教师姓名2','版权归属2','申请时间2','通过','审核情况2','学院账号2','学院名称2','2022-03-20 10:50:13','是',''),(93,'2022-03-20 02:50:13','软件名称3','应用类型3','upload/zhuzuoquanxiaoshen_tupian3.jpg','版本3','','介绍3','教师工号3','教师姓名3','版权归属3','申请时间3','通过','审核情况3','学院账号3','学院名称3','2022-03-20 10:50:13','是',''),(94,'2022-03-20 02:50:13','软件名称4','应用类型4','upload/zhuzuoquanxiaoshen_tupian4.jpg','版本4','','介绍4','教师工号4','教师姓名4','版权归属4','申请时间4','通过','审核情况4','学院账号4','学院名称4','2022-03-20 10:50:13','是',''),(95,'2022-03-20 02:50:13','软件名称5','应用类型5','upload/zhuzuoquanxiaoshen_tupian5.jpg','版本5','','介绍5','教师工号5','教师姓名5','版权归属5','申请时间5','通过','审核情况5','学院账号5','学院名称5','2022-03-20 10:50:13','是',''),(96,'2022-03-20 02:50:13','软件名称6','应用类型6','upload/zhuzuoquanxiaoshen_tupian6.jpg','版本6','','介绍6','教师工号6','教师姓名6','版权归属6','申请时间6','通过','审核情况6','学院账号6','学院名称6','2022-03-20 10:50:13','是','');
/*!40000 ALTER TABLE `zhuzuoquanxiaoshen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-29 15:21:28
