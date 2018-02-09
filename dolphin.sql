/*
Navicat MySQL Data Transfer

Source Server         : locaohost
Source Server Version : 50719
Source Host           : 127.0.0.1:3306
Source Database       : dolphin

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-02-09 17:17:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zj_admin_access
-- ----------------------------
DROP TABLE IF EXISTS `zj_admin_access`;
CREATE TABLE `zj_admin_access` (
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模型名称',
  `group` varchar(16) NOT NULL DEFAULT '' COMMENT '权限分组标识',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `nid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '授权节点id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='统一授权表';

-- ----------------------------
-- Records of zj_admin_access
-- ----------------------------

-- ----------------------------
-- Table structure for zj_admin_action
-- ----------------------------
DROP TABLE IF EXISTS `zj_admin_action`;
CREATE TABLE `zj_admin_action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '所属模块名',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '行为标题',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '行为描述',
  `rule` text NOT NULL COMMENT '行为规则',
  `log` text NOT NULL COMMENT '日志规则',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='系统行为表';

-- ----------------------------
-- Records of zj_admin_action
-- ----------------------------
INSERT INTO `zj_admin_action` VALUES ('1', 'user', 'user_add', '添加用户', '添加用户', '', '[user|get_nickname] 添加了用户：[record|get_nickname]', '1', '1480156399', '1480163853');
INSERT INTO `zj_admin_action` VALUES ('2', 'user', 'user_edit', '编辑用户', '编辑用户', '', '[user|get_nickname] 编辑了用户：[details]', '1', '1480164578', '1480297748');
INSERT INTO `zj_admin_action` VALUES ('3', 'user', 'user_delete', '删除用户', '删除用户', '', '[user|get_nickname] 删除了用户：[details]', '1', '1480168582', '1480168616');
INSERT INTO `zj_admin_action` VALUES ('4', 'user', 'user_enable', '启用用户', '启用用户', '', '[user|get_nickname] 启用了用户：[details]', '1', '1480169185', '1480169185');
INSERT INTO `zj_admin_action` VALUES ('5', 'user', 'user_disable', '禁用用户', '禁用用户', '', '[user|get_nickname] 禁用了用户：[details]', '1', '1480169214', '1480170581');
INSERT INTO `zj_admin_action` VALUES ('6', 'user', 'user_access', '用户授权', '用户授权', '', '[user|get_nickname] 对用户：[record|get_nickname] 进行了授权操作。详情：[details]', '1', '1480221441', '1480221563');
INSERT INTO `zj_admin_action` VALUES ('7', 'user', 'role_add', '添加角色', '添加角色', '', '[user|get_nickname] 添加了角色：[details]', '1', '1480251473', '1480251473');
INSERT INTO `zj_admin_action` VALUES ('8', 'user', 'role_edit', '编辑角色', '编辑角色', '', '[user|get_nickname] 编辑了角色：[details]', '1', '1480252369', '1480252369');
INSERT INTO `zj_admin_action` VALUES ('9', 'user', 'role_delete', '删除角色', '删除角色', '', '[user|get_nickname] 删除了角色：[details]', '1', '1480252580', '1480252580');
INSERT INTO `zj_admin_action` VALUES ('10', 'user', 'role_enable', '启用角色', '启用角色', '', '[user|get_nickname] 启用了角色：[details]', '1', '1480252620', '1480252620');
INSERT INTO `zj_admin_action` VALUES ('11', 'user', 'role_disable', '禁用角色', '禁用角色', '', '[user|get_nickname] 禁用了角色：[details]', '1', '1480252651', '1480252651');
INSERT INTO `zj_admin_action` VALUES ('12', 'user', 'attachment_enable', '启用附件', '启用附件', '', '[user|get_nickname] 启用了附件：附件ID([details])', '1', '1480253226', '1480253332');
INSERT INTO `zj_admin_action` VALUES ('13', 'user', 'attachment_disable', '禁用附件', '禁用附件', '', '[user|get_nickname] 禁用了附件：附件ID([details])', '1', '1480253267', '1480253340');
INSERT INTO `zj_admin_action` VALUES ('14', 'user', 'attachment_delete', '删除附件', '删除附件', '', '[user|get_nickname] 删除了附件：附件ID([details])', '1', '1480253323', '1480253323');
INSERT INTO `zj_admin_action` VALUES ('15', 'admin', 'config_add', '添加配置', '添加配置', '', '[user|get_nickname] 添加了配置，[details]', '1', '1480296196', '1480296196');
INSERT INTO `zj_admin_action` VALUES ('16', 'admin', 'config_edit', '编辑配置', '编辑配置', '', '[user|get_nickname] 编辑了配置：[details]', '1', '1480296960', '1480296960');
INSERT INTO `zj_admin_action` VALUES ('17', 'admin', 'config_enable', '启用配置', '启用配置', '', '[user|get_nickname] 启用了配置：[details]', '1', '1480298479', '1480298479');
INSERT INTO `zj_admin_action` VALUES ('18', 'admin', 'config_disable', '禁用配置', '禁用配置', '', '[user|get_nickname] 禁用了配置：[details]', '1', '1480298506', '1480298506');
INSERT INTO `zj_admin_action` VALUES ('19', 'admin', 'config_delete', '删除配置', '删除配置', '', '[user|get_nickname] 删除了配置：[details]', '1', '1480298532', '1480298532');
INSERT INTO `zj_admin_action` VALUES ('20', 'admin', 'database_export', '备份数据库', '备份数据库', '', '[user|get_nickname] 备份了数据库：[details]', '1', '1480298946', '1480298946');
INSERT INTO `zj_admin_action` VALUES ('21', 'admin', 'database_import', '还原数据库', '还原数据库', '', '[user|get_nickname] 还原了数据库：[details]', '1', '1480301990', '1480302022');
INSERT INTO `zj_admin_action` VALUES ('22', 'admin', 'database_optimize', '优化数据表', '优化数据表', '', '[user|get_nickname] 优化了数据表：[details]', '1', '1480302616', '1480302616');
INSERT INTO `zj_admin_action` VALUES ('23', 'admin', 'database_repair', '修复数据表', '修复数据表', '', '[user|get_nickname] 修复了数据表：[details]', '1', '1480302798', '1480302798');
INSERT INTO `zj_admin_action` VALUES ('24', 'admin', 'database_backup_delete', '删除数据库备份', '删除数据库备份', '', '[user|get_nickname] 删除了数据库备份：[details]', '1', '1480302870', '1480302870');
INSERT INTO `zj_admin_action` VALUES ('25', 'admin', 'hook_add', '添加钩子', '添加钩子', '', '[user|get_nickname] 添加了钩子：[details]', '1', '1480303198', '1480303198');
INSERT INTO `zj_admin_action` VALUES ('26', 'admin', 'hook_edit', '编辑钩子', '编辑钩子', '', '[user|get_nickname] 编辑了钩子：[details]', '1', '1480303229', '1480303229');
INSERT INTO `zj_admin_action` VALUES ('27', 'admin', 'hook_delete', '删除钩子', '删除钩子', '', '[user|get_nickname] 删除了钩子：[details]', '1', '1480303264', '1480303264');
INSERT INTO `zj_admin_action` VALUES ('28', 'admin', 'hook_enable', '启用钩子', '启用钩子', '', '[user|get_nickname] 启用了钩子：[details]', '1', '1480303294', '1480303294');
INSERT INTO `zj_admin_action` VALUES ('29', 'admin', 'hook_disable', '禁用钩子', '禁用钩子', '', '[user|get_nickname] 禁用了钩子：[details]', '1', '1480303409', '1480303409');
INSERT INTO `zj_admin_action` VALUES ('30', 'admin', 'menu_add', '添加节点', '添加节点', '', '[user|get_nickname] 添加了节点：[details]', '1', '1480305468', '1480305468');
INSERT INTO `zj_admin_action` VALUES ('31', 'admin', 'menu_edit', '编辑节点', '编辑节点', '', '[user|get_nickname] 编辑了节点：[details]', '1', '1480305513', '1480305513');
INSERT INTO `zj_admin_action` VALUES ('32', 'admin', 'menu_delete', '删除节点', '删除节点', '', '[user|get_nickname] 删除了节点：[details]', '1', '1480305562', '1480305562');
INSERT INTO `zj_admin_action` VALUES ('33', 'admin', 'menu_enable', '启用节点', '启用节点', '', '[user|get_nickname] 启用了节点：[details]', '1', '1480305630', '1480305630');
INSERT INTO `zj_admin_action` VALUES ('34', 'admin', 'menu_disable', '禁用节点', '禁用节点', '', '[user|get_nickname] 禁用了节点：[details]', '1', '1480305659', '1480305659');
INSERT INTO `zj_admin_action` VALUES ('35', 'admin', 'module_install', '安装模块', '安装模块', '', '[user|get_nickname] 安装了模块：[details]', '1', '1480307558', '1480307558');
INSERT INTO `zj_admin_action` VALUES ('36', 'admin', 'module_uninstall', '卸载模块', '卸载模块', '', '[user|get_nickname] 卸载了模块：[details]', '1', '1480307588', '1480307588');
INSERT INTO `zj_admin_action` VALUES ('37', 'admin', 'module_enable', '启用模块', '启用模块', '', '[user|get_nickname] 启用了模块：[details]', '1', '1480307618', '1480307618');
INSERT INTO `zj_admin_action` VALUES ('38', 'admin', 'module_disable', '禁用模块', '禁用模块', '', '[user|get_nickname] 禁用了模块：[details]', '1', '1480307653', '1480307653');
INSERT INTO `zj_admin_action` VALUES ('39', 'admin', 'module_export', '导出模块', '导出模块', '', '[user|get_nickname] 导出了模块：[details]', '1', '1480307682', '1480307682');
INSERT INTO `zj_admin_action` VALUES ('40', 'admin', 'packet_install', '安装数据包', '安装数据包', '', '[user|get_nickname] 安装了数据包：[details]', '1', '1480308342', '1480308342');
INSERT INTO `zj_admin_action` VALUES ('41', 'admin', 'packet_uninstall', '卸载数据包', '卸载数据包', '', '[user|get_nickname] 卸载了数据包：[details]', '1', '1480308372', '1480308372');
INSERT INTO `zj_admin_action` VALUES ('42', 'admin', 'system_config_update', '更新系统设置', '更新系统设置', '', '[user|get_nickname] 更新了系统设置：[details]', '1', '1480309555', '1480309642');
INSERT INTO `zj_admin_action` VALUES ('146', 'cms', 'document_enable', '启用文档', '启用文档', '', '[user|get_nickname] 启用了文档：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('145', 'cms', 'document_disable', '禁用文档', '禁用文档', '', '[user|get_nickname] 禁用了文档：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('144', 'cms', 'advert_add', '添加广告', '添加广告', '', '[user|get_nickname] 添加了广告：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('143', 'cms', 'advert_edit', '编辑广告', '编辑广告', '', '[user|get_nickname] 编辑了广告：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('142', 'cms', 'advert_delete', '删除广告', '删除广告', '', '[user|get_nickname] 删除了广告：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('141', 'cms', 'advert_enable', '启用广告', '启用广告', '', '[user|get_nickname] 启用了广告：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('140', 'cms', 'advert_disable', '禁用广告', '禁用广告', '', '[user|get_nickname] 禁用了广告：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('139', 'cms', 'advert_type_add', '添加广告分类', '添加广告分类', '', '[user|get_nickname] 添加了广告分类：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('138', 'cms', 'advert_type_edit', '编辑广告分类', '编辑广告分类', '', '[user|get_nickname] 编辑了广告分类：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('137', 'cms', 'advert_type_delete', '删除广告分类', '删除广告分类', '', '[user|get_nickname] 删除了广告分类：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('136', 'cms', 'advert_type_enable', '启用广告分类', '启用广告分类', '', '[user|get_nickname] 启用了广告分类：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('135', 'cms', 'advert_type_disable', '禁用广告分类', '禁用广告分类', '', '[user|get_nickname] 禁用了广告分类：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('134', 'cms', 'column_add', '添加栏目', '添加栏目', '', '[user|get_nickname] 添加了栏目：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('133', 'cms', 'column_edit', '编辑栏目', '编辑栏目', '', '[user|get_nickname] 编辑了栏目：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('132', 'cms', 'column_delete', '删除栏目', '删除栏目', '', '[user|get_nickname] 删除了栏目：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('131', 'cms', 'column_enable', '启用栏目', '启用栏目', '', '[user|get_nickname] 启用了栏目：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('130', 'cms', 'column_disable', '禁用栏目', '禁用栏目', '', '[user|get_nickname] 禁用了栏目：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('129', 'cms', 'field_add', '添加模型字段', '添加模型字段', '', '[user|get_nickname] 添加了模型字段：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('128', 'cms', 'field_edit', '编辑模型字段', '编辑模型字段', '', '[user|get_nickname] 编辑了模型字段：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('127', 'cms', 'field_delete', '删除模型字段', '删除模型字段', '', '[user|get_nickname] 删除了模型字段：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('126', 'cms', 'field_enable', '启用模型字段', '启用模型字段', '', '[user|get_nickname] 启用了模型字段：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('125', 'cms', 'field_disable', '禁用模型字段', '禁用模型字段', '', '[user|get_nickname] 禁用了模型字段：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('124', 'cms', 'link_add', '添加友情链接', '添加友情链接', '', '[user|get_nickname] 添加了友情链接：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('123', 'cms', 'link_edit', '编辑友情链接', '编辑友情链接', '', '[user|get_nickname] 编辑了友情链接：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('122', 'cms', 'link_delete', '删除友情链接', '删除友情链接', '', '[user|get_nickname] 删除了友情链接：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('121', 'cms', 'link_enable', '启用友情链接', '启用友情链接', '', '[user|get_nickname] 启用了友情链接：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('120', 'cms', 'link_disable', '禁用友情链接', '禁用友情链接', '', '[user|get_nickname] 禁用了友情链接：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('119', 'cms', 'menu_add', '添加导航菜单', '添加导航菜单', '', '[user|get_nickname] 添加了导航菜单：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('118', 'cms', 'menu_edit', '编辑导航菜单', '编辑导航菜单', '', '[user|get_nickname] 编辑了导航菜单：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('117', 'cms', 'menu_delete', '删除导航菜单', '删除导航菜单', '', '[user|get_nickname] 删除了导航菜单：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('116', 'cms', 'menu_enable', '启用导航菜单', '启用导航菜单', '', '[user|get_nickname] 启用了导航菜单：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('115', 'cms', 'menu_disable', '禁用导航菜单', '禁用导航菜单', '', '[user|get_nickname] 禁用了导航菜单：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('114', 'cms', 'model_add', '添加内容模型', '添加内容模型', '', '[user|get_nickname] 添加了内容模型：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('113', 'cms', 'model_edit', '编辑内容模型', '编辑内容模型', '', '[user|get_nickname] 编辑了内容模型：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('112', 'cms', 'model_delete', '删除内容模型', '删除内容模型', '', '[user|get_nickname] 删除了内容模型：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('111', 'cms', 'model_enable', '启用内容模型', '启用内容模型', '', '[user|get_nickname] 启用了内容模型：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('110', 'cms', 'model_disable', '禁用内容模型', '禁用内容模型', '', '[user|get_nickname] 禁用了内容模型：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('109', 'cms', 'nav_add', '添加导航', '添加导航', '', '[user|get_nickname] 添加了导航：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('108', 'cms', 'nav_edit', '编辑导航', '编辑导航', '', '[user|get_nickname] 编辑了导航：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('107', 'cms', 'nav_delete', '删除导航', '删除导航', '', '[user|get_nickname] 删除了导航：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('106', 'cms', 'nav_enable', '启用导航', '启用导航', '', '[user|get_nickname] 启用了导航：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('105', 'cms', 'nav_disable', '禁用导航', '禁用导航', '', '[user|get_nickname] 禁用了导航：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('104', 'cms', 'document_restore', '还原文档', '还原文档', '', '[user|get_nickname] 还原了文档：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('103', 'cms', 'document_delete', '删除文档', '删除文档', '', '[user|get_nickname] 删除了文档：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('102', 'cms', 'slider_add', '添加滚动图片', '添加滚动图片', '', '[user|get_nickname] 添加了滚动图片：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('101', 'cms', 'slider_edit', '编辑滚动图片', '编辑滚动图片', '', '[user|get_nickname] 编辑了滚动图片：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('100', 'cms', 'slider_delete', '删除滚动图片', '删除滚动图片', '', '[user|get_nickname] 删除了滚动图片：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('147', 'cms', 'document_trash', '回收文档', '回收文档', '', '[user|get_nickname] 回收了文档：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('148', 'cms', 'document_edit', '编辑文档', '编辑文档', '', '[user|get_nickname] 编辑了文档：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('149', 'cms', 'document_add', '添加文档', '添加文档', '', '[user|get_nickname] 添加了文档：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('150', 'cms', 'slider_enable', '启用滚动图片', '启用滚动图片', '', '[user|get_nickname] 启用了滚动图片：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('151', 'cms', 'slider_disable', '禁用滚动图片', '禁用滚动图片', '', '[user|get_nickname] 禁用了滚动图片：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('152', 'cms', 'support_add', '添加客服', '添加客服', '', '[user|get_nickname] 添加了客服：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('153', 'cms', 'support_edit', '编辑客服', '编辑客服', '', '[user|get_nickname] 编辑了客服：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('154', 'cms', 'support_delete', '删除客服', '删除客服', '', '[user|get_nickname] 删除了客服：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('155', 'cms', 'support_enable', '启用客服', '启用客服', '', '[user|get_nickname] 启用了客服：[details]', '1', '1517733761', '1517733761');
INSERT INTO `zj_admin_action` VALUES ('156', 'cms', 'support_disable', '禁用客服', '禁用客服', '', '[user|get_nickname] 禁用了客服：[details]', '1', '1517733761', '1517733761');

-- ----------------------------
-- Table structure for zj_admin_attachment
-- ----------------------------
DROP TABLE IF EXISTS `zj_admin_attachment`;
CREATE TABLE `zj_admin_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `module` varchar(32) NOT NULL DEFAULT '' COMMENT '模块名，由哪个模块上传的',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件链接',
  `mime` varchar(128) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `ext` char(8) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT 'sha1 散列值',
  `driver` varchar(16) NOT NULL DEFAULT 'local' COMMENT '上传驱动',
  `download` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of zj_admin_attachment
-- ----------------------------
INSERT INTO `zj_admin_attachment` VALUES ('3', '1', 'QQ截图20180204140140.png', 'admin', 'uploads/images/20180206/bb5b49f7fcb6b0b1c9814e8b3979c5ff.png', '', '', 'image/png', 'png', '127600', 'b9f5d4c9b6c54381657c1e9fca48362a', '61dad3cd5e21cc26b796c7242d8a56f02d98edc9', 'local', '0', '1517851764', '1517851764', '100', '1');
INSERT INTO `zj_admin_attachment` VALUES ('2', '1', 'u=3668240331,2053748794&fm=27&gp=0.jpg', 'admin', 'uploads/images/20180203/f68d05bc5246d4e4db0b3598dba48d4a.jpg', '', '', 'image/jpeg', 'jpg', '18068', '19aa2b1654a58c390326b74e13e39d81', 'ddb9753a0bcafb9f9903833b7a74e5c0df7a810a', 'local', '0', '1517660166', '1517660166', '100', '1');
INSERT INTO `zj_admin_attachment` VALUES ('4', '1', 'QQ截图20180204140011.png', 'admin', 'uploads/images/20180206/46d507cc2afcf02d7bc7404c40ec1d70.png', '', '', 'image/png', 'png', '63181', '7801b286d99854fd3b8246aa22144527', '669ddafa7430b93d4b5e178e1360e8ee4707887e', 'local', '0', '1517851768', '1517851768', '100', '1');
INSERT INTO `zj_admin_attachment` VALUES ('5', '1', 'QQ截图20180206220611.png', 'admin', 'uploads/images/20180206/38eeec66b1f5f523b419c9c28f96e20b.png', '', '', 'image/png', 'png', '39787', '2a39a214a8c401ed85f6007db4af900d', '35450864a9459bcead36dbf11ccc3a47acb6cf40', 'local', '0', '1517926005', '1517926005', '100', '1');
INSERT INTO `zj_admin_attachment` VALUES ('6', '1', 'timg.gif', 'admin', 'uploads/images/20180206/86890d8312c2b00063a951fddf4e8a16.gif', '', '', 'image/gif', 'gif', '52', 'b5b65854c341d8899720b0cc199860e2', '85c0eaf20787bb75de971e34b1ce1b5d914f7b7a', 'local', '0', '1517926537', '1517926537', '100', '1');
INSERT INTO `zj_admin_attachment` VALUES ('7', '1', 'QQ截图20180206221650.png', 'admin', 'uploads/images/20180206/4fbbb6b9c1a2927ab0ba84484113e519.png', '', '', 'image/png', 'png', '69474', '226bda2160719f878804536680fe5396', 'd3c6ac67228fef83f839624b29c84c9f219cd06b', 'local', '0', '1517926619', '1517926619', '100', '1');
INSERT INTO `zj_admin_attachment` VALUES ('8', '1', '未标题-1.gif', 'admin', 'uploads/images/20180206/4be324c47ab644fa4527e72c6ce3825c.gif', '', '', 'image/gif', 'gif', '15662', '207ace18df2f2f1d4171a0c4d3fb0f47', 'e62f6419173a872885ab6087774ca05fba803fcb', 'local', '0', '1517926754', '1517926754', '100', '1');
INSERT INTO `zj_admin_attachment` VALUES ('9', '1', '文件.txt', 'cms', 'uploads/files/20180207/8caae4833c4bb5ec1a9178e2d31f4c5c.txt', '', '', 'text/plain', 'txt', '7443', 'c1cebc628ff15907061460a006b6417d', '2612fe273c082536e868a80ff47291b4cfafc1f3', 'local', '0', '1518014116', '1518014116', '100', '1');
INSERT INTO `zj_admin_attachment` VALUES ('10', '1', '合肥写字楼名称.xlsx', 'cms', 'uploads/files/20180207/fb81a66234113c2be44fce8d2fff6974.xlsx', '', '', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'xlsx', '19048', '08a54383e68005a2b9a9ad2d40f50b9f', 'db6e56b5933c4fdb003cdf5fc150c2a7a6a53b95', 'local', '0', '1518014464', '1518014464', '100', '1');
INSERT INTO `zj_admin_attachment` VALUES ('11', '1', '出租房源1.xlsx', 'cms', 'uploads/files/20180208/473349eaac2d0d6c6f4f427ace2534c1.xlsx', '', '', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'xlsx', '5924', 'e8c2ced2c1e7357b65f9b6073502be69', '6766f8a0ab4f5680955da27bad439c1c6b3ba346', 'local', '0', '1518019595', '1518019595', '100', '1');
INSERT INTO `zj_admin_attachment` VALUES ('12', '1', '20171224后台问题.docx', 'cms', 'uploads/files/20180208/fecfeb9e4a53659181130ee7076a32e9.docx', '', '', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'docx', '18346', '3fc45c25fef0cc6ca730200628f770be', '86a7776d594da7cbbb53e212c50d7baf228dc026', 'local', '0', '1518055345', '1518055345', '100', '1');

-- ----------------------------
-- Table structure for zj_admin_config
-- ----------------------------
DROP TABLE IF EXISTS `zj_admin_config`;
CREATE TABLE `zj_admin_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '标题',
  `group` varchar(32) NOT NULL DEFAULT '' COMMENT '配置分组',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '类型',
  `value` text NOT NULL COMMENT '配置值',
  `options` text NOT NULL COMMENT '配置项',
  `tips` varchar(256) NOT NULL DEFAULT '' COMMENT '配置提示',
  `ajax_url` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框ajax地址',
  `next_items` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框的下级下拉框名，多个以逗号隔开',
  `param` varchar(32) NOT NULL DEFAULT '' COMMENT '联动下拉框请求参数名',
  `format` varchar(32) NOT NULL DEFAULT '' COMMENT '格式，用于格式文本',
  `table` varchar(32) NOT NULL DEFAULT '' COMMENT '表名，只用于快速联动类型',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '2' COMMENT '联动级别，只用于快速联动类型',
  `key` varchar(32) NOT NULL DEFAULT '' COMMENT '键字段，只用于快速联动类型',
  `option` varchar(32) NOT NULL DEFAULT '' COMMENT '值字段，只用于快速联动类型',
  `pid` varchar(32) NOT NULL DEFAULT '' COMMENT '父级id字段，只用于快速联动类型',
  `ak` varchar(32) NOT NULL DEFAULT '' COMMENT '百度地图appkey',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态：0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- ----------------------------
-- Records of zj_admin_config
-- ----------------------------
INSERT INTO `zj_admin_config` VALUES ('1', 'web_site_status', '站点开关', 'base', 'switch', '1', '', '站点关闭后将不能访问，后台可正常登录', '', '', '', '', '', '2', '', '', '', '', '1475240395', '1477403914', '1', '1');
INSERT INTO `zj_admin_config` VALUES ('2', 'web_site_title', '站点标题', 'base', 'text', '房屋中介系统', '', '调用方式：<code>config(\'web_site_title\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475240646', '1477710341', '2', '1');
INSERT INTO `zj_admin_config` VALUES ('3', 'web_site_slogan', '站点标语', 'base', 'text', '房屋中介系统，极简、极速、极致', '', '站点口号，调用方式：<code>config(\'web_site_slogan\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475240994', '1477710357', '3', '1');
INSERT INTO `zj_admin_config` VALUES ('4', 'web_site_logo', '站点LOGO', 'base', 'image', '8', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241067', '1475241067', '4', '1');
INSERT INTO `zj_admin_config` VALUES ('5', 'web_site_description', '站点描述', 'base', 'textarea', '', '', '网站描述，有利于搜索引擎抓取相关信息', '', '', '', '', '', '2', '', '', '', '', '1475241186', '1475241186', '6', '1');
INSERT INTO `zj_admin_config` VALUES ('6', 'web_site_keywords', '站点关键词', 'base', 'text', '房屋中介系统、PHP开发框架、后台框架', '', '网站搜索引擎关键字', '', '', '', '', '', '2', '', '', '', '', '1475241328', '1475241328', '7', '1');
INSERT INTO `zj_admin_config` VALUES ('7', 'web_site_copyright', '版权信息', 'base', 'text', 'XXX', '', '调用方式：<code>config(\'web_site_copyright\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241416', '1477710383', '8', '1');
INSERT INTO `zj_admin_config` VALUES ('8', 'web_site_icp', '备案信息', 'base', 'text', '', '', '调用方式：<code>config(\'web_site_icp\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241441', '1477710441', '9', '1');
INSERT INTO `zj_admin_config` VALUES ('9', 'web_site_statistics', '站点统计', 'base', 'textarea', '', '', '网站统计代码，支持百度、Google、cnzz等，调用方式：<code>config(\'web_site_statistics\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241498', '1477710455', '10', '1');
INSERT INTO `zj_admin_config` VALUES ('10', 'config_group', '配置分组', 'system', 'array', 'base:基本\r\nsystem:系统\r\nupload:上传\r\ndevelop:开发\r\ndatabase:数据库', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241716', '1477649446', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('11', 'form_item_type', '配置类型', 'system', 'array', 'text:单行文本\r\ntextarea:多行文本\r\nstatic:静态文本\r\npassword:密码\r\ncheckbox:复选框\r\nradio:单选按钮\r\ndate:日期\r\ndatetime:日期+时间\r\nhidden:隐藏\r\nswitch:开关\r\narray:数组\r\nselect:下拉框\r\nlinkage:普通联动下拉框\r\nlinkages:快速联动下拉框\r\nimage:单张图片\r\nimages:多张图片\r\nfile:单个文件\r\nfiles:多个文件\r\nueditor:UEditor 编辑器\r\nwangeditor:wangEditor 编辑器\r\neditormd:markdown 编辑器\r\nckeditor:ckeditor 编辑器\r\nicon:字体图标\r\ntags:标签\r\nnumber:数字\r\nbmap:百度地图\r\ncolorpicker:取色器\r\njcrop:图片裁剪\r\nmasked:格式文本\r\nrange:范围\r\ntime:时间', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241835', '1495853193', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('12', 'upload_file_size', '文件上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', '2', '', '', '', '', '1475241897', '1477663520', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('13', 'upload_file_ext', '允许上传的文件后缀', 'upload', 'tags', 'doc,docx,xls,xlsx,ppt,pptx,pdf,wps,txt,rar,zip,gz,bz2,7z', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', '2', '', '', '', '', '1475241975', '1477649489', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('14', 'upload_image_size', '图片上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', '2', '', '', '', '', '1475242015', '1477663529', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('15', 'upload_image_ext', '允许上传的图片后缀', 'upload', 'tags', 'gif,jpg,jpeg,bmp,png', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', '2', '', '', '', '', '1475242056', '1477649506', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('16', 'list_rows', '分页数量', 'system', 'number', '20', '', '每页的记录数', '', '', '', '', '', '2', '', '', '', '', '1475242066', '1476074507', '101', '1');
INSERT INTO `zj_admin_config` VALUES ('17', 'system_color', '后台配色方案', 'system', 'radio', 'smooth', 'default:Default\r\namethyst:Amethyst\r\ncity:City\r\nflat:Flat\r\nmodern:Modern\r\nsmooth:Smooth', '', '', '', '', '', '', '2', '', '', '', '', '1475250066', '1477316689', '102', '1');
INSERT INTO `zj_admin_config` VALUES ('18', 'develop_mode', '开发模式', 'develop', 'radio', '0', '0:关闭\r\n1:开启', '', '', '', '', '', '', '2', '', '', '', '', '1476864205', '1476864231', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('19', 'app_trace', '显示页面Trace', 'develop', 'radio', '0', '0:否\r\n1:是', '', '', '', '', '', '', '2', '', '', '', '', '1476866355', '1476866355', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('21', 'data_backup_path', '数据库备份根路径', 'database', 'text', '../data/', '', '路径必须以 / 结尾', '', '', '', '', '', '2', '', '', '', '', '1477017745', '1477018467', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('22', 'data_backup_part_size', '数据库备份卷大小', 'database', 'text', '20971520', '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', '', '', '', '', '', '2', '', '', '', '', '1477017886', '1477017886', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('23', 'data_backup_compress', '数据库备份文件是否启用压缩', 'database', 'radio', '1', '0:否\r\n1:是', '压缩备份文件需要PHP环境支持 <code>gzopen</code>, <code>gzwrite</code>函数', '', '', '', '', '', '2', '', '', '', '', '1477017978', '1477018172', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('24', 'data_backup_compress_level', '数据库备份文件压缩级别', 'database', 'radio', '9', '1:最低\r\n4:一般\r\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '', '', '', '', '', '2', '', '', '', '', '1477018083', '1477018083', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('25', 'top_menu_max', '顶部导航模块数量', 'system', 'text', '10', '', '设置顶部导航默认显示的模块数量', '', '', '', '', '', '2', '', '', '', '', '1477579289', '1477579289', '103', '1');
INSERT INTO `zj_admin_config` VALUES ('26', 'web_site_logo_text', '站点LOGO文字', 'base', 'image', '5', '', '', '', '', '', '', '', '2', '', '', '', '', '1477620643', '1477620643', '5', '1');
INSERT INTO `zj_admin_config` VALUES ('27', 'upload_image_thumb', '缩略图尺寸', 'upload', 'text', '', '', '不填写则不生成缩略图，如需生成 <code>300x300</code> 的缩略图，则填写 <code>300,300</code> ，请注意，逗号必须是英文逗号', '', '', '', '', '', '2', '', '', '', '', '1477644150', '1477649513', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('28', 'upload_image_thumb_type', '缩略图裁剪类型', 'upload', 'radio', '1', '1:等比例缩放\r\n2:缩放后填充\r\n3:居中裁剪\r\n4:左上角裁剪\r\n5:右下角裁剪\r\n6:固定尺寸缩放', '该项配置只有在启用生成缩略图时才生效', '', '', '', '', '', '2', '', '', '', '', '1477646271', '1477649521', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('29', 'upload_thumb_water', '添加水印', 'upload', 'switch', '0', '', '', '', '', '', '', '', '2', '', '', '', '', '1477649648', '1477649648', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('30', 'upload_thumb_water_pic', '水印图片', 'upload', 'image', '', '', '只有开启水印功能才生效', '', '', '', '', '', '2', '', '', '', '', '1477656390', '1477656390', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('31', 'upload_thumb_water_position', '水印位置', 'upload', 'radio', '9', '1:左上角\r\n2:上居中\r\n3:右上角\r\n4:左居中\r\n5:居中\r\n6:右居中\r\n7:左下角\r\n8:下居中\r\n9:右下角', '只有开启水印功能才生效', '', '', '', '', '', '2', '', '', '', '', '1477656528', '1477656528', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('32', 'upload_thumb_water_alpha', '水印透明度', 'upload', 'text', '50', '', '请输入0~100之间的数字，数字越小，透明度越高', '', '', '', '', '', '2', '', '', '', '', '1477656714', '1477661309', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('33', 'wipe_cache_type', '清除缓存类型', 'system', 'checkbox', 'TEMP_PATH', 'TEMP_PATH:应用缓存\r\nLOG_PATH:应用日志\r\nCACHE_PATH:项目模板缓存', '清除缓存时，要删除的缓存类型', '', '', '', '', '', '2', '', '', '', '', '1477727305', '1477727305', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('34', 'captcha_signin', '后台验证码开关', 'system', 'switch', '1', '', '后台登录时是否需要验证码', '', '', '', '', '', '2', '', '', '', '', '1478771958', '1478771958', '99', '1');
INSERT INTO `zj_admin_config` VALUES ('35', 'home_default_module', '前台默认模块', 'system', 'select', 'index', '', '前台默认访问的模块，该模块必须有Index控制器和index方法', '', '', '', '', '', '0', '', '', '', '', '1486714723', '1486715620', '104', '1');
INSERT INTO `zj_admin_config` VALUES ('36', 'minify_status', '开启minify', 'system', 'switch', '0', '', '开启minify会压缩合并js、css文件，可以减少资源请求次数，如果不支持minify，可关闭', '', '', '', '', '', '0', '', '', '', '', '1487035843', '1487035843', '99', '1');
INSERT INTO `zj_admin_config` VALUES ('37', 'upload_driver', '上传驱动', 'upload', 'radio', 'local', 'local:本地', '图片或文件上传驱动', '', '', '', '', '', '0', '', '', '', '', '1501488567', '1501490821', '100', '1');
INSERT INTO `zj_admin_config` VALUES ('38', 'system_log', '系统日志', 'system', 'switch', '1', '', '是否开启系统日志功能', '', '', '', '', '', '0', '', '', '', '', '1512635391', '1512635391', '99', '1');

-- ----------------------------
-- Table structure for zj_admin_hook
-- ----------------------------
DROP TABLE IF EXISTS `zj_admin_hook`;
CREATE TABLE `zj_admin_hook` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子来自哪个插件',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子描述',
  `system` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统钩子',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='钩子表';

-- ----------------------------
-- Records of zj_admin_hook
-- ----------------------------
INSERT INTO `zj_admin_hook` VALUES ('1', 'admin_index', '', '后台首页', '1', '1468174214', '1477757518', '1');
INSERT INTO `zj_admin_hook` VALUES ('2', 'plugin_index_tab_list', '', '插件扩展tab钩子', '1', '1468174214', '1468174214', '1');
INSERT INTO `zj_admin_hook` VALUES ('3', 'module_index_tab_list', '', '模块扩展tab钩子', '1', '1468174214', '1468174214', '1');
INSERT INTO `zj_admin_hook` VALUES ('4', 'page_tips', '', '每个页面的提示', '1', '1468174214', '1468174214', '1');
INSERT INTO `zj_admin_hook` VALUES ('5', 'signin_footer', '', '登录页面底部钩子', '1', '1479269315', '1479269315', '1');
INSERT INTO `zj_admin_hook` VALUES ('6', 'signin_captcha', '', '登录页面验证码钩子', '1', '1479269315', '1479269315', '1');
INSERT INTO `zj_admin_hook` VALUES ('7', 'signin', '', '登录控制器钩子', '1', '1479386875', '1479386875', '1');
INSERT INTO `zj_admin_hook` VALUES ('8', 'upload_attachment', '', '附件上传钩子', '1', '1501493808', '1501493808', '1');
INSERT INTO `zj_admin_hook` VALUES ('9', 'page_plugin_js', '', '页面插件js钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `zj_admin_hook` VALUES ('10', 'page_plugin_css', '', '页面插件css钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `zj_admin_hook` VALUES ('11', 'signin_sso', '', '单点登录钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `zj_admin_hook` VALUES ('12', 'signout_sso', '', '单点退出钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `zj_admin_hook` VALUES ('13', 'user_add', '', '添加用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `zj_admin_hook` VALUES ('14', 'user_edit', '', '编辑用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `zj_admin_hook` VALUES ('15', 'user_delete', '', '删除用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `zj_admin_hook` VALUES ('16', 'user_enable', '', '启用用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `zj_admin_hook` VALUES ('17', 'user_disable', '', '禁用用户钩子', '1', '1503633591', '1503633591', '1');

-- ----------------------------
-- Table structure for zj_admin_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `zj_admin_hook_plugin`;
CREATE TABLE `zj_admin_hook_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子id',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标识',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='钩子-插件对应表';

-- ----------------------------
-- Records of zj_admin_hook_plugin
-- ----------------------------
INSERT INTO `zj_admin_hook_plugin` VALUES ('1', 'admin_index', 'SystemInfo', '1477757503', '1477757503', '1', '1');
INSERT INTO `zj_admin_hook_plugin` VALUES ('2', 'admin_index', 'DevTeam', '1477755780', '1477755780', '2', '1');

-- ----------------------------
-- Table structure for zj_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `zj_admin_log`;
CREATE TABLE `zj_admin_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `action_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '行为id',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行用户id',
  `action_ip` bigint(20) NOT NULL COMMENT '执行行为者ip',
  `model` varchar(50) NOT NULL DEFAULT '' COMMENT '触发行为的表',
  `record_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '触发行为的数据id',
  `remark` longtext NOT NULL COMMENT '日志备注',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`),
  KEY `action_ip_ix` (`action_ip`),
  KEY `action_id_ix` (`action_id`),
  KEY `user_id_ix` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='行为日志表';

-- ----------------------------
-- Records of zj_admin_log
-- ----------------------------
INSERT INTO `zj_admin_log` VALUES ('1', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1517660055');
INSERT INTO `zj_admin_log` VALUES ('2', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(system)', '1', '1517660293');
INSERT INTO `zj_admin_log` VALUES ('3', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1517660307');
INSERT INTO `zj_admin_log` VALUES ('4', '35', '1', '2130706433', 'admin_module', '0', '超级管理员 安装了模块：门户', '1', '1517660360');
INSERT INTO `zj_admin_log` VALUES ('5', '7', '1', '2130706433', 'admin_role', '2', '超级管理员 添加了角色：普通管理员', '1', '1517660745');
INSERT INTO `zj_admin_log` VALUES ('6', '8', '1', '2130706433', 'admin_role', '2', '超级管理员 编辑了角色：字段(access)，原值(0)，新值：(true)', '1', '1517660794');
INSERT INTO `zj_admin_log` VALUES ('7', '8', '1', '2130706433', 'admin_role', '2', '超级管理员 编辑了角色：普通管理员', '1', '1517660812');
INSERT INTO `zj_admin_log` VALUES ('8', '30', '1', '2130706433', 'admin_menu', '307', '超级管理员 添加了节点：所属模块(user),所属节点ID(20),节点标题(测试),节点链接(user/index/test)', '1', '1517661878');
INSERT INTO `zj_admin_log` VALUES ('9', '36', '1', '2130706433', 'admin_module', '0', '超级管理员 卸载了模块：门户', '1', '1517662516');
INSERT INTO `zj_admin_log` VALUES ('10', '1', '1', '2130706433', 'admin_user', '2', '超级管理员 添加了用户：吴伟祥', '1', '1517668089');
INSERT INTO `zj_admin_log` VALUES ('11', '1', '1', '2130706433', 'admin_user', '3', '超级管理员 添加了用户：asd', '1', '1517668537');
INSERT INTO `zj_admin_log` VALUES ('12', '1', '1', '2130706433', 'admin_user', '4', '超级管理员 添加了用户：wuweixiang', '1', '1517668797');
INSERT INTO `zj_admin_log` VALUES ('13', '1', '1', '2130706433', 'admin_user', '5', '超级管理员 添加了用户：阿萨达', '1', '1517668873');
INSERT INTO `zj_admin_log` VALUES ('14', '3', '1', '2130706433', 'admin_user', '0', '超级管理员 删除了用户：asd', '1', '1517668943');
INSERT INTO `zj_admin_log` VALUES ('15', '2', '1', '2130706433', 'admin_user', '5', '超级管理员 编辑了用户：阿萨达', '1', '1517669274');
INSERT INTO `zj_admin_log` VALUES ('16', '2', '1', '2130706433', 'admin_user', '5', '超级管理员 编辑了用户：字段(status)，原值(1)，新值：(false)', '1', '1517669304');
INSERT INTO `zj_admin_log` VALUES ('17', '2', '1', '2130706433', 'admin_user', '5', '超级管理员 编辑了用户：字段(status)，原值(0)，新值：(true)', '1', '1517669305');
INSERT INTO `zj_admin_log` VALUES ('18', '35', '2', '2130706433', 'admin_module', '0', '吴伟祥 安装了模块：门户', '1', '1517733760');
INSERT INTO `zj_admin_log` VALUES ('19', '31', '1', '2130706433', 'admin_menu', '330', '超级管理员 编辑了节点：节点ID(330)', '1', '1517735344');
INSERT INTO `zj_admin_log` VALUES ('20', '31', '1', '2130706433', 'admin_menu', '330', '超级管理员 编辑了节点：节点ID(330)', '1', '1517735390');
INSERT INTO `zj_admin_log` VALUES ('21', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(develop)', '1', '1517735455');
INSERT INTO `zj_admin_log` VALUES ('22', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(develop)', '1', '1517735477');
INSERT INTO `zj_admin_log` VALUES ('23', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(develop)', '1', '1517736675');
INSERT INTO `zj_admin_log` VALUES ('24', '31', '1', '2130706433', 'admin_menu', '330', '超级管理员 编辑了节点：节点ID(330)', '1', '1517736727');
INSERT INTO `zj_admin_log` VALUES ('25', '30', '1', '2130706433', 'admin_menu', '401', '超级管理员 添加了节点：所属模块(cms),所属节点ID(328),节点标题(房源信息列表),节点链接(cms/house/index)', '1', '1517736924');
INSERT INTO `zj_admin_log` VALUES ('26', '31', '1', '2130706433', 'admin_menu', '329', '超级管理员 编辑了节点：节点ID(329)', '1', '1517736964');
INSERT INTO `zj_admin_log` VALUES ('27', '31', '1', '2130706433', 'admin_menu', '329', '超级管理员 编辑了节点：节点ID(329)', '1', '1517736994');
INSERT INTO `zj_admin_log` VALUES ('28', '31', '1', '2130706433', 'admin_menu', '330', '超级管理员 编辑了节点：节点ID(330)', '1', '1517737007');
INSERT INTO `zj_admin_log` VALUES ('29', '31', '1', '2130706433', 'admin_menu', '330', '超级管理员 编辑了节点：节点ID(330)', '1', '1517758134');
INSERT INTO `zj_admin_log` VALUES ('30', '31', '1', '2130706433', 'admin_menu', '401', '超级管理员 编辑了节点：节点ID(401)', '1', '1517758176');
INSERT INTO `zj_admin_log` VALUES ('31', '31', '1', '2130706433', 'admin_menu', '330', '超级管理员 编辑了节点：节点ID(330)', '1', '1517758189');
INSERT INTO `zj_admin_log` VALUES ('32', '31', '1', '2130706433', 'admin_menu', '401', '超级管理员 编辑了节点：节点ID(401)', '1', '1517758252');
INSERT INTO `zj_admin_log` VALUES ('33', '31', '1', '2130706433', 'admin_menu', '330', '超级管理员 编辑了节点：节点ID(330)', '1', '1517760247');
INSERT INTO `zj_admin_log` VALUES ('34', '31', '1', '2130706433', 'admin_menu', '401', '超级管理员 编辑了节点：节点ID(401)', '1', '1517760263');
INSERT INTO `zj_admin_log` VALUES ('35', '144', '1', '2130706433', 'cms_advert', '1', '超级管理员 添加了广告：吴伟祥', '1', '1517844662');
INSERT INTO `zj_admin_log` VALUES ('36', '144', '1', '2130706433', 'cms_advert', '2', '超级管理员 添加了广告：吴伟祥', '1', '1517844781');
INSERT INTO `zj_admin_log` VALUES ('37', '143', '1', '2130706433', 'cms_advert', '2', '超级管理员 编辑了广告：字段(status)，原值(1)，新值：(false)', '1', '1517845130');
INSERT INTO `zj_admin_log` VALUES ('38', '143', '1', '2130706433', 'cms_advert', '2', '超级管理员 编辑了广告：字段(status)，原值(0)，新值：(true)', '1', '1517845132');
INSERT INTO `zj_admin_log` VALUES ('39', '142', '1', '2130706433', 'cms_advert', '0', '超级管理员 删除了广告：吴伟祥', '1', '1517845146');
INSERT INTO `zj_admin_log` VALUES ('40', '141', '1', '2130706433', 'cms_advert', '0', '超级管理员 启用了广告：吴伟祥', '1', '1517845910');
INSERT INTO `zj_admin_log` VALUES ('41', '140', '1', '2130706433', 'cms_advert', '0', '超级管理员 禁用了广告：吴伟祥', '1', '1517845915');
INSERT INTO `zj_admin_log` VALUES ('42', '141', '1', '2130706433', 'cms_advert', '0', '超级管理员 启用了广告：吴伟祥', '1', '1517845922');
INSERT INTO `zj_admin_log` VALUES ('43', '143', '1', '2130706433', 'cms_advert', '1', '超级管理员 编辑了广告：吴伟祥', '1', '1517847708');
INSERT INTO `zj_admin_log` VALUES ('44', '143', '1', '2130706433', 'cms_advert', '1', '超级管理员 编辑了广告：吴伟祥', '1', '1517847750');
INSERT INTO `zj_admin_log` VALUES ('45', '143', '1', '2130706433', 'cms_advert', '1', '超级管理员 编辑了广告：吴伟祥', '1', '1517847936');
INSERT INTO `zj_admin_log` VALUES ('46', '31', '1', '2130706433', 'admin_menu', '401', '超级管理员 编辑了节点：节点ID(401)', '1', '1517848090');
INSERT INTO `zj_admin_log` VALUES ('47', '31', '1', '2130706433', 'admin_menu', '330', '超级管理员 编辑了节点：节点ID(330)', '1', '1517848111');
INSERT INTO `zj_admin_log` VALUES ('48', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1517851791');
INSERT INTO `zj_admin_log` VALUES ('49', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1517895332');
INSERT INTO `zj_admin_log` VALUES ('50', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(cms)', '1', '1517895838');
INSERT INTO `zj_admin_log` VALUES ('51', '30', '1', '2130706433', 'admin_menu', '402', '超级管理员 添加了节点：所属模块(cms),所属节点ID(401),节点标题(新增),节点链接(cms/advert/add)', '1', '1517896964');
INSERT INTO `zj_admin_log` VALUES ('52', '31', '1', '2130706433', 'admin_menu', '402', '超级管理员 编辑了节点：节点ID(402)', '1', '1517896981');
INSERT INTO `zj_admin_log` VALUES ('53', '30', '1', '2130706433', 'admin_menu', '403', '超级管理员 添加了节点：所属模块(cms),所属节点ID(401),节点标题(编辑),节点链接(cms/house/edit)', '1', '1517897005');
INSERT INTO `zj_admin_log` VALUES ('54', '30', '1', '2130706433', 'admin_menu', '404', '超级管理员 添加了节点：所属模块(cms),所属节点ID(401),节点标题(删除),节点链接(cms/house/delete)', '1', '1517897039');
INSERT INTO `zj_admin_log` VALUES ('55', '30', '1', '2130706433', 'admin_menu', '405', '超级管理员 添加了节点：所属模块(cms),所属节点ID(401),节点标题(启用),节点链接(cms/house/enable)', '1', '1517897060');
INSERT INTO `zj_admin_log` VALUES ('56', '30', '1', '2130706433', 'admin_menu', '406', '超级管理员 添加了节点：所属模块(cms),所属节点ID(401),节点标题(禁用),节点链接(cms/house/disable)', '1', '1517897089');
INSERT INTO `zj_admin_log` VALUES ('57', '30', '1', '2130706433', 'admin_menu', '407', '超级管理员 添加了节点：所属模块(cms),所属节点ID(401),节点标题(快速编辑),节点链接(cms/house/quickedit)', '1', '1517897114');
INSERT INTO `zj_admin_log` VALUES ('58', '144', '1', '2130706433', 'cms_advert', '1', '超级管理员 添加了广告：吴伟祥', '1', '1517899156');
INSERT INTO `zj_admin_log` VALUES ('59', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1517926008');
INSERT INTO `zj_admin_log` VALUES ('60', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1517926621');
INSERT INTO `zj_admin_log` VALUES ('61', '42', '1', '2130706433', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1517926757');
INSERT INTO `zj_admin_log` VALUES ('62', '141', '1', '2130706433', 'cms_advert', '0', '超级管理员 启用了广告：吴伟祥', '1', '1518011284');
INSERT INTO `zj_admin_log` VALUES ('63', '140', '1', '2130706433', 'cms_advert', '0', '超级管理员 禁用了广告：吴伟祥', '1', '1518011293');
INSERT INTO `zj_admin_log` VALUES ('64', '143', '1', '2130706433', 'cms_advert', '1', '超级管理员 编辑了广告：字段(status)，原值(0)，新值：(true)', '1', '1518011298');
INSERT INTO `zj_admin_log` VALUES ('65', '30', '1', '2130706433', 'admin_menu', '408', '超级管理员 添加了节点：所属模块(cms),所属节点ID(401),节点标题(表格导入),节点链接(cms/house_type/index)', '1', '1518012749');
INSERT INTO `zj_admin_log` VALUES ('66', '143', '1', '2130706433', 'cms_advert', '1', '超级管理员 编辑了广告：字段(status)，原值(1)，新值：(false)', '1', '1518146457');
INSERT INTO `zj_admin_log` VALUES ('67', '143', '1', '2130706433', 'cms_advert', '1', '超级管理员 编辑了广告：字段(status)，原值(0)，新值：(true)', '1', '1518146457');
INSERT INTO `zj_admin_log` VALUES ('68', '143', '1', '2130706433', 'cms_advert', '1', '超级管理员 编辑了广告：字段(status)，原值(1)，新值：(false)', '1', '1518146458');
INSERT INTO `zj_admin_log` VALUES ('69', '143', '1', '2130706433', 'cms_advert', '1', '超级管理员 编辑了广告：字段(status)，原值(0)，新值：(true)', '1', '1518146460');
INSERT INTO `zj_admin_log` VALUES ('70', '143', '1', '2130706433', 'cms_advert', '1', '超级管理员 编辑了广告：字段(status)，原值(1)，新值：(false)', '1', '1518146460');
INSERT INTO `zj_admin_log` VALUES ('71', '143', '1', '2130706433', 'cms_advert', '1', '超级管理员 编辑了广告：字段(status)，原值(0)，新值：(true)', '1', '1518146461');

-- ----------------------------
-- Table structure for zj_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `zj_admin_menu`;
CREATE TABLE `zj_admin_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单id',
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模块名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url_type` varchar(16) NOT NULL DEFAULT '' COMMENT '链接类型（link：外链，module：模块）',
  `url_value` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `url_target` varchar(16) NOT NULL DEFAULT '_self' COMMENT '链接打开方式：_blank,_self',
  `online_hide` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '网站上线后是否隐藏',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `system_menu` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统菜单，系统菜单不可删除',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `params` varchar(255) NOT NULL DEFAULT '' COMMENT '参数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=409 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of zj_admin_menu
-- ----------------------------
INSERT INTO `zj_admin_menu` VALUES ('1', '0', 'admin', '首页', 'fa fa-fw fa-home', 'module_admin', 'admin/index/index', '_self', '0', '1467617722', '1477710540', '1', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('2', '1', 'admin', '快捷操作', 'fa fa-fw fa-folder-open-o', 'module_admin', '', '_self', '0', '1467618170', '1477710695', '1', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('3', '2', 'admin', '清空缓存', 'fa fa-fw fa-trash-o', 'module_admin', 'admin/index/wipecache', '_self', '0', '1467618273', '1489049773', '3', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('4', '0', 'admin', '系统', 'fa fa-fw fa-gear', 'module_admin', 'admin/system/index', '_self', '0', '1467618361', '1477710540', '2', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('5', '4', 'admin', '系统功能', 'si si-wrench', 'module_admin', '', '_self', '0', '1467618441', '1477710695', '1', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('6', '5', 'admin', '系统设置', 'fa fa-fw fa-wrench', 'module_admin', 'admin/system/index', '_self', '0', '1467618490', '1477710695', '1', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('7', '5', 'admin', '配置管理', 'fa fa-fw fa-gears', 'module_admin', 'admin/config/index', '_self', '0', '1467618618', '1477710695', '2', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('8', '7', 'admin', '新增', '', 'module_admin', 'admin/config/add', '_self', '0', '1467618648', '1477710695', '1', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('9', '7', 'admin', '编辑', '', 'module_admin', 'admin/config/edit', '_self', '0', '1467619566', '1477710695', '2', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('10', '7', 'admin', '删除', '', 'module_admin', 'admin/config/delete', '_self', '0', '1467619583', '1477710695', '3', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('11', '7', 'admin', '启用', '', 'module_admin', 'admin/config/enable', '_self', '0', '1467619609', '1477710695', '4', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('12', '7', 'admin', '禁用', '', 'module_admin', 'admin/config/disable', '_self', '0', '1467619637', '1477710695', '5', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('13', '5', 'admin', '节点管理', 'fa fa-fw fa-bars', 'module_admin', 'admin/menu/index', '_self', '0', '1467619882', '1477710695', '3', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('14', '13', 'admin', '新增', '', 'module_admin', 'admin/menu/add', '_self', '0', '1467619902', '1477710695', '1', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('15', '13', 'admin', '编辑', '', 'module_admin', 'admin/menu/edit', '_self', '0', '1467620331', '1477710695', '2', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('16', '13', 'admin', '删除', '', 'module_admin', 'admin/menu/delete', '_self', '0', '1467620363', '1477710695', '3', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('17', '13', 'admin', '启用', '', 'module_admin', 'admin/menu/enable', '_self', '0', '1467620386', '1477710695', '4', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('18', '13', 'admin', '禁用', '', 'module_admin', 'admin/menu/disable', '_self', '0', '1467620404', '1477710695', '5', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('19', '68', 'user', '权限管理', 'fa fa-fw fa-key', 'module_admin', '', '_self', '0', '1467688065', '1477710702', '1', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('20', '19', 'user', '用户管理', 'fa fa-fw fa-user', 'module_admin', 'user/index/index', '_self', '0', '1467688137', '1477710702', '1', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('21', '20', 'user', '新增', '', 'module_admin', 'user/index/add', '_self', '0', '1467688177', '1477710702', '1', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('22', '20', 'user', '编辑', '', 'module_admin', 'user/index/edit', '_self', '0', '1467688202', '1477710702', '2', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('23', '20', 'user', '删除', '', 'module_admin', 'user/index/delete', '_self', '0', '1467688219', '1477710702', '3', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('24', '20', 'user', '启用', '', 'module_admin', 'user/index/enable', '_self', '0', '1467688238', '1477710702', '4', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('25', '20', 'user', '禁用', '', 'module_admin', 'user/index/disable', '_self', '0', '1467688256', '1477710702', '5', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('211', '64', 'admin', '日志详情', '', 'module_admin', 'admin/log/details', '_self', '0', '1480299320', '1480299320', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('32', '4', 'admin', '扩展中心', 'si si-social-dropbox', 'module_admin', '', '_self', '0', '1467688853', '1477710695', '2', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('33', '32', 'admin', '模块管理', 'fa fa-fw fa-th-large', 'module_admin', 'admin/module/index', '_self', '0', '1467689008', '1477710695', '1', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('34', '33', 'admin', '导入', '', 'module_admin', 'admin/module/import', '_self', '0', '1467689153', '1477710695', '1', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('35', '33', 'admin', '导出', '', 'module_admin', 'admin/module/export', '_self', '0', '1467689173', '1477710695', '2', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('36', '33', 'admin', '安装', '', 'module_admin', 'admin/module/install', '_self', '0', '1467689192', '1477710695', '3', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('37', '33', 'admin', '卸载', '', 'module_admin', 'admin/module/uninstall', '_self', '0', '1467689241', '1477710695', '4', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('38', '33', 'admin', '启用', '', 'module_admin', 'admin/module/enable', '_self', '0', '1467689294', '1477710695', '5', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('39', '33', 'admin', '禁用', '', 'module_admin', 'admin/module/disable', '_self', '0', '1467689312', '1477710695', '6', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('40', '33', 'admin', '更新', '', 'module_admin', 'admin/module/update', '_self', '0', '1467689341', '1477710695', '7', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('41', '32', 'admin', '插件管理', 'fa fa-fw fa-puzzle-piece', 'module_admin', 'admin/plugin/index', '_self', '0', '1467689527', '1477710695', '2', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('42', '41', 'admin', '导入', '', 'module_admin', 'admin/plugin/import', '_self', '0', '1467689650', '1477710695', '1', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('43', '41', 'admin', '导出', '', 'module_admin', 'admin/plugin/export', '_self', '0', '1467689665', '1477710695', '2', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('44', '41', 'admin', '安装', '', 'module_admin', 'admin/plugin/install', '_self', '0', '1467689680', '1477710695', '3', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('45', '41', 'admin', '卸载', '', 'module_admin', 'admin/plugin/uninstall', '_self', '0', '1467689700', '1477710695', '4', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('46', '41', 'admin', '启用', '', 'module_admin', 'admin/plugin/enable', '_self', '0', '1467689730', '1477710695', '5', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('47', '41', 'admin', '禁用', '', 'module_admin', 'admin/plugin/disable', '_self', '0', '1467689747', '1477710695', '6', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('48', '41', 'admin', '设置', '', 'module_admin', 'admin/plugin/config', '_self', '0', '1467689789', '1477710695', '7', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('49', '41', 'admin', '管理', '', 'module_admin', 'admin/plugin/manage', '_self', '0', '1467689846', '1477710695', '8', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('50', '5', 'admin', '附件管理', 'fa fa-fw fa-cloud-upload', 'module_admin', 'admin/attachment/index', '_self', '0', '1467690161', '1477710695', '4', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('51', '70', 'admin', '文件上传', '', 'module_admin', 'admin/attachment/upload', '_self', '0', '1467690240', '1489049773', '1', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('52', '50', 'admin', '下载', '', 'module_admin', 'admin/attachment/download', '_self', '0', '1467690334', '1477710695', '2', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('53', '50', 'admin', '启用', '', 'module_admin', 'admin/attachment/enable', '_self', '0', '1467690352', '1477710695', '3', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('54', '50', 'admin', '禁用', '', 'module_admin', 'admin/attachment/disable', '_self', '0', '1467690369', '1477710695', '4', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('55', '50', 'admin', '删除', '', 'module_admin', 'admin/attachment/delete', '_self', '0', '1467690396', '1477710695', '5', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('56', '41', 'admin', '删除', '', 'module_admin', 'admin/plugin/delete', '_self', '0', '1467858065', '1477710695', '11', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('57', '41', 'admin', '编辑', '', 'module_admin', 'admin/plugin/edit', '_self', '0', '1467858092', '1477710695', '10', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('60', '41', 'admin', '新增', '', 'module_admin', 'admin/plugin/add', '_self', '0', '1467858421', '1477710695', '9', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('61', '41', 'admin', '执行', '', 'module_admin', 'admin/plugin/execute', '_self', '0', '1467879016', '1477710695', '14', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('62', '13', 'admin', '保存', '', 'module_admin', 'admin/menu/save', '_self', '0', '1468073039', '1477710695', '6', '1', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('64', '5', 'admin', '系统日志', 'fa fa-fw fa-book', 'module_admin', 'admin/log/index', '_self', '0', '1476111944', '1477710695', '6', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('65', '5', 'admin', '数据库管理', 'fa fa-fw fa-database', 'module_admin', 'admin/database/index', '_self', '0', '1476111992', '1477710695', '8', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('66', '32', 'admin', '数据包管理', 'fa fa-fw fa-database', 'module_admin', 'admin/packet/index', '_self', '0', '1476112326', '1477710695', '4', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('67', '19', 'user', '角色管理', 'fa fa-fw fa-users', 'module_admin', 'user/role/index', '_self', '0', '1476113025', '1477710702', '3', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('68', '0', 'user', '用户', 'fa fa-fw fa-user', 'module_admin', 'user/index/index', '_self', '0', '1476193348', '1477710540', '3', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('69', '32', 'admin', '钩子管理', 'fa fa-fw fa-anchor', 'module_admin', 'admin/hook/index', '_self', '0', '1476236193', '1477710695', '3', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('70', '2', 'admin', '后台首页', 'fa fa-fw fa-tachometer', 'module_admin', 'admin/index/index', '_self', '0', '1476237472', '1489049773', '1', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('71', '67', 'user', '新增', '', 'module_admin', 'user/role/add', '_self', '0', '1476256935', '1477710702', '1', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('72', '67', 'user', '编辑', '', 'module_admin', 'user/role/edit', '_self', '0', '1476256968', '1477710702', '2', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('73', '67', 'user', '删除', '', 'module_admin', 'user/role/delete', '_self', '0', '1476256993', '1477710702', '3', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('74', '67', 'user', '启用', '', 'module_admin', 'user/role/enable', '_self', '0', '1476257023', '1477710702', '4', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('75', '67', 'user', '禁用', '', 'module_admin', 'user/role/disable', '_self', '0', '1476257046', '1477710702', '5', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('76', '20', 'user', '授权', '', 'module_admin', 'user/index/access', '_self', '0', '1476375187', '1477710702', '6', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('77', '69', 'admin', '新增', '', 'module_admin', 'admin/hook/add', '_self', '0', '1476668971', '1477710695', '1', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('78', '69', 'admin', '编辑', '', 'module_admin', 'admin/hook/edit', '_self', '0', '1476669006', '1477710695', '2', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('79', '69', 'admin', '删除', '', 'module_admin', 'admin/hook/delete', '_self', '0', '1476669375', '1477710695', '3', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('80', '69', 'admin', '启用', '', 'module_admin', 'admin/hook/enable', '_self', '0', '1476669427', '1477710695', '4', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('81', '69', 'admin', '禁用', '', 'module_admin', 'admin/hook/disable', '_self', '0', '1476669564', '1477710695', '5', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('183', '66', 'admin', '安装', '', 'module_admin', 'admin/packet/install', '_self', '0', '1476851362', '1477710695', '1', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('184', '66', 'admin', '卸载', '', 'module_admin', 'admin/packet/uninstall', '_self', '0', '1476851382', '1477710695', '2', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('185', '5', 'admin', '行为管理', 'fa fa-fw fa-bug', 'module_admin', 'admin/action/index', '_self', '0', '1476882441', '1477710695', '7', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('186', '185', 'admin', '新增', '', 'module_admin', 'admin/action/add', '_self', '0', '1476884439', '1477710695', '1', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('187', '185', 'admin', '编辑', '', 'module_admin', 'admin/action/edit', '_self', '0', '1476884464', '1477710695', '2', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('188', '185', 'admin', '启用', '', 'module_admin', 'admin/action/enable', '_self', '0', '1476884493', '1477710695', '3', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('189', '185', 'admin', '禁用', '', 'module_admin', 'admin/action/disable', '_self', '0', '1476884534', '1477710695', '4', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('190', '185', 'admin', '删除', '', 'module_admin', 'admin/action/delete', '_self', '0', '1476884551', '1477710695', '5', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('191', '65', 'admin', '备份数据库', '', 'module_admin', 'admin/database/export', '_self', '0', '1476972746', '1477710695', '1', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('192', '65', 'admin', '还原数据库', '', 'module_admin', 'admin/database/import', '_self', '0', '1476972772', '1477710695', '2', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('193', '65', 'admin', '优化表', '', 'module_admin', 'admin/database/optimize', '_self', '0', '1476972800', '1477710695', '3', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('194', '65', 'admin', '修复表', '', 'module_admin', 'admin/database/repair', '_self', '0', '1476972825', '1477710695', '4', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('195', '65', 'admin', '删除备份', '', 'module_admin', 'admin/database/delete', '_self', '0', '1476973457', '1477710695', '5', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('210', '41', 'admin', '快速编辑', '', 'module_admin', 'admin/plugin/quickedit', '_self', '0', '1477713981', '1477713981', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('209', '185', 'admin', '快速编辑', '', 'module_admin', 'admin/action/quickedit', '_self', '0', '1477713939', '1477713939', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('208', '7', 'admin', '快速编辑', '', 'module_admin', 'admin/config/quickedit', '_self', '0', '1477713808', '1477713808', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('207', '69', 'admin', '快速编辑', '', 'module_admin', 'admin/hook/quickedit', '_self', '0', '1477713770', '1477713770', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('212', '2', 'admin', '个人设置', 'fa fa-fw fa-user', 'module_admin', 'admin/index/profile', '_self', '0', '1489049767', '1489049773', '2', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('213', '70', 'admin', '检查版本更新', '', 'module_admin', 'admin/index/checkupdate', '_self', '0', '1490588610', '1490588610', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('380', '373', 'cms', '字段管理', '', 'module_admin', 'cms/field/index', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('379', '373', 'cms', '快速编辑', '', 'module_admin', 'cms/model/quickedit', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('378', '373', 'cms', '禁用', '', 'module_admin', 'cms/model/disable', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('377', '373', 'cms', '启用', '', 'module_admin', 'cms/model/enable', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('376', '373', 'cms', '删除', '', 'module_admin', 'cms/model/delete', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('375', '373', 'cms', '编辑', '', 'module_admin', 'cms/model/edit', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('374', '373', 'cms', '新增', '', 'module_admin', 'cms/model/add', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('373', '365', 'cms', '内容模型', 'fa fa-fw fa-th-large', 'module_admin', 'cms/model/index', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('372', '366', 'cms', '快速编辑', '', 'module_admin', 'cms/column/quickedit', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('371', '366', 'cms', '禁用', '', 'module_admin', 'cms/column/disable', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('370', '366', 'cms', '启用', '', 'module_admin', 'cms/column/enable', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('369', '366', 'cms', '删除', '', 'module_admin', 'cms/column/delete', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('368', '366', 'cms', '编辑', '', 'module_admin', 'cms/column/edit', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('367', '366', 'cms', '新增', '', 'module_admin', 'cms/column/add', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('366', '365', 'cms', '栏目分类', 'fa fa-fw fa-sitemap', 'module_admin', 'cms/column/index', '_self', '1', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('365', '308', 'cms', '门户设置', 'fa fa-fw fa-sliders', 'module_admin', '', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('364', '358', 'cms', '快速编辑', '', 'module_admin', 'cms/support/quickedit', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('363', '358', 'cms', '禁用', '', 'module_admin', 'cms/support/disable', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('362', '358', 'cms', '启用', '', 'module_admin', 'cms/support/enable', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('361', '358', 'cms', '删除', '', 'module_admin', 'cms/support/delete', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('360', '358', 'cms', '编辑', '', 'module_admin', 'cms/support/edit', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('359', '358', 'cms', '新增', '', 'module_admin', 'cms/support/add', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('358', '329', 'cms', '客服管理', 'fa fa-fw fa-commenting', 'module_admin', 'cms/support/index', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('357', '351', 'cms', '快速编辑', '', 'module_admin', 'cms/link/quickedit', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('356', '351', 'cms', '禁用', '', 'module_admin', 'cms/link/disable', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('355', '351', 'cms', '启用', '', 'module_admin', 'cms/link/enable', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('354', '351', 'cms', '删除', '', 'module_admin', 'cms/link/delete', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('353', '351', 'cms', '编辑', '', 'module_admin', 'cms/link/edit', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('352', '351', 'cms', '新增', '', 'module_admin', 'cms/link/add', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('351', '329', 'cms', '友情链接', 'fa fa-fw fa-link', 'module_admin', 'cms/link/index', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('350', '344', 'cms', '快速编辑', '', 'module_admin', 'cms/slider/quickedit', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('349', '344', 'cms', '禁用', '', 'module_admin', 'cms/slider/disable', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('348', '344', 'cms', '启用', '', 'module_admin', 'cms/slider/enable', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('347', '344', 'cms', '删除', '', 'module_admin', 'cms/slider/delete', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('346', '344', 'cms', '编辑', '', 'module_admin', 'cms/slider/edit', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('345', '344', 'cms', '新增', '', 'module_admin', 'cms/slider/add', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('344', '329', 'cms', '滚动图片', 'fa fa-fw fa-photo', 'module_admin', 'cms/slider/index', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('343', '337', 'cms', '快速编辑', '', 'module_admin', 'cms/advert_type/quickedit', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('342', '337', 'cms', '禁用', '', 'module_admin', 'cms/advert_type/disable', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('341', '337', 'cms', '启用', '', 'module_admin', 'cms/advert_type/enable', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('340', '337', 'cms', '删除', '', 'module_admin', 'cms/advert_type/delete', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('339', '337', 'cms', '编辑', '', 'module_admin', 'cms/advert_type/edit', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('338', '337', 'cms', '新增', '', 'module_admin', 'cms/advert_type/add', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('337', '330', 'cms', '广告分类', '', 'module_admin', 'cms/advert_type/index', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('336', '330', 'cms', '快速编辑', '', 'module_admin', 'cms/advert/quickedit', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('335', '330', 'cms', '禁用', '', 'module_admin', 'cms/advert/disable', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('334', '330', 'cms', '启用', '', 'module_admin', 'cms/advert/enable', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('333', '330', 'cms', '删除', '', 'module_admin', 'cms/advert/delete', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('332', '330', 'cms', '编辑', '', 'module_admin', 'cms/advert/edit', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('331', '330', 'cms', '新增', '', 'module_admin', 'cms/advert/add', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('330', '328', 'cms', '客户登记列表（开发中）', 'fa fa-fw fa-handshake-o', 'module_admin', 'cms/advert/index', '_self', '0', '1517733760', '1517848111', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('329', '308', 'cms', '营销管理', 'fa fa-fw fa-money', 'module_admin', '', '_self', '0', '1517733760', '1517736994', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('328', '308', 'cms', '内容管理', 'fa fa-fw fa-th-list', 'module_admin', '', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('327', '325', 'cms', '还原', '', 'module_admin', 'cms/recycle/restore', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('326', '325', 'cms', '删除', '', 'module_admin', 'cms/recycle/delete', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('325', '309', 'cms', '回收站', 'fa fa-fw fa-recycle', 'module_admin', 'cms/recycle/index', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('324', '318', 'cms', '快速编辑', '', 'module_admin', 'cms/page/quickedit', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('323', '318', 'cms', '禁用', '', 'module_admin', 'cms/page/disable', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('322', '318', 'cms', '启用', '', 'module_admin', 'cms/page/enable', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('321', '318', 'cms', '删除', '', 'module_admin', 'cms/page/delete', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('320', '318', 'cms', '编辑', '', 'module_admin', 'cms/page/edit', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('319', '318', 'cms', '新增', '', 'module_admin', 'cms/page/add', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('318', '309', 'cms', '单页管理', 'fa fa-fw fa-file-word-o', 'module_admin', 'cms/page/index', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('317', '312', 'cms', '快速编辑', '', 'module_admin', 'cms/document/quickedit', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('316', '312', 'cms', '禁用', '', 'module_admin', 'cms/document/disable', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('315', '312', 'cms', '启用', '', 'module_admin', 'cms/document/enable', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('314', '312', 'cms', '删除', '', 'module_admin', 'cms/document/delete', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('313', '312', 'cms', '编辑', '', 'module_admin', 'cms/document/edit', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('312', '309', 'cms', '文档列表', 'fa fa-fw fa-list', 'module_admin', 'cms/document/index', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('311', '309', 'cms', '发布文档', 'fa fa-fw fa-plus', 'module_admin', 'cms/document/add', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('310', '309', 'cms', '仪表盘', 'fa fa-fw fa-tachometer', 'module_admin', 'cms/index/index', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('309', '308', 'cms', '常用操作', 'fa fa-fw fa-folder-open-o', 'module_admin', '', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('308', '0', 'cms', '门户', 'fa fa-fw fa-newspaper-o', 'module_admin', 'cms/index/index', '_self', '0', '1517733760', '1517733760', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('307', '20', 'user', '测试', '', 'module_admin', 'user/index/test', '_self', '0', '1517661878', '1517661878', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('381', '380', 'cms', '新增', '', 'module_admin', 'cms/field/add', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('382', '380', 'cms', '编辑', '', 'module_admin', 'cms/field/edit', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('383', '380', 'cms', '删除', '', 'module_admin', 'cms/field/delete', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('384', '380', 'cms', '启用', '', 'module_admin', 'cms/field/enable', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('385', '380', 'cms', '禁用', '', 'module_admin', 'cms/field/disable', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('386', '380', 'cms', '快速编辑', '', 'module_admin', 'cms/field/quickedit', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('387', '365', 'cms', '导航管理', 'fa fa-fw fa-map-signs', 'module_admin', 'cms/nav/index', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('388', '387', 'cms', '新增', '', 'module_admin', 'cms/nav/add', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('389', '387', 'cms', '编辑', '', 'module_admin', 'cms/nav/edit', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('390', '387', 'cms', '删除', '', 'module_admin', 'cms/nav/delete', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('391', '387', 'cms', '启用', '', 'module_admin', 'cms/nav/enable', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('392', '387', 'cms', '禁用', '', 'module_admin', 'cms/nav/disable', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('393', '387', 'cms', '快速编辑', '', 'module_admin', 'cms/nav/quickedit', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('394', '387', 'cms', '菜单管理', '', 'module_admin', 'cms/menu/index', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('395', '394', 'cms', '新增', '', 'module_admin', 'cms/menu/add', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('396', '394', 'cms', '编辑', '', 'module_admin', 'cms/menu/edit', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('397', '394', 'cms', '删除', '', 'module_admin', 'cms/menu/delete', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('398', '394', 'cms', '启用', '', 'module_admin', 'cms/menu/enable', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('399', '394', 'cms', '禁用', '', 'module_admin', 'cms/menu/disable', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('400', '394', 'cms', '快速编辑', '', 'module_admin', 'cms/menu/quickedit', '_self', '0', '1517733761', '1517733761', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('401', '328', 'cms', '房源信息列表（待开发）', 'fa fa-fw fa-user-circle', 'module_admin', 'cms/house/index', '_self', '0', '1517736924', '1517848090', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('402', '401', 'cms', '新增', '', 'module_admin', 'cms/house/add', '_self', '0', '1517896964', '1517896981', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('403', '401', 'cms', '编辑', '', 'module_admin', 'cms/house/edit', '_self', '0', '1517897005', '1517897005', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('404', '401', 'cms', '删除', '', 'module_admin', 'cms/house/delete', '_self', '0', '1517897039', '1517897039', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('405', '401', 'cms', '启用', '', 'module_admin', 'cms/house/enable', '_self', '0', '1517897060', '1517897060', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('406', '401', 'cms', '禁用', '', 'module_admin', 'cms/house/disable', '_self', '0', '1517897089', '1517897089', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('407', '401', 'cms', '快速编辑', '', 'module_admin', 'cms/house/quickedit', '_self', '0', '1517897114', '1517897114', '100', '0', '1', '');
INSERT INTO `zj_admin_menu` VALUES ('408', '401', 'cms', '表格导入', '', 'module_admin', 'cms/house_type/index', '_self', '0', '1518012749', '1518012749', '100', '0', '1', '');

-- ----------------------------
-- Table structure for zj_admin_module
-- ----------------------------
DROP TABLE IF EXISTS `zj_admin_module`;
CREATE TABLE `zj_admin_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '模块名称（标识）',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '模块标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text COMMENT '配置信息',
  `access` text COMMENT '授权配置',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '模块唯一标识符',
  `system_module` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统模块',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of zj_admin_module
-- ----------------------------
INSERT INTO `zj_admin_module` VALUES ('2', 'admin', '系统', 'fa fa-fw fa-gear', '系统模块，DolphinPHP的核心模块', 'DolphinPHP', 'http://www.dolphinphp.com', '', '', '1.0.0', 'admin.dolphinphp.module', '1', '1468204902', '1468204902', '100', '1');
INSERT INTO `zj_admin_module` VALUES ('1', 'user', '用户', 'fa fa-fw fa-user', '用户模块，DolphinPHP自带模块', 'DolphinPHP', 'http://www.dolphinphp.com', '', '', '1.0.0', 'user.dolphinphp.module', '1', '1468204902', '1468204902', '100', '1');
INSERT INTO `zj_admin_module` VALUES ('4', 'cms', '门户', 'fa fa-fw fa-newspaper-o', '门户模块', 'CaiWeiMing', 'http://www.dolphinphp.com', '{\"summary\":\"0\",\"contact\":\"\",\"meta_head\":\"\",\"meta_foot\":\"\",\"support_status\":\"1\",\"support_color\":\"rgba(0,158,232,1)\",\"support_wx\":\"\",\"support_extra\":\"\"}', '{\"group\":{\"tab_title\":\"\\u680f\\u76ee\\u6388\\u6743\",\"table_name\":\"cms_column\",\"primary_key\":\"id\",\"parent_id\":\"pid\",\"node_name\":\"name\"}}', '1.0.0', 'cms.ming.module', '0', '1517733761', '1517733819', '100', '1');

-- ----------------------------
-- Table structure for zj_admin_packet
-- ----------------------------
DROP TABLE IF EXISTS `zj_admin_packet`;
CREATE TABLE `zj_admin_packet` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包名',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包标题',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者url',
  `version` varchar(16) NOT NULL,
  `tables` text NOT NULL COMMENT '数据表名',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='数据包表';

-- ----------------------------
-- Records of zj_admin_packet
-- ----------------------------

-- ----------------------------
-- Table structure for zj_admin_plugin
-- ----------------------------
DROP TABLE IF EXISTS `zj_admin_plugin`;
CREATE TABLE `zj_admin_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '插件名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '插件描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text NOT NULL COMMENT '配置信息',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '插件唯一标识符',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of zj_admin_plugin
-- ----------------------------
INSERT INTO `zj_admin_plugin` VALUES ('1', 'SystemInfo', '系统环境信息', 'fa fa-fw fa-info-circle', '在后台首页显示服务器信息', '蔡伟明', 'http://www.caiweiming.com', '{\"display\":\"1\",\"width\":\"6\"}', '1.0.0', 'system_info.ming.plugin', '0', '1477757503', '1477757503', '100', '1');
INSERT INTO `zj_admin_plugin` VALUES ('2', 'DevTeam', '开发团队成员信息', 'fa fa-fw fa-users', '开发团队成员信息', '蔡伟明', 'http://www.caiweiming.com', '{\"display\":\"1\",\"width\":\"6\"}', '1.0.0', 'dev_team.ming.plugin', '0', '1477755780', '1477755780', '100', '1');

-- ----------------------------
-- Table structure for zj_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `zj_admin_role`;
CREATE TABLE `zj_admin_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级角色',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '角色名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '角色描述',
  `menu_auth` text NOT NULL COMMENT '菜单权限',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `access` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否可登录后台',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of zj_admin_role
-- ----------------------------
INSERT INTO `zj_admin_role` VALUES ('1', '0', '超级管理员', '系统默认创建的角色，拥有最高权限', '', '0', '1476270000', '1468117612', '1', '1');
INSERT INTO `zj_admin_role` VALUES ('2', '1', '普通管理员', '房源信息录入管理员', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"60\",\"61\",\"62\",\"64\",\"65\",\"66\",\"67\",\"68\",\"69\",\"70\",\"71\",\"72\",\"73\",\"74\",\"75\",\"76\",\"77\",\"78\",\"79\",\"80\",\"81\",\"183\",\"184\",\"185\",\"186\",\"187\",\"188\",\"189\",\"190\",\"191\",\"192\",\"193\",\"194\",\"195\",\"207\",\"208\",\"209\",\"210\",\"211\",\"212\",\"213\",\"214\",\"215\",\"216\",\"217\",\"218\",\"219\",\"220\",\"221\",\"222\",\"223\",\"224\",\"225\",\"226\",\"227\",\"228\",\"229\",\"230\",\"231\",\"232\",\"233\",\"234\",\"235\",\"236\",\"237\",\"238\",\"239\",\"240\",\"241\",\"242\",\"243\",\"244\",\"245\",\"246\",\"247\",\"248\",\"249\",\"250\",\"251\",\"252\",\"253\",\"254\",\"255\",\"256\",\"257\",\"258\",\"259\",\"260\",\"261\",\"262\",\"263\",\"264\",\"265\",\"266\",\"267\",\"268\",\"269\",\"270\",\"271\",\"272\",\"273\",\"274\",\"275\",\"276\",\"277\",\"278\",\"279\",\"280\",\"281\",\"282\",\"283\",\"284\",\"285\",\"286\",\"287\",\"288\",\"289\",\"290\",\"291\",\"292\",\"293\",\"294\",\"295\",\"296\",\"297\",\"298\",\"299\",\"300\",\"301\",\"302\",\"303\",\"304\",\"305\",\"306\"]', '100', '1517660745', '1517660813', '1', '1');

-- ----------------------------
-- Table structure for zj_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `zj_admin_user`;
CREATE TABLE `zj_admin_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(96) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `email_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定邮箱地址',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `mobile_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定手机号码',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '头像',
  `money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `role` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `group` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '部门id',
  `signup_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '注册ip',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  `last_login_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '登录ip',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态：0禁用，1启用',
  `sex` int(2) DEFAULT NULL COMMENT '0  男人   1 女人',
  `section` varchar(255) DEFAULT '' COMMENT '所在部门',
  `quarters` varchar(255) DEFAULT NULL COMMENT '岗位',
  `fixed_phone` varchar(50) DEFAULT NULL COMMENT '固定电话',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of zj_admin_user
-- ----------------------------
INSERT INTO `zj_admin_user` VALUES ('1', 'admin', '超级管理员', '$2y$10$Brw6wmuSLIIx3Yabid8/Wu5l8VQ9M/H/CG3C9RqN9dUCwZW3ljGOK', '', '0', '', '0', '0', '0.00', '0', '1', '0', '0', '1476065410', '1518145170', '1518145169', '2130706433', '100', '1', null, '', null, null);
INSERT INTO `zj_admin_user` VALUES ('2', 'xiaowu', '吴伟祥', '$2y$10$Okn9s.p0D91489Uc6d7fKOwiBOF.WY.MLnLaLLAmwcg4M7wbVaSkm', '111@qq.com', '0', '18712377078', '0', '0', '0.00', '0', '2', '0', '0', '1517668089', '1517668341', '1517668340', '2130706433', '100', '1', '0', '', null, null);
INSERT INTO `zj_admin_user` VALUES ('4', 'test123', 'wuweixiang', '$2y$10$d2Qx2IlvZWD6KOZ5E.TH7..QkB6u/3jJGsOwQDeKlGX947SjON6Ga', '', '0', '18712377777', '0', '0', '0.00', '0', '2', '0', '0', '1517668797', '1517668797', '0', '0', '100', '1', '0', '研发部', 'PHP程序员', '0551-7496237');
INSERT INTO `zj_admin_user` VALUES ('5', 'dnasd', '阿萨达', '$2y$10$986OG1Z1J0DluQuTdRb5uu5n9Ml7g6/jEODeVfyjNN/hGqtLIC7W.', '', '0', '18712377771', '0', '0', '0.00', '0', '2', '0', '0', '1517668873', '1517669274', '0', '0', '100', '1', '1', 'asdad1', 'asdasd', 'asdsad');

-- ----------------------------
-- Table structure for zj_cms_advert
-- ----------------------------
DROP TABLE IF EXISTS `zj_cms_advert`;
CREATE TABLE `zj_cms_advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `shi` int(2) DEFAULT NULL,
  `wei` int(2) DEFAULT NULL,
  `ting` int(2) DEFAULT NULL,
  `add_time` varchar(100) DEFAULT NULL,
  `louceng` int(2) DEFAULT NULL,
  `typeid` int(2) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `areasize` float(10,2) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zj_cms_advert
-- ----------------------------
INSERT INTO `zj_cms_advert` VALUES ('1', '吴伟祥', '7', '3', '1', '2', null, '0', '0', '开发中', '17318511237', '100.00', '13500.00', '1');

-- ----------------------------
-- Table structure for zj_cms_advert123
-- ----------------------------
DROP TABLE IF EXISTS `zj_cms_advert123`;
CREATE TABLE `zj_cms_advert123` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT '' COMMENT '用户名',
  `city` varchar(30) DEFAULT NULL COMMENT '小区',
  `shi` int(2) DEFAULT NULL COMMENT '室',
  `wei` int(2) DEFAULT NULL,
  `ting` int(2) DEFAULT NULL COMMENT '厅',
  `add_time` datetime(6) DEFAULT NULL COMMENT '开始时间',
  `louceng` int(3) DEFAULT NULL COMMENT '期望楼层',
  `typeid` int(10) DEFAULT NULL COMMENT '租售形式',
  `beizhu` text COMMENT '备注',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `areasize` float(11,0) DEFAULT NULL COMMENT '期望面积',
  `price` float(11,0) DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Records of zj_cms_advert123
-- ----------------------------
INSERT INTO `zj_cms_advert123` VALUES ('1', '吴伟祥', '10', '2', '1', '1', '2018-02-06 12:02:36.000000', '2', '1', '测试', '18712377078', '100', '14000', '1');

-- ----------------------------
-- Table structure for zj_cms_advert_type
-- ----------------------------
DROP TABLE IF EXISTS `zj_cms_advert_type`;
CREATE TABLE `zj_cms_advert_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '分类名称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告分类表';

-- ----------------------------
-- Records of zj_cms_advert_type
-- ----------------------------

-- ----------------------------
-- Table structure for zj_cms_area_a
-- ----------------------------
DROP TABLE IF EXISTS `zj_cms_area_a`;
CREATE TABLE `zj_cms_area_a` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zj_cms_area_a
-- ----------------------------
INSERT INTO `zj_cms_area_a` VALUES ('1', '庐阳区', '0');
INSERT INTO `zj_cms_area_a` VALUES ('2', '蜀山区', '0');
INSERT INTO `zj_cms_area_a` VALUES ('3', '包河区', '0');
INSERT INTO `zj_cms_area_a` VALUES ('4', '博澳丽苑', '2');
INSERT INTO `zj_cms_area_a` VALUES ('5', '金域蓝湾', '1');
INSERT INTO `zj_cms_area_a` VALUES ('6', '万科森林公园', '2');
INSERT INTO `zj_cms_area_a` VALUES ('7', '万振逍遥苑', '1');
INSERT INTO `zj_cms_area_a` VALUES ('8', '百协大溪地', '2');
INSERT INTO `zj_cms_area_a` VALUES ('9', '华地学府名都', '2');
INSERT INTO `zj_cms_area_a` VALUES ('10', '金地国际城', '3');

-- ----------------------------
-- Table structure for zj_cms_column
-- ----------------------------
DROP TABLE IF EXISTS `zj_cms_column`;
CREATE TABLE `zj_cms_column` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `model` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文档模型id',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `target` varchar(16) NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `content` text NOT NULL COMMENT '内容',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '字体图标',
  `index_template` varchar(32) NOT NULL DEFAULT '' COMMENT '封面模板',
  `list_template` varchar(32) NOT NULL DEFAULT '' COMMENT '列表页模板',
  `detail_template` varchar(32) NOT NULL DEFAULT '' COMMENT '详情页模板',
  `post_auth` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '投稿权限',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `hide` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `rank_auth` int(11) NOT NULL DEFAULT '0' COMMENT '浏览权限，-1待审核，0为开放浏览，大于0则为对应的用户角色id',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '栏目属性：0-最终列表栏目，1-外部链接，2-频道封面',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of zj_cms_column
-- ----------------------------

-- ----------------------------
-- Table structure for zj_cms_document
-- ----------------------------
DROP TABLE IF EXISTS `zj_cms_document`;
CREATE TABLE `zj_cms_document` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `model` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文档模型ID',
  `title` varchar(256) NOT NULL DEFAULT '' COMMENT '标题',
  `shorttitle` varchar(32) NOT NULL DEFAULT '' COMMENT '简略标题',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `flag` set('j','p','b','s','a','f','c','h') DEFAULT NULL COMMENT '自定义属性',
  `view` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `comment` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `good` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `bad` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '踩数',
  `mark` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `trash` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '回收站',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档基础表';

-- ----------------------------
-- Records of zj_cms_document
-- ----------------------------

-- ----------------------------
-- Table structure for zj_cms_field
-- ----------------------------
DROP TABLE IF EXISTS `zj_cms_field`;
CREATE TABLE `zj_cms_field` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '字段名称',
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '字段标题',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '字段类型',
  `define` varchar(128) NOT NULL DEFAULT '' COMMENT '字段定义',
  `value` text COMMENT '默认值',
  `options` text COMMENT '额外选项',
  `tips` varchar(256) NOT NULL DEFAULT '' COMMENT '提示说明',
  `fixed` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否为固定字段',
  `show` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示',
  `model` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属文档模型id',
  `ajax_url` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框ajax地址',
  `next_items` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框的下级下拉框名，多个以逗号隔开',
  `param` varchar(32) NOT NULL DEFAULT '' COMMENT '联动下拉框请求参数名',
  `format` varchar(32) NOT NULL DEFAULT '' COMMENT '格式，用于格式文本',
  `table` varchar(32) NOT NULL DEFAULT '' COMMENT '表名，只用于快速联动类型',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '2' COMMENT '联动级别，只用于快速联动类型',
  `key` varchar(32) NOT NULL DEFAULT '' COMMENT '键字段，只用于快速联动类型',
  `option` varchar(32) NOT NULL DEFAULT '' COMMENT '值字段，只用于快速联动类型',
  `pid` varchar(32) NOT NULL DEFAULT '' COMMENT '父级id字段，只用于快速联动类型',
  `ak` varchar(32) NOT NULL DEFAULT '' COMMENT '百度地图appkey',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='文档字段表';

-- ----------------------------
-- Records of zj_cms_field
-- ----------------------------
INSERT INTO `zj_cms_field` VALUES ('1', 'id', 'ID', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', 'ID', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480562978', '1480562978', '100', '1');
INSERT INTO `zj_cms_field` VALUES ('2', 'cid', '栏目', 'select', 'int(11) UNSIGNED NOT NULL', '0', '', '请选择所属栏目', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480562978', '1480562978', '100', '1');
INSERT INTO `zj_cms_field` VALUES ('3', 'uid', '用户ID', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563110', '1480563110', '100', '1');
INSERT INTO `zj_cms_field` VALUES ('4', 'model', '模型ID', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563110', '1480563110', '100', '1');
INSERT INTO `zj_cms_field` VALUES ('5', 'title', '标题', 'text', 'varchar(128) NOT NULL', '', '', '文档标题', '0', '1', '0', '', '', '', '', '', '0', '', '', '', '', '1480575844', '1480576134', '1', '1');
INSERT INTO `zj_cms_field` VALUES ('6', 'shorttitle', '简略标题', 'text', 'varchar(32) NOT NULL', '', '', '简略标题', '0', '1', '0', '', '', '', '', '', '0', '', '', '', '', '1480575844', '1480576134', '1', '1');
INSERT INTO `zj_cms_field` VALUES ('7', 'flag', '自定义属性', 'checkbox', 'set(\'j\',\'p\',\'b\',\'s\',\'a\',\'f\',\'h\',\'c\') NULL DEFAULT NULL', '', 'j:跳转\r\np:图片\r\nb:加粗\r\ns:滚动\r\na:特荐\r\nf:幻灯\r\nh:头条\r\nc:推荐', '自定义属性', '0', '1', '0', '', '', '', '', '', '0', '', '', '', '', '1480671258', '1480671258', '100', '1');
INSERT INTO `zj_cms_field` VALUES ('8', 'view', '阅读量', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '1', '0', '', '', '', '', '', '0', '', '', '', '', '1480563149', '1480563149', '100', '1');
INSERT INTO `zj_cms_field` VALUES ('9', 'comment', '评论数', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563189', '1480563189', '100', '1');
INSERT INTO `zj_cms_field` VALUES ('10', 'good', '点赞数', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563279', '1480563279', '100', '1');
INSERT INTO `zj_cms_field` VALUES ('11', 'bad', '踩数', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563330', '1480563330', '100', '1');
INSERT INTO `zj_cms_field` VALUES ('12', 'mark', '收藏数量', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563372', '1480563372', '100', '1');
INSERT INTO `zj_cms_field` VALUES ('13', 'create_time', '创建时间', 'datetime', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563406', '1480563406', '100', '1');
INSERT INTO `zj_cms_field` VALUES ('14', 'update_time', '更新时间', 'datetime', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563432', '1480563432', '100', '1');
INSERT INTO `zj_cms_field` VALUES ('15', 'sort', '排序', 'text', 'int(11) NOT NULL', '100', '', '', '0', '1', '0', '', '', '', '', '', '0', '', '', '', '', '1480563510', '1480563510', '100', '1');
INSERT INTO `zj_cms_field` VALUES ('16', 'status', '状态', 'radio', 'tinyint(2) UNSIGNED NOT NULL', '1', '0:禁用\r\n1:启用', '', '0', '1', '0', '', '', '', '', '', '0', '', '', '', '', '1480563576', '1480563576', '100', '1');
INSERT INTO `zj_cms_field` VALUES ('17', 'trash', '回收站', 'text', 'tinyint(2) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563576', '1480563576', '100', '1');

-- ----------------------------
-- Table structure for zj_cms_house
-- ----------------------------
DROP TABLE IF EXISTS `zj_cms_house`;
CREATE TABLE `zj_cms_house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL COMMENT '房源编号',
  `name` varchar(255) DEFAULT NULL COMMENT '楼盘名称',
  `xquxian` varchar(255) DEFAULT NULL COMMENT '区县',
  `pianqu` varchar(255) DEFAULT NULL COMMENT '片区名称',
  `yezhu` varchar(255) DEFAULT NULL COMMENT '业主名称',
  `mobile` int(11) DEFAULT NULL COMMENT '电话',
  `phone` varchar(100) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL COMMENT '地址',
  `dongzuo` varchar(100) DEFAULT NULL COMMENT '栋座',
  `danyuan` varchar(255) DEFAULT NULL COMMENT '单元',
  `menhao` varchar(255) DEFAULT NULL COMMENT '门号',
  `fangling` varchar(100) DEFAULT NULL COMMENT '房龄',
  `chaoxiang` varchar(100) DEFAULT NULL COMMENT '朝向',
  `louc` varchar(255) DEFAULT NULL COMMENT '楼层',
  `zlouc` varchar(255) DEFAULT NULL COMMENT '总楼层',
  `shi` varchar(255) DEFAULT NULL COMMENT '室',
  `ting` varchar(255) DEFAULT NULL COMMENT '厅',
  `wei` varchar(255) DEFAULT NULL COMMENT '卫',
  `chu` varchar(255) DEFAULT NULL COMMENT '厨房',
  `yangtai` varchar(255) DEFAULT NULL COMMENT '阳台',
  `yongtu` varchar(255) DEFAULT NULL COMMENT '用途',
  `leixing` varchar(255) DEFAULT NULL COMMENT '类型',
  `zhuangxiu` varchar(255) DEFAULT NULL COMMENT '装修',
  `mianji` varchar(255) DEFAULT NULL COMMENT '面积',
  `zujin` varchar(255) DEFAULT NULL COMMENT '租金',
  `xianzhuang` varchar(255) DEFAULT NULL COMMENT '现状',
  `wuyefei` varchar(255) DEFAULT NULL COMMENT '物业费',
  `jiegou` varchar(255) DEFAULT NULL COMMENT '结构',
  `chanquan` varchar(255) DEFAULT NULL COMMENT '产权',
  `zhengjian` varchar(255) DEFAULT NULL COMMENT '证件',
  `fukuanstyle` varchar(255) DEFAULT NULL COMMENT '付款方式',
  `kanfst` varchar(255) DEFAULT NULL COMMENT '看房方式',
  `yaoshi` varchar(255) DEFAULT NULL COMMENT '钥匙编号',
  `fangwuss` varchar(255) DEFAULT NULL COMMENT '房屋设施',
  `zbhj` varchar(255) DEFAULT NULL COMMENT '周边环境',
  `jtqk` varchar(255) DEFAULT NULL COMMENT '交通情况',
  `beizhus` varchar(255) DEFAULT NULL COMMENT '备注',
  `biaoqian` varchar(255) DEFAULT NULL COMMENT '标签',
  `kaifas` varchar(255) DEFAULT NULL COMMENT '开发商',
  `shiyongmj` varchar(255) DEFAULT NULL COMMENT '使用面积',
  `fdmc` varchar(255) DEFAULT NULL COMMENT '分店名称',
  `ygxm` varchar(255) DEFAULT NULL COMMENT '员工姓名',
  `ygdh` varchar(255) DEFAULT NULL COMMENT '员工电话',
  `pan` varchar(255) DEFAULT NULL COMMENT '盘',
  `weituot` varchar(255) DEFAULT NULL COMMENT '委托日期',
  `jfrq` varchar(255) DEFAULT NULL COMMENT '交房日期',
  `llrq` varchar(255) DEFAULT NULL COMMENT '录入日期',
  `zhgjsj` varchar(255) DEFAULT NULL COMMENT '最后跟进时间',
  `dqrq` varchar(255) DEFAULT NULL COMMENT '到期日期',
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zj_cms_house
-- ----------------------------
INSERT INTO `zj_cms_house` VALUES ('1', '256', '万科中心', '庐阳区', '', '章女士', '551749622', '13349294199', '四里河与潜山路', 'A', '2', '304', '10年', '南北', '5', '20', '2', '3', '4', '2', '1', '写字楼', '多层', '毛坯', '123', '45', '良好', '4', '框架·', '商品房', '没有', '半年付', '提前预约', '33', '无', '商业区', '公交', '三号线站口', '1', '万科地产', '332', '系统默认总店', '陆核', '17318511237', '私', '2018/2/5 18:05:56', '2018/2/5 18:05:56', '2018/2/5 18:05:56', '2018/2/5 18:05:56', '2018/2/5 18:05:56', '1');

-- ----------------------------
-- Table structure for zj_cms_link
-- ----------------------------
DROP TABLE IF EXISTS `zj_cms_link`;
CREATE TABLE `zj_cms_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '类型：1-文字链接，2-图片链接',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '链接标题',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `logo` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '链接LOGO',
  `contact` varchar(255) NOT NULL DEFAULT '' COMMENT '联系方式',
  `sort` int(11) NOT NULL DEFAULT '100',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='有钱链接表';

-- ----------------------------
-- Records of zj_cms_link
-- ----------------------------

-- ----------------------------
-- Table structure for zj_cms_menu
-- ----------------------------
DROP TABLE IF EXISTS `zj_cms_menu`;
CREATE TABLE `zj_cms_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '导航id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `column` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `page` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '单页id',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '类型：0-栏目链接，1-单页链接，2-自定义链接',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `css` varchar(64) NOT NULL DEFAULT '' COMMENT 'css类',
  `rel` varchar(64) NOT NULL DEFAULT '' COMMENT '链接关系网',
  `target` varchar(16) NOT NULL DEFAULT '' COMMENT '打开方式',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of zj_cms_menu
-- ----------------------------
INSERT INTO `zj_cms_menu` VALUES ('1', '1', '0', '0', '0', '2', '首页', 'cms/index/index', '', '', '_self', '1492345605', '1492345605', '100', '1');
INSERT INTO `zj_cms_menu` VALUES ('2', '2', '0', '0', '0', '2', '关于我们', 'http://www.dolphinphp.com', '', '', '_self', '1492346763', '1492346763', '100', '1');
INSERT INTO `zj_cms_menu` VALUES ('3', '3', '0', '0', '0', '2', '开发文档', 'http://www.kancloud.cn/ming5112/dolphinphp', '', '', '_self', '1492346812', '1492346812', '100', '1');
INSERT INTO `zj_cms_menu` VALUES ('4', '3', '0', '0', '0', '2', '开发者社区', 'http://bbs.dolphinphp.com/', '', '', '_self', '1492346832', '1492346832', '100', '1');
INSERT INTO `zj_cms_menu` VALUES ('5', '1', '0', '0', '0', '2', '二级菜单', 'http://www.dolphinphp.com', '', '', '_self', '1492347372', '1492347510', '100', '1');
INSERT INTO `zj_cms_menu` VALUES ('6', '1', '5', '0', '0', '2', '子菜单', 'http://www.dolphinphp.com', '', '', '_self', '1492347388', '1492347520', '100', '1');

-- ----------------------------
-- Table structure for zj_cms_model
-- ----------------------------
DROP TABLE IF EXISTS `zj_cms_model`;
CREATE TABLE `zj_cms_model` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '模型名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '模型标题',
  `table` varchar(64) NOT NULL DEFAULT '' COMMENT '附加表名称',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '模型类别：0-系统模型，1-普通模型，2-独立模型',
  `icon` varchar(64) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `system` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否系统模型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容模型表';

-- ----------------------------
-- Records of zj_cms_model
-- ----------------------------

-- ----------------------------
-- Table structure for zj_cms_nav
-- ----------------------------
DROP TABLE IF EXISTS `zj_cms_nav`;
CREATE TABLE `zj_cms_nav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(32) NOT NULL DEFAULT '' COMMENT '导航标识',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='导航表';

-- ----------------------------
-- Records of zj_cms_nav
-- ----------------------------
INSERT INTO `zj_cms_nav` VALUES ('1', 'main_nav', '顶部导航', '1492345083', '1492345083', '1');
INSERT INTO `zj_cms_nav` VALUES ('2', 'about_nav', '底部关于', '1492346685', '1492346685', '1');
INSERT INTO `zj_cms_nav` VALUES ('3', 'support_nav', '服务与支持', '1492346715', '1492346715', '1');

-- ----------------------------
-- Table structure for zj_cms_page
-- ----------------------------
DROP TABLE IF EXISTS `zj_cms_page`;
CREATE TABLE `zj_cms_page` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '单页标题',
  `content` mediumtext NOT NULL COMMENT '单页内容',
  `keywords` varchar(32) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(250) NOT NULL DEFAULT '' COMMENT '页面描述',
  `template` varchar(32) NOT NULL DEFAULT '' COMMENT '模板文件',
  `cover` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '单页封面',
  `view` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单页表';

-- ----------------------------
-- Records of zj_cms_page
-- ----------------------------

-- ----------------------------
-- Table structure for zj_cms_slider
-- ----------------------------
DROP TABLE IF EXISTS `zj_cms_slider`;
CREATE TABLE `zj_cms_slider` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '标题',
  `cover` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '封面id',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='滚动图片表';

-- ----------------------------
-- Records of zj_cms_slider
-- ----------------------------

-- ----------------------------
-- Table structure for zj_cms_support
-- ----------------------------
DROP TABLE IF EXISTS `zj_cms_support`;
CREATE TABLE `zj_cms_support` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '客服名称',
  `qq` varchar(16) NOT NULL DEFAULT '' COMMENT 'QQ',
  `msn` varchar(100) NOT NULL DEFAULT '' COMMENT 'msn',
  `taobao` varchar(100) NOT NULL DEFAULT '' COMMENT 'taobao',
  `alibaba` varchar(100) NOT NULL DEFAULT '' COMMENT 'alibaba',
  `skype` varchar(100) NOT NULL DEFAULT '' COMMENT 'skype',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客服表';

-- ----------------------------
-- Records of zj_cms_support
-- ----------------------------
