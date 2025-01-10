-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootg15ia
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
-- Current Database: `springbootg15ia`
--

/*!40000 DROP DATABASE IF EXISTS `springbootg15ia`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootg15ia` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootg15ia`;

--
-- Table structure for table `chufangxinxi`
--

DROP TABLE IF EXISTS `chufangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chufangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `chufangmingcheng` varchar(200) DEFAULT NULL COMMENT '处方名称',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `danjia` int(11) DEFAULT NULL COMMENT '单价',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `beizhu` longtext COMMENT '备注',
  `caozuoriqi` date DEFAULT NULL COMMENT '操作日期',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='处方信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chufangxinxi`
--

LOCK TABLES `chufangxinxi` WRITE;
/*!40000 ALTER TABLE `chufangxinxi` DISABLE KEYS */;
INSERT INTO `chufangxinxi` VALUES (101,'2022-03-26 09:13:54','工号1','医生姓名1','医院名称1','科室名称1','处方名称1','药品名称1',1,1,1,'账号1','姓名1','备注1','2022-03-26','未支付'),(102,'2022-03-26 09:13:54','工号2','医生姓名2','医院名称2','科室名称2','处方名称2','药品名称2',2,2,2,'账号2','姓名2','备注2','2022-03-26','未支付'),(103,'2022-03-26 09:13:54','工号3','医生姓名3','医院名称3','科室名称3','处方名称3','药品名称3',3,3,3,'账号3','姓名3','备注3','2022-03-26','未支付'),(104,'2022-03-26 09:13:54','工号4','医生姓名4','医院名称4','科室名称4','处方名称4','药品名称4',4,4,4,'账号4','姓名4','备注4','2022-03-26','未支付'),(105,'2022-03-26 09:13:54','工号5','医生姓名5','医院名称5','科室名称5','处方名称5','药品名称5',5,5,5,'账号5','姓名5','备注5','2022-03-26','未支付'),(106,'2022-03-26 09:13:54','工号6','医生姓名6','医院名称6','科室名称6','处方名称6','药品名称6',6,6,6,'账号6','姓名6','备注6','2022-03-26','未支付');
/*!40000 ALTER TABLE `chufangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `guahaoyuyue`
--

DROP TABLE IF EXISTS `guahaoyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guahaoyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  `yiyuandizhi` varchar(200) DEFAULT NULL COMMENT '医院地址',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `keshidizhi` varchar(200) DEFAULT NULL COMMENT '科室地址',
  `guahaofei` varchar(200) DEFAULT NULL COMMENT '挂号费',
  `yuyueriqi` date DEFAULT NULL COMMENT '预约日期',
  `yuyuebeizhu` varchar(200) DEFAULT NULL COMMENT '预约备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='挂号预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guahaoyuyue`
--

LOCK TABLES `guahaoyuyue` WRITE;
/*!40000 ALTER TABLE `guahaoyuyue` DISABLE KEYS */;
INSERT INTO `guahaoyuyue` VALUES (71,'2022-03-26 09:13:54','1111111111','工号1','医生姓名1','医院名称1','医院地址1','科室名称1','科室地址1','挂号费1','2022-03-26','预约备注1','账号1','姓名1','手机号码1','是','','未支付'),(72,'2022-03-26 09:13:54','2222222222','工号2','医生姓名2','医院名称2','医院地址2','科室名称2','科室地址2','挂号费2','2022-03-26','预约备注2','账号2','姓名2','手机号码2','是','','未支付'),(73,'2022-03-26 09:13:54','3333333333','工号3','医生姓名3','医院名称3','医院地址3','科室名称3','科室地址3','挂号费3','2022-03-26','预约备注3','账号3','姓名3','手机号码3','是','','未支付'),(74,'2022-03-26 09:13:54','4444444444','工号4','医生姓名4','医院名称4','医院地址4','科室名称4','科室地址4','挂号费4','2022-03-26','预约备注4','账号4','姓名4','手机号码4','是','','未支付'),(75,'2022-03-26 09:13:54','5555555555','工号5','医生姓名5','医院名称5','医院地址5','科室名称5','科室地址5','挂号费5','2022-03-26','预约备注5','账号5','姓名5','手机号码5','是','','未支付'),(76,'2022-03-26 09:13:54','6666666666','工号6','医生姓名6','医院名称6','医院地址6','科室名称6','科室地址6','挂号费6','2022-03-26','预约备注6','账号6','姓名6','手机号码6','是','','未支付');
/*!40000 ALTER TABLE `guahaoyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hesuanjiance`
--

DROP TABLE IF EXISTS `hesuanjiance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hesuanjiance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiancemingcheng` varchar(200) NOT NULL COMMENT '检测名称',
  `jiancefengmian` varchar(200) DEFAULT NULL COMMENT '检测封面',
  `jiancedidian` varchar(200) NOT NULL COMMENT '检测地点',
  `jianceleixing` varchar(200) DEFAULT NULL COMMENT '检测类型',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `feiyong` int(11) DEFAULT NULL COMMENT '费用',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='核酸检测';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hesuanjiance`
--

LOCK TABLES `hesuanjiance` WRITE;
/*!40000 ALTER TABLE `hesuanjiance` DISABLE KEYS */;
INSERT INTO `hesuanjiance` VALUES (61,'2022-03-26 09:13:54','检测名称1','upload/hesuanjiance_jiancefengmian1.jpg','检测地点1','免费','注意事项1',1,'2022-03-26'),(62,'2022-03-26 09:13:54','检测名称2','upload/hesuanjiance_jiancefengmian2.jpg','检测地点2','免费','注意事项2',2,'2022-03-26'),(63,'2022-03-26 09:13:54','检测名称3','upload/hesuanjiance_jiancefengmian3.jpg','检测地点3','免费','注意事项3',3,'2022-03-26'),(64,'2022-03-26 09:13:54','检测名称4','upload/hesuanjiance_jiancefengmian4.jpg','检测地点4','免费','注意事项4',4,'2022-03-26'),(65,'2022-03-26 09:13:54','检测名称5','upload/hesuanjiance_jiancefengmian5.jpg','检测地点5','免费','注意事项5',5,'2022-03-26'),(66,'2022-03-26 09:13:54','检测名称6','upload/hesuanjiance_jiancefengmian6.jpg','检测地点6','免费','注意事项6',6,'2022-03-26');
/*!40000 ALTER TABLE `hesuanjiance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hesuanyuyue`
--

DROP TABLE IF EXISTS `hesuanyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hesuanyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiancemingcheng` varchar(200) DEFAULT NULL COMMENT '检测名称',
  `jiancedidian` varchar(200) DEFAULT NULL COMMENT '检测地点',
  `jianceleixing` varchar(200) DEFAULT NULL COMMENT '检测类型',
  `feiyong` varchar(200) DEFAULT NULL COMMENT '费用',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenqingyuanyin` varchar(200) DEFAULT NULL COMMENT '申请原因',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='核酸预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hesuanyuyue`
--

LOCK TABLES `hesuanyuyue` WRITE;
/*!40000 ALTER TABLE `hesuanyuyue` DISABLE KEYS */;
INSERT INTO `hesuanyuyue` VALUES (141,'2022-03-26 09:13:54','检测名称1','检测地点1','检测类型1','费用1','账号1','姓名1','申请原因1','2022-03-26','是','','未支付'),(142,'2022-03-26 09:13:54','检测名称2','检测地点2','检测类型2','费用2','账号2','姓名2','申请原因2','2022-03-26','是','','未支付'),(143,'2022-03-26 09:13:54','检测名称3','检测地点3','检测类型3','费用3','账号3','姓名3','申请原因3','2022-03-26','是','','未支付'),(144,'2022-03-26 09:13:54','检测名称4','检测地点4','检测类型4','费用4','账号4','姓名4','申请原因4','2022-03-26','是','','未支付'),(145,'2022-03-26 09:13:54','检测名称5','检测地点5','检测类型5','费用5','账号5','姓名5','申请原因5','2022-03-26','是','','未支付'),(146,'2022-03-26 09:13:54','检测名称6','检测地点6','检测类型6','费用6','账号6','姓名6','申请原因6','2022-03-26','是','','未支付');
/*!40000 ALTER TABLE `hesuanyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuan`
--

DROP TABLE IF EXISTS `huiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuan`
--

LOCK TABLES `huiyuan` WRITE;
/*!40000 ALTER TABLE `huiyuan` DISABLE KEYS */;
INSERT INTO `huiyuan` VALUES (11,'2022-03-26 09:13:53','账号1','123456','姓名1','男','440300199101010001','13823888881','upload/huiyuan_xiangpian1.jpg'),(12,'2022-03-26 09:13:53','账号2','123456','姓名2','男','440300199202020002','13823888882','upload/huiyuan_xiangpian2.jpg'),(13,'2022-03-26 09:13:53','账号3','123456','姓名3','男','440300199303030003','13823888883','upload/huiyuan_xiangpian3.jpg'),(14,'2022-03-26 09:13:53','账号4','123456','姓名4','男','440300199404040004','13823888884','upload/huiyuan_xiangpian4.jpg'),(15,'2022-03-26 09:13:53','账号5','123456','姓名5','男','440300199505050005','13823888885','upload/huiyuan_xiangpian5.jpg'),(16,'2022-03-26 09:13:53','账号6','123456','姓名6','男','440300199606060006','13823888886','upload/huiyuan_xiangpian6.jpg');
/*!40000 ALTER TABLE `huiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiancejieguo`
--

DROP TABLE IF EXISTS `jiancejieguo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiancejieguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiancemingcheng` varchar(200) DEFAULT NULL COMMENT '检测名称',
  `jiancedidian` varchar(200) DEFAULT NULL COMMENT '检测地点',
  `jianceleixing` varchar(200) DEFAULT NULL COMMENT '检测类型',
  `feiyong` varchar(200) DEFAULT NULL COMMENT '费用',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jiancejieguo` varchar(200) NOT NULL COMMENT '检测结果',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `fasongriqi` date DEFAULT NULL COMMENT '发送日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='检测结果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiancejieguo`
--

LOCK TABLES `jiancejieguo` WRITE;
/*!40000 ALTER TABLE `jiancejieguo` DISABLE KEYS */;
INSERT INTO `jiancejieguo` VALUES (181,'2022-03-26 09:13:54','检测名称1','检测地点1','检测类型1','费用1','账号1','姓名1','阴性','备注1','2022-03-26'),(182,'2022-03-26 09:13:54','检测名称2','检测地点2','检测类型2','费用2','账号2','姓名2','阴性','备注2','2022-03-26'),(183,'2022-03-26 09:13:54','检测名称3','检测地点3','检测类型3','费用3','账号3','姓名3','阴性','备注3','2022-03-26'),(184,'2022-03-26 09:13:54','检测名称4','检测地点4','检测类型4','费用4','账号4','姓名4','阴性','备注4','2022-03-26'),(185,'2022-03-26 09:13:54','检测名称5','检测地点5','检测类型5','费用5','账号5','姓名5','阴性','备注5','2022-03-26'),(186,'2022-03-26 09:13:54','检测名称6','检测地点6','检测类型6','费用6','账号6','姓名6','阴性','备注6','2022-03-26');
/*!40000 ALTER TABLE `jiancejieguo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankangdangan`
--

DROP TABLE IF EXISTS `jiankangdangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankangdangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danganbianhao` varchar(200) DEFAULT NULL COMMENT '档案编号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shengaocm` varchar(200) DEFAULT NULL COMMENT '身高cm',
  `tizhongkg` varchar(200) DEFAULT NULL COMMENT '体重kg',
  `xueyapa` varchar(200) DEFAULT NULL COMMENT '血压pa',
  `xuetangg` varchar(200) DEFAULT NULL COMMENT '血糖g',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `shuimianshijian` varchar(200) DEFAULT NULL COMMENT '睡眠时间',
  `yundongqingkuang` varchar(200) DEFAULT NULL COMMENT '运动情况',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `danganbianhao` (`danganbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='健康档案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankangdangan`
--

LOCK TABLES `jiankangdangan` WRITE;
/*!40000 ALTER TABLE `jiankangdangan` DISABLE KEYS */;
INSERT INTO `jiankangdangan` VALUES (171,'2022-03-26 09:13:54','档案编号1','账号1','姓名1','身高cm1','体重kg1','血压pa1','血糖g1','体温1','睡眠时间1','运动情况1','','备注1','2022-03-26'),(172,'2022-03-26 09:13:54','档案编号2','账号2','姓名2','身高cm2','体重kg2','血压pa2','血糖g2','体温2','睡眠时间2','运动情况2','','备注2','2022-03-26'),(173,'2022-03-26 09:13:54','档案编号3','账号3','姓名3','身高cm3','体重kg3','血压pa3','血糖g3','体温3','睡眠时间3','运动情况3','','备注3','2022-03-26'),(174,'2022-03-26 09:13:54','档案编号4','账号4','姓名4','身高cm4','体重kg4','血压pa4','血糖g4','体温4','睡眠时间4','运动情况4','','备注4','2022-03-26'),(175,'2022-03-26 09:13:54','档案编号5','账号5','姓名5','身高cm5','体重kg5','血压pa5','血糖g5','体温5','睡眠时间5','运动情况5','','备注5','2022-03-26'),(176,'2022-03-26 09:13:54','档案编号6','账号6','姓名6','身高cm6','体重kg6','血压pa6','血糖g6','体温6','睡眠时间6','运动情况6','','备注6','2022-03-26');
/*!40000 ALTER TABLE `jiankangdangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankangzixun`
--

DROP TABLE IF EXISTS `jiankangzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankangzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunbiaoti` varchar(200) NOT NULL COMMENT '资讯标题',
  `zixunfengmian` varchar(200) DEFAULT NULL COMMENT '资讯封面',
  `zixunleixing` varchar(200) DEFAULT NULL COMMENT '资讯类型',
  `zixunjianjie` longtext COMMENT '资讯简介',
  `zixunneirong` longtext COMMENT '资讯内容',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='健康资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankangzixun`
--

LOCK TABLES `jiankangzixun` WRITE;
/*!40000 ALTER TABLE `jiankangzixun` DISABLE KEYS */;
INSERT INTO `jiankangzixun` VALUES (161,'2022-03-26 09:13:54','资讯标题1','upload/jiankangzixun_zixunfengmian1.jpg','医疗常识','资讯简介1','资讯内容1','工号1','医生姓名1','2022-03-26'),(162,'2022-03-26 09:13:54','资讯标题2','upload/jiankangzixun_zixunfengmian2.jpg','医疗常识','资讯简介2','资讯内容2','工号2','医生姓名2','2022-03-26'),(163,'2022-03-26 09:13:54','资讯标题3','upload/jiankangzixun_zixunfengmian3.jpg','医疗常识','资讯简介3','资讯内容3','工号3','医生姓名3','2022-03-26'),(164,'2022-03-26 09:13:54','资讯标题4','upload/jiankangzixun_zixunfengmian4.jpg','医疗常识','资讯简介4','资讯内容4','工号4','医生姓名4','2022-03-26'),(165,'2022-03-26 09:13:54','资讯标题5','upload/jiankangzixun_zixunfengmian5.jpg','医疗常识','资讯简介5','资讯内容5','工号5','医生姓名5','2022-03-26'),(166,'2022-03-26 09:13:54','资讯标题6','upload/jiankangzixun_zixunfengmian6.jpg','医疗常识','资讯简介6','资讯内容6','工号6','医生姓名6','2022-03-26');
/*!40000 ALTER TABLE `jiankangzixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jikongtongzhi`
--

DROP TABLE IF EXISTS `jikongtongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jikongtongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='疾控通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jikongtongzhi`
--

LOCK TABLES `jikongtongzhi` WRITE;
/*!40000 ALTER TABLE `jikongtongzhi` DISABLE KEYS */;
INSERT INTO `jikongtongzhi` VALUES (151,'2022-03-26 09:13:54','标题1','upload/jikongtongzhi_fengmian1.jpg','注意事项1','简介1','内容1','工号1','医生姓名1','2022-03-26'),(152,'2022-03-26 09:13:54','标题2','upload/jikongtongzhi_fengmian2.jpg','注意事项2','简介2','内容2','工号2','医生姓名2','2022-03-26'),(153,'2022-03-26 09:13:54','标题3','upload/jikongtongzhi_fengmian3.jpg','注意事项3','简介3','内容3','工号3','医生姓名3','2022-03-26'),(154,'2022-03-26 09:13:54','标题4','upload/jikongtongzhi_fengmian4.jpg','注意事项4','简介4','内容4','工号4','医生姓名4','2022-03-26'),(155,'2022-03-26 09:13:54','标题5','upload/jikongtongzhi_fengmian5.jpg','注意事项5','简介5','内容5','工号5','医生姓名5','2022-03-26'),(156,'2022-03-26 09:13:54','标题6','upload/jikongtongzhi_fengmian6.jpg','注意事项6','简介6','内容6','工号6','医生姓名6','2022-03-26');
/*!40000 ALTER TABLE `jikongtongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keshixinxi`
--

DROP TABLE IF EXISTS `keshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshimingcheng` varchar(200) NOT NULL COMMENT '科室名称',
  `keshidizhi` varchar(200) NOT NULL COMMENT '科室地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='科室信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keshixinxi`
--

LOCK TABLES `keshixinxi` WRITE;
/*!40000 ALTER TABLE `keshixinxi` DISABLE KEYS */;
INSERT INTO `keshixinxi` VALUES (41,'2022-03-26 09:13:53','科室名称1','科室地址1'),(42,'2022-03-26 09:13:53','科室名称2','科室地址2'),(43,'2022-03-26 09:13:53','科室名称3','科室地址3'),(44,'2022-03-26 09:13:53','科室名称4','科室地址4'),(45,'2022-03-26 09:13:53','科室名称5','科室地址5'),(46,'2022-03-26 09:13:53','科室名称6','科室地址6');
/*!40000 ALTER TABLE `keshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8 COMMENT='就诊引导';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (241,'2022-03-26 09:13:54','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(242,'2022-03-26 09:13:54','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(243,'2022-03-26 09:13:54','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(244,'2022-03-26 09:13:54','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(245,'2022-03-26 09:13:54','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(246,'2022-03-26 09:13:54','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiyongxuzhi`
--

DROP TABLE IF EXISTS `shiyongxuzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiyongxuzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COMMENT='使用须知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiyongxuzhi`
--

LOCK TABLES `shiyongxuzhi` WRITE;
/*!40000 ALTER TABLE `shiyongxuzhi` DISABLE KEYS */;
INSERT INTO `shiyongxuzhi` VALUES (211,'2022-03-26 09:13:54','标题1','内容1'),(212,'2022-03-26 09:13:54','标题2','内容2'),(213,'2022-03-26 09:13:54','标题3','内容3'),(214,'2022-03-26 09:13:54','标题4','内容4'),(215,'2022-03-26 09:13:54','标题5','内容5'),(216,'2022-03-26 09:13:54','标题6','内容6');
/*!40000 ALTER TABLE `shiyongxuzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiaoxingmaji`
--

DROP TABLE IF EXISTS `tiaoxingmaji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiaoxingmaji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8 COMMENT='条形码机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiaoxingmaji`
--

LOCK TABLES `tiaoxingmaji` WRITE;
/*!40000 ALTER TABLE `tiaoxingmaji` DISABLE KEYS */;
INSERT INTO `tiaoxingmaji` VALUES (221,'2022-03-26 09:13:54','名称1','upload/tiaoxingmaji_tupian1.jpg','账号1','姓名1','备注1'),(222,'2022-03-26 09:13:54','名称2','upload/tiaoxingmaji_tupian2.jpg','账号2','姓名2','备注2'),(223,'2022-03-26 09:13:54','名称3','upload/tiaoxingmaji_tupian3.jpg','账号3','姓名3','备注3'),(224,'2022-03-26 09:13:54','名称4','upload/tiaoxingmaji_tupian4.jpg','账号4','姓名4','备注4'),(225,'2022-03-26 09:13:54','名称5','upload/tiaoxingmaji_tupian5.jpg','账号5','姓名5','备注5'),(226,'2022-03-26 09:13:54','名称6','upload/tiaoxingmaji_tupian6.jpg','账号6','姓名6','备注6');
/*!40000 ALTER TABLE `tiaoxingmaji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tijianbaogao`
--

DROP TABLE IF EXISTS `tijianbaogao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tijianbaogao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tijianmingcheng` varchar(200) NOT NULL COMMENT '体检名称',
  `tijianbaogao` varchar(200) DEFAULT NULL COMMENT '体检报告',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `tixingxinxi` varchar(200) DEFAULT NULL COMMENT '提醒信息',
  `fasongriqi` date DEFAULT NULL COMMENT '发送日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='体检报告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tijianbaogao`
--

LOCK TABLES `tijianbaogao` WRITE;
/*!40000 ALTER TABLE `tijianbaogao` DISABLE KEYS */;
INSERT INTO `tijianbaogao` VALUES (201,'2022-03-26 09:13:54','体检名称1','','工号1','医生姓名1','科室名称1','账号1','姓名1','手机号码1','备注1','提醒信息1','2022-03-26'),(202,'2022-03-26 09:13:54','体检名称2','','工号2','医生姓名2','科室名称2','账号2','姓名2','手机号码2','备注2','提醒信息2','2022-03-26'),(203,'2022-03-26 09:13:54','体检名称3','','工号3','医生姓名3','科室名称3','账号3','姓名3','手机号码3','备注3','提醒信息3','2022-03-26'),(204,'2022-03-26 09:13:54','体检名称4','','工号4','医生姓名4','科室名称4','账号4','姓名4','手机号码4','备注4','提醒信息4','2022-03-26'),(205,'2022-03-26 09:13:54','体检名称5','','工号5','医生姓名5','科室名称5','账号5','姓名5','手机号码5','备注5','提醒信息5','2022-03-26'),(206,'2022-03-26 09:13:54','体检名称6','','工号6','医生姓名6','科室名称6','账号6','姓名6','手机号码6','备注6','提醒信息6','2022-03-26');
/*!40000 ALTER TABLE `tijianbaogao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tijianxinxi`
--

DROP TABLE IF EXISTS `tijianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tijianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tijianmingcheng` varchar(200) NOT NULL COMMENT '体检名称',
  `tijianneirong` longtext COMMENT '体检内容',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='体检信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tijianxinxi`
--

LOCK TABLES `tijianxinxi` WRITE;
/*!40000 ALTER TABLE `tijianxinxi` DISABLE KEYS */;
INSERT INTO `tijianxinxi` VALUES (191,'2022-03-26 09:13:54','体检名称1','体检内容1','工号1','医生姓名1','科室名称1','账号1','姓名1','手机号码1','备注1','2022-03-26'),(192,'2022-03-26 09:13:54','体检名称2','体检内容2','工号2','医生姓名2','科室名称2','账号2','姓名2','手机号码2','备注2','2022-03-26'),(193,'2022-03-26 09:13:54','体检名称3','体检内容3','工号3','医生姓名3','科室名称3','账号3','姓名3','手机号码3','备注3','2022-03-26'),(194,'2022-03-26 09:13:54','体检名称4','体检内容4','工号4','医生姓名4','科室名称4','账号4','姓名4','手机号码4','备注4','2022-03-26'),(195,'2022-03-26 09:13:54','体检名称5','体检内容5','工号5','医生姓名5','科室名称5','账号5','姓名5','手机号码5','备注5','2022-03-26'),(196,'2022-03-26 09:13:54','体检名称6','体检内容6','工号6','医生姓名6','科室名称6','账号6','姓名6','手机号码6','备注6','2022-03-26');
/*!40000 ALTER TABLE `tijianxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'账号1','huiyuan','会员','p8gdl2h63o55qxrw38uspyfcub29snzu','2022-03-26 09:16:43','2022-03-26 10:16:43'),(2,22,'工号2','yisheng','医生','mj912ufrwlblt95u4yb89j72ic8vamt6','2022-03-26 09:19:00','2022-03-26 10:19:00'),(3,1,'abo','users','管理员','mbia9ngoay4qscazvogj12fuu9j222xb','2022-03-26 09:19:23','2022-03-26 10:19:23');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-26 09:13:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinxinxi`
--

DROP TABLE IF EXISTS `yaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `yaopintupian` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `yaopinjianjie` longtext COMMENT '药品简介',
  `yaopingongxiao` varchar(200) DEFAULT NULL COMMENT '药品功效',
  `fuyongfangshi` varchar(200) DEFAULT NULL COMMENT '服用方式',
  `danjia` int(11) DEFAULT NULL COMMENT '单价',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT '生产商',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='药品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinxinxi`
--

LOCK TABLES `yaopinxinxi` WRITE;
/*!40000 ALTER TABLE `yaopinxinxi` DISABLE KEYS */;
INSERT INTO `yaopinxinxi` VALUES (81,'2022-03-26 09:13:54','药品名称1','upload/yaopinxinxi_yaopintupian1.jpg','药品简介1','药品功效1','服用方式1',1,'生产商1'),(82,'2022-03-26 09:13:54','药品名称2','upload/yaopinxinxi_yaopintupian2.jpg','药品简介2','药品功效2','服用方式2',2,'生产商2'),(83,'2022-03-26 09:13:54','药品名称3','upload/yaopinxinxi_yaopintupian3.jpg','药品简介3','药品功效3','服用方式3',3,'生产商3'),(84,'2022-03-26 09:13:54','药品名称4','upload/yaopinxinxi_yaopintupian4.jpg','药品简介4','药品功效4','服用方式4',4,'生产商4'),(85,'2022-03-26 09:13:54','药品名称5','upload/yaopinxinxi_yaopintupian5.jpg','药品简介5','药品功效5','服用方式5',5,'生产商5'),(86,'2022-03-26 09:13:54','药品名称6','upload/yaopinxinxi_yaopintupian6.jpg','药品简介6','药品功效6','服用方式6',6,'生产商6');
/*!40000 ALTER TABLE `yaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  `yiyuandizhi` varchar(200) DEFAULT NULL COMMENT '医院地址',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `keshidizhi` varchar(200) DEFAULT NULL COMMENT '科室地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (21,'2022-03-26 09:13:53','工号1','123456','医生姓名1','男','440300199101010001','13823888881','upload/yisheng_xiangpian1.jpg','医院名称1','医院地址1','科室名称1','科室地址1'),(22,'2022-03-26 09:13:53','工号2','123456','医生姓名2','男','440300199202020002','13823888882','upload/yisheng_xiangpian2.jpg','医院名称2','医院地址2','科室名称2','科室地址2'),(23,'2022-03-26 09:13:53','工号3','123456','医生姓名3','男','440300199303030003','13823888883','upload/yisheng_xiangpian3.jpg','医院名称3','医院地址3','科室名称3','科室地址3'),(24,'2022-03-26 09:13:53','工号4','123456','医生姓名4','男','440300199404040004','13823888884','upload/yisheng_xiangpian4.jpg','医院名称4','医院地址4','科室名称4','科室地址4'),(25,'2022-03-26 09:13:53','工号5','123456','医生姓名5','男','440300199505050005','13823888885','upload/yisheng_xiangpian5.jpg','医院名称5','医院地址5','科室名称5','科室地址5'),(26,'2022-03-26 09:13:53','工号6','123456','医生姓名6','男','440300199606060006','13823888886','upload/yisheng_xiangpian6.jpg','医院名称6','医院地址6','科室名称6','科室地址6');
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yiyuanxinxi`
--

DROP TABLE IF EXISTS `yiyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yiyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanmingcheng` varchar(200) NOT NULL COMMENT '医院名称',
  `yiyuandizhi` varchar(200) NOT NULL COMMENT '医院地址',
  `yiyuantupian` varchar(200) DEFAULT NULL COMMENT '医院图片',
  `yuanzhang` varchar(200) NOT NULL COMMENT '院长',
  `chenglishijian` date DEFAULT NULL COMMENT '成立时间',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yiyuanjianjie` longtext COMMENT '医院简介',
  `yiyuanxiangqing` longtext COMMENT '医院详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='医院信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yiyuanxinxi`
--

LOCK TABLES `yiyuanxinxi` WRITE;
/*!40000 ALTER TABLE `yiyuanxinxi` DISABLE KEYS */;
INSERT INTO `yiyuanxinxi` VALUES (31,'2022-03-26 09:13:53','医院名称1','医院地址1','upload/yiyuanxinxi_yiyuantupian1.jpg','院长1','2022-03-26','13823888881','医院简介1','医院详情1'),(32,'2022-03-26 09:13:53','医院名称2','医院地址2','upload/yiyuanxinxi_yiyuantupian2.jpg','院长2','2022-03-26','13823888882','医院简介2','医院详情2'),(33,'2022-03-26 09:13:53','医院名称3','医院地址3','upload/yiyuanxinxi_yiyuantupian3.jpg','院长3','2022-03-26','13823888883','医院简介3','医院详情3'),(34,'2022-03-26 09:13:53','医院名称4','医院地址4','upload/yiyuanxinxi_yiyuantupian4.jpg','院长4','2022-03-26','13823888884','医院简介4','医院详情4'),(35,'2022-03-26 09:13:53','医院名称5','医院地址5','upload/yiyuanxinxi_yiyuantupian5.jpg','院长5','2022-03-26','13823888885','医院简介5','医院详情5'),(36,'2022-03-26 09:13:53','医院名称6','医院地址6','upload/yiyuanxinxi_yiyuantupian6.jpg','院长6','2022-03-26','13823888886','医院简介6','医院详情6');
/*!40000 ALTER TABLE `yiyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianzixun`
--

DROP TABLE IF EXISTS `zaixianzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zixunneirong` varchar(200) DEFAULT NULL COMMENT '咨询内容',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zixunriqi` date DEFAULT NULL COMMENT '咨询日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='在线咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianzixun`
--

LOCK TABLES `zaixianzixun` WRITE;
/*!40000 ALTER TABLE `zaixianzixun` DISABLE KEYS */;
INSERT INTO `zaixianzixun` VALUES (121,'2022-03-26 09:13:54','工号1','医生姓名1','咨询内容1','账号1','姓名1','2022-03-26'),(122,'2022-03-26 09:13:54','工号2','医生姓名2','咨询内容2','账号2','姓名2','2022-03-26'),(123,'2022-03-26 09:13:54','工号3','医生姓名3','咨询内容3','账号3','姓名3','2022-03-26'),(124,'2022-03-26 09:13:54','工号4','医生姓名4','咨询内容4','账号4','姓名4','2022-03-26'),(125,'2022-03-26 09:13:54','工号5','医生姓名5','咨询内容5','账号5','姓名5','2022-03-26'),(126,'2022-03-26 09:13:54','工号6','医生姓名6','咨询内容6','账号6','姓名6','2022-03-26');
/*!40000 ALTER TABLE `zaixianzixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhenduanxinxi`
--

DROP TABLE IF EXISTS `zhenduanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhenduanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `zhenduanmingcheng` varchar(200) NOT NULL COMMENT '诊断名称',
  `bingqingjilu` longtext COMMENT '病情记录',
  `zhenduanneirong` longtext COMMENT '诊断内容',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhenduanriqi` date DEFAULT NULL COMMENT '诊断日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='诊断信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhenduanxinxi`
--

LOCK TABLES `zhenduanxinxi` WRITE;
/*!40000 ALTER TABLE `zhenduanxinxi` DISABLE KEYS */;
INSERT INTO `zhenduanxinxi` VALUES (91,'2022-03-26 09:13:54','工号1','医生姓名1','医院名称1','科室名称1','诊断名称1','病情记录1','诊断内容1','账号1','姓名1','2022-03-26'),(92,'2022-03-26 09:13:54','工号2','医生姓名2','医院名称2','科室名称2','诊断名称2','病情记录2','诊断内容2','账号2','姓名2','2022-03-26'),(93,'2022-03-26 09:13:54','工号3','医生姓名3','医院名称3','科室名称3','诊断名称3','病情记录3','诊断内容3','账号3','姓名3','2022-03-26'),(94,'2022-03-26 09:13:54','工号4','医生姓名4','医院名称4','科室名称4','诊断名称4','病情记录4','诊断内容4','账号4','姓名4','2022-03-26'),(95,'2022-03-26 09:13:54','工号5','医生姓名5','医院名称5','科室名称5','诊断名称5','病情记录5','诊断内容5','账号5','姓名5','2022-03-26'),(96,'2022-03-26 09:13:54','工号6','医生姓名6','医院名称6','科室名称6','诊断名称6','病情记录6','诊断内容6','账号6','姓名6','2022-03-26');
/*!40000 ALTER TABLE `zhenduanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuyuanxinxi`
--

DROP TABLE IF EXISTS `zhuyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `zhuyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '住院名称',
  `feiyong` int(11) DEFAULT NULL COMMENT '费用',
  `zhuyuanriqi` date DEFAULT NULL COMMENT '住院日期',
  `zhuyuanbeizhu` longtext COMMENT '住院备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='住院信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuyuanxinxi`
--

LOCK TABLES `zhuyuanxinxi` WRITE;
/*!40000 ALTER TABLE `zhuyuanxinxi` DISABLE KEYS */;
INSERT INTO `zhuyuanxinxi` VALUES (111,'2022-03-26 09:13:54','工号1','医生姓名1','医院名称1','科室名称1','住院名称1',1,'2022-03-26','住院备注1','账号1','姓名1','未支付'),(112,'2022-03-26 09:13:54','工号2','医生姓名2','医院名称2','科室名称2','住院名称2',2,'2022-03-26','住院备注2','账号2','姓名2','未支付'),(113,'2022-03-26 09:13:54','工号3','医生姓名3','医院名称3','科室名称3','住院名称3',3,'2022-03-26','住院备注3','账号3','姓名3','未支付'),(114,'2022-03-26 09:13:54','工号4','医生姓名4','医院名称4','科室名称4','住院名称4',4,'2022-03-26','住院备注4','账号4','姓名4','未支付'),(115,'2022-03-26 09:13:54','工号5','医生姓名5','医院名称5','科室名称5','住院名称5',5,'2022-03-26','住院备注5','账号5','姓名5','未支付'),(116,'2022-03-26 09:13:54','工号6','医生姓名6','医院名称6','科室名称6','住院名称6',6,'2022-03-26','住院备注6','账号6','姓名6','未支付');
/*!40000 ALTER TABLE `zhuyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zixunhuifu`
--

DROP TABLE IF EXISTS `zixunhuifu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zixunhuifu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zixunneirong` varchar(200) DEFAULT NULL COMMENT '咨询内容',
  `huifuneirong` longtext COMMENT '回复内容',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `huifuriqi` date DEFAULT NULL COMMENT '回复日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='咨询回复';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zixunhuifu`
--

LOCK TABLES `zixunhuifu` WRITE;
/*!40000 ALTER TABLE `zixunhuifu` DISABLE KEYS */;
INSERT INTO `zixunhuifu` VALUES (131,'2022-03-26 09:13:54','工号1','医生姓名1','咨询内容1','回复内容1','账号1','姓名1','2022-03-26'),(132,'2022-03-26 09:13:54','工号2','医生姓名2','咨询内容2','回复内容2','账号2','姓名2','2022-03-26'),(133,'2022-03-26 09:13:54','工号3','医生姓名3','咨询内容3','回复内容3','账号3','姓名3','2022-03-26'),(134,'2022-03-26 09:13:54','工号4','医生姓名4','咨询内容4','回复内容4','账号4','姓名4','2022-03-26'),(135,'2022-03-26 09:13:54','工号5','医生姓名5','咨询内容5','回复内容5','账号5','姓名5','2022-03-26'),(136,'2022-03-26 09:13:54','工号6','医生姓名6','咨询内容6','回复内容6','账号6','姓名6','2022-03-26');
/*!40000 ALTER TABLE `zixunhuifu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuozhenxinxi`
--

DROP TABLE IF EXISTS `zuozhenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuozhenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  `yiyuandizhi` varchar(200) DEFAULT NULL COMMENT '医院地址',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `keshidizhi` varchar(200) DEFAULT NULL COMMENT '科室地址',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  `guahaofei` int(11) DEFAULT NULL COMMENT '挂号费',
  `yishengjianjie` longtext COMMENT '医生简介',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='坐诊信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuozhenxinxi`
--

LOCK TABLES `zuozhenxinxi` WRITE;
/*!40000 ALTER TABLE `zuozhenxinxi` DISABLE KEYS */;
INSERT INTO `zuozhenxinxi` VALUES (51,'2022-03-26 09:13:53','工号1','医生姓名1','性别1','医院名称1','医院地址1','科室名称1','科室地址1','upload/zuozhenxinxi_xiangpian1.jpg',1,'医生简介1','是',''),(52,'2022-03-26 09:13:53','工号2','医生姓名2','性别2','医院名称2','医院地址2','科室名称2','科室地址2','upload/zuozhenxinxi_xiangpian2.jpg',2,'医生简介2','是',''),(53,'2022-03-26 09:13:53','工号3','医生姓名3','性别3','医院名称3','医院地址3','科室名称3','科室地址3','upload/zuozhenxinxi_xiangpian3.jpg',3,'医生简介3','是',''),(54,'2022-03-26 09:13:53','工号4','医生姓名4','性别4','医院名称4','医院地址4','科室名称4','科室地址4','upload/zuozhenxinxi_xiangpian4.jpg',4,'医生简介4','是',''),(55,'2022-03-26 09:13:53','工号5','医生姓名5','性别5','医院名称5','医院地址5','科室名称5','科室地址5','upload/zuozhenxinxi_xiangpian5.jpg',5,'医生简介5','是',''),(56,'2022-03-26 09:13:53','工号6','医生姓名6','性别6','医院名称6','医院地址6','科室名称6','科室地址6','upload/zuozhenxinxi_xiangpian6.jpg',6,'医生简介6','是','');
/*!40000 ALTER TABLE `zuozhenxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-06 11:54:47
