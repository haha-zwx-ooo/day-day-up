/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = alice_user_dev   */
/******************************************/
CREATE TABLE `alice_user_dev` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = bob_user_dev   */
/******************************************/
CREATE TABLE `bob_user_dev` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = component_note   */
/******************************************/
CREATE TABLE `component_note` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `pipeline_id` varchar(64) NOT NULL COMMENT '训练流ID',
  `component_id` varchar(64) NOT NULL COMMENT '组件ID',
  `note_id` varchar(64) NOT NULL COMMENT '批注ID',
  `content` text COMMENT '批注内容',
  `operator_create` varchar(64) DEFAULT NULL COMMENT '操作用户',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = component_style   */
/******************************************/
CREATE TABLE `component_style` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `code_name` varchar(64) NOT NULL COMMENT '组件样式code',
  `content` text COMMENT '组件样式内容',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_name` (`code_name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = inst   */
/******************************************/
CREATE TABLE `inst` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `inst_uuid` varchar(64) DEFAULT NULL COMMENT 'varchar(64)  ID uuid asdasda',
  `inst_name` varchar(128) DEFAULT NULL,
  `inst_id` varchar(128) DEFAULT NULL,
  `can_create_project` int DEFAULT NULL COMMENT '0-1-',
  `can_choose_centernode` int DEFAULT NULL COMMENT '0-1-',
  `open_advanced_feature` int DEFAULT NULL COMMENT '0-1-',
  `discover_mode` int DEFAULT NULL COMMENT '\n0-/UUID\n1-UUID',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'int  0-1-',
  `gmt_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gmt_delete` timestamp NULL DEFAULT NULL,
  `inst_biz_id` varchar(128) DEFAULT NULL COMMENT '机构IAM中Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = job_log   */
