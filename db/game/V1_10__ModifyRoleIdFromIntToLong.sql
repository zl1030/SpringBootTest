﻿
ALTER TABLE achievement_condition MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE achievement_times MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE chapterReward MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE equip MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE fashion MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE friend MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE gang_applying MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE gang_member MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE gold_instance_zone MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE group_mail MODIFY COLUMN senderId bigint(20) DEFAULT -1;
ALTER TABLE lucky_draw MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE mail MODIFY COLUMN senderId bigint(20) DEFAULT -1,MODIFY COLUMN receiverId bigint(20) DEFAULT -1;
ALTER TABLE player MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE prop MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE prop_chip MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE prop_res MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE shop_item MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE stages MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE task_condition MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE task_daily_library_opened MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE task_finished MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE task_score_taken MODIFY COLUMN roleId bigint(20) DEFAULT -1;
ALTER TABLE title MODIFY COLUMN roleId bigint(20) DEFAULT -1;