# Host: 192.168.1.80  (Version 5.6.32-78.1)
# Date: 2016-11-28 10:06:28
# Generator: MySQL-Front 5.4  (Build 1.33)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "accessory"
#

DROP TABLE IF EXISTS `accessory`;
CREATE TABLE `accessory` (
  `roleId` int(11) NOT NULL,
  `accessoryId` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "achievement_condition"
#

DROP TABLE IF EXISTS `achievement_condition`;
CREATE TABLE `achievement_condition` (
  `roleId` int(11) NOT NULL,
  `achievementId` int(11) DEFAULT NULL,
  `conditionType` int(11) DEFAULT NULL,
  `param` int(11) DEFAULT NULL,
  `conditionState` int(11) DEFAULT NULL,
  `targetValue` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "achievement_times"
#

DROP TABLE IF EXISTS `achievement_times`;
CREATE TABLE `achievement_times` (
  `roleId` int(11) NOT NULL,
  `achievementType` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "activity_hero_p2p"
#

DROP TABLE IF EXISTS `activity_hero_p2p`;
CREATE TABLE `activity_hero_p2p` (
  `roleId` int(11) NOT NULL,
  `weekHeroTimes` int(11) DEFAULT NULL,
  `commonHeroTimes` int(11) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "activity_state"
#

DROP TABLE IF EXISTS `activity_state`;
CREATE TABLE `activity_state` (
  `roleId` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `restTimes` int(11) DEFAULT NULL,
  `lastTimestamp` bigint(20) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "activity_tower"
#

DROP TABLE IF EXISTS `activity_tower`;
CREATE TABLE `activity_tower` (
  `roleId` int(11) NOT NULL,
  `historyHighestId` int(11) DEFAULT NULL,
  `todayHighestId` int(11) DEFAULT NULL,
  `currentId` int(11) DEFAULT NULL,
  `restTimes` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "arena_async_rank"
#

DROP TABLE IF EXISTS `arena_async_rank`;
CREATE TABLE `arena_async_rank` (
  `roleId` int(11) NOT NULL,
  `curRank` int(11) DEFAULT NULL,
  `topRank` int(11) DEFAULT NULL,
  `challengeTimes` int(11) DEFAULT NULL,
  `challengeMax` int(11) DEFAULT NULL,
  `challengeBuyCount` int(11) DEFAULT NULL,
  `roleName` varchar(50) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "asynchronous_pvp_other"
#

DROP TABLE IF EXISTS `asynchronous_pvp_other`;
CREATE TABLE `asynchronous_pvp_other` (
  `roleId` int(11) NOT NULL,
  `otherId` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "equip"
#

DROP TABLE IF EXISTS `equip`;
CREATE TABLE `equip` (
  `id` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL,
  `goodsInfoId` int(11) NOT NULL,
  `isWear` int(11) NOT NULL,
  `grade` int(11) NOT NULL DEFAULT '0',
  `intensifyLevel` int(11) NOT NULL,
  `breakthrough` int(11) DEFAULT '0',
  `exLevel` int(11) NOT NULL,
  `exLoseTimes` int(11) NOT NULL DEFAULT '0',
  `gem1` int(11) DEFAULT NULL,
  `gem2` int(11) DEFAULT NULL,
  `gem3` int(11) DEFAULT NULL,
  `specialAttributeId1` int(11) DEFAULT '-1',
  `specialAttributeId2` int(11) DEFAULT '-1',
  `specialAttributeId3` int(11) DEFAULT '-1',
  `specialAttributeId4` int(11) DEFAULT '-1',
  `skillId1` int(11) DEFAULT '-1',
  `skillId2` int(11) DEFAULT '-1',
  `skillId3` int(11) DEFAULT '-1',
  `skillId4` int(11) DEFAULT '-1',
  `skillId5` int(11) DEFAULT '-1',
  `skillId6` int(11) DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# #
# # Structure for table "equip_chip"
# #
#
# DROP TABLE IF EXISTS `equip_chip`;
# CREATE TABLE `equip_chip` (
#   `id` int(11) NOT NULL DEFAULT '0',
#   `roleId` int(11) NOT NULL,
#   `goodsInfoId` int(11) NOT NULL,
#   `num` int(11) NOT NULL,
#   PRIMARY KEY (`id`),
#   KEY `roleIdIndex` (`roleId`) USING BTREE
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Structure for table "prop_chip"
--

DROP TABLE IF EXISTS `prop_chip`;
CREATE TABLE `prop_chip` (
  `id` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL,
  `goodsInfoId` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "event_offline"
#

DROP TABLE IF EXISTS `event_offline`;
CREATE TABLE `event_offline` (
  `roleId` int(11) NOT NULL,
  `dailyReset` int(11) DEFAULT NULL,
  `lastDailyResetTs` bigint(20) DEFAULT NULL,
  `weeklyReset` int(11) DEFAULT NULL,
  `lastWeeklyResetTs` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "explore_hero"
#

DROP TABLE IF EXISTS `explore_hero`;
CREATE TABLE `explore_hero` (
  `roleId` int(11) NOT NULL,
  `exploreTaskId` int(11) DEFAULT NULL,
  `heroId` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "explore_task"
#

DROP TABLE IF EXISTS `explore_task`;
CREATE TABLE `explore_task` (
  `id` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL,
  `taskInfoId` int(11) DEFAULT NULL,
  `lastTimeStamp` bigint(20) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "fashion"
#

DROP TABLE IF EXISTS `fashion`;
CREATE TABLE `fashion` (
  `id` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL,
  `goodsInfoId` int(11) NOT NULL,
  `isWear` int(11) NOT NULL,
  `forgingLevel` int(11) NOT NULL DEFAULT '0',
  `suitActive` int(11) DEFAULT '0',
  `weaponSkillActive` int(11) DEFAULT '0',
  `resonanceNum` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Structure for table "fight_report"
#

DROP TABLE IF EXISTS `fight_report`;
CREATE TABLE `fight_report` (
  `id` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL,
  `otherName` char(50) DEFAULT NULL,
  `challengeType` int(50) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `roleName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "friend"
#

DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `roleId` int(20) DEFAULT NULL,
  `friendId` int(20) DEFAULT NULL,
  `friendName` char(30) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "friend_invite"
#

DROP TABLE IF EXISTS `friend_invite`;
CREATE TABLE `friend_invite` (
  `inviteeId` bigint(20) DEFAULT NULL,
  `inviterId` bigint(20) DEFAULT NULL,
  `inviterName` char(30) DEFAULT NULL,
  `inviterLevel` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`inviteeId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "gang"
#

DROP TABLE IF EXISTS `gang`;
CREATE TABLE `gang` (
  `gangId` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `orderScore` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `exp` int(11) DEFAULT NULL,
  `leaderName` varchar(50) DEFAULT NULL,
  `leaderRoleId` int(11) DEFAULT NULL,
  `billboard` varchar(500) DEFAULT NULL,
  `levelAutomatic` int(11) DEFAULT NULL,
  PRIMARY KEY (`gangId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "gang_applying"
#

DROP TABLE IF EXISTS `gang_applying`;
CREATE TABLE `gang_applying` (
  `gangId` int(11) NOT NULL,
  `roleId` int(11) DEFAULT NULL,
  `offLineTime` bigint(20) DEFAULT NULL,
  KEY `gangIdIndex` (`gangId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "gang_member"
#

DROP TABLE IF EXISTS `gang_member`;
CREATE TABLE `gang_member` (
  `gangId` int(11) NOT NULL,
  `roleId` int(11) DEFAULT NULL,
  `offLineTime` bigint(20) DEFAULT NULL,
  `title` int(11) DEFAULT NULL,
  `contribution` int(11) DEFAULT NULL,
  KEY `gangIdIndex` (`gangId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "gang_message"
#

DROP TABLE IF EXISTS `gang_message`;
CREATE TABLE `gang_message` (
  `id` int(11) NOT NULL DEFAULT '0',
  `gangId` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `param1` varchar(500) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gangIdIndex` (`gangId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "gold_instance_zone"
#

DROP TABLE IF EXISTS `gold_instance_zone`;
CREATE TABLE `gold_instance_zone` (
  `roleId` int(11) NOT NULL,
  `lastFightTime` bigint(20) DEFAULT NULL,
  `restTimes` int(11) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "harem_action"
#

DROP TABLE IF EXISTS `harem_action`;
CREATE TABLE `harem_action` (
  `roleId` int(11) NOT NULL,
  `girlId` int(11) DEFAULT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `actionId` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "harem_gift"
#

DROP TABLE IF EXISTS `harem_gift`;
CREATE TABLE `harem_gift` (
  `roleId` int(11) NOT NULL,
  `giftId` int(11) DEFAULT NULL,
  `giftAmount` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "harem_girl"
#

DROP TABLE IF EXISTS `harem_girl`;
CREATE TABLE `harem_girl` (
  `roleId` int(11) NOT NULL,
  `girlId` int(11) DEFAULT NULL,
  `intimacyValue` int(11) DEFAULT NULL,
  `intimacyLevel` int(11) DEFAULT NULL,
  `giftsNumberReceivedToday` int(11) DEFAULT NULL,
  `curRaidId` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "harem_girl_interest"
#

DROP TABLE IF EXISTS `harem_girl_interest`;
CREATE TABLE `harem_girl_interest` (
  `roleId` int(11) NOT NULL,
  `girlId` int(11) DEFAULT NULL,
  `interest` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "harem_girl_raid"
#

DROP TABLE IF EXISTS `harem_girl_raid`;
CREATE TABLE `harem_girl_raid` (
  `roleId` int(11) NOT NULL,
  `girlId` int(11) DEFAULT NULL,
  `finishedRaidId` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "hero"
#

DROP TABLE IF EXISTS `hero`;
CREATE TABLE `hero` (
  `id` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL,
  `heroInfoId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `awaken` int(11) NOT NULL,
  `heroState` int(11) NOT NULL,
  `exp` int(11) DEFAULT NULL,
  `heroOnWar` int(11) DEFAULT NULL,
  `fightTime` double(11,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "hero_chip"
#

DROP TABLE IF EXISTS `hero_chip`;
CREATE TABLE `hero_chip` (
  `heroChipInfoId` int(11) NOT NULL,
  `heroInfoId` int(11) NOT NULL,
  `chipNum` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "hero_skill"
#

DROP TABLE IF EXISTS `hero_skill`;
CREATE TABLE `hero_skill` (
  `id` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL,
  `heroSkillInfoId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `heroSkillState` int(11) NOT NULL,
  `skillIndex` int(11) DEFAULT NULL,
  `heroId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "lucky_draw"
#

DROP TABLE IF EXISTS `lucky_draw`;
CREATE TABLE `lucky_draw` (
  `roleId` int(11) NOT NULL,
  `freeGoldBuyEquipAmount` int(11) DEFAULT NULL,
  `freeGoldBuyHeroAmount` int(11) DEFAULT NULL,
  `freeDiamondBuyEquipAmount` int(11) DEFAULT NULL,
  `freeDiamondBuyHeroAmount` int(11) DEFAULT NULL,
  `goodGoldEquipCountLeft` int(11) DEFAULT NULL,
  `goodGoldHeroCountLeft` int(11) DEFAULT NULL,
  `goodDiamondEquipCountLeft` int(11) DEFAULT NULL,
  `goodDiamondHeroCountLeft` int(11) DEFAULT NULL,
  `freeGoldBuyEquipLastTs` bigint(20) DEFAULT NULL,
  `freeGoldBuyHeroLastTs` bigint(20) DEFAULT NULL,
  `freeDiamondBuyEquipLastTs` bigint(20) DEFAULT NULL,
  `freeDiamondBuyHeroLastTs` bigint(20) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "mail"
#

DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` int(11) NOT NULL DEFAULT '0',
  `sender` char(20) DEFAULT NULL,
  `senderId` int(11) DEFAULT NULL,
  `receiver` char(20) DEFAULT NULL,
  `receiverId` int(50) DEFAULT NULL,
  `sendingTime` bigint(20) DEFAULT NULL,
  `title` char(50) DEFAULT NULL,
  `content` text,
  `state` int(11) DEFAULT NULL,
  `reservingTime` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `attachment` text,
  PRIMARY KEY (`id`),
  KEY `roleIdIndex` (`receiverId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "mail_attachment"
#

DROP TABLE IF EXISTS `mail_attachment`;
CREATE TABLE `mail_attachment` (
  `attachment_id` int(11) DEFAULT NULL,
  `mail_id` int(11) DEFAULT NULL,
  `item_temp_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `resource_type` int(11) DEFAULT NULL,
  KEY `attachment_ref_mail_id` (`mail_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "player"
#

DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `accountName` varchar(30) NOT NULL DEFAULT '' COMMENT '??id',
  `roleId` int(11) NOT NULL DEFAULT '0' COMMENT '??id',
  `roleName` varchar(30) NOT NULL DEFAULT '',
  `playerInfoId` int(11) NOT NULL,
  `level` int(11) NOT NULL COMMENT '??',
  `exp` int(11) NOT NULL DEFAULT '0',
  `energy` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `rmb` int(11) NOT NULL,
  `createTime` varchar(20) NOT NULL DEFAULT '',
  `cityId` int(11) NOT NULL,
  `equipBagBase` int(11) NOT NULL,
  `propResBagBase` int(11) NOT NULL,
  `propChipBagBase` int(11) NOT NULL,
  -- `equip ChipBagBase` int(11) NOT NULL,
  `propBagBase` int(11) NOT NULL,
  `stageMax` int(11) NOT NULL,
  `stageJYMax` int(11) NOT NULL,
  `taskIdMax` int(11) DEFAULT NULL,
  `accessory` int(11) DEFAULT NULL,
  `vipExp` int(11) DEFAULT NULL,
  `vipLevel` int(11) NOT NULL,
  `energyTime` bigint(20) NOT NULL,
  `exploreRestTimes` int(11) DEFAULT NULL,
  `storyId` int(11) DEFAULT NULL,
  `guideSegment` int(11) DEFAULT NULL,
  `guideCrux` int(11) DEFAULT NULL,
  `arenaAsyncCoin` int(11) DEFAULT NULL,
  `lastUsed` int(11) DEFAULT NULL,
  `taskScore` int(11) DEFAULT NULL,
  `intensifySumLevel` int(11) DEFAULT NULL,
  `goldHeroSingleDrawTimes` int(11) DEFAULT NULL,
  `goldEquipSingleDrawTimes` int(11) DEFAULT NULL,
  `diamondHeroSingleDrawTimes` int(11) DEFAULT NULL,
  `diamondEquipSingleDrawTimes` int(11) DEFAULT NULL,
  `buyEquipGridTimes` int(11) DEFAULT NULL,
  `buyPropResGridTimes` int(11) DEFAULT NULL,
  `buyEquipChipGridTimes` int(11) DEFAULT NULL,
  `buyPropGridTimes` int(11) DEFAULT NULL,
  `haremVitality` int(11) DEFAULT NULL,
  `haremVitalityTime` bigint(11) DEFAULT NULL,
  `parkourTimes` int(11) DEFAULT NULL,
  `teamPveRaidIdMax` int(11) DEFAULT NULL,
  `showGirlId` int(11) DEFAULT NULL,
  `dps` int(11) DEFAULT NULL,
  `leaveTime` bigint(20) DEFAULT NULL,
  `teamPveCoin` int(11) DEFAULT NULL,
  `todaySignTimes` int(11) DEFAULT NULL,
  `monthSignTimes` int(11) DEFAULT NULL,
  `additionalResignTimes` int(11) DEFAULT NULL,
  `signinAccumulativeRewardTimes` int(11) DEFAULT NULL,
  `lastSafeCityId` int(11) DEFAULT '0',
  `lastSafeCityPosX` double(11,2) DEFAULT '0.00',
  `lastSafeCityPosY` double(11,2) DEFAULT '0.00',
  `x` double(11,2) DEFAULT '0.00',
  `y` double(11,2) DEFAULT '0.00',
  `fashionCoin` int(11) DEFAULT '0',
  PRIMARY KEY (`roleId`),
  KEY `accountNameIndex` (`accountName`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "prop"
#

DROP TABLE IF EXISTS `prop`;
CREATE TABLE `prop` (
  `id` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL,
  `goodsInfoId` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `timeExpired` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "prop_res"
#

DROP TABLE IF EXISTS `prop_res`;
CREATE TABLE `prop_res` (
  `id` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL,
  `goodsInfoId` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `equipId` int(11) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "pvpdata"
#

DROP TABLE IF EXISTS `pvpdata`;
CREATE TABLE `pvpdata` (
  `roleId` int(11) NOT NULL,
  `pvp2Money` int(11) NOT NULL,
  `pvp2Point` int(11) NOT NULL,
  `pvp2FightNum` int(11) NOT NULL,
  `pvp2FightNumTime` bigint(20) NOT NULL,
  `id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "recharge"
#

DROP TABLE IF EXISTS `recharge`;
CREATE TABLE `recharge` (
  `roleId` int(11) NOT NULL,
  `rechargeType` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "shop_data"
#

DROP TABLE IF EXISTS `shop_data`;
CREATE TABLE `shop_data` (
  `type` int(11) NOT NULL,
  `lastRefreshTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "shop_item"
#

DROP TABLE IF EXISTS `shop_item`;
CREATE TABLE `shop_item` (
  `roleId` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `itemId` int(11) DEFAULT NULL,
  `times` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "skills"
#

DROP TABLE IF EXISTS `skills`;
CREATE TABLE `skills` (
  `id` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL,
  `skillId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "stages"
#

DROP TABLE IF EXISTS `stages`;
CREATE TABLE `stages` (
  `id` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL,
  `stageId` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `numTime` bigint(20) NOT NULL,
  `resetTimes` int(11) DEFAULT NULL,
  `reviveTimes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "talent"
#

DROP TABLE IF EXISTS `talent`;
CREATE TABLE `talent` (
  `roleId` int(11) NOT NULL,
  `talentId` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "task_condition"
#

DROP TABLE IF EXISTS `task_condition`;
CREATE TABLE `task_condition` (
  `roleId` int(11) NOT NULL,
  `taskId` int(11) DEFAULT NULL,
  `conditionType` int(11) DEFAULT NULL,
  `param` int(11) DEFAULT NULL,
  `conditionState` int(11) DEFAULT NULL,
  `targetValue` int(11) DEFAULT NULL,
  `isDailyTask` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "task_daily_library_opened"
#

DROP TABLE IF EXISTS `task_daily_library_opened`;
CREATE TABLE `task_daily_library_opened` (
  `roleId` int(11) NOT NULL,
  `library` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "task_finished"
#

DROP TABLE IF EXISTS `task_finished`;
CREATE TABLE `task_finished` (
  `roleId` int(11) NOT NULL,
  `missionId` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "task_score_taken"
#

DROP TABLE IF EXISTS `task_score_taken`;
CREATE TABLE `task_score_taken` (
  `roleId` int(11) NOT NULL,
  `scoreTaken` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "team_pve_helper"
#

DROP TABLE IF EXISTS `team_pve_helper`;
CREATE TABLE `team_pve_helper` (
  `roleId` int(11) NOT NULL,
  `helperId` int(11) DEFAULT NULL,
  `helperName` varchar(50) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "team_pve_raid"
#

DROP TABLE IF EXISTS `team_pve_raid`;
CREATE TABLE `team_pve_raid` (
  `roleId` int(11) NOT NULL,
  `raidId` int(11) DEFAULT NULL,
  `challengeTimes` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "title"
#

DROP TABLE IF EXISTS `title`;
CREATE TABLE `title` (
  `roleId` int(11) NOT NULL,
  `titleId` int(11) DEFAULT NULL,
  `param` int(11) DEFAULT NULL,
  `targetValue` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "vip_data"
#

DROP TABLE IF EXISTS `vip_data`;
CREATE TABLE `vip_data` (
  `roleId` int(11) NOT NULL,
  `buyEnergyTimes` int(11) DEFAULT NULL,
  `buyGoldTimes` int(11) DEFAULT NULL,
  `raidNormalResetTimes` int(11) DEFAULT NULL,
  `raidEliteResetTimes` int(11) DEFAULT NULL,
  `raidTurnCardTimes` int(11) DEFAULT NULL,
  `raidOneStarSweep` int(11) DEFAULT NULL,
  `activityPVPAsyncBuyTimes` int(11) DEFAULT NULL,
  `activityPVPRewardTimes` int(11) DEFAULT NULL,
  `activityExploreTimeShorten` int(11) DEFAULT NULL,
  `raidNormalReviveTimes` int(11) DEFAULT NULL,
  `raidEliteReviveTimes` int(11) DEFAULT NULL,
  `warEatHpTimes` int(11) DEFAULT NULL,
  `dailySweepCard` int(11) DEFAULT NULL,
  `shopSecretExItem` int(11) DEFAULT NULL,
  `shopSecretDailyRefreshTimes` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "vip_level_data"
#

DROP TABLE IF EXISTS `vip_level_data`;
CREATE TABLE `vip_level_data` (
  `roleId` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `vipBuyGiftAmount` int(11) NOT NULL,
  `vipFreeGiftAmount` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "world_boss"
#

DROP TABLE IF EXISTS `world_boss`;
CREATE TABLE `world_boss` (
  `worldBossId` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `nextLevel` int(11) DEFAULT NULL,
  `hp` int(11) DEFAULT NULL,
  `killerRoleName` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "world_boss_damage"
#

DROP TABLE IF EXISTS `world_boss_damage`;
CREATE TABLE `world_boss_damage` (
  `roleId` int(11) NOT NULL,
  `roleName` char(50) DEFAULT NULL,
  `damage` int(11) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `lastDiedTs` bigint(20) DEFAULT NULL,
  `rewardState` int(11) DEFAULT NULL,
  KEY `roleIdIndex` (`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
