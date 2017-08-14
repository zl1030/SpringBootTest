# Host: 192.168.1.80  (Version 5.6.32-78.1)
# Date: 2016-12-06 15:14:21
# Generator: MySQL-Front 5.4  (Build 1.33)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "account"
#

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `accountName` varchar(30) NOT NULL DEFAULT '',
  `accountPassword` varchar(50) NOT NULL DEFAULT '',
  `serverBefore` int(11) NOT NULL DEFAULT '0',
  `upTime` varchar(20) NOT NULL DEFAULT '',
  `createTime` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`accountName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "account"
#


#
# Structure for table "resource"
#

DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `serverId` int(11) DEFAULT '0',
  `insertTime` varchar(20) DEFAULT '',
  `resKey` varchar(100) DEFAULT '',
  `data` mediumtext,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `resKey` (`resKey`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

#
# Data for table "resource"
#


#
# Structure for table "server_list"
#

DROP TABLE IF EXISTS `server_list`;
CREATE TABLE `server_list` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `serverId` int(11) DEFAULT '0',
  `page` int(11) DEFAULT '0',
  `serverName` varchar(30) DEFAULT '',
  `address` varchar(30) DEFAULT '',
  `port` int(11) DEFAULT '0',
  `isRecommend` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `isLook` int(11) DEFAULT '0',
  `DetailInfo` int(11) DEFAULT '0',
  `http` int(11) DEFAULT '0',
  `dbIP` varchar(255) DEFAULT '',
  `dbName` varchar(255) DEFAULT '',
  `dbUsername` varchar(255) DEFAULT '',
  `dbPassword` varchar(255) DEFAULT '',
  `dbPoolMaximumActiveConnections` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "server_list"
#

INSERT INTO `server_list` VALUES (1,0,0,'Login','192.168.1.2',10001,0,0,0,0,18001,' ',' ','','',1),(2,5,0,'ZL','192.168.1.2',10005,1,0,1,0,18005,'192.168.1.80','benghuai_server1','root','ZhouLei1030',300);
