# EMPTY TABLE

TRUNCATE TABLE _cache;
TRUNCATE TABLE _constant;
TRUNCATE TABLE _page;
TRUNCATE TABLE _record_history;
TRUNCATE TABLE _resource;
TRUNCATE TABLE _test_case;
TRUNCATE TABLE _ui;
TRUNCATE TABLE _user;
TRUNCATE TABLE _user_session;
TRUNCATE TABLE project;
TRUNCATE TABLE student;
TRUNCATE TABLE task;
TRUNCATE TABLE _directory_user_session;
TRUNCATE TABLE _group;
TRUNCATE TABLE _role;
TRUNCATE TABLE _user_group_role;
TRUNCATE TABLE _user_group_role_page;
TRUNCATE TABLE _user_group_role_resource;
TRUNCATE TABLE _view01_user;
TRUNCATE TABLE _view02_user_app;
TRUNCATE TABLE view01_project;
# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_cache`;
CREATE TABLE `_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '用户Id',
  `content` longtext COLLATE utf8mb4_bin COMMENT '缓存数据',
  `recordStatus` varchar(255) COLLATE utf8mb4_bin DEFAULT 'active',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC COMMENT = '缓存表';


# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_constant`;
CREATE TABLE `_constant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `constantType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '常量类型; object, array',
  `desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `constantValue` text COLLATE utf8mb4_bin COMMENT '常量内容; object, array',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC COMMENT = '常量表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'taskLevel','array','任务优先级','[\r\n    {\r\n        \"text\": \"无\",\r\n        \"value\": \"无\",\r\n        \"color\": \"grey\"\r\n    },\r\n    {\r\n        \"text\": \"低\",\r\n        \"value\": \"低\",\r\n        \"color\": \"green\"\r\n    },\r\n    {\r\n        \"text\": \"中\",\r\n        \"value\": \"中\",\r\n        \"color\": \"orange\"\r\n    },\r\n    {\r\n        \"text\": \"高\",\r\n        \"value\": \"高\",\r\n        \"color\": \"red\"\r\n    }\r\n]','update',NULL,NULL,'2023-03-07T15:17:37+08:00');
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'taskStatus','array','任务状态','[\r\n    {\r\n        \"text\": \"未开始\",\r\n        \"value\": \"未开始\",\r\n        \"color\": \"blue\"\r\n    },\r\n    {\r\n        \"text\": \"进行中\",\r\n        \"value\": \"进行中\",\r\n        \"color\": \"orange\"\r\n    },\r\n    {\r\n        \"text\": \"已完成\",\r\n        \"value\": \"已完成\",\r\n        \"color\": \"green\"\r\n    }\r\n]','update',NULL,NULL,'2023-03-07T15:17:37+08:00');

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_page`;
CREATE TABLE `_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'pageId',
  `pageFile` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'page文件指定; 默认使用pageId.html',
  `pageName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'page name',
  `pageType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '页面类型; showInMenu, dynamicInMenu',
  `pageIcon` text COLLATE utf8mb4_bin,
  `pageHook` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'pageHook',
  `sort` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC COMMENT = '页面表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _page
# ------------------------------------------------------------

INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageType`,`pageIcon`,`pageHook`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'help','helpV4','帮助','dynamicInMenu',NULL,NULL,'11','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageType`,`pageIcon`,`pageHook`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'login','loginV4','登陆','',NULL,NULL,'','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageType`,`pageIcon`,`pageHook`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (37,'workbenchManagement',NULL,'工作台','showInMenu',NULL,'{\"beforeHook\": [{\"service\": \"constant\", \"serviceFunc\": \"getConstantObj\", \"field\": \"constantObj\"}]}','5','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageType`,`pageIcon`,`pageHook`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (38,'projectManagement',NULL,'项目','showInMenu',NULL,NULL,'5','jhInsert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageType`,`pageIcon`,`pageHook`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (39,'taskManagementOfOneProject',NULL,'项目详情','dynamicInMenu',NULL,'{\"beforeHook\": [{\"service\": \"constant\", \"serviceFunc\": \"getConstantObj\", \"field\": \"constantObj\"}]}','5','jhInsert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageType`,`pageIcon`,`pageHook`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (40,'projectRecycledManagement',NULL,'回收站','showInMenu',NULL,NULL,'10','jhInsert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageType`,`pageIcon`,`pageHook`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (41,'projectArchiveManagement',NULL,'归档项目','showInMenu',NULL,NULL,'6','jhInsert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageType`,`pageIcon`,`pageHook`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (71,'https://demo.jianghujs.org/task/page/noticeManagement',NULL,'通知/待办','showInRightMenu','<svg width=\"28\" height=\"28\" viewBox=\"0 0 28 28\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"> <g id=\"Frame 19\"> <path id=\"Vector\" d=\"M14 0C6.2695 0 0 6.2695 0 14C0 21.7305 6.2695 28 14 28C21.7305 28 28 21.7305 28 14C28 6.2695 21.7305 0 14 0Z\" fill=\"#5DB55F\"/> <g id=\"Frame\"> <path id=\"Vector_2\" d=\"M15.2698 19.44L15.307 19.4419C15.5022 19.4633 15.6398 19.6499 15.5895 19.8403L15.57 19.9088C15.3646 20.5638 14.7393 21.04 14.0001 21.04L13.9239 21.0384C13.193 21.0057 12.5866 20.5075 12.4103 19.8403L12.4033 19.8048C12.3758 19.6153 12.5284 19.44 12.7303 19.44H15.2698ZM14.0001 6.95996C14.1274 6.95996 14.2495 7.01053 14.3395 7.10055C14.4295 7.19057 14.4801 7.31266 14.4801 7.43996V7.94364C16.9402 8.191 18.8001 10.3545 18.8001 12.8556V16.24L18.802 16.288C18.8141 16.4489 18.8866 16.5994 19.0049 16.7091C19.1232 16.8189 19.2787 16.8799 19.4401 16.88H19.5543L19.6087 16.8816C20.0055 16.9065 20.3562 17.1993 20.3959 17.5974L20.3994 17.6486C20.4037 17.7562 20.3861 17.8635 20.3479 17.9642C20.3096 18.0648 20.2514 18.1567 20.1768 18.2343C20.1022 18.312 20.0127 18.3737 19.9137 18.4159C19.8146 18.4581 19.7081 18.4799 19.6004 18.48H8.44583L8.39143 18.4784C7.99463 18.4534 7.64391 18.1606 7.60423 17.7625L7.60071 17.7113C7.59649 17.6037 7.61404 17.4964 7.65231 17.3957C7.69058 17.295 7.74878 17.2031 7.82342 17.1255C7.89807 17.0479 7.98762 16.9861 8.0867 16.9439C8.18579 16.9017 8.29238 16.88 8.40007 16.88H8.56007L8.60807 16.8784C8.76908 16.8663 8.91956 16.7937 9.02935 16.6753C9.13914 16.5569 9.20012 16.4014 9.20007 16.24V12.72C9.20007 10.231 11.0945 8.1846 13.5201 7.94364V7.43996C13.5201 7.31266 13.5706 7.19057 13.6607 7.10055C13.7507 7.01053 13.8728 6.95996 14.0001 6.95996Z\" fill=\"white\"/> </g> </g> </svg>',NULL,NULL,'insert',NULL,NULL,NULL);

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _record_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_record_history`;
CREATE TABLE `_record_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '表',
  `recordId` int(11) DEFAULT NULL COMMENT '数据在table中的主键id; recordContent.id',
  `recordContent` text COLLATE utf8mb4_bin NOT NULL COMMENT '数据',
  `packageContent` text COLLATE utf8mb4_bin NOT NULL COMMENT '当时请求的 package JSON',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_record_id` (`recordId`) USING BTREE,
  KEY `index_table_action` (`table`, `operation`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 260 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC COMMENT = '数据历史表';


# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource`;
CREATE TABLE `_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accessControlTable` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '数据规则控制表',
  `resourceHook` text COLLATE utf8mb4_bin COMMENT '[ "before": {"service": "xx", "serviceFunction": "xxx"}, "after": [] }',
  `pageId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'page id; E.g: index',
  `actionId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `resourceType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'resource 类型; E.g: auth service sql',
  `appDataSchema` text COLLATE utf8mb4_bin COMMENT 'appData 参数校验',
  `resourceData` text COLLATE utf8mb4_bin COMMENT 'resource 数据; { "service": "auth", "serviceFunction": "passwordLogin" } or  { "table": "${tableName}", "action": "select", "whereCondition": ".where(function() {this.whereNot( { recordStatus: \\"active\\" })})" }',
  `requestDemo` text COLLATE utf8mb4_bin COMMENT '请求Demo',
  `responseDemo` text COLLATE utf8mb4_bin COMMENT '响应Demo',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 401 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC COMMENT = '请求资源表; 软删除未启用; resourceId=`${appId}.${pageId}.${actionId}`';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (231,NULL,NULL,'login','passwordLogin','✅登陆','service','{}','{\"service\": \"user\", \"serviceFunction\": \"passwordLogin\"}','','','update',NULL,NULL,'2022-04-27T15:32:57+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (251,NULL,NULL,'allPage','logout','✅登出','service','{}','{\"service\": \"user\", \"serviceFunction\": \"logout\"}','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (253,NULL,NULL,'allPage','userInfo','✅获取用户信息','service','{}','{\"service\": \"user\", \"serviceFunction\": \"userInfo\"}','','','update',NULL,NULL,'2022-04-27T15:37:21+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (258,NULL,NULL,'allPage','getConstantList','✅查询常量','sql','{}','{\"table\": \"_constant\", \"operation\": \"select\"}','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (259,NULL,NULL,'allPage','getUserList','✅查询用户列表','sql','{}','{\"table\": \"_view01_user\", \"operation\": \"select\"}','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (260,NULL,NULL,'allPage','getTaskList','✅查询任务列表','sql','{}','{\"table\": \"task\", \"operation\": \"select\"}','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (261,NULL,NULL,'allPage','updateTask','✅更新task','sql','{}','{\"table\": \"task\", \"operation\": \"jhUpdate\"}','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (262,NULL,NULL,'allPage','deleteTask','✅删除task','sql','{}','{\"table\": \"task\", \"operation\": \"jhDelete\"}','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (263,NULL,NULL,'allPage','getProjectList','✅项目列表查询','sql','{}','{\"table\": \"project\", \"operation\": \"select\"}','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (264,NULL,NULL,'allPage','httpUploadByStream','✅ 文件分片上传-http文件流','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByStream\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (265,NULL,NULL,'allPage','uploadFileDone','✅ 文件分片上传-所有分片上传完毕','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadFileDone\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (357,NULL,NULL,'studentManagement','selectItemList','✅查询列表','sql','{}','{ \"table\": \"student\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (358,NULL,NULL,'studentManagement','insertItem','✅添加','sql','{}','{ \"table\": \"student\", \"operation\": \"insert\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (359,NULL,NULL,'studentManagement','updateItem','✅更新','sql','{}','{ \"table\": \"student\", \"operation\": \"jhUpdate\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (360,NULL,NULL,'studentManagement','deleteItem','✅删除','sql','{}','{ \"table\": \"student\", \"operation\": \"jhDelete\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (361,NULL,NULL,'workbenchManagement','selectItemList','✅查询列表','sql','{}','{ \"table\": \"task\", \"operation\": \"select\" }',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (362,NULL,NULL,'workbenchManagement','insertItem','✅添加','sql','{}','{ \"table\": \"task\", \"operation\": \"insert\" }',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (363,NULL,NULL,'workbenchManagement','updateItem','✅更新','sql','{}','{ \"table\": \"task\", \"operation\": \"jhUpdate\" }',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (364,NULL,NULL,'workbenchManagement','deleteItem','✅删除','sql','{}','{ \"table\": \"task\", \"operation\": \"jhDelete\" }',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (365,NULL,NULL,'projectManagement','selectItemList','✅项目查询-查询列表','sql','{}','{ \"table\": \"view01_project\", \"operation\": \"select\" }',NULL,NULL,'jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (366,NULL,'{\"before\": [{\"service\": \"common\", \"serviceFunction\": \"generateBizIdOfBeforeHook\"}], \"after\": []}','projectManagement','insertItem','✅项目查询-添加成员','sql','{}','{ \"table\": \"project\", \"operation\": \"jhInsert\" }',NULL,NULL,'jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (367,NULL,NULL,'projectManagement','updateItem','✅项目查询-更新成员','sql','{}','{ \"table\": \"project\", \"operation\": \"jhUpdate\" }',NULL,NULL,'jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (368,NULL,NULL,'projectManagement','deleteItem','✅项目查询-删除信息','sql','{}','{ \"table\": \"project\", \"operation\": \"jhDelete\" }',NULL,NULL,'jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (369,NULL,NULL,'taskManagementOfOneProject','selectCurrentList','✅项目的任务管理-查询当前任务下的项目列表','sql','{}','{ \"table\": \"task\", \"operation\": \"select\" }',NULL,NULL,'jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (370,NULL,'{\"before\": [{\"service\": \"common\", \"serviceFunction\": \"generateBizIdOfBeforeHook\"}], \"after\": []}','taskManagementOfOneProject','insertItem','✅项目的任务管理-建立关系','sql','{}','{ \"table\": \"task\", \"operation\": \"jhInsert\" }',NULL,NULL,'jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (371,NULL,NULL,'taskManagementOfOneProject','updateItem','✅项目的任务管理-更新数据','sql','{}','{ \"table\": \"task\", \"operation\": \"jhUpdate\" }',NULL,NULL,'jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (372,NULL,NULL,'taskManagementOfOneProject','deleteItem','✅项目的任务管理-删除信息','sql','{}','{ \"table\": \"task\", \"operation\": \"jhDelete\" }',NULL,NULL,'jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (373,NULL,NULL,'taskManagementOfOneProject','selectAllList','✅项目查询-查询列表','sql','{}','{ \"table\": \"task\", \"operation\": \"select\" }',NULL,NULL,'jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (374,NULL,NULL,'taskManagementOfOneProject','getProjectList','✅项目查询-查询列表','sql','{}','{ \"table\": \"view01_project\", \"operation\": \"select\" }',NULL,NULL,'jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (400,NULL,NULL,'projectRecycledManagement','deleteProject','✅彻底删除项目','service','{}','{\"service\": \"project\", \"serviceFunction\": \"deleteProject\"}',NULL,NULL,'jhInsert',NULL,NULL,NULL);

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _test_case
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_test_case`;
CREATE TABLE `_test_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '页面Id',
  `testId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '测试用例Id; 10000 ++',
  `testName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '测试用例名',
  `uiActionIdList` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'uiAction列表; 一个测试用例对应多个uiActionId',
  `testOpeartion` text COLLATE utf8mb4_bin COMMENT '测试用例步骤;',
  `expectedResult` text COLLATE utf8mb4_bin COMMENT '期望结果',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC COMMENT = '测试用例表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _test_case
# ------------------------------------------------------------


# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _ui
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_ui`;
CREATE TABLE `_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'page id; E.g: index',
  `uiActionType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ui 动作类型，如：fetchData, postData, changeUi',
  `uiActionId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `uiActionConfig` text COLLATE utf8mb4_bin COMMENT 'ui 动作数据',
  `appDataSchema` text COLLATE utf8mb4_bin COMMENT 'ui 校验数据',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC COMMENT = 'ui 施工方案';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _ui
# ------------------------------------------------------------

INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'taskManagementOfOneProject','ui','refreshTableData','✅获取表格数据','{\"main\": [{\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'taskManagementOfOneProject','ui','startCreateItem','✅打开新增抽屉','{\"main\": [{\"function\": \"clearItemData\"}, {\"function\": \"openCreateItemDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'taskManagementOfOneProject','ui','createItem','✅新增数据','{\"before\": [{\"function\": \"confirmCreateItemDialog\"}], \"main\": [{\"function\": \"doCreateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (4,'taskManagementOfOneProject','ui','startUpdateItem','✅打开编辑抽屉','{\"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"openUpdateDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (5,'taskManagementOfOneProject','ui','updateItem','✅编辑数据','{\"before\": [{\"function\": \"confirmUpdateItemDialog\"}], \"main\": [{\"function\": \"doUpdateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'taskManagementOfOneProject','ui','deleteItem','✅删除','{\"before\": [{\"function\": \"confirmDeleteItemDialog\"}], \"main\": [{\"function\": \"doDeleteItem\"}, {\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7,'taskManagementOfOneProject','ui','redirect','✅跳转详情','{\"main\": [{\"function\": \"doRedirect\"}]}',NULL,'insert',NULL,NULL,NULL);

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '自增id; 用于生成userId',
  `userId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '主键id',
  `username` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户名(登陆)',
  `clearTextPassword` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '明文密码',
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '密码',
  `md5Salt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'md5Salt',
  `userStatus` varchar(255) COLLATE utf8mb4_bin DEFAULT 'active' COMMENT '用户账号状态：活跃或关闭',
  `userType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户类型; staff, student.',
  `config` mediumtext COLLATE utf8mb4_bin COMMENT '配置信息',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username_index` (`username`) USING BTREE,
  UNIQUE KEY `userId_index` (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC COMMENT = '用户表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user
# ------------------------------------------------------------

INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (42,NULL,'admin','系统管理员','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (43,NULL,'W00001','张三丰','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (44,NULL,'W00002','张无忌','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (45,NULL,'G00001','洪七公','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (46,NULL,'G00002','郭靖','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (47,NULL,'H00001','岳不群','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (48,NULL,'H00002','令狐冲','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_session`;
CREATE TABLE `_user_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户id',
  `userIp` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户ip',
  `userIpRegion` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户Ip区域',
  `userAgent` text COLLATE utf8mb4_bin COMMENT '请求的 agent',
  `deviceId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '设备id',
  `deviceType` varchar(255) COLLATE utf8mb4_bin DEFAULT 'web' COMMENT '设备类型; flutter, web, bot_databot, bot_chatbot, bot_xiaochengxu',
  `socketStatus` varchar(255) COLLATE utf8mb4_bin DEFAULT 'offline' COMMENT 'socket状态',
  `authToken` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'auth token',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE,
  KEY `userId_deviceId_index` (`userId`, `deviceId`) USING BTREE,
  KEY `authToken_index` (`authToken`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC COMMENT = '用户session表; deviceId 维度;软删除未启用;';


# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: project
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` int(11) DEFAULT NULL COMMENT '自增ID, 1001++',
  `projectId` varchar(255) DEFAULT NULL COMMENT '项目ID',
  `projectManagerId` varchar(255) DEFAULT NULL COMMENT '项目管理员id;',
  `projectAfficheList` text COMMENT '项目公告列表;',
  `projectName` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `projectIcon` varchar(255) DEFAULT NULL COMMENT '项目图标',
  `projectStartAt` varchar(255) DEFAULT NULL COMMENT '项目开始时间',
  `projectEndAt` varchar(255) DEFAULT NULL COMMENT '项目截止时间',
  `projectDesc` varchar(255) DEFAULT NULL COMMENT '项目描述',
  `projectMemberIdList` varchar(255) DEFAULT NULL COMMENT '项目成员列表',
  `projectGroup` varchar(255) DEFAULT '未分组' COMMENT '项目分组',
  `projectArchiveAt` varchar(255) DEFAULT NULL COMMENT '项目归档时间;',
  `projectDeleteAt` varchar(255) DEFAULT NULL COMMENT '项目删除时间;',
  `projectCreateAt` varchar(255) DEFAULT NULL COMMENT '项目创建时间',
  `isDelete` varchar(255) DEFAULT '否' COMMENT '是否删除;是,否',
  `isArchive` varchar(255) DEFAULT '否' COMMENT '是否归档;是,否',
  `isMark` varchar(255) DEFAULT '否' COMMENT '是否星标项目;是,否',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 DEFAULT CHARSET = utf8mb4 ROW_FORMAT = DYNAMIC COMMENT = '项目表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: project
# ------------------------------------------------------------

INSERT INTO `project` (`id`,`idSequence`,`projectId`,`projectManagerId`,`projectAfficheList`,`projectName`,`projectIcon`,`projectStartAt`,`projectEndAt`,`projectDesc`,`projectMemberIdList`,`projectGroup`,`projectArchiveAt`,`projectDeleteAt`,`projectCreateAt`,`isDelete`,`isArchive`,`isMark`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (114,1002,'XM1002','admin','','sz书城','account-outline','2023-11-01','2024-01-31',NULL,'admin','未分组','2023-12-27 02:49:50',NULL,'2023-12-19 16:21:17','否','是','是','jhUpdate','admin','超级管理员','2023-12-27T02:49:50+08:00');
INSERT INTO `project` (`id`,`idSequence`,`projectId`,`projectManagerId`,`projectAfficheList`,`projectName`,`projectIcon`,`projectStartAt`,`projectEndAt`,`projectDesc`,`projectMemberIdList`,`projectGroup`,`projectArchiveAt`,`projectDeleteAt`,`projectCreateAt`,`isDelete`,`isArchive`,`isMark`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (116,1003,'XM1003','admin',NULL,'aw氛围灯1','account-settings','2023-11-03','2023-12-15',NULL,'admin','外包',NULL,NULL,'2023-12-19 16:49:38','否','否','否','jhUpdate','admin','超级管理员','2023-12-30T20:34:15+08:00');
INSERT INTO `project` (`id`,`idSequence`,`projectId`,`projectManagerId`,`projectAfficheList`,`projectName`,`projectIcon`,`projectStartAt`,`projectEndAt`,`projectDesc`,`projectMemberIdList`,`projectGroup`,`projectArchiveAt`,`projectDeleteAt`,`projectCreateAt`,`isDelete`,`isArchive`,`isMark`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (117,1004,'XM1004','admin','[{\"content\":\"要加快进度了，2023年底完成\",\"createAt\":\"2023-12-22 23:27:51\",\"userId\":\"admin\",\"username\":\"超级管理员\"}]','hp美业','airplane','2023-12-20','2023-12-31',NULL,'admin','未分组',NULL,NULL,'2023-12-20 22:30:32','否','否','是','jhUpdate','admin','超级管理员','2024-03-19T21:26:31+08:00');

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: student
# ------------------------------------------------------------

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '学生ID',
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '学生名字',
  `gender` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '性别',
  `dateOfBirth` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '出生日期',
  `classId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '班级ID',
  `level` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '年级',
  `bodyHeight` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '身高',
  `studentStatus` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '学生状态',
  `remarks` mediumtext COLLATE utf8mb4_bin COMMENT '备注',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: student
# ------------------------------------------------------------


# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: task
# ------------------------------------------------------------

DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` int(11) DEFAULT NULL COMMENT '自增ID, 1001++',
  `projectId` varchar(255) DEFAULT NULL COMMENT '项目ID;',
  `taskId` varchar(255) DEFAULT NULL COMMENT '任务ID;',
  `taskTitle` varchar(255) DEFAULT NULL COMMENT '任务名称;',
  `taskDesc` varchar(255) DEFAULT NULL COMMENT '任务描述;',
  `taskLevel` varchar(255) DEFAULT NULL COMMENT '任务优先级;无,低,中,高',
  `taskTag` varchar(255) DEFAULT NULL COMMENT '任务标签;',
  `taskStatus` varchar(255) DEFAULT '未开始' COMMENT '任务状态;未开始,进行中,已完成',
  `taskType` varchar(255) DEFAULT NULL COMMENT '任务类型:;公告,任务,审批,日志',
  `taskContent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '任务内容;富文本',
  `taskCreateAt` varchar(255) DEFAULT NULL COMMENT '任务创建时间;',
  `taskStartAt` varchar(255) DEFAULT NULL COMMENT '任务开始时间;',
  `taskEndAt` varchar(255) DEFAULT NULL COMMENT '任务结束时间;',
  `taskManagerId` varchar(255) DEFAULT NULL COMMENT '负责人id;只能一个',
  `taskMemberIdList` varchar(255) DEFAULT NULL COMMENT '参与人id;可能多个',
  `taskCommentList` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '任务评论列表',
  `taskChildList` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '子任务列表',
  `taskRelationList` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '任务关联的信息列表',
  `taskFileList` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '任务关联的附件列表',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 DEFAULT CHARSET = utf8mb4 ROW_FORMAT = DYNAMIC COMMENT = '任务表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: task
# ------------------------------------------------------------

INSERT INTO `task` (`id`,`idSequence`,`projectId`,`taskId`,`taskTitle`,`taskDesc`,`taskLevel`,`taskTag`,`taskStatus`,`taskType`,`taskContent`,`taskCreateAt`,`taskStartAt`,`taskEndAt`,`taskManagerId`,`taskMemberIdList`,`taskCommentList`,`taskChildList`,`taskRelationList`,`taskFileList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (111,1001,'XM1001','RW1001','任务01',NULL,NULL,NULL,'未开始',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'jhInsert','admin','系统管理员','2023-12-18T23:17:18+08:00');
INSERT INTO `task` (`id`,`idSequence`,`projectId`,`taskId`,`taskTitle`,`taskDesc`,`taskLevel`,`taskTag`,`taskStatus`,`taskType`,`taskContent`,`taskCreateAt`,`taskStartAt`,`taskEndAt`,`taskManagerId`,`taskMemberIdList`,`taskCommentList`,`taskChildList`,`taskRelationList`,`taskFileList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (115,1002,'XM1002','RW1002','书城首页',NULL,'无',NULL,'未开始',NULL,NULL,'2023-12-20 16:16:10',NULL,NULL,'admin','admin',NULL,NULL,NULL,NULL,'jhUpdate','admin03','超级管理员03','2023-12-23T21:28:42+08:00');
INSERT INTO `task` (`id`,`idSequence`,`projectId`,`taskId`,`taskTitle`,`taskDesc`,`taskLevel`,`taskTag`,`taskStatus`,`taskType`,`taskContent`,`taskCreateAt`,`taskStartAt`,`taskEndAt`,`taskManagerId`,`taskMemberIdList`,`taskCommentList`,`taskChildList`,`taskRelationList`,`taskFileList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (116,1003,'XM1002','RW1003','详情页',NULL,'无',NULL,'已完成',NULL,NULL,'2023-12-20 16:16:22',NULL,NULL,'admin','admin','[{\"id\":1,\"username\":\"系统管理员\",\"userId\":\"admin\",\"content\":\"123\",\"time\":\"2023-12-21 20:42:29\"}]',NULL,NULL,NULL,'jhUpdate','admin','系统管理员','2023-12-21T20:42:30+08:00');
INSERT INTO `task` (`id`,`idSequence`,`projectId`,`taskId`,`taskTitle`,`taskDesc`,`taskLevel`,`taskTag`,`taskStatus`,`taskType`,`taskContent`,`taskCreateAt`,`taskStartAt`,`taskEndAt`,`taskManagerId`,`taskMemberIdList`,`taskCommentList`,`taskChildList`,`taskRelationList`,`taskFileList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (117,1004,'XM1002','RW1004','微信登录',NULL,'高','微信,登录','已完成',NULL,'11111','2023-12-20 16:16:29','2023-12-21','2023-12-31','admin','admin','[{\"id\":1,\"username\":\"系统管理员\",\"userId\":\"admin\",\"content\":\"1111\",\"time\":\"2023-12-21 15:35:25\"},{\"id\":2,\"username\":\"系统管理员\",\"userId\":\"admin\",\"content\":\"23232323\",\"time\":\"2023-12-21 15:53:18\"}]','[]',NULL,'[]','jhUpdate','admin','系统管理员','2023-12-21T16:13:02+08:00');
INSERT INTO `task` (`id`,`idSequence`,`projectId`,`taskId`,`taskTitle`,`taskDesc`,`taskLevel`,`taskTag`,`taskStatus`,`taskType`,`taskContent`,`taskCreateAt`,`taskStartAt`,`taskEndAt`,`taskManagerId`,`taskMemberIdList`,`taskCommentList`,`taskChildList`,`taskRelationList`,`taskFileList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (118,1005,'XM1002','RW1005','111',NULL,'无',NULL,'未开始',NULL,NULL,'2023-12-22 22:15:12',NULL,NULL,'admin','admin',NULL,NULL,NULL,NULL,'jhInsert','admin','系统管理员','2023-12-22T22:15:14+08:00');
INSERT INTO `task` (`id`,`idSequence`,`projectId`,`taskId`,`taskTitle`,`taskDesc`,`taskLevel`,`taskTag`,`taskStatus`,`taskType`,`taskContent`,`taskCreateAt`,`taskStartAt`,`taskEndAt`,`taskManagerId`,`taskMemberIdList`,`taskCommentList`,`taskChildList`,`taskRelationList`,`taskFileList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (119,1006,'XM1002','RW1006','2222',NULL,'无',NULL,'未开始',NULL,NULL,'2023-12-22 22:15:20',NULL,NULL,'admin','admin',NULL,NULL,NULL,NULL,'jhInsert','admin','系统管理员','2023-12-22T22:15:21+08:00');
INSERT INTO `task` (`id`,`idSequence`,`projectId`,`taskId`,`taskTitle`,`taskDesc`,`taskLevel`,`taskTag`,`taskStatus`,`taskType`,`taskContent`,`taskCreateAt`,`taskStartAt`,`taskEndAt`,`taskManagerId`,`taskMemberIdList`,`taskCommentList`,`taskChildList`,`taskRelationList`,`taskFileList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (120,1007,'XM1002','RW1007','333',NULL,'低',NULL,'未开始',NULL,NULL,'2023-12-22 22:46:58','2023-12-04','2023-12-11','admin','admin',NULL,NULL,NULL,NULL,'jhUpdate','admin','超级管理员','2023-12-28T13:52:14+08:00');
INSERT INTO `task` (`id`,`idSequence`,`projectId`,`taskId`,`taskTitle`,`taskDesc`,`taskLevel`,`taskTag`,`taskStatus`,`taskType`,`taskContent`,`taskCreateAt`,`taskStartAt`,`taskEndAt`,`taskManagerId`,`taskMemberIdList`,`taskCommentList`,`taskChildList`,`taskRelationList`,`taskFileList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (121,1008,'XM1004','RW1008','服务器建议到aa',NULL,'低',NULL,'未开始',NULL,NULL,'2023-12-22 23:26:39',NULL,'2023-12-04','admin','admin',NULL,NULL,NULL,NULL,'jhUpdate','admin','超级管理员','2023-12-26T18:21:47+08:00');
INSERT INTO `task` (`id`,`idSequence`,`projectId`,`taskId`,`taskTitle`,`taskDesc`,`taskLevel`,`taskTag`,`taskStatus`,`taskType`,`taskContent`,`taskCreateAt`,`taskStartAt`,`taskEndAt`,`taskManagerId`,`taskMemberIdList`,`taskCommentList`,`taskChildList`,`taskRelationList`,`taskFileList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (122,1009,'XM1004','RW1009','云开发迁移laf',NULL,'无',NULL,'未开始',NULL,NULL,'2023-12-22 23:27:06',NULL,NULL,'admin','admin',NULL,NULL,NULL,NULL,'jhInsert','admin','超级管理员','2023-12-22T23:27:04+08:00');
INSERT INTO `task` (`id`,`idSequence`,`projectId`,`taskId`,`taskTitle`,`taskDesc`,`taskLevel`,`taskTag`,`taskStatus`,`taskType`,`taskContent`,`taskCreateAt`,`taskStartAt`,`taskEndAt`,`taskManagerId`,`taskMemberIdList`,`taskCommentList`,`taskChildList`,`taskRelationList`,`taskFileList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (123,1010,'XM1004','RW1010','调研云开发',NULL,'无',NULL,'已完成',NULL,NULL,'2023-12-22 23:27:19',NULL,NULL,'admin','admin',NULL,NULL,NULL,NULL,'jhUpdate','admin','超级管理员','2023-12-22T23:27:19+08:00');
INSERT INTO `task` (`id`,`idSequence`,`projectId`,`taskId`,`taskTitle`,`taskDesc`,`taskLevel`,`taskTag`,`taskStatus`,`taskType`,`taskContent`,`taskCreateAt`,`taskStartAt`,`taskEndAt`,`taskManagerId`,`taskMemberIdList`,`taskCommentList`,`taskChildList`,`taskRelationList`,`taskFileList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (124,1011,'XM1003','RW1011','设计稿完成',NULL,'无',NULL,'进行中',NULL,NULL,'2024-01-24 10:51:39',NULL,NULL,'admin','admin',NULL,NULL,NULL,NULL,'jhUpdate','admin','超级管理员','2024-03-19T21:10:41+08:00');

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_project
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_project` AS
select
  `project`.`id` AS `id`,
  `project`.`idSequence` AS `idSequence`,
  `project`.`projectId` AS `projectId`,
  `project`.`projectManagerId` AS `projectManagerId`,
  `project`.`projectName` AS `projectName`,
  `project`.`projectIcon` AS `projectIcon`,
  `project`.`projectStartAt` AS `projectStartAt`,
  `project`.`projectEndAt` AS `projectEndAt`,
  `project`.`projectDesc` AS `projectDesc`,
  `project`.`projectMemberIdList` AS `projectMemberIdList`,
  `project`.`projectGroup` AS `projectGroup`,
  `project`.`projectArchiveAt` AS `projectArchiveAt`,
  `project`.`projectDeleteAt` AS `projectDeleteAt`,
  `project`.`projectCreateAt` AS `projectCreateAt`,
  `project`.`isDelete` AS `isDelete`,
  `project`.`isArchive` AS `isArchive`,
  `project`.`isMark` AS `isMark`,
  `project`.`operation` AS `operation`,
  `project`.`operationByUserId` AS `operationByUserId`,
  `project`.`operationByUser` AS `operationByUser`,
  `project`.`operationAt` AS `operationAt`,
  `project`.`projectAfficheList` AS `projectAfficheList`,
  count(`t`.`taskId`) AS `totalTasks`,
  count(
  (
    case
    when (`t`.`taskStatus` = '未开始') then 1
    end
  )
  ) AS `notStartedTasks`,
  count(
  (
    case
    when (`t`.`taskStatus` = '进行中') then 1
    end
  )
  ) AS `inProgressTasks`,
  count(
  (
    case
    when (`t`.`taskStatus` = '已完成') then 1
    end
  )
  ) AS `completedTasks`
from
  (
  `project`
  left join `task` `t` on((`project`.`projectId` = `t`.`projectId`))
  )
group by
  `project`.`id`,
  `project`.`operationAt`;



