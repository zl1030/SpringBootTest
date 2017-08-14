#
# Structure for table "chapterReward"
#

DROP TABLE IF EXISTS `chapterReward`;
CREATE TABLE `chapterReward` (
  `id` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL,
  `chapterId` int(11) DEFAULT NULL,
  `reward1Status` int(2) DEFAULT NULL,
  `reward2Status` int(2) DEFAULT NULL,
  `reward3Status` int(2) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

