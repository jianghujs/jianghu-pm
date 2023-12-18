CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` int(11) DEFAULT NULL COMMENT '自增ID, 1001++',
  `projectId` varchar(255) DEFAULT NULL COMMENT '项目ID',
  `projectName` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `projectIcon` varchar(255) DEFAULT NULL COMMENT '项目图标',
  `projectStartAt` varchar(255) DEFAULT NULL COMMENT '项目开始时间',
  `projectEndAt` varchar(255) DEFAULT NULL COMMENT '项目截止时间',
  `projectDesc` varchar(255) DEFAULT NULL COMMENT '项目描述',
  `projectMemberIdList` varchar(255) DEFAULT NULL COMMENT '项目成员列表',
  `projectGroup` varchar(255) DEFAULT NULL COMMENT '项目分组',
  `projectCreateAt` varchar(255) DEFAULT NULL COMMENT '项目创建时间',
  `isDelete` varchar(255) DEFAULT NULL COMMENT '是否删除;是,否',
  `isArchive` varchar(255) DEFAULT NULL COMMENT '是否归档;是,否',
  `isMark` varchar(255) DEFAULT NULL COMMENT '是否星标项目;是,否',
 
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='项目表';

CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` int(11) DEFAULT NULL COMMENT '自增ID, 1001++',
  `projectId` varchar(255) DEFAULT NULL COMMENT '项目ID;',
  `taskId` varchar(255) DEFAULT NULL COMMENT '任务ID;',
  `taskTitle` varchar(255) DEFAULT NULL COMMENT '任务名称;',
  `taskDesc` varchar(255) DEFAULT NULL COMMENT '任务描述;',
  `taskLevel` varchar(255) DEFAULT NULL COMMENT '任务优先级;无,低,中,高',
  `taskTag` varchar(255) DEFAULT NULL COMMENT '任务标签;',
  `taskStatus` varchar(255) DEFAULT '进行中' COMMENT '任务状态;未开始进行中,已完成',
  `taskType` varchar(255) DEFAULT NULL COMMENT '任务类型:;公告,任务,审批,日志',

  `taskContent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '任务内容;富文本',
  `taskCreateAt` varchar(255) DEFAULT NULL COMMENT '任务创建时间;',
  `taskStartAt` varchar(255) DEFAULT NULL COMMENT '任务开始时间;',
  `taskEndAt` varchar(255) DEFAULT NULL COMMENT '任务结束时间;',
  `taskManagerId` varchar(255) DEFAULT NULL COMMENT '负责人id;只能一个',
  `taskMemberIdList` varchar(255) DEFAULT NULL COMMENT '参与人id;可能多个',

  `taskChildList` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '子任务列表',
  `taskRelationList` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '任务关联的信息列表',
  `taskFileList` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '任务关联的附件列表',
  
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='任务表';