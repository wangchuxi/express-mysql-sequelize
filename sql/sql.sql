CREATE TABLE `Company_information` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(50) NOT NULL DEFAULT '' COMMENT '公司名称',
  `discription` varchar(100) NOT NULL DEFAULT '' COMMENT '描述',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `address` varchar(300) NOT NULL DEFAULT '' COMMENT '城市',
  `human_number` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '人数没有小数',
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='公司详情表信息';



CREATE TABLE `demo1` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `reset_password` tinyint(32) NOT NULL DEFAULT '0' COMMENT '用户类型：0－不需要重置密码；1-需要重置密码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='用户表信息';



CREATE TABLE `meeting_create` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `reset_password` tinyint(32) NOT NULL DEFAULT '0' COMMENT '用户类型：0－不需要重置密码；1-需要重置密码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_mobile` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表信息';


CREATE TABLE `user` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `name` char(32) DEFAULT '',
  `status` char(60) DEFAULT NULL,
  `reset_password` tinyint(32) NOT NULL DEFAULT '0' COMMENT '用户类型：0－不需要重置密码；1-需要重置密码',
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='用户表信息';



CREATE TABLE `user_accounts` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `reset_password` tinyint(32) NOT NULL DEFAULT '0' COMMENT '用户类型：0－不需要重置密码；1-需要重置密码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='用户表信息';


CREATE TABLE `user_profiles` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `reset_password` tinyint(32) NOT NULL DEFAULT '0' COMMENT '用户类型：0－不需要重置密码；1-需要重置密码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表信息';


CREATE TABLE `user1` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `name` char(32) DEFAULT '',
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `create_at` (`create_at`),
  UNIQUE KEY `create_at_2` (`create_at`),
  UNIQUE KEY `create_at_3` (`create_at`),
  KEY `index_name` (`name`),
  KEY `index_password` (`password`),
  KEY `index_p` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表信息';

CREATE TABLE `user2` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `name` char(32) DEFAULT '',
  `reset_password` tinyint(32) NOT NULL DEFAULT '0' COMMENT '用户类型：0－不需要重置密码；1-需要重置密码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户表信息';