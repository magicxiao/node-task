-- node task table
CREATE TABLE `task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY ID',
  `name` varchar(255) NOT NULL COMMENT 'task name',
  `ref_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'reference id',
  `ref_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'reference type',
  `status` enum('ready','doing','done','error','removed') CHARACTER SET latin1 NOT NULL DEFAULT 'ready' COMMENT 'task status',
  `args` text NOT NULL COMMENT 'task argument',
  `result` text NOT NULL COMMENT 'task result',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'task created timestamp',
  `start_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'start timestamp',
  `run_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'run time',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`),
  KEY `name` (`name`)
) ENGINE=Innodb DEFAULT CHARSET=utf8 COMMENT='task table';