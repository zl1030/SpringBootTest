
alter table server_list add column redisIP varchar(20) default '127.0.0.1',add column redisPort int(11) default 6379,add column redisDB int(11) default 1,add column redisAuth varchar(20) default '';