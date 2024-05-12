-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot1k743
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-01-13 08:53:23',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-01-13 08:53:23',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-13 08:53:23',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-13 08:53:23',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-13 08:53:23',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-13 08:53:23',6,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `binglijiuzhenxinxi`
--

DROP TABLE IF EXISTS `binglijiuzhenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `binglijiuzhenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanhao` varchar(200) DEFAULT NULL COMMENT '会员号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `yaopinyongliang` longtext COMMENT '药品用量',
  `jiuzhenxinxi` longtext COMMENT '就诊信息',
  `jiuzhenshijian` date DEFAULT NULL COMMENT '就诊时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='病例就诊信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binglijiuzhenxinxi`
--

LOCK TABLES `binglijiuzhenxinxi` WRITE;
/*!40000 ALTER TABLE `binglijiuzhenxinxi` DISABLE KEYS */;
INSERT INTO `binglijiuzhenxinxi` VALUES (21,'2021-01-13 08:53:23','会员号1','姓名1','性别1','手机1','年龄1','身份证1','药品用量1','就诊信息1','2021-01-13'),(22,'2021-01-13 08:53:23','会员号2','姓名2','性别2','手机2','年龄2','身份证2','药品用量2','就诊信息2','2021-01-13'),(23,'2021-01-13 08:53:23','会员号3','姓名3','性别3','手机3','年龄3','身份证3','药品用量3','就诊信息3','2021-01-13'),(24,'2021-01-13 08:53:23','会员号4','姓名4','性别4','手机4','年龄4','身份证4','药品用量4','就诊信息4','2021-01-13'),(25,'2021-01-13 08:53:23','会员号5','姓名5','性别5','手机5','年龄5','身份证5','药品用量5','就诊信息5','2021-01-13'),(26,'2021-01-13 08:53:23','会员号6','姓名6','性别6','手机6','年龄6','身份证6','药品用量6','就诊信息6','2021-01-13');
/*!40000 ALTER TABLE `binglijiuzhenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'yachibaojianchanpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot1k743/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot1k743/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot1k743/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyachibaojianchanpin`
--

DROP TABLE IF EXISTS `discussyachibaojianchanpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyachibaojianchanpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='牙齿保健产品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyachibaojianchanpin`
--

LOCK TABLES `discussyachibaojianchanpin` WRITE;
/*!40000 ALTER TABLE `discussyachibaojianchanpin` DISABLE KEYS */;
INSERT INTO `discussyachibaojianchanpin` VALUES (131,'2021-01-13 08:53:23',1,1,'评论内容1','回复内容1'),(132,'2021-01-13 08:53:23',2,2,'评论内容2','回复内容2'),(133,'2021-01-13 08:53:23',3,3,'评论内容3','回复内容3'),(134,'2021-01-13 08:53:23',4,4,'评论内容4','回复内容4'),(135,'2021-01-13 08:53:23',5,5,'评论内容5','回复内容5'),(136,'2021-01-13 08:53:23',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussyachibaojianchanpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuchatixing`
--

DROP TABLE IF EXISTS `fuchatixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuchatixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanhao` varchar(200) DEFAULT NULL COMMENT '会员号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tixingneirong` longtext COMMENT '提醒内容',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `fuchajiuzhenshijian` date DEFAULT NULL COMMENT '复查就诊时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='复查提醒';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuchatixing`
--

LOCK TABLES `fuchatixing` WRITE;
/*!40000 ALTER TABLE `fuchatixing` DISABLE KEYS */;
INSERT INTO `fuchatixing` VALUES (41,'2021-01-13 08:53:23','会员号1','姓名1','提醒内容1','注意事项1','2021-01-13'),(42,'2021-01-13 08:53:23','会员号2','姓名2','提醒内容2','注意事项2','2021-01-13'),(43,'2021-01-13 08:53:23','会员号3','姓名3','提醒内容3','注意事项3','2021-01-13'),(44,'2021-01-13 08:53:23','会员号4','姓名4','提醒内容4','注意事项4','2021-01-13'),(45,'2021-01-13 08:53:23','会员号5','姓名5','提醒内容5','注意事项5','2021-01-13'),(46,'2021-01-13 08:53:23','会员号6','姓名6','提醒内容6','注意事项6','2021-01-13');
/*!40000 ALTER TABLE `fuchatixing` ENABLE KEYS */;
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
  `huiyuanhao` varchar(200) NOT NULL COMMENT '会员号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jifen` int(11) DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuanhao` (`huiyuanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuan`
--

LOCK TABLES `huiyuan` WRITE;
/*!40000 ALTER TABLE `huiyuan` DISABLE KEYS */;
INSERT INTO `huiyuan` VALUES (11,'2021-01-13 08:53:23','会员1','123456','姓名1','年龄1','男','13823888881','773890001@qq.com',10000,100),(12,'2021-01-13 08:53:23','会员2','123456','姓名2','年龄2','男','13823888882','773890002@qq.com',10000,100),(13,'2021-01-13 08:53:23','会员3','123456','姓名3','年龄3','男','13823888883','773890003@qq.com',10000,100),(14,'2021-01-13 08:53:23','会员4','123456','姓名4','年龄4','男','13823888884','773890004@qq.com',10000,100),(15,'2021-01-13 08:53:23','会员5','123456','姓名5','年龄5','男','13823888885','773890005@qq.com',10000,100),(16,'2021-01-13 08:53:23','会员6','123456','姓名6','年龄6','男','13823888886','773890006@qq.com',10000,100);
/*!40000 ALTER TABLE `huiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (121,'2021-01-13 08:53:23',1,'用户名1','留言内容1','回复内容1'),(122,'2021-01-13 08:53:23',2,'用户名2','留言内容2','回复内容2'),(123,'2021-01-13 08:53:23',3,'用户名3','留言内容3','回复内容3'),(124,'2021-01-13 08:53:23',4,'用户名4','留言内容4','回复内容4'),(125,'2021-01-13 08:53:23',5,'用户名5','留言内容5','回复内容5'),(126,'2021-01-13 08:53:23',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
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
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='牙齿保护小知识';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-01-13 08:53:23','标题1','http://localhost:8080/springboot1k743/upload/news_picture1.jpg','内容1'),(112,'2021-01-13 08:53:23','标题2','http://localhost:8080/springboot1k743/upload/news_picture2.jpg','内容2'),(113,'2021-01-13 08:53:23','标题3','http://localhost:8080/springboot1k743/upload/news_picture3.jpg','内容3'),(114,'2021-01-13 08:53:23','标题4','http://localhost:8080/springboot1k743/upload/news_picture4.jpg','内容4'),(115,'2021-01-13 08:53:23','标题5','http://localhost:8080/springboot1k743/upload/news_picture5.jpg','内容5'),(116,'2021-01-13 08:53:23','标题6','http://localhost:8080/springboot1k743/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'yachibaojianchanpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-13 08:53:23');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yachibaojianchanpin`
--

DROP TABLE IF EXISTS `yachibaojianchanpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yachibaojianchanpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinbianhao` varchar(200) DEFAULT NULL COMMENT '产品编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinleixing` varchar(200) DEFAULT NULL COMMENT '产品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shiyongrenqun` longtext COMMENT '适用人群',
  `shiyongfangfa` longtext COMMENT '使用方法',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `chanpinjieshao` longtext COMMENT '产品介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `jifen` int(11) DEFAULT '-1' COMMENT '积分',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chanpinbianhao` (`chanpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='牙齿保健产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yachibaojianchanpin`
--

LOCK TABLES `yachibaojianchanpin` WRITE;
/*!40000 ALTER TABLE `yachibaojianchanpin` DISABLE KEYS */;
INSERT INTO `yachibaojianchanpin` VALUES (31,'2021-01-13 08:53:23','产品编号1','产品名称1','产品类型1','http://localhost:8080/springboot1k743/upload/yachibaojianchanpin_tupian1.jpg','适用人群1','使用方法1','注意事项1','产品介绍1',1,1,10000,99.9),(32,'2021-01-13 08:53:23','产品编号2','产品名称2','产品类型2','http://localhost:8080/springboot1k743/upload/yachibaojianchanpin_tupian2.jpg','适用人群2','使用方法2','注意事项2','产品介绍2',2,2,10000,99.9),(33,'2021-01-13 08:53:23','产品编号3','产品名称3','产品类型3','http://localhost:8080/springboot1k743/upload/yachibaojianchanpin_tupian3.jpg','适用人群3','使用方法3','注意事项3','产品介绍3',3,3,10000,99.9),(34,'2021-01-13 08:53:23','产品编号4','产品名称4','产品类型4','http://localhost:8080/springboot1k743/upload/yachibaojianchanpin_tupian4.jpg','适用人群4','使用方法4','注意事项4','产品介绍4',4,4,10000,99.9),(35,'2021-01-13 08:53:23','产品编号5','产品名称5','产品类型5','http://localhost:8080/springboot1k743/upload/yachibaojianchanpin_tupian5.jpg','适用人群5','使用方法5','注意事项5','产品介绍5',5,5,10000,99.9),(36,'2021-01-13 08:53:23','产品编号6','产品名称6','产品类型6','http://localhost:8080/springboot1k743/upload/yachibaojianchanpin_tupian6.jpg','适用人群6','使用方法6','注意事项6','产品介绍6',6,6,10000,99.9);
/*!40000 ALTER TABLE `yachibaojianchanpin` ENABLE KEYS */;
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
  `yaopinbianhao` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gongnengzhuzhi` longtext COMMENT '功能主治',
  `buliangfanying` longtext COMMENT '不良反应',
  `jinjishixiang` longtext COMMENT '禁忌事项',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='药品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinxinxi`
--

LOCK TABLES `yaopinxinxi` WRITE;
/*!40000 ALTER TABLE `yaopinxinxi` DISABLE KEYS */;
INSERT INTO `yaopinxinxi` VALUES (61,'2021-01-13 08:53:23','药品编号1','药品名称1','http://localhost:8080/springboot1k743/upload/yaopinxinxi_tupian1.jpg','功能主治1','不良反应1','禁忌事项1','备注1'),(62,'2021-01-13 08:53:23','药品编号2','药品名称2','http://localhost:8080/springboot1k743/upload/yaopinxinxi_tupian2.jpg','功能主治2','不良反应2','禁忌事项2','备注2'),(63,'2021-01-13 08:53:23','药品编号3','药品名称3','http://localhost:8080/springboot1k743/upload/yaopinxinxi_tupian3.jpg','功能主治3','不良反应3','禁忌事项3','备注3'),(64,'2021-01-13 08:53:23','药品编号4','药品名称4','http://localhost:8080/springboot1k743/upload/yaopinxinxi_tupian4.jpg','功能主治4','不良反应4','禁忌事项4','备注4'),(65,'2021-01-13 08:53:23','药品编号5','药品名称5','http://localhost:8080/springboot1k743/upload/yaopinxinxi_tupian5.jpg','功能主治5','不良反应5','禁忌事项5','备注5'),(66,'2021-01-13 08:53:23','药品编号6','药品名称6','http://localhost:8080/springboot1k743/upload/yaopinxinxi_tupian6.jpg','功能主治6','不良反应6','禁忌事项6','备注6');
/*!40000 ALTER TABLE `yaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyueguahao`
--

DROP TABLE IF EXISTS `yuyueguahao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyueguahao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanhao` varchar(200) DEFAULT NULL COMMENT '会员号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yuyuejiuzhenshijian` datetime DEFAULT NULL COMMENT '预约就诊时间',
  `beizhu` longtext COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='预约挂号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyueguahao`
--

LOCK TABLES `yuyueguahao` WRITE;
/*!40000 ALTER TABLE `yuyueguahao` DISABLE KEYS */;
INSERT INTO `yuyueguahao` VALUES (51,'2021-01-13 08:53:23','会员号1','姓名1','2021-01-13 16:53:23','备注1','否',''),(52,'2021-01-13 08:53:23','会员号2','姓名2','2021-01-13 16:53:23','备注2','否',''),(53,'2021-01-13 08:53:23','会员号3','姓名3','2021-01-13 16:53:23','备注3','否',''),(54,'2021-01-13 08:53:23','会员号4','姓名4','2021-01-13 16:53:23','备注4','否',''),(55,'2021-01-13 08:53:23','会员号5','姓名5','2021-01-13 16:53:23','备注5','否',''),(56,'2021-01-13 08:53:23','会员号6','姓名6','2021-01-13 16:53:23','备注6','否','');
/*!40000 ALTER TABLE `yuyueguahao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-15  9:49:40