/******************************************/
CREATE TABLE `job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=499728386 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = login_history   */
/******************************************/
CREATE TABLE `login_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` char(40) NOT NULL COMMENT '用户ID',
  `ip` varchar(16) NOT NULL COMMENT '登陆地IP',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10462 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = node   */
/******************************************/
CREATE TABLE `node` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `node_id` varchar(128) NOT NULL DEFAULT '' COMMENT 'id',
  `node_name` varchar(64) NOT NULL,
  `inst_id` varchar(32) NOT NULL DEFAULT '' COMMENT 'id',
  `node_type` varchar(32) DEFAULT '',
  `public_key` text,
  `status` varchar(32) DEFAULT '' COMMENT 'INIT/DNS_CREATED/JUPTER_CREATED',
  `health_status` varchar(32) DEFAULT '',
  `env` varchar(32) DEFAULT '',
  `ext_properties` text,
  `node_tag` int DEFAULT NULL,
  `center_node_id` varchar(128) DEFAULT NULL,
  `is_deleted` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `deploy_status` varchar(32) DEFAULT '',
  `package_id` varchar(64) DEFAULT NULL,
  `supplements` text,
  `operator_create_id` varchar(64) DEFAULT NULL COMMENT 'id',
  `operator_create_name` varchar(256) DEFAULT NULL,
  `operator_update_id` varchar(64) DEFAULT NULL COMMENT 'id',
  `operator_update_name` varchar(256) DEFAULT NULL,
  `gmt_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `advanced_function` varchar(255) DEFAULT NULL,
  `net_address` varchar(255) DEFAULT NULL COMMENT '通讯地址',
  `net_type` varchar(255) DEFAULT NULL COMMENT '通讯类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dl_scnode_node_id_IDX` (`node_id`) USING BTREE,
  KEY `dl_scnode_inst_id_IDX` (`inst_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2002066 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = pipeline_template   */
/******************************************/
CREATE TABLE `pipeline_template` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `template_id` varchar(64) NOT NULL COMMENT '模版ID',
  `type` varchar(64) NOT NULL COMMENT '模版类型',
  `name` varchar(64) DEFAULT NULL COMMENT '模版name',
  `content` text COMMENT '模版内容',
  `config` text COMMENT '模版配置',
  `description` varchar(128) DEFAULT NULL COMMENT '模版描述',
  `icon` varchar(128) DEFAULT NULL COMMENT '模版图标',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `template_id` (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = qrtz_blob_triggers   */
/******************************************/
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = qrtz_calendars   */
/******************************************/
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = qrtz_cron_triggers   */
/******************************************/
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = qrtz_fired_triggers   */
/******************************************/
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint NOT NULL,
  `SCHED_TIME` bigint NOT NULL,
  `PRIORITY` int NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = qrtz_job_details   */
/******************************************/
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = qrtz_locks   */
/******************************************/
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = qrtz_paused_trigger_grps   */
/******************************************/
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = qrtz_scheduler_state   */
/******************************************/
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint NOT NULL,
  `CHECKIN_INTERVAL` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = qrtz_simple_triggers   */
/******************************************/
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint NOT NULL,
  `REPEAT_INTERVAL` bigint NOT NULL,
  `TIMES_TRIGGERED` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = qrtz_simprop_triggers   */
/******************************************/
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int DEFAULT NULL,
  `INT_PROP_2` int DEFAULT NULL,
  `LONG_PROP_1` bigint DEFAULT NULL,
  `LONG_PROP_2` bigint DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = qrtz_triggers   */
/******************************************/
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint DEFAULT NULL,
  `PREV_FIRE_TIME` bigint DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint NOT NULL,
  `END_TIME` bigint DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint DEFAULT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = service_publish   */
/******************************************/
CREATE TABLE `service_publish` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `workspace_id` varchar(64) NOT NULL COMMENT '项目id',
  `service_id` varchar(64) NOT NULL COMMENT '服务id',
  `service_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `service_desc` varchar(256) DEFAULT NULL COMMENT '服务描述',
  `service_type` varchar(64) NOT NULL COMMENT '服务类型',
  `operator_create` varchar(64) DEFAULT NULL COMMENT '操作用户',
  `is_deleted` int NOT NULL DEFAULT '0' COMMENT '是否删除',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1691 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = service_publish_config   */
/******************************************/
CREATE TABLE `service_publish_config` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `workspace_id` varchar(64) NOT NULL COMMENT '项目id',
  `service_id` varchar(64) NOT NULL COMMENT '服务id',
  `version_id` varchar(64) NOT NULL COMMENT '版本id',
  `out_node_id` varchar(64) DEFAULT NULL COMMENT '输出节点id',
  `out_ds_id` varchar(128) DEFAULT NULL COMMENT '输出数据源id',
  `out_target_path` varchar(256) DEFAULT NULL COMMENT '输出文件路径名',
  `env` varchar(64) NOT NULL COMMENT '环境标，区分test/prod',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = service_version_publish   */
/******************************************/
CREATE TABLE `service_version_publish` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `service_id` varchar(64) NOT NULL COMMENT '服务id',
  `version_id` varchar(64) NOT NULL COMMENT '版本id',
  `version_name` varchar(64) NOT NULL COMMENT '版本名称',
  `status` varchar(64) DEFAULT NULL COMMENT '版本状态',
  `is_deleted` int NOT NULL DEFAULT '0' COMMENT '是否删除',
  `params` longtext COMMENT '版本参数设置',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `stage` varchar(64) DEFAULT NULL,
  `workspace_id` varchar(64) DEFAULT NULL,
  `version_desc` varchar(255) DEFAULT NULL,
  `source` varchar(64) DEFAULT NULL,
  `operator_create` varchar(64) DEFAULT NULL,
  `source_id` varchar(64) DEFAULT NULL,
  `mode` varchar(64) DEFAULT NULL COMMENT '服务发布模式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2879 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = smoke_record   */
/******************************************/
CREATE TABLE `smoke_record` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `version_id` varchar(64) NOT NULL COMMENT '版本id',
  `smoke_id` varchar(64) NOT NULL COMMENT '冒烟id',
  `status` varchar(64) DEFAULT NULL COMMENT '冒烟状态',
  `params` longtext COMMENT '冒烟参数',
  `stage` varchar(64) DEFAULT NULL COMMENT '服务开发阶段',
  `completion_time` bigint DEFAULT NULL COMMENT '完成时间',
  `cost_time` bigint DEFAULT NULL COMMENT '完成时间',
  `error_message` text COMMENT '错误信息',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `service_id` varchar(64) DEFAULT NULL,
  `workspace_id` varchar(64) DEFAULT NULL,
  `task_id` varchar(64) DEFAULT NULL,
  `operator_create` varchar(64) DEFAULT NULL,
  `ext_params` longtext COMMENT '冒烟参数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5889 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230202000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230202000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2266127 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230203000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230203000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6295272 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230204000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230204000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10222379 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230205000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230205000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14029702 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230207000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230207000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21627232 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230208000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230208000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25434269 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230209000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230209000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29241107 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230210000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230210000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33053679 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230211000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230211000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36860020 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230212000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230212000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40660982 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230213000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230213000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44459205 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230214000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230214000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48260328 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230215000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230215000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52059500 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230317000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230317000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=140689600 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230318000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230318000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=142521406 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230319000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230319000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=144019435 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230320000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230320000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=145462135 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230321000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230321000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=147138785 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230322000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230322000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=149463690 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230323000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230323000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=151895584 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230324000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230324000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=154299563 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230325000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230325000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=156806820 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230326000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230326000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=159234095 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230327000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230327000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=161639241 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230328000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230328000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=164074462 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230329000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230329000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=166696842 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230330000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230330000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=169282847 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230331000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230331000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=171934297 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230401000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230401000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=174512413 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230402000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230402000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=177050507 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230403000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230403000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=179587592 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230404000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230404000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=182141120 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230405000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230405000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=184044076 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230406000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230406000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=185032705 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230407000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230407000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=185814561 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230408000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230408000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=189044143 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230409000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230409000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=198005966 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230410000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230410000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=201826982 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230414000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230414000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=214387678 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230415000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230415000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=217379370 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230416000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230416000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=221153334 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230417000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230417000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=222324408 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230418000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230418000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=223483817 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230419000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230419000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=224678734 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230420000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230420000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=225885990 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230421000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230421000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=227065950 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230422000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230422000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=228299080 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230423000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230423000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=229780955 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230424000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230424000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=230966666 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230425000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230425000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=232154589 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230427000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230427000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=234871635 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230428000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230428000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=236312257 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230429000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230429000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=240161703 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230430000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230430000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=241495317 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230501000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230501000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=245279350 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230502000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230502000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=248899980 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230503000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230503000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=252505491 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230504000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230504000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=253703449 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230505000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230505000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=255565827 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230506000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230506000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=257245612 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230507000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230507000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=258981734 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = tmp_dms_7963609_20230508000000_job_log   */
/******************************************/
CREATE TABLE `tmp_dms_7963609_20230508000000_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flow_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'id',
  `node_name` varchar(64) DEFAULT NULL,
  `node_type` varchar(64) DEFAULT NULL,
  `namespace` varchar(64) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL,
  `content` longtext,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `JOB_ID_INDEX` (`job_id`),
  KEY `FLOW_ID_INDEX` (`flow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=261689921 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace   */
/******************************************/
CREATE TABLE `workspace` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `workspace_id` varchar(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
  `name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '工作区描述',
  `creator_node_id` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `api_version` varchar(16) COLLATE utf8mb4_general_ci NOT NULL,
  `create_inst_id` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ID',
  `workspace_prefer` tinyint DEFAULT NULL,
  `gmt_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_workspace` (`workspace_id`)
) ENGINE=InnoDB AUTO_INCREMENT=580 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_cron_flow   */
/******************************************/
CREATE TABLE `workspace_cron_flow` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `flow_id` char(40) NOT NULL COMMENT '计算流ID',
  `service_id` varchar(64) DEFAULT NULL COMMENT '服务id',
  `version_id` varchar(64) DEFAULT NULL COMMENT '版本id',
  `name` varchar(64) DEFAULT NULL COMMENT '计算流名称',
  `operator_create` char(40) DEFAULT NULL COMMENT '提交的用户ID',
  `status` varchar(16) NOT NULL COMMENT '计算流状态, COMMITTED,RUNNING,SUCCESS,FAILED,STOPPED',
  `is_re_run` int DEFAULT '0' COMMENT '是否重跑',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除，删除=1｜未删除=0',
  `gmt_delete` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `biz_type` varchar(64) DEFAULT NULL COMMENT '业务类型',
  `env` varchar(64) DEFAULT NULL COMMENT '环境标',
  `generate_id` char(40) DEFAULT NULL COMMENT '子任务来源id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_cron_flow` (`flow_id`),
  KEY `uk_workspace_cron_flow` (`service_id`,`version_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3889 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='计算流'
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_cron_job   */
/******************************************/
CREATE TABLE `workspace_cron_job` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `service_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务id',
  `version_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '版本id',
  `job_id` varchar(64) NOT NULL COMMENT '任务id',
  `op` varchar(64) NOT NULL COMMENT 'op类型',
  `error_msg` varchar(4096) DEFAULT NULL COMMENT '错误信息',
  `status` varchar(64) NOT NULL COMMENT '任务状态',
  `process` varchar(4096) DEFAULT NULL COMMENT '任务进度',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_re_run` int NOT NULL DEFAULT '0',
  `flow_id` varchar(40) DEFAULT NULL,
  `dependencies` varchar(2048) DEFAULT NULL COMMENT '该作业的依赖项,JSON ARRAY',
  `component` longtext COMMENT 'component snapshot config',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12975 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_feature_table   */
/******************************************/
CREATE TABLE `workspace_feature_table` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `workspace_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '工作区ID',
  `datatable_id` varchar(129) COLLATE utf8mb4_general_ci NOT NULL COMMENT '工作表ID',
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '工作表名称',
  `type` tinyint DEFAULT NULL COMMENT '工作表类型，1-MYSQL，2-CSV',
  `node_id` varchar(64) COLLATE utf8mb4_general_ci NOT NULL COMMENT '授权到该工作区的节点',
  `status` varchar(16) COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态，ENABLEDISABLE',
  `uri` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '特征服务所在的地址',
  `table_config` longtext COLLATE utf8mb4_general_ci COMMENT '工作表列配置，JSON格式',
  `operator` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作人',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_workspace_worktable` (`workspace_id`,`datatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=498 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='工作区中的特征表'
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_fed_object   */
/******************************************/
CREATE TABLE `workspace_fed_object` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `workspace_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '工作区ID',
  `fed_object_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flow_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务流的ID',
  `job_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '生成联合对象的任务ID',
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联合对象名称',
  `object_type` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT ' model/rule/ ',
  `join_type` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT ' Horizontal/Vertical/Mixed ',
  `joins` longtext COLLATE utf8mb4_general_ci COMMENT 'JSON',
  `content` text COLLATE utf8mb4_general_ci COMMENT 'FLrule rule',
  `is_valid` tinyint NOT NULL COMMENT '是否已生效 用来标识编排对象是否已完成生成',
  `is_deleted` tinyint NOT NULL COMMENT '是否已删除',
  `operator_create` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `gmt_delete` datetime DEFAULT NULL,
  `is_display` tinyint NOT NULL DEFAULT '0',
  `scene` char(16) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '场景，IDE/DAG',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_workspace_job_fed_object` (`workspace_id`,`job_id`,`fed_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_fed_result   */
/******************************************/
CREATE TABLE `workspace_fed_result` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `workspace_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '工作区ID',
  `fed_result_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '联合结果ID',
  `flow_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务流的ID',
  `job_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '生成联合对象的任务ID',
  `result_type` varchar(16) COLLATE utf8mb4_general_ci NOT NULL COMMENT '/chart/resultset',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '结果内容JSON',
  `is_deleted` tinyint NOT NULL COMMENT '是否已删除',
  `operator_create` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `gmt_delete` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_workspace_fed_result` (`workspace_id`,`fed_result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5938 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_fed_table   */
/******************************************/
CREATE TABLE `workspace_fed_table` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `workspace_id` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '工作区ID',
  `fed_table_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flow_id` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务流的ID',
  `job_id` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务ID',
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `join_type` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT ' Horizontal/Vertical/Mixed ',
  `joins` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT 'JSON',
  `intersection_count` int DEFAULT NULL,
  `is_valid` tinyint NOT NULL COMMENT '是否已生效 用来标识编排对象是否已完成生成',
  `is_deleted` tinyint NOT NULL COMMENT '是否已删除',
  `operator_create` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `gmt_delete` datetime DEFAULT NULL,
  `is_display` tinyint NOT NULL DEFAULT '0',
  `scene` char(16) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '场景，IDE/DAG',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_workspace_fed_table` (`workspace_id`,`fed_table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=157949 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_file   */
/******************************************/
CREATE TABLE `workspace_file` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `file_id` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
  `workspace_id` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
  `parent_id` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ID',
  `file_type` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'DIRFILE',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `script_type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'SQL|PYTHON',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `locked_by` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `locked_expire` datetime DEFAULT NULL,
  `content_version` int DEFAULT NULL,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL,
  `gmt_delete` datetime DEFAULT NULL,
  `operator_create` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `operator_update` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `scope` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rank_value` double DEFAULT '0' COMMENT '文件排序值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_workspace_file` (`workspace_id`,`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18287 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_file_history   */
/******************************************/
CREATE TABLE `workspace_file_history` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `file_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
  `workspace_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
  `content_version` int DEFAULT NULL,
  `script_type` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'SQL|PYTHON',
  `content` text COLLATE utf8mb4_general_ci,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operator_create` varchar(63) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_workspace_file_history` (`workspace_id`,`file_id`,`content_version`)
) ENGINE=InnoDB AUTO_INCREMENT=7056 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_flow   */
/******************************************/
CREATE TABLE `workspace_flow` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `flow_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '计算流ID',
  `workspace_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '工作区ID',
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL COMMENT '计算流名称',
  `star` tinyint NOT NULL COMMENT '是否收藏，收藏=1｜未收藏=0',
  `source_type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `source_id` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ID',
  `node_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '提交Flow的节点ID',
  `status` varchar(16) COLLATE utf8mb4_general_ci NOT NULL COMMENT '计算流状态, COMMITTED,RUNNING,SUCCESS,FAILED,STOPPED',
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'flow, MPC, FL, SQL',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除，删除=1｜未删除=0',
  `gmt_delete` datetime DEFAULT NULL,
  `pipeline_id` char(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `operator_create` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `source_version` int DEFAULT NULL COMMENT '文件版本',
  `parent_id` char(40) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '主任务id',
  `is_re_run` int DEFAULT NULL COMMENT '是否重跑',
  `generate_from` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '子任务来源',
  `generate_id` char(40) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '子任务来源id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_flow` (`flow_id`),
  UNIQUE KEY `uk_workspace_flow` (`workspace_id`,`flow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21512 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='计算流'
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_flow_job   */
/******************************************/
CREATE TABLE `workspace_flow_job` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `flow_id` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '计算流ID',
  `job_id` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '计算任务ID',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '作业名称',
  `op_namespace` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '算子命名空间, 目前仅支持Ant',
  `op` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '算子类型',
  `params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '作业内容，JSON',
  `rendered_params` longtext COLLATE utf8mb4_general_ci COMMENT 'JSON',
  `dependencies` varchar(2048) COLLATE utf8mb4_general_ci DEFAULT '{}' COMMENT ',JSON ARRAY',
  `table_storages` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT '{}' COMMENT ',JSON ARRAY',
  `object_storages` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT '{}' COMMENT 'object,JSON ARRAY',
  `status` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '作业状态',
  `process` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '{}' COMMENT '作业进度信息，暂无',
  `report` longtext COLLATE utf8mb4_general_ci COMMENT 'JOB',
  `error_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '错误信息',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除，删除=1｜未删除=0',
  `gmt_delete` datetime DEFAULT CURRENT_TIMESTAMP,
  `component_id` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rank_value` int DEFAULT NULL COMMENT '排序值',
  `component` longtext COLLATE utf8mb4_general_ci,
  `is_real` tinyint DEFAULT NULL COMMENT 'job',
  `child_job_ids` varchar(4096) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_job_id` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_periodic` tinyint DEFAULT NULL COMMENT '周期子任务',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_flow_job` (`flow_id`,`job_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=69759 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='计算流中的工作'
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_inst   */
/******************************************/
CREATE TABLE `workspace_inst` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `workspace_id` varchar(40) NOT NULL COMMENT '工作区ID',
  `inst_id` varchar(40) NOT NULL COMMENT '机构ID',
  `gmt_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=628 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_member   */
/******************************************/
CREATE TABLE `workspace_member` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `workspace_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '工作区ID',
  `node_id` varchar(64) COLLATE utf8mb4_general_ci NOT NULL COMMENT '工作区成员节点ID',
  `status` varchar(16) COLLATE utf8mb4_general_ci NOT NULL COMMENT '工作区成员节点状态, JOINEDEXITED',
  `table_storages` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT 'JSON ARRAY',
  `object_storages` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT 'JSON ARRAY',
  `gmt_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_workspace_node` (`workspace_id`,`node_id`)
) ENGINE=InnoDB AUTO_INCREMENT=560 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='工作区中的节点'
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_model   */
/******************************************/
CREATE TABLE `workspace_model` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `workspace_id` varchar(64) DEFAULT NULL COMMENT '授权项目id',
  `model_id` varchar(64) DEFAULT NULL COMMENT '模型id',
  `model_name` varchar(64) NOT NULL COMMENT '模型名称',
  `model_description` varchar(255) DEFAULT NULL COMMENT '模型描述',
  `model_file_id` varchar(64) DEFAULT NULL,
  `model_source` varchar(64) DEFAULT NULL,
  `join_type` varchar(64) DEFAULT NULL,
  `status` varchar(64) DEFAULT NULL,
  `model_params` longtext COMMENT '参数配置',
  `operator_create` varchar(64) NOT NULL COMMENT '创建者',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '删除标识',
  `model_type` varchar(64) DEFAULT NULL,
  `model_file_name` varchar(64) DEFAULT NULL,
  `pre_component_type` varchar(64) DEFAULT NULL,
  `pre_component_file_id` varchar(64) DEFAULT NULL,
  `pre_component_file_name` varchar(64) DEFAULT NULL,
  `columns` text COMMENT '特征json',
  `inst_uuid` varchar(64) DEFAULT NULL COMMENT '机构id',
  `flow_id` varchar(64) DEFAULT NULL COMMENT 'id',
  `auto_submit_job_id` varchar(64) DEFAULT NULL COMMENT 'jobId,',
  PRIMARY KEY (`id`),
  UNIQUE KEY `model_id` (`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_model_relation   */
/******************************************/
CREATE TABLE `workspace_model_relation` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `workspace_id` varchar(64) DEFAULT NULL COMMENT '授权项目id',
  `model_id` varchar(64) DEFAULT NULL COMMENT '规则id',
  `operator_create` varchar(64) DEFAULT NULL,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_node_config   */
/******************************************/
CREATE TABLE `workspace_node_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `workspace_id` varchar(128) NOT NULL COMMENT 'Id',
  `node_id` varchar(128) NOT NULL COMMENT 'id',
  `node_type` int DEFAULT '0' COMMENT '节点类型, 0-fl，1-scql，2-tee',
  `node_env` int NOT NULL DEFAULT '0' COMMENT ', 0-dev1-test2-prod',
  `is_deleted` int NOT NULL DEFAULT '0',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `source` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1466 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_periodic_flow   */
/******************************************/
CREATE TABLE `workspace_periodic_flow` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `periodic_flow_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '定时任务ID',
  `workspace_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '工作区ID',
  `pipeline_id` char(40) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所属训练流ID',
  `discription` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务描述',
  `source_type` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '来源类型',
  `source_id` char(40) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '来源ID',
  `node_id` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '提交Flow的节点ID',
  `operator_create` char(40) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '提交的用户ID',
  `status` varchar(16) COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务状态, SUCCESS,OFFLINE',
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务类型, MPC,FL,SQL,UNKNOW',
  `dispatch_strategy` text COLLATE utf8mb4_general_ci COMMENT '调度策略：调度类型（dispatch_type）, Forbid, Allow, Replace',
  `cron_config` text COLLATE utf8mb4_general_ci NOT NULL COMMENT 'cron表达式',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除，删除=1｜未删除=0',
  `gmt_delete` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `job_snapshot` longtext COLLATE utf8mb4_general_ci COMMENT 'job快照',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_flow` (`periodic_flow_id`),
  UNIQUE KEY `uk_workspace_flow` (`workspace_id`,`periodic_flow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='周期任务'
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_pipeline   */
/******************************************/
CREATE TABLE `workspace_pipeline` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `workspace_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '项目ID',
  `pipeline_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'pipelineID',
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'pipeline名称',
  `directory_id` char(40) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所属的文件夹ID',
  `scene` tinyint(1) NOT NULL COMMENT '场景',
  `operator_create` varchar(64) COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建者',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否被删除',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `gmt_delete` datetime DEFAULT NULL COMMENT '删除时间',
  `template_id` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_pipeline` (`workspace_id`,`pipeline_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11908 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='项目训练流'
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_pipeline_component   */
/******************************************/
CREATE TABLE `workspace_pipeline_component` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `pipeline_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'pipelineID',
  `component_id` varchar(128) COLLATE utf8mb4_general_ci NOT NULL COMMENT '组件ID',
  `name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL COMMENT '组件名称',
  `code_name` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '前端place_holder',
  `namespace` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '算子所在空间',
  `op` varchar(32) COLLATE utf8mb4_general_ci NOT NULL COMMENT '算子类型',
  `params` longtext COLLATE utf8mb4_general_ci NOT NULL COMMENT '算子参数，包含input_slots,output_slots',
  `dependencies` varchar(2048) COLLATE utf8mb4_general_ci DEFAULT '{}' COMMENT '依赖项',
  `extra` text COLLATE utf8mb4_general_ci COMMENT '组件的额外信息,如横,纵坐标等',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_component` (`pipeline_id`,`component_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='项目训练流组件'
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_relation_user   */
/******************************************/
CREATE TABLE `workspace_relation_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `workspace_id` varchar(40) NOT NULL COMMENT '工作区ID',
  `user_id` varchar(40) NOT NULL COMMENT '机构ID',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=877 DEFAULT CHARSET=utf8mb3 COMMENT='工作区关联用户表'
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_rule   */
/******************************************/
CREATE TABLE `workspace_rule` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `workspace_id` varchar(64) DEFAULT NULL COMMENT '授权项目id',
  `rule_id` varchar(64) DEFAULT NULL COMMENT '规则id',
  `rule_name` varchar(64) NOT NULL COMMENT '规则名称',
  `rule_description` varchar(255) DEFAULT NULL COMMENT '规则描述',
  `rule_file_id` varchar(64) DEFAULT NULL,
  `rule_file_name` varchar(255) DEFAULT NULL COMMENT '脚本名称',
  `rule_source` varchar(64) DEFAULT NULL,
  `status` varchar(64) DEFAULT NULL,
  `rule_params` text,
  `operator_create` varchar(64) NOT NULL COMMENT '创建者',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '删除标识',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_user   */
/******************************************/
CREATE TABLE `workspace_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` char(40) NOT NULL COMMENT '用户ID',
  `operator_id` char(40) NOT NULL COMMENT '操作ID',
  `roles` varchar(512) NOT NULL COMMENT '角色Map',
  `user_account` varchar(64) NOT NULL COMMENT '用户账户',
  `user_name` varchar(64) NOT NULL COMMENT '用户名',
  `inst_id` char(40) DEFAULT NULL COMMENT '关联机构ID',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `account_status` tinyint(1) NOT NULL COMMENT '账户状态0冻结,1正常,2未激活',
  `operator_create` varchar(64) DEFAULT NULL COMMENT '创建者',
  `role_type` tinyint(1) NOT NULL COMMENT '角色类型0机构侧,1平台侧',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `gmt_delete` datetime DEFAULT NULL COMMENT '删除时间',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否被删除',
  `inst_name` varchar(255) DEFAULT NULL COMMENT '机构名称',
  `workspace_id` varchar(100) DEFAULT NULL,
  `acl_ips` varchar(255) DEFAULT NULL COMMENT '可信的用户登录IP地址',
  `alipay_user_id` char(40) DEFAULT NULL COMMENT '支付宝用户ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=462 DEFAULT CHARSET=utf8mb3 COMMENT='用户管理表'
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_worktable   */
/******************************************/
CREATE TABLE `workspace_worktable` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `workspace_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
  `datatable_id` varchar(129) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` tinyint DEFAULT NULL COMMENT '1-MYSQL2-CSV',
  `flag` tinyint NOT NULL COMMENT 'flag1-2-',
  `node_id` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(16) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ENABLEDISABLE',
  `alias` varchar(64) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'SCQL',
  `source` varchar(16) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'IMPORTEDCREATED',
  `physics_database_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '物理库名称',
  `table_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '工作表列配置，JSON格式',
  `gmt_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `operator` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_workspace_worktable` (`workspace_id`,`datatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3351 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
;

/******************************************/
/*   DatabaseName = openapi   */
/*   TableName = workspace_worktable_permission   */
/******************************************/
CREATE TABLE `workspace_worktable_permission` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `workspace_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '工作区ID',
  `node_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '授权给的成员节点ID',
  `datatable_id` char(40) COLLATE utf8mb4_general_ci NOT NULL COMMENT '被授权的工作表ID',
  `permission` text COLLATE utf8mb4_general_ci NOT NULL COMMENT '工作区授权内容，JSON',
  `gmt_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_workspace_node_worktable` (`workspace_id`,`node_id`,`datatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='节点对工作表的访问权限'
;
