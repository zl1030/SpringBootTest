
DROP TABLE mail_attachment;

ALTER TABLE mail ADD COLUMN groupMailId int(11) DEFAULT 0;

CREATE TABLE `group_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(20) DEFAULT '',
  `senderId` int(11) DEFAULT '0',
  `sendingTime` bigint(20) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `content` varchar(500) DEFAULT '',
  `type` int(11) DEFAULT '0',
  `attachment` text,
  `groupType` int(11) DEFAULT '0',
  `groupParam` varchar(50) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
