
DROP TABLE recharge;
DROP TABLE vip_data;
DROP TABLE vip_level_data;

ALTER TABLE player DROP COLUMN parkourTimes,DROP COLUMN buyEquipGridTimes,DROP COLUMN buyPropResGridTimes,DROP COLUMN buyEquipChipGridTimes,DROP COLUMN buyPropGridTimes,DROP COLUMN intensifySumLevel,DROP COLUMN exploreRestTimes,DROP COLUMN todaySignTimes,DROP COLUMN monthSignTimes,DROP COLUMN additionalResignTimes,DROP COLUMN signinAccumulativeRewardTimes;