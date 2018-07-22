-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июл 22 2018 г., 13:38
-- Версия сервера: 5.7.19-0ubuntu0.16.04.1
-- Версия PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chistota`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_access_actiondom`
--

CREATE TABLE `chisto_access_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_access_actions`
--

CREATE TABLE `chisto_access_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_access_category`
--

CREATE TABLE `chisto_access_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_access_context`
--

CREATE TABLE `chisto_access_context` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_access_context`
--

INSERT INTO `chisto_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_access_elements`
--

CREATE TABLE `chisto_access_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_access_media_source`
--

CREATE TABLE `chisto_access_media_source` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_access_menus`
--

CREATE TABLE `chisto_access_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_access_namespace`
--

CREATE TABLE `chisto_access_namespace` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_access_permissions`
--

CREATE TABLE `chisto_access_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_access_permissions`
--

INSERT INTO `chisto_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(22, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(23, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(24, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(25, 1, 'delete_template', 'perm.delete_template_desc', 1),
(26, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(27, 1, 'delete_role', 'perm.delete_role_desc', 1),
(28, 1, 'delete_user', 'perm.delete_user_desc', 1),
(29, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(30, 1, 'directory_create', 'perm.directory_create_desc', 1),
(31, 1, 'directory_list', 'perm.directory_list_desc', 1),
(32, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(33, 1, 'directory_update', 'perm.directory_update_desc', 1),
(34, 1, 'edit_category', 'perm.edit_category_desc', 1),
(35, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(36, 1, 'edit_context', 'perm.edit_context_desc', 1),
(37, 1, 'edit_document', 'perm.edit_document_desc', 1),
(38, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(39, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(40, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(41, 1, 'edit_role', 'perm.edit_role_desc', 1),
(42, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(43, 1, 'edit_template', 'perm.edit_template_desc', 1),
(44, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(45, 1, 'edit_user', 'perm.edit_user_desc', 1),
(46, 1, 'element_tree', 'perm.element_tree_desc', 1),
(47, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(48, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(49, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(50, 1, 'export_static', 'perm.export_static_desc', 1),
(51, 1, 'file_create', 'perm.file_create_desc', 1),
(52, 1, 'file_list', 'perm.file_list_desc', 1),
(53, 1, 'file_manager', 'perm.file_manager_desc', 1),
(54, 1, 'file_remove', 'perm.file_remove_desc', 1),
(55, 1, 'file_tree', 'perm.file_tree_desc', 1),
(56, 1, 'file_update', 'perm.file_update_desc', 1),
(57, 1, 'file_upload', 'perm.file_upload_desc', 1),
(58, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(59, 1, 'file_view', 'perm.file_view_desc', 1),
(60, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(61, 1, 'frames', 'perm.frames_desc', 1),
(62, 1, 'help', 'perm.help_desc', 1),
(63, 1, 'home', 'perm.home_desc', 1),
(64, 1, 'import_static', 'perm.import_static_desc', 1),
(65, 1, 'languages', 'perm.languages_desc', 1),
(66, 1, 'lexicons', 'perm.lexicons_desc', 1),
(67, 1, 'list', 'perm.list_desc', 1),
(68, 1, 'load', 'perm.load_desc', 1),
(69, 1, 'logout', 'perm.logout_desc', 1),
(70, 1, 'logs', 'perm.logs_desc', 1),
(71, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(72, 1, 'menu_security', 'perm.menu_security_desc', 1),
(73, 1, 'menu_site', 'perm.menu_site_desc', 1),
(74, 1, 'menu_support', 'perm.menu_support_desc', 1),
(75, 1, 'menu_system', 'perm.menu_system_desc', 1),
(76, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(77, 1, 'menu_user', 'perm.menu_user_desc', 1),
(78, 1, 'menus', 'perm.menus_desc', 1),
(79, 1, 'messages', 'perm.messages_desc', 1),
(80, 1, 'namespaces', 'perm.namespaces_desc', 1),
(81, 1, 'new_category', 'perm.new_category_desc', 1),
(82, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(83, 1, 'new_context', 'perm.new_context_desc', 1),
(84, 1, 'new_document', 'perm.new_document_desc', 1),
(85, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(86, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(87, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(88, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(89, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(90, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(91, 1, 'new_role', 'perm.new_role_desc', 1),
(92, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(93, 1, 'new_template', 'perm.new_template_desc', 1),
(94, 1, 'new_tv', 'perm.new_tv_desc', 1),
(95, 1, 'new_user', 'perm.new_user_desc', 1),
(96, 1, 'packages', 'perm.packages_desc', 1),
(97, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(98, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(99, 1, 'policy_new', 'perm.policy_new_desc', 1),
(100, 1, 'policy_save', 'perm.policy_save_desc', 1),
(101, 1, 'policy_view', 'perm.policy_view_desc', 1),
(102, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(103, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(104, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(105, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(106, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(107, 1, 'property_sets', 'perm.property_sets_desc', 1),
(108, 1, 'providers', 'perm.providers_desc', 1),
(109, 1, 'publish_document', 'perm.publish_document_desc', 1),
(110, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(111, 1, 'remove', 'perm.remove_desc', 1),
(112, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(113, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(114, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(115, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(116, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(117, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(118, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(119, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(120, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(121, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(122, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(123, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(124, 1, 'save', 'perm.save_desc', 1),
(125, 1, 'save_category', 'perm.save_category_desc', 1),
(126, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(127, 1, 'save_context', 'perm.save_context_desc', 1),
(128, 1, 'save_document', 'perm.save_document_desc', 1),
(129, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(130, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(131, 1, 'save_role', 'perm.save_role_desc', 1),
(132, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(133, 1, 'save_template', 'perm.save_template_desc', 1),
(134, 1, 'save_tv', 'perm.save_tv_desc', 1),
(135, 1, 'save_user', 'perm.save_user_desc', 1),
(136, 1, 'search', 'perm.search_desc', 1),
(137, 1, 'settings', 'perm.settings_desc', 1),
(138, 1, 'events', 'perm.events_desc', 1),
(139, 1, 'source_save', 'perm.source_save_desc', 1),
(140, 1, 'source_delete', 'perm.source_delete_desc', 1),
(141, 1, 'source_edit', 'perm.source_edit_desc', 1),
(142, 1, 'source_view', 'perm.source_view_desc', 1),
(143, 1, 'sources', 'perm.sources_desc', 1),
(144, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(145, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(146, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(147, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(148, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(149, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(150, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(151, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(152, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(153, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(154, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(155, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(156, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(157, 1, 'view', 'perm.view_desc', 1),
(158, 1, 'view_category', 'perm.view_category_desc', 1),
(159, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(160, 1, 'view_context', 'perm.view_context_desc', 1),
(161, 1, 'view_document', 'perm.view_document_desc', 1),
(162, 1, 'view_element', 'perm.view_element_desc', 1),
(163, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(164, 1, 'view_offline', 'perm.view_offline_desc', 1),
(165, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(166, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(167, 1, 'view_role', 'perm.view_role_desc', 1),
(168, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(169, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(170, 1, 'view_template', 'perm.view_template_desc', 1),
(171, 1, 'view_tv', 'perm.view_tv_desc', 1),
(172, 1, 'view_user', 'perm.view_user_desc', 1),
(173, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(174, 1, 'workspaces', 'perm.workspaces_desc', 1),
(175, 2, 'add_children', 'perm.add_children_desc', 1),
(176, 2, 'copy', 'perm.copy_desc', 1),
(177, 2, 'create', 'perm.create_desc', 1),
(178, 2, 'delete', 'perm.delete_desc', 1),
(179, 2, 'list', 'perm.list_desc', 1),
(180, 2, 'load', 'perm.load_desc', 1),
(181, 2, 'move', 'perm.move_desc', 1),
(182, 2, 'publish', 'perm.publish_desc', 1),
(183, 2, 'remove', 'perm.remove_desc', 1),
(184, 2, 'save', 'perm.save_desc', 1),
(185, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(186, 2, 'undelete', 'perm.undelete_desc', 1),
(187, 2, 'unpublish', 'perm.unpublish_desc', 1),
(188, 2, 'view', 'perm.view_desc', 1),
(189, 3, 'load', 'perm.load_desc', 1),
(190, 3, 'list', 'perm.list_desc', 1),
(191, 3, 'view', 'perm.view_desc', 1),
(192, 3, 'save', 'perm.save_desc', 1),
(193, 3, 'remove', 'perm.remove_desc', 1),
(194, 4, 'add_children', 'perm.add_children_desc', 1),
(195, 4, 'create', 'perm.create_desc', 1),
(196, 4, 'copy', 'perm.copy_desc', 1),
(197, 4, 'delete', 'perm.delete_desc', 1),
(198, 4, 'list', 'perm.list_desc', 1),
(199, 4, 'load', 'perm.load_desc', 1),
(200, 4, 'remove', 'perm.remove_desc', 1),
(201, 4, 'save', 'perm.save_desc', 1),
(202, 4, 'view', 'perm.view_desc', 1),
(203, 5, 'create', 'perm.create_desc', 1),
(204, 5, 'copy', 'perm.copy_desc', 1),
(205, 5, 'list', 'perm.list_desc', 1),
(206, 5, 'load', 'perm.load_desc', 1),
(207, 5, 'remove', 'perm.remove_desc', 1),
(208, 5, 'save', 'perm.save_desc', 1),
(209, 5, 'view', 'perm.view_desc', 1),
(210, 6, 'load', 'perm.load_desc', 1),
(211, 6, 'list', 'perm.list_desc', 1),
(212, 6, 'view', 'perm.view_desc', 1),
(213, 6, 'save', 'perm.save_desc', 1),
(214, 6, 'remove', 'perm.remove_desc', 1),
(215, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(216, 6, 'copy', 'perm.copy_desc', 1),
(217, 7, 'list', 'perm.list_desc', 1),
(218, 7, 'load', 'perm.load_desc', 1),
(219, 7, 'view', 'perm.view_desc', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_access_policies`
--

CREATE TABLE `chisto_access_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_access_policies`
--

INSERT INTO `chisto_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{"add_children":true,"create":true,"copy":true,"delete":true,"list":true,"load":true,"move":true,"publish":true,"remove":true,"save":true,"steal_lock":true,"undelete":true,"unpublish":true,"view":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{"about":true,"access_permissions":true,"actions":true,"change_password":true,"change_profile":true,"charsets":true,"class_map":true,"components":true,"content_types":true,"countries":true,"create":true,"credits":true,"customize_forms":true,"dashboards":true,"database":true,"database_truncate":true,"delete_category":true,"delete_chunk":true,"delete_context":true,"delete_document":true,"delete_eventlog":true,"delete_plugin":true,"delete_propertyset":true,"delete_role":true,"delete_snippet":true,"delete_template":true,"delete_tv":true,"delete_user":true,"directory_chmod":true,"directory_create":true,"directory_list":true,"directory_remove":true,"directory_update":true,"edit_category":true,"edit_chunk":true,"edit_context":true,"edit_document":true,"edit_locked":true,"edit_plugin":true,"edit_propertyset":true,"edit_role":true,"edit_snippet":true,"edit_template":true,"edit_tv":true,"edit_user":true,"element_tree":true,"empty_cache":true,"error_log_erase":true,"error_log_view":true,"events":true,"export_static":true,"file_create":true,"file_list":true,"file_manager":true,"file_remove":true,"file_tree":true,"file_update":true,"file_upload":true,"file_unpack":true,"file_view":true,"flush_sessions":true,"frames":true,"help":true,"home":true,"import_static":true,"languages":true,"lexicons":true,"list":true,"load":true,"logout":true,"logs":true,"menus":true,"menu_reports":true,"menu_security":true,"menu_site":true,"menu_support":true,"menu_system":true,"menu_tools":true,"menu_user":true,"messages":true,"namespaces":true,"new_category":true,"new_chunk":true,"new_context":true,"new_document":true,"new_document_in_root":true,"new_plugin":true,"new_propertyset":true,"new_role":true,"new_snippet":true,"new_static_resource":true,"new_symlink":true,"new_template":true,"new_tv":true,"new_user":true,"new_weblink":true,"packages":true,"policy_delete":true,"policy_edit":true,"policy_new":true,"policy_save":true,"policy_template_delete":true,"policy_template_edit":true,"policy_template_new":true,"policy_template_save":true,"policy_template_view":true,"policy_view":true,"property_sets":true,"providers":true,"publish_document":true,"purge_deleted":true,"remove":true,"remove_locks":true,"resource_duplicate":true,"resourcegroup_delete":true,"resourcegroup_edit":true,"resourcegroup_new":true,"resourcegroup_resource_edit":true,"resourcegroup_resource_list":true,"resourcegroup_save":true,"resourcegroup_view":true,"resource_quick_create":true,"resource_quick_update":true,"resource_tree":true,"save":true,"save_category":true,"save_chunk":true,"save_context":true,"save_document":true,"save_plugin":true,"save_propertyset":true,"save_role":true,"save_snippet":true,"save_template":true,"save_tv":true,"save_user":true,"search":true,"settings":true,"sources":true,"source_delete":true,"source_edit":true,"source_save":true,"source_view":true,"steal_locks":true,"tree_show_element_ids":true,"tree_show_resource_ids":true,"undelete_document":true,"unlock_element_properties":true,"unpublish_document":true,"usergroup_delete":true,"usergroup_edit":true,"usergroup_new":true,"usergroup_save":true,"usergroup_user_edit":true,"usergroup_user_list":true,"usergroup_view":true,"view":true,"view_category":true,"view_chunk":true,"view_context":true,"view_document":true,"view_element":true,"view_eventlog":true,"view_offline":true,"view_plugin":true,"view_propertyset":true,"view_role":true,"view_snippet":true,"view_sysinfo":true,"view_template":true,"view_tv":true,"view_unpublished":true,"view_user":true,"workspaces":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{"load":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{"load":true,"list":true,"view":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{"load":true,"list":true,"view":true,"save":true,"remove":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{"add_children":true,"create":true,"delete":true,"list":true,"load":true,"remove":true,"save":true,"view":true,"copy":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{"change_profile":true,"class_map":true,"countries":true,"edit_document":true,"frames":true,"help":true,"home":true,"load":true,"list":true,"logout":true,"menu_reports":true,"menu_site":true,"menu_support":true,"menu_tools":true,"menu_user":true,"resource_duplicate":true,"resource_tree":true,"save_document":true,"source_view":true,"tree_show_resource_ids":true,"view":true,"view_document":true,"view_template":true,"new_document":true,"delete_document":true}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{"create":true,"copy":true,"load":true,"list":true,"save":true,"remove":true,"view":true}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{"load":true,"list":true,"view":true}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{"about":true,"change_password":true,"change_profile":true,"charsets":true,"class_map":true,"components":true,"content_types":true,"countries":true,"create":true,"credits":true,"customize_forms":true,"dashboards":true,"database":true,"delete_category":true,"delete_chunk":true,"delete_context":true,"delete_document":true,"delete_eventlog":true,"delete_plugin":true,"delete_propertyset":true,"delete_snippet":true,"delete_template":true,"delete_tv":true,"delete_role":true,"delete_user":true,"directory_chmod":true,"directory_create":true,"directory_list":true,"directory_remove":true,"directory_update":true,"edit_category":true,"edit_chunk":true,"edit_context":true,"edit_document":true,"edit_locked":true,"edit_plugin":true,"edit_propertyset":true,"edit_role":true,"edit_snippet":true,"edit_template":true,"edit_tv":true,"edit_user":true,"element_tree":true,"empty_cache":true,"error_log_erase":true,"error_log_view":true,"export_static":true,"file_create":true,"file_list":true,"file_manager":true,"file_remove":true,"file_tree":true,"file_update":true,"file_upload":true,"file_unpack":true,"file_view":true,"frames":true,"help":true,"home":true,"import_static":true,"languages":true,"lexicons":true,"list":true,"load":true,"logout":true,"logs":true,"menu_reports":true,"menu_site":true,"menu_support":true,"menu_system":true,"menu_tools":true,"menu_user":true,"menus":true,"messages":true,"namespaces":true,"new_category":true,"new_chunk":true,"new_context":true,"new_document":true,"new_static_resource":true,"new_symlink":true,"new_weblink":true,"new_document_in_root":true,"new_plugin":true,"new_propertyset":true,"new_role":true,"new_snippet":true,"new_template":true,"new_tv":true,"new_user":true,"packages":true,"property_sets":true,"providers":true,"publish_document":true,"purge_deleted":true,"remove":true,"resource_duplicate":true,"resource_quick_create":true,"resource_quick_update":true,"resource_tree":true,"save":true,"save_category":true,"save_chunk":true,"save_context":true,"save_document":true,"save_plugin":true,"save_propertyset":true,"save_snippet":true,"save_template":true,"save_tv":true,"save_user":true,"search":true,"settings":true,"source_delete":true,"source_edit":true,"source_save":true,"source_view":true,"sources":true,"tree_show_element_ids":true,"tree_show_resource_ids":true,"undelete_document":true,"unpublish_document":true,"unlock_element_properties":true,"view":true,"view_category":true,"view_chunk":true,"view_context":true,"view_document":true,"view_element":true,"view_eventlog":true,"view_offline":true,"view_plugin":true,"view_propertyset":true,"view_role":true,"view_snippet":true,"view_sysinfo":true,"view_template":true,"view_tv":true,"view_user":true,"view_unpublished":true,"workspaces":true}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{"load":true,"list":true,"view":true,"save":true,"remove":true,"copy":true,"view_unpublished":true}', 'permissions'),
(12, 'Hidden Namespace', 'Hidden Namespace policy, will not show Namespace in lists.', 0, 7, '', '{"load":false,"list":false,"view":true}', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_access_policy_templates`
--

CREATE TABLE `chisto_access_policy_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_access_policy_templates`
--

INSERT INTO `chisto_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions'),
(7, 6, 'NamespaceTemplate', 'Namespace Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_access_policy_template_groups`
--

CREATE TABLE `chisto_access_policy_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_access_policy_template_groups`
--

INSERT INTO `chisto_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.'),
(6, 'Namespace', 'All Namespace based policy templates.');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_access_resources`
--

CREATE TABLE `chisto_access_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_access_resource_groups`
--

CREATE TABLE `chisto_access_resource_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_access_templatevars`
--

CREATE TABLE `chisto_access_templatevars` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_actiondom`
--

CREATE TABLE `chisto_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(191) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_actions`
--

CREATE TABLE `chisto_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(191) NOT NULL,
  `haslayout` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_actions`
--

INSERT INTO `chisto_actions` (`id`, `namespace`, `controller`, `haslayout`, `lang_topics`, `assets`, `help_url`) VALUES
(1, 'migx', 'index', 0, 'example:default', '', ''),
(2, 'clientconfig', 'index', 1, 'clientconfig:default', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_actions_fields`
--

CREATE TABLE `chisto_actions_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(191) NOT NULL DEFAULT '',
  `other` varchar(191) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_actions_fields`
--

INSERT INTO `chisto_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(33, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(34, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(35, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(36, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(37, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(38, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(39, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(40, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(41, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(42, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(43, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(44, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(45, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(46, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(47, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(48, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(49, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(51, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(52, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(53, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(54, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(55, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(56, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(57, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(58, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(59, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(60, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(61, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(62, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(63, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(64, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(65, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(66, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(67, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(68, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(69, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(70, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(71, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(72, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(73, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(74, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(75, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(76, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_active_users`
--

CREATE TABLE `chisto_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_categories`
--

CREATE TABLE `chisto_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_categories`
--

INSERT INTO `chisto_categories` (`id`, `parent`, `category`, `rank`) VALUES
(1, 0, 'BackupMODX', 0),
(2, 0, 'MIGX', 0),
(3, 0, 'pdoTools', 0),
(4, 0, 'INDEX', 0),
(5, 0, 'SERVICES', 0),
(6, 0, 'PAGES', 0),
(7, 0, 'MAIN', 0),
(8, 0, 'ClientConfig', 0),
(9, 4, 'slider', 0),
(10, 4, 'advantage', 0),
(11, 4, 'service', 0),
(12, 4, 'price', 0),
(13, 4, 'stock', 0),
(14, 4, 'review', 0),
(15, 4, 'works', 0),
(16, 4, 'banners', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_categories_closure`
--

CREATE TABLE `chisto_categories_closure` (
  `ancestor` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `descendant` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `depth` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_categories_closure`
--

INSERT INTO `chisto_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(0, 1, 0),
(0, 2, 0),
(0, 3, 0),
(0, 4, 0),
(0, 5, 0),
(0, 6, 0),
(0, 7, 0),
(0, 8, 0),
(0, 9, 0),
(0, 10, 0),
(0, 11, 0),
(0, 12, 0),
(0, 13, 0),
(0, 14, 0),
(0, 15, 0),
(0, 16, 0),
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(4, 9, 1),
(4, 10, 0),
(4, 11, 0),
(4, 12, 0),
(4, 13, 0),
(4, 14, 0),
(4, 15, 1),
(4, 16, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0),
(10, 10, 0),
(11, 11, 0),
(12, 12, 0),
(13, 13, 0),
(14, 14, 0),
(15, 15, 0),
(16, 16, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_class_map`
--

CREATE TABLE `chisto_class_map` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(191) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:resource'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_class_map`
--

INSERT INTO `chisto_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_clientconfig_context_value`
--

CREATE TABLE `chisto_clientconfig_context_value` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting` int(10) NOT NULL DEFAULT '0',
  `context` varchar(75) NOT NULL DEFAULT 'web',
  `value` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_clientconfig_group`
--

CREATE TABLE `chisto_clientconfig_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(75) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `sortorder` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `chisto_clientconfig_group`
--

INSERT INTO `chisto_clientconfig_group` (`id`, `label`, `description`, `sortorder`) VALUES
(1, 'Contacts', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_clientconfig_setting`
--

CREATE TABLE `chisto_clientconfig_setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(75) NOT NULL DEFAULT '',
  `label` varchar(75) NOT NULL DEFAULT '',
  `xtype` varchar(75) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `sortorder` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  `default` mediumtext NOT NULL,
  `group` int(11) DEFAULT '0',
  `options` mediumtext,
  `process_options` tinyint(1) NOT NULL DEFAULT '0',
  `source` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `chisto_clientconfig_setting`
--

INSERT INTO `chisto_clientconfig_setting` (`id`, `key`, `label`, `xtype`, `description`, `is_required`, `sortorder`, `value`, `default`, `group`, `options`, `process_options`, `source`) VALUES
(1, 'phoneOne', 'Phine 1', 'textfield', '', 0, 0, '8(908)189-99-44', '', 1, '', 0, 0),
(2, 'phoneTwo', 'Phone 2', 'textfield', '', 0, 1, '8(800)200-34-21', '', 1, '', 0, 0),
(3, 'ok', 'Link ok.ru', 'textfield', '', 0, 2, 'http://ok.ru', '', 1, '', 0, 0),
(4, 'vk', 'Link vk.com', 'textfield', '', 0, 3, 'http://vk.com', '', 1, '', 0, 0),
(5, 'fb', 'Link facebook.com', 'textfield', '', 0, 4, ' http://facebook.com', '', 1, '', 0, 0),
(6, 'ig', 'Link instagram.com', 'textfield', '', 0, 5, 'http://instagram.com', '', 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_content_type`
--

CREATE TABLE `chisto_content_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_content_type`
--

INSERT INTO `chisto_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_context`
--

CREATE TABLE `chisto_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_context`
--

INSERT INTO `chisto_context` (`key`, `name`, `description`, `rank`) VALUES
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0),
('web', 'Website', 'The default front-end context for your web site.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_context_resource`
--

CREATE TABLE `chisto_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_context_setting`
--

CREATE TABLE `chisto_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_context_setting`
--

INSERT INTO `chisto_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_dashboard`
--

CREATE TABLE `chisto_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_dashboard`
--

INSERT INTO `chisto_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_dashboard_widget`
--

CREATE TABLE `chisto_dashboard_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(191) NOT NULL DEFAULT 'half'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_dashboard_widget`
--

INSERT INTO `chisto_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full'),
(6, 'Backup MODX', 'Backup MODX Widget', 'snippet', 'BackupMODXWidget', 'backupmodx', 'backupmodx:default', 'half');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_dashboard_widget_placement`
--

CREATE TABLE `chisto_dashboard_widget_placement` (
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `widget` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_dashboard_widget_placement`
--

INSERT INTO `chisto_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_documentgroup_names`
--

CREATE TABLE `chisto_documentgroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_document_groups`
--

CREATE TABLE `chisto_document_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_element_property_sets`
--

CREATE TABLE `chisto_element_property_sets` (
  `element` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_extension_packages`
--

CREATE TABLE `chisto_extension_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(191) NOT NULL DEFAULT '',
  `service_class` varchar(191) NOT NULL DEFAULT '',
  `service_name` varchar(191) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_fc_profiles`
--

CREATE TABLE `chisto_fc_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_fc_profiles_usergroups`
--

CREATE TABLE `chisto_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_fc_sets`
--

CREATE TABLE `chisto_fc_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_lexicon_entries`
--

CREATE TABLE `chisto_lexicon_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_manager_log`
--

CREATE TABLE `chisto_manager_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_manager_log`
--

INSERT INTO `chisto_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2018-07-19 19:21:10', 'login', 'modContext', 'mgr'),
(2, 1, '2018-07-19 19:23:50', 'resource_update', 'modResource', '1'),
(3, 1, '2018-07-19 19:29:25', 'setting_update', 'modSystemSetting', 'friendly_alias_realtime'),
(4, 1, '2018-07-19 19:29:44', 'setting_update', 'modSystemSetting', 'friendly_alias_translit'),
(5, 1, '2018-07-19 19:29:55', 'setting_update', 'modSystemSetting', 'friendly_urls'),
(6, 1, '2018-07-19 19:30:00', 'setting_update', 'modSystemSetting', 'friendly_urls_strict'),
(7, 1, '2018-07-19 19:30:05', 'setting_update', 'modSystemSetting', 'global_duplicate_uri_check'),
(8, 1, '2018-07-19 19:30:11', 'setting_update', 'modSystemSetting', 'use_alias_path'),
(9, 1, '2018-07-19 19:32:43', 'setting_update', 'modSystemSetting', 'error_page'),
(10, 1, '2018-07-19 19:32:48', 'setting_update', 'modSystemSetting', 'hidemenu_default'),
(11, 1, '2018-07-19 19:32:55', 'setting_update', 'modSystemSetting', 'publish_default'),
(12, 1, '2018-07-19 19:33:15', 'setting_update', 'modSystemSetting', 'site_name'),
(13, 1, '2018-07-19 19:33:39', 'setting_update', 'modSystemSetting', 'unauthorized_page'),
(14, 1, '2018-07-19 19:33:46', 'setting_update', 'modSystemSetting', 'site_unavailable_page'),
(15, 1, '2018-07-19 19:37:02', 'resource_update', 'modResource', '1'),
(16, 1, '2018-07-19 19:37:21', 'resource_create', 'modDocument', '2'),
(17, 1, '2018-07-19 19:37:34', 'resource_create', 'modDocument', '3'),
(18, 1, '2018-07-19 19:37:52', 'resource_create', 'modDocument', '4'),
(19, 1, '2018-07-19 19:38:15', 'setting_update', 'modSystemSetting', 'ace.theme'),
(20, 1, '2018-07-19 19:38:55', 'category_create', 'modCategory', '4'),
(21, 1, '2018-07-19 19:39:03', 'template_update', 'modTemplate', '1'),
(22, 1, '2018-07-19 19:39:03', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(23, 1, '2018-07-19 19:39:33', 'resource_update', 'modResource', '1'),
(24, 1, '2018-07-19 19:39:52', 'resource_update', 'modResource', '1'),
(25, 1, '2018-07-19 19:40:35', 'resource_create', 'modDocument', '5'),
(26, 1, '2018-07-19 19:41:02', 'resource_create', 'modDocument', '6'),
(27, 1, '2018-07-19 19:41:26', 'resource_create', 'modDocument', '7'),
(28, 1, '2018-07-19 19:41:41', 'resource_create', 'modDocument', '8'),
(29, 1, '2018-07-19 19:41:46', 'resource_update', 'modResource', '8'),
(30, 1, '2018-07-19 19:41:50', 'resource_update', 'modResource', '7'),
(31, 1, '2018-07-19 19:41:54', 'resource_update', 'modResource', '6'),
(32, 1, '2018-07-19 19:42:02', 'resource_update', 'modResource', '5'),
(33, 1, '2018-07-19 19:42:35', 'resource_create', 'modDocument', '9'),
(34, 1, '2018-07-19 19:42:47', 'resource_update', 'modResource', '9'),
(35, 1, '2018-07-19 19:43:16', 'resource_create', 'modDocument', '10'),
(36, 1, '2018-07-19 19:45:13', 'resource_create', 'modDocument', '11'),
(37, 1, '2018-07-19 19:45:48', 'category_create', 'modCategory', '5'),
(38, 1, '2018-07-19 19:45:52', 'template_create', 'modTemplate', '2'),
(39, 1, '2018-07-19 19:46:21', 'duplicate_resource', 'modDocument', '12'),
(40, 1, '2018-07-19 19:46:30', 'duplicate_resource', 'modDocument', '13'),
(41, 1, '2018-07-19 19:46:47', 'duplicate_resource', 'modDocument', '14'),
(42, 1, '2018-07-19 19:46:56', 'duplicate_resource', 'modDocument', '15'),
(43, 1, '2018-07-19 19:47:05', 'duplicate_resource', 'modDocument', '16'),
(44, 1, '2018-07-19 19:47:15', 'duplicate_resource', 'modDocument', '17'),
(45, 1, '2018-07-19 19:47:22', 'duplicate_resource', 'modDocument', '18'),
(46, 1, '2018-07-19 19:47:29', 'duplicate_resource', 'modDocument', '19'),
(47, 1, '2018-07-19 19:47:38', 'duplicate_resource', 'modDocument', '20'),
(48, 1, '2018-07-19 19:47:45', 'duplicate_resource', 'modDocument', '21'),
(49, 1, '2018-07-19 19:47:52', 'duplicate_resource', 'modDocument', '22'),
(50, 1, '2018-07-19 19:48:27', 'category_create', 'modCategory', '6'),
(51, 1, '2018-07-19 19:48:44', 'template_create', 'modTemplate', '3'),
(52, 1, '2018-07-19 19:49:03', 'source_duplicate', 'sources.modMediaSource', '2'),
(53, 1, '2018-07-19 19:49:16', 'source_update', 'sources.modMediaSource', '2'),
(54, 1, '2018-07-19 19:49:49', 'source_update', 'sources.modMediaSource', '2'),
(55, 1, '2018-07-19 19:50:56', 'setting_update', 'modSystemSetting', 'default_media_source'),
(56, 1, '2018-07-21 10:56:59', 'template_update', 'modTemplate', '1'),
(57, 1, '2018-07-21 10:56:59', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(58, 1, '2018-07-21 10:57:07', 'template_update', 'modTemplate', '1'),
(59, 1, '2018-07-21 10:57:07', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(60, 1, '2018-07-21 11:03:53', 'category_create', 'modCategory', '7'),
(61, 1, '2018-07-21 11:04:40', 'chunk_create', 'modChunk', '1'),
(62, 1, '2018-07-21 11:06:27', 'chunk_update', 'modChunk', '1'),
(63, 1, '2018-07-21 11:06:27', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(64, 1, '2018-07-21 11:08:10', 'chunk_create', 'modChunk', '2'),
(65, 1, '2018-07-21 11:08:36', 'chunk_create', 'modChunk', '3'),
(66, 1, '2018-07-21 11:09:18', 'chunk_create', 'modChunk', '4'),
(67, 1, '2018-07-21 11:09:51', 'chunk_update', 'modChunk', '4'),
(68, 1, '2018-07-21 11:09:51', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 4 Default'),
(69, 1, '2018-07-21 11:16:03', 'chunk_create', 'modChunk', '5'),
(70, 1, '2018-07-21 11:16:54', 'chunk_create', 'modChunk', '6'),
(71, 1, '2018-07-21 11:19:05', 'chunk_create', 'modChunk', '7'),
(72, 1, '2018-07-21 11:19:46', 'chunk_create', 'modChunk', '8'),
(73, 1, '2018-07-21 11:20:34', 'chunk_create', 'modChunk', '9'),
(74, 1, '2018-07-21 11:21:06', 'chunk_create', 'modChunk', '10'),
(75, 1, '2018-07-21 11:21:41', 'chunk_create', 'modChunk', '11'),
(76, 1, '2018-07-21 11:22:19', 'chunk_create', 'modChunk', '12'),
(77, 1, '2018-07-21 11:23:07', 'chunk_create', 'modChunk', '13'),
(78, 1, '2018-07-21 11:24:16', 'chunk_create', 'modChunk', '14'),
(79, 1, '2018-07-21 11:24:24', 'resource_update', 'modResource', '1'),
(80, 1, '2018-07-21 11:24:34', 'resource_update', 'modResource', '1'),
(81, 1, '2018-07-21 11:26:37', 'chunk_create', 'modChunk', '15'),
(82, 1, '2018-07-21 11:27:44', 'chunk_create', 'modChunk', '16'),
(83, 1, '2018-07-21 11:28:01', 'template_update', 'modTemplate', '1'),
(84, 1, '2018-07-21 11:28:01', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(85, 1, '2018-07-21 11:33:23', 'chunk_update', 'modChunk', '3'),
(86, 1, '2018-07-21 11:33:23', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(87, 1, '2018-07-21 11:34:23', 'chunk_update', 'modChunk', '3'),
(88, 1, '2018-07-21 11:34:23', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(89, 1, '2018-07-21 11:40:10', 'object_create', 'cgGroup', '1'),
(90, 1, '2018-07-21 11:40:52', 'object_create', 'cgSetting', '1'),
(91, 1, '2018-07-21 11:41:04', 'object_update', 'cgSetting', '1'),
(92, 1, '2018-07-21 11:41:10', 'object_update', 'cgSetting', '1'),
(93, 1, '2018-07-21 11:42:00', 'chunk_update', 'modChunk', '2'),
(94, 1, '2018-07-21 11:42:00', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(95, 1, '2018-07-21 11:43:29', 'object_update', 'cgSetting', '1'),
(96, 1, '2018-07-21 11:44:39', 'object_create', 'cgSetting', '2'),
(97, 1, '2018-07-21 11:44:54', 'object_update', 'cgSetting', '1'),
(98, 1, '2018-07-21 11:45:45', 'chunk_update', 'modChunk', '2'),
(99, 1, '2018-07-21 11:45:45', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(100, 1, '2018-07-21 11:47:14', 'chunk_update', 'modChunk', '15'),
(101, 1, '2018-07-21 11:47:14', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(102, 1, '2018-07-21 11:47:51', 'snippet_create', 'modSnippet', '33'),
(103, 1, '2018-07-21 11:51:02', 'chunk_update', 'modChunk', '2'),
(104, 1, '2018-07-21 11:51:02', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(105, 1, '2018-07-21 11:51:16', 'chunk_update', 'modChunk', '2'),
(106, 1, '2018-07-21 11:51:16', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(107, 1, '2018-07-21 11:51:44', 'chunk_update', 'modChunk', '2'),
(108, 1, '2018-07-21 11:51:44', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(109, 1, '2018-07-21 11:52:28', 'object_create', 'cgSetting', '3'),
(110, 1, '2018-07-21 11:52:55', 'object_create', 'cgSetting', '4'),
(111, 1, '2018-07-21 11:53:04', 'object_update', 'cgSetting', '3'),
(112, 1, '2018-07-21 11:53:25', 'object_create', 'cgSetting', '5'),
(113, 1, '2018-07-21 11:53:46', 'object_create', 'cgSetting', '6'),
(114, 1, '2018-07-21 11:55:23', 'chunk_update', 'modChunk', '15'),
(115, 1, '2018-07-21 11:55:23', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(116, 1, '2018-07-21 11:58:22', 'chunk_update', 'modChunk', '15'),
(117, 1, '2018-07-21 11:58:22', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 15 Default'),
(118, 1, '2018-07-21 11:58:40', 'chunk_update', 'modChunk', '16'),
(119, 1, '2018-07-21 11:58:40', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 16 Default'),
(120, 1, '2018-07-21 12:00:42', 'template_update', 'modTemplate', '1'),
(121, 1, '2018-07-21 12:00:42', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(122, 1, '2018-07-21 12:05:32', 'resource_create', 'modDocument', '23'),
(123, 1, '2018-07-21 12:05:54', 'resource_create', 'modDocument', '24'),
(124, 1, '2018-07-21 12:06:04', 'resource_update', 'modResource', '23'),
(125, 1, '2018-07-21 12:06:27', 'resource_create', 'modDocument', '25'),
(126, 1, '2018-07-21 12:25:33', 'chunk_update', 'modChunk', '4'),
(127, 1, '2018-07-21 12:25:33', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 4 Default'),
(128, 1, '2018-07-21 12:26:38', 'resource_create', 'modDocument', '26'),
(129, 1, '2018-07-21 12:26:47', 'resource_update', 'modResource', '26'),
(130, 1, '2018-07-21 12:26:50', 'resource_sort', '', 'unknown'),
(131, 1, '2018-07-21 12:26:57', 'resource_sort', '', 'unknown'),
(132, 1, '2018-07-21 12:27:01', 'resource_sort', '', 'unknown'),
(133, 1, '2018-07-21 12:27:03', 'resource_sort', '', 'unknown'),
(134, 1, '2018-07-21 12:27:20', 'chunk_update', 'modChunk', '4'),
(135, 1, '2018-07-21 12:27:20', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 4 Default'),
(136, 1, '2018-07-21 12:29:03', 'category_create', 'modCategory', '9'),
(137, 1, '2018-07-21 12:32:19', 'chunk_update', 'modChunk', '4'),
(138, 1, '2018-07-21 12:32:19', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 4 Default'),
(139, 1, '2018-07-21 12:32:36', 'chunk_create', 'modChunk', '17'),
(140, 1, '2018-07-21 12:38:45', 'chunk_update', 'modChunk', '17'),
(141, 1, '2018-07-21 12:38:45', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 17 Default'),
(142, 1, '2018-07-21 12:39:30', 'tv_create', 'modTemplateVar', '1'),
(143, 1, '2018-07-21 12:39:46', 'template_duplicate', 'modTemplate', '4'),
(144, 1, '2018-07-21 12:39:58', 'tv_update', 'modTemplateVar', '1'),
(145, 1, '2018-07-21 12:39:58', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 1 Default'),
(146, 1, '2018-07-21 12:40:23', 'template_update', 'modTemplate', '4'),
(147, 1, '2018-07-21 12:40:23', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 4 Default'),
(148, 1, '2018-07-21 12:40:36', 'resource_update', 'modResource', '23'),
(149, 1, '2018-07-21 12:40:49', 'resource_update', 'modResource', '24'),
(150, 1, '2018-07-21 12:40:58', 'resource_update', 'modResource', '25'),
(151, 1, '2018-07-21 12:41:18', 'template_update', 'modTemplate', '4'),
(152, 1, '2018-07-21 12:41:18', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 4 Default'),
(153, 1, '2018-07-21 12:41:29', 'template_update', 'modTemplate', '4'),
(154, 1, '2018-07-21 12:41:29', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 4 Default'),
(155, 1, '2018-07-21 12:42:12', 'source_duplicate', 'sources.modMediaSource', '3'),
(156, 1, '2018-07-21 12:42:19', 'source_update', 'sources.modMediaSource', '3'),
(157, 1, '2018-07-21 12:42:35', 'source_update', 'sources.modMediaSource', '3'),
(158, 1, '2018-07-21 12:42:51', 'tv_update', 'modTemplateVar', '1'),
(159, 1, '2018-07-21 12:42:51', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 1 Default'),
(160, 1, '2018-07-21 12:43:05', 'resource_update', 'modResource', '23'),
(161, 1, '2018-07-21 12:44:02', 'chunk_update', 'modChunk', '17'),
(162, 1, '2018-07-21 12:44:02', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 17 Default'),
(163, 1, '2018-07-21 12:44:09', 'chunk_update', 'modChunk', '17'),
(164, 1, '2018-07-21 12:44:09', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 17 Default'),
(165, 1, '2018-07-21 12:44:20', 'chunk_update', 'modChunk', '4'),
(166, 1, '2018-07-21 12:44:20', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 4 Default'),
(167, 1, '2018-07-21 12:44:36', 'clear_cache', '', 'mgr'),
(168, 1, '2018-07-21 12:44:40', 'clear_cache', '', 'mgr'),
(169, 1, '2018-07-21 12:45:16', 'resource_update', 'modResource', '23'),
(170, 1, '2018-07-21 12:45:49', 'chunk_update', 'modChunk', '4'),
(171, 1, '2018-07-21 12:45:49', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 4 Default'),
(172, 1, '2018-07-21 12:46:54', 'chunk_update', 'modChunk', '4'),
(173, 1, '2018-07-21 12:46:54', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 4 Default'),
(174, 1, '2018-07-21 12:47:27', 'chunk_update', 'modChunk', '4'),
(175, 1, '2018-07-21 12:47:27', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 4 Default'),
(176, 1, '2018-07-21 12:48:57', 'resource_sort', '', 'unknown'),
(177, 1, '2018-07-21 12:49:01', 'resource_sort', '', 'unknown'),
(178, 1, '2018-07-21 12:49:14', 'resource_sort', '', 'unknown'),
(179, 1, '2018-07-21 12:49:16', 'resource_sort', '', 'unknown'),
(180, 1, '2018-07-21 12:49:23', 'resource_update', 'modResource', '23'),
(181, 1, '2018-07-21 12:49:43', 'resource_update', 'modResource', '24'),
(182, 1, '2018-07-21 12:50:10', 'resource_update', 'modResource', '25'),
(183, 1, '2018-07-21 12:50:18', 'resource_update', 'modResource', '25'),
(184, 1, '2018-07-21 12:50:27', 'resource_update', 'modResource', '23'),
(185, 1, '2018-07-21 12:51:52', 'resource_update', 'modResource', '23'),
(186, 1, '2018-07-21 12:51:56', 'resource_update', 'modResource', '23'),
(187, 1, '2018-07-21 12:52:05', 'resource_update', 'modResource', '24'),
(188, 1, '2018-07-21 12:52:09', 'resource_update', 'modResource', '25'),
(189, 1, '2018-07-21 12:52:33', 'resource_update', 'modResource', '23'),
(190, 1, '2018-07-21 12:52:47', 'resource_update', 'modResource', '25'),
(191, 1, '2018-07-21 12:52:53', 'resource_update', 'modResource', '24'),
(192, 1, '2018-07-21 12:53:33', 'resource_update', 'modResource', '24'),
(193, 1, '2018-07-21 12:53:37', 'resource_update', 'modResource', '24'),
(194, 1, '2018-07-21 12:53:44', 'resource_update', 'modResource', '23'),
(195, 1, '2018-07-21 12:53:54', 'resource_update', 'modResource', '23'),
(196, 1, '2018-07-21 12:53:59', 'clear_cache', '', 'mgr'),
(197, 1, '2018-07-21 12:54:25', 'resource_update', 'modResource', '23'),
(198, 1, '2018-07-21 12:54:34', 'resource_update', 'modResource', '24'),
(199, 1, '2018-07-21 12:56:18', 'resource_update', 'modResource', '24'),
(200, 1, '2018-07-21 12:56:29', 'resource_update', 'modResource', '24'),
(201, 1, '2018-07-21 12:56:36', 'resource_update', 'modResource', '24'),
(202, 1, '2018-07-21 12:56:50', 'resource_update', 'modResource', '24'),
(203, 1, '2018-07-21 12:57:04', 'resource_update', 'modResource', '24'),
(204, 1, '2018-07-21 12:57:11', 'resource_update', 'modResource', '24'),
(205, 1, '2018-07-21 13:01:30', 'resource_update', 'modResource', '23'),
(206, 1, '2018-07-21 13:02:10', 'resource_update', 'modResource', '25'),
(207, 1, '2018-07-21 13:02:25', 'resource_update', 'modResource', '25'),
(208, 1, '2018-07-21 13:02:32', 'resource_update', 'modResource', '25'),
(209, 1, '2018-07-21 13:02:45', 'resource_update', 'modResource', '25'),
(210, 1, '2018-07-21 13:02:49', 'resource_update', 'modResource', '25'),
(211, 1, '2018-07-21 13:03:03', 'resource_update', 'modResource', '24'),
(212, 1, '2018-07-21 13:03:07', 'resource_update', 'modResource', '24'),
(213, 1, '2018-07-21 13:03:15', 'resource_update', 'modResource', '23'),
(214, 1, '2018-07-21 13:03:19', 'resource_update', 'modResource', '23'),
(215, 1, '2018-07-21 13:08:11', 'resource_create', 'modDocument', '27'),
(216, 1, '2018-07-21 13:09:30', 'category_create', 'modCategory', '10'),
(217, 1, '2018-07-21 13:10:54', 'template_duplicate', 'modTemplate', '5'),
(218, 1, '2018-07-21 13:11:05', 'template_update', 'modTemplate', '5'),
(219, 1, '2018-07-21 13:11:05', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(220, 1, '2018-07-21 13:11:15', 'template_update', 'modTemplate', '5'),
(221, 1, '2018-07-21 13:11:15', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(222, 1, '2018-07-21 13:18:44', 'chunk_update', 'modChunk', '5'),
(223, 1, '2018-07-21 13:18:44', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(224, 1, '2018-07-21 13:19:50', 'source_duplicate', 'sources.modMediaSource', '4'),
(225, 1, '2018-07-21 13:19:56', 'source_update', 'sources.modMediaSource', '4'),
(226, 1, '2018-07-21 13:20:09', 'source_update', 'sources.modMediaSource', '4'),
(227, 1, '2018-07-21 13:21:32', 'tv_create', 'modTemplateVar', '2'),
(228, 1, '2018-07-21 13:25:09', 'chunk_create', 'modChunk', '18'),
(229, 1, '2018-07-21 13:27:11', 'tv_create', 'modTemplateVar', '3'),
(230, 1, '2018-07-21 13:27:33', 'resource_update', 'modResource', '1'),
(231, 1, '2018-07-21 13:28:28', 'resource_create', 'modDocument', '28'),
(232, 1, '2018-07-21 13:28:57', 'template_update', 'modTemplate', '5'),
(233, 1, '2018-07-21 13:28:57', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 5 Default'),
(234, 1, '2018-07-21 13:29:14', 'source_update', 'sources.modMediaSource', '4'),
(235, 1, '2018-07-21 13:29:49', 'resource_update', 'modResource', '28'),
(236, 1, '2018-07-21 13:33:20', 'chunk_update', 'modChunk', '18'),
(237, 1, '2018-07-21 13:33:20', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 18 Default'),
(238, 1, '2018-07-21 13:33:31', 'chunk_update', 'modChunk', '18'),
(239, 1, '2018-07-21 13:33:31', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 18 Default'),
(240, 1, '2018-07-21 13:34:53', 'chunk_update', 'modChunk', '5'),
(241, 1, '2018-07-21 13:34:53', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(242, 1, '2018-07-21 13:35:02', 'chunk_update', 'modChunk', '18'),
(243, 1, '2018-07-21 13:35:02', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 18 Default'),
(244, 1, '2018-07-21 13:35:48', 'duplicate_resource', 'modDocument', '29'),
(245, 1, '2018-07-21 13:36:00', 'duplicate_resource', 'modDocument', '30'),
(246, 1, '2018-07-21 13:36:28', 'delete_resource', 'modDocument', '30'),
(247, 1, '2018-07-21 13:36:31', 'empty_trash', 'modResource', '30,31,32'),
(248, 1, '2018-07-21 13:36:57', 'duplicate_resource', 'modDocument', '33'),
(249, 1, '2018-07-21 13:37:10', 'duplicate_resource', 'modDocument', '34'),
(250, 1, '2018-07-21 13:37:20', 'duplicate_resource', 'modDocument', '35'),
(251, 1, '2018-07-21 13:37:30', 'duplicate_resource', 'modDocument', '36'),
(252, 1, '2018-07-21 13:37:40', 'duplicate_resource', 'modDocument', '37'),
(253, 1, '2018-07-21 13:37:55', 'duplicate_resource', 'modDocument', '38'),
(254, 1, '2018-07-21 13:38:04', 'duplicate_resource', 'modDocument', '39'),
(255, 1, '2018-07-21 13:40:18', 'resource_update', 'modResource', '34'),
(256, 1, '2018-07-21 13:40:47', 'resource_update', 'modResource', '29'),
(257, 1, '2018-07-21 13:41:00', 'resource_update', 'modResource', '28'),
(258, 1, '2018-07-21 13:41:17', 'resource_update', 'modResource', '33'),
(259, 1, '2018-07-21 13:41:22', 'resource_update', 'modResource', '33'),
(260, 1, '2018-07-21 13:41:54', 'resource_update', 'modResource', '34'),
(261, 1, '2018-07-21 13:42:20', 'resource_update', 'modResource', '35'),
(262, 1, '2018-07-21 13:42:32', 'resource_update', 'modResource', '36'),
(263, 1, '2018-07-21 13:42:39', 'resource_update', 'modResource', '36'),
(264, 1, '2018-07-21 13:42:51', 'resource_update', 'modResource', '37'),
(265, 1, '2018-07-21 13:42:57', 'resource_update', 'modResource', '37'),
(266, 1, '2018-07-21 13:43:20', 'resource_update', 'modResource', '38'),
(267, 1, '2018-07-21 13:43:37', 'resource_update', 'modResource', '39'),
(268, 1, '2018-07-21 14:42:53', 'template_update', 'modTemplate', '2'),
(269, 1, '2018-07-21 14:42:53', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 2 Default'),
(270, 1, '2018-07-21 14:51:00', 'template_update', 'modTemplate', '2'),
(271, 1, '2018-07-21 14:51:00', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 2 Default'),
(272, 1, '2018-07-21 14:51:46', 'resource_create', 'modDocument', '40'),
(273, 1, '2018-07-21 18:16:51', 'resource_update', 'modResource', '12'),
(274, 1, '2018-07-21 18:16:59', 'resource_update', 'modResource', '13'),
(275, 1, '2018-07-21 18:17:16', 'resource_update', 'modResource', '11'),
(276, 1, '2018-07-21 18:17:40', 'resource_update', 'modResource', '14'),
(277, 1, '2018-07-21 18:17:51', 'resource_update', 'modResource', '15'),
(278, 1, '2018-07-21 18:18:00', 'resource_update', 'modResource', '21'),
(279, 1, '2018-07-21 18:18:19', 'resource_update', 'modResource', '18'),
(280, 1, '2018-07-21 18:18:28', 'resource_update', 'modResource', '22'),
(281, 1, '2018-07-21 18:18:54', 'resource_update', 'modResource', '20'),
(282, 1, '2018-07-21 18:19:19', 'resource_update', 'modResource', '16'),
(283, 1, '2018-07-21 18:20:30', 'resource_update', 'modResource', '5'),
(284, 1, '2018-07-21 18:20:45', 'resource_update', 'modResource', '5'),
(285, 1, '2018-07-21 18:22:43', 'template_update', 'modTemplate', '3'),
(286, 1, '2018-07-21 18:22:43', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(287, 1, '2018-07-21 18:29:44', 'template_update', 'modTemplate', '3'),
(288, 1, '2018-07-21 18:29:44', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(289, 1, '2018-07-21 18:30:15', 'resource_update', 'modResource', '6'),
(290, 1, '2018-07-21 18:30:25', 'resource_update', 'modResource', '7'),
(291, 1, '2018-07-21 18:30:34', 'resource_update', 'modResource', '8'),
(292, 1, '2018-07-21 18:30:58', 'resource_update', 'modResource', '8'),
(293, 1, '2018-07-21 18:31:08', 'resource_update', 'modResource', '7'),
(294, 1, '2018-07-21 18:31:16', 'resource_update', 'modResource', '6'),
(295, 1, '2018-07-21 18:31:24', 'resource_update', 'modResource', '5'),
(296, 1, '2018-07-21 18:32:29', 'template_update', 'modTemplate', '3'),
(297, 1, '2018-07-21 18:32:29', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(298, 1, '2018-07-21 18:32:38', 'template_update', 'modTemplate', '3'),
(299, 1, '2018-07-21 18:32:39', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(300, 1, '2018-07-21 18:38:48', 'template_update', 'modTemplate', '2'),
(301, 1, '2018-07-21 18:38:48', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 2 Default'),
(302, 1, '2018-07-21 18:39:12', 'template_update', 'modTemplate', '2'),
(303, 1, '2018-07-21 18:39:12', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 2 Default'),
(304, 1, '2018-07-21 18:40:37', 'template_update', 'modTemplate', '2'),
(305, 1, '2018-07-21 18:40:37', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 2 Default'),
(306, 1, '2018-07-21 18:41:10', 'chunk_create', 'modChunk', '19'),
(307, 1, '2018-07-21 18:45:00', 'chunk_create', 'modChunk', '20'),
(308, 1, '2018-07-21 18:47:18', 'chunk_update', 'modChunk', '20'),
(309, 1, '2018-07-21 18:47:19', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 20 Default'),
(310, 1, '2018-07-21 18:48:41', 'chunk_update', 'modChunk', '19'),
(311, 1, '2018-07-21 18:48:41', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 19 Default'),
(312, 1, '2018-07-21 18:48:46', 'chunk_update', 'modChunk', '19'),
(313, 1, '2018-07-21 18:48:46', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 19 Default'),
(314, 1, '2018-07-21 18:50:08', 'resource_update', 'modResource', '17'),
(315, 1, '2018-07-21 18:51:03', 'resource_update', 'modResource', '19'),
(316, 1, '2018-07-21 18:52:29', 'template_update', 'modTemplate', '2'),
(317, 1, '2018-07-21 18:52:29', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 2 Default'),
(318, 1, '2018-07-21 18:52:33', 'template_update', 'modTemplate', '2'),
(319, 1, '2018-07-21 18:52:33', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 2 Default'),
(320, 1, '2018-07-21 18:54:18', 'template_update', 'modTemplate', '3'),
(321, 1, '2018-07-21 18:54:18', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(322, 1, '2018-07-21 18:55:39', 'chunk_create', 'modChunk', '21'),
(323, 1, '2018-07-21 19:00:08', 'chunk_create', 'modChunk', '22'),
(324, 1, '2018-07-21 19:00:17', 'chunk_update', 'modChunk', '21'),
(325, 1, '2018-07-21 19:00:17', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 21 Default'),
(326, 1, '2018-07-21 19:01:14', 'tv_create', 'modTemplateVar', '4'),
(327, 1, '2018-07-21 19:01:58', 'source_duplicate', 'sources.modMediaSource', '5'),
(328, 1, '2018-07-21 19:02:07', 'source_update', 'sources.modMediaSource', '5'),
(329, 1, '2018-07-21 19:03:23', 'source_update', 'sources.modMediaSource', '5'),
(330, 1, '2018-07-21 19:03:46', 'tv_update', 'modTemplateVar', '4'),
(331, 1, '2018-07-21 19:03:46', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 4 Default'),
(332, 1, '2018-07-21 19:05:25', 'template_update', 'modTemplate', '3'),
(333, 1, '2018-07-21 19:05:25', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 3 Default'),
(334, 1, '2018-07-21 19:06:07', 'resource_update', 'modResource', '19'),
(335, 1, '2018-07-21 19:08:10', 'category_create', 'modCategory', '11'),
(336, 1, '2018-07-21 19:09:08', 'tv_update', 'modTemplateVar', '3'),
(337, 1, '2018-07-21 19:09:08', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 3 Default'),
(338, 1, '2018-07-21 19:21:53', 'tv_create', 'modTemplateVar', '5'),
(339, 1, '2018-07-21 19:25:41', 'chunk_create', 'modChunk', '23'),
(340, 1, '2018-07-21 19:27:00', 'tv_create', 'modTemplateVar', '6'),
(341, 1, '2018-07-21 19:27:11', 'tv_update', 'modTemplateVar', '5'),
(342, 1, '2018-07-21 19:27:11', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 5 Default'),
(343, 1, '2018-07-21 19:32:11', 'chunk_update', 'modChunk', '6'),
(344, 1, '2018-07-21 19:32:11', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(345, 1, '2018-07-21 19:32:19', 'chunk_update', 'modChunk', '6'),
(346, 1, '2018-07-21 19:32:19', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(347, 1, '2018-07-21 19:33:12', 'chunk_update', 'modChunk', '6'),
(348, 1, '2018-07-21 19:33:13', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(349, 1, '2018-07-21 19:36:16', 'file_upload', '', '/mnt/sites/chistota-24/assets/site/img/services/'),
(350, 1, '2018-07-21 19:36:38', 'resource_update', 'modResource', '11'),
(351, 1, '2018-07-21 19:37:58', 'chunk_update', 'modChunk', '23'),
(352, 1, '2018-07-21 19:37:58', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 23 Default'),
(353, 1, '2018-07-21 19:38:09', 'chunk_update', 'modChunk', '23'),
(354, 1, '2018-07-21 19:38:09', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 23 Default'),
(355, 1, '2018-07-21 19:38:35', 'chunk_update', 'modChunk', '6'),
(356, 1, '2018-07-21 19:38:35', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(357, 1, '2018-07-21 19:39:18', 'chunk_update', 'modChunk', '23'),
(358, 1, '2018-07-21 19:39:18', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 23 Default'),
(359, 1, '2018-07-21 19:41:19', 'file_upload', '', '/mnt/sites/chistota-24/assets/site/img/services/'),
(360, 1, '2018-07-21 19:41:27', 'resource_update', 'modResource', '14'),
(361, 1, '2018-07-21 19:41:30', 'resource_update', 'modResource', '14'),
(362, 1, '2018-07-21 19:43:21', 'file_upload', '', '/mnt/sites/chistota-24/assets/site/img/services/'),
(363, 1, '2018-07-21 19:44:09', 'file_upload', '', '/mnt/sites/chistota-24/assets/site/img/services/'),
(364, 1, '2018-07-21 19:44:19', 'resource_update', 'modResource', '16'),
(365, 1, '2018-07-21 19:44:32', 'resource_update', 'modResource', '11'),
(366, 1, '2018-07-21 19:45:59', 'resource_update', 'modResource', '14'),
(367, 1, '2018-07-21 19:47:38', 'file_rename', '', '/mnt/sites/chistota-24/assets/site/img/services/Генеральная уборка квартиры.jpg'),
(368, 1, '2018-07-21 19:47:41', 'resource_update', 'modResource', '14'),
(369, 1, '2018-07-21 19:50:11', 'category_create', 'modCategory', '12'),
(370, 1, '2018-07-21 19:50:48', 'chunk_create', 'modChunk', '24'),
(371, 1, '2018-07-21 19:51:08', 'chunk_update', 'modChunk', '24'),
(372, 1, '2018-07-21 19:51:08', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 24 Default'),
(373, 1, '2018-07-21 19:51:12', 'chunk_update', 'modChunk', '24'),
(374, 1, '2018-07-21 19:51:12', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 24 Default'),
(375, 1, '2018-07-21 19:53:10', 'chunk_update', 'modChunk', '6'),
(376, 1, '2018-07-21 19:53:10', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(377, 1, '2018-07-21 19:54:18', 'tv_create', 'modTemplateVar', '7'),
(378, 1, '2018-07-21 19:54:51', 'tv_update', 'modTemplateVar', '7'),
(379, 1, '2018-07-21 19:54:51', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(380, 1, '2018-07-21 19:55:41', 'tv_update', 'modTemplateVar', '7'),
(381, 1, '2018-07-21 19:55:41', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(382, 1, '2018-07-21 19:55:58', 'resource_update', 'modResource', '21'),
(383, 1, '2018-07-21 19:56:39', 'chunk_update', 'modChunk', '6'),
(384, 1, '2018-07-21 19:56:39', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(385, 1, '2018-07-21 19:57:36', 'chunk_update', 'modChunk', '6'),
(386, 1, '2018-07-21 19:57:36', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(387, 1, '2018-07-21 19:58:32', 'tv_update', 'modTemplateVar', '5'),
(388, 1, '2018-07-21 19:58:32', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 5 Default'),
(389, 1, '2018-07-21 19:59:10', 'tv_update', 'modTemplateVar', '5'),
(390, 1, '2018-07-21 19:59:10', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 5 Default'),
(391, 1, '2018-07-21 19:59:38', 'resource_update', 'modResource', '1'),
(392, 1, '2018-07-21 19:59:55', 'tv_update', 'modTemplateVar', '5'),
(393, 1, '2018-07-21 19:59:55', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 5 Default'),
(394, 1, '2018-07-21 20:00:21', 'tv_update', 'modTemplateVar', '5'),
(395, 1, '2018-07-21 20:00:21', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 5 Default'),
(396, 1, '2018-07-21 20:00:26', 'tv_update', 'modTemplateVar', '5'),
(397, 1, '2018-07-21 20:00:26', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 5 Default'),
(398, 1, '2018-07-21 20:01:13', 'tv_update', 'modTemplateVar', '7'),
(399, 1, '2018-07-21 20:01:13', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(400, 1, '2018-07-21 20:01:22', 'resource_update', 'modResource', '13'),
(401, 1, '2018-07-21 20:03:10', 'chunk_update', 'modChunk', '6'),
(402, 1, '2018-07-21 20:03:10', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(403, 1, '2018-07-21 20:03:51', 'chunk_update', 'modChunk', '6'),
(404, 1, '2018-07-21 20:03:51', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(405, 1, '2018-07-21 20:04:12', 'chunk_update', 'modChunk', '6'),
(406, 1, '2018-07-21 20:04:12', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(407, 1, '2018-07-21 20:04:25', 'chunk_update', 'modChunk', '6'),
(408, 1, '2018-07-21 20:04:25', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(409, 1, '2018-07-21 20:04:40', 'chunk_update', 'modChunk', '6'),
(410, 1, '2018-07-21 20:04:40', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(411, 1, '2018-07-21 20:04:52', 'chunk_update', 'modChunk', '6'),
(412, 1, '2018-07-21 20:04:52', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(413, 1, '2018-07-21 20:04:58', 'chunk_update', 'modChunk', '6'),
(414, 1, '2018-07-21 20:04:58', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(415, 1, '2018-07-21 20:05:12', 'chunk_update', 'modChunk', '6'),
(416, 1, '2018-07-21 20:05:12', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(417, 1, '2018-07-21 20:05:31', 'tv_update', 'modTemplateVar', '7'),
(418, 1, '2018-07-21 20:05:31', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(419, 1, '2018-07-21 20:05:40', 'tv_update', 'modTemplateVar', '7'),
(420, 1, '2018-07-21 20:05:40', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(421, 1, '2018-07-21 20:06:02', 'tv_update', 'modTemplateVar', '7'),
(422, 1, '2018-07-21 20:06:02', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(423, 1, '2018-07-21 20:06:27', 'chunk_update', 'modChunk', '6'),
(424, 1, '2018-07-21 20:06:27', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(425, 1, '2018-07-21 20:06:33', 'chunk_update', 'modChunk', '6'),
(426, 1, '2018-07-21 20:06:33', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(427, 1, '2018-07-21 20:07:30', 'clear_cache', '', 'mgr'),
(428, 1, '2018-07-21 20:09:09', 'resource_update', 'modResource', '17'),
(429, 1, '2018-07-21 20:09:13', 'resource_update', 'modResource', '17'),
(430, 1, '2018-07-21 20:10:52', 'chunk_update', 'modChunk', '6'),
(431, 1, '2018-07-21 20:10:52', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(432, 1, '2018-07-21 20:11:09', 'resource_update', 'modResource', '12'),
(433, 1, '2018-07-21 20:11:24', 'chunk_update', 'modChunk', '6'),
(434, 1, '2018-07-21 20:11:24', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(435, 1, '2018-07-21 20:11:37', 'chunk_update', 'modChunk', '6'),
(436, 1, '2018-07-21 20:11:37', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(437, 1, '2018-07-21 20:12:08', 'tv_update', 'modTemplateVar', '7'),
(438, 1, '2018-07-21 20:12:08', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(439, 1, '2018-07-21 20:12:32', 'chunk_update', 'modChunk', '6'),
(440, 1, '2018-07-21 20:12:33', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(441, 1, '2018-07-21 20:12:40', 'chunk_update', 'modChunk', '6'),
(442, 1, '2018-07-21 20:12:40', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(443, 1, '2018-07-21 20:12:53', 'chunk_update', 'modChunk', '6'),
(444, 1, '2018-07-21 20:12:53', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(445, 1, '2018-07-21 20:13:07', 'tv_update', 'modTemplateVar', '7'),
(446, 1, '2018-07-21 20:13:07', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(447, 1, '2018-07-21 20:16:05', 'tv_update', 'modTemplateVar', '7'),
(448, 1, '2018-07-21 20:16:05', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(449, 1, '2018-07-21 20:16:19', 'chunk_update', 'modChunk', '6'),
(450, 1, '2018-07-21 20:16:19', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(451, 1, '2018-07-21 20:16:26', 'chunk_update', 'modChunk', '6'),
(452, 1, '2018-07-21 20:16:26', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(453, 1, '2018-07-21 20:16:34', 'chunk_update', 'modChunk', '6'),
(454, 1, '2018-07-21 20:16:34', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(455, 1, '2018-07-21 20:16:40', 'chunk_update', 'modChunk', '6'),
(456, 1, '2018-07-21 20:16:40', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(457, 1, '2018-07-21 20:17:59', 'chunk_update', 'modChunk', '6'),
(458, 1, '2018-07-21 20:17:59', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(459, 1, '2018-07-21 20:18:07', 'chunk_update', 'modChunk', '6'),
(460, 1, '2018-07-21 20:18:07', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(461, 1, '2018-07-21 20:18:25', 'chunk_update', 'modChunk', '6'),
(462, 1, '2018-07-21 20:18:25', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(463, 1, '2018-07-21 20:18:31', 'chunk_update', 'modChunk', '6'),
(464, 1, '2018-07-21 20:18:31', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(465, 1, '2018-07-21 20:18:45', 'tv_update', 'modTemplateVar', '7'),
(466, 1, '2018-07-21 20:18:45', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(467, 1, '2018-07-21 20:18:49', 'tv_update', 'modTemplateVar', '7'),
(468, 1, '2018-07-21 20:18:49', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(469, 1, '2018-07-21 20:19:13', 'tv_update', 'modTemplateVar', '7'),
(470, 1, '2018-07-21 20:19:13', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(471, 1, '2018-07-21 20:19:23', 'resource_update', 'modResource', '17'),
(472, 1, '2018-07-21 20:19:32', 'resource_update', 'modResource', '17'),
(473, 1, '2018-07-21 20:19:36', 'resource_update', 'modResource', '17'),
(474, 1, '2018-07-21 20:19:59', 'tv_update', 'modTemplateVar', '7'),
(475, 1, '2018-07-21 20:19:59', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(476, 1, '2018-07-21 20:20:22', 'chunk_update', 'modChunk', '6'),
(477, 1, '2018-07-21 20:20:22', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(478, 1, '2018-07-21 20:20:25', 'clear_cache', '', 'mgr'),
(479, 1, '2018-07-21 20:20:37', 'tv_update', 'modTemplateVar', '7'),
(480, 1, '2018-07-21 20:20:37', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(481, 1, '2018-07-21 20:20:42', 'resource_update', 'modResource', '13'),
(482, 1, '2018-07-21 20:20:51', 'resource_update', 'modResource', '15'),
(483, 1, '2018-07-21 20:20:54', 'resource_update', 'modResource', '20'),
(484, 1, '2018-07-21 20:21:10', 'resource_update', 'modResource', '17'),
(485, 1, '2018-07-21 20:21:15', 'resource_update', 'modResource', '17'),
(486, 1, '2018-07-21 20:22:20', 'chunk_update', 'modChunk', '6'),
(487, 1, '2018-07-21 20:22:20', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(488, 1, '2018-07-21 20:26:32', 'tv_update', 'modTemplateVar', '7'),
(489, 1, '2018-07-21 20:26:32', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(490, 1, '2018-07-21 20:26:42', 'tv_update', 'modTemplateVar', '7'),
(491, 1, '2018-07-21 20:26:42', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(492, 1, '2018-07-21 20:26:50', 'tv_update', 'modTemplateVar', '7'),
(493, 1, '2018-07-21 20:26:50', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(494, 1, '2018-07-21 20:26:56', 'tv_update', 'modTemplateVar', '7'),
(495, 1, '2018-07-21 20:26:56', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(496, 1, '2018-07-21 20:27:06', 'resource_update', 'modResource', '11'),
(497, 1, '2018-07-21 20:27:34', 'tv_update', 'modTemplateVar', '7'),
(498, 1, '2018-07-21 20:27:34', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(499, 1, '2018-07-21 20:28:36', 'chunk_update', 'modChunk', '6'),
(500, 1, '2018-07-21 20:28:36', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(501, 1, '2018-07-21 20:28:40', 'clear_cache', '', 'mgr'),
(502, 1, '2018-07-21 20:28:53', 'chunk_update', 'modChunk', '6'),
(503, 1, '2018-07-21 20:28:53', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(504, 1, '2018-07-21 20:28:55', 'chunk_update', 'modChunk', '6'),
(505, 1, '2018-07-21 20:28:55', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(506, 1, '2018-07-21 20:29:00', 'tv_update', 'modTemplateVar', '7'),
(507, 1, '2018-07-21 20:29:00', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(508, 1, '2018-07-21 20:31:13', 'chunk_update', 'modChunk', '6'),
(509, 1, '2018-07-21 20:31:13', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(510, 1, '2018-07-21 20:31:22', 'chunk_update', 'modChunk', '6'),
(511, 1, '2018-07-21 20:31:22', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(512, 1, '2018-07-21 20:31:36', 'resource_update', 'modResource', '17'),
(513, 1, '2018-07-21 20:31:41', 'resource_update', 'modResource', '17'),
(514, 1, '2018-07-21 20:32:19', 'chunk_update', 'modChunk', '6'),
(515, 1, '2018-07-21 20:32:19', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(516, 1, '2018-07-21 20:32:41', 'chunk_update', 'modChunk', '6'),
(517, 1, '2018-07-21 20:32:41', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(518, 1, '2018-07-21 20:34:47', 'clear_cache', '', 'mgr'),
(519, 1, '2018-07-21 20:35:06', 'chunk_update', 'modChunk', '6'),
(520, 1, '2018-07-21 20:35:06', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(521, 1, '2018-07-21 20:35:27', 'chunk_update', 'modChunk', '6'),
(522, 1, '2018-07-21 20:35:27', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(523, 1, '2018-07-21 20:39:09', 'chunk_update', 'modChunk', '6'),
(524, 1, '2018-07-21 20:39:09', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(525, 1, '2018-07-21 20:40:33', 'chunk_update', 'modChunk', '6'),
(526, 1, '2018-07-21 20:40:34', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(527, 1, '2018-07-21 20:40:44', 'chunk_update', 'modChunk', '6'),
(528, 1, '2018-07-21 20:40:44', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(529, 1, '2018-07-21 20:42:06', 'chunk_update', 'modChunk', '6'),
(530, 1, '2018-07-21 20:42:06', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(531, 1, '2018-07-21 20:42:16', 'chunk_update', 'modChunk', '6'),
(532, 1, '2018-07-21 20:42:16', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(533, 1, '2018-07-21 20:48:02', 'chunk_update', 'modChunk', '6'),
(534, 1, '2018-07-21 20:48:02', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(535, 1, '2018-07-21 20:48:24', 'chunk_update', 'modChunk', '6'),
(536, 1, '2018-07-21 20:48:24', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(537, 1, '2018-07-21 20:48:36', 'chunk_update', 'modChunk', '6'),
(538, 1, '2018-07-21 20:48:36', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(539, 1, '2018-07-21 20:51:19', 'chunk_update', 'modChunk', '6'),
(540, 1, '2018-07-21 20:51:19', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(541, 1, '2018-07-21 20:51:30', 'chunk_update', 'modChunk', '6'),
(542, 1, '2018-07-21 20:51:30', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(543, 1, '2018-07-21 20:51:49', 'chunk_update', 'modChunk', '6'),
(544, 1, '2018-07-21 20:51:49', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(545, 1, '2018-07-21 20:52:11', 'tv_update', 'modTemplateVar', '7'),
(546, 1, '2018-07-21 20:52:11', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(547, 1, '2018-07-21 20:53:08', 'chunk_update', 'modChunk', '6'),
(548, 1, '2018-07-21 20:53:08', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(549, 1, '2018-07-21 20:53:57', 'chunk_update', 'modChunk', '6'),
(550, 1, '2018-07-21 20:53:57', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(551, 1, '2018-07-21 20:55:05', 'chunk_update', 'modChunk', '6'),
(552, 1, '2018-07-21 20:55:05', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(553, 1, '2018-07-21 21:02:44', 'chunk_update', 'modChunk', '6'),
(554, 1, '2018-07-21 21:02:44', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(555, 1, '2018-07-21 21:03:39', 'tv_update', 'modTemplateVar', '7'),
(556, 1, '2018-07-21 21:03:39', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(557, 1, '2018-07-21 21:03:52', 'resource_update', 'modResource', '18'),
(558, 1, '2018-07-21 21:03:56', 'resource_update', 'modResource', '18'),
(559, 1, '2018-07-21 21:04:11', 'tv_update', 'modTemplateVar', '7'),
(560, 1, '2018-07-21 21:04:11', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(561, 1, '2018-07-21 21:04:21', 'chunk_update', 'modChunk', '6'),
(562, 1, '2018-07-21 21:04:21', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(563, 1, '2018-07-21 21:04:42', 'resource_update', 'modResource', '11'),
(564, 1, '2018-07-21 21:04:53', 'resource_update', 'modResource', '22'),
(565, 1, '2018-07-21 21:04:58', 'resource_update', 'modResource', '22'),
(566, 1, '2018-07-21 21:10:55', 'tv_update', 'modTemplateVar', '7'),
(567, 1, '2018-07-21 21:10:55', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(568, 1, '2018-07-21 21:11:21', 'tv_update', 'modTemplateVar', '7'),
(569, 1, '2018-07-21 21:11:21', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(570, 1, '2018-07-21 21:11:48', 'chunk_update', 'modChunk', '6'),
(571, 1, '2018-07-21 21:11:48', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(572, 1, '2018-07-21 21:12:51', 'chunk_update', 'modChunk', '6'),
(573, 1, '2018-07-21 21:12:51', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(574, 1, '2018-07-21 21:13:45', 'chunk_update', 'modChunk', '6'),
(575, 1, '2018-07-21 21:13:45', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(576, 1, '2018-07-21 21:14:32', 'chunk_update', 'modChunk', '6'),
(577, 1, '2018-07-21 21:14:32', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(578, 1, '2018-07-21 21:14:41', 'chunk_update', 'modChunk', '6'),
(579, 1, '2018-07-21 21:14:41', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(580, 1, '2018-07-21 21:14:48', 'chunk_update', 'modChunk', '6'),
(581, 1, '2018-07-21 21:14:48', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(582, 1, '2018-07-21 21:15:43', 'chunk_update', 'modChunk', '6'),
(583, 1, '2018-07-21 21:15:44', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(584, 1, '2018-07-21 21:15:52', 'chunk_update', 'modChunk', '6'),
(585, 1, '2018-07-21 21:15:52', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(586, 1, '2018-07-21 21:16:03', 'resource_update', 'modResource', '11'),
(587, 1, '2018-07-21 21:16:29', 'tv_update', 'modTemplateVar', '7'),
(588, 1, '2018-07-21 21:16:29', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 7 Default'),
(589, 1, '2018-07-21 21:16:58', 'resource_update', 'modResource', '12'),
(590, 1, '2018-07-21 21:20:26', 'chunk_update', 'modChunk', '6'),
(591, 1, '2018-07-21 21:20:26', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(592, 1, '2018-07-21 21:20:35', 'chunk_update', 'modChunk', '6'),
(593, 1, '2018-07-21 21:20:35', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(594, 1, '2018-07-21 21:22:18', 'chunk_update', 'modChunk', '6'),
(595, 1, '2018-07-21 21:22:18', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(596, 1, '2018-07-21 21:22:43', 'chunk_update', 'modChunk', '7'),
(597, 1, '2018-07-21 21:22:43', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(598, 1, '2018-07-21 21:24:04', 'chunk_update', 'modChunk', '7'),
(599, 1, '2018-07-21 21:24:04', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(600, 1, '2018-07-21 21:24:23', 'chunk_update', 'modChunk', '7'),
(601, 1, '2018-07-21 21:24:23', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(602, 1, '2018-07-21 21:24:39', 'chunk_update', 'modChunk', '7'),
(603, 1, '2018-07-21 21:24:39', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(604, 1, '2018-07-21 21:26:05', 'tv_create', 'modTemplateVar', '8'),
(605, 1, '2018-07-21 21:26:17', 'resource_update', 'modResource', '1'),
(606, 1, '2018-07-21 21:26:40', 'tv_update', 'modTemplateVar', '8'),
(607, 1, '2018-07-21 21:26:40', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 8 Default'),
(608, 1, '2018-07-21 21:43:49', 'tv_create', 'modTemplateVar', '9'),
(609, 1, '2018-07-21 21:48:05', 'chunk_update', 'modChunk', '7'),
(610, 1, '2018-07-21 21:48:06', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(611, 1, '2018-07-21 21:48:32', 'chunk_update', 'modChunk', '7'),
(612, 1, '2018-07-21 21:48:32', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(613, 1, '2018-07-21 21:51:38', 'chunk_update', 'modChunk', '24'),
(614, 1, '2018-07-21 21:51:38', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 24 Default'),
(615, 1, '2018-07-21 21:52:31', 'resource_update', 'modResource', '1'),
(616, 1, '2018-07-21 21:53:01', 'clear_cache', '', 'mgr'),
(617, 1, '2018-07-21 21:54:16', 'tv_update', 'modTemplateVar', '9'),
(618, 1, '2018-07-21 21:54:16', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 9 Default'),
(619, 1, '2018-07-21 21:56:49', 'tv_update', 'modTemplateVar', '9'),
(620, 1, '2018-07-21 21:56:49', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 9 Default'),
(621, 1, '2018-07-21 21:57:32', 'tv_update', 'modTemplateVar', '9'),
(622, 1, '2018-07-21 21:57:32', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 9 Default'),
(623, 1, '2018-07-21 21:59:43', 'tv_update', 'modTemplateVar', '9');
INSERT INTO `chisto_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(624, 1, '2018-07-21 21:59:43', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 9 Default'),
(625, 1, '2018-07-21 22:00:27', 'tv_update', 'modTemplateVar', '9'),
(626, 1, '2018-07-21 22:00:27', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 9 Default'),
(627, 1, '2018-07-21 22:02:02', 'resource_update', 'modResource', '1'),
(628, 1, '2018-07-21 22:04:15', 'tv_create', 'modTemplateVar', '10'),
(629, 1, '2018-07-21 22:05:07', 'chunk_update', 'modChunk', '7'),
(630, 1, '2018-07-21 22:05:08', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(631, 1, '2018-07-21 22:05:36', 'tv_update', 'modTemplateVar', '10'),
(632, 1, '2018-07-21 22:05:36', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 10 Default'),
(633, 1, '2018-07-21 22:05:44', 'resource_update', 'modResource', '1'),
(634, 1, '2018-07-21 22:11:09', 'tv_create', 'modTemplateVar', '11'),
(635, 1, '2018-07-21 22:12:34', 'chunk_create', 'modChunk', '25'),
(636, 1, '2018-07-21 22:14:19', 'chunk_update', 'modChunk', '7'),
(637, 1, '2018-07-21 22:14:19', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(638, 1, '2018-07-21 22:15:22', 'resource_update', 'modResource', '1'),
(639, 1, '2018-07-21 22:16:26', 'tv_update', 'modTemplateVar', '11'),
(640, 1, '2018-07-21 22:16:26', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 11 Default'),
(641, 1, '2018-07-21 22:20:55', 'chunk_update', 'modChunk', '7'),
(642, 1, '2018-07-21 22:20:55', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(643, 1, '2018-07-21 22:21:22', 'tv_duplicate', 'modTemplateVar', '12'),
(644, 1, '2018-07-21 22:22:54', 'tv_update', 'modTemplateVar', '12'),
(645, 1, '2018-07-21 22:22:54', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 12 Default'),
(646, 1, '2018-07-21 22:23:41', 'chunk_create', 'modChunk', '26'),
(647, 1, '2018-07-21 22:25:56', 'resource_update', 'modResource', '1'),
(648, 1, '2018-07-21 22:27:24', 'chunk_update', 'modChunk', '7'),
(649, 1, '2018-07-21 22:27:24', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(650, 1, '2018-07-21 22:33:54', 'file_update', '', '/mnt/sites/chistota-24/assets/site/css/style.css'),
(651, 1, '2018-07-21 22:37:43', 'resource_update', 'modResource', '40'),
(652, 1, '2018-07-21 22:37:55', 'delete_resource', 'modDocument', '40'),
(653, 1, '2018-07-21 22:38:14', 'empty_trash', 'modResource', '40'),
(654, 1, '2018-07-21 22:40:04', 'file_upload', '', '/mnt/sites/chistota-24/assets/site/img/services/'),
(655, 1, '2018-07-21 22:40:30', 'file_rename', '', '/mnt/sites/chistota-24/assets/site/img/services/Генеральная уборка коттеджей и домов.jpg'),
(656, 1, '2018-07-21 22:40:36', 'resource_update', 'modResource', '15'),
(657, 1, '2018-07-22 17:53:09', 'category_create', 'modCategory', '13'),
(658, 1, '2018-07-22 17:54:05', 'chunk_update', 'modChunk', '8'),
(659, 1, '2018-07-22 17:54:05', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(660, 1, '2018-07-22 17:54:25', 'tv_create', 'modTemplateVar', '13'),
(661, 1, '2018-07-22 17:54:40', 'resource_update', 'modResource', '1'),
(662, 1, '2018-07-22 17:55:55', 'tv_update', 'modTemplateVar', '13'),
(663, 1, '2018-07-22 17:55:55', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 13 Default'),
(664, 1, '2018-07-22 17:58:28', 'chunk_update', 'modChunk', '8'),
(665, 1, '2018-07-22 17:58:29', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(666, 1, '2018-07-22 18:03:24', 'chunk_update', 'modChunk', '8'),
(667, 1, '2018-07-22 18:03:24', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(668, 1, '2018-07-22 18:04:57', 'chunk_update', 'modChunk', '8'),
(669, 1, '2018-07-22 18:04:57', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(670, 1, '2018-07-22 18:05:46', 'tv_create', 'modTemplateVar', '14'),
(671, 1, '2018-07-22 18:06:22', 'tv_duplicate', 'modTemplateVar', '15'),
(672, 1, '2018-07-22 18:06:54', 'tv_duplicate', 'modTemplateVar', '16'),
(673, 1, '2018-07-22 18:07:29', 'tv_duplicate', 'modTemplateVar', '17'),
(674, 1, '2018-07-22 18:08:18', 'tv_create', 'modTemplateVar', '18'),
(675, 1, '2018-07-22 18:08:39', 'tv_duplicate', 'modTemplateVar', '19'),
(676, 1, '2018-07-22 18:09:05', 'tv_duplicate', 'modTemplateVar', '20'),
(677, 1, '2018-07-22 18:09:24', 'tv_duplicate', 'modTemplateVar', '21'),
(678, 1, '2018-07-22 18:11:53', 'resource_update', 'modResource', '1'),
(679, 1, '2018-07-22 18:12:18', 'chunk_update', 'modChunk', '8'),
(680, 1, '2018-07-22 18:12:18', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(681, 1, '2018-07-22 18:16:15', 'resource_create', 'modDocument', '40'),
(682, 1, '2018-07-22 18:16:46', 'resource_create', 'modDocument', '41'),
(683, 1, '2018-07-22 18:17:18', 'resource_create', 'modDocument', '42'),
(684, 1, '2018-07-22 18:17:49', 'resource_create', 'modDocument', '43'),
(685, 1, '2018-07-22 18:39:12', 'category_create', 'modCategory', '14'),
(686, 1, '2018-07-22 18:40:50', 'tv_create', 'modTemplateVar', '22'),
(687, 1, '2018-07-22 18:45:21', 'template_create', 'modTemplate', '6'),
(688, 1, '2018-07-22 18:45:52', 'tv_update', 'modTemplateVar', '22'),
(689, 1, '2018-07-22 18:45:52', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 22 Default'),
(690, 1, '2018-07-22 18:49:28', 'chunk_create', 'modChunk', '27'),
(691, 1, '2018-07-22 18:51:48', 'chunk_update', 'modChunk', '10'),
(692, 1, '2018-07-22 18:51:48', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 10 Default'),
(693, 1, '2018-07-22 18:52:15', 'chunk_update', 'modChunk', '10'),
(694, 1, '2018-07-22 18:52:15', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 10 Default'),
(695, 1, '2018-07-22 18:52:47', 'resource_update', 'modResource', '41'),
(696, 1, '2018-07-22 18:53:13', 'resource_update', 'modResource', '42'),
(697, 1, '2018-07-22 18:53:27', 'resource_update', 'modResource', '43'),
(698, 1, '2018-07-22 18:54:51', 'file_update', '', '/mnt/sites/chistota-24/assets/site/css/style.css'),
(699, 1, '2018-07-22 18:56:35', 'tv_create', 'modTemplateVar', '23'),
(700, 1, '2018-07-22 18:56:56', 'chunk_update', 'modChunk', '10'),
(701, 1, '2018-07-22 18:56:56', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 10 Default'),
(702, 1, '2018-07-22 18:57:39', 'tv_update', 'modTemplateVar', '23'),
(703, 1, '2018-07-22 18:57:39', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(704, 1, '2018-07-22 18:57:44', 'tv_update', 'modTemplateVar', '23'),
(705, 1, '2018-07-22 18:57:45', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 23 Default'),
(706, 1, '2018-07-22 18:58:02', 'resource_update', 'modResource', '1'),
(707, 1, '2018-07-22 19:22:43', 'chunk_update', 'modChunk', '11'),
(708, 1, '2018-07-22 19:22:43', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 11 Default'),
(709, 1, '2018-07-22 19:37:03', 'source_duplicate', 'sources.modMediaSource', '6'),
(710, 1, '2018-07-22 19:37:10', 'source_update', 'sources.modMediaSource', '6'),
(711, 1, '2018-07-22 19:37:36', 'source_update', 'sources.modMediaSource', '6'),
(712, 1, '2018-07-22 19:39:53', 'category_create', 'modCategory', '15'),
(713, 1, '2018-07-22 19:40:53', 'tv_create', 'modTemplateVar', '24'),
(714, 1, '2018-07-22 19:41:52', 'tv_update', 'modTemplateVar', '24'),
(715, 1, '2018-07-22 19:41:52', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 24 Default'),
(716, 1, '2018-07-22 19:44:10', 'chunk_create', 'modChunk', '28'),
(717, 1, '2018-07-22 19:44:22', 'chunk_update', 'modChunk', '28'),
(718, 1, '2018-07-22 19:44:22', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 28 Default'),
(719, 1, '2018-07-22 19:45:25', 'chunk_update', 'modChunk', '11'),
(720, 1, '2018-07-22 19:45:25', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 11 Default'),
(721, 1, '2018-07-22 19:46:24', 'tv_update', 'modTemplateVar', '24'),
(722, 1, '2018-07-22 19:46:24', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 24 Default'),
(723, 1, '2018-07-22 19:46:59', 'resource_update', 'modResource', '1'),
(724, 1, '2018-07-22 19:49:21', 'chunk_update', 'modChunk', '28'),
(725, 1, '2018-07-22 19:49:21', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 28 Default'),
(726, 1, '2018-07-22 19:50:06', 'chunk_update', 'modChunk', '28'),
(727, 1, '2018-07-22 19:50:06', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 28 Default'),
(728, 1, '2018-07-22 19:51:05', 'resource_update', 'modResource', '1'),
(729, 1, '2018-07-22 19:51:15', 'resource_update', 'modResource', '1'),
(730, 1, '2018-07-22 19:52:35', 'resource_update', 'modResource', '1'),
(731, 1, '2018-07-22 19:52:49', 'resource_update', 'modResource', '1'),
(732, 1, '2018-07-22 19:52:50', 'resource_update', 'modResource', '1'),
(733, 1, '2018-07-22 19:53:01', 'resource_update', 'modResource', '1'),
(734, 1, '2018-07-22 19:55:46', 'file_remove', '', '/mnt/sites/chistota-24/assets/site/img/portfolio/t5354_30Ips.jpg'),
(735, 1, '2018-07-22 19:56:08', 'file_upload', '', '/mnt/sites/chistota-24/assets/site/img/portfolio/'),
(736, 1, '2018-07-22 19:56:11', 'resource_update', 'modResource', '1'),
(737, 1, '2018-07-22 20:04:06', 'chunk_update', 'modChunk', '11'),
(738, 1, '2018-07-22 20:04:06', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 11 Default'),
(739, 1, '2018-07-22 20:04:25', 'resource_update', 'modResource', '1'),
(740, 1, '2018-07-22 20:04:40', 'file_upload', '', '/mnt/sites/chistota-24/assets/site/img/portfolio/'),
(741, 1, '2018-07-22 20:04:43', 'resource_update', 'modResource', '1'),
(742, 1, '2018-07-22 20:06:28', 'tv_create', 'modTemplateVar', '25'),
(743, 1, '2018-07-22 20:06:44', 'tv_update', 'modTemplateVar', '25'),
(744, 1, '2018-07-22 20:06:44', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 25 Default'),
(745, 1, '2018-07-22 20:07:24', 'chunk_update', 'modChunk', '11'),
(746, 1, '2018-07-22 20:07:24', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 11 Default'),
(747, 1, '2018-07-22 20:07:40', 'resource_update', 'modResource', '1'),
(748, 1, '2018-07-22 20:09:25', 'template_update', 'modTemplate', '1'),
(749, 1, '2018-07-22 20:09:25', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(750, 1, '2018-07-22 20:11:50', 'category_create', 'modCategory', '16'),
(751, 1, '2018-07-22 20:12:49', 'chunk_update', 'modChunk', '9'),
(752, 1, '2018-07-22 20:12:49', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 9 Default'),
(753, 1, '2018-07-22 20:13:08', 'chunk_update', 'modChunk', '9'),
(754, 1, '2018-07-22 20:13:08', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 9 Default'),
(755, 1, '2018-07-22 20:13:21', 'chunk_update', 'modChunk', '9'),
(756, 1, '2018-07-22 20:13:21', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 9 Default'),
(757, 1, '2018-07-22 20:14:05', 'chunk_update', 'modChunk', '12'),
(758, 1, '2018-07-22 20:14:05', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 12 Default'),
(759, 1, '2018-07-22 20:14:54', 'tv_create', 'modTemplateVar', '26'),
(760, 1, '2018-07-22 20:15:37', 'tv_create', 'modTemplateVar', '27'),
(761, 1, '2018-07-22 20:15:46', 'tv_update', 'modTemplateVar', '26'),
(762, 1, '2018-07-22 20:15:46', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 26 Default'),
(763, 1, '2018-07-22 20:16:19', 'tv_update', 'modTemplateVar', '26'),
(764, 1, '2018-07-22 20:16:19', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 26 Default'),
(765, 1, '2018-07-22 20:16:37', 'resource_update', 'modResource', '1'),
(766, 1, '2018-07-22 20:17:28', 'chunk_update', 'modChunk', '12'),
(767, 1, '2018-07-22 20:17:29', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 12 Default'),
(768, 1, '2018-07-22 20:20:04', 'chunk_update', 'modChunk', '13'),
(769, 1, '2018-07-22 20:20:04', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 13 Default'),
(770, 1, '2018-07-22 20:20:12', 'chunk_update', 'modChunk', '13'),
(771, 1, '2018-07-22 20:20:13', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 13 Default'),
(772, 1, '2018-07-22 20:23:02', 'chunk_create', 'modChunk', '29'),
(773, 1, '2018-07-22 20:23:51', 'chunk_duplicate', 'modChunk', '30'),
(774, 1, '2018-07-22 20:24:19', 'chunk_update', 'modChunk', '30'),
(775, 1, '2018-07-22 20:24:19', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 30 Default'),
(776, 1, '2018-07-22 20:27:54', 'tv_create', 'modTemplateVar', '28'),
(777, 1, '2018-07-22 20:28:13', 'tv_duplicate', 'modTemplateVar', '29'),
(778, 1, '2018-07-22 20:28:22', 'tv_update', 'modTemplateVar', '29'),
(779, 1, '2018-07-22 20:28:22', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 29 Default'),
(780, 1, '2018-07-22 20:29:10', 'tv_update', 'modTemplateVar', '29'),
(781, 1, '2018-07-22 20:29:10', 'propertyset_update_from_element', 'modPropertySet', 'modTemplateVar 29 Default'),
(782, 1, '2018-07-22 20:31:04', 'chunk_update', 'modChunk', '13'),
(783, 1, '2018-07-22 20:31:04', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 13 Default'),
(784, 1, '2018-07-22 20:32:15', 'resource_update', 'modResource', '1'),
(785, 1, '2018-07-22 20:32:27', 'resource_update', 'modResource', '1'),
(786, 1, '2018-07-22 20:32:36', 'resource_update', 'modResource', '1'),
(787, 1, '2018-07-22 20:35:53', 'chunk_update', 'modChunk', '14'),
(788, 1, '2018-07-22 20:35:53', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 14 Default'),
(789, 1, '2018-07-22 20:36:26', 'resource_update', 'modResource', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_media_sources`
--

CREATE TABLE `chisto_media_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_media_sources`
--

INSERT INTO `chisto_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1),
(2, 'images', '', 'sources.modFileMediaSource', 'a:2:{s:8:"basePath";a:6:{s:4:"name";s:8:"basePath";s:4:"desc";s:23:"prop_file.basePath_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:16:"assets/site/img/";s:7:"lexicon";s:11:"core:source";}s:7:"baseUrl";a:6:{s:4:"name";s:7:"baseUrl";s:4:"desc";s:22:"prop_file.baseUrl_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:16:"assets/site/img/";s:7:"lexicon";s:11:"core:source";}}', 1),
(3, 'slider', '', 'sources.modFileMediaSource', 'a:2:{s:8:"basePath";a:6:{s:4:"name";s:8:"basePath";s:4:"desc";s:23:"prop_file.basePath_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:23:"assets/site/img/slider/";s:7:"lexicon";s:11:"core:source";}s:7:"baseUrl";a:6:{s:4:"name";s:7:"baseUrl";s:4:"desc";s:22:"prop_file.baseUrl_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:23:"assets/site/img/slider/";s:7:"lexicon";s:11:"core:source";}}', 1),
(4, 'icons', '', 'sources.modFileMediaSource', 'a:2:{s:8:"basePath";a:6:{s:4:"name";s:8:"basePath";s:4:"desc";s:23:"prop_file.basePath_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:22:"assets/site/img/icons/";s:7:"lexicon";s:11:"core:source";}s:7:"baseUrl";a:6:{s:4:"name";s:7:"baseUrl";s:4:"desc";s:22:"prop_file.baseUrl_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:22:"assets/site/img/icons/";s:7:"lexicon";s:11:"core:source";}}', 1),
(5, 'services', '', 'sources.modFileMediaSource', 'a:2:{s:8:"basePath";a:6:{s:4:"name";s:8:"basePath";s:4:"desc";s:23:"prop_file.basePath_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:25:"assets/site/img/services/";s:7:"lexicon";s:11:"core:source";}s:7:"baseUrl";a:6:{s:4:"name";s:7:"baseUrl";s:4:"desc";s:22:"prop_file.baseUrl_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:25:"assets/site/img/services/";s:7:"lexicon";s:11:"core:source";}}', 1),
(6, 'works', '', 'sources.modFileMediaSource', 'a:2:{s:8:"basePath";a:6:{s:4:"name";s:8:"basePath";s:4:"desc";s:23:"prop_file.basePath_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:26:"assets/site/img/portfolio/";s:7:"lexicon";s:11:"core:source";}s:7:"baseUrl";a:6:{s:4:"name";s:7:"baseUrl";s:4:"desc";s:22:"prop_file.baseUrl_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:26:"assets/site/img/portfolio/";s:7:"lexicon";s:11:"core:source";}}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_media_sources_contexts`
--

CREATE TABLE `chisto_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_media_sources_elements`
--

CREATE TABLE `chisto_media_sources_elements` (
  `source` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_media_sources_elements`
--

INSERT INTO `chisto_media_sources_elements` (`source`, `object_class`, `object`, `context_key`) VALUES
(2, 'modTemplateVar', 3, 'web'),
(2, 'modTemplateVar', 5, 'web'),
(2, 'modTemplateVar', 7, 'web'),
(2, 'modTemplateVar', 8, 'web'),
(2, 'modTemplateVar', 9, 'web'),
(2, 'modTemplateVar', 10, 'web'),
(2, 'modTemplateVar', 11, 'web'),
(2, 'modTemplateVar', 12, 'web'),
(2, 'modTemplateVar', 13, 'web'),
(2, 'modTemplateVar', 14, 'web'),
(2, 'modTemplateVar', 15, 'web'),
(2, 'modTemplateVar', 16, 'web'),
(2, 'modTemplateVar', 17, 'web'),
(2, 'modTemplateVar', 18, 'web'),
(2, 'modTemplateVar', 19, 'web'),
(2, 'modTemplateVar', 20, 'web'),
(2, 'modTemplateVar', 21, 'web'),
(2, 'modTemplateVar', 22, 'web'),
(2, 'modTemplateVar', 23, 'web'),
(2, 'modTemplateVar', 25, 'web'),
(2, 'modTemplateVar', 26, 'web'),
(2, 'modTemplateVar', 27, 'web'),
(2, 'modTemplateVar', 28, 'web'),
(2, 'modTemplateVar', 29, 'web'),
(3, 'modTemplateVar', 1, 'web'),
(4, 'modTemplateVar', 2, 'web'),
(4, 'modTemplateVar', 6, 'web'),
(5, 'modTemplateVar', 4, 'web'),
(6, 'modTemplateVar', 24, 'web');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_membergroup_names`
--

CREATE TABLE `chisto_membergroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_membergroup_names`
--

INSERT INTO `chisto_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_member_groups`
--

CREATE TABLE `chisto_member_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `member` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_member_groups`
--

INSERT INTO `chisto_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_menus`
--

CREATE TABLE `chisto_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `menuindex` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_menus`
--

INSERT INTO `chisto_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('about', 'usernav', 'help', '', '<i class="icon-question-circle icon icon-large"></i>', 7, '', '', 'help', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('admin', 'usernav', '', '', '<i class="icon-gear icon icon-large"></i>', 6, '', '', 'settings', 'core'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('clientconfig', 'components', '2', 'clientconfig.desc', 'images/icons/plugin.gif', 0, '', '', '', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n        \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('migx', 'topnav', 'index', '', '', 0, '&configs=packagemanager||migxconfigs||setup', '', '', 'migx'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id="user-avatar">{$userImage}</span> <span id="user-username">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_migx_configs`
--

CREATE TABLE `chisto_migx_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `formtabs` text NOT NULL,
  `contextmenus` text NOT NULL,
  `actionbuttons` text NOT NULL,
  `columnbuttons` text NOT NULL,
  `filters` text NOT NULL,
  `extended` text NOT NULL,
  `columns` text NOT NULL,
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` datetime DEFAULT NULL,
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` datetime DEFAULT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime DEFAULT NULL,
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `publishedon` datetime DEFAULT NULL,
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `chisto_migx_configs`
--

INSERT INTO `chisto_migx_configs` (`id`, `name`, `formtabs`, `contextmenus`, `actionbuttons`, `columnbuttons`, `filters`, `extended`, `columns`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `published`, `publishedon`, `publishedby`, `category`) VALUES
(1, 'works', '[{"MIGX_id":1,"caption":"Image","print_before_tabs":"0","fields":[{"field":"title","caption":"Title","MIGX_id":1,"pos":1},{"MIGX_id":2,"field":"description","caption":"Description","description":"","description_is_code":"0","inputTV":"","inputTVtype":"","validation":"","configs":"","restrictive_condition":"","display":"","sourceFrom":"config","sources":"","inputOptionValues":"","default":"test","useDefaultIfEmpty":"0","pos":2},{"MIGX_id":3,"field":"showBtn","caption":"Show button","description":{"field":"showBtn","caption":"Show button","inputTV":"showBtn"},"description_is_code":"0","inputTV":"","inputTVtype":"checkbox","validation":"","configs":"","restrictive_condition":"","display":"","sourceFrom":"config","sources":"","inputOptionValues":"yes==yes","default":"yes","useDefaultIfEmpty":1,"pos":3},{"MIGX_id":4,"field":"image","caption":"Image","description":"","description_is_code":"0","inputTV":"","inputTVtype":"image","validation":"","configs":"","restrictive_condition":"","display":"none","sourceFrom":"migx","sources":"","inputOptionValues":"","default":"","useDefaultIfEmpty":"0","pos":4}],"pos":1}]', 'edit_migx||duplicate_migx||remove_migx_and_image||movetotop_migx||movetotop_bottom', 'loadfromsource||uploadfiles', '', '', '{"migx_add":"Add Image","disable_add_item":1,"add_items_directly":"","formcaption":"Image","update_win_title":"","win_id":"resourcegallery","maxRecords":"","addNewItemAt":"bottom","multiple_formtabs":"","multiple_formtabs_label":"","multiple_formtabs_field":"","multiple_formtabs_optionstext":"","multiple_formtabs_optionsvalue":"","actionbuttonsperrow":4,"winbuttonslist":"","extrahandlers":"this.handleColumnSwitch","filtersperrow":4,"packageName":"","classname":"","task":"","getlistsort":"","getlistsortdir":"","sortconfig":"","gridpagesize":"","use_custom_prefix":"0","prefix":"","grid":"","gridload_mode":1,"check_resid":1,"check_resid_TV":"","join_alias":"","has_jointable":"yes","getlistwhere":"","joins":"","hooksnippets":"","cmpmaincaption":"","cmptabcaption":"","cmptabdescription":"","cmptabcontroller":"","winbuttons":"","onsubmitsuccess":"","submitparams":""}', '[{"MIGX_id":1,"header":"ID","dataIndex":"MIGX_id","width":10,"renderer":"","sortable":"false","show_in_grid":1},{"MIGX_id":2,"header":"Title","dataIndex":"title","width":20,"sortable":"false","show_in_grid":1,"renderer":"","clickaction":"","selectorconfig":"","renderchunktpl":"","renderoptions":"","editor":"this.textEditor"},{"MIGX_id":3,"header":"Image","dataIndex":"image","width":20,"renderer":"this.renderImage","sortable":"false","show_in_grid":1},{"MIGX_id":4,"header":"Published","dataIndex":"published","width":"","sortable":"false","show_in_grid":1,"renderer":"this.renderSwitchStatusOptions","clickaction":"switchOption","selectorconfig":"","renderchunktpl":"","renderoptions":"[{\\"MIGX_id\\":1,\\"name\\":\\"published\\",\\"use_as_fallback\\":1,\\"value\\":1,\\"clickaction\\":\\"switchOption\\",\\"handler\\":\\"\\",\\"image\\":\\"assets\\\\\\/components\\\\\\/migx\\\\\\/style\\\\\\/images\\\\\\/cb_ticked.png\\"},{\\"MIGX_id\\":2,\\"name\\":\\"published\\",\\"use_as_fallback\\":\\"\\",\\"value\\":1,\\"clickaction\\":\\"switchOption\\",\\"handler\\":\\"\\",\\"image\\":\\"assets\\\\\\/components\\\\\\/migx\\\\\\/style\\\\\\/images\\\\\\/cb_ticked.png\\"},{\\"MIGX_id\\":3,\\"name\\":\\"unpublished\\",\\"use_as_fallback\\":\\"\\",\\"value\\":\\"0\\",\\"clickaction\\":\\"switchOption\\",\\"handler\\":\\"\\",\\"image\\":\\"assets\\\\\\/components\\\\\\/migx\\\\\\/style\\\\\\/images\\\\\\/cb_empty.png\\"}]","editor":""}]', 1, '2018-07-22 19:35:23', 1, '2018-07-22 19:35:53', 0, NULL, 0, 1, NULL, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_migx_config_elements`
--

CREATE TABLE `chisto_migx_config_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `config_id` int(10) NOT NULL DEFAULT '0',
  `element_id` int(10) NOT NULL DEFAULT '0',
  `rank` int(10) NOT NULL DEFAULT '0',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` datetime NOT NULL,
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` datetime NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime NOT NULL,
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `publishedon` datetime NOT NULL,
  `publishedby` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_migx_elements`
--

CREATE TABLE `chisto_migx_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` datetime NOT NULL,
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` datetime NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime NOT NULL,
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `publishedon` datetime NOT NULL,
  `publishedby` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_migx_formtabs`
--

CREATE TABLE `chisto_migx_formtabs` (
  `id` int(10) UNSIGNED NOT NULL,
  `config_id` int(10) NOT NULL DEFAULT '0',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `pos` int(10) NOT NULL DEFAULT '0',
  `print_before_tabs` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `extended` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `chisto_migx_formtabs`
--

INSERT INTO `chisto_migx_formtabs` (`id`, `config_id`, `caption`, `pos`, `print_before_tabs`, `extended`) VALUES
(1, 1, 'Image', 1, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_migx_formtab_fields`
--

CREATE TABLE `chisto_migx_formtab_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `config_id` int(10) NOT NULL DEFAULT '0',
  `formtab_id` int(10) NOT NULL DEFAULT '0',
  `field` varchar(255) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `pos` int(10) NOT NULL DEFAULT '0',
  `description_is_code` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `inputTV` varchar(255) NOT NULL DEFAULT '',
  `inputTVtype` varchar(255) NOT NULL DEFAULT '',
  `validation` text NOT NULL,
  `configs` varchar(255) NOT NULL DEFAULT '',
  `restrictive_condition` text NOT NULL,
  `display` varchar(255) NOT NULL DEFAULT '',
  `sourceFrom` varchar(255) NOT NULL DEFAULT '',
  `sources` varchar(255) NOT NULL DEFAULT '',
  `inputOptionValues` text NOT NULL,
  `default` text NOT NULL,
  `extended` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `chisto_migx_formtab_fields`
--

INSERT INTO `chisto_migx_formtab_fields` (`id`, `config_id`, `formtab_id`, `field`, `caption`, `description`, `pos`, `description_is_code`, `inputTV`, `inputTVtype`, `validation`, `configs`, `restrictive_condition`, `display`, `sourceFrom`, `sources`, `inputOptionValues`, `default`, `extended`) VALUES
(1, 1, 1, 'title', 'Title', '', 1, 0, '', '', '', '', '', '', '', '', '', '', ''),
(2, 1, 1, 'description', 'Description', '', 2, 0, '', '', '', '', '', '', 'config', '', '', 'test', ''),
(3, 1, 1, 'showBtn', 'Show button', 'Array', 3, 0, '', 'checkbox', '', '', '', '', 'config', '', 'yes==yes', 'yes', ''),
(4, 1, 1, 'image', 'Image', '', 4, 0, '', 'image', '', '', '', 'none', 'migx', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_namespaces`
--

CREATE TABLE `chisto_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_namespaces`
--

INSERT INTO `chisto_namespaces` (`name`, `path`, `assets_path`) VALUES
('ace', '{core_path}components/ace/', ''),
('backupmodx', '{core_path}components/backupmodx/', '{assets_path}components/backupmodx/'),
('clientconfig', '{core_path}components/clientconfig/', '{assets_path}components/clientconfig/'),
('core', '{core_path}', '{assets_path}'),
('migx', '{core_path}components/migx/', '{assets_path}components/migx/'),
('pdotools', '{core_path}components/pdotools/', ''),
('phpthumbon', '{core_path}components/phpthumbon/', ''),
('tinymce', '{core_path}components/tinymce/', '{assets_path}components/tinymce/'),
('translit', '{core_path}components/translit/', '');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_property_set`
--

CREATE TABLE `chisto_property_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(191) NOT NULL DEFAULT '',
  `properties` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_register_messages`
--

CREATE TABLE `chisto_register_messages` (
  `topic` int(10) UNSIGNED NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_register_messages`
--

INSERT INTO `chisto_register_messages` (`topic`, `id`, `created`, `valid`, `accessed`, `accesses`, `expires`, `payload`, `kill`) VALUES
(1, '6364d3f0f495b6ab9dcf8d3b5c6e0b01', '2018-07-21 13:36:28', '2018-07-21 13:36:28', NULL, 0, 1532180548, 'if (time() > 1532180548) return null;\nreturn 1;\n', 0),
(1, 'c16a5320fa475530d9583c34fd356ef5', '2018-07-21 13:36:28', '2018-07-21 13:36:28', NULL, 0, 1532180548, 'if (time() > 1532180548) return null;\nreturn 1;\n', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_register_queues`
--

CREATE TABLE `chisto_register_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_register_queues`
--

INSERT INTO `chisto_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:"directory";s:5:"locks";}'),
(2, 'resource_reload', 'a:1:{s:9:"directory";s:15:"resource_reload";}');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_register_topics`
--

CREATE TABLE `chisto_register_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_register_topics`
--

INSERT INTO `chisto_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2018-07-19 19:23:43', NULL, NULL),
(2, 2, '/resourcereload/', '2018-07-19 19:42:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_session`
--

CREATE TABLE `chisto_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int(20) UNSIGNED NOT NULL,
  `data` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_session`
--

INSERT INTO `chisto_session` (`id`, `access`, `data`) VALUES
('533i74lp7i45cglloc781s7dc1', 1532291755, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx5b50e49ea391c7.61019220_15b50e4a6dfc3b8.27951120";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:273:{i:0;s:23:"5b50e53fc23b99.16658549";i:1;s:23:"5b50e576b04916.98842271";i:2;s:23:"5b50e852ee02d6.88450455";i:3;s:23:"5b50e8605de5d5.38101906";i:4;s:23:"5b50e872b5d384.01466837";i:5;s:23:"5b50e8746ad975.31372344";i:6;s:23:"5b50e87ff34b60.78082383";i:7;s:23:"5b50e881867277.23813514";i:8;s:23:"5b50e891d0c5e3.95945720";i:9;s:23:"5b50e8ea2a4884.60836263";i:10;s:23:"5b50e90dee2ce5.46431947";i:11;s:23:"5b50e934ebc567.48651605";i:12;s:23:"5b50e93b4df821.91260957";i:13;s:23:"5b50e94f660f12.49722713";i:14;s:23:"5b50e95b346062.50542968";i:15;s:23:"5b50e968006203.76141055";i:16;s:23:"5b50e96b8641b5.75946089";i:17;s:23:"5b50e977010fb8.54576117";i:18;s:23:"5b50e97cbe1714.01294951";i:19;s:23:"5b50e980796533.34783479";i:20;s:23:"5b50e9844ceb88.00927400";i:21;s:23:"5b50e991a32643.58127694";i:22;s:23:"5b50e9a8b065b6.82814479";i:23;s:23:"5b50e9ac2880e7.98118566";i:24;s:23:"5b50e9bfe50b58.58271475";i:25;s:23:"5b50e9caf38368.30747839";i:26;s:23:"5b50e9d5473296.94811527";i:27;s:23:"5b50ea33e667a7.49174053";i:28;s:23:"5b50ea3945e6b9.97418284";i:29;s:23:"5b50ea4b0156a7.37096602";i:30;s:23:"5b50ea73e15ff4.17235991";i:31;s:23:"5b50ea79cd7270.71247025";i:32;s:23:"5b50eba3502ee4.85182685";i:33;s:23:"5b5311654afd09.55677501";i:34;s:23:"5b5317e530de27.18877303";i:35;s:23:"5b531c3fa93158.57153169";i:36;s:23:"5b53214846bba7.40770956";i:37;s:23:"5b532182a4e044.69401966";i:38;s:23:"5b53218d3f9493.19116512";i:39;s:23:"5b532191db9513.24141647";i:40;s:23:"5b5321a0a50568.34617988";i:41;s:23:"5b5321a388db15.65091366";i:42;s:23:"5b5321a52c8bb6.83818582";i:43;s:23:"5b5321aaa5a004.21036240";i:44;s:23:"5b5321ae87ca69.86007024";i:45;s:23:"5b5321b3d50094.12419592";i:46;s:23:"5b5321b898af75.86461691";i:47;s:23:"5b5321c44364f8.18173592";i:48;s:23:"5b53266f2db729.96659508";i:49;s:23:"5b5326800f24a7.37044427";i:50;s:23:"5b5326848f7d58.82118176";i:51;s:23:"5b5329bd902c39.82896109";i:52;s:23:"5b5329c26baf49.14235876";i:53;s:23:"5b5329c80b78b8.89890246";i:54;s:23:"5b5329cde98bc7.90306072";i:55;s:23:"5b5329d2a63af9.56095960";i:56;s:23:"5b5329d859de39.31268697";i:57;s:23:"5b5329e1627ad5.49809122";i:58;s:23:"5b5329feb97422.50525123";i:59;s:23:"5b532a4e23c482.00433160";i:60;s:23:"5b532ad7125f69.90738549";i:61;s:23:"5b532b7ea548d3.99299130";i:62;s:23:"5b532bb32e2143.91600435";i:63;s:23:"5b532bce141562.23340601";i:64;s:23:"5b532bd6d21e44.64548016";i:65;s:23:"5b532be911eb91.38651954";i:66;s:23:"5b532c0d523aa8.24459389";i:67;s:23:"5b532c5f2b9b93.64677037";i:68;s:23:"5b532c6e789dc0.56219098";i:69;s:23:"5b532c78b40257.44041166";i:70;s:23:"5b532c7c350702.32699728";i:71;s:23:"5b532c88524523.17035295";i:72;s:23:"5b532c8d07cd71.39743683";i:73;s:23:"5b532c98b57f37.82565380";i:74;s:23:"5b532ca0ee23d6.90643290";i:75;s:23:"5b532cd60202d0.24472492";i:76;s:23:"5b532cef643d22.91203104";i:77;s:23:"5b532cfe13bd88.70429160";i:78;s:23:"5b532d04d04482.32636511";i:79;s:23:"5b532daf0cb8b5.91363734";i:80;s:23:"5b532dcd59f245.80452576";i:81;s:23:"5b532dd30bd7d5.53037044";i:82;s:23:"5b532e92995552.57062395";i:83;s:23:"5b532eb8d6f7b6.62368624";i:84;s:23:"5b532ebc408db0.72719612";i:85;s:23:"5b532efde6f5d9.40110753";i:86;s:23:"5b532f0c930857.10731807";i:87;s:23:"5b532f4db17997.87270255";i:88;s:23:"5b532f51b9c213.33001763";i:89;s:23:"5b5330275feb50.22686748";i:90;s:23:"5b53303c797829.75217847";i:91;s:23:"5b5334b44a3490.10989874";i:92;s:23:"5b5334d84308a6.65379238";i:93;s:23:"5b5334df151bd8.62501514";i:94;s:23:"5b5334fdbeee50.11642484";i:95;s:23:"5b53350612ddc1.38538253";i:96;s:23:"5b5335315d06c2.82147195";i:97;s:23:"5b533744c840f1.46461619";i:98;s:23:"5b5337d50d2ea6.22622666";i:99;s:23:"5b5337e8518f40.07337846";i:100;s:23:"5b5337f7c50407.59172546";i:101;s:23:"5b53380d8c75b2.53028256";i:102;s:23:"5b53383437ec22.31102389";i:103;s:23:"5b5338447a4590.59379572";i:104;s:23:"5b533857598b36.01455785";i:105;s:23:"5b53386e4ff4e8.37787486";i:106;s:23:"5b5338815af7f3.46610890";i:107;s:23:"5b5338ba1805a1.56393941";i:108;s:23:"5b5338c50c9bf4.72424003";i:109;s:23:"5b5338ce29d0c0.52872052";i:110;s:23:"5b5338d7a629f1.71568969";i:111;s:23:"5b53486b2443f7.22601518";i:112;s:23:"5b53488343abc8.38155592";i:113;s:23:"5b53782e8d6fa4.24455509";i:114;s:23:"5b537853445353.78686576";i:115;s:23:"5b537856bfb5d4.65897882";i:116;s:23:"5b53788abb78b7.01048519";i:117;s:23:"5b537891513d85.60963475";i:118;s:23:"5b53789501de47.41150219";i:119;s:23:"5b537899c7c2d2.15112855";i:120;s:23:"5b53789d111ac2.48135927";i:121;s:23:"5b5378a2d3c541.49255832";i:122;s:23:"5b5378ae691013.87711935";i:123;s:23:"5b5378b6f42191.30115224";i:124;s:23:"5b5378c677e223.67920419";i:125;s:23:"5b5378c8aa18b2.35579417";i:126;s:23:"5b5378ce14f444.58489339";i:127;s:23:"5b5378d2301ab0.53458088";i:128;s:23:"5b5378d73ec4b9.81447042";i:129;s:23:"5b5378dada2a17.77281407";i:130;s:23:"5b5378e00f7546.07299876";i:131;s:23:"5b5378ee136391.18930965";i:132;s:23:"5b5378f2c8dae1.03527549";i:133;s:23:"5b5378f63a86e5.23777953";i:134;s:23:"5b5378f8504b59.27666449";i:135;s:23:"5b5378fa499cd5.85912160";i:136;s:23:"5b5378fd5821a6.14382750";i:137;s:23:"5b5379009b2782.68963250";i:138;s:23:"5b537904132c75.36878417";i:139;s:23:"5b53790645f362.28761387";i:140;s:23:"5b53790dc7a762.73849710";i:141;s:23:"5b5379122deba9.16725098";i:142;s:23:"5b5379141b4de7.17055147";i:143;s:23:"5b537916030ec3.37771458";i:144;s:23:"5b5379180b6315.33973365";i:145;s:23:"5b5379198e5649.13792143";i:146;s:23:"5b53791bab8365.79990427";i:147;s:23:"5b53791dd294e6.12919570";i:148;s:23:"5b53791fd01315.29262966";i:149;s:23:"5b53792560f892.23184024";i:150;s:23:"5b537947d7da57.37980517";i:151;s:23:"5b53794a1e9ac1.87446554";i:152;s:23:"5b53794c68fed2.54945985";i:153;s:23:"5b537968a0b2a8.12037429";i:154;s:23:"5b53797bbed3c2.31566053";i:155;s:23:"5b537bae808bd2.68825308";i:156;s:23:"5b537bb11336c0.70530118";i:157;s:23:"5b537bb5e4d885.29408239";i:158;s:23:"5b537bb9c8c729.91342217";i:159;s:23:"5b537bbdc52135.64624989";i:160;s:23:"5b537bc3717f09.36089300";i:161;s:23:"5b537bc8614943.58572531";i:162;s:23:"5b537be12c1577.15766958";i:163;s:23:"5b537be4dd3e82.80227370";i:164;s:23:"5b537beb0e8c15.83728327";i:165;s:23:"5b537bee9edc32.40620447";i:166;s:23:"5b537bf31e0445.57125358";i:167;s:23:"5b537bf6a98372.68256279";i:168;s:23:"5b537bfb0957e5.63504072";i:169;s:23:"5b538020b0b908.03876618";i:170;s:23:"5b538023ea2c46.61594455";i:171;s:23:"5b53804b31f8d8.62003477";i:172;s:23:"5b5380532edf28.74197269";i:173;s:23:"5b53805909b7d7.95688918";i:174;s:23:"5b53805f23bc38.35371144";i:175;s:23:"5b53806de821b0.10844705";i:176;s:23:"5b53809276ae64.50299303";i:177;s:23:"5b5380967dce11.32645877";i:178;s:23:"5b5380dcb39656.51117339";i:179;s:23:"5b5380f545c956.92716291";i:180;s:23:"5b5380fb7e3828.14613071";i:181;s:23:"5b53839e06f569.15196058";i:182;s:23:"5b53841a6fe8f6.68668173";i:183;s:23:"5b5384dcf1c8a8.95547454";i:184;s:23:"5b53891edb5219.79335952";i:185;s:23:"5b538aca3dcb90.76448819";i:186;s:23:"5b538b5f1df429.44930937";i:187;s:23:"5b538c2f5773e2.29546984";i:188;s:23:"5b538c3772f321.34127754";i:189;s:23:"5b538c7aa59857.97704640";i:190;s:23:"5b538d19406b21.06570028";i:191;s:23:"5b538d5d886888.63618640";i:192;s:23:"5b538d6864fd12.28781040";i:193;s:23:"5b538fa79486f8.77053809";i:194;s:23:"5b538fc746cdf0.93501474";i:195;s:23:"5b53903f18a7a0.87151499";i:196;s:23:"5b539093129614.41847356";i:197;s:23:"5b539098630930.79068741";i:198;s:23:"5b53910dc4b526.72222217";i:199;s:23:"5b539139205b29.68480187";i:200;s:23:"5b5392e0e4ee29.20020112";i:201;s:23:"5b53935acf88d3.27486617";i:202;s:23:"5b53937fe31f41.16666622";i:203;s:23:"5b539547bf7e10.28365791";i:204;s:23:"5b539597356a00.65710774";i:205;s:23:"5b53959bb8d4e2.09049841";i:206;s:23:"5b5395a033c829.50548963";i:207;s:23:"5b5395a47d8ea5.51972232";i:208;s:23:"5b5395b1c83747.98366648";i:209;s:23:"5b539715f135a2.03806269";i:210;s:23:"5b539824c49368.03031878";i:211;s:23:"5b539847e80088.48280701";i:212;s:23:"5b539fb3ebae23.63956666";i:213;s:23:"5b539fe8455924.10282288";i:214;s:23:"5b539ff2af8575.01932553";i:215;s:23:"5b53a28d5a04e4.94287964";i:216;s:23:"5b53a2bcbd6571.99780779";i:217;s:23:"5b53a2bfadd5a2.69431697";i:218;s:23:"5b53a2c36f8445.43969953";i:219;s:23:"5b53a2c60e4335.82115297";i:220;s:23:"5b53a4b25d77c1.76355603";i:221;s:23:"5b53a4f4180cb6.53352325";i:222;s:23:"5b53a91aa4b2e7.19917751";i:223;s:23:"5b53a95931a1d2.86047834";i:224;s:23:"5b53aaf42b6c15.31281076";i:225;s:23:"5b53ab415b7992.04989526";i:226;s:23:"5b53ab8be0b176.75430447";i:227;s:23:"5b53ac2406b6b7.56513469";i:228;s:23:"5b53ac5d9e60c8.19977064";i:229;s:23:"5b53ac7776f4d9.73237558";i:230;s:23:"5b53acd266a3e8.56542551";i:231;s:23:"5b53acfda2d3e5.96066554";i:232;s:23:"5b53ae1f5bb418.08591609";i:233;s:23:"5b53ae32af55e3.24849774";i:234;s:23:"5b53b0465fbe37.70190059";i:235;s:23:"5b53b0bdbba9e2.76398094";i:236;s:23:"5b53b271115a20.87500733";i:237;s:23:"5b53b58f6b3f30.12053372";i:238;s:23:"5b53b59e85a005.65527883";i:239;s:23:"5b53b5c4288ec6.59273774";i:240;s:23:"5b53b5ddf25319.07210649";i:241;s:23:"5b53b5ed37c696.79357316";i:242;s:23:"5b53b6023246b6.81964253";i:243;s:23:"5b53b6066123d1.72449812";i:244;s:23:"5b54c4dab4a088.24513716";i:245;s:23:"5b54c88c6fbb12.38161718";i:246;s:23:"5b54c9d56aaeb0.99329892";i:247;s:23:"5b54c9ddb7f657.73829280";i:248;s:23:"5b54c9f035ab03.33616824";i:249;s:23:"5b54c9fef2b1b8.72908608";i:250;s:23:"5b54ca0fe39184.96181254";i:251;s:23:"5b54ca170e9910.08052480";i:252;s:23:"5b54ca305cb402.33413925";i:253;s:23:"5b54ca39a45980.35090073";i:254;s:23:"5b54ca4f1132e2.91915599";i:255;s:23:"5b54d271e81a28.18676923";i:256;s:23:"5b54d27a2d5ea6.29375898";i:257;s:23:"5b54d28513b304.35105819";i:258;s:23:"5b54d28fbd65a9.22833626";i:259;s:23:"5b54d29c2ef571.44733078";i:260;s:23:"5b54d2a1eec708.44268640";i:261;s:23:"5b54d37ad6bbc6.45970824";i:262;s:23:"5b54d3ab16d671.27204061";i:263;s:23:"5b54deea775694.86071958";i:264;s:23:"5b54df1be88a81.04052806";i:265;s:23:"5b54e00dd49a95.37099459";i:266;s:23:"5b54e341ca8f06.78929709";i:267;s:23:"5b54e3ffad0847.66916119";i:268;s:23:"5b54e5f50af1f9.13349383";i:269;s:23:"5b54e6164f0947.50551968";i:270;s:23:"5b54e98ad30134.62083142";i:271;s:23:"5b54ea5d164877.89200984";i:272;s:23:"5b54eaabe20b83.01827068";}modx.user.1.userGroups|a:1:{i:0;i:1;}modx.user.1.userGroupNames|a:1:{i:0;s:13:"Administrator";}');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_site_content`
--

CREATE TABLE `chisto_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `alias` varchar(191) DEFAULT '',
  `link_attributes` varchar(191) NOT NULL DEFAULT '',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(191) NOT NULL DEFAULT '',
  `donthit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_site_content`
--

INSERT INTO `chisto_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Главная', 'Профессиональный клининг', '', 'index', '', 1, 0, 0, 0, 1, '', '<p> </p>\r\n<p>Чистота жилья – залог здоровья человека. Даже настроение часто зависит от чистоты помещения, поэтому услуги уборки становятся все более популярными. Гораздо приятнее находиться в убранном помещении, приходить домой в свежее жилье. Клининг квартиры – дело непростое и мы об этом знаем.</p>\r\n<p>Компания SolidCare предоставляет услуги по качественной уборке помещений, освобождая вас от выполнения грязной работы. Мало кто самостоятельно проводит генеральную уборку, моет окна, полы и проводит дезинфекцию помещения хотя бы раз в месяц. Услуги уборки заказывают для офисов, домов и предприятий, а также технических помещений. Оказание клининг услуг выполняется профессионалами, которые работают в сфере клининга несколько лет.</p>\r\n<p>В XXI веке чистое убранное помещение – это показатель статуса человека. Это касается не только уборки квартиры, но и офисов. Если в офисе чисто, подчиненные работают гораздо эффективнее, быстрее выполняя запланированный объем работы. Клининг помещений повышает духовный уровень и делает компанию гораздо солиднее в глазах сотрудников.</p>\r\n<p> </p>\r\n<h3>Сколько стоят наши услуги?</h3>\r\n<p>Чтобы подсчитать стоимость клининга квартиры или офиса можно воспользоваться калькулятором, находящимся на нашем сайте. Простой интуитивно понятный интерфейс позволит быстро оценить стоимость услуг клининга.</p>\r\n<p>Стоимость уборки квартиры в Киеве колеблется в диапазоне 2000-3000 грн, в зависимости от площади жилья, количества комнат, санузлов, типа уборки, комплектации клининга, а также использования дополнительных опций. Генеральная уборка квартир стоит немного дороже поддерживающей.</p>\r\n<p>Различные комплектации для оказания услуг профессионального клининга позволят провести максимально качественную уборку квартиры или любого другого помещения под ваши нужды.</p>\r\n<p>Наши преимущества: профессиональная, оперативная и дешевая уборка</p>\r\n<p>Изучая клининг сервис в Киеве и отзывы о нем можно видеть, что такие услуги стоят недорого. Демократичные цены SolidCare удивят вас.</p>\r\n<p>Наши работники проходят строгий отбор и допускаются к работе только после проверки профессиональных навыков. Ценовая политика SolidCare базируется на понимании потребностей человека, ведь мы работаем специально для клиента и хотим его порадовать качеством уборки.</p>', 1, 1, 0, 1, 1, 1, 1532028064, 1, 1532291786, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'index/', 0, 0, 1, NULL),
(2, 'document', 'text/html', 'Страница не найдена', '', '', 'stranicza-ne-najdena', '', 1, 0, 0, 0, 0, '', '', 1, 1, 1, 1, 1, 1, 1532029041, 0, 0, 0, 0, 0, 1532029041, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'stranicza-ne-najdena.html', 0, 0, 1, NULL),
(3, 'document', 'text/html', 'Доступ запрещен', '', '', 'dostup-zapreshhen', '', 1, 0, 0, 0, 0, '', '', 1, 1, 2, 1, 1, 1, 1532029054, 0, 0, 0, 0, 0, 1532029054, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'dostup-zapreshhen.html', 0, 0, 1, NULL),
(4, 'document', 'text/html', 'Сайт временно недоступен', '', '', 'sajt-vremenno-nedostupen', '', 1, 0, 0, 0, 0, '', '', 1, 1, 3, 1, 1, 1, 1532029072, 0, 0, 0, 0, 0, 1532029072, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'sajt-vremenno-nedostupen.html', 0, 0, 1, NULL),
(5, 'document', 'text/html', 'Услуги', 'Наши услуги', '', 'vse-uslugi', '', 1, 0, 0, 0, 1, '', '', 1, 3, 4, 1, 1, 1, 1532029235, 1, 1532197884, 0, 0, 0, 1532029200, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'vse-uslugi/', 0, 0, 1, NULL),
(6, 'document', 'text/html', 'О нас', '', '', 'o-nas', '', 1, 0, 0, 0, 0, '', '', 1, 3, 5, 1, 1, 1, 1532029262, 1, 1532197876, 0, 0, 0, 1532029260, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'o-nas.html', 0, 0, 1, NULL),
(7, 'document', 'text/html', 'Калькулятор', '', '', 'kalkulyator', '', 1, 0, 0, 0, 0, '', '', 1, 3, 6, 1, 1, 1, 1532029286, 1, 1532197868, 0, 0, 0, 1532029260, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'kalkulyator.html', 0, 0, 1, NULL),
(8, 'document', 'text/html', 'Контакты', '', '', 'kontaktyi', '', 1, 0, 0, 0, 0, '', '', 1, 3, 7, 1, 1, 1, 1532029301, 1, 1532197858, 0, 0, 0, 1532029260, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'kontaktyi.html', 0, 0, 1, NULL),
(9, 'document', 'text/plain', 'robots', '', '', 'robots', '', 1, 0, 0, 0, 0, '', '<p>v</p>', 1, 0, 8, 1, 1, 1, 1532029355, 1, 1532029367, 0, 0, 0, 1532029320, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 3, 'robots.txt', 0, 0, 1, NULL),
(10, 'document', 'text/xml', 'sitemap', '', '', 'sitemap', '', 1, 0, 0, 0, 0, '', '', 1, 0, 9, 1, 1, 1, 1532029396, 0, 0, 0, 0, 0, 1532029396, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 2, 'sitemap.xml', 0, 0, 1, NULL),
(11, 'document', 'text/html', 'Стандартная уборка квартиры', '', '', 'standartnaya-uborka-kvartiryi', '', 1, 0, 0, 5, 0, '', '', 1, 2, 0, 1, 1, 1, 1532029513, 1, 1532207763, 0, 0, 0, 1532029500, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'vse-uslugi/standartnaya-uborka-kvartiryi.html', 0, 0, 1, NULL),
(12, 'document', 'text/html', 'Стандартная уборка коттеджей и домов', '', '', 'standartnaya-uborka-kottedzhej-i-domov', '', 1, 0, 0, 5, 0, '', '', 1, 2, 0, 1, 1, 1, 1532029581, 1, 1532207818, 0, 0, 0, 1532029500, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'vse-uslugi/standartnaya-uborka-kottedzhej-i-domov.html', 0, 0, 1, NULL),
(13, 'document', 'text/html', 'Ежедневная уборка офиса по графику', '', '', 'ezhednevnaya-uborka-ofisa-po-grafiku', '', 1, 0, 0, 5, 0, '', '', 1, 2, 0, 1, 1, 1, 1532029590, 1, 1532204442, 0, 0, 0, 1532029500, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'vse-uslugi/ezhednevnaya-uborka-ofisa-po-grafiku.html', 0, 0, 1, NULL),
(14, 'document', 'text/html', 'Генеральная уборка квартиры', '', '', 'generalnaya-uborka-kvartiryi', '', 1, 0, 0, 5, 0, '', '', 1, 2, 0, 1, 1, 1, 1532029607, 1, 1532202461, 0, 0, 0, 1532029500, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'vse-uslugi/generalnaya-uborka-kvartiryi.html', 0, 0, 1, NULL),
(15, 'document', 'text/html', 'Генеральная уборка коттеджей и домов', '', '', 'generalnaya-uborka-kottedzhej-i-domov', '', 1, 0, 0, 5, 0, '', '', 1, 2, 0, 1, 1, 1, 1532029616, 1, 1532212836, 0, 0, 0, 1532029500, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'vse-uslugi/generalnaya-uborka-kottedzhej-i-domov.html', 0, 0, 1, NULL),
(16, 'document', 'text/html', 'Генеральная уборка офиса', '', '', 'generalnaya-uborka-ofisa', '', 1, 0, 0, 5, 0, '', '', 1, 2, 0, 1, 1, 1, 1532029625, 1, 1532202259, 0, 0, 0, 1532029500, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'vse-uslugi/generalnaya-uborka-ofisa.html', 0, 0, 1, NULL),
(17, 'document', 'text/html', 'Уборка квартиры после ремонта', '', '', 'uborka-kvartiryi-posle-remonta', '', 1, 0, 0, 5, 0, '', '', 1, 2, 0, 1, 1, 1, 1532029635, 1, 1532205101, 0, 0, 0, 1532029500, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'vse-uslugi/uborka-kvartiryi-posle-remonta.html', 0, 0, 1, NULL),
(18, 'document', 'text/html', 'Уборка коттеджей и домов после ремонта', '', '', 'uborka-kottedzhej-i-domov-posle-remonta', '', 1, 0, 0, 5, 0, '', '', 1, 2, 0, 1, 1, 1, 1532029642, 1, 1532207036, 0, 0, 0, 1532029500, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'vse-uslugi/uborka-kottedzhej-i-domov-posle-remonta.html', 0, 0, 1, NULL),
(19, 'document', 'text/html', 'Уборка офиса после ремонта', '', '', 'uborka-ofisa-posle-remonta', '', 1, 0, 0, 5, 0, '', '', 1, 2, 0, 1, 1, 1, 1532029649, 1, 1532199967, 0, 0, 0, 1532029500, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'vse-uslugi/uborka-ofisa-posle-remonta.html', 0, 0, 1, NULL),
(20, 'document', 'text/html', 'Уборка квартиры после пожара', '', '', 'uborka-kvartiryi-posle-pozhara', '', 1, 0, 0, 5, 0, '', '', 1, 2, 0, 1, 1, 1, 1532029658, 1, 1532204454, 0, 0, 0, 1532029500, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'vse-uslugi/uborka-kvartiryi-posle-pozhara.html', 0, 0, 1, NULL),
(21, 'document', 'text/html', 'Уборка придомовой территории коттеджей/домов', '', '', 'uborka-pridomovoj-territorii-kottedzhej/domov', '', 1, 0, 0, 5, 0, '', '', 1, 2, 0, 1, 1, 1, 1532029665, 1, 1532202958, 0, 0, 0, 1532029500, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'vse-uslugi/uborka-pridomovoj-territorii-kottedzhej/domov.html', 0, 0, 1, NULL),
(22, 'document', 'text/html', 'Химчистка мягкой мебели', '', '', 'ximchistka-myagkoj-mebeli', '', 1, 0, 0, 5, 0, '', '', 1, 2, 0, 1, 1, 1, 1532029672, 1, 1532207098, 0, 0, 0, 1532029500, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'vse-uslugi/ximchistka-myagkoj-mebeli.html', 0, 0, 1, NULL),
(23, 'document', 'text/html', 'Слайд Первый', '<h1>Уборка офиса — безопасность сотрудников<br>и престиж компании!</h1>', '', 'slajd-pervyij', '', 1, 0, 0, 26, 0, '', '', 1, 4, 1, 1, 1, 1, 1532174732, 1, 1532178199, 0, 0, 0, 1532178199, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/slajder/slajd-pervyij.html', 0, 0, 1, NULL),
(24, 'document', 'text/html', 'Слайд Второй', 'Уборка офиса — безопасность сотрудников<br>и престиж компании!', '', 'slajd-vtoroj', '', 1, 0, 0, 26, 0, '', '', 1, 4, 2, 1, 1, 1, 1532174754, 1, 1532178187, 0, 0, 0, 1532178187, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/slajder/slajd-vtoroj.html', 0, 0, 1, NULL),
(25, 'document', 'text/html', 'Слайд Третий', 'Уборка офиса — безопасность сотрудников и престиж компании!', '', 'slajd-tretij', '', 1, 0, 0, 26, 0, '', '', 1, 4, 3, 1, 1, 1, 1532174787, 1, 1532178169, 0, 0, 0, 1532178169, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/slajder/slajd-tretij.html', 0, 0, 1, NULL),
(26, 'document', 'text/html', 'Слайдер', '', '', 'slajder', '', 1, 0, 0, 1, 1, '', '', 1, 0, 4, 1, 1, 1, 1532175998, 1, 1532176007, 0, 0, 0, 1532175960, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/slajder/', 0, 0, 1, NULL),
(27, 'document', 'text/html', 'Преимущества', '', '', 'preimushhestva', '', 1, 0, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, 1532178491, 0, 0, 0, 0, 0, 1532178491, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/preimushhestva/', 0, 0, 1, NULL),
(28, 'document', 'text/html', 'Гарантия качества!', '', '', 'garantiya-kachestva!', '', 1, 0, 0, 27, 0, '', '<p>Высокий уровень профессионализма и большой опыт нашего персонала позволяют выполнять уборку не просто хорошо, а превосходно, не тратя на это много времени. Если Вам что-то не понравилось, оперативно исправим.</p>', 1, 5, 0, 1, 1, 1, 1532179708, 1, 1532180460, 0, 0, 0, 1532179680, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/preimushhestva/garantiya-kachestva!.html', 0, 0, 1, NULL),
(29, 'document', 'text/html', 'Держим низкие цены,', '', '', 'derzhim-nizkie-czenyi,', '', 1, 0, 0, 27, 0, '', '<p>придерживаясь высокого качества оказываемых услуг.</p>', 1, 5, 0, 1, 1, 1, 1532180148, 1, 1532180447, 0, 0, 0, 1532179680, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/preimushhestva/derzhim-nizkie-czenyi,.html', 0, 0, 1, NULL),
(33, 'document', 'text/html', 'Без предоплаты!', '', '', 'bez-predoplatyi!', '', 1, 0, 0, 27, 0, '', '<p>Оплата только после выполнения работы.</p>', 1, 5, 0, 1, 1, 1, 1532180217, 1, 1532180482, 0, 0, 0, 1532179680, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/preimushhestva/bez-predoplatyi!.html', 0, 0, 1, NULL),
(34, 'document', 'text/html', 'Благодаря удобной форме онлайн - заявки,', '', '', 'blagodarya-udobnoj-forme-onlajn-zayavki,', '', 1, 0, 0, 27, 0, '', '<p>вы можете сделать заказ, не выходя из дома, или не покидая своего рабочего места.</p>', 1, 5, 0, 1, 1, 1, 1532180230, 1, 1532180514, 0, 0, 0, 1532179680, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/preimushhestva/blagodarya-udobnoj-forme-onlajn-zayavki,.html', 0, 0, 1, NULL),
(35, 'document', 'text/html', 'В нашем арсенале самое современное', '', '', 'v-nashem-arsenale-samoe-sovremennoe', '', 1, 0, 0, 27, 0, '', '<p>клининговое оборудование для любой поверхности!</p>', 1, 5, 0, 1, 1, 1, 1532180240, 1, 1532180540, 0, 0, 0, 1532179680, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/preimushhestva/v-nashem-arsenale-samoe-sovremennoe.html', 0, 0, 1, NULL),
(36, 'document', 'text/html', 'Мы используем только качественные', '', '', 'myi-ispolzuem-tolko-kachestvennyie', '', 1, 0, 0, 27, 0, '', '<p>моющие средства для любых поверхностей. Только специально подобранные средства смогут дать самый лучший результат!</p>', 1, 5, 0, 1, 1, 1, 1532180250, 1, 1532180559, 0, 0, 0, 1532179680, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/preimushhestva/myi-ispolzuem-tolko-kachestvennyie.html', 0, 0, 1, NULL),
(37, 'document', 'text/html', 'Оперативность', '', '', 'operativnost', '', 1, 0, 0, 27, 0, '', '<p>Максимально быстрое предоставление услуг в указанном месте.</p>', 1, 5, 0, 1, 1, 1, 1532180260, 1, 1532180577, 0, 0, 0, 1532179680, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/preimushhestva/operativnost.html', 0, 0, 1, NULL),
(38, 'document', 'text/html', 'Бесплатная доставка.', '', '', 'besplatnaya-dostavka', '', 1, 0, 0, 27, 0, '', '<p>Мы не берем деньги за доставку нашего оборудования и моющих средств!</p>', 1, 5, 0, 1, 1, 1, 1532180275, 1, 1532180600, 0, 0, 0, 1532179680, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/preimushhestva/besplatnaya-dostavka.html', 0, 0, 1, NULL),
(39, 'document', 'text/html', 'Мы работаем для вас,', '', '', 'myi-rabotaem-dlya-vas,', '', 1, 0, 0, 27, 0, '', '<p>Вкак часы — без перерывов и выходных.</p>', 1, 5, 0, 1, 1, 1, 1532180284, 1, 1532180617, 0, 0, 0, 1532179680, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/preimushhestva/myi-rabotaem-dlya-vas,.html', 0, 0, 1, NULL),
(40, 'document', 'text/html', 'Отзывы', '', '', 'otzyivyi', '', 1, 0, 0, 1, 1, '', '', 1, 0, 2, 1, 1, 1, 1532283375, 0, 0, 0, 0, 0, 1532283375, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/otzyivyi/', 0, 0, 1, NULL),
(41, 'document', 'text/html', 'Валерия Кортошова', 'Валерия Кортошова', '', 'valeriya-kortoshova', '', 1, 0, 0, 40, 0, '', '<p><span>В рамках спецификации современных стандартов, ключевые особенности структуры проекта неоднозначны и будут объединены в целые кластеры себе подобных.</span></p>', 1, 6, 0, 1, 1, 1, 1532283406, 1, 1532285567, 0, 0, 0, 1532283360, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/otzyivyi/valeriya-kortoshova.html', 0, 0, 1, NULL),
(42, 'document', 'text/html', 'Алексей Павлов', '', '', 'aleksej-pavlov', '', 1, 0, 0, 40, 0, '', '<p><span>В рамках спецификации современных стандартов, ключевые особенности структуры проекта неоднозначны и будут объединены в целые кластеры себе подобных. В рамках спецификации современных стандартов, ключевые особенности структуры проекта неоднозначны и будут объединены в целые кластеры себе подобных.</span></p>', 1, 6, 1, 1, 1, 1, 1532283438, 1, 1532285593, 0, 0, 0, 1532283420, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/otzyivyi/aleksej-pavlov.html', 0, 0, 1, NULL),
(43, 'document', 'text/html', 'Ирина Нестеренко', '', '', 'irina-nesterenko', '', 1, 0, 0, 40, 0, '', '<p><span>В рамках спецификации современных стандартов, ключевые особенности структуры проекта неоднозначны и</span></p>', 1, 6, 2, 1, 1, 1, 1532283469, 1, 1532285607, 0, 0, 0, 1532283420, 1, '', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'index/otzyivyi/irina-nesterenko.html', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_site_htmlsnippets`
--

CREATE TABLE `chisto_site_htmlsnippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_site_htmlsnippets`
--

INSERT INTO `chisto_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 2, 0, 'head', '', 0, 7, 0, '<head>\n    <base href="[[!++site_url]]" />\n    <meta charset="UTF-8">\n    <title>[[*title:default=`[[*pagetitle]]`]]</title>\n    <meta http-equiv="X-UA-Compatible" content="IE=edge">\n	<meta name="viewport" content="width=device-width, initial-scale=1.0">\n	<link rel="stylesheet" href="assets/site/slick/slick-theme.css">\n	<link rel="stylesheet" href="assets/site/slick/slick.css">\n	<link rel="stylesheet" href="assets/site/css/magnific-popup.css">\n	<link rel="stylesheet" href="assets/site/css/bootstrap.min.css">\n	<link rel="stylesheet" href="assets/site/css/style.css">\n	<link rel="stylesheet" href="assets/site/css/media.css">\n	<link rel="shortcut icon"  href="favicon.ico">\n</head>', 0, 'a:0:{}', 0, ''),
(2, 2, 0, 'header', '', 0, 7, 0, '<header>\n	<div class="container">\n		<div class="row">\n			<div class="flex-wrap oplet">\n				<div class="logo"><a href=""><img src="assets/site/img/logo.png" alt="[[++site_name]]" title="[[++site_name]]"></a> </div>\n				<div class="social">\n					<a target="_blank" href="[[++ok]]"><img src="assets/site/img/ok.png" alt="Одноклассники"></a>\n					<a target="_blank" href="[[++vk]]"><img src="assets/site/img/vk.png" alt="Вконтакте"></a>\n					<a target="_blank" href="[[++fb]]"><img src="assets/site/img/fb.png" alt="Фейсбук"></a>\n					<a target="_blank" href="[[++ig]]"><img src="assets/site/img/insta.png" alt="Инстаграм"></a>\n				</div>\n				<div class="phone">\n					<ul>\n						<li><a href="tel:[[++phoneOne]]"><img src="assets/site/img/phone.png" alt=""> <span>[[++phoneOne]]</span></a></li>\n						<li><a href="tel:[[++phoneTwo]]"><img src="assets/site/img/phone.png" alt=""> <span>[[++phoneTwo]]</span></a></li>\n					</ul>\n				</div>\n				<div class="menu">\n					[[$menu]]\n					<div id="sandwich">\n						<div class="sw_top"></div>\n						<div class="sw_bottom"></div>\n						<div class="sw_footer"></div>\n					</div>\n				</div>\n			</div>\n		</div>\n	</div>\n</header>', 0, 'a:0:{}', 0, ''),
(3, 2, 0, 'menu', '', 0, 7, 0, '<nav>\n    [[pdoMenu?\n        &level=`1`\n        &parents=`0`\n        &tpl=`@INLINE <li[[+classes]]><a href="[[+link]]" [[+attributes]]>[[+menutitle]]</a></li>`\n    ]]\n</nav>', 0, 'a:0:{}', 0, ''),
(4, 2, 0, 'slider', '', 0, 4, 0, '<div class="slider">\n    <div class="prev prev-index"><img src="assets/site/img/prev.png" alt=""></div>\n    <div class="sldr">\n    	[[!pdoPage?\n            &element=`pdoResources`\n            &showHidden=`1`\n        	&limit=`20`\n        	&tpl=`sldrTpl`\n        	&includeTVs=`imgSldrTv`\n        	&depth=`0`\n        	&parents=`26`\n        ]]\n    </div>\n    <div class="next next-index"><img src="assets/site/img/next.png" alt=""></div>\n</div>', 0, 'a:0:{}', 0, ''),
(5, 2, 0, 'advantageIndex', '', 0, 4, 0, '<section class="content">\n    <div class="container">\n        <div class="row">\n            <div class="ttl-head ttl-advantage">\n                <h2>[[*titleAdvantage]]</h2>\n            </div>\n            <div class="advantage">\n                 [[!pdoPage?\n                    &element=`pdoResources`\n                    &includeContent=`1`\n                    &showHidden=`1`\n                	&limit=`39`\n                	&tpl=`advantageTpl`\n                	&includeTVs=`imgAdvantageTv`\n                	&depth=`0`\n                	&parents=`27`\n                ]]\n            </div>\n        </div>\n    </div>\n</section>', 0, 'a:0:{}', 0, ''),
(6, 2, 0, 'serviceIndex', '', 0, 4, 0, '<section class="services-index">\n	<div class="container">\n		<div class="row">\n			<div class="ttl-head ttl-services-index">\n				<h2>[[*titleService]]</h2>\n			</div>\n			<div class="serv">\n			    [[!getResources?\n                    &showHidden=`1`\n                	&limit=`100`\n                	&tpl=`serviceTpl`\n                	&parents=`5`\n                	&includeTVs=`onOffServiceTv`\n                    &tvFilters=`onOffServiceTv==1`\n                ]]\n			</div>\n		</div>\n	</div>\n	<div class="btn btn-services-index"><a href="[[~5]]"><button>Перейти в услуги</button></a></div>\n</section>', 0, 'a:0:{}', 0, ''),
(7, 2, 0, 'priceIndex', '', 0, 4, 0, '<section class="price-index">\n			<div class="container">\n				<div class="row">\n					<div class="ttl-head price-index-ttl">\n						<h2>[[*titlePrice]]</h2>\n					</div>\n					<div class="prc-index">\n						<div class="table">\n							<table>\n		                      <caption></caption>\n		                        <thead>\n		                          <tr>\n		                            <th>Тип квартиры</th>\n		                            <th>Разовая</th>\n		                            <th>Каждый месяц – <br><strong>10% скидка</strong></th>\n		                            <th>Каждые две недели – <br><strong>15% скидка</strong></th>\n		                            <th>Каждую неделю – <br><strong>20% скидка</strong></th>\n		                          </tr>\n		                        </thead>\n		                        <tbody>\n		                            [[getImageList? &tvname=`rowTablePriceTv` &tpl=`priceListTableTpl`]]\n		                        </tbody>\n		                    </table>\n						</div>\n						<div class="oplet">\n							<div class="col-md-6">\n								<div class="row">\n									<div class="markup">\n										<div class="ttl">\n											<h4>Плюс наценка</h4>\n										</div>\n										<div class="markup-list">\n											<ul>\n											    [[getImageList? &tvname=`underPriceTv` &tpl=`underPriceTpl`]]\n											</ul>\n										</div>\n									</div>\n									<div class="note">\n										<div class="txt">\n											<p>\n												<sup>*</sup> [[*specialIndexTv]]\n											</p>\n										</div>\n									</div>\n								</div>\n							</div>\n							<div class="col-md-6">\n								<div class="row">\n									<div class="markup distance">\n										<div class="ttl">\n											<h4>Дополнительные услуги</h4>\n										</div>\n										<div class="markup-list distance-dist">\n											<ul>\n												[[getImageList? &tvname=`distanceServiceTv` &tpl=`distanceServiceTpl`]]\n											</ul>\n										</div>\n										<div class="down"><img src="assets/site/img/down.png" alt=""></div>\n									</div>\n								</div>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<div class="btn btn-price">\n				<a href="[[~7]]"><button>Заказать уборку</button></a>\n			</div>\n		</section>', 0, 'a:0:{}', 0, ''),
(8, 2, 0, 'stockIndex', '', 0, 4, 0, '<section class="stock-index">\n		    <div class="container">\n		        <div class="row">\n		            <div class="ttl-head ttl-stock-index">\n		                <h2>[[*titleStock]]</h2>\n		            </div>\n		            <div class="stk">\n		                <div class="item one-itm"><img src="[[*imgStepOneTv]]" alt="">\n		                    <div class="desc"><p>[[*descStepOneTv]]</p></div>\n		                </div>\n		                <div class="item arrow-one arrow"><img src="assets/site/img/arrow-ico.png" alt=""></div>\n		                <div class="item two-itm"><img src="[[*imgStepTwoTv]]" alt="">\n		                    <div class="desc"><p>[[*descStepTwoTv]]</p></div>\n		                </div>\n		                <div class="item arrow-two arrow"><img src="assets/site/img/arrow-ico.png" alt=""></div>\n		                <div class="item three-itm"><img src="[[*imgStepThreeTv]]" alt="">\n		                    <div class="desc"><p>[[*descStepThreeTv]]</p></div>\n		                </div>\n		                <div class="item four-itm"><img src="[[*imgStepFourTv]]" alt="">\n		                    <div class="desc"><p>[[*descStepFourTv]]</p></div>\n		                </div>\n		            </div>\n		        </div>\n		    </div>\n		</section>', 0, 'a:0:{}', 0, ''),
(9, 2, 0, 'bannerIndexOne', '', 0, 4, 0, '<section class="banner-index one-ban">\n	<div class="ttl-banner">[[*bannerOneTv]]</div>\n</section>', 0, 'a:0:{}', 0, ''),
(10, 2, 0, 'reviewIndex', '', 0, 4, 0, '<section class="review-index">\n			<div class="container">\n				<div class="row">\n					<div class="ttl-head ttl-review-index">\n						<h2>[[*titleReview]]</h2>\n					</div>\n					<div class="rev">\n						[[!pdoPage?\n                            &element=`pdoResources`\n                            &includeContent=`1`\n                            &showHidden=`1`\n                        	&limit=`3`\n                        	&tpl=`reviewTpl`\n                        	&includeTVs=`imgReviewIndexTv`\n                        	&depth=`0`\n                        	&parents=`40`\n                        ]]\n					</div>\n				</div>\n			</div>\n		</section>', 0, 'a:0:{}', 0, ''),
(11, 2, 0, 'worksIndex', '', 0, 4, 0, '<section class="works-index">\n	<div class="container">\n		<div class="row">\n			<div class="ttl-head ttl-works">\n				<h2>[[*titleWorks]]</h2>\n			</div>\n			<div class="work">\n				<div class="prev-work-index"><img src="assets/site/img/prev.png" alt=""></div>\n				<div class="work-img work-sldr-index zoom-gallery">\n					[[getImageList? \n    					&tvname=`worksIndexTv` \n    					&tpl=`worksIndexTpl`\n    					&where=`{"published":"1"}`\n					]]\n				</div>\n				<div class="next-work-index"><img src="assets/site/img/next.png" alt=""></div>\n			</div>\n		</div>\n	</div>\n</section>', 0, 'a:0:{}', 0, ''),
(12, 2, 0, 'bannerIndexTwo', '', 0, 4, 0, '<section class="banner-index two-ban">\n	<div class="ttl-banner">[[*bannerTwoTv]]</div>\n	<div class="btn btn-two-ban"><a href="[[~7]]"><button>Оформить заказ на уборку</button></a></div>\n</section>', 0, 'a:0:{}', 0, ''),
(13, 2, 0, 'bannerIndexThree', '', 0, 4, 0, '<section class="banner-dop">\n	<div class="container">\n		<div class="row">\n			<div class="ban-dop">\n				<div class="col-md-6">\n					<div class="left-list">\n						<ul>\n						    [[getImageList? &tvname=`listArrowBannerThreeTv` &tpl=`listArrowBannerThreeTpl`]]\n						</ul>\n					</div>\n				</div>\n				<div class="col-md-6">\n					<div class="right-list">\n						<ul>\n						    [[getImageList? &tvname=`listMarkBannerThreeTv` &tpl=`listMarkBannerThreeTpl`]]\n						</ul>\n					</div>\n				</div>\n				<div class="arrow"><img src="assets/site/img/ask_arrow.png" alt=""></div>\n			</div>\n		</div>\n	</div>\n</section>', 0, 'a:0:{}', 0, ''),
(14, 2, 0, 'articleIndex', '', 0, 4, 0, '<section class="seo-content-index">\n			<div class="container">\n				<div class="row">\n					<div class="col-md-12">\n						<div class="ttl-head ttl-seo-content-index">\n							<h2>[[*longtitle]]</h2>\n						</div>\n						<article>\n							[[*content]]\n						</article>\n					</div>\n				</div>\n			</div>\n		</section>', 0, 'a:0:{}', 0, ''),
(15, 2, 0, 'footer', '', 0, 7, 0, '<footer>\n	<div class="container">\n		<div class="row">\n			<div class="flex-wrap oplet">\n				<div class="logo-footer"><a href="/"><img src="assets/site/img/logo.png" alt="[[++site_name]]" title="[[++site_name]]"></a></div>\n				<div class="menu-footer"><nav>\n					<ul>\n						[[$menu]]\n					</ul>\n				</nav></div>\n				<div class="phone-footer">\n					<a href="tel:[[++phoneOne]]"><img src="assets/site/img/phone.png" alt=""><span>[[++phoneOne]]</span></a>\n					<a href="tel:[[++phoneTwo]]"><img src="assets/site/img/phone.png" alt=""><span>[[++phoneTwo]]</span></a>\n				</div>\n			</div>\n			<div class="copyright">\n				<p>Все права защищены. Сайт подготовлен <a href="http://ewal-web.ru">ewal-web.ru</a></p>\n				<p>Copyright © [[YDate]]</p>\n			</div>\n		</div>\n	</div>\n</footer>', 0, 'a:0:{}', 0, ''),
(16, 2, 0, 'scripts', '', 0, 7, 0, '<script src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="\n          crossorigin="anonymous"></script>\n<script src="assets/site/slick/slick.min.js"></script>\n<script src="assets/site/js/jquery.magnific-popup.min.js"></script>\n<script src="assets/site/js/custom.js"></script>', 0, 'a:0:{}', 0, ''),
(17, 2, 0, 'sldrTpl', '', 0, 9, 0, '<div class="item">\n    <div class="pic"><img src="[[+tv.imgSldrTv:phpthumbon=`w=1920&h=850&zc=1`]]" alt="[[+longtitle:default=`[[+pagetitle]]`]]"></div>\n    <div class="opl">\n    	<div class="desc">[[+longtitle:default=`[[+pagetitle]]`]]</div>\n    	<div class="btn btn-slider"><a href="[[~7]]"><button>Заказать уборку!</button></a></div>\n    </div>\n</div>', 0, 'a:0:{}', 0, ''),
(18, 2, 0, 'advantageTpl', '', 0, 10, 0, '<div class="col-md-4 col-sm-6">\n   <div class="item">\n        <div class="ico">\n            <img src="[[+tv.imgAdvantageTv:phpthumbon=`w=90&h=90&zc=1`]]" alt="[[+longtitle]]">\n        </div>\n        <div class="wrap">\n           <span class="ttl">[[+longtitle:default=`[[+pagetitle]]`]]</span>\n            <span class="txt">[[+content]]</span>\n       </div>\n    </div>\n</div>', 0, 'a:0:{}', 0, ''),
(19, 2, 0, 'pageServiceLink', '', 0, 5, 0, '[[!pdoPage?\n    &element=`pdoResources`\n    &showHidden=`1`\n	&limit=`100`\n	&tpl=`pageServiceLinkTpl`\n	&parents=`5`\n]]', 0, 'a:0:{}', 0, ''),
(20, 2, 0, 'pageServiceLinkTpl', '', 0, 5, 0, '<li><a href="[[++site_url]][[~[[+id]]]]">[[+longtitle:default=`[[+pagetitle]]`]]</a></li>', 0, 'a:0:{}', 0, ''),
(21, 2, 0, 'servicesOut', '', 0, 5, 0, '[[!pdoPage?\n    &element=`pdoResources`\n    &showHidden=`1`\n	&limit=`100`\n	&tpl=`servicesOutTpl`\n	&includeTVs=`servicesOutTv`\n	&parents=`5`\n]]', 0, 'a:0:{}', 0, ''),
(22, 2, 0, 'servicesOutTpl', '', 0, 5, 0, '<div class="col-sm-4 col-md-3">\r\n   <div class="services-card">\r\n       <div class="img"><img src="[[+tv.servicesOutTv:phpthumbon=`w=270&h=165&zc=1`]]" alt="[[+longtitle:default=`[[+pagetitle]]`]]"></div>\r\n       <div class="ttl">[[+longtitle:default=`[[+pagetitle]]`]]</div>\r\n       <a href="[[++site_url]][[~[[+id]]]]"></a>\r\n   </div>\r\n</div>', 0, 'a:0:{}', 0, ''),
(23, 2, 0, 'serviceTpl', '', 0, 11, 0, '<div class="col-md-4 col-sm-6">\n	<div class="item">\n		<div class="icon"><img src="[[+tv.serviceIconTv:phpthumbon=`w=90&h=90&zc=1`]]" alt="[[+longtitle:default=`[[+pagetitle]]`]]"></div>\n		<div class="ttl">[[+longtitle:default=`[[+pagetitle]]`]]</div>\n		<a href="[[++site_url]][[~[[+id]]]]"></a>\n	</div>\n</div>', 0, 'a:0:{}', 0, ''),
(24, 2, 0, 'priceListTableTpl', '', 0, 12, 0, '<tr>\n    <td data-label="Тип квартиры">[[+listItemType]]</td>\n    <td data-label="Разовая">[[+listItemOne]]</td>\n    <td data-label="Каждый месяц – 10% скидка">[[+listItemMonth]]</td>\n    <td data-label="Каждые две недели – 15% скидка">[[+listItemTwoWeek]]</td>\n    <td data-label="Каждую неделю – 20% скидка">[[+listItemAlwaysWeek]]</td>             \n</tr>', 0, 'a:0:{}', 0, ''),
(25, 0, 0, 'underPriceTpl', '', 0, 12, 0, '<li>[[+listUnderPrice]]</li>', 0, NULL, 0, ''),
(26, 2, 0, 'distanceServiceTpl', '', 0, 12, 0, '<li>[[+listDistanceService]]</li>', 0, 'a:0:{}', 0, ''),
(27, 2, 0, 'reviewTpl', '', 0, 14, 0, '<div class="col-sm-4 col-xs-12">\r\n	<div class="item">\r\n		<div class="auhtor"><img src="[[+tv.imgReviewIndexTv:phpthumbon=`w=90&h=90&zc=1`]]" alt="[[+longtitle]]"></div>\r\n		<div class="name">[[+longtitle:default=`[[+pagetitle]]`]]</div>\r\n		<div class="seporate"></div>\r\n		<div class="desc">\r\n			<p>\r\n				[[+content]]\r\n			</p>\r\n		</div>\r\n	</div>\r\n</div>', 0, 'a:0:{}', 0, ''),
(28, 2, 0, 'worksIndexTpl', '', 0, 15, 0, '<div class="item">\n	<a href="[[+image]]"><img src="[[+image]]" title="[[+title]]" alt="[[+title]]"></a>\n</div>', 0, 'a:0:{}', 0, ''),
(29, 2, 0, 'listArrowBannerThreeTpl', '', 0, 16, 0, '<li>[[+listArrowBannerVar]]</li>', 0, 'a:0:{}', 0, ''),
(30, 2, 0, 'listMarkBannerThreeTpl', '', 0, 16, 0, '<li>[[+listMarkBannerVar]]</li>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_site_plugins`
--

CREATE TABLE `chisto_site_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_site_plugins`
--

INSERT INTO `chisto_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'Ace', 'Ace code editor plugin for MODx Revolution', 0, 0, 0, '/**\n * Ace Source Editor Plugin\n *\n * Events: OnManagerPageBeforeRender, OnRichTextEditorRegister, OnSnipFormPrerender,\n * OnTempFormPrerender, OnChunkFormPrerender, OnPluginFormPrerender,\n * OnFileCreateFormPrerender, OnFileEditFormPrerender, OnDocFormPrerender\n *\n * @author Danil Kostin <danya.postfactum(at)gmail.com>\n *\n * @package ace\n *\n * @var array $scriptProperties\n * @var Ace $ace\n */\nif ($modx->event->name == \'OnRichTextEditorRegister\') {\n    $modx->event->output(\'Ace\');\n    return;\n}\n\nif ($modx->getOption(\'which_element_editor\', null, \'Ace\') !== \'Ace\') {\n    return;\n}\n\n$ace = $modx->getService(\'ace\', \'Ace\', $modx->getOption(\'ace.core_path\', null, $modx->getOption(\'core_path\').\'components/ace/\').\'model/ace/\');\n$ace->initialize();\n\n$extensionMap = array(\n    \'tpl\'   => \'text/x-smarty\',\n    \'htm\'   => \'text/html\',\n    \'html\'  => \'text/html\',\n    \'css\'   => \'text/css\',\n    \'scss\'  => \'text/x-scss\',\n    \'less\'  => \'text/x-less\',\n    \'svg\'   => \'image/svg+xml\',\n    \'xml\'   => \'application/xml\',\n    \'xsl\'   => \'application/xml\',\n    \'js\'    => \'application/javascript\',\n    \'json\'  => \'application/json\',\n    \'php\'   => \'application/x-php\',\n    \'sql\'   => \'text/x-sql\',\n    \'md\'    => \'text/x-markdown\',\n    \'txt\'   => \'text/plain\',\n    \'twig\'  => \'text/x-twig\'\n);\n\n// Defines wether we should highlight modx tags\n$modxTags = false;\nswitch ($modx->event->name) {\n    case \'OnSnipFormPrerender\':\n        $field = \'modx-snippet-snippet\';\n        $mimeType = \'application/x-php\';\n        break;\n    case \'OnTempFormPrerender\':\n        $field = \'modx-template-content\';\n        $modxTags = true;\n\n        switch (true) {\n            case $modx->getOption(\'twiggy_class\'):\n                $mimeType = \'text/x-twig\';\n                break;\n            case $modx->getOption(\'pdotools_fenom_parser\'):\n                $mimeType = \'text/x-smarty\';\n                break;\n            default:\n                $mimeType = \'text/html\';\n                break;\n        }\n\n        break;\n    case \'OnChunkFormPrerender\':\n        $field = \'modx-chunk-snippet\';\n        if ($modx->controller->chunk && $modx->controller->chunk->isStatic()) {\n            $extension = pathinfo($modx->controller->chunk->getSourceFile(), PATHINFO_EXTENSION);\n            $mimeType = isset($extensionMap[$extension]) ? $extensionMap[$extension] : \'text/plain\';\n        } else {\n            $mimeType = \'text/html\';\n        }\n        $modxTags = true;\n\n        switch (true) {\n            case $modx->getOption(\'twiggy_class\'):\n                $mimeType = \'text/x-twig\';\n                break;\n            case $modx->getOption(\'pdotools_fenom_default\'):\n                $mimeType = \'text/x-smarty\';\n                break;\n            default:\n                $mimeType = \'text/html\';\n                break;\n        }\n\n        break;\n    case \'OnPluginFormPrerender\':\n        $field = \'modx-plugin-plugincode\';\n        $mimeType = \'application/x-php\';\n        break;\n    case \'OnFileCreateFormPrerender\':\n        $field = \'modx-file-content\';\n        $mimeType = \'text/plain\';\n        break;\n    case \'OnFileEditFormPrerender\':\n        $field = \'modx-file-content\';\n        $extension = pathinfo($scriptProperties[\'file\'], PATHINFO_EXTENSION);\n        $mimeType = isset($extensionMap[$extension])\n            ? $extensionMap[$extension]\n            : \'text/plain\';\n        $modxTags = $extension == \'tpl\';\n        break;\n    case \'OnDocFormPrerender\':\n        if (!$modx->controller->resourceArray) {\n            return;\n        }\n        $field = \'ta\';\n        $mimeType = $modx->getObject(\'modContentType\', $modx->controller->resourceArray[\'content_type\'])->get(\'mime_type\');\n\n        switch (true) {\n            case $mimeType == \'text/html\' && $modx->getOption(\'twiggy_class\'):\n                $mimeType = \'text/x-twig\';\n                break;\n            case $mimeType == \'text/html\' && $modx->getOption(\'pdotools_fenom_parser\'):\n                $mimeType = \'text/x-smarty\';\n                break;\n        }\n\n        if ($modx->getOption(\'use_editor\')){\n            $richText = $modx->controller->resourceArray[\'richtext\'];\n            $classKey = $modx->controller->resourceArray[\'class_key\'];\n            if ($richText || in_array($classKey, array(\'modStaticResource\',\'modSymLink\',\'modWebLink\',\'modXMLRPCResource\'))) {\n                $field = false;\n            }\n        }\n        $modxTags = true;\n        break;\n    default:\n        return;\n}\n\n$modxTags = (int) $modxTags;\n$script = \'\';\nif ($field) {\n    $script .= "MODx.ux.Ace.replaceComponent(\'$field\', \'$mimeType\', $modxTags);";\n}\n\nif ($modx->event->name == \'OnDocFormPrerender\' && !$modx->getOption(\'use_editor\')) {\n    $script .= "MODx.ux.Ace.replaceTextAreas(Ext.query(\'.modx-richtext\'));";\n}\n\nif ($script) {\n    $modx->controller->addHtml(\'<script>Ext.onReady(function() {\' . $script . \'});</script>\');\n}', 0, NULL, 0, '', 0, 'ace/elements/plugins/ace.plugin.php'),
(2, 0, 0, 'MIGX', '', 0, 2, 0, '$corePath = $modx->getOption(\'migx.core_path\',null,$modx->getOption(\'core_path\').\'components/migx/\');\n$assetsUrl = $modx->getOption(\'migx.assets_url\', null, $modx->getOption(\'assets_url\') . \'components/migx/\');\nswitch ($modx->event->name) {\n    case \'OnTVInputRenderList\':\n        $modx->event->output($corePath.\'elements/tv/input/\');\n        break;\n    case \'OnTVInputPropertiesList\':\n        $modx->event->output($corePath.\'elements/tv/inputoptions/\');\n        break;\n\n        case \'OnDocFormPrerender\':\n        $modx->controller->addCss($assetsUrl.\'css/mgr.css\');\n        break; \n \n    /*          \n    case \'OnTVOutputRenderList\':\n        $modx->event->output($corePath.\'elements/tv/output/\');\n        break;\n    case \'OnTVOutputRenderPropertiesList\':\n        $modx->event->output($corePath.\'elements/tv/properties/\');\n        break;\n    \n    case \'OnDocFormPrerender\':\n        $assetsUrl = $modx->getOption(\'colorpicker.assets_url\',null,$modx->getOption(\'assets_url\').\'components/colorpicker/\'); \n        $modx->regClientStartupHTMLBlock(\'<script type="text/javascript">\n        Ext.onReady(function() {\n            \n        });\n        </script>\');\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorPicker.js\');\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorMenu.js\');\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorPickerField.js\');		\n        $modx->regClientCSS($assetsUrl.\'resources/css/colorpicker.css\');\n        break;\n     */\n}\nreturn;', 0, 'a:0:{}', 0, '', 0, ''),
(3, 0, 0, 'MIGXquip', '', 0, 2, 0, '$quipCorePath = $modx->getOption(\'quip.core_path\', null, $modx->getOption(\'core_path\') . \'components/quip/\');\n//$assetsUrl = $modx->getOption(\'migx.assets_url\', null, $modx->getOption(\'assets_url\') . \'components/migx/\');\nswitch ($modx->event->name)\n{\n\n    case \'OnDocFormPrerender\':\n\n        \n        require_once $quipCorePath . \'model/quip/quip.class.php\';\n        $modx->quip = new Quip($modx);\n\n        $modx->lexicon->load(\'quip:default\');\n        $quipconfig = $modx->toJson($modx->quip->config);\n        \n        $js = "\n        Quip.config = Ext.util.JSON.decode(\'{$quipconfig}\');\n        console.log(Quip);";\n\n        //$modx->controller->addCss($assetsUrl . \'css/mgr.css\');\n        $modx->controller->addJavascript($modx->quip->config[\'jsUrl\'].\'quip.js\');\n        $modx->controller->addHtml(\'<script type="text/javascript">\' . $js . \'</script>\');\n        break;\n\n}\nreturn;', 0, 'a:0:{}', 1, '', 0, ''),
(4, 0, 0, 'migxResizeOnUpload', '', 0, 2, 0, '/**\n * migxResizeOnUpload Plugin\n *\n * Events: OnFileManagerUpload\n * Author: Bruno Perner <b.perner@gmx.de>\n * Modified to read multiple configs from mediasource-property\n * \n * First Author: Vasiliy Naumkin <bezumkin@yandex.ru>\n * Required: PhpThumbOf snippet for resizing images\n * \n * Example: mediasource - property \'resizeConfig\':\n * [{"alias":"origin","w":"500","h":"500","far":1},{"alias":"thumb","w":"150","h":"150","far":1}]\n */\n\nif ($modx->event->name != \'OnFileManagerUpload\') {\n    return;\n}\n\n\n$file = $modx->event->params[\'files\'][\'file\'];\n$directory = $modx->event->params[\'directory\'];\n\nif ($file[\'error\'] != 0) {\n    return;\n}\n\n$name = $file[\'name\'];\n//$extensions = explode(\',\', $modx->getOption(\'upload_images\'));\n\n$source = $modx->event->params[\'source\'];\n\nif ($source instanceof modMediaSource) {\n    //$dirTree = $modx->getOption(\'dirtree\', $_REQUEST, \'\');\n    //$modx->setPlaceholder(\'docid\', $resource_id);\n    $source->initialize();\n    $basePath = str_replace(\'/./\', \'/\', $source->getBasePath());\n    //$cachepath = $cachepath . $dirTree;\n    $baseUrl = $modx->getOption(\'site_url\') . $source->getBaseUrl();\n    //$baseUrl = $baseUrl . $dirTree;\n    $sourceProperties = $source->getPropertyList();\n\n    //echo \'<pre>\' . print_r($sourceProperties, 1) . \'</pre>\';\n    //$allowedExtensions = $modx->getOption(\'allowedFileTypes\', $sourceProperties, \'\');\n    //$allowedExtensions = empty($allowedExtensions) ? \'jpg,jpeg,png,gif\' : $allowedExtensions;\n    //$maxFilesizeMb = $modx->getOption(\'maxFilesizeMb\', $sourceProperties, \'8\');\n    //$maxFiles = $modx->getOption(\'maxFiles\', $sourceProperties, \'0\');\n    //$thumbX = $modx->getOption(\'thumbX\', $sourceProperties, \'100\');\n    //$thumbY = $modx->getOption(\'thumbY\', $sourceProperties, \'100\');\n    $resizeConfigs = $modx->getOption(\'resizeConfigs\', $sourceProperties, \'\');\n    $resizeConfigs = $modx->fromJson($resizeConfigs);\n    $thumbscontainer = $modx->getOption(\'thumbscontainer\', $sourceProperties, \'thumbs/\');\n    $imageExtensions = $modx->getOption(\'imageExtensions\', $sourceProperties, \'jpg,jpeg,png,gif,JPG\');\n    $imageExtensions = explode(\',\', $imageExtensions);\n    //$uniqueFilenames = $modx->getOption(\'uniqueFilenames\', $sourceProperties, false);\n    //$onImageUpload = $modx->getOption(\'onImageUpload\', $sourceProperties, \'\');\n    //$onImageRemove = $modx->getOption(\'onImageRemove\', $sourceProperties, \'\');\n    $cleanalias = $modx->getOption(\'cleanFilename\', $sourceProperties, false);\n\n}\n\nif (is_array($resizeConfigs) && count($resizeConfigs) > 0) {\n    foreach ($resizeConfigs as $rc) {\n        if (isset($rc[\'alias\'])) {\n            $filePath = $basePath . $directory;\n            $filePath = str_replace(\'//\',\'/\',$filePath);\n            if ($rc[\'alias\'] == \'origin\') {\n                $thumbPath = $filePath;\n            } else {\n                $thumbPath = $filePath . $rc[\'alias\'] . \'/\';\n                $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n                if (!@mkdir($thumbPath, $permissions, true)) {\n                    $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $thumbPath));\n                } else {\n                    chmod($thumbPath, $permissions);\n                }\n\n            }\n\n\n            $filename = $filePath . $name;\n            $thumbname = $thumbPath . $name;\n            $ext = substr(strrchr($name, \'.\'), 1);\n            if (in_array($ext, $imageExtensions)) {\n                $sizes = getimagesize($filename);\n                echo $sizes[0]; \n                //$format = substr($sizes[\'mime\'], 6);\n                if ($sizes[0] > $rc[\'w\'] || $sizes[1] > $rc[\'h\']) {\n                    if ($sizes[0] < $rc[\'w\']) {\n                        $rc[\'w\'] = $sizes[0];\n                    }\n                    if ($sizes[1] < $rc[\'h\']) {\n                        $rc[\'h\'] = $sizes[1];\n                    }\n                    $type = $sizes[0] > $sizes[1] ? \'landscape\' : \'portrait\';\n                    if (isset($rc[\'far\']) && $rc[\'far\'] == \'1\' && isset($rc[\'w\']) && isset($rc[\'h\'])) {\n                        if ($type = \'landscape\') {\n                            unset($rc[\'h\']);\n                        }else {\n                            unset($rc[\'w\']);\n                        }\n                    }\n\n                    $options = \'\';\n                    foreach ($rc as $k => $v) {\n                        if ($k != \'alias\') {\n                            $options .= \'&\' . $k . \'=\' . $v;\n                        }\n                    }\n                    $resized = $modx->runSnippet(\'phpthumbof\', array(\'input\' => $filePath . $name, \'options\' => $options));\n                    rename(MODX_BASE_PATH . substr($resized, 1), $thumbname);\n                }\n            }\n\n\n        }\n    }\n}', 0, 'a:0:{}', 0, '', 0, ''),
(5, 1, 0, 'pdoTools', '', 0, 3, 0, '/** @var modX $modx */\nswitch ($modx->event->name) {\n\n    case \'OnMODXInit\':\n        $fqn = $modx->getOption(\'pdoTools.class\', null, \'pdotools.pdotools\', true);\n        $path = $modx->getOption(\'pdotools_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\n        $modx->loadClass($fqn, $path, false, true);\n\n        $fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n        $path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\n        $modx->loadClass($fqn, $path, false, true);\n        break;\n\n    case \'OnSiteRefresh\':\n        /** @var pdoTools $pdoTools */\n        if ($pdoTools = $modx->getService(\'pdoTools\')) {\n            if ($pdoTools->clearFileCache()) {\n                $modx->log(modX::LOG_LEVEL_INFO, $modx->lexicon(\'refresh_default\') . \': pdoTools\');\n            }\n        }\n        break;\n\n    case \'OnWebPagePrerender\':\n        $parser = $modx->getParser();\n        if ($parser instanceof pdoParser) {\n            foreach ($parser->pdoTools->ignores as $key => $val) {\n                $modx->resource->_output = str_replace($key, $val, $modx->resource->_output);\n            }\n        }\n        break;\n}', 0, NULL, 0, '', 0, 'core/components/pdotools/elements/plugins/plugin.pdotools.php'),
(6, 0, 0, 'TinyMCE', 'TinyMCE 4.3.4-pl plugin for MODx Revolution', 0, 0, 0, '/**\n * TinyMCE RichText Editor Plugin\n *\n * Events: OnRichTextEditorInit, OnRichTextEditorRegister,\n * OnBeforeManagerPageInit, OnRichTextBrowserInit\n *\n * @author Jeff Whitfield <jeff@collabpad.com>\n * @author Shaun McCormick <shaun@collabpad.com>\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package tinymce\n * @subpackage build\n */\nif ($modx->event->name == \'OnRichTextEditorRegister\') {\n    $modx->event->output(\'TinyMCE\');\n    return;\n}\nrequire_once $modx->getOption(\'tiny.core_path\',null,$modx->getOption(\'core_path\').\'components/tinymce/\').\'tinymce.class.php\';\n$tiny = new TinyMCE($modx,$scriptProperties);\n\n$useEditor = $tiny->context->getOption(\'use_editor\',false);\n$whichEditor = $tiny->context->getOption(\'which_editor\',\'\');\n\n/* Handle event */\nswitch ($modx->event->name) {\n    case \'OnRichTextEditorInit\':\n        if ($useEditor && $whichEditor == \'TinyMCE\') {\n            unset($scriptProperties[\'chunk\']);\n            if (isset($forfrontend) || $modx->context->get(\'key\') != \'mgr\') {\n                $def = $tiny->context->getOption(\'cultureKey\',$tiny->context->getOption(\'manager_language\',\'en\'));\n                $tiny->properties[\'language\'] = $modx->getOption(\'fe_editor_lang\',array(),$def);\n                $tiny->properties[\'frontend\'] = true;\n                unset($def);\n            }\n            /* commenting these out as it causes problems with richtext tvs */\n            //if (isset($scriptProperties[\'resource\']) && !$resource->get(\'richtext\')) return;\n            //if (!isset($scriptProperties[\'resource\']) && !$modx->getOption(\'richtext_default\',null,false)) return;\n            $tiny->setProperties($scriptProperties);\n            $html = $tiny->initialize();\n            $modx->event->output($html);\n            unset($html);\n        }\n        break;\n    case \'OnRichTextBrowserInit\':\n        if ($useEditor && $whichEditor == \'TinyMCE\') {\n            $inRevo20 = (boolean)version_compare($modx->version[\'full_version\'],\'2.1.0-rc1\',\'<\');\n            $modx->getVersionData();\n            $source = $tiny->context->getOption(\'default_media_source\',null,1);\n            \n            $modx->controller->addHtml(\'<script type="text/javascript">var inRevo20 = \'.($inRevo20 ? 1 : 0).\';MODx.source = "\'.$source.\'";</script>\');\n            \n            $modx->controller->addJavascript($tiny->config[\'assetsUrl\'].\'jscripts/tiny_mce/tiny_mce_popup.js\');\n            if (file_exists($tiny->config[\'assetsPath\'].\'jscripts/tiny_mce/langs/\'.$tiny->properties[\'language\'].\'.js\')) {\n                $modx->controller->addJavascript($tiny->config[\'assetsUrl\'].\'jscripts/tiny_mce/langs/\'.$tiny->properties[\'language\'].\'.js\');\n            } else {\n                $modx->controller->addJavascript($tiny->config[\'assetsUrl\'].\'jscripts/tiny_mce/langs/en.js\');\n            }\n            $modx->controller->addJavascript($tiny->config[\'assetsUrl\'].\'tiny.browser.js\');\n            $modx->event->output(\'Tiny.browserCallback\');\n        }\n        return \'\';\n        break;\n\n   default: break;\n}\nreturn;', 0, 'a:39:{s:22:"accessibility_warnings";a:7:{s:4:"name";s:22:"accessibility_warnings";s:4:"desc";s:315:"If this option is set to true some accessibility warnings will be presented to the user if they miss specifying that information. This option is set to true by default, since we should all try to make this world a better place for disabled people. But if you are annoyed with the warnings, set this option to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:23:"apply_source_formatting";a:7:{s:4:"name";s:23:"apply_source_formatting";s:4:"desc";s:229:"This option enables you to tell TinyMCE to apply some source formatting to the output HTML code. With source formatting, the output HTML code is indented and formatted. Without source formatting, the output HTML is more compact. ";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:15:"button_tile_map";a:7:{s:4:"name";s:15:"button_tile_map";s:4:"desc";s:338:"If this option is set to true TinyMCE will use tiled images instead of individual images for most of the editor controls. This produces faster loading time since only one GIF image needs to be loaded instead of a GIF for each individual button. This option is set to false by default since it doesn\'t work with some DOCTYPE declarations. ";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:7:"cleanup";a:7:{s:4:"name";s:7:"cleanup";s:4:"desc";s:331:"This option enables or disables the built-in clean up functionality. TinyMCE is equipped with powerful clean up functionality that enables you to specify what elements and attributes are allowed and how HTML contents should be generated. This option is set to true by default, but if you want to disable it you may set it to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:18:"cleanup_on_startup";a:7:{s:4:"name";s:18:"cleanup_on_startup";s:4:"desc";s:135:"If you set this option to true, TinyMCE will perform a HTML cleanup call when the editor loads. This option is set to false by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:22:"convert_fonts_to_spans";a:7:{s:4:"name";s:22:"convert_fonts_to_spans";s:4:"desc";s:348:"If you set this option to true, TinyMCE will convert all font elements to span elements and generate span elements instead of font elements. This option should be used in order to get more W3C compatible code, since font elements are deprecated. How sizes get converted can be controlled by the font_size_classes and font_size_style_values options.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:23:"convert_newlines_to_brs";a:7:{s:4:"name";s:23:"convert_newlines_to_brs";s:4:"desc";s:128:"If you set this option to true, newline characters codes get converted into br elements. This option is set to false by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"convert_urls";a:7:{s:4:"name";s:12:"convert_urls";s:4:"desc";s:495:"This option enables you to control whether TinyMCE is to be clever and restore URLs to their original values. URLs are automatically converted (messed up) by default because the built-in browser logic works this way. There is no way to get the real URL unless you store it away. If you set this option to false it will try to keep these URLs intact. This option is set to true by default, which means URLs will be forced to be either absolute or relative depending on the state of relative_urls.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"dialog_type";a:7:{s:4:"name";s:11:"dialog_type";s:4:"desc";s:246:"This option enables you to specify how dialogs/popups should be opened. Possible values are "window" and "modal", where the window option opens a normal window and the dialog option opens a modal dialog. This option is set to "window" by default.";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{i:0;s:6:"window";s:4:"text";s:6:"Window";}i:1;a:2:{i:0;s:5:"modal";s:4:"text";s:5:"Modal";}}s:5:"value";s:6:"window";s:7:"lexicon";N;s:4:"area";s:0:"";}s:14:"directionality";a:7:{s:4:"name";s:14:"directionality";s:4:"desc";s:261:"This option specifies the default writing direction. Some languages (Like Hebrew, Arabic, Urdu...) write from right to left instead of left to right. The default value of this option is "ltr" but if you want to use from right to left mode specify "rtl" instead.";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:5:"value";s:3:"ltr";s:4:"text";s:13:"Left to Right";}i:1;a:2:{s:5:"value";s:3:"rtl";s:4:"text";s:13:"Right to Left";}}s:5:"value";s:3:"ltr";s:7:"lexicon";N;s:4:"area";s:0:"";}s:14:"element_format";a:7:{s:4:"name";s:14:"element_format";s:4:"desc";s:210:"This option enables control if elements should be in html or xhtml mode. xhtml is the default state for this option. This means that for example &lt;br /&gt; will be &lt;br&gt; if you set this option to "html".";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:5:"value";s:5:"xhtml";s:4:"text";s:5:"XHTML";}i:1;a:2:{s:5:"value";s:4:"html";s:4:"text";s:4:"HTML";}}s:5:"value";s:5:"xhtml";s:7:"lexicon";N;s:4:"area";s:0:"";}s:15:"entity_encoding";a:7:{s:4:"name";s:15:"entity_encoding";s:4:"desc";s:70:"This option controls how entities/characters get processed by TinyMCE.";s:4:"type";s:4:"list";s:7:"options";a:4:{i:0;a:2:{s:5:"value";s:0:"";s:4:"text";s:4:"None";}i:1;a:2:{s:5:"value";s:5:"named";s:4:"text";s:5:"Named";}i:2;a:2:{s:5:"value";s:7:"numeric";s:4:"text";s:7:"Numeric";}i:3;a:2:{s:5:"value";s:3:"raw";s:4:"text";s:3:"Raw";}}s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:16:"force_p_newlines";a:7:{s:4:"name";s:16:"force_p_newlines";s:4:"desc";s:147:"This option enables you to disable/enable the creation of paragraphs on return/enter in Mozilla/Firefox. The default value of this option is true. ";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:22:"force_hex_style_colors";a:7:{s:4:"name";s:22:"force_hex_style_colors";s:4:"desc";s:277:"This option enables you to control TinyMCE to force the color format to use hexadecimal instead of rgb strings. It converts for example "color: rgb(255, 255, 0)" to "#FFFF00". This option is set to true by default since otherwice MSIE and Firefox would differ in this behavior.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:6:"height";a:7:{s:4:"name";s:6:"height";s:4:"desc";s:38:"Sets the height of the TinyMCE editor.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:5:"400px";s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"indentation";a:7:{s:4:"name";s:11:"indentation";s:4:"desc";s:139:"This option allows specification of the indentation level for indent/outdent buttons in the UI. This defaults to 30px but can be any value.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"30px";s:7:"lexicon";N;s:4:"area";s:0:"";}s:16:"invalid_elements";a:7:{s:4:"name";s:16:"invalid_elements";s:4:"desc";s:163:"This option should contain a comma separated list of element names to exclude from the content. Elements in this list will removed when TinyMCE executes a cleanup.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:6:"nowrap";a:7:{s:4:"name";s:6:"nowrap";s:4:"desc";s:212:"This nowrap option enables you to control how whitespace is to be wordwrapped within the editor. This option is set to false by default, but if you enable it by setting it to true editor contents will never wrap.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:15:"object_resizing";a:7:{s:4:"name";s:15:"object_resizing";s:4:"desc";s:148:"This option gives you the ability to turn on/off the inline resizing controls of tables and images in Firefox/Mozilla. These are enabled by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"path_options";a:7:{s:4:"name";s:12:"path_options";s:4:"desc";s:119:"Sets a group of options. Note: This will override the relative_urls, document_base_url and remove_script_host settings.";s:4:"type";s:9:"textfield";s:7:"options";a:3:{i:0;a:2:{s:5:"value";s:11:"docrelative";s:4:"text";s:17:"Document Relative";}i:1;a:2:{s:5:"value";s:12:"rootrelative";s:4:"text";s:13:"Root Relative";}i:2;a:2:{s:5:"value";s:11:"fullpathurl";s:4:"text";s:13:"Full Path URL";}}s:5:"value";s:11:"docrelative";s:7:"lexicon";N;s:4:"area";s:0:"";}s:28:"plugin_insertdate_dateFormat";a:7:{s:4:"name";s:28:"plugin_insertdate_dateFormat";s:4:"desc";s:53:"Formatting of dates when using the InsertDate plugin.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"%Y-%m-%d";s:7:"lexicon";N;s:4:"area";s:0:"";}s:28:"plugin_insertdate_timeFormat";a:7:{s:4:"name";s:28:"plugin_insertdate_timeFormat";s:4:"desc";s:53:"Formatting of times when using the InsertDate plugin.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"%H:%M:%S";s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"preformatted";a:7:{s:4:"name";s:12:"preformatted";s:4:"desc";s:231:"If you enable this feature, whitespace such as tabs and spaces will be preserved. Much like the behavior of a &lt;pre&gt; element. This can be handy when integrating TinyMCE with webmail clients. This option is disabled by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"relative_urls";a:7:{s:4:"name";s:13:"relative_urls";s:4:"desc";s:231:"If this option is set to true, all URLs returned from the file manager will be relative from the specified document_base_url. If it is set to false all URLs will be converted to absolute URLs. This option is set to true by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:17:"remove_linebreaks";a:7:{s:4:"name";s:17:"remove_linebreaks";s:4:"desc";s:531:"This option controls whether line break characters should be removed from output HTML. This option is enabled by default because there are differences between browser implementations regarding what to do with white space in the DOM. Gecko and Safari place white space in text nodes in the DOM. IE and Opera remove them from the DOM and therefore the line breaks will automatically be removed in those. This option will normalize this behavior when enabled (true) and all browsers will have a white-space-stripped DOM serialization.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:18:"remove_script_host";a:7:{s:4:"name";s:18:"remove_script_host";s:4:"desc";s:221:"If this option is enabled the protocol and host part of the URLs returned from the file manager will be removed. This option is only used if the relative_urls option is set to false. This option is set to true by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:20:"remove_trailing_nbsp";a:7:{s:4:"name";s:20:"remove_trailing_nbsp";s:4:"desc";s:392:"This option enables you to specify that TinyMCE should remove any traling &nbsp; characters in block elements if you start to write inside them. Paragraphs are default padded with a &nbsp; and if you write text into such paragraphs the space will remain. Setting this option to true will remove the space. This option is set to false by default since the cursor jumps a bit in Gecko browsers.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:4:"skin";a:7:{s:4:"name";s:4:"skin";s:4:"desc";s:330:"This option enables you to specify what skin you want to use with your theme. A skin is basically a CSS file that gets loaded from the skins directory inside the theme. The advanced theme that TinyMCE comes with has two skins, these are called "default" and "o2k7". We added another skin named "cirkuit" that is chosen by default.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:7:"cirkuit";s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"skin_variant";a:7:{s:4:"name";s:12:"skin_variant";s:4:"desc";s:403:"This option enables you to specify a variant for the skin, for example "silver" or "black". "default" skin does not offer any variant, whereas "o2k7" default offers "silver" or "black" variants to the default one. For the "cirkuit" skin there\'s one variant named "silver". When creating a skin, additional variants may also be created, by adding ui_[variant_name].css files alongside the default ui.css.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:20:"table_inline_editing";a:7:{s:4:"name";s:20:"table_inline_editing";s:4:"desc";s:231:"This option gives you the ability to turn on/off the inline table editing controls in Firefox/Mozilla. According to the TinyMCE documentation, these controls are somewhat buggy and not redesignable, so they are disabled by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:22:"theme_advanced_disable";a:7:{s:4:"name";s:22:"theme_advanced_disable";s:4:"desc";s:111:"This option should contain a comma separated list of controls to disable from any toolbar row/panel in TinyMCE.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:19:"theme_advanced_path";a:7:{s:4:"name";s:19:"theme_advanced_path";s:4:"desc";s:331:"This option gives you the ability to enable/disable the element path. This option is only useful if the theme_advanced_statusbar_location option is set to "top" or "bottom". This option is set to "true" by default. Setting this option to "false" will effectively hide the path tool, though it still takes up room in the Status Bar.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:32:"theme_advanced_resize_horizontal";a:7:{s:4:"name";s:32:"theme_advanced_resize_horizontal";s:4:"desc";s:319:"This option gives you the ability to enable/disable the horizontal resizing. This option is only useful if the theme_advanced_statusbar_location option is set to "top" or "bottom" and when the theme_advanced_resizing is set to true. This option is set to true by default, allowing both resizing horizontal and vertical.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:23:"theme_advanced_resizing";a:7:{s:4:"name";s:23:"theme_advanced_resizing";s:4:"desc";s:216:"This option gives you the ability to enable/disable the resizing button. This option is only useful if the theme_advanced_statusbar_location option is set to "top" or "bottom". This option is set to false by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:33:"theme_advanced_statusbar_location";a:7:{s:4:"name";s:33:"theme_advanced_statusbar_location";s:4:"desc";s:257:"This option enables you to specify where the element statusbar with the path and resize tool should be located. This option can be set to "top" or "bottom". The default value is set to "top". This option can only be used when the theme is set to "advanced".";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:5:"value";s:3:"top";s:4:"text";s:3:"Top";}i:1;a:2:{s:5:"value";s:6:"bottom";s:4:"text";s:6:"Bottom";}}s:5:"value";s:6:"bottom";s:7:"lexicon";N;s:4:"area";s:0:"";}s:28:"theme_advanced_toolbar_align";a:7:{s:4:"name";s:28:"theme_advanced_toolbar_align";s:4:"desc";s:187:"This option enables you to specify the alignment of the toolbar, this value can be "left", "right" or "center" (the default). This option can only be used when theme is set to "advanced".";s:4:"type";s:9:"textfield";s:7:"options";a:3:{i:0;a:2:{s:5:"value";s:6:"center";s:4:"text";s:6:"Center";}i:1;a:2:{s:5:"value";s:4:"left";s:4:"text";s:4:"Left";}i:2;a:2:{s:5:"value";s:5:"right";s:4:"text";s:5:"Right";}}s:5:"value";s:4:"left";s:7:"lexicon";N;s:4:"area";s:0:"";}s:31:"theme_advanced_toolbar_location";a:7:{s:4:"name";s:31:"theme_advanced_toolbar_location";s:4:"desc";s:191:"\nThis option enables you to specify where the toolbar should be located. This option can be set to "top" or "bottom" (the defualt). This option can only be used when theme is set to advanced.";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:5:"value";s:3:"top";s:4:"text";s:3:"Top";}i:1;a:2:{s:5:"value";s:6:"bottom";s:4:"text";s:6:"Bottom";}}s:5:"value";s:3:"top";s:7:"lexicon";N;s:4:"area";s:0:"";}s:5:"width";a:7:{s:4:"name";s:5:"width";s:4:"desc";s:32:"The width of the TinyMCE editor.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"95%";s:7:"lexicon";N;s:4:"area";s:0:"";}s:33:"template_selected_content_classes";a:7:{s:4:"name";s:33:"template_selected_content_classes";s:4:"desc";s:234:"Specify a list of CSS class names for the template plugin. They must be separated by spaces. Any template element with one of the specified CSS classes will have its content replaced by the selected editor content when first inserted.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}}', 0, '', 0, ''),
(7, 0, 0, 'ClientConfig', 'Sets system settings from the Client Config CMP.', 0, 0, 0, '/**\n * ClientConfig\n *\n * Copyright 2011-2014 by Mark Hamstra <hello@markhamstra.com>\n *\n * ClientConfig is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * ClientConfig is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * ClientConfig; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package clientconfig\n *\n * @var modX $modx\n * @var int $id\n * @var string $mode\n * @var modResource $resource\n * @var modTemplate $template\n * @var modTemplateVar $tv\n * @var modChunk $chunk\n * @var modSnippet $snippet\n * @var modPlugin $plugin\n*/\n\n$eventName = $modx->event->name;\n\nswitch($eventName) {\n    case \'OnMODXInit\':\n        /* Grab the class */\n        $path = $modx->getOption(\'clientconfig.core_path\', null, $modx->getOption(\'core_path\') . \'components/clientconfig/\');\n        $path .= \'model/clientconfig/\';\n        $clientConfig = $modx->getService(\'clientconfig\',\'ClientConfig\', $path);\n\n        /* If we got the class (gotta be careful of failed migrations), grab settings and go! */\n        if ($clientConfig instanceof ClientConfig) {\n            $contextKey = $modx->context instanceof modContext ? $modx->context->get(\'key\') : \'web\';\n            $settings = $clientConfig->getSettings($contextKey);\n\n            /* Make settings available as [[++tags]] */\n            $modx->setPlaceholders($settings, \'+\');\n\n            /* Make settings available for $modx->getOption() */\n            foreach ($settings as $key => $value) {\n                $modx->setOption($key, $value);\n            }\n        }\n        break;\n}\n\nreturn;', 0, NULL, 0, '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_site_plugin_events`
--

CREATE TABLE `chisto_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_site_plugin_events`
--

INSERT INTO `chisto_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(1, 'OnChunkFormPrerender', 0, 0),
(1, 'OnDocFormPrerender', 0, 0),
(1, 'OnFileCreateFormPrerender', 0, 0),
(1, 'OnFileEditFormPrerender', 0, 0),
(1, 'OnManagerPageBeforeRender', 0, 0),
(1, 'OnPluginFormPrerender', 0, 0),
(1, 'OnRichTextEditorRegister', 0, 0),
(1, 'OnSnipFormPrerender', 0, 0),
(1, 'OnTempFormPrerender', 0, 0),
(2, 'OnDocFormPrerender', 0, 0),
(2, 'OnTVInputPropertiesList', 0, 0),
(2, 'OnTVInputRenderList', 1, 0),
(3, 'OnDocFormPrerender', 0, 0),
(4, 'OnFileManagerUpload', 0, 0),
(5, 'OnMODXInit', -100, 0),
(5, 'OnSiteRefresh', 0, 0),
(5, 'OnWebPagePrerender', -100, 0),
(6, 'OnRichTextBrowserInit', 0, 0),
(6, 'OnRichTextEditorInit', 0, 0),
(6, 'OnRichTextEditorRegister', 0, 0),
(7, 'OnMODXInit', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_site_snippets`
--

CREATE TABLE `chisto_site_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_site_snippets`
--

INSERT INTO `chisto_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'BackupMODXWidget', 'Backup MODX Dashboard widget', 0, 1, 0, '/**\n * BackupMODXWidget snippet for backupmodx extra\n *\n * Copyright 2015 by Quadro - Jan Dähne info@quadro-system.de\n * Created on 12-16-2015\n *\n * backupmodx is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * backupmodx is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * backupmodx; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package backupmodx\n */\n\n/**\n * Description\n * -----------\n * Backup MODX Dashboard widget\n *\n * Variables\n * ---------\n * @var $modx modX\n * @var $scriptProperties array\n *\n * @package backupmodx\n **/\n\n\n// Returns an empty string if user shouldn\'t see the widget\n$groups = $modx->getOption(\'groups\', $scriptProperties, \'Administrator\', true);\nif (strpos($groups, \',\') !== false) {\n	$groups = explode(\',\', $groups);\n}\nif (!$modx->user->isMember($groups)) {\n	return \'\';\n}\n\n\n//Check if server supports shell-commands\nif (!shell_exec("type type")) { return \'Your server does not support shell-commands. Backup not possible.\'; }\n\n\n$config = $modx->getConfig();\n\n//Get Properties\n$tarAlias = $modx->getOption(\'tarAlias\', $scriptProperties, \'tar\', true); //some websites may need a different alias for tar\n$excludes = $modx->getOption(\'excludes\', $scriptProperties);\n$targetPath = str_replace("{assets_path}", MODX_ASSETS_PATH, $modx->getOption(\'targetPath\', $scriptProperties)); //directory to place the backup\n$targetPath = rtrim($targetPath, \'/\').\'/backup\'; //removing trailing slash and adding backup-folder\n\n\n\nif(!function_exists(fileLink)) {\n    function fileLink($file, $title) {\n        $file_root = MODX_BASE_PATH.str_replace(MODX_BASE_PATH, "", $file);\n        $file_absolute = MODX_SITE_URL.str_replace(MODX_BASE_PATH, "", $file);\n\n        $size = round(filesize($file) / 1000000, 2);\n\n        if (file_exists($file_root)){\n            $file = \'<a href="\'.$file_absolute.\'" target="_blank" download>\'.basename($file).\'</a>\';\n        }else {\n            $file = basename($file);\n        }\n        \n        return \'<span style="display: inline-block; width: 90px;">\'.$title.\':</span>\'.$file.\' (\'.$size.\' MB)\';\n    }\n}\n\n\nif (isset($_POST[\'backupMODX\'])) {\n\n	set_time_limit(0);\n	ini_set(\'max_execution_time\', 0);\n\n	if (!empty($_POST["mysql"]) or !empty($_POST["files"])){\n		$base_path = MODX_BASE_PATH;\n		$core_path = MODX_CORE_PATH;\n		$date = date("Ymd-His");\n		$dbase = $modx->getOption(\'dbname\');\n		$database_server = $config[host];\n		$database_user = $config[username];\n		$database_password = $config[password];\n		$targetSql = "{$targetPath}/{$dbase}_{$date}_mysql.sql";\n		$targetTar = "{$targetPath}/{$dbase}_{$date}_files.tar";\n		$targetCom = "{$targetPath}/{$dbase}_{$date}_combined.tar";\n		$targetTxt = "{$targetPath}/{$dbase}_{$date}_readme.txt";\n\n\n		//Create Folder\n		system("mkdir $targetPath");\n		\n		\n        //Create Readme\n        if (!empty($_POST["note"])){\n            $fp = fopen($targetTxt,"wb");\n            fwrite($fp,$_POST["note"]);\n            fclose($fp);\n        }\n        \n		\n		//MySQL- Backup\n		if (!empty($_POST["mysql"])){\n			\n			system("mysqldump --host=$database_server --user=$database_user --password=$database_password --databases $dbase --no-create-db --default-character-set=utf8 --result-file={$targetSql}");\n			\n			//If no mysqldump was possible try:\n			if (file_exists($targetSql) or filesize($targetSql) <= 0) {\n				system(sprintf(\'mysqldump --no-tablespaces --opt -h%s -u%s -p"%s" %s --result-file=%s\', $database_server, $database_user, $database_password, $dbase, $targetSql));\n			}\n		}\n		\n		//File-Backup\n		if (!empty($_POST["files"])){\n		    \n		    //creating exclude-files command\n		    if (!empty($excludes)) {\n		        $excludes_array = explode(",", $excludes);\n		        unset($excludes);\n		        foreach ($excludes_array as $exclude){\n		            $excludes .= \' --exclude=\'.$exclude;\n		        }\n		    }\n		    \n		    //tar files\n			system("$tarAlias cf {$targetTar} --exclude=$targetPath --exclude={$core_path}cache/* {$excludes} $base_path $core_path");\n			\n			//If a note exists add it to the tar-archive\n			if (file_exists($targetTxt)) {\n			    system("$tarAlias uf {$targetTar} -C $targetPath {$dbase}_{$date}_readme.txt"); //adding note in the root\n			}\n		}\n		\n		\n		//Combine SQL and Files in one archive\n		if (file_exists($targetSql) and file_exists($targetTar) and filesize($targetSql) > 0) {\n			system("cp {$targetTar} {$targetCom}"); //copy files-archive\n			system("$tarAlias uf {$targetCom} -C $targetPath {$dbase}_{$date}_mysql.sql"); //adding sql-file in the root\n		}\n		\n		$backup = true;\n\n		//Output\n		if (file_exists($targetSql) and filesize($targetSql) > 0) {\n			$mysql_link = fileLink($targetSql, \'MySQL\');\n		}else {\n		    $mysql_link = \'<span style="display: inline-block; width: 90px;">MySQL:</span>No Backup!\';\n		}\n		if (file_exists($targetTar)) {\n			$files_link = fileLink($targetTar, \'Files\');\n		}else {\n		    $files_link = \'<span style="display: inline-block; width: 90px;">Files:</span>No Backup!\';\n		}\n		if (file_exists($targetCom)) {\n			$combi_link = fileLink($targetCom, \'MySQL & Files\');\n		}\n		\n	}\n}\n\n\n\n\n//Remove Backups\nif (!empty($_POST["removeBackup"])){\n	if (!empty($_POST["removeBackup"])) {\n		foreach(glob("$targetPath/*") as $file) {\n			$extension = pathinfo($file, PATHINFO_EXTENSION);\n			if (in_array($extension, array("tar", "sql", "txt"))) {\n			    unlink($file);\n			}\n		}\n		rmdir($targetPath);\n	}\n}\n\n\n\n\nif ($backup != true) {\n\n	echo \'\n		<form method="post" action="">\n			<p>\n				Backup your MODX-Site:<br><br>\n				<input type="checkbox" name="mysql" id="mysql" value="1" checked><label for="mysql"> MySQL Database</label><br />\n				<input type="checkbox" name="files" id="files" value="1" checked><label for="files"> Files</label>\n			</p>\n			<br>\n			<p>\n				Folder to place files: <strong>\'.$targetPath.\'</strong> <span style="color: grey;">(Editable via Snippet-Properties)</span><br>\n			</p><br>\n			\n			<p>Add a readme file: <span style="color: grey;">(txt-file placed in the root)</span></p>\n			<textarea name="note" style="width:90%; height:40px; display: block; border: 1px solid #ccc; margin: 5px 0 20px 0; padding: 5px;" placeholder="place your notes here..."></textarea>\n			\n			<input class="x-btn x-btn-small x-btn-icon-small-left primary-button x-btn-noicon" type="submit" name="backupMODX" value="Backup Site!">\n		</form>\';\n}else {\n	if ($backup == true) {\n		echo\'\n			<form method="post" action="">\n				<h3 style="color:grey">Backup Finished!</h3>\n				<p>\n					\'.$mysql_link.\'<br>\n					\'.$files_link.\'<br>\n					\'.$combi_link.\'\n				</p><br>\n				<input class="x-btn x-btn-small x-btn-icon-small-left primary-button x-btn-noicon" type="submit" name="removeBackup" value="Remove Backups">\n			</form>\';\n	}\n}', 0, 'a:4:{s:8:"excludes";a:7:{s:4:"name";s:8:"excludes";s:4:"desc";s:156:"file/folder, or comma-separated list of files/folders who will be excluded of the backup. Using file-path from the root. Example: /html/assets,/html/manager";s:4:"type";s:8:"textarea";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:6:"groups";a:7:{s:4:"name";s:6:"groups";s:4:"desc";s:65:"group, or comma-separated list of groups, who will see the widget";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:13:"Administrator";s:7:"lexicon";s:21:"backupmodx:properties";s:4:"area";s:0:"";}s:8:"tarAlias";a:7:{s:4:"name";s:8:"tarAlias";s:4:"desc";s:51:"some server need an alias for tar like "/bin/pktar"";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:3:"tar";s:7:"lexicon";N;s:4:"area";s:0:"";}s:10:"targetPath";a:7:{s:4:"name";s:10:"targetPath";s:4:"desc";s:144:"Directory of the backup files. No trailing slash! You can use {assets_path} as a placeholder for the assets folder. Example: {assets_path}folder";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:13:"{assets_path}";s:7:"lexicon";N;s:4:"area";s:0:"";}}', '', 0, ''),
(2, 0, 0, 'getImageList', '', 0, 2, 0, '/**\n * getImageList\n *\n * Copyright 2009-2014 by Bruno Perner <b.perner@gmx.de>\n *\n * getImageList is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * getImageList is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * getImageList; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * getImageList\n *\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \n *\n * @version 1.4\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2009-2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*example: <ul>[[!getImageList? &tvname=`myTV`&tpl=`@CODE:<li>[[+idx]]<img src="[[+imageURL]]"/><p>[[+imageAlt]]</p></li>`]]</ul>*/\n/* get default properties */\n\n\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$inherit_children_tvname = $modx->getOption(\'inherit_children_tvname\', $scriptProperties, \'\');\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\n$wrapperTpl = $modx->getOption(\'wrapperTpl\', $scriptProperties, \'\');\n$emptyTpl = $modx->getOption(\'emptyTpl\', $scriptProperties, \'\'); \n$limit = $modx->getOption(\'limit\', $scriptProperties, \'0\');\n$offset = $modx->getOption(\'offset\', $scriptProperties, 0);\n$totalVar = $modx->getOption(\'totalVar\', $scriptProperties, \'total\');\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\n$preselectLimit = $modx->getOption(\'preselectLimit\', $scriptProperties, 0); // when random preselect important images\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sort = $modx->getOption(\'sort\', $scriptProperties, \'\');\n$sort = !empty($sort) ? $modx->fromJSON($sort) : array();\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\', $scriptProperties, false);\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \'\');\n$splitSeparator = $modx->getOption(\'splitSeparator\', $scriptProperties, \'\');\n$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'MIGX_id\');\n$toJsonPlaceholder = $modx->getOption(\'toJsonPlaceholder\', $scriptProperties, false);\n$jsonVarKey = $modx->getOption(\'jsonVarKey\', $scriptProperties, \'migx_outputvalue\');\n$outputvalue = $modx->getOption(\'value\', $scriptProperties, \'\');\n$outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n$docidVarKey = $modx->getOption(\'docidVarKey\', $scriptProperties, \'migx_docid\');\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\n$docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\n$reverse = $modx->getOption(\'reverse\', $scriptProperties, \'0\');\n$sumFields = $modx->getOption(\'sumFields\', $scriptProperties, \'\');\n$sumPrefix = $modx->getOption(\'sumPrefix\', $scriptProperties, \'summary_\');\n$addfields = $modx->getOption(\'addfields\', $scriptProperties, \'\');\n$addfields = !empty($addfields) ? explode(\',\', $addfields) : null;\n//split json into parts\n$splits = $modx->fromJson($modx->getOption(\'splits\', $scriptProperties, 0));\n$splitTpl = $modx->getOption(\'splitTpl\', $scriptProperties, \'\');\n$splitSeparator = $modx->getOption(\'splitSeparator\', $scriptProperties, \'\');\n$inheritFrom = $modx->getOption(\'inheritFrom\', $scriptProperties, \'\'); //commaseparated list of resource-ids or/and the keyword \'parents\' where to inherit from\n$inheritFrom = !empty($inheritFrom) ? explode(\',\', $inheritFrom) : \'\';\n\n$modx->setPlaceholder(\'docid\', $docid);\n\n$base_path = $modx->getOption(\'base_path\', null, MODX_BASE_PATH);\n$base_url = $modx->getOption(\'base_url\', null, MODX_BASE_URL);\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : \'web\';\n\nif (!empty($tvname)) {\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(\'input_properties\');\n        $properties = isset($properties[\'formtabs\']) ? $properties : $tv->getProperties();\n\n        $migx->config[\'configs\'] = $modx->getOption(\'configs\', $properties, \'\');\n        if (!empty($migx->config[\'configs\'])) {\n            $migx->loadConfigs();\n            // get tabs from file or migx-config-table\n            $formtabs = $migx->getTabs();\n        }\n        if (empty($formtabs) && isset($properties[\'formtabs\'])) {\n            //try to get formtabs and its fields from properties\n            $formtabs = $modx->fromJSON($properties[\'formtabs\']);\n        }\n\n        if (!empty($properties[\'basePath\'])) {\n            if ($properties[\'autoResourceFolders\'] == \'true\') {\n                $scriptProperties[\'base_path\'] = $base_path . $properties[\'basePath\'] . $docid . \'/\';\n                $scriptProperties[\'base_url\'] = $base_url . $properties[\'basePath\'] . $docid . \'/\';\n            } else {\n                $scriptProperties[\'base_path\'] = $base_path . $properties[\'base_path\'];\n                $scriptProperties[\'base_url\'] = $base_url . $properties[\'basePath\'];\n            }\n        }\n        if ($jsonVarKey == \'migx_outputvalue\' && !empty($properties[\'jsonvarkey\'])) {\n            $jsonVarKey = $properties[\'jsonvarkey\'];\n            $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n        }\n\n        if (empty($outputvalue)) {\n            $outputvalue = $tv->renderOutput($docid);\n            if (empty($outputvalue) && !empty($inheritFrom)) {\n                foreach ($inheritFrom as $from) {\n                    if ($from == \'parents\') {\n                        if (!empty($inherit_children_tvname)){\n                            //try to get items from optional MIGX-TV for children\n                            if ($inh_tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inherit_children_tvname))) {\n                                $outputvalue = $inh_tv->processInheritBinding(\'\', $docid);    \n                            }\n                        }\n                        $outputvalue = empty($outputvalue) ? $tv->processInheritBinding(\'\', $docid) : $outputvalue;\n                    } else {\n                        $outputvalue = $tv->renderOutput($from);\n                    }\n                    if (!empty($outputvalue)) {\n                        break;\n                    }\n                }\n            }\n        }\n\n\n        /*\n        *   get inputTvs \n        */\n        $inputTvs = array();\n        if (is_array($formtabs)) {\n\n            //multiple different Forms\n            // Note: use same field-names and inputTVs in all forms\n            $inputTvs = $migx->extractInputTvs($formtabs);\n        }\n        if ($migx->source = $tv->getSource($migx->working_context, false)) {\n            $migx->source->initialize();\n        }\n\n    }\n\n\n}\n\nif (empty($outputvalue)) {\n    $modx->setPlaceholder($totalVar, 0);\n    return \'\';\n}\n\n//echo $outputvalue.\'<br/><br/>\';\n\n$items = $modx->fromJSON($outputvalue);\n\n// where filter\nif (is_array($where) && count($where) > 0) {\n    $items = $migx->filterItems($where, $items);\n}\n$modx->setPlaceholder($totalVar, count($items));\n\nif (!empty($reverse)) {\n    $items = array_reverse($items);\n}\n\n// sort items\nif (is_array($sort) && count($sort) > 0) {\n    $items = $migx->sortDbResult($items, $sort);\n}\n\n$summaries = array();\n$output = \'\';\n$items = $offset > 0 ? array_slice($items, $offset) : $items;\n$count = count($items);\n\nif ($count > 0) {\n    $limit = $limit == 0 || $limit > $count ? $count : $limit;\n    $preselectLimit = $preselectLimit > $count ? $count : $preselectLimit;\n    //preselect important items\n    $preitems = array();\n    if ($randomize && $preselectLimit > 0) {\n        for ($i = 0; $i < $preselectLimit; $i++) {\n            $preitems[] = $items[$i];\n            unset($items[$i]);\n        }\n        $limit = $limit - count($preitems);\n    }\n\n    //shuffle items\n    if ($randomize) {\n        shuffle($items);\n    }\n\n    //limit items\n    $count = count($items);\n    $tempitems = array();\n\n    for ($i = 0; $i < $limit; $i++) {\n        if ($i >= $count) {\n            break;\n        }\n        $tempitems[] = $items[$i];\n    }\n    $items = $tempitems;\n\n    //add preselected items and schuffle again\n    if ($randomize && $preselectLimit > 0) {\n        $items = array_merge($preitems, $items);\n        shuffle($items);\n    }\n\n    $properties = array();\n    foreach ($scriptProperties as $property => $value) {\n        $properties[\'property.\' . $property] = $value;\n    }\n\n    $idx = 0;\n    $output = array();\n    $template = array();\n    $count = count($items);\n\n    foreach ($items as $key => $item) {\n        $formname = isset($item[\'MIGX_formname\']) ? $item[\'MIGX_formname\'] . \'_\' : \'\';\n        $fields = array();\n        foreach ($item as $field => $value) {\n            if (is_array($value)) {\n                if (is_array($value[0])) {\n                    //nested array - convert to json\n                    $value = $modx->toJson($value);\n                } else {\n                    $value = implode(\'||\', $value); //handle arrays (checkboxes, multiselects)\n                }\n            }\n\n\n            $inputTVkey = $formname . $field;\n\n            if ($processTVs && isset($inputTvs[$inputTVkey])) {\n                if (isset($inputTvs[$inputTVkey][\'inputTV\']) && $tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$inputTVkey][\'inputTV\']))) {\n\n                } else {\n                    $tv = $modx->newObject(\'modTemplateVar\');\n                    $tv->set(\'type\', $inputTvs[$inputTVkey][\'inputTVtype\']);\n                }\n                $inputTV = $inputTvs[$inputTVkey];\n\n                $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\n                //don\'t manipulate any urls here\n                $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\n                $tv->set(\'default_text\', $value);\n                $value = $tv->renderOutput($docid);\n                //set option back\n                $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\n                //now manipulate urls\n                if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\n                    $mTypes = explode(\',\', $mTypes);\n                    if (!empty($value) && in_array($tv->get(\'type\'), $mTypes)) {\n                        //$value = $mediasource->prepareOutputUrl($value);\n                        $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\n                    }\n                }\n\n            }\n            $fields[$field] = $value;\n\n        }\n\n        if (!empty($addfields)) {\n            foreach ($addfields as $addfield) {\n                $addfield = explode(\':\', $addfield);\n                $addname = $addfield[0];\n                $adddefault = isset($addfield[1]) ? $addfield[1] : \'\';\n                $fields[$addname] = $adddefault;\n            }\n        }\n\n        if (!empty($sumFields)) {\n            $sumFields = is_array($sumFields) ? $sumFields : explode(\',\', $sumFields);\n            foreach ($sumFields as $sumField) {\n                if (isset($fields[$sumField])) {\n                    $summaries[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField] + $fields[$sumField];\n                    $fields[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField];\n                }\n            }\n        }\n\n\n        if ($toJsonPlaceholder) {\n            $output[] = $fields;\n        } else {\n            $fields[\'_alt\'] = $idx % 2;\n            $idx++;\n            $fields[\'_first\'] = $idx == 1 ? true : \'\';\n            $fields[\'_last\'] = $idx == $limit ? true : \'\';\n            $fields[\'idx\'] = $idx;\n            $rowtpl = \'\';\n            //get changing tpls from field\n            if (substr($tpl, 0, 7) == "@FIELD:") {\n                $tplField = substr($tpl, 7);\n                $rowtpl = $fields[$tplField];\n            }\n\n            if ($fields[\'_first\'] && !empty($tplFirst)) {\n                $rowtpl = $tplFirst;\n            }\n            if ($fields[\'_last\'] && empty($rowtpl) && !empty($tplLast)) {\n                $rowtpl = $tplLast;\n            }\n            $tplidx = \'tpl_\' . $idx;\n            if (empty($rowtpl) && !empty($$tplidx)) {\n                $rowtpl = $$tplidx;\n            }\n            if ($idx > 1 && empty($rowtpl)) {\n                $divisors = $migx->getDivisors($idx);\n                if (!empty($divisors)) {\n                    foreach ($divisors as $divisor) {\n                        $tplnth = \'tpl_n\' . $divisor;\n                        if (!empty($$tplnth)) {\n                            $rowtpl = $$tplnth;\n                            if (!empty($rowtpl)) {\n                                break;\n                            }\n                        }\n                    }\n                }\n            }\n\n            if ($count == 1 && isset($tpl_oneresult)) {\n                $rowtpl = $tpl_oneresult;\n            }\n\n            $fields = array_merge($fields, $properties);\n\n            if (!empty($rowtpl)) {\n                $template = $migx->getTemplate($tpl, $template);\n                $fields[\'_tpl\'] = $template[$tpl];\n            } else {\n                $rowtpl = $tpl;\n\n            }\n            $template = $migx->getTemplate($rowtpl, $template);\n\n\n            if ($template[$rowtpl]) {\n                $chunk = $modx->newObject(\'modChunk\');\n                $chunk->setCacheable(false);\n                $chunk->setContent($template[$rowtpl]);\n\n\n                if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField])) {\n                    $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\n                } else {\n                    $output[] = $chunk->process($fields);\n                }\n            } else {\n                if (!empty($placeholdersKeyField)) {\n                    $output[$fields[$placeholdersKeyField]] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n                } else {\n                    $output[] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n                }\n            }\n        }\n\n\n    }\n}\n\nif (count($summaries) > 0) {\n    $modx->toPlaceholders($summaries);\n}\n\n\nif ($toJsonPlaceholder) {\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\n    return \'\';\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\n    return \'\';\n}\n/*\nif (!empty($outerTpl))\n$o = parseTpl($outerTpl, array(\'output\'=>implode($outputSeparator, $output)));\nelse \n*/\n\nif ($count > 0 && $splits > 0) {\n    $size = ceil($count / $splits);\n    $chunks = array_chunk($output, $size);\n    $output = array();\n    foreach ($chunks as $chunk) {\n        $o = implode($outputSeparator, $chunk);\n        $output[] = $modx->getChunk($splitTpl, array(\'output\' => $o));\n    }\n    $outputSeparator = $splitSeparator;\n}\n\nif (is_array($output)) {\n    $o = implode($outputSeparator, $output);\n} else {\n    $o = $output;\n}\n\nif (!empty($o) && !empty($wrapperTpl)) {\n    $template = $migx->getTemplate($wrapperTpl);\n    if ($template[$wrapperTpl]) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$wrapperTpl]);\n        $properties[\'output\'] = $o;\n        $o = $chunk->process($properties);\n    }\n}\n\nif (empty($o) && !empty($emptyTpl)) {\n    $template = $migx->getTemplate($emptyTpl);\n    if ($template[$emptyTpl]) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$emptyTpl]);\n        $o = $chunk->process($properties);\n    }\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $o);\n    return \'\';\n}\n\nreturn $o;', 0, 'a:0:{}', '', 0, ''),
(3, 0, 0, 'migxGetRelations', '', 0, 2, 0, '$id = $modx->getOption(\'id\', $scriptProperties, $modx->resource->get(\'id\'));\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, \'\');\n$element = $modx->getOption(\'element\', $scriptProperties, \'getResources\');\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \',\');\n$sourceWhere = $modx->getOption(\'sourceWhere\', $scriptProperties, \'\');\n$ignoreRelationIfEmpty = $modx->getOption(\'ignoreRelationIfEmpty\', $scriptProperties, false);\n$inheritFromParents = $modx->getOption(\'inheritFromParents\', $scriptProperties, false);\n$parentIDs = $inheritFromParents ? array_merge(array($id), $modx->getParentIds($id)) : array($id);\n\n$packageName = \'resourcerelations\';\n\n$packagepath = $modx->getOption(\'core_path\') . \'components/\' . $packageName . \'/\';\n$modelpath = $packagepath . \'model/\';\n\n$modx->addPackage($packageName, $modelpath, $prefix);\n$classname = \'rrResourceRelation\';\n$output = \'\';\n\nforeach ($parentIDs as $id) {\n    if (!empty($id)) {\n        $output = \'\';\n                \n        $c = $modx->newQuery($classname, array(\'target_id\' => $id, \'published\' => \'1\'));\n        $c->select($modx->getSelectColumns($classname, $classname));\n\n        if (!empty($sourceWhere)) {\n            $sourceWhere_ar = $modx->fromJson($sourceWhere);\n            if (is_array($sourceWhere_ar)) {\n                $where = array();\n                foreach ($sourceWhere_ar as $key => $value) {\n                    $where[\'Source.\' . $key] = $value;\n                }\n                $joinclass = \'modResource\';\n                $joinalias = \'Source\';\n                $selectfields = \'id\';\n                $selectfields = !empty($selectfields) ? explode(\',\', $selectfields) : null;\n                $c->leftjoin($joinclass, $joinalias);\n                $c->select($modx->getSelectColumns($joinclass, $joinalias, $joinalias . \'_\', $selectfields));\n                $c->where($where);\n            }\n        }\n\n        //$c->prepare(); echo $c->toSql();\n        if ($c->prepare() && $c->stmt->execute()) {\n            $collection = $c->stmt->fetchAll(PDO::FETCH_ASSOC);\n        }\n        \n        foreach ($collection as $row) {\n            $ids[] = $row[\'source_id\'];\n        }\n        $output = implode($outputSeparator, $ids);\n    }\n    if (!empty($output)){\n        break;\n    }\n}\n\n\nif (!empty($element)) {\n    if (empty($output) && $ignoreRelationIfEmpty) {\n        return $modx->runSnippet($element, $scriptProperties);\n    } else {\n        $scriptProperties[\'resources\'] = $output;\n        $scriptProperties[\'parents\'] = \'9999999\';\n        return $modx->runSnippet($element, $scriptProperties);\n    }\n\n\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n    return \'\';\n}\n\nreturn $output;', 0, '', '', 0, ''),
(4, 0, 0, 'migx', '', 0, 2, 0, '$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\n$limit = $modx->getOption(\'limit\', $scriptProperties, \'0\');\n$offset = $modx->getOption(\'offset\', $scriptProperties, 0);\n$totalVar = $modx->getOption(\'totalVar\', $scriptProperties, \'total\');\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\n$preselectLimit = $modx->getOption(\'preselectLimit\', $scriptProperties, 0); // when random preselect important images\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sortConfig = $modx->getOption(\'sortConfig\', $scriptProperties, \'\');\n$sortConfig = !empty($sortConfig) ? $modx->fromJSON($sortConfig) : array();\n$configs = $modx->getOption(\'configs\', $scriptProperties, \'\');\n$configs = !empty($configs) ? explode(\',\',$configs):array();\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\', $scriptProperties, false);\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \'\');\n//$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'MIGX_id\');\n$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'id\');\n$toJsonPlaceholder = $modx->getOption(\'toJsonPlaceholder\', $scriptProperties, false);\n$jsonVarKey = $modx->getOption(\'jsonVarKey\', $scriptProperties, \'migx_outputvalue\');\n$outputvalue = $modx->getOption(\'value\', $scriptProperties, \'\');\n$outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n$docidVarKey = $modx->getOption(\'docidVarKey\', $scriptProperties, \'migx_docid\');\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\n$docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\n\n$base_path = $modx->getOption(\'base_path\', null, MODX_BASE_PATH);\n$base_url = $modx->getOption(\'base_url\', null, MODX_BASE_URL);\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n//$modx->migx = &$migx;\n$defaultcontext = \'web\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n\nif (!empty($tvname))\n{\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname)))\n    {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(\'input_properties\');\n        $properties = isset($properties[\'configs\']) ? $properties : $tv->getProperties();\n        $cfgs = $modx->getOption(\'configs\',$properties,\'\');\n        if (!empty($cfgs)){\n            $cfgs = explode(\',\',$cfgs);\n            $configs = array_merge($configs,$cfgs);\n           \n        }\n        \n    }\n}\n\n\n\n//$migx->config[\'configs\'] = implode(\',\',$configs);\n$migx->loadConfigs(false,true,array(\'configs\'=>implode(\',\',$configs)));\n$migx->customconfigs = array_merge($migx->customconfigs,$scriptProperties);\n\n\n\n// get tabs from file or migx-config-table\n$formtabs = $migx->getTabs();\nif (empty($formtabs))\n{\n    //try to get formtabs and its fields from properties\n    $formtabs = $modx->fromJSON($properties[\'formtabs\']);\n}\n\nif ($jsonVarKey == \'migx_outputvalue\' && !empty($properties[\'jsonvarkey\']))\n{\n    $jsonVarKey = $properties[\'jsonvarkey\'];\n    $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n}\n\n$outputvalue = $tv && empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\n/*\n*   get inputTvs \n*/\n$inputTvs = array();\nif (is_array($formtabs))\n{\n\n    //multiple different Forms\n    // Note: use same field-names and inputTVs in all forms\n    $inputTvs = $migx->extractInputTvs($formtabs);\n}\n\nif ($tv)\n{\n    $migx->source = $tv->getSource($migx->working_context, false);\n}\n\n//$task = $modx->migx->getTask();\n$filename = \'getlist.php\';\n$processorspath = $migx->config[\'processorsPath\'] . \'mgr/\';\n$filenames = array();\n$scriptProperties[\'start\'] = $modx->getOption(\'offset\', $scriptProperties, 0);\nif ($processor_file = $migx->findProcessor($processorspath, $filename, $filenames))\n{\n    include ($processor_file);\n    //todo: add getlist-processor for default-MIGX-TV\n}\n\n$items = isset($rows) && is_array($rows) ? $rows : array();\n$modx->setPlaceholder($totalVar, isset($count) ? $count : 0);\n\n$properties = array();\nforeach ($scriptProperties as $property => $value)\n{\n    $properties[\'property.\' . $property] = $value;\n}\n\n$idx = 0;\n$output = array();\nforeach ($items as $key => $item)\n{\n\n    $fields = array();\n    foreach ($item as $field => $value)\n    {\n        $value = is_array($value) ? implode(\'||\', $value) : $value; //handle arrays (checkboxes, multiselects)\n        if ($processTVs && isset($inputTvs[$field]))\n        {\n            if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$field][\'inputTV\'])))\n            {\n\n            } else\n            {\n                $tv = $modx->newObject(\'modTemplateVar\');\n                $tv->set(\'type\', $inputTvs[$field][\'inputTVtype\']);\n            }\n            $inputTV = $inputTvs[$field];\n\n            $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\n            //don\'t manipulate any urls here\n            $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\n            $tv->set(\'default_text\', $value);\n            $value = $tv->renderOutput($docid);\n            //set option back\n            $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\n            //now manipulate urls\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv))\n            {\n                $mTypes = explode(\',\', $mTypes);\n                if (!empty($value) && in_array($tv->get(\'type\'), $mTypes))\n                {\n                    //$value = $mediasource->prepareOutputUrl($value);\n                    $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\n                }\n            }\n\n        }\n        $fields[$field] = $value;\n\n    }\n    if ($toJsonPlaceholder)\n    {\n        $output[] = $fields;\n    } else\n    {\n        $fields[\'_alt\'] = $idx % 2;\n        $idx++;\n        $fields[\'_first\'] = $idx == 1 ? true : \'\';\n        $fields[\'_last\'] = $idx == $limit ? true : \'\';\n        $fields[\'idx\'] = $idx;\n        $rowtpl = $tpl;\n        //get changing tpls from field\n        if (substr($tpl, 0, 7) == "@FIELD:")\n        {\n            $tplField = substr($tpl, 7);\n            $rowtpl = $fields[$tplField];\n        }\n\n        if (!isset($template[$rowtpl]))\n        {\n            if (substr($rowtpl, 0, 6) == "@FILE:")\n            {\n                $template[$rowtpl] = file_get_contents($modx->config[\'base_path\'] . substr($rowtpl, 6));\n            } elseif (substr($rowtpl, 0, 6) == "@CODE:")\n            {\n                $template[$rowtpl] = substr($tpl, 6);\n            } elseif ($chunk = $modx->getObject(\'modChunk\', array(\'name\' => $rowtpl), true))\n            {\n                $template[$rowtpl] = $chunk->getContent();\n            } else\n            {\n                $template[$rowtpl] = false;\n            }\n        }\n\n        $fields = array_merge($fields, $properties);\n\n        if ($template[$rowtpl])\n        {\n            $chunk = $modx->newObject(\'modChunk\');\n            $chunk->setCacheable(false);\n            $chunk->setContent($template[$rowtpl]);\n            if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField]))\n            {\n                $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\n            } else\n            {\n                $output[] = $chunk->process($fields);\n            }\n        } else\n        {\n            if (!empty($placeholdersKeyField))\n            {\n                $output[$fields[$placeholdersKeyField]] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n            } else\n            {\n                $output[] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n            }\n        }\n    }\n\n\n}\n\n\nif ($toJsonPlaceholder)\n{\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\n    return \'\';\n}\n\nif (!empty($toSeparatePlaceholders))\n{\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\n    return \'\';\n}\n/*\nif (!empty($outerTpl))\n$o = parseTpl($outerTpl, array(\'output\'=>implode($outputSeparator, $output)));\nelse \n*/\nif (is_array($output))\n{\n    $o = implode($outputSeparator, $output);\n} else\n{\n    $o = $output;\n}\n\nif (!empty($toPlaceholder))\n{\n    $modx->setPlaceholder($toPlaceholder, $o);\n    return \'\';\n}\n\nreturn $o;', 0, '', '', 0, ''),
(5, 0, 0, 'migxLoopCollection', '', 0, 2, 0, '/*\ngetXpdoInstanceAndAddPackage - properties\n\n$prefix\n$usecustomprefix\n$packageName\n\n\nprepareQuery - properties:\n\n$limit\n$offset\n$totalVar\n$where\n$queries\n$sortConfig\n$groupby\n$joins\n$selectfields\n$classname\n$debug\n\nrenderOutput - properties:\n\n$tpl\n$wrapperTpl\n$toSeparatePlaceholders\n$toPlaceholder\n$outputSeparator\n$placeholdersKeyField\n$toJsonPlaceholder\n$jsonVarKey\n$addfields\n\n*/\n\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n//$modx->migx = &$migx;\n\n$xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\n\n$defaultcontext = \'web\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n\n$c = $migx->prepareQuery($xpdo,$scriptProperties);\n$rows = $migx->getCollection($c);\n\n$output = $migx->renderOutput($rows,$scriptProperties);\n\nreturn $output;', 0, '', '', 0, ''),
(6, 0, 0, 'migxResourceMediaPath', '', 0, 2, 0, '/**\n * @name migxResourceMediaPath\n * @description Dynamically calculates the upload path for a given resource\n * \n * This Snippet is meant to dynamically calculate your baseBath attribute\n * for custom Media Sources.  This is useful if you wish to shepard uploaded\n * images to a folder dedicated to a given resource.  E.g. page 123 would \n * have its own images that page 456 could not reference.\n *\n * USAGE:\n * [[migxResourceMediaPath? &pathTpl=`assets/businesses/{id}/`]]\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}`]]\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}` &breadcrumbdepth=`2`]]\n *\n * PARAMETERS\n * &pathTpl string formatting string specifying the file path. \n *		Relative to MODX base_path\n *		Available placeholders: {id}, {pagetitle}, {parent}\n * &docid (optional) integer page id\n * &createFolder (optional) boolean whether or not to create\n */\n$pathTpl = $modx->getOption(\'pathTpl\', $scriptProperties, \'\');\n$docid = $modx->getOption(\'docid\', $scriptProperties, \'\');\n$createfolder = $modx->getOption(\'createFolder\', $scriptProperties, false);\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n\n$path = \'\';\n$createpath = false;\n\nif (empty($pathTpl)) {\n    $modx->log(MODX_LOG_LEVEL_ERROR, \'[migxResourceMediaPath]: pathTpl not specified.\');\n    return;\n}\n\nif (empty($docid) && $modx->getPlaceholder(\'mediasource_docid\')) {\n    // placeholder was set by some script\n    // warning: the parser may not render placeholders, e.g. &docid=`[[*parent]]` may fail\n    $docid = $modx->getPlaceholder(\'mediasource_docid\');\n}\n\nif (empty($docid) && $modx->getPlaceholder(\'docid\')) {\n    // placeholder was set by some script\n    // warning: the parser may not render placeholders, e.g. &docid=`[[*parent]]` may fail\n    $docid = $modx->getPlaceholder(\'docid\');\n}\nif (empty($docid)) {\n\n    //on frontend\n    if (is_object($modx->resource)) {\n        $docid = $modx->resource->get(\'id\');\n    }\n    //on backend\n    else {\n        $createpath = $createfolder;\n        // We do this to read the &id param from an Ajax request\n        $parsedUrl = parse_url($_SERVER[\'HTTP_REFERER\']);\n        parse_str($parsedUrl[\'query\'], $parsedQuery);\n\n        if (isset($parsedQuery[\'amp;id\'])) {\n            $docid = (int)$parsedQuery[\'amp;id\'];\n        } elseif (isset($parsedQuery[\'id\'])) {\n            $docid = (int)$parsedQuery[\'id\'];\n        }\n    }\n}\n\nif (empty($docid)) {\n    $modx->log(MODX_LOG_LEVEL_ERROR, \'[migxResourceMediaPath]: docid could not be determined.\');\n    return;\n}\n\nif ($resource = $modx->getObject(\'modResource\', $docid)) {\n    $path = $pathTpl;\n    $ultimateParent = \'\';\n    if (strstr($path, \'{breadcrumb}\') || strstr($path, \'{ultimateparent}\')) {\n        $depth = $modx->getOption(\'breadcrumbdepth\', $scriptProperties, 10);\n        $ctx = $resource->get(\'context_key\');\n        $parentids = $modx->getParentIds($docid, $depth, array(\'context\' => $ctx));\n        $breadcrumbdepth = $modx->getOption(\'breadcrumbdepth\', $scriptProperties, count($parentids));\n        $breadcrumbdepth = $breadcrumbdepth > count($parentids) ? count($parentids) : $breadcrumbdepth;\n        if (count($parentids) > 1) {\n            $parentids = array_reverse($parentids);\n            $parentids[] = $docid;\n            $ultimateParent = $parentids[1];\n        } else {\n            $ultimateParent = $docid;\n            $parentids = array();\n            $parentids[] = $docid;\n        }\n    }\n\n    if (strstr($path, \'{breadcrumb}\')) {\n        $breadcrumbpath = \'\';\n        for ($i = 1; $i <= $breadcrumbdepth; $i++) {\n            $breadcrumbpath .= $parentids[$i] . \'/\';\n        }\n        $path = str_replace(\'{breadcrumb}\', $breadcrumbpath, $path);\n    }\n    \n    if (!empty($tvname)){\n        $path = str_replace(\'{tv_value}\', $resource->getTVValue($tvname), $path);    \n    }\n    $path = str_replace(\'{id}\', $docid, $path);\n    $path = str_replace(\'{pagetitle}\', $resource->get(\'pagetitle\'), $path);\n    $path = str_replace(\'{alias}\', $resource->get(\'alias\'), $path);\n    $path = str_replace(\'{parent}\', $resource->get(\'parent\'), $path);\n    $path = str_replace(\'{context_key}\', $resource->get(\'context_key\'), $path);\n    $path = str_replace(\'{ultimateparent}\', $ultimateParent, $path);\n    if ($template = $resource->getOne(\'Template\')) {\n        $path = str_replace(\'{templatename}\', $template->get(\'templatename\'), $path);\n    }\n    if ($user = $modx->user) {\n        $path = str_replace(\'{username}\', $modx->user->get(\'username\'), $path);\n    }\n\n    $fullpath = $modx->getOption(\'base_path\') . $path;\n\n    if ($createpath && !file_exists($fullpath)) {\n\n        $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n        if (!@mkdir($fullpath, $permissions, true)) {\n            $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $fullpath));\n        } else {\n            chmod($fullpath, $permissions);\n        }\n    }\n\n    return $path;\n} else {\n    $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: resource not found (page id %s).\', $docid));\n    return;\n}', 0, 'a:0:{}', '', 0, ''),
(7, 0, 0, 'migxImageUpload', '', 0, 2, 0, 'return include $modx->getOption(\'core_path\').\'components/migx/model/imageupload/imageupload.php\';', 0, '', '', 0, ''),
(8, 0, 0, 'migxChunklistToJson', '', 0, 2, 0, '$category = $modx->getOption(\'category\', $scriptProperties, \'\');\n$format = $modx->getOption(\'format\', $scriptProperties, \'json\');\n\n$classname = \'modChunk\';\n$rows = array();\n$output = \'\';\n\n$c = $modx->newQuery($classname);\n$c->select($modx->getSelectColumns($classname, $classname, \'\', array(\'id\', \'name\')));\n$c->sortby(\'name\');\n\nif (!empty($category)) {\n    $c->where(array(\'category\' => $category));\n}\n//$c->prepare();echo $c->toSql();\nif ($collection = $modx->getCollection($classname, $c)) {\n    $i = 0;\n\n    switch ($format) {\n        case \'json\':\n            foreach ($collection as $object) {\n                $row[\'MIGX_id\'] = (string )$i;\n                $row[\'name\'] = $object->get(\'name\');\n                $row[\'selected\'] = \'0\';\n                $rows[] = $row;\n                $i++;\n            }\n            $output = $modx->toJson($rows);\n            break;\n        \n        case \'optionlist\':\n            foreach ($collection as $object) {\n                $rows[] = $object->get(\'name\');\n                $i++;\n            }\n            $output = implode(\'||\',$rows);      \n        break;\n            \n    }\n\n\n}\n\nreturn $output;', 0, '', '', 0, ''),
(9, 0, 0, 'migxSwitchDetailChunk', '', 0, 2, 0, '//[[migxSwitchDetailChunk? &detailChunk=`detailChunk` &listingChunk=`listingChunk`]]\n\n\n$properties[\'migx_id\'] = $modx->getOption(\'migx_id\',$_GET,\'\');\n\nif (!empty($properties[\'migx_id\'])){\n    $output = $modx->getChunk($detailChunk,$properties);\n}\nelse{\n    $output = $modx->getChunk($listingChunk);\n}\n\nreturn $output;', 0, '', '', 0, ''),
(10, 0, 0, 'getSwitchColumnCol', '', 0, 2, 0, '$scriptProperties = $_REQUEST;\n$col = \'\';\n// special actions, for example the showSelector - action\n$tempParams = $modx->getOption(\'tempParams\', $scriptProperties, \'\');\n\nif (!empty($tempParams)) {\n    $tempParams = $modx->fromJson($tempParams);\n    $col = $modx->getOption(\'col\', $tempParams, \'\');\n}\n\nreturn $col;', 0, '', '', 0, '');
INSERT INTO `chisto_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(11, 0, 0, 'getDayliMIGXrecord', '', 0, 2, 0, '/**\n * getDayliMIGXrecord\n *\n * Copyright 2009-2011 by Bruno Perner <b.perner@gmx.de>\n *\n * getDayliMIGXrecord is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * getDayliMIGXrecord is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * getDayliMIGXrecord; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * getDayliMIGXrecord\n *\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \n *\n * @version 1.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2012\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*example: [[!getDayliMIGXrecord? &tvname=`myTV`&tpl=`@CODE:<img src="[[+image]]"/>` &randomize=`1`]]*/\n/* get default properties */\n\n\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sort = $modx->getOption(\'sort\', $scriptProperties, \'\');\n$sort = !empty($sort) ? $modx->fromJSON($sort) : array();\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n$migx->working_context = $modx->resource->get(\'context_key\');\n\nif (!empty($tvname)) {\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(\'input_properties\');\n        $properties = isset($properties[\'formtabs\']) ? $properties : $tv->getProperties();\n\n        $migx->config[\'configs\'] = $properties[\'configs\'];\n        $migx->loadConfigs();\n        // get tabs from file or migx-config-table\n        $formtabs = $migx->getTabs();\n        if (empty($formtabs)) {\n            //try to get formtabs and its fields from properties\n            $formtabs = $modx->fromJSON($properties[\'formtabs\']);\n        }\n\n        //$tv->setCacheable(false);\n        //$outputvalue = $tv->renderOutput($docid);\n        \n        $tvresource = $modx->getObject(\'modTemplateVarResource\', array(\n            \'tmplvarid\' => $tv->get(\'id\'),\n            \'contentid\' => $docid,\n            ));\n\n\n        $outputvalue = $tvresource->get(\'value\');\n        \n        /*\n        *   get inputTvs \n        */\n        $inputTvs = array();\n        if (is_array($formtabs)) {\n\n            //multiple different Forms\n            // Note: use same field-names and inputTVs in all forms\n            $inputTvs = $migx->extractInputTvs($formtabs);\n        }\n        $migx->source = $tv->getSource($migx->working_context, false);\n\n        if (empty($outputvalue)) {\n            return \'\';\n        }\n\n        $items = $modx->fromJSON($outputvalue);\n\n\n        //is there an active item for the current date?\n        $activedate = $modx->getOption(\'activedate\', $scriptProperties, strftime(\'%Y/%m/%d\'));\n        //$activedate = $modx->getOption(\'activedate\', $_GET, strftime(\'%Y/%m/%d\'));\n        $activewhere = array();\n        $activewhere[\'activedate\'] = $activedate;\n        $activewhere[\'activated\'] = \'1\';\n        $activeitems = $migx->filterItems($activewhere, $items);\n\n        if (count($activeitems) == 0) {\n\n            $activeitems = array();\n            // where filter\n            if (is_array($where) && count($where) > 0) {\n                $items = $migx->filterItems($where, $items);\n            }\n\n            $tempitems = array();\n            $count = count($items);\n            $emptycount = 0;\n            $latestdate = $activedate;\n            $nextdate = strtotime($latestdate);\n            foreach ($items as $item) {\n                //empty all dates and active-states which are older than today\n                if (!empty($item[\'activedate\']) && $item[\'activedate\'] < $activedate) {\n                    $item[\'activated\'] = \'0\';\n                    $item[\'activedate\'] = \'\';\n                }\n                if (empty($item[\'activedate\'])) {\n                    $emptycount++;\n                }\n                if ($item[\'activedate\'] > $latestdate) {\n                    $latestdate = $item[\'activedate\'];\n                    $nextdate = strtotime($latestdate) + (24 * 60 * 60);\n                }\n                if ($item[\'activedate\'] == $activedate) {\n                    $item[\'activated\'] = \'1\';\n                    $activeitems[] = $item;\n                }\n                $tempitems[] = $item;\n            }\n\n            //echo \'<pre>\' . print_r($tempitems, 1) . \'</pre>\';\n\n            $items = $tempitems;\n\n\n            //are there more than half of all items with empty activedates\n\n            if ($emptycount >= $count / 2) {\n\n                // sort items\n                if (is_array($sort) && count($sort) > 0) {\n                    $items = $migx->sortDbResult($items, $sort);\n                }\n                if (count($items) > 0) {\n                    //shuffle items\n                    if ($randomize) {\n                        shuffle($items);\n                    }\n                }\n\n                $tempitems = array();\n                foreach ($items as $item) {\n                    if (empty($item[\'activedate\'])) {\n                        $item[\'activedate\'] = strftime(\'%Y/%m/%d\', $nextdate);\n                        $nextdate = $nextdate + (24 * 60 * 60);\n                        if ($item[\'activedate\'] == $activedate) {\n                            $item[\'activated\'] = \'1\';\n                            $activeitems[] = $item;\n                        }\n                    }\n\n                    $tempitems[] = $item;\n                }\n\n                $items = $tempitems;\n            }\n\n            //$resource = $modx->getObject(\'modResource\', $docid);\n            //echo $modx->toJson($items);\n            $sort = \'[{"sortby":"activedate"}]\';\n            $items = $migx->sortDbResult($items, $modx->fromJson($sort));\n\n            //echo \'<pre>\' . print_r($items, 1) . \'</pre>\';\n\n            $tv->setValue($docid, $modx->toJson($items));\n            $tv->save();\n\n        }\n    }\n\n}\n\n\n$properties = array();\nforeach ($scriptProperties as $property => $value) {\n    $properties[\'property.\' . $property] = $value;\n}\n\n$output = \'\';\n\nforeach ($activeitems as $key => $item) {\n\n    $fields = array();\n    foreach ($item as $field => $value) {\n        $value = is_array($value) ? implode(\'||\', $value) : $value; //handle arrays (checkboxes, multiselects)\n        if ($processTVs && isset($inputTvs[$field])) {\n            if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$field][\'inputTV\']))) {\n\n            } else {\n                $tv = $modx->newObject(\'modTemplateVar\');\n                $tv->set(\'type\', $inputTvs[$field][\'inputTVtype\']);\n            }\n            $inputTV = $inputTvs[$field];\n\n            $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\n            //don\'t manipulate any urls here\n            $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\n            $tv->set(\'default_text\', $value);\n            $value = $tv->renderOutput($docid);\n            //set option back\n            $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\n            //now manipulate urls\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\n                $mTypes = explode(\',\', $mTypes);\n                if (!empty($value) && in_array($tv->get(\'type\'), $mTypes)) {\n                    //$value = $mediasource->prepareOutputUrl($value);\n                    $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\n                }\n            }\n\n        }\n        $fields[$field] = $value;\n\n    }\n\n    $rowtpl = $tpl;\n    //get changing tpls from field\n    if (substr($tpl, 0, 7) == "@FIELD:") {\n        $tplField = substr($tpl, 7);\n        $rowtpl = $fields[$tplField];\n    }\n\n    if (!isset($template[$rowtpl])) {\n        if (substr($rowtpl, 0, 6) == "@FILE:") {\n            $template[$rowtpl] = file_get_contents($modx->config[\'base_path\'] . substr($rowtpl, 6));\n        } elseif (substr($rowtpl, 0, 6) == "@CODE:") {\n            $template[$rowtpl] = substr($tpl, 6);\n        } elseif ($chunk = $modx->getObject(\'modChunk\', array(\'name\' => $rowtpl), true)) {\n            $template[$rowtpl] = $chunk->getContent();\n        } else {\n            $template[$rowtpl] = false;\n        }\n    }\n\n    $fields = array_merge($fields, $properties);\n\n    if ($template[$rowtpl]) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$rowtpl]);\n        $output .= $chunk->process($fields);\n\n    } else {\n        $output .= \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n\n    }\n\n\n}\n\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n    return \'\';\n}\n\nreturn $output;', 0, '', '', 0, ''),
(12, 0, 0, 'filterbytag', '', 0, 2, 0, 'if (!is_array($subject)) {\n    $subject = explode(\',\',str_replace(array(\'||\',\' \'),array(\',\',\'\'),$subject));\n}\n\nreturn (in_array($operand,$subject));', 0, '', '', 0, ''),
(13, 0, 0, 'migxObjectMediaPath', '', 0, 2, 0, '$pathTpl = $modx->getOption(\'pathTpl\', $scriptProperties, \'\');\n$objectid = $modx->getOption(\'objectid\', $scriptProperties, \'\');\n$createfolder = $modx->getOption(\'createFolder\', $scriptProperties, \'1\');\n$path = \'\';\n$createpath = false;\nif (empty($objectid) && $modx->getPlaceholder(\'objectid\')) {\n    // placeholder was set by some script on frontend for example\n    $objectid = $modx->getPlaceholder(\'objectid\');\n}\nif (empty($objectid) && isset($_REQUEST[\'object_id\'])) {\n    $objectid = $_REQUEST[\'object_id\'];\n}\n\n\n\nif (empty($objectid)) {\n\n    //set Session - var in fields.php - processor\n    if (isset($_SESSION[\'migxWorkingObjectid\'])) {\n        $objectid = $_SESSION[\'migxWorkingObjectid\'];\n        $createpath = !empty($createfolder);\n    }\n\n}\n\n\n$path = str_replace(\'{id}\', $objectid, $pathTpl);\n\n$fullpath = $modx->getOption(\'base_path\') . $path;\n\nif ($createpath && !file_exists($fullpath)) {\n        $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n        if (!@mkdir($fullpath, $permissions, true)) {\n            $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $fullpath));\n        }\n        else{\n            chmod($fullpath, $permissions); \n        }\n}\n\nreturn $path;', 0, '', '', 0, ''),
(14, 0, 0, 'exportMIGX2db', '', 0, 2, 0, '/**\n * exportMIGX2db\n *\n * Copyright 2014 by Bruno Perner <b.perner@gmx.de>\n * \n * Sponsored by Simon Wurster <info@wurster-medien.de>\n *\n * exportMIGX2db is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * exportMIGX2db is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * exportMIGX2db; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * exportMIGX2db\n *\n * export Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string to db-table \n *\n * @version 1.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*\n[[!exportMIGX2db? \n&tvname=`references` \n&resources=`25` \n&packageName=`projekte`\n&classname=`Projekt` \n&migx_id_field=`migx_id` \n&renamed_fields=`{"Firmen-URL":"Firmen_url","Projekt-URL":"Projekt_URL","main-image":"main_image"}`\n]]\n*/\n\n\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$resources = $modx->getOption(\'resources\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : \'\'));\n$resources = explode(\',\', $resources);\n$prefix = isset($scriptProperties[\'prefix\']) ? $scriptProperties[\'prefix\'] : null;\n$packageName = $modx->getOption(\'packageName\', $scriptProperties, \'\');\n$classname = $modx->getOption(\'classname\', $scriptProperties, \'\');\n$value = $modx->getOption(\'value\', $scriptProperties, \'\');\n$migx_id_field = $modx->getOption(\'migx_id_field\', $scriptProperties, \'\');\n$pos_field = $modx->getOption(\'pos_field\', $scriptProperties, \'\');\n$renamed_fields = $modx->getOption(\'renamed_fields\', $scriptProperties, \'\');\n\n$packagepath = $modx->getOption(\'core_path\') . \'components/\' . $packageName .\n    \'/\';\n$modelpath = $packagepath . \'model/\';\n\n$modx->addPackage($packageName, $modelpath, $prefix);\n$added = 0;\n$modified = 0;\n\nforeach ($resources as $docid) {\n    \n    $outputvalue = \'\';\n    if (count($resources)==1){\n        $outputvalue = $value;    \n    }\n    \n    if (!empty($tvname)) {\n        if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\n\n            $outputvalue = empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\n        }\n    }\n\n    if (!empty($outputvalue)) {\n        $renamed = !empty($renamed_fields) ? $modx->fromJson($renamed_fields) : array();\n\n        $items = $modx->fromJSON($outputvalue);\n        $pos = 1;\n        $searchfields = array();\n        if (is_array($items)) {\n            foreach ($items as $fields) {\n                $search = array();\n                if (!empty($migx_id_field)) {\n                    $search[$migx_id_field] = $fields[\'MIGX_id\'];\n                }\n                if (!empty($resource_id_field)) {\n                    $search[$resource_id_field] = $docid;\n                }\n                if (!empty($migx_id_field) && $object = $modx->getObject($classname, $search)) {\n                    $mode = \'mod\';\n                } else {\n                    $object = $modx->newObject($classname);\n                    $object->fromArray($search);\n                    $mode = \'add\';\n                }\n                foreach ($fields as $field => $value) {\n                    $fieldname = array_key_exists($field, $renamed) ? $renamed[$field] : $field;\n                    $object->set($fieldname, $value);\n                }\n                if (!empty($pos_field)) {\n                    $object->set($pos_field,$pos) ;\n                }                \n                if ($object->save()) {\n                    if ($mode == \'add\') {\n                        $added++;\n                    } else {\n                        $modified++;\n                    }\n                }\n                $pos++;\n            }\n            \n        }\n    }\n}\n\n\nreturn $added . \' rows added to db, \' . $modified . \' existing rows actualized\';', 0, '', '', 0, ''),
(15, 0, 0, 'preparedatewhere', '', 0, 2, 0, '$name = $modx->getOption(\'name\', $scriptProperties, \'\');\n$date = $modx->getOption($name . \'_date\', $_REQUEST, \'\');\n$dir = str_replace(\'T\', \' \', $modx->getOption($name . \'_dir\', $_REQUEST, \'\'));\n\nif (!empty($date) && !empty($dir) && $dir != \'all\') {\n    switch ($dir) {\n        case \'=\':\n            $where = array(\n            \'enddate:>=\' => strftime(\'%Y-%m-%d 00:00:00\',strtotime($date)),\n            \'startdate:<=\' => strftime(\'%Y-%m-%d 23:59:59\',strtotime($date))\n            );\n            break;\n        case \'>=\':\n            $where = array(\n            \'enddate:>=\' => strftime(\'%Y-%m-%d 00:00:00\',strtotime($date))\n            );\n            break;\n        case \'<=\':\n            $where = array(\n            \'startdate:<=\' => strftime(\'%Y-%m-%d 23:59:59\',strtotime($date))\n            );            \n            break;\n\n    }\n\n    return $modx->toJson($where);\n}', 0, '', '', 0, ''),
(16, 0, 0, 'migxJsonToPlaceholders', '', 0, 2, 0, '$value = $modx->getOption(\'value\',$scriptProperties,\'\');\n$prefix = $modx->getOption(\'prefix\',$scriptProperties,\'\');\n\n//$modx->setPlaceholders($modx->fromJson($value),$prefix,\'\',true);\n\n$values = $modx->fromJson($value);\nif (is_array($values)){\n    foreach ($values as $key => $value){\n        $value = $value == null ? \'\' : $value;\n        $modx->setPlaceholder($prefix . $key, $value);\n    }\n}', 0, '', '', 0, ''),
(17, 0, 0, 'migxGetCollectionTree', '', 0, 2, 0, '/**\n * migxGetCollectionTree\n *\n * Copyright 2014 by Bruno Perner <b.perner@gmx.de>\n *\n * migxGetCollectionTree is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * migxGetCollectionTree is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * migxGetCollectionTree; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * migxGetCollectionTree\n *\n *          display nested items from different objects. The tree-schema is defined by a json-property. \n *\n * @version 1.0.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n$treeSchema = $modx->getOption(\'treeSchema\', $scriptProperties, \'\');\n$treeSchema = $modx->fromJson($treeSchema);\n\n$scriptProperties[\'current\'] = $modx->getOption(\'current\', $scriptProperties, \'\');\n$scriptProperties[\'currentClassname\'] = $modx->getOption(\'currentClassname\', $scriptProperties, \'\');\n$scriptProperties[\'currentKeyField\'] = $modx->getOption(\'currentKeyField\', $scriptProperties, \'id\');\n$return = $modx->getOption(\'return\', $scriptProperties, \'parsed\'); //parsed,json,arrayprint\n\n/*\nExamples:\n\nGet Resource-Tree, 4 levels deep\n\n[[!migxGetCollectionTree?\n&current=`57`\n&currentClassname=`modResource`\n&treeSchema=`\n{\n"classname": "modResource",\n"debug": "1",\n"tpl": "mgctResourceTree",\n"wrapperTpl": "@CODE:<ul>[[+output]]</ul>",\n"selectfields": "id,pagetitle",\n"where": {\n"parent": "0",\n"published": "1",\n"deleted": "0"\n},\n"_branches": [{\n"alias": "children",\n"classname": "modResource",\n"local": "parent",\n"foreign": "id",\n"tpl": "mgctResourceTree",\n"debug": "1",\n"selectfields": "id,pagetitle,parent",\n"_branches": [{\n"alias": "children",\n"classname": "modResource",\n"local": "parent",\n"foreign": "id",\n"tpl": "mgctResourceTree",\n"debug": "1",\n"selectfields": "id,pagetitle,parent",\n"where": {\n"published": "1",\n"deleted": "0"\n},\n"_branches": [{\n"alias": "children",\n"classname": "modResource",\n"local": "parent",\n"foreign": "id",\n"tpl": "mgctResourceTree",\n"debug": "1",\n"selectfields": "id,pagetitle,parent",\n"where": {\n"published": "1",\n"deleted": "0"\n}\n}]\n}]\n}]\n}\n`]]\n\nthe chunk mgctResourceTree:\n<li class="[[+_activelabel]] [[+_currentlabel]]" ><a href="[[~[[+id]]]]">[[+pagetitle]]([[+id]])</a></li>\n[[+innercounts.children:gt=`0`:then=`\n<ul>[[+innerrows.children]]</ul>\n`:else=``]]\n\nget all Templates and its Resources:\n\n[[!migxGetCollectionTree?\n&treeSchema=`\n{\n"classname": "modTemplate",\n"debug": "1",\n"tpl": "@CODE:<h3>[[+templatename]]</h3><ul>[[+innerrows.resource]]</ul>",\n"selectfields": "id,templatename",\n"_branches": [{\n"alias": "resource",\n"classname": "modResource",\n"local": "template",\n"foreign": "id",\n"tpl": "@CODE:<li>[[+pagetitle]]([[+id]])</li>",\n"debug": "1",\n"selectfields": "id,pagetitle,template"\n}]\n}\n`]]\n*/\n\nif (!class_exists(\'MigxGetCollectionTree\')) {\n    class MigxGetCollectionTree\n    {\n        function __construct(modX & $modx, array $config = array())\n        {\n            $this->modx = &$modx;\n            $this->config = $config;\n        }\n\n        function getBranch($branch, $foreigns = array(), $level = 1)\n        {\n\n            $rows = array();\n\n            if (count($foreigns) > 0) {\n                $modx = &$this->modx;\n\n                $local = $modx->getOption(\'local\', $branch, \'\');\n                $where = $modx->getOption(\'where\', $branch, array());\n                $where = !empty($where) && !is_array($where) ? $modx->fromJSON($where) : $where;\n                $where[] = array($local . \':IN\' => $foreigns);\n\n                $branch[\'where\'] = $modx->toJson($where);\n\n                $level++;\n                /*\n                if ($levelFromCurrent > 0){\n                $levelFromCurrent++;    \n                }\n                */\n\n                $rows = $this->getRows($branch, $level);\n            }\n\n            return $rows;\n        }\n\n        function getRows($scriptProperties, $level)\n        {\n            $migx = &$this->migx;\n            $modx = &$this->modx;\n\n            $current = $modx->getOption(\'current\', $this->config, \'\');\n            $currentKeyField = $modx->getOption(\'currentKeyField\', $this->config, \'id\');\n            $currentlabel = $modx->getOption(\'currentlabel\', $this->config, \'current\');\n            $classname = $modx->getOption(\'classname\', $scriptProperties, \'\');\n            $currentClassname = !empty($this->config[\'currentClassname\']) ? $this->config[\'currentClassname\'] : $classname;\n\n            $activelabel = $modx->getOption(\'activelabel\', $this->config, \'active\');\n            $return = $modx->getOption(\'return\', $this->config, \'parsed\');\n\n            $xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\n            $c = $migx->prepareQuery($xpdo, $scriptProperties);\n            $rows = $migx->getCollection($c);\n\n            $branches = $modx->getOption(\'_branches\', $scriptProperties, array());\n\n            $collectedSubrows = array();\n            foreach ($branches as $branch) {\n                $foreign = $modx->getOption(\'foreign\', $branch, \'\');\n                $local = $modx->getOption(\'local\', $branch, \'\');\n                $alias = $modx->getOption(\'alias\', $branch, \'\');\n                //$activeonly = $modx->getOption(\'activeonly\', $branch, \'\');\n                $foreigns = array();\n                foreach ($rows as $row) {\n                    $foreigns[] = $row[$foreign];\n                }\n\n                $subrows = $this->getBranch($branch, $foreigns, $level);\n                foreach ($subrows as $subrow) {\n\n                    $collectedSubrows[$subrow[$local]][] = $subrow;\n                    $subrow[\'_active\'] = $modx->getOption(\'_active\', $subrow, \'0\');\n                    /*\n                    if (!empty($activeonly) && $subrow[\'_active\'] != \'1\') {\n                    $output = \'\';\n                    } else {\n                    $collectedSubrows[$subrow[$local]][] = $subrow;\n                    }\n                    */\n                    if ($subrow[\'_active\'] == \'1\') {\n                        //echo \'active subrow:<pre>\' . print_r($subrow,1) . \'</pre>\';\n                        $activesubrow[$subrow[$local]] = true;\n                    }\n                    if ($subrow[\'_current\'] == \'1\') {\n                        //echo \'active subrow:<pre>\' . print_r($subrow,1) . \'</pre>\';\n                        $currentsubrow[$subrow[$local]] = true;\n                    }\n\n\n                }\n                //insert subrows\n                $temprows = $rows;\n                $rows = array();\n                foreach ($temprows as $row) {\n                    if (isset($collectedSubrows[$row[$foreign]])) {\n                        $row[\'_active\'] = \'0\';\n                        $row[\'_currentparent\'] = \'0\';\n                        if (isset($activesubrow[$row[$foreign]]) && $activesubrow[$row[$foreign]]) {\n                            $row[\'_active\'] = \'1\';\n                            //echo \'active row:<pre>\' . print_r($row,1) . \'</pre>\';\n                        }\n                        if (isset($currentsubrow[$row[$foreign]]) && $currentsubrow[$row[$foreign]]) {\n                            $row[\'_currentparent\'] = \'1\';\n                            //echo \'active row:<pre>\' . print_r($row,1) . \'</pre>\';\n                        }\n\n                        //render innerrows\n                        //$output = $migx->renderOutput($collectedSubrows[$row[$foreign]],$scriptProperties);\n                        //$output = $collectedSubrows[$row[$foreign]];\n\n                        $row[\'innercounts.\' . $alias] = count($collectedSubrows[$row[$foreign]]);\n                        $row[\'_scriptProperties\'][$alias] = $branch;\n                        /*\n                        switch ($return) {\n                        case \'parsed\':\n                        $output = $migx->renderOutput($collectedSubrows[$row[$foreign]], $branch);\n                        //$subbranches = $modx->getOption(\'_branches\', $branch, array());\n                        //if there are any placeholders left with the same alias from subbranch, remove them\n                        $output = str_replace(\'[[+innerrows.\' . $alias . \']]\', \'\', $output);\n                        break;\n                        case \'json\':\n                        case \'arrayprint\':\n                        $output = $collectedSubrows[$row[$foreign]];\n                        break;\n                        }\n                        */\n                        $output = $collectedSubrows[$row[$foreign]];\n\n                        $row[\'innerrows.\' . $alias] = $output;\n\n                    }\n                    $rows[] = $row;\n                }\n\n            }\n\n            $temprows = $rows;\n            $rows = array();\n            foreach ($temprows as $row) {\n                //add additional placeholders\n                $row[\'_level\'] = $level;\n                $row[\'_active\'] = $modx->getOption(\'_active\', $row, \'0\');\n                if ($currentClassname == $classname && $row[$currentKeyField] == $current) {\n                    $row[\'_current\'] = \'1\';\n                    $row[\'_currentlabel\'] = $currentlabel;\n                    $row[\'_active\'] = \'1\';\n                } else {\n                    $row[\'_current\'] = \'0\';\n                    $row[\'_currentlabel\'] = \'\';\n                }\n                if ($row[\'_active\'] == \'1\') {\n                    $row[\'_activelabel\'] = $activelabel;\n                } else {\n                    $row[\'_activelabel\'] = \'\';\n                }\n                $rows[] = $row;\n            }\n\n            return $rows;\n        }\n\n        function renderRow($row, $levelFromCurrent = 0)\n        {\n            $migx = &$this->migx;\n            $modx = &$this->modx;\n            $return = $modx->getOption(\'return\', $this->config, \'parsed\');\n            $branchProperties = $modx->getOption(\'_scriptProperties\', $row, array());\n            $current = $modx->getOption(\'_current\', $row, \'0\');\n            $currentparent = $modx->getOption(\'_currentparent\', $row, \'0\');\n            $levelFromCurrent = $current == \'1\' ? 1 : $levelFromCurrent;\n            $row[\'_levelFromCurrent\'] = $levelFromCurrent;\n            foreach ($branchProperties as $alias => $properties) {\n                $innerrows = $modx->getOption(\'innerrows.\' . $alias, $row, array());\n                $subrows = $this->renderRows($innerrows, $properties, $levelFromCurrent, $currentparent);\n                if ($return == \'parsed\') {\n                    $subrows = $migx->renderOutput($subrows, $properties);\n                }\n                $row[\'innerrows.\' . $alias] = $subrows;\n            }\n\n            return $row;\n        }\n\n        function renderRows($rows, $scriptProperties, $levelFromCurrent = 0, $siblingOfCurrent = \'0\')\n        {\n\n            $modx = &$this->modx;\n            $temprows = $rows;\n            $rows = array();\n            if ($levelFromCurrent > 0) {\n                $levelFromCurrent++;\n            }\n            foreach ($temprows as $row) {\n                $row[\'_siblingOfCurrent\'] = $siblingOfCurrent;\n                $row = $this->renderRow($row, $levelFromCurrent);\n                $rows[] = $row;\n            }\n            return $rows;\n        }\n    }\n}\n\n$instance = new MigxGetCollectionTree($modx, $scriptProperties);\n\nif (is_array($treeSchema)) {\n    $scriptProperties = $treeSchema;\n\n    $migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\n    if (!($migx instanceof Migx))\n        return \'\';\n\n    $defaultcontext = \'web\';\n    $migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n    $instance->migx = &$migx;\n\n    $level = 1;\n    $scriptProperties[\'alias\'] = \'row\';\n    $rows = $instance->getRows($scriptProperties, $level);\n    $row = array();\n    $row[\'innercounts.row\'] = count($rows);\n    $row[\'innerrows.row\'] = $rows;\n    $row[\'_scriptProperties\'][\'row\'] = $scriptProperties;\n\n    $rows = $instance->renderRow($row);\n\n    $output = \'\';\n    switch ($return) {\n        case \'parsed\':\n            $output = $modx->getOption(\'innerrows.row\', $rows, \'\');\n            break;\n        case \'json\':\n            $output = $modx->toJson($rows);\n            break;\n        case \'arrayprint\':\n            $output = \'<pre>\' . print_r($rows, 1) . \'</pre>\';\n            break;\n    }\n\n    return $output;\n\n}', 0, '', '', 0, ''),
(18, 0, 0, 'migxIsNewObject', '', 0, 2, 0, 'if (isset($_REQUEST[\'object_id\']) && $_REQUEST[\'object_id\']==\'new\'){\n    return 1;\n}', 0, '', '', 0, ''),
(19, 0, 0, 'migx_example_validate', '', 0, 2, 0, '$properties = &$modx->getOption(\'scriptProperties\', $scriptProperties, array());\n$object = &$modx->getOption(\'object\', $scriptProperties, null);\n$postvalues = &$modx->getOption(\'postvalues\', $scriptProperties, array());\n$form_field = $modx->getOption(\'form_field\', $scriptProperties, array());\n$value = $modx->getOption(\'value\', $scriptProperties, \'\');\n$validation_type = $modx->getOption(\'validation_type\', $scriptProperties, \'\');\n$result = \'\';\nswitch ($validation_type) {\n    case \'gt25\':\n        if ((int) $value > 25) {\n        } else {\n            $error_message = $validation_type; // may be custom validation message\n            $error[\'caption\'] = $form_field;\n            $error[\'validation_type\'] = $error_message;\n            $result[\'error\'] = $error;\n            $result = $modx->toJson($result);\n        }\n        break;\n}\nreturn $result;', 0, '', '', 0, ''),
(20, 0, 0, 'migxHookAftercollectmigxitems', '', 0, 2, 0, '$configs = $modx->getOption(\'configs\', $_REQUEST, \'\');\n\n$rows = $modx->getOption(\'rows\', $scriptProperties, array());\n$newrows = array();\n\n\nif (is_array($rows)) {\n    $max_id = 0;\n    $dbfields = array();\n    $existing_dbfields = array();\n    foreach ($rows as $key => $row) {\n        if (isset($row[\'MIGX_id\']) && $row[\'MIGX_id\'] > $max_id) {\n            $max_id = $row[\'MIGX_id\'];\n        }\n        if (isset($row[\'selected_dbfields\']) && isset($row[\'existing_dbfields\'])) {\n            $dbfields = is_array($row[\'selected_dbfields\']) ? $row[\'selected_dbfields\'] : array($row[\'selected_dbfields\']);\n            \n            $existing_dbfields = explode(\'||\', $row[\'existing_dbfields\']);\n            //echo \'<pre>\' . print_r($existing_dbfields,1) . \'</pre>\';die();\n\n        } else {\n            $newrows[] = $row;\n        }\n\n    }\n\n    foreach ($dbfields as $dbfield) {\n        if (!empty($dbfield) && !in_array($dbfield, $existing_dbfields)) {\n            $max_id++;\n            $newrow = array();\n            $newrow[\'MIGX_id\'] = $max_id;\n\n            switch ($configs) {\n                case \'migxformtabfields\':\n                    $newrow[\'field\'] = $dbfield;\n                    $newrow[\'caption\'] = $dbfield;\n                    break;\n                case \'migxcolumns\':\n                    $newrow[\'dataIndex\'] = $dbfield;\n                    $newrow[\'header\'] = $dbfield;\n                    break;                    \n            }\n\n\n            $newrows[] = $newrow;\n        }\n    }\n\n\n}\n\n\nreturn json_encode($newrows);', 0, '', '', 0, ''),
(21, 0, 0, 'migxAutoPublish', '', 0, 2, 0, '$classnames = explode(\',\', $modx->getOption(\'classnames\',$scriptProperties,\'\'));\n$packageName = $modx->getOption(\'packageName\',$scriptProperties,\'\');\n\nswitch ($mode) {\n    case \'datetime\' :\n        $timeNow = strftime(\'%Y-%m-%d %H:%M:%S\');\n        break;\n    case \'unixtime\' :\n        $timeNow = time();\n        break;\n    default :\n        $timeNow = strftime(\'%Y-%m-%d %H:%M:%S\');\n        break;\n}\n\n$modx->addPackage($packageName, $modx->getOption(\'core_path\') . \'components/\' . $packageName . \'/model/\');\n\nforeach ($classnames as $classname) {\n    if (!empty($classname)) {\n        $tblResource = $modx->getTableName($classname);\n        if (!$result = $modx->exec("UPDATE {$tblResource} SET published=1,publishedon=pub_date,pub_date=null WHERE pub_date < \'{$timeNow}\' AND pub_date > 0 AND published=0")) {\n            $modx->log(modX::LOG_LEVEL_ERROR, \'Error while refreshing resource publishing data: \' . print_r($modx->errorInfo(), true));\n        }\n        if (!$result = $modx->exec("UPDATE $tblResource SET published=0,unpub_date=null WHERE unpub_date < \'{$timeNow}\' AND unpub_date IS NOT NULL AND unpub_date > 0 AND published=1")) {\n            $modx->log(modX::LOG_LEVEL_ERROR, \'Error while refreshing resource unpublishing data: \' . print_r($modx->errorInfo(), true));\n        }\n    }\n\n}\n$modx->cacheManager->refresh();', 0, '', '', 0, '');
INSERT INTO `chisto_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(22, 1, 0, 'pdoResources', '', 0, 3, 0, '/** @var array $scriptProperties */\nif (isset($parents) && $parents === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n}\nif (!empty($returnIds)) {\n    $scriptProperties[\'return\'] = \'ids\';\n}\n\n// Adding extra parameters into special place so we can put them in a results\n/** @var modSnippet $snippet */\n$additionalPlaceholders = $properties = array();\nif (isset($this) && $this instanceof modSnippet) {\n    $properties = $this->get(\'properties\');\n}\nelseif ($snippet = $modx->getObject(\'modSnippet\', array(\'name\' => \'pdoResources\'))) {\n    $properties = $snippet->get(\'properties\');\n}\nif (!empty($properties)) {\n    foreach ($scriptProperties as $k => $v) {\n        if (!isset($properties[$k])) {\n            $additionalPlaceholders[$k] = $v;\n        }\n    }\n}\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\n\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n$output = $pdoFetch->run();\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class="pdoResourcesLog">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\n// Return output\nif (!empty($returnIds)) {\n    $modx->setPlaceholder(\'pdoResources.log\', $log);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n} elseif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array_merge($additionalPlaceholders, array(\'output\' => $output)),\n            $pdoFetch->config[\'fastMode\']);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:47:{s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:17:"pdotools_prop_tpl";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"returnIds";a:7:{s:4:"name";s:9:"returnIds";s:4:"desc";s:23:"pdotools_prop_returnIds";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"showLog";a:7:{s:4:"name";s:7:"showLog";s:4:"desc";s:21:"pdotools_prop_showLog";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"fastMode";a:7:{s:4:"name";s:8:"fastMode";s:4:"desc";s:22:"pdotools_prop_fastMode";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"sortby";a:7:{s:4:"name";s:6:"sortby";s:4:"desc";s:20:"pdotools_prop_sortby";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:11:"publishedon";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"sortbyTV";a:7:{s:4:"name";s:8:"sortbyTV";s:4:"desc";s:22:"pdotools_prop_sortbyTV";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"sortbyTVType";a:7:{s:4:"name";s:12:"sortbyTVType";s:4:"desc";s:26:"pdotools_prop_sortbyTVType";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"sortdir";a:7:{s:4:"name";s:7:"sortdir";s:4:"desc";s:21:"pdotools_prop_sortdir";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:3:"ASC";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:4:"DESC";s:5:"value";s:4:"DESC";}}s:5:"value";s:4:"DESC";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"sortdirTV";a:7:{s:4:"name";s:9:"sortdirTV";s:4:"desc";s:23:"pdotools_prop_sortdirTV";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:3:"ASC";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:4:"DESC";s:5:"value";s:4:"DESC";}}s:5:"value";s:3:"ASC";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"limit";a:7:{s:4:"name";s:5:"limit";s:4:"desc";s:19:"pdotools_prop_limit";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:10;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"offset";a:7:{s:4:"name";s:6:"offset";s:4:"desc";s:20:"pdotools_prop_offset";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"depth";a:7:{s:4:"name";s:5:"depth";s:4:"desc";s:19:"pdotools_prop_depth";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:10;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"outputSeparator";a:7:{s:4:"name";s:15:"outputSeparator";s:4:"desc";s:29:"pdotools_prop_outputSeparator";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"\n";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:27:"pdotools_prop_toPlaceholder";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"parents";a:7:{s:4:"name";s:7:"parents";s:4:"desc";s:21:"pdotools_prop_parents";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:14:"includeContent";a:7:{s:4:"name";s:14:"includeContent";s:4:"desc";s:28:"pdotools_prop_includeContent";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"includeTVs";a:7:{s:4:"name";s:10:"includeTVs";s:4:"desc";s:24:"pdotools_prop_includeTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"prepareTVs";a:7:{s:4:"name";s:10:"prepareTVs";s:4:"desc";s:24:"pdotools_prop_prepareTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"1";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"processTVs";a:7:{s:4:"name";s:10:"processTVs";s:4:"desc";s:24:"pdotools_prop_processTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"tvPrefix";a:7:{s:4:"name";s:8:"tvPrefix";s:4:"desc";s:22:"pdotools_prop_tvPrefix";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:3:"tv.";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"tvFilters";a:7:{s:4:"name";s:9:"tvFilters";s:4:"desc";s:23:"pdotools_prop_tvFilters";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:21:"tvFiltersAndDelimiter";a:7:{s:4:"name";s:21:"tvFiltersAndDelimiter";s:4:"desc";s:35:"pdotools_prop_tvFiltersAndDelimiter";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:",";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:20:"tvFiltersOrDelimiter";a:7:{s:4:"name";s:20:"tvFiltersOrDelimiter";s:4:"desc";s:34:"pdotools_prop_tvFiltersOrDelimiter";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:2:"||";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"where";a:7:{s:4:"name";s:5:"where";s:4:"desc";s:19:"pdotools_prop_where";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"showUnpublished";a:7:{s:4:"name";s:15:"showUnpublished";s:4:"desc";s:29:"pdotools_prop_showUnpublished";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"showDeleted";a:7:{s:4:"name";s:11:"showDeleted";s:4:"desc";s:25:"pdotools_prop_showDeleted";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"showHidden";a:7:{s:4:"name";s:10:"showHidden";s:4:"desc";s:24:"pdotools_prop_showHidden";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:14:"hideContainers";a:7:{s:4:"name";s:14:"hideContainers";s:4:"desc";s:28:"pdotools_prop_hideContainers";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"context";a:7:{s:4:"name";s:7:"context";s:4:"desc";s:21:"pdotools_prop_context";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:3:"idx";a:7:{s:4:"name";s:3:"idx";s:4:"desc";s:17:"pdotools_prop_idx";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"first";a:7:{s:4:"name";s:5:"first";s:4:"desc";s:19:"pdotools_prop_first";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:4:"last";a:7:{s:4:"name";s:4:"last";s:4:"desc";s:18:"pdotools_prop_last";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"tplFirst";a:7:{s:4:"name";s:8:"tplFirst";s:4:"desc";s:22:"pdotools_prop_tplFirst";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"tplLast";a:7:{s:4:"name";s:7:"tplLast";s:4:"desc";s:21:"pdotools_prop_tplLast";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"tplOdd";a:7:{s:4:"name";s:6:"tplOdd";s:4:"desc";s:20:"pdotools_prop_tplOdd";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"tplWrapper";a:7:{s:4:"name";s:10:"tplWrapper";s:4:"desc";s:24:"pdotools_prop_tplWrapper";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"wrapIfEmpty";a:7:{s:4:"name";s:11:"wrapIfEmpty";s:4:"desc";s:25:"pdotools_prop_wrapIfEmpty";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"totalVar";a:7:{s:4:"name";s:8:"totalVar";s:4:"desc";s:22:"pdotools_prop_totalVar";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:5:"total";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"resources";a:7:{s:4:"name";s:9:"resources";s:4:"desc";s:23:"pdotools_prop_resources";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"tplCondition";a:7:{s:4:"name";s:12:"tplCondition";s:4:"desc";s:26:"pdotools_prop_tplCondition";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"tplOperator";a:7:{s:4:"name";s:11:"tplOperator";s:4:"desc";s:25:"pdotools_prop_tplOperator";s:4:"type";s:4:"list";s:7:"options";a:10:{i:0;a:2:{s:4:"text";s:11:"is equal to";s:5:"value";s:2:"==";}i:1;a:2:{s:4:"text";s:15:"is not equal to";s:5:"value";s:2:"!=";}i:2;a:2:{s:4:"text";s:9:"less than";s:5:"value";s:1:"<";}i:3;a:2:{s:4:"text";s:21:"less than or equal to";s:5:"value";s:2:"<=";}i:4;a:2:{s:4:"text";s:24:"greater than or equal to";s:5:"value";s:2:">=";}i:5;a:2:{s:4:"text";s:8:"is empty";s:5:"value";s:5:"empty";}i:6;a:2:{s:4:"text";s:12:"is not empty";s:5:"value";s:6:"!empty";}i:7;a:2:{s:4:"text";s:7:"is null";s:5:"value";s:4:"null";}i:8;a:2:{s:4:"text";s:11:"is in array";s:5:"value";s:7:"inarray";}i:9;a:2:{s:4:"text";s:10:"is between";s:5:"value";s:7:"between";}}s:5:"value";s:2:"==";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"conditionalTpls";a:7:{s:4:"name";s:15:"conditionalTpls";s:4:"desc";s:29:"pdotools_prop_conditionalTpls";s:4:"type";s:8:"textarea";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"select";a:7:{s:4:"name";s:6:"select";s:4:"desc";s:20:"pdotools_prop_select";s:4:"type";s:8:"textarea";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:22:"toSeparatePlaceholders";a:7:{s:4:"name";s:22:"toSeparatePlaceholders";s:4:"desc";s:36:"pdotools_prop_toSeparatePlaceholders";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"loadModels";a:7:{s:4:"name";s:10:"loadModels";s:4:"desc";s:24:"pdotools_prop_loadModels";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"scheme";a:7:{s:4:"name";s:6:"scheme";s:4:"desc";s:20:"pdotools_prop_scheme";s:4:"type";s:4:"list";s:7:"options";a:6:{i:0;a:2:{s:5:"value";s:0:"";s:4:"text";s:14:"System default";}i:1;a:2:{s:5:"value";i:-1;s:4:"text";s:25:"-1 (relative to site_url)";}i:2;a:2:{s:5:"value";s:4:"full";s:4:"text";s:40:"full (absolute, prepended with site_url)";}i:3;a:2:{s:5:"value";s:3:"abs";s:4:"text";s:39:"abs (absolute, prepended with base_url)";}i:4;a:2:{s:5:"value";s:4:"http";s:4:"text";s:38:"http (absolute, forced to http scheme)";}i:5;a:2:{s:5:"value";s:5:"https";s:4:"text";s:40:"https (absolute, forced to https scheme)";}}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"useWeblinkUrl";a:7:{s:4:"name";s:13:"useWeblinkUrl";s:4:"desc";s:27:"pdotools_prop_useWeblinkUrl";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoresources.php'),
(23, 1, 0, 'pdoUsers', '', 0, 3, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n$class = \'modUser\';\n$profile = \'modUserProfile\';\n$member = \'modUserGroupMember\';\n\n// Start building "Where" expression\n$where = array();\nif (empty($showInactive)) {\n    $where[$class . \'.active\'] = 1;\n}\nif (empty($showBlocked)) {\n    $where[$profile . \'.blocked\'] = 0;\n}\n\n// Add users profiles and groups\n$innerJoin = array(\n    $profile => array(\'alias\' => $profile, \'on\' => "$class.id = $profile.internalKey"),\n);\n\n// Filter by users, groups and roles\n$tmp = array(\n    \'users\' => array(\n        \'class\' => $class,\n        \'name\' => \'username\',\n        \'join\' => $class . \'.id\',\n    ),\n    \'groups\' => array(\n        \'class\' => \'modUserGroup\',\n        \'name\' => \'name\',\n        \'join\' => $member . \'.user_group\',\n    ),\n    \'roles\' => array(\n        \'class\' => \'modUserGroupRole\',\n        \'name\' => \'name\',\n        \'join\' => $member . \'.role\',\n    ),\n);\nforeach ($tmp as $k => $p) {\n    if (!empty($$k)) {\n        $$k = array_map(\'trim\', explode(\',\', $$k));\n        ${$k . \'_in\'} = ${$k . \'_out\'} = $fetch_in = $fetch_out = array();\n        foreach ($$k as $v) {\n            if (is_numeric($v)) {\n                if ($v[0] == \'-\') {\n                    ${$k . \'_out\'}[] = abs($v);\n                } else {\n                    ${$k . \'_in\'}[] = abs($v);\n                }\n            } else {\n                if ($v[0] == \'-\') {\n                    $fetch_out[] = $v;\n                } else {\n                    $fetch_in[] = $v;\n                }\n            }\n        }\n\n        if (!empty($fetch_in) || !empty($fetch_out)) {\n            $q = $modx->newQuery($p[\'class\'], array($p[\'name\'] . \':IN\' => array_merge($fetch_in, $fetch_out)));\n            $q->select(\'id,\' . $p[\'name\']);\n            $tstart = microtime(true);\n            if ($q->prepare() && $q->stmt->execute()) {\n                $modx->queryTime += microtime(true) - $tstart;\n                $modx->executedQueries++;\n                while ($row = $q->stmt->fetch(PDO::FETCH_ASSOC)) {\n                    if (in_array($row[$p[\'name\']], $fetch_in)) {\n                        ${$k . \'_in\'}[] = $row[\'id\'];\n                    } else {\n                        ${$k . \'_out\'}[] = $row[\'id\'];\n                    }\n                }\n            }\n        }\n\n        if (!empty(${$k . \'_in\'})) {\n            $where[$p[\'join\'] . \':IN\'] = ${$k . \'_in\'};\n        }\n        if (!empty(${$k . \'_out\'})) {\n            $where[$p[\'join\'] . \':NOT IN\'] = ${$k . \'_out\'};\n        }\n    }\n}\n\nif (!empty($groups_in) || !empty($groups_out) || !empty($roles_in) || !empty($roles_out)) {\n    $innerJoin[$member] = array(\'alias\' => $member, \'on\' => "$class.id = $member.member");\n}\n\n// Fields to select\n$select = array(\n    $profile => implode(\',\', array_keys($modx->getFieldMeta($profile))),\n    $class => implode(\',\', array_keys($modx->getFieldMeta($class))),\n);\n\n// Add custom parameters\nforeach (array(\'where\', \'innerJoin\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n$default = array(\n    \'class\' => $class,\n    \'innerJoin\' => json_encode($innerJoin),\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    \'groupby\' => $class . \'.id\',\n    \'sortby\' => $class . \'.id\',\n    \'sortdir\' => \'ASC\',\n    \'fastMode\' => false,\n    \'return\' => !empty($returnIds) ? \'ids\' : \'chunks\',\n    \'disableConditions\' => true,\n);\n\nif (!empty($users_in) && (empty($scriptProperties[\'sortby\']) || $scriptProperties[\'sortby\'] == $class . \'.id\')) {\n    $scriptProperties[\'sortby\'] = "find_in_set(`$class`.`id`,\'" . implode(\',\', $users_in) . "\')";\n    $scriptProperties[\'sortdir\'] = \'\';\n}\n\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$output = $pdoFetch->run();\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class="pdoUsersLog">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\n// Return output\nif (!empty($returnIds)) {\n    $modx->setPlaceholder(\'pdoUsers.log\', $log);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n} elseif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array(\'output\' => $output), $pdoFetch->config[\'fastMode\']);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:30:{s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:17:"pdotools_prop_tpl";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"returnIds";a:7:{s:4:"name";s:9:"returnIds";s:4:"desc";s:23:"pdotools_prop_returnIds";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"showLog";a:7:{s:4:"name";s:7:"showLog";s:4:"desc";s:21:"pdotools_prop_showLog";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"fastMode";a:7:{s:4:"name";s:8:"fastMode";s:4:"desc";s:22:"pdotools_prop_fastMode";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"sortby";a:7:{s:4:"name";s:6:"sortby";s:4:"desc";s:20:"pdotools_prop_sortby";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:10:"modUser.id";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"sortdir";a:7:{s:4:"name";s:7:"sortdir";s:4:"desc";s:21:"pdotools_prop_sortdir";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:3:"ASC";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:4:"DESC";s:5:"value";s:4:"DESC";}}s:5:"value";s:3:"ASC";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"limit";a:7:{s:4:"name";s:5:"limit";s:4:"desc";s:19:"pdotools_prop_limit";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:10;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"offset";a:7:{s:4:"name";s:6:"offset";s:4:"desc";s:20:"pdotools_prop_offset";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"outputSeparator";a:7:{s:4:"name";s:15:"outputSeparator";s:4:"desc";s:29:"pdotools_prop_outputSeparator";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"\n";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:27:"pdotools_prop_toPlaceholder";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"groups";a:7:{s:4:"name";s:6:"groups";s:4:"desc";s:20:"pdotools_prop_groups";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"roles";a:7:{s:4:"name";s:5:"roles";s:4:"desc";s:19:"pdotools_prop_roles";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"users";a:7:{s:4:"name";s:5:"users";s:4:"desc";s:19:"pdotools_prop_users";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"where";a:7:{s:4:"name";s:5:"where";s:4:"desc";s:19:"pdotools_prop_where";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"showInactive";a:7:{s:4:"name";s:12:"showInactive";s:4:"desc";s:26:"pdotools_prop_showInactive";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"showBlocked";a:7:{s:4:"name";s:11:"showBlocked";s:4:"desc";s:25:"pdotools_prop_showBlocked";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:3:"idx";a:7:{s:4:"name";s:3:"idx";s:4:"desc";s:17:"pdotools_prop_idx";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"first";a:7:{s:4:"name";s:5:"first";s:4:"desc";s:19:"pdotools_prop_first";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:4:"last";a:7:{s:4:"name";s:4:"last";s:4:"desc";s:18:"pdotools_prop_last";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"tplFirst";a:7:{s:4:"name";s:8:"tplFirst";s:4:"desc";s:22:"pdotools_prop_tplFirst";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"tplLast";a:7:{s:4:"name";s:7:"tplLast";s:4:"desc";s:21:"pdotools_prop_tplLast";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"tplOdd";a:7:{s:4:"name";s:6:"tplOdd";s:4:"desc";s:20:"pdotools_prop_tplOdd";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"tplWrapper";a:7:{s:4:"name";s:10:"tplWrapper";s:4:"desc";s:24:"pdotools_prop_tplWrapper";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"wrapIfEmpty";a:7:{s:4:"name";s:11:"wrapIfEmpty";s:4:"desc";s:25:"pdotools_prop_wrapIfEmpty";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"totalVar";a:7:{s:4:"name";s:8:"totalVar";s:4:"desc";s:22:"pdotools_prop_totalVar";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:5:"total";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"tplCondition";a:7:{s:4:"name";s:12:"tplCondition";s:4:"desc";s:26:"pdotools_prop_tplCondition";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"tplOperator";a:7:{s:4:"name";s:11:"tplOperator";s:4:"desc";s:25:"pdotools_prop_tplOperator";s:4:"type";s:4:"list";s:7:"options";a:10:{i:0;a:2:{s:4:"text";s:11:"is equal to";s:5:"value";s:2:"==";}i:1;a:2:{s:4:"text";s:15:"is not equal to";s:5:"value";s:2:"!=";}i:2;a:2:{s:4:"text";s:9:"less than";s:5:"value";s:1:"<";}i:3;a:2:{s:4:"text";s:21:"less than or equal to";s:5:"value";s:2:"<=";}i:4;a:2:{s:4:"text";s:24:"greater than or equal to";s:5:"value";s:2:">=";}i:5;a:2:{s:4:"text";s:8:"is empty";s:5:"value";s:5:"empty";}i:6;a:2:{s:4:"text";s:12:"is not empty";s:5:"value";s:6:"!empty";}i:7;a:2:{s:4:"text";s:7:"is null";s:5:"value";s:4:"null";}i:8;a:2:{s:4:"text";s:11:"is in array";s:5:"value";s:7:"inarray";}i:9;a:2:{s:4:"text";s:10:"is between";s:5:"value";s:7:"between";}}s:5:"value";s:2:"==";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"conditionalTpls";a:7:{s:4:"name";s:15:"conditionalTpls";s:4:"desc";s:29:"pdotools_prop_conditionalTpls";s:4:"type";s:8:"textarea";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"select";a:7:{s:4:"name";s:6:"select";s:4:"desc";s:20:"pdotools_prop_select";s:4:"type";s:8:"textarea";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:22:"toSeparatePlaceholders";a:7:{s:4:"name";s:22:"toSeparatePlaceholders";s:4:"desc";s:36:"pdotools_prop_toSeparatePlaceholders";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdousers.php'),
(24, 1, 0, 'pdoCrumbs', '', 0, 3, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (!isset($from) || $from == \'\') {\n    $from = 0;\n}\nif (empty($to)) {\n    $to = $modx->resource->id;\n}\nif (empty($direction)) {\n    $direction = \'ltr\';\n}\nif ($outputSeparator == \'&nbsp;&rarr;&nbsp;\' && $direction == \'rtl\') {\n    $outputSeparator = \'&nbsp;&larr;&nbsp;\';\n}\nif ($limit == \'\') {\n    $limit = 10;\n}\n// For compatibility with BreadCrumb\nif (!empty($maxCrumbs)) {\n    $limit = $maxCrumbs;\n}\nif (!empty($containerTpl)) {\n    $tplWrapper = $containerTpl;\n}\nif (!empty($currentCrumbTpl)) {\n    $tplCurrent = $currentCrumbTpl;\n}\nif (!empty($linkCrumbTpl)) {\n    $scriptProperties[\'tpl\'] = $linkCrumbTpl;\n}\nif (!empty($maxCrumbTpl)) {\n    $tplMax = $maxCrumbTpl;\n}\nif (isset($showBreadCrumbsAtHome)) {\n    $showAtHome = $showBreadCrumbsAtHome;\n}\nif (isset($showHomeCrumb)) {\n    $showHome = $showHomeCrumb;\n}\nif (isset($showCurrentCrumb)) {\n    $showCurrent = $showCurrentCrumb;\n}\n// --\n$fastMode = !empty($fastMode);\n$siteStart = $modx->getOption(\'siteStart\', $scriptProperties, $modx->getOption(\'site_start\'));\n\nif (empty($showAtHome) && $modx->resource->id == $siteStart) {\n    return \'\';\n}\n\n$class = $modx->getOption(\'class\', $scriptProperties, \'modResource\');\n// Start building "Where" expression\n$where = array();\nif (empty($showUnpublished) && empty($showUnPub)) {\n    $where[\'published\'] = 1;\n}\nif (empty($showHidden)) {\n    $where[\'hidemenu\'] = 0;\n}\nif (empty($showDeleted)) {\n    $where[\'deleted\'] = 0;\n}\nif (!empty($hideContainers) && empty($showContainer)) {\n    $where[\'isfolder\'] = 0;\n}\n\n$resource = ($to == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject($class, $to);\n\nif (!$resource) {\n    $message = \'Could not build breadcrumbs to resource "\' . $to . \'"\';\n\n    return \'\';\n}\n\n$parents = $modx->getParentIds($resource->id, $limit, array(\'context\' => $resource->get(\'context_key\')));\nif (!empty($showHome)) {\n    $parents[] = $siteStart;\n}\n\n$ids = array($resource->id);\nforeach ($parents as $parent) {\n    if (!empty($parent)) {\n        $ids[] = $parent;\n    }\n    if (!empty($from) && $parent == $from) {\n        break;\n    }\n}\n$where[\'id:IN\'] = $ids;\n\nif (!empty($exclude)) {\n    $where[\'id:NOT IN\'] = array_map(\'trim\', explode(\',\', $exclude));\n}\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\n$select = array($class => implode(\',\', $resourceColumns));\n\n// Add custom parameters\nforeach (array(\'where\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => $class,\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    \'groupby\' => $class . \'.id\',\n    \'sortby\' => "find_in_set(`$class`.`id`,\'" . implode(\',\', $ids) . "\')",\n    \'sortdir\' => \'\',\n    \'return\' => \'data\',\n    \'totalVar\' => \'pdocrumbs.total\',\n    \'disableConditions\' => true,\n);\n\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$rows = $pdoFetch->run();\n\n$output = array();\nif (!empty($rows) && is_array($rows)) {\n    if (strtolower($direction) == \'ltr\') {\n        $rows = array_reverse($rows);\n    }\n\n    foreach ($rows as $row) {\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\n            $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n                ? $pdoFetch->makeUrl(intval(trim($row[\'content\'], \'[]~ \')), $row)\n                : $row[\'content\'];\n        } else {\n            $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n        }\n\n        $row = array_merge(\n            $scriptProperties,\n            $row,\n            array(\'idx\' => $pdoFetch->idx++)\n        );\n        if (empty($row[\'menutitle\'])) {\n            $row[\'menutitle\'] = $row[\'pagetitle\'];\n        }\n\n        if ($row[\'id\'] == $resource->id && empty($showCurrent)) {\n            continue;\n        } elseif ($row[\'id\'] == $resource->id && !empty($tplCurrent)) {\n            $tpl = $tplCurrent;\n        } elseif ($row[\'id\'] == $siteStart && !empty($tplHome)) {\n            $tpl = $tplHome;\n        } else {\n            $tpl = $pdoFetch->defineChunk($row);\n        }\n        $output[] = empty($tpl)\n            ? \'<pre>\' . $pdoFetch->getChunk(\'\', $row) . \'</pre>\'\n            : $pdoFetch->getChunk($tpl, $row, $fastMode);\n    }\n}\n$pdoFetch->addTime(\'Chunks processed\');\n\nif (count($output) == 1 && !empty($hideSingle)) {\n    $pdoFetch->addTime(\'The only result was hidden, because the parameter "hideSingle" activated\');\n    $output = array();\n}\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class="pdoCrumbsLog">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output = implode($outputSeparator, $output);\n    if ($pdoFetch->idx >= $limit && !empty($tplMax) && !empty($output)) {\n        $output = ($direction == \'ltr\')\n            ? $pdoFetch->getChunk($tplMax, array(), $fastMode) . $output\n            : $output . $pdoFetch->getChunk($tplMax, array(), $fastMode);\n    }\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array(\'output\' => $output, \'crumbs\' => $output), $fastMode);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:30:{s:7:"showLog";a:7:{s:4:"name";s:7:"showLog";s:4:"desc";s:21:"pdotools_prop_showLog";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"fastMode";a:7:{s:4:"name";s:8:"fastMode";s:4:"desc";s:22:"pdotools_prop_fastMode";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:4:"from";a:7:{s:4:"name";s:4:"from";s:4:"desc";s:18:"pdotools_prop_from";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:2:"to";a:7:{s:4:"name";s:2:"to";s:4:"desc";s:16:"pdotools_prop_to";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"limit";a:7:{s:4:"name";s:5:"limit";s:4:"desc";s:19:"pdotools_prop_limit";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:10;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"exclude";a:7:{s:4:"name";s:7:"exclude";s:4:"desc";s:21:"pdotools_prop_exclude";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"outputSeparator";a:7:{s:4:"name";s:15:"outputSeparator";s:4:"desc";s:29:"pdotools_prop_outputSeparator";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"\n";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:27:"pdotools_prop_toPlaceholder";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"includeTVs";a:7:{s:4:"name";s:10:"includeTVs";s:4:"desc";s:24:"pdotools_prop_includeTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"prepareTVs";a:7:{s:4:"name";s:10:"prepareTVs";s:4:"desc";s:24:"pdotools_prop_prepareTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"1";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"processTVs";a:7:{s:4:"name";s:10:"processTVs";s:4:"desc";s:24:"pdotools_prop_processTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"tvPrefix";a:7:{s:4:"name";s:8:"tvPrefix";s:4:"desc";s:22:"pdotools_prop_tvPrefix";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:3:"tv.";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"where";a:7:{s:4:"name";s:5:"where";s:4:"desc";s:19:"pdotools_prop_where";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"showUnpublished";a:7:{s:4:"name";s:15:"showUnpublished";s:4:"desc";s:29:"pdotools_prop_showUnpublished";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"showDeleted";a:7:{s:4:"name";s:11:"showDeleted";s:4:"desc";s:25:"pdotools_prop_showDeleted";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"showHidden";a:7:{s:4:"name";s:10:"showHidden";s:4:"desc";s:24:"pdotools_prop_showHidden";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:14:"hideContainers";a:7:{s:4:"name";s:14:"hideContainers";s:4:"desc";s:28:"pdotools_prop_hideContainers";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:17:"pdotools_prop_tpl";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:55:"@INLINE <li><a href="[[+link]]">[[+menutitle]]</a></li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"tplCurrent";a:7:{s:4:"name";s:10:"tplCurrent";s:4:"desc";s:24:"pdotools_prop_tplCurrent";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:46:"@INLINE <li class="active">[[+menutitle]]</li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"tplMax";a:7:{s:4:"name";s:6:"tplMax";s:4:"desc";s:20:"pdotools_prop_tplMax";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:49:"@INLINE <li class="disabled">&nbsp;...&nbsp;</li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"tplHome";a:7:{s:4:"name";s:7:"tplHome";s:4:"desc";s:21:"pdotools_prop_tplHome";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"tplWrapper";a:7:{s:4:"name";s:10:"tplWrapper";s:4:"desc";s:24:"pdotools_prop_tplWrapper";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:47:"@INLINE <ul class="breadcrumb">[[+output]]</ul>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"wrapIfEmpty";a:7:{s:4:"name";s:11:"wrapIfEmpty";s:4:"desc";s:25:"pdotools_prop_wrapIfEmpty";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"showCurrent";a:7:{s:4:"name";s:11:"showCurrent";s:4:"desc";s:25:"pdotools_prop_showCurrent";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"showHome";a:7:{s:4:"name";s:8:"showHome";s:4:"desc";s:22:"pdotools_prop_showHome";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"showAtHome";a:7:{s:4:"name";s:10:"showAtHome";s:4:"desc";s:24:"pdotools_prop_showAtHome";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"hideSingle";a:7:{s:4:"name";s:10:"hideSingle";s:4:"desc";s:24:"pdotools_prop_hideSingle";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"direction";a:7:{s:4:"name";s:9:"direction";s:4:"desc";s:23:"pdotools_prop_direction";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:5:"value";s:3:"ltr";s:4:"text";s:19:"Left To Right (ltr)";}i:1;a:2:{s:5:"value";s:3:"rtl";s:4:"text";s:19:"Right To Left (rtl)";}}s:5:"value";s:3:"ltr";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"scheme";a:7:{s:4:"name";s:6:"scheme";s:4:"desc";s:20:"pdotools_prop_scheme";s:4:"type";s:4:"list";s:7:"options";a:6:{i:0;a:2:{s:5:"value";s:0:"";s:4:"text";s:14:"System default";}i:1;a:2:{s:5:"value";i:-1;s:4:"text";s:25:"-1 (relative to site_url)";}i:2;a:2:{s:5:"value";s:4:"full";s:4:"text";s:40:"full (absolute, prepended with site_url)";}i:3;a:2:{s:5:"value";s:3:"abs";s:4:"text";s:39:"abs (absolute, prepended with base_url)";}i:4;a:2:{s:5:"value";s:4:"http";s:4:"text";s:38:"http (absolute, forced to http scheme)";}i:5;a:2:{s:5:"value";s:5:"https";s:4:"text";s:40:"https (absolute, forced to https scheme)";}}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"useWeblinkUrl";a:7:{s:4:"name";s:13:"useWeblinkUrl";s:4:"desc";s:27:"pdotools_prop_useWeblinkUrl";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdocrumbs.php'),
(25, 1, 0, 'pdoField', '', 0, 3, 0, '/** @var array $scriptProperties */\nif (!empty($input)) {\n    $id = $input;\n}\nif (!isset($default)) {\n    $default = \'\';\n}\nif (!isset($output)) {\n    $output = \'\';\n}\n$class = $modx->getOption(\'class\', $scriptProperties, \'modResource\', true);\n$isResource = $class == \'modResource\' || in_array($class, $modx->getDescendants(\'modResource\'));\n\nif (empty($field)) {\n    $field = \'pagetitle\';\n}\n$top = isset($top) ? intval($top) : 0;\n$topLevel = isset($topLevel) ? intval($topLevel) : 0;\nif (!empty($options)) {\n    $options = trim($options);\n    if ($options[0] == \'{\') {\n        $tmp = json_decode($options, true);\n        if (is_array($tmp)) {\n            extract($tmp);\n            $scriptProperties = array_merge($scriptProperties, $tmp);\n        }\n    } else {\n        $field = $options;\n    }\n}\nif (empty($id)) {\n    if (!empty($modx->resource)) {\n        $id = $modx->resource->id;\n    } else {\n        return \'You must specify an id of \' . $class;\n    }\n}\nif (!isset($context)) {\n    $context = \'\';\n}\n\n// Gets the parent from root of context, if specified\nif ($isResource && $id && ($top || $topLevel)) {\n    // Select needed context for parents functionality\n    if (empty($context)) {\n        $q = $modx->newQuery($class, $id);\n        $q->select(\'context_key\');\n        $tstart = microtime(true);\n        if ($q->prepare() && $q->stmt->execute()) {\n            $modx->queryTime += microtime(true) - $tstart;\n            $modx->executedQueries++;\n            $context = $q->stmt->fetch(PDO::FETCH_COLUMN);\n        }\n    }\n    // Original pdoField logic\n    if (empty($ultimate)) {\n        if ($topLevel) {\n            $pids = $modx->getChildIds(0, $topLevel, array(\'context\' => $context));\n            $pid = $id;\n            while (true) {\n                $tmp = $modx->getParentIds($pid, 1, array(\'context\' => $context));\n                if (!$pid = current($tmp)) {\n                    break;\n                } elseif (in_array($pid, $pids)) {\n                    $id = $pid;\n                    break;\n                }\n            }\n        } elseif ($top) {\n            $pid = $id;\n            for ($i = 1; $i <= $top; $i++) {\n                $tmp = $modx->getParentIds($pid, 1, array(\'context\' => $context));\n                if (!$pid = current($tmp)) {\n                    break;\n                }\n                $id = $pid;\n            }\n        }\n    }\n    // UltimateParent logic\n    // https://github.com/splittingred/UltimateParent/blob/develop/core/components/ultimateparent/snippet.ultimateparent.php\n    elseif ($id != $top) {\n        $pid = $id;\n        $pids = $modx->getParentIds($id, 10, array(\'context\' => $context));\n        if (!$topLevel || count($pids) >= $topLevel) {\n            while ($parentIds = $modx->getParentIds($id, 1, array(\'context\' => $context))) {\n                $pid = array_pop($parentIds);\n                if ($pid == $top) {\n                    break;\n                }\n                $id = $pid;\n                $parentIds = $modx->getParentIds($id, 10, array(\'context\' => $context));\n                if ($topLevel && count($parentIds) < $topLevel) {\n                    break;\n                }\n            }\n        }\n    }\n}\n\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n$where = array($class . \'.id\' => $id);\n// Add custom parameters\nforeach (array(\'where\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\n$field = strtolower($field);\nif (in_array($field, $resourceColumns)) {\n    $scriptProperties[\'select\'] = array($class => $field);\n    $scriptProperties[\'includeTVs\'] = \'\';\n} elseif ($isResource) {\n    $scriptProperties[\'select\'] = array($class => \'id\');\n    $scriptProperties[\'includeTVs\'] = $field;\n}\n// Additional default field\nif (!empty($default)) {\n    $default = strtolower($default);\n    if (in_array($default, $resourceColumns)) {\n        $scriptProperties[\'select\'][$class] .= \',\' . $default;\n    } elseif ($isResource) {\n        $scriptProperties[\'includeTVs\'] = empty($scriptProperties[\'includeTVs\'])\n            ? $default\n            : $scriptProperties[\'includeTVs\'] . \',\' . $default;\n    }\n}\n\n$scriptProperties[\'disableConditions\'] = true;\nif ($row = $pdoFetch->getObject($class, $where, $scriptProperties)) {\n    foreach ($row as $k => $v) {\n        if (strtolower($k) == $field && $v != \'\') {\n            $output = $v;\n            break;\n        }\n    }\n\n    if (empty($output) && !empty($default)) {\n        foreach ($row as $k => $v) {\n            if (strtolower($k) == $default && $v != \'\') {\n                $output = $v;\n                break;\n            }\n        }\n    }\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:12:{s:2:"id";a:7:{s:4:"name";s:2:"id";s:4:"desc";s:16:"pdotools_prop_id";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"field";a:7:{s:4:"name";s:5:"field";s:4:"desc";s:19:"pdotools_prop_field";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";s:9:"pagetitle";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"prepareTVs";a:7:{s:4:"name";s:10:"prepareTVs";s:4:"desc";s:24:"pdotools_prop_prepareTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"1";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"processTVs";a:7:{s:4:"name";s:10:"processTVs";s:4:"desc";s:24:"pdotools_prop_processTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"where";a:7:{s:4:"name";s:5:"where";s:4:"desc";s:19:"pdotools_prop_where";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"context";a:7:{s:4:"name";s:7:"context";s:4:"desc";s:27:"pdotools_prop_field_context";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:3:"top";a:7:{s:4:"name";s:3:"top";s:4:"desc";s:17:"pdotools_prop_top";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"topLevel";a:7:{s:4:"name";s:8:"topLevel";s:4:"desc";s:22:"pdotools_prop_topLevel";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"default";a:7:{s:4:"name";s:7:"default";s:4:"desc";s:27:"pdotools_prop_field_default";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"output";a:7:{s:4:"name";s:6:"output";s:4:"desc";s:26:"pdotools_prop_field_output";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:27:"pdotools_prop_toPlaceholder";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"ultimate";a:7:{s:4:"name";s:8:"ultimate";s:4:"desc";s:22:"pdotools_prop_ultimate";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdofield.php');
INSERT INTO `chisto_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(26, 1, 0, 'pdoSitemap', '', 0, 3, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n// Default variables\nif (empty($tpl)) {\n    $tpl = "@INLINE \\n<url>\\n\\t<loc>[[+url]]</loc>\\n\\t<lastmod>[[+date]]</lastmod>\\n\\t<changefreq>[[+update]]</changefreq>\\n\\t<priority>[[+priority]]</priority>\\n</url>";\n}\nif (empty($tplWrapper)) {\n    $tplWrapper = "@INLINE <?xml version=\\"1.0\\" encoding=\\"[[++modx_charset]]\\"?>\\n<urlset xmlns=\\"[[+schema]]\\">\\n[[+output]]\\n</urlset>";\n}\nif (empty($sitemapSchema)) {\n    $sitemapSchema = \'http://www.sitemaps.org/schemas/sitemap/0.9\';\n}\nif (empty($outputSeparator)) {\n    $outputSeparator = "\\n";\n}\nif (empty($cacheKey)) {\n    $scriptProperties[\'cacheKey\'] = \'sitemap/\' . substr(md5(json_encode($scriptProperties)), 0, 6);\n}\n\n// Convert parameters from GoogleSiteMap if exists\nif (!empty($itemTpl)) {\n    $tpl = $itemTpl;\n}\nif (!empty($containerTpl)) {\n    $tplWrapper = $containerTpl;\n}\nif (!empty($allowedtemplates)) {\n    $scriptProperties[\'templates\'] = $allowedtemplates;\n}\nif (!empty($maxDepth)) {\n    $scriptProperties[\'depth\'] = $maxDepth;\n}\nif (isset($hideDeleted)) {\n    $scriptProperties[\'showDeleted\'] = !$hideDeleted;\n}\nif (isset($published)) {\n    $scriptProperties[\'showUnpublished\'] = !$published;\n}\nif (isset($searchable)) {\n    $scriptProperties[\'showUnsearchable\'] = !$searchable;\n}\nif (!empty($googleSchema)) {\n    $sitemapSchema = $googleSchema;\n}\nif (!empty($excludeResources)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeResources));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = \'-\' . $v;\n        }\n    }\n}\nif (!empty($excludeChildrenOf)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeChildrenOf));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'parents\'])) {\n            $scriptProperties[\'parents\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'parents\'] = \'-\' . $v;\n        }\n    }\n}\nif (!empty($startId)) {\n    if (!empty($scriptProperties[\'parents\'])) {\n        $scriptProperties[\'parents\'] .= \',\' . $startId;\n    } else {\n        $scriptProperties[\'parents\'] = $startId;\n    }\n}\nif (!empty($sortBy)) {\n    $scriptProperties[\'sortby\'] = $sortBy;\n}\nif (!empty($sortDir)) {\n    $scriptProperties[\'sortdir\'] = $sortDir;\n}\nif (!empty($priorityTV)) {\n    if (!empty($scriptProperties[\'includeTVs\'])) {\n        $scriptProperties[\'includeTVs\'] .= \',\' . $priorityTV;\n    } else {\n        $scriptProperties[\'includeTVs\'] = $priorityTV;\n    }\n}\nif (!empty($itemSeparator)) {\n    $outputSeparator = $itemSeparator;\n}\n//---\n\n\n$class = \'modResource\';\n$where = array();\nif (empty($showHidden)) {\n    $where[] = array(\n        $class . \'.hidemenu\' => 0,\n        \'OR:\' . $class . \'.class_key:IN\' => array(\'Ticket\', \'Article\'),\n    );\n}\nif (empty($context)) {\n    $scriptProperties[\'context\'] = $modx->context->key;\n}\n\n$select = array($class => \'id,editedon,createdon,context_key,class_key,uri\');\nif (!empty($useWeblinkUrl)) {\n    $select[$class] .= \',content\';\n}\n// Add custom parameters\nforeach (array(\'where\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => $class,\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    \'sortby\' => "{$class}.parent ASC, {$class}.menuindex",\n    \'sortdir\' => \'ASC\',\n    \'return\' => \'data\',\n    \'scheme\' => \'full\',\n    \'limit\' => 0,\n);\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n\nif (!empty($cache)) {\n    $data = $pdoFetch->getCache($scriptProperties);\n}\nif (empty($data)) {\n    $now = time();\n    $data = $urls = array();\n    $rows = $pdoFetch->run();\n    foreach ($rows as $row) {\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\n            $row[\'url\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n                ? $pdoFetch->makeUrl(intval(trim($row[\'content\'], \'[]~ \')), $row)\n                : $row[\'content\'];\n        } else {\n            $row[\'url\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n        }\n\n        $time = !empty($row[\'editedon\'])\n            ? $row[\'editedon\']\n            : $row[\'createdon\'];\n        $row[\'date\'] = date(\'c\', $time);\n\n        $datediff = floor(($now - $time) / 86400);\n        if ($datediff <= 1) {\n            $row[\'priority\'] = \'1.0\';\n            $row[\'update\'] = \'daily\';\n        } elseif (($datediff > 1) && ($datediff <= 7)) {\n            $row[\'priority\'] = \'0.75\';\n            $row[\'update\'] = \'weekly\';\n        } elseif (($datediff > 7) && ($datediff <= 30)) {\n            $row[\'priority\'] = \'0.50\';\n            $row[\'update\'] = \'weekly\';\n        } else {\n            $row[\'priority\'] = \'0.25\';\n            $row[\'update\'] = \'monthly\';\n        }\n        if (!empty($priorityTV) && !empty($row[$priorityTV])) {\n            $row[\'priority\'] = $row[$priorityTV];\n        }\n\n        // Fix possible duplicates made by modWebLink\n        if (!empty($urls[$row[\'url\']])) {\n            if ($urls[$row[\'url\']] > $row[\'date\']) {\n                continue;\n            }\n        }\n        $urls[$row[\'url\']] = $row[\'date\'];\n\n        // Add item to output\n        $data[$row[\'url\']] = $pdoFetch->parseChunk($tpl, $row);\n        if (strpos($data[$row[\'url\']], \'[[\') !== false) {\n            $modx->parser->processElementTags(\'\', $data[$row[\'url\']], true, true, \'[[\', \']]\', array(), 10);\n        }\n    }\n    $pdoFetch->addTime(\'Rows processed\');\n    if (!empty($cache)) {\n        $pdoFetch->setCache($data, $scriptProperties);\n    }\n}\n\n$output = implode($outputSeparator, $data);\n$output = $pdoFetch->getChunk($tplWrapper, array(\n    \'schema\' => $sitemapSchema,\n    \'output\' => $output,\n    \'items\' => $output,\n));\n$pdoFetch->addTime(\'Rows wrapped\');\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class="pdoSitemapLog">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($forceXML)) {\n    header("Content-Type:text/xml");\n    @session_write_close();\n    exit($output);\n} else {\n    return $output;\n}', 0, 'a:24:{s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:17:"pdotools_prop_tpl";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:145:"@INLINE <url>\n	<loc>[[+url]]</loc>\n	<lastmod>[[+date]]</lastmod>\n	<changefreq>[[+update]]</changefreq>\n	<priority>[[+priority]]</priority>\n</url>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"tplWrapper";a:7:{s:4:"name";s:10:"tplWrapper";s:4:"desc";s:24:"pdotools_prop_tplWrapper";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:110:"@INLINE <?xml version="1.0" encoding="[[++modx_charset]]"?>\n<urlset xmlns="[[+schema]]">\n[[+output]]\n</urlset>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"templates";a:7:{s:4:"name";s:9:"templates";s:4:"desc";s:23:"pdotools_prop_templates";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"context";a:7:{s:4:"name";s:7:"context";s:4:"desc";s:21:"pdotools_prop_context";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"depth";a:7:{s:4:"name";s:5:"depth";s:4:"desc";s:19:"pdotools_prop_depth";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:10;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"showDeleted";a:7:{s:4:"name";s:11:"showDeleted";s:4:"desc";s:25:"pdotools_prop_showDeleted";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"showHidden";a:7:{s:4:"name";s:10:"showHidden";s:4:"desc";s:24:"pdotools_prop_showHidden";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"sitemapSchema";a:7:{s:4:"name";s:13:"sitemapSchema";s:4:"desc";s:27:"pdotools_prop_sitemapSchema";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:43:"http://www.sitemaps.org/schemas/sitemap/0.9";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"showUnpublished";a:7:{s:4:"name";s:15:"showUnpublished";s:4:"desc";s:29:"pdotools_prop_showUnpublished";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:16:"hideUnsearchable";a:7:{s:4:"name";s:16:"hideUnsearchable";s:4:"desc";s:30:"pdotools_prop_hideUnsearchable";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"resources";a:7:{s:4:"name";s:9:"resources";s:4:"desc";s:23:"pdotools_prop_resources";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"parents";a:7:{s:4:"name";s:7:"parents";s:4:"desc";s:21:"pdotools_prop_parents";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"sortby";a:7:{s:4:"name";s:6:"sortby";s:4:"desc";s:20:"pdotools_prop_sortby";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:9:"menuindex";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"sortdir";a:7:{s:4:"name";s:7:"sortdir";s:4:"desc";s:21:"pdotools_prop_sortdir";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:3:"asc";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"where";a:7:{s:4:"name";s:5:"where";s:4:"desc";s:19:"pdotools_prop_where";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"includeTVs";a:7:{s:4:"name";s:10:"includeTVs";s:4:"desc";s:24:"pdotools_prop_includeTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"prepareTVs";a:7:{s:4:"name";s:10:"prepareTVs";s:4:"desc";s:24:"pdotools_prop_prepareTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"1";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"processTVs";a:7:{s:4:"name";s:10:"processTVs";s:4:"desc";s:24:"pdotools_prop_processTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"outputSeparator";a:7:{s:4:"name";s:15:"outputSeparator";s:4:"desc";s:29:"pdotools_prop_outputSeparator";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"\n";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"forceXML";a:7:{s:4:"name";s:8:"forceXML";s:4:"desc";s:22:"pdotools_prop_forceXML";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"useWeblinkUrl";a:7:{s:4:"name";s:13:"useWeblinkUrl";s:4:"desc";s:27:"pdotools_prop_useWeblinkUrl";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"cache";a:7:{s:4:"name";s:5:"cache";s:4:"desc";s:19:"pdotools_prop_cache";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"cacheKey";a:7:{s:4:"name";s:8:"cacheKey";s:4:"desc";s:22:"pdotools_prop_cacheKey";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"cacheTime";a:7:{s:4:"name";s:9:"cacheTime";s:4:"desc";s:23:"pdotools_prop_cacheTime";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:600;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdositemap.php'),
(27, 1, 0, 'pdoNeighbors', '', 0, 3, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (empty($id)) {\n    $id = $modx->resource->id;\n}\nif (empty($limit)) {\n    $limit = 1;\n}\nif (!isset($outputSeparator)) {\n    $outputSeparator = "\\n";\n}\n$fastMode = !empty($fastMode);\n\n$class = \'modResource\';\n$resource = ($id == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject($class, $id);\nif (!$resource) {\n    return \'\';\n}\n\n// We need to determine ids of neighbors\n$params = $scriptProperties;\n$params[\'select\'] = \'id\';\n$params[\'limit\'] = 0;\nif (!empty($parents) && is_string($parents)) {\n    $parents = array_map(\'trim\', explode(\',\', $parents));\n    if (!in_array($resource->parent, $parents)) {\n        $parents[] = $resource->parent;\n    }\n    $key = array_search($resource->parent * -1, $parents);\n    if ($key !== false) {\n        unset($parents[$key]);\n    }\n    $params[\'parents\'] = implode(\',\', $parents);\n    $ids = $pdoFetch->getCollection(\'modResource\', array(), $params);\n    unset($scriptProperties[\'parents\']);\n} else {\n    $ids = $pdoFetch->getCollection(\'modResource\', array(\'parent\' => $resource->parent), $params);\n}\n\n$found = false;\n$prev = $next = array();\nforeach ($ids as $v) {\n    if ($v[\'id\'] == $id) {\n        $found = true;\n        continue;\n    } elseif (!$found) {\n        $prev[] = $v[\'id\'];\n    } else {\n        $next[] = $v[\'id\'];\n        if (count($next) >= $limit) {\n            break;\n        }\n    }\n}\n$prev = array_splice($prev, $limit * -1);\nif (!empty($loop)) {\n    if (!count($prev)) {\n        $v = end($ids);\n        $prev[] = $v[\'id\'];\n    } else {\n        if (!count($next)) {\n            $v = reset($ids);\n            $next[] = $v[\'id\'];\n        }\n    }\n}\n$ids = array_merge($prev, $next, array($resource->parent));\n$pdoFetch->addTime(\'Found ids of neighbors: \' . implode(\',\', $ids));\n\n// Query conditions\n$where = array($class . \'.id:IN\' => $ids);\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\nif (empty($includeContent) && empty($useWeblinkUrl)) {\n    $key = array_search(\'content\', $resourceColumns);\n    unset($resourceColumns[$key]);\n}\n$select = array($class => implode(\',\', $resourceColumns));\n\n// Add custom parameters\nforeach (array(\'where\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => $class,\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    //\'groupby\' => $class.\'.id\',\n    \'sortby\' => $class . \'.menuindex\',\n    \'sortdir\' => \'ASC\',\n    \'return\' => \'data\',\n    \'limit\' => 0,\n    \'totalVar\' => \'pdoneighbors.total\',\n);\n\n// Merge all properties and run!\nunset($scriptProperties[\'limit\']);\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n\n$rows = $pdoFetch->run();\n$prev = array_flip($prev);\n$next = array_flip($next);\n\n$output = array(\'prev\' => array(), \'up\' => array(), \'next\' => array());\nforeach ($rows as $row) {\n    if (empty($row[\'menutitle\'])) {\n        $row[\'menutitle\'] = $row[\'pagetitle\'];\n    }\n    if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\n        $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n            ? $pdoFetch->makeUrl(intval(trim($row[\'content\'], \'[]~ \')), $row)\n            : $row[\'content\'];\n    } else {\n        $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n    }\n\n    if (isset($prev[$row[\'id\']])) {\n        $output[\'prev\'][] = !empty($tplPrev)\n            ? $pdoFetch->getChunk($tplPrev, $row, $fastMode)\n            : $pdoFetch->getChunk(\'\', $row);\n    } elseif (isset($next[$row[\'id\']])) {\n        $output[\'next\'][] = !empty($tplNext)\n            ? $pdoFetch->getChunk($tplNext, $row, $fastMode)\n            : $pdoFetch->getChunk(\'\', $row);\n    } else {\n        $output[\'up\'][] = !empty($tplUp)\n            ? $pdoFetch->getChunk($tplUp, $row, $fastMode)\n            : $pdoFetch->getChunk(\'\', $row);\n    }\n}\n$pdoFetch->addTime(\'Chunks processed\');\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class="pdoNeighborsLog">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nforeach ($output as &$row) {\n    $row = implode($outputSeparator, $row);\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    if (!empty($rows) || !empty($wrapIfEmpty)) {\n        $output = !empty($tplWrapper)\n            ? $pdoFetch->getChunk($tplWrapper, $output, $fastMode)\n            : $pdoFetch->getChunk(\'\', $output);\n    } else {\n        $output = \'\';\n    }\n    $output .= $log;\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:27:{s:2:"id";a:7:{s:4:"name";s:2:"id";s:4:"desc";s:16:"pdotools_prop_id";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"limit";a:7:{s:4:"name";s:5:"limit";s:4:"desc";s:29:"pdotools_prop_neighbors_limit";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"sortby";a:7:{s:4:"name";s:6:"sortby";s:4:"desc";s:20:"pdotools_prop_sortby";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:9:"menuindex";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"sortdir";a:7:{s:4:"name";s:7:"sortdir";s:4:"desc";s:21:"pdotools_prop_sortdir";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:3:"asc";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"depth";a:7:{s:4:"name";s:5:"depth";s:4:"desc";s:19:"pdotools_prop_depth";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"tplPrev";a:7:{s:4:"name";s:7:"tplPrev";s:4:"desc";s:21:"pdotools_prop_tplPrev";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:84:"@INLINE <span class="link-prev"><a href="[[+link]]">&larr; [[+menutitle]]</a></span>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"tplUp";a:7:{s:4:"name";s:5:"tplUp";s:4:"desc";s:19:"pdotools_prop_tplUp";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:82:"@INLINE <span class="link-up">&uarr; <a href="[[+link]]">[[+menutitle]]</a></span>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"tplNext";a:7:{s:4:"name";s:7:"tplNext";s:4:"desc";s:21:"pdotools_prop_tplNext";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:84:"@INLINE <span class="link-next"><a href="[[+link]]">[[+menutitle]] &rarr;</a></span>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"tplWrapper";a:7:{s:4:"name";s:10:"tplWrapper";s:4:"desc";s:34:"pdotools_prop_neighbors_tplWrapper";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:62:"@INLINE <div class="neighbors">[[+prev]][[+up]][[+next]]</div>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"wrapIfEmpty";a:7:{s:4:"name";s:11:"wrapIfEmpty";s:4:"desc";s:25:"pdotools_prop_wrapIfEmpty";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"showUnpublished";a:7:{s:4:"name";s:15:"showUnpublished";s:4:"desc";s:29:"pdotools_prop_showUnpublished";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"showDeleted";a:7:{s:4:"name";s:11:"showDeleted";s:4:"desc";s:25:"pdotools_prop_showDeleted";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"showHidden";a:7:{s:4:"name";s:10:"showHidden";s:4:"desc";s:24:"pdotools_prop_showHidden";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:14:"hideContainers";a:7:{s:4:"name";s:14:"hideContainers";s:4:"desc";s:28:"pdotools_prop_hideContainers";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:22:"toSeparatePlaceholders";a:7:{s:4:"name";s:22:"toSeparatePlaceholders";s:4:"desc";s:36:"pdotools_prop_toSeparatePlaceholders";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:27:"pdotools_prop_toPlaceholder";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"parents";a:7:{s:4:"name";s:7:"parents";s:4:"desc";s:21:"pdotools_prop_parents";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"outputSeparator";a:7:{s:4:"name";s:15:"outputSeparator";s:4:"desc";s:29:"pdotools_prop_outputSeparator";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"\n";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"showLog";a:7:{s:4:"name";s:7:"showLog";s:4:"desc";s:21:"pdotools_prop_showLog";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"fastMode";a:7:{s:4:"name";s:8:"fastMode";s:4:"desc";s:22:"pdotools_prop_fastMode";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"includeTVs";a:7:{s:4:"name";s:10:"includeTVs";s:4:"desc";s:24:"pdotools_prop_includeTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"prepareTVs";a:7:{s:4:"name";s:10:"prepareTVs";s:4:"desc";s:24:"pdotools_prop_prepareTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"1";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"processTVs";a:7:{s:4:"name";s:10:"processTVs";s:4:"desc";s:24:"pdotools_prop_processTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"tvPrefix";a:7:{s:4:"name";s:8:"tvPrefix";s:4:"desc";s:22:"pdotools_prop_tvPrefix";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:3:"tv.";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"scheme";a:7:{s:4:"name";s:6:"scheme";s:4:"desc";s:20:"pdotools_prop_scheme";s:4:"type";s:4:"list";s:7:"options";a:6:{i:0;a:2:{s:5:"value";s:0:"";s:4:"text";s:14:"System default";}i:1;a:2:{s:5:"value";i:-1;s:4:"text";s:25:"-1 (relative to site_url)";}i:2;a:2:{s:5:"value";s:4:"full";s:4:"text";s:40:"full (absolute, prepended with site_url)";}i:3;a:2:{s:5:"value";s:3:"abs";s:4:"text";s:39:"abs (absolute, prepended with base_url)";}i:4;a:2:{s:5:"value";s:4:"http";s:4:"text";s:38:"http (absolute, forced to http scheme)";}i:5;a:2:{s:5:"value";s:5:"https";s:4:"text";s:40:"https (absolute, forced to https scheme)";}}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"useWeblinkUrl";a:7:{s:4:"name";s:13:"useWeblinkUrl";s:4:"desc";s:27:"pdotools_prop_useWeblinkUrl";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:4:"loop";a:7:{s:4:"name";s:4:"loop";s:4:"desc";s:18:"pdotools_prop_loop";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoneighbors.php'),
(28, 1, 0, 'pdoPage', '', 0, 3, 0, '/** @var array $scriptProperties */\n// Default variables\nif (empty($pageVarKey)) {\n    $pageVarKey = \'page\';\n}\nif (empty($pageNavVar)) {\n    $pageNavVar = \'page.nav\';\n}\nif (empty($pageCountVar)) {\n    $pageCountVar = \'pageCount\';\n}\nif (empty($totalVar)) {\n    $totalVar = \'total\';\n}\nif (empty($page)) {\n    $page = 1;\n}\nif (empty($pageLimit)) {\n    $pageLimit = 5;\n} else {\n    $pageLimit = (integer)$pageLimit;\n}\nif (!isset($plPrefix)) {\n    $plPrefix = \'\';\n}\nif (!empty($scriptProperties[\'ajaxMode\'])) {\n    $scriptProperties[\'ajax\'] = 1;\n}\n\n// Convert parameters from getPage if exists\nif (!empty($namespace)) {\n    $plPrefix = $namespace;\n}\nif (!empty($pageNavTpl)) {\n    $scriptProperties[\'tplPage\'] = $pageNavTpl;\n}\nif (!empty($pageNavOuterTpl)) {\n    $scriptProperties[\'tplPageWrapper\'] = $pageNavOuterTpl;\n}\nif (!empty($pageActiveTpl)) {\n    $scriptProperties[\'tplPageActive\'] = $pageActiveTpl;\n}\nif (!empty($pageFirstTpl)) {\n    $scriptProperties[\'tplPageFirst\'] = $pageFirstTpl;\n}\nif (!empty($pagePrevTpl)) {\n    $scriptProperties[\'tplPagePrev\'] = $pagePrevTpl;\n}\nif (!empty($pageNextTpl)) {\n    $scriptProperties[\'tplPageNext\'] = $pageNextTpl;\n}\nif (!empty($pageLastTpl)) {\n    $scriptProperties[\'tplPageLast\'] = $pageLastTpl;\n}\nif (!empty($pageSkipTpl)) {\n    $scriptProperties[\'tplPageSkip\'] = $pageSkipTpl;\n}\nif (!empty($pageNavScheme)) {\n    $scriptProperties[\'scheme\'] = $pageNavScheme;\n}\nif (!empty($cache_expires)) {\n    $scriptProperties[\'cacheTime\'] = $cache_expires;\n}\n//---\n$strictMode = !empty($strictMode);\n\n$isAjax = !empty($scriptProperties[\'ajax\']) && !empty($_SERVER[\'HTTP_X_REQUESTED_WITH\']) && $_SERVER[\'HTTP_X_REQUESTED_WITH\'] == \'XMLHttpRequest\';\nif ($isAjax && !isset($_REQUEST[$pageVarKey])) {\n    return;\n}\n\n/** @var pdoPage $pdoPage */\n$fqn = $modx->getOption(\'pdoPage.class\', null, \'pdotools.pdopage\', true);\n$path = $modx->getOption(\'pdopage_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoPage = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoPage->pdoTools->addTime(\'pdoTools loaded\');\n\n// Script and styles\nif (!$isAjax && !empty($scriptProperties[\'ajaxMode\'])) {\n    $pdoPage->loadJsCss();\n}\n// Removing of default scripts and styles so they do not overwrote nested snippet parameters\nif ($snippet = $modx->getObject(\'modSnippet\', array(\'name\' => \'pdoPage\'))) {\n    $properties = $snippet->get(\'properties\');\n    if ($scriptProperties[\'frontend_js\'] == $properties[\'frontend_js\'][\'value\']) {\n        unset($scriptProperties[\'frontend_js\']);\n    }\n    if ($scriptProperties[\'frontend_css\'] == $properties[\'frontend_css\'][\'value\']) {\n        unset($scriptProperties[\'frontend_css\']);\n    }\n}\n\n// Page\nif (isset($_REQUEST[$pageVarKey]) && $strictMode && (!is_numeric($_REQUEST[$pageVarKey]) || ($_REQUEST[$pageVarKey] <= 1 && !$isAjax))) {\n    return $pdoPage->redirectToFirst($isAjax);\n} elseif (!empty($_REQUEST[$pageVarKey])) {\n    $page = (integer)$_REQUEST[$pageVarKey];\n}\n$scriptProperties[\'page\'] = $page;\n$scriptProperties[\'request\'] = $_REQUEST;\n\n// Limit\nif (isset($_REQUEST[\'limit\'])) {\n    if (is_numeric($_REQUEST[\'limit\']) && abs($_REQUEST[\'limit\']) > 0) {\n        $scriptProperties[\'limit\'] = abs($_REQUEST[\'limit\']);\n    } elseif ($strictMode) {\n        unset($_GET[\'limit\']);\n\n        return $pdoPage->redirectToFirst($isAjax);\n    }\n}\nif (!empty($maxLimit) && !empty($scriptProperties[\'limit\']) && $scriptProperties[\'limit\'] > $maxLimit) {\n    $scriptProperties[\'limit\'] = $maxLimit;\n}\n\n// Offset\n$offset = !empty($scriptProperties[\'offset\']) && $scriptProperties[\'offset\'] > 0\n    ? (int)$scriptProperties[\'offset\']\n    : 0;\n$scriptProperties[\'offset\'] = $page > 1\n    ? $scriptProperties[\'limit\'] * ($page - 1) + $offset\n    : $offset;\nif (!empty($scriptProperties[\'offset\']) && empty($scriptProperties[\'limit\'])) {\n    $scriptProperties[\'limit\'] = 10000000;\n}\n\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\n$url = $pdoPage->getBaseUrl();\n$output = $pagination = $total = $pageCount = \'\';\n\n$data = $cache\n    ? $pdoPage->pdoTools->getCache($scriptProperties)\n    : array();\n\nif (empty($data)) {\n    $scriptProperties[\'setTotal\'] = true;\n    $output = $pdoPage->pdoTools->runSnippet($scriptProperties[\'element\'], $scriptProperties);\n    if ($output === false) {\n        return \'\';\n    } elseif (!empty($toPlaceholder)) {\n        $output = $modx->getPlaceholder($toPlaceholder);\n    }\n\n    // Pagination\n    $total = (int)$modx->getPlaceholder($totalVar);\n    $pageCount = !empty($scriptProperties[\'limit\']) && $total > $offset\n        ? ceil(($total - $offset) / $scriptProperties[\'limit\'])\n        : 0;\n\n    // Redirect to start if somebody specified incorrect page\n    if ($page > 1 && $page > $pageCount && $strictMode) {\n        return $pdoPage->redirectToFirst($isAjax);\n    }\n    if (!empty($pageCount) && $pageCount > 1) {\n        $pagination = array(\n            \'first\' => $page > 1 && !empty($tplPageFirst)\n                ? $pdoPage->makePageLink($url, 1, $tplPageFirst)\n                : \'\',\n            \'prev\' => $page > 1 && !empty($tplPagePrev)\n                ? $pdoPage->makePageLink($url, $page - 1, $tplPagePrev)\n                : \'\',\n            \'pages\' => $pageLimit >= 7 && empty($disableModernPagination)\n                ? $pdoPage->buildModernPagination($page, $pageCount, $url)\n                : $pdoPage->buildClassicPagination($page, $pageCount, $url),\n            \'next\' => $page < $pageCount && !empty($tplPageNext)\n                ? $pdoPage->makePageLink($url, $page + 1, $tplPageNext)\n                : \'\',\n            \'last\' => $page < $pageCount && !empty($tplPageLast)\n                ? $pdoPage->makePageLink($url, $pageCount, $tplPageLast)\n                : \'\',\n        );\n\n        if (!empty($pageCount)) {\n            foreach (array(\'first\', \'prev\', \'next\', \'last\') as $v) {\n                $tpl = \'tplPage\' . ucfirst($v) . \'Empty\';\n                if (!empty(${$tpl}) && empty($pagination[$v])) {\n                    $pagination[$v] = $pdoPage->pdoTools->getChunk(${$tpl});\n                }\n            }\n        }\n    } else {\n        $pagination = array(\n            \'first\' => \'\',\n            \'prev\' => \'\',\n            \'pages\' => \'\',\n            \'next\' => \'\',\n            \'last\' => \'\'\n        );\n    }\n\n    $data = array(\n        \'output\' => $output,\n        $pageVarKey => $page,\n        $pageCountVar => $pageCount,\n        $pageNavVar => !empty($tplPageWrapper)\n            ? $pdoPage->pdoTools->getChunk($tplPageWrapper, $pagination)\n            : $pdoPage->pdoTools->parseChunk(\'\', $pagination),\n        $totalVar => $total,\n    );\n    if ($cache) {\n        $pdoPage->pdoTools->setCache($data, $scriptProperties);\n    }\n}\n\nif ($isAjax) {\n    if ($pageNavVar != \'pagination\') {\n        $data[\'pagination\'] = $data[$pageNavVar];\n        unset($data[$pageNavVar]);\n    }\n    if ($pageCountVar != \'pages\') {\n        $data[\'pages\'] = (int)$data[$pageCountVar];\n        unset($data[$pageCountVar]);\n    }\n    if ($pageVarKey != \'page\') {\n        $data[\'page\'] = (int)$data[$pageVarKey];\n        unset($data[$pageVarKey]);\n    }\n    if ($totalVar != \'total\') {\n        $data[\'total\'] = (int)$data[$totalVar];\n        unset($data[$totalVar]);\n    }\n\n    $maxIterations = (integer)$modx->getOption(\'parser_max_iterations\', null, 10);\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], false, false, \'[[\', \']]\', array(), $maxIterations);\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], true, true, \'[[\', \']]\', array(), $maxIterations);\n\n    @session_write_close();\n    exit(json_encode($data));\n} else {\n    if (!empty($setMeta)) {\n        $canurl = $pdoPage->pdoTools->config[\'scheme\'] !== \'full\'\n            ? $modx->getOption(\'url_scheme\') . rtrim($modx->getOption(\'http_host\'), \'/\') . \'/\' . ltrim($url, \'/\')\n            : $url;\n\n        $modx->regClientStartupHTMLBlock(\'<link rel="canonical" href="\' . $canurl . \'"/>\');\n        if ($data[$pageVarKey] > 1) {\n            $modx->regClientStartupHTMLBlock(\n                \'<link rel="prev" href="\' . $pdoPage->makePageLink($canurl, $data[$pageVarKey] - 1) . \'"/>\'\n            );\n        }\n        if ($data[$pageVarKey] < $data[$pageCountVar]) {\n            $modx->regClientStartupHTMLBlock(\n                \'<link rel="next" href="\' . $pdoPage->makePageLink($canurl, $data[$pageVarKey] + 1) . \'"/>\'\n            );\n        }\n    }\n\n    $modx->setPlaceholders($data, $plPrefix);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $data[\'output\']);\n    } else {\n        return $data[\'output\'];\n    }\n}', 0, 'a:41:{s:8:"plPrefix";a:7:{s:4:"name";s:8:"plPrefix";s:4:"desc";s:22:"pdotools_prop_plPrefix";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"limit";a:7:{s:4:"name";s:5:"limit";s:4:"desc";s:19:"pdotools_prop_limit";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:10;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"maxLimit";a:7:{s:4:"name";s:8:"maxLimit";s:4:"desc";s:22:"pdotools_prop_maxLimit";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:100;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"offset";a:7:{s:4:"name";s:6:"offset";s:4:"desc";s:20:"pdotools_prop_offset";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:4:"page";a:7:{s:4:"name";s:4:"page";s:4:"desc";s:18:"pdotools_prop_page";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"pageVarKey";a:7:{s:4:"name";s:10:"pageVarKey";s:4:"desc";s:24:"pdotools_prop_pageVarKey";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:4:"page";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"totalVar";a:7:{s:4:"name";s:8:"totalVar";s:4:"desc";s:22:"pdotools_prop_totalVar";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:10:"page.total";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"pageLimit";a:7:{s:4:"name";s:9:"pageLimit";s:4:"desc";s:23:"pdotools_prop_pageLimit";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:5;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"element";a:7:{s:4:"name";s:7:"element";s:4:"desc";s:21:"pdotools_prop_element";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:12:"pdoResources";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"pageNavVar";a:7:{s:4:"name";s:10:"pageNavVar";s:4:"desc";s:24:"pdotools_prop_pageNavVar";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:8:"page.nav";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"pageCountVar";a:7:{s:4:"name";s:12:"pageCountVar";s:4:"desc";s:26:"pdotools_prop_pageCountVar";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:9:"pageCount";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:14:"pageLinkScheme";a:7:{s:4:"name";s:14:"pageLinkScheme";s:4:"desc";s:28:"pdotools_prop_pageLinkScheme";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"tplPage";a:7:{s:4:"name";s:7:"tplPage";s:4:"desc";s:21:"pdotools_prop_tplPage";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:52:"@INLINE <li><a href="[[+href]]">[[+pageNo]]</a></li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:14:"tplPageWrapper";a:7:{s:4:"name";s:14:"tplPageWrapper";s:4:"desc";s:28:"pdotools_prop_tplPageWrapper";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:113:"@INLINE <div class="pagination"><ul class="pagination">[[+first]][[+prev]][[+pages]][[+next]][[+last]]</ul></div>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"tplPageActive";a:7:{s:4:"name";s:13:"tplPageActive";s:4:"desc";s:27:"pdotools_prop_tplPageActive";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:67:"@INLINE <li class="active"><a href="[[+href]]">[[+pageNo]]</a></li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"tplPageFirst";a:7:{s:4:"name";s:12:"tplPageFirst";s:4:"desc";s:26:"pdotools_prop_tplPageFirst";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:75:"@INLINE <li class="control"><a href="[[+href]]">[[%pdopage_first]]</a></li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"tplPageLast";a:7:{s:4:"name";s:11:"tplPageLast";s:4:"desc";s:25:"pdotools_prop_tplPageLast";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:74:"@INLINE <li class="control"><a href="[[+href]]">[[%pdopage_last]]</a></li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"tplPagePrev";a:7:{s:4:"name";s:11:"tplPagePrev";s:4:"desc";s:25:"pdotools_prop_tplPagePrev";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:64:"@INLINE <li class="control"><a href="[[+href]]">&laquo;</a></li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"tplPageNext";a:7:{s:4:"name";s:11:"tplPageNext";s:4:"desc";s:25:"pdotools_prop_tplPageNext";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:64:"@INLINE <li class="control"><a href="[[+href]]">&raquo;</a></li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"tplPageSkip";a:7:{s:4:"name";s:11:"tplPageSkip";s:4:"desc";s:25:"pdotools_prop_tplPageSkip";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:50:"@INLINE <li class="disabled"><span>...</span></li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:17:"tplPageFirstEmpty";a:7:{s:4:"name";s:17:"tplPageFirstEmpty";s:4:"desc";s:31:"pdotools_prop_tplPageFirstEmpty";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:65:"@INLINE <li class="disabled"><span>[[%pdopage_first]]</span></li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:16:"tplPageLastEmpty";a:7:{s:4:"name";s:16:"tplPageLastEmpty";s:4:"desc";s:30:"pdotools_prop_tplPageLastEmpty";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:64:"@INLINE <li class="disabled"><span>[[%pdopage_last]]</span></li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:16:"tplPagePrevEmpty";a:7:{s:4:"name";s:16:"tplPagePrevEmpty";s:4:"desc";s:30:"pdotools_prop_tplPagePrevEmpty";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:54:"@INLINE <li class="disabled"><span>&laquo;</span></li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:16:"tplPageNextEmpty";a:7:{s:4:"name";s:16:"tplPageNextEmpty";s:4:"desc";s:30:"pdotools_prop_tplPageNextEmpty";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:54:"@INLINE <li class="disabled"><span>&raquo;</span></li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"cache";a:7:{s:4:"name";s:5:"cache";s:4:"desc";s:19:"pdotools_prop_cache";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"cacheTime";a:7:{s:4:"name";s:9:"cacheTime";s:4:"desc";s:23:"pdotools_prop_cacheTime";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:3600;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:14:"cacheAnonymous";a:7:{s:4:"name";s:14:"cacheAnonymous";s:4:"desc";s:28:"pdotools_prop_cacheAnonymous";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:27:"pdotools_prop_toPlaceholder";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:4:"ajax";a:7:{s:4:"name";s:4:"ajax";s:4:"desc";s:18:"pdotools_prop_ajax";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"ajaxMode";a:7:{s:4:"name";s:8:"ajaxMode";s:4:"desc";s:22:"pdotools_prop_ajaxMode";s:4:"type";s:4:"list";s:7:"options";a:4:{i:0;a:2:{s:4:"text";s:4:"None";s:5:"value";s:0:"";}i:1;a:2:{s:4:"text";s:7:"Default";s:5:"value";s:7:"default";}i:2;a:2:{s:4:"text";s:6:"Scroll";s:5:"value";s:6:"scroll";}i:3;a:2:{s:4:"text";s:6:"Button";s:5:"value";s:6:"button";}}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"ajaxElemWrapper";a:7:{s:4:"name";s:15:"ajaxElemWrapper";s:4:"desc";s:29:"pdotools_prop_ajaxElemWrapper";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:8:"#pdopage";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"ajaxElemRows";a:7:{s:4:"name";s:12:"ajaxElemRows";s:4:"desc";s:26:"pdotools_prop_ajaxElemRows";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:14:"#pdopage .rows";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:18:"ajaxElemPagination";a:7:{s:4:"name";s:18:"ajaxElemPagination";s:4:"desc";s:32:"pdotools_prop_ajaxElemPagination";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:20:"#pdopage .pagination";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"ajaxElemLink";a:7:{s:4:"name";s:12:"ajaxElemLink";s:4:"desc";s:26:"pdotools_prop_ajaxElemLink";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:22:"#pdopage .pagination a";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"ajaxElemMore";a:7:{s:4:"name";s:12:"ajaxElemMore";s:4:"desc";s:26:"pdotools_prop_ajaxElemMore";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:18:"#pdopage .btn-more";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"ajaxTplMore";a:7:{s:4:"name";s:11:"ajaxTplMore";s:4:"desc";s:25:"pdotools_prop_ajaxTplMore";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:75:"@INLINE <button class="btn btn-default btn-more">[[%pdopage_more]]</button>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"ajaxHistory";a:7:{s:4:"name";s:11:"ajaxHistory";s:4:"desc";s:25:"pdotools_prop_ajaxHistory";s:4:"type";s:4:"list";s:7:"options";a:3:{i:0;a:2:{s:4:"text";s:4:"Auto";s:5:"value";s:0:"";}i:1;a:2:{s:4:"text";s:7:"Enabled";s:5:"value";i:1;}i:2;a:2:{s:4:"text";s:8:"Disabled";s:5:"value";i:0;}}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"frontend_js";a:7:{s:4:"name";s:11:"frontend_js";s:4:"desc";s:25:"pdotools_prop_frontend_js";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:31:"[[+assetsUrl]]js/pdopage.min.js";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"frontend_css";a:7:{s:4:"name";s:12:"frontend_css";s:4:"desc";s:26:"pdotools_prop_frontend_css";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:33:"[[+assetsUrl]]css/pdopage.min.css";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"setMeta";a:7:{s:4:"name";s:7:"setMeta";s:4:"desc";s:21:"pdotools_prop_setMeta";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"strictMode";a:7:{s:4:"name";s:10:"strictMode";s:4:"desc";s:24:"pdotools_prop_strictMode";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdopage.php');
INSERT INTO `chisto_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(29, 1, 0, 'pdoMenu', '', 0, 3, 0, '/** @var array $scriptProperties */\n\n// Convert parameters from Wayfinder if exists\nif (isset($startId)) {\n    $scriptProperties[\'parents\'] = $startId;\n}\nif (!empty($includeDocs)) {\n    $tmp = array_map(\'trim\', explode(\',\', $includeDocs));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = $v;\n        }\n    }\n}\nif (!empty($excludeDocs)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeDocs));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = \'-\' . $v;\n        }\n    }\n}\n\nif (!empty($previewUnpublished) && $modx->hasPermission(\'view_unpublished\')) {\n    $scriptProperties[\'showUnpublished\'] = 1;\n}\n\n$scriptProperties[\'depth\'] = empty($level) ? 100 : abs($level) - 1;\nif (!empty($contexts)) {\n    $scriptProperties[\'context\'] = $contexts;\n}\nif (empty($scriptProperties[\'context\'])) {\n    $scriptProperties[\'context\'] = $modx->resource->context_key;\n}\n\n// Save original parents specified by user\n$specified_parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\n\nif ($scriptProperties[\'parents\'] === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n} elseif ($scriptProperties[\'parents\'] === 0 || $scriptProperties[\'parents\'] === \'0\') {\n    if ($scriptProperties[\'depth\'] !== \'\' && $scriptProperties[\'depth\'] !== 100) {\n        $contexts = array_map(\'trim\', explode(\',\', $scriptProperties[\'context\']));\n        $parents = array();\n        if (!empty($scriptProperties[\'showDeleted\'])) {\n            $pdoFetch = $modx->getService(\'pdoFetch\');\n            foreach ($contexts as $ctx) {\n                $parents = array_merge($parents,\n                    $pdoFetch->getChildIds(\'modResource\', 0, $scriptProperties[\'depth\'], array(\'context\' => $ctx)));\n            }\n        } else {\n            foreach ($contexts as $ctx) {\n                $parents = array_merge($parents,\n                    $modx->getChildIds(0, $scriptProperties[\'depth\'], array(\'context\' => $ctx)));\n            }\n        }\n        $scriptProperties[\'parents\'] = !empty($parents) ? implode(\',\', $parents) : \'+0\';\n        $scriptProperties[\'depth\'] = 0;\n    }\n    $scriptProperties[\'includeParents\'] = 1;\n    $scriptProperties[\'displayStart\'] = 0;\n} else {\n    $parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\n    $parents_in = $parents_out = array();\n    foreach ($parents as $v) {\n        if (!is_numeric($v)) {\n            continue;\n        }\n        if ($v[0] == \'-\') {\n            $parents_out[] = abs($v);\n        } else {\n            $parents_in[] = abs($v);\n        }\n    }\n\n    if (empty($parents_in)) {\n        $scriptProperties[\'includeParents\'] = 1;\n        $scriptProperties[\'displayStart\'] = 0;\n    }\n}\n\nif (!empty($displayStart)) {\n    $scriptProperties[\'includeParents\'] = 1;\n}\nif (!empty($ph)) {\n    $toPlaceholder = $ph;\n}\nif (!empty($sortOrder)) {\n    $scriptProperties[\'sortdir\'] = $sortOrder;\n}\nif (!empty($sortBy)) {\n    $scriptProperties[\'sortby\'] = $sortBy;\n}\nif (!empty($permissions)) {\n    $scriptProperties[\'checkPermissions\'] = $permissions;\n}\nif (!empty($cacheResults)) {\n    $scriptProperties[\'cache\'] = $cacheResults;\n}\nif (!empty($ignoreHidden)) {\n    $scriptProperties[\'showHidden\'] = $ignoreHidden;\n}\n\n$wfTemplates = array(\n    \'outerTpl\' => \'tplOuter\',\n    \'rowTpl\' => \'tpl\',\n    \'parentRowTpl\' => \'tplParentRow\',\n    \'parentRowHereTpl\' => \'tplParentRowHere\',\n    \'hereTpl\' => \'tplHere\',\n    \'innerTpl\' => \'tplInner\',\n    \'innerRowTpl\' => \'tplInnerRow\',\n    \'innerHereTpl\' => \'tplInnerHere\',\n    \'activeParentRowTpl\' => \'tplParentRowActive\',\n    \'categoryFoldersTpl\' => \'tplCategoryFolder\',\n    \'startItemTpl\' => \'tplStart\',\n);\nforeach ($wfTemplates as $k => $v) {\n    if (isset(${$k})) {\n        $scriptProperties[$v] = ${$k};\n    }\n}\n//---\n\n/** @var pdoMenu $pdoMenu */\n$fqn = $modx->getOption(\'pdoMenu.class\', null, \'pdotools.pdomenu\', true);\n$path = $modx->getOption(\'pdomenu_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoMenu = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoMenu->pdoTools->addTime(\'pdoTools loaded\');\n\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\nif (empty($scriptProperties[\'cache_key\'])) {\n    $scriptProperties[\'cache_key\'] = \'pdomenu/\' . sha1(serialize($scriptProperties));\n}\n\n$output = \'\';\n$tree = array();\nif ($cache) {\n    $tree = $pdoMenu->pdoTools->getCache($scriptProperties);\n}\nif (empty($tree)) {\n    $data = $pdoMenu->pdoTools->run();\n    $data = $pdoMenu->pdoTools->buildTree($data, \'id\', \'parent\', $specified_parents);\n    $tree = array();\n    foreach ($data as $k => $v) {\n        if (empty($v[\'id\'])) {\n            if (!in_array($k, $specified_parents) && !$pdoMenu->checkResource($k)) {\n                continue;\n            } else {\n                $tree = array_merge($tree, $v[\'children\']);\n            }\n        } else {\n            $tree[$k] = $v;\n        }\n    }\n    if ($cache) {\n        $pdoMenu->pdoTools->setCache($tree, $scriptProperties);\n    }\n}\nif (!empty($tree)) {\n    $output = $pdoMenu->templateTree($tree);\n}\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class="pdoMenuLog">\' . print_r($pdoMenu->pdoTools->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:51:{s:7:"showLog";a:7:{s:4:"name";s:7:"showLog";s:4:"desc";s:21:"pdotools_prop_showLog";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"fastMode";a:7:{s:4:"name";s:8:"fastMode";s:4:"desc";s:22:"pdotools_prop_fastMode";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"level";a:7:{s:4:"name";s:5:"level";s:4:"desc";s:19:"pdotools_prop_level";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"parents";a:7:{s:4:"name";s:7:"parents";s:4:"desc";s:21:"pdotools_prop_parents";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"displayStart";a:7:{s:4:"name";s:12:"displayStart";s:4:"desc";s:26:"pdotools_prop_displayStart";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"resources";a:7:{s:4:"name";s:9:"resources";s:4:"desc";s:23:"pdotools_prop_resources";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"templates";a:7:{s:4:"name";s:9:"templates";s:4:"desc";s:23:"pdotools_prop_templates";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"context";a:7:{s:4:"name";s:7:"context";s:4:"desc";s:21:"pdotools_prop_context";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"cache";a:7:{s:4:"name";s:5:"cache";s:4:"desc";s:19:"pdotools_prop_cache";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"cacheTime";a:7:{s:4:"name";s:9:"cacheTime";s:4:"desc";s:23:"pdotools_prop_cacheTime";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:3600;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:14:"cacheAnonymous";a:7:{s:4:"name";s:14:"cacheAnonymous";s:4:"desc";s:28:"pdotools_prop_cacheAnonymous";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"plPrefix";a:7:{s:4:"name";s:8:"plPrefix";s:4:"desc";s:22:"pdotools_prop_plPrefix";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:3:"wf.";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"showHidden";a:7:{s:4:"name";s:10:"showHidden";s:4:"desc";s:24:"pdotools_prop_showHidden";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"showUnpublished";a:7:{s:4:"name";s:15:"showUnpublished";s:4:"desc";s:29:"pdotools_prop_showUnpublished";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"showDeleted";a:7:{s:4:"name";s:11:"showDeleted";s:4:"desc";s:25:"pdotools_prop_showDeleted";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:18:"previewUnpublished";a:7:{s:4:"name";s:18:"previewUnpublished";s:4:"desc";s:32:"pdotools_prop_previewUnpublished";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"hideSubMenus";a:7:{s:4:"name";s:12:"hideSubMenus";s:4:"desc";s:26:"pdotools_prop_hideSubMenus";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"useWeblinkUrl";a:7:{s:4:"name";s:13:"useWeblinkUrl";s:4:"desc";s:27:"pdotools_prop_useWeblinkUrl";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"sortdir";a:7:{s:4:"name";s:7:"sortdir";s:4:"desc";s:21:"pdotools_prop_sortdir";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:3:"ASC";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:4:"DESC";s:5:"value";s:4:"DESC";}}s:5:"value";s:3:"ASC";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"sortby";a:7:{s:4:"name";s:6:"sortby";s:4:"desc";s:20:"pdotools_prop_sortby";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:9:"menuindex";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"limit";a:7:{s:4:"name";s:5:"limit";s:4:"desc";s:19:"pdotools_prop_limit";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"offset";a:7:{s:4:"name";s:6:"offset";s:4:"desc";s:20:"pdotools_prop_offset";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"rowIdPrefix";a:7:{s:4:"name";s:11:"rowIdPrefix";s:4:"desc";s:25:"pdotools_prop_rowIdPrefix";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"firstClass";a:7:{s:4:"name";s:10:"firstClass";s:4:"desc";s:24:"pdotools_prop_firstClass";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:5:"first";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"lastClass";a:7:{s:4:"name";s:9:"lastClass";s:4:"desc";s:23:"pdotools_prop_lastClass";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:4:"last";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"hereClass";a:7:{s:4:"name";s:9:"hereClass";s:4:"desc";s:23:"pdotools_prop_hereClass";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:6:"active";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"parentClass";a:7:{s:4:"name";s:11:"parentClass";s:4:"desc";s:25:"pdotools_prop_parentClass";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"rowClass";a:7:{s:4:"name";s:8:"rowClass";s:4:"desc";s:22:"pdotools_prop_rowClass";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"outerClass";a:7:{s:4:"name";s:10:"outerClass";s:4:"desc";s:24:"pdotools_prop_outerClass";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"innerClass";a:7:{s:4:"name";s:10:"innerClass";s:4:"desc";s:24:"pdotools_prop_innerClass";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"levelClass";a:7:{s:4:"name";s:10:"levelClass";s:4:"desc";s:24:"pdotools_prop_levelClass";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"selfClass";a:7:{s:4:"name";s:9:"selfClass";s:4:"desc";s:23:"pdotools_prop_selfClass";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"webLinkClass";a:7:{s:4:"name";s:12:"webLinkClass";s:4:"desc";s:26:"pdotools_prop_webLinkClass";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"tplOuter";a:7:{s:4:"name";s:8:"tplOuter";s:4:"desc";s:22:"pdotools_prop_tplOuter";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:41:"@INLINE <ul[[+classes]]>[[+wrapper]]</ul>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:17:"pdotools_prop_tpl";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:95:"@INLINE <li[[+classes]]><a href="[[+link]]" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"tplParentRow";a:7:{s:4:"name";s:12:"tplParentRow";s:4:"desc";s:26:"pdotools_prop_tplParentRow";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:16:"tplParentRowHere";a:7:{s:4:"name";s:16:"tplParentRowHere";s:4:"desc";s:30:"pdotools_prop_tplParentRowHere";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"tplHere";a:7:{s:4:"name";s:7:"tplHere";s:4:"desc";s:21:"pdotools_prop_tplHere";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"tplInner";a:7:{s:4:"name";s:8:"tplInner";s:4:"desc";s:22:"pdotools_prop_tplInner";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"tplInnerRow";a:7:{s:4:"name";s:11:"tplInnerRow";s:4:"desc";s:25:"pdotools_prop_tplInnerRow";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"tplInnerHere";a:7:{s:4:"name";s:12:"tplInnerHere";s:4:"desc";s:26:"pdotools_prop_tplInnerHere";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:18:"tplParentRowActive";a:7:{s:4:"name";s:18:"tplParentRowActive";s:4:"desc";s:32:"pdotools_prop_tplParentRowActive";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:17:"tplCategoryFolder";a:7:{s:4:"name";s:17:"tplCategoryFolder";s:4:"desc";s:31:"pdotools_prop_tplCategoryFolder";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"tplStart";a:7:{s:4:"name";s:8:"tplStart";s:4:"desc";s:22:"pdotools_prop_tplStart";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:55:"@INLINE <h2[[+classes]]>[[+menutitle]]</h2>[[+wrapper]]";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:16:"checkPermissions";a:7:{s:4:"name";s:16:"checkPermissions";s:4:"desc";s:30:"pdotools_prop_checkPermissions";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"hereId";a:7:{s:4:"name";s:6:"hereId";s:4:"desc";s:20:"pdotools_prop_hereId";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"where";a:7:{s:4:"name";s:5:"where";s:4:"desc";s:19:"pdotools_prop_where";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"select";a:7:{s:4:"name";s:6:"select";s:4:"desc";s:20:"pdotools_prop_select";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"scheme";a:7:{s:4:"name";s:6:"scheme";s:4:"desc";s:20:"pdotools_prop_scheme";s:4:"type";s:4:"list";s:7:"options";a:6:{i:0;a:2:{s:5:"value";s:0:"";s:4:"text";s:14:"System default";}i:1;a:2:{s:5:"value";i:-1;s:4:"text";s:25:"-1 (relative to site_url)";}i:2;a:2:{s:5:"value";s:4:"full";s:4:"text";s:40:"full (absolute, prepended with site_url)";}i:3;a:2:{s:5:"value";s:3:"abs";s:4:"text";s:39:"abs (absolute, prepended with base_url)";}i:4;a:2:{s:5:"value";s:4:"http";s:4:"text";s:38:"http (absolute, forced to http scheme)";}i:5;a:2:{s:5:"value";s:5:"https";s:4:"text";s:40:"https (absolute, forced to https scheme)";}}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:27:"pdotools_prop_toPlaceholder";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"countChildren";a:7:{s:4:"name";s:13:"countChildren";s:4:"desc";s:27:"pdotools_prop_countChildren";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdomenu.php'),
(30, 1, 0, 'pdoTitle', '', 0, 3, 0, '/** @var array $scriptProperties */\nif (empty($outputSeparator)) {\n    $outputSeparator = \' / \';\n}\nif (empty($titleField)) {\n    $titleField = \'longtitle\';\n}\nif (!isset($pageVarKey)) {\n    $pageVarKey = \'page\';\n}\nif (!isset($queryVarKey)) {\n    $queryVarKey = \'query\';\n}\nif (empty($tplPages)) {\n    $tplPages = \'@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\';\n}\nif (empty($tplSearch)) {\n    $tplSearch = \'@INLINE «[[+mse2_query]]»\';\n}\nif (empty($minQuery)) {\n    $minQuery = 3;\n}\nif (empty($id)) {\n    $id = $modx->resource->id;\n}\nif (empty($cacheKey)) {\n    $cacheKey = \'title_crumbs\';\n}\nif (!isset($cacheTime)) {\n    $cacheTime = 0;\n}\n/** @var pdoTools $pdoTools */\n$fqn = $modx->getOption(\'pdoTools.class\', null, \'pdotools.pdotools\', true);\n$path = $modx->getOption(\'pdotools_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoTools = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$modx->lexicon->load(\'pdotools:pdopage\');\n\n/** @var modResource $resource */\n$resource = ($id == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject(\'modResource\', $id);\nif (!$resource) {\n    return \'\';\n}\n\n$title = array();\n$pagetitle = trim($resource->get($titleField));\nif (empty($pagetitle)) {\n    $pagetitle = $resource->get(\'pagetitle\');\n}\n\n// Add search request if exists\nif (!empty($_GET[$queryVarKey]) && strlen($_GET[$queryVarKey]) >= $minQuery && !empty($tplSearch)) {\n    $pagetitle .= \' \' . $pdoTools->getChunk($tplSearch, array(\n            $queryVarKey => $modx->stripTags($_GET[$queryVarKey]),\n        ));\n}\n$title[] = $pagetitle;\n\n// Add pagination if exists\nif (!empty($_GET[$pageVarKey]) && !empty($tplPages)) {\n    $title[] = $pdoTools->getChunk($tplPages, array(\n        \'page\' => intval($_GET[$pageVarKey]),\n    ));\n}\n\n// Add parents\n$cacheKey = $resource->getCacheKey() . \'/\' . $cacheKey;\n$cacheOptions = array(\'cache_key\' => $modx->getOption(\'cache_resource_key\', null, \'resource\'));\n$crumbs = \'\';\nif (empty($cache) || !$crumbs = $modx->cacheManager->get($cacheKey, $cacheOptions)) {\n    $crumbs = $pdoTools->runSnippet(\'pdoCrumbs\', array_merge(\n        array(\n            \'to\' => $resource->id,\n            \'outputSeparator\' => $outputSeparator,\n            \'showHome\' => 0,\n            \'showAtHome\' => 0,\n            \'showCurrent\' => 0,\n            \'direction\' => \'rtl\',\n            \'tpl\' => \'@INLINE [[+menutitle]]\',\n            \'tplCurrent\' => \'@INLINE [[+menutitle]]\',\n            \'tplWrapper\' => \'@INLINE [[+output]]\',\n            \'tplMax\' => \'\',\n            \'tplHome\' => \'\',\n        ), $scriptProperties\n    ));\n}\nif (!empty($crumbs)) {\n    if (!empty($cache)) {\n        $modx->cacheManager->set($cacheKey, $crumbs, $cacheTime, $cacheOptions);\n    }\n    $title[] = $crumbs;\n}\n\nif (!empty($registerJs)) {\n    $config = array(\n        \'separator\' => $outputSeparator,\n        \'tpl\' => str_replace(array(\'[[+\', \']]\'), array(\'{\', \'}\'), $pdoTools->getChunk($tplPages)),\n    );\n    /** @noinspection Annotator */\n    $modx->regClientStartupScript(\'<script type="text/javascript">pdoTitle = \' . json_encode($config) . \';</script>\',\n        true);\n}\n\nreturn implode($outputSeparator, $title);', 0, 'a:13:{s:2:"id";a:7:{s:4:"name";s:2:"id";s:4:"desc";s:16:"pdotools_prop_id";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"exclude";a:7:{s:4:"name";s:7:"exclude";s:4:"desc";s:21:"pdotools_prop_exclude";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"limit";a:7:{s:4:"name";s:5:"limit";s:4:"desc";s:25:"pdotools_prop_title_limit";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:3;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"titleField";a:7:{s:4:"name";s:10:"titleField";s:4:"desc";s:24:"pdotools_prop_titleField";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:9:"longtitle";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"cache";a:7:{s:4:"name";s:5:"cache";s:4:"desc";s:25:"pdotools_prop_title_cache";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"cacheTime";a:7:{s:4:"name";s:9:"cacheTime";s:4:"desc";s:23:"pdotools_prop_cacheTime";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"tplPages";a:7:{s:4:"name";s:8:"tplPages";s:4:"desc";s:22:"pdotools_prop_tplPages";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:68:"@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"pageVarKey";a:7:{s:4:"name";s:10:"pageVarKey";s:4:"desc";s:24:"pdotools_prop_pageVarKey";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:4:"page";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"tplSearch";a:7:{s:4:"name";s:9:"tplSearch";s:4:"desc";s:23:"pdotools_prop_tplSearch";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:27:"@INLINE «[[+mse2_query]]»";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"queryVarKey";a:7:{s:4:"name";s:11:"queryVarKey";s:4:"desc";s:25:"pdotools_prop_queryVarKey";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:5:"query";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"minQuery";a:7:{s:4:"name";s:8:"minQuery";s:4:"desc";s:22:"pdotools_prop_minQuery";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:3;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"outputSeparator";a:7:{s:4:"name";s:15:"outputSeparator";s:4:"desc";s:35:"pdotools_prop_title_outputSeparator";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:3:" / ";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"registerJs";a:7:{s:4:"name";s:10:"registerJs";s:4:"desc";s:24:"pdotools_prop_registerJs";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdotitle.php'),
(31, 1, 0, 'pdoArchive', '', 0, 3, 0, '$modx->lexicon->load(\'pdotools:pdoarchive\');\n\n/** @var array $scriptProperties */\n$tplWrapper = $modx->getOption(\'tplWrapper\', $scriptProperties);\n$tplYear = $modx->getOption(\'tplYear\', $scriptProperties);\n$tplMonth = $modx->getOption(\'tplMonth\', $scriptProperties);\n$tplDay = $modx->getOption(\'tplDay\', $scriptProperties);\n$tpl = $modx->getOption(\'tpl\', $scriptProperties);\n$dateField = $modx->getOption(\'dateField\', $scriptProperties, \'createdon\', true);\n$dateFormat = $modx->getOption(\'dateFormat\', $scriptProperties, \'H:i\', true);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, "\\n");\n\n// Adding extra parameters into special place so we can put them in a results\n/** @var modSnippet $snippet */\n$additionalPlaceholders = $properties = array();\nif (isset($this) && $this instanceof modSnippet) {\n    $properties = $this->get(\'properties\');\n} elseif ($snippet = $modx->getObject(\'modSnippet\', array(\'name\' => \'pdoResources\'))) {\n    $properties = $snippet->get(\'properties\');\n}\nif (!empty($properties)) {\n    foreach ($scriptProperties as $k => $v) {\n        if (!isset($properties[$k])) {\n            $additionalPlaceholders[$k] = $v;\n        }\n    }\n}\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\nif (isset($parents) && $parents === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n}\n$scriptProperties[\'return\'] = \'data\';\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n$rows = $pdoFetch->run();\n\n// Process rows\n$tree = array();\nforeach ($rows as $row) {\n    $tmp = $row[$dateField];\n    if (!is_numeric($tmp)) {\n        $tmp = strtotime($tmp);\n    }\n    $year = date(\'Y\', $tmp);\n    $month = date(\'m\', $tmp);\n    $day = date(\'d\', $tmp);\n    $tree[$year][$month][$day][] = $row;\n}\n\n$output = \'\';\nforeach ($tree as $year => $months) {\n    $rows_year = \'\';\n    $count_year = 0;\n\n    foreach ($months as $month => $days) {\n        $rows_month = \'\';\n        $count_month = 0;\n\n        foreach ($days as $day => $resources) {\n            $rows_day = array();\n            $count_day = 0;\n            $idx = 1;\n\n            foreach ($resources as $resource) {\n                $resource[\'day\'] = $day;\n                $resource[\'month\'] = $month;\n                $resource[\'year\'] = $year;\n                $resource[\'date\'] = strftime($dateFormat, $resource[$dateField]);\n                $resource[\'idx\'] = $idx++;\n                $resource[\'menutitle\'] = !empty($resource[\'menutitle\'])\n                    ? $resource[\'menutitle\']\n                    : $resource[\'pagetitle\'];\n                // Add placeholder [[+link]] if specified\n                if (!empty($scriptProperties[\'useWeblinkUrl\'])) {\n                    if (!isset($resource[\'context_key\'])) {\n                        $resource[\'context_key\'] = \'\';\n                    }\n                    if (isset($resource[\'class_key\']) && ($resource[\'class_key\'] == \'modWebLink\')) {\n                        $resource[\'link\'] = isset($resource[\'content\']) && is_numeric(trim($resource[\'content\'], \'[]~ \'))\n                            ? $pdoFetch->makeUrl(intval(trim($resource[\'content\'], \'[]~ \')), $resource)\n                            : (isset($resource[\'content\']) ? $resource[\'content\'] : \'\');\n                    } else {\n                        $resource[\'link\'] = $pdoFetch->makeUrl($resource[\'id\'], $resource);\n                    }\n                } else {\n                    $resource[\'link\'] = \'\';\n                }\n                $tpl = $pdoFetch->defineChunk($resource);\n                $rows_day[] = $pdoFetch->getChunk($tpl, $resource);\n                $count_year++;\n                $count_month++;\n                $count_day++;\n            }\n\n            $rows_month .= !empty($tplDay)\n                ? $pdoFetch->getChunk($tplDay, array(\n                    \'day\' => $day,\n                    \'month\' => $month,\n                    \'year\' => $year,\n                    \'count\' => $count_day,\n                    \'wrapper\' => implode($outputSeparator, $rows_day),\n                ), $pdoFetch->config[\'fastMode\'])\n                : implode($outputSeparator, $rows_day);\n        }\n\n        $rows_year .= !empty($tplMonth)\n            ? $pdoFetch->getChunk($tplMonth, array(\n                \'month\' => $month,\n                \'month_name\' => $modx->lexicon(\'pdoarchive_month_\' . $month),\n                \'year\' => $year,\n                \'count\' => $count_month,\n                \'wrapper\' => $rows_month,\n            ), $pdoFetch->config[\'fastMode\'])\n            : $rows_month;\n    }\n\n    $output .= !empty($tplYear)\n        ? $pdoFetch->getChunk($tplYear, array(\n            \'year\' => $year,\n            \'count\' => $count_year,\n            \'wrapper\' => $rows_year,\n        ), $pdoFetch->config[\'fastMode\'])\n        : $rows_year;\n}\n$pdoFetch->addTime(\'Rows processed\');\n\n// Return output\nif (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n    $output = $pdoFetch->getChunk(\n        $tplWrapper,\n        array_merge($additionalPlaceholders, array(\'output\' => $output)),\n        $pdoFetch->config[\'fastMode\']\n    );\n    $pdoFetch->addTime(\'Rows wrapped\');\n}\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class="pdoArchiveLog">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:36:{s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:17:"pdotools_prop_tpl";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:65:"@INLINE <li>[[+date]] <a href="[[+link]]">[[+menutitle]]</a></li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"tplYear";a:7:{s:4:"name";s:7:"tplYear";s:4:"desc";s:21:"pdotools_prop_tplYear";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:71:"@INLINE <h3>[[+year]] <sup>([[+count]])</sup></h3><ul>[[+wrapper]]</ul>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"tplMonth";a:7:{s:4:"name";s:8:"tplMonth";s:4:"desc";s:22:"pdotools_prop_tplMonth";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:86:"@INLINE <li><h4>[[+month_name]] <sup>([[+count]])</sup></h4><ul>[[+wrapper]]</ul></li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"tplDay";a:7:{s:4:"name";s:6:"tplDay";s:4:"desc";s:20:"pdotools_prop_tplDay";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:79:"@INLINE <li><h5>[[+day]] <sup>([[+count]])</sup></h5><ul>[[+wrapper]]</ul></li>";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"tplWrapper";a:7:{s:4:"name";s:10:"tplWrapper";s:4:"desc";s:24:"pdotools_prop_tplWrapper";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"wrapIfEmpty";a:7:{s:4:"name";s:11:"wrapIfEmpty";s:4:"desc";s:25:"pdotools_prop_wrapIfEmpty";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"dateField";a:7:{s:4:"name";s:9:"dateField";s:4:"desc";s:23:"pdotools_prop_dateField";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:9:"createdon";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"dateFormat";a:7:{s:4:"name";s:10:"dateFormat";s:4:"desc";s:24:"pdotools_prop_dateFormat";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:5:"%H:%M";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"showLog";a:7:{s:4:"name";s:7:"showLog";s:4:"desc";s:21:"pdotools_prop_showLog";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"sortby";a:7:{s:4:"name";s:6:"sortby";s:4:"desc";s:20:"pdotools_prop_sortby";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:9:"createdon";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"sortbyTV";a:7:{s:4:"name";s:8:"sortbyTV";s:4:"desc";s:22:"pdotools_prop_sortbyTV";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:12:"sortbyTVType";a:7:{s:4:"name";s:12:"sortbyTVType";s:4:"desc";s:26:"pdotools_prop_sortbyTVType";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"sortdir";a:7:{s:4:"name";s:7:"sortdir";s:4:"desc";s:21:"pdotools_prop_sortdir";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:3:"ASC";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:4:"DESC";s:5:"value";s:4:"DESC";}}s:5:"value";s:4:"DESC";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"sortdirTV";a:7:{s:4:"name";s:9:"sortdirTV";s:4:"desc";s:23:"pdotools_prop_sortdirTV";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:3:"ASC";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:4:"DESC";s:5:"value";s:4:"DESC";}}s:5:"value";s:3:"ASC";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"limit";a:7:{s:4:"name";s:5:"limit";s:4:"desc";s:19:"pdotools_prop_limit";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"offset";a:7:{s:4:"name";s:6:"offset";s:4:"desc";s:20:"pdotools_prop_offset";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"depth";a:7:{s:4:"name";s:5:"depth";s:4:"desc";s:19:"pdotools_prop_depth";s:4:"type";s:11:"numberfield";s:7:"options";a:0:{}s:5:"value";i:10;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"outputSeparator";a:7:{s:4:"name";s:15:"outputSeparator";s:4:"desc";s:29:"pdotools_prop_outputSeparator";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"\n";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:27:"pdotools_prop_toPlaceholder";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"parents";a:7:{s:4:"name";s:7:"parents";s:4:"desc";s:21:"pdotools_prop_parents";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:14:"includeContent";a:7:{s:4:"name";s:14:"includeContent";s:4:"desc";s:28:"pdotools_prop_includeContent";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"includeTVs";a:7:{s:4:"name";s:10:"includeTVs";s:4:"desc";s:24:"pdotools_prop_includeTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"prepareTVs";a:7:{s:4:"name";s:10:"prepareTVs";s:4:"desc";s:24:"pdotools_prop_prepareTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"1";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"processTVs";a:7:{s:4:"name";s:10:"processTVs";s:4:"desc";s:24:"pdotools_prop_processTVs";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"tvPrefix";a:7:{s:4:"name";s:8:"tvPrefix";s:4:"desc";s:22:"pdotools_prop_tvPrefix";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:3:"tv.";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:5:"where";a:7:{s:4:"name";s:5:"where";s:4:"desc";s:19:"pdotools_prop_where";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:15:"showUnpublished";a:7:{s:4:"name";s:15:"showUnpublished";s:4:"desc";s:29:"pdotools_prop_showUnpublished";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:11:"showDeleted";a:7:{s:4:"name";s:11:"showDeleted";s:4:"desc";s:25:"pdotools_prop_showDeleted";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:10:"showHidden";a:7:{s:4:"name";s:10:"showHidden";s:4:"desc";s:24:"pdotools_prop_showHidden";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:14:"hideContainers";a:7:{s:4:"name";s:14:"hideContainers";s:4:"desc";s:28:"pdotools_prop_hideContainers";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:7:"context";a:7:{s:4:"name";s:7:"context";s:4:"desc";s:21:"pdotools_prop_context";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:8:"totalVar";a:7:{s:4:"name";s:8:"totalVar";s:4:"desc";s:22:"pdotools_prop_totalVar";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:5:"total";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:9:"resources";a:7:{s:4:"name";s:9:"resources";s:4:"desc";s:23:"pdotools_prop_resources";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"select";a:7:{s:4:"name";s:6:"select";s:4:"desc";s:20:"pdotools_prop_select";s:4:"type";s:8:"textarea";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:6:"scheme";a:7:{s:4:"name";s:6:"scheme";s:4:"desc";s:20:"pdotools_prop_scheme";s:4:"type";s:4:"list";s:7:"options";a:6:{i:0;a:2:{s:5:"value";s:0:"";s:4:"text";s:14:"System default";}i:1;a:2:{s:5:"value";i:-1;s:4:"text";s:25:"-1 (relative to site_url)";}i:2;a:2:{s:5:"value";s:4:"full";s:4:"text";s:40:"full (absolute, prepended with site_url)";}i:3;a:2:{s:5:"value";s:3:"abs";s:4:"text";s:39:"abs (absolute, prepended with base_url)";}i:4;a:2:{s:5:"value";s:4:"http";s:4:"text";s:38:"http (absolute, forced to http scheme)";}i:5;a:2:{s:5:"value";s:5:"https";s:4:"text";s:40:"https (absolute, forced to https scheme)";}}s:5:"value";s:0:"";s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}s:13:"useWeblinkUrl";a:7:{s:4:"name";s:13:"useWeblinkUrl";s:4:"desc";s:27:"pdotools_prop_useWeblinkUrl";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:19:"pdotools:properties";s:4:"area";s:0:"";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoarchive.php'),
(32, 0, 0, 'phpthumbon', 'Создание превьюх картинок', 0, 0, 0, '/**\r\n * phpThumbOn\r\n * Создание превьюх картинок\r\n *\r\n * Copyright 2013 by Agel_Nash <Agel_Nash@xaker.ru>\r\n *\r\n * @category images\r\n * @license GNU General Public License (GPL), http://www.gnu.org/copyleft/gpl.html\r\n * @author Agel_Nash <Agel_Nash@xaker.ru>\r\n */\r\n\r\nif(empty($modx) || !($modx instanceof modX)) return \'\';\r\n\r\n$componentPath = (string)$modx->getOption(\'phpthumbon.core_path\', null, $modx->getOption(\'core_path\').\'components/phpthumbon/\');\r\n\r\nif(!isset($modx->phpThumbOn)){\r\n    $modx->phpThumbOn = $modx->getService("phpthumbon","phpThumbOn",$componentPath.\'model/phpthumbon/\', $scriptProperties);\r\n}\r\n\r\nif(!($flag = ($modx->phpThumbOn instanceof phpThumbOn))){\r\n    $modx->phpThumbOn = null;\r\n}\r\nreturn $flag ? $modx->phpThumbOn->run($scriptProperties) : $modx->getOption(\'phpthumbon.noimage\', $scriptProperties);', 0, 'a:2:{s:5:"input";a:7:{s:4:"name";s:5:"input";s:4:"desc";s:16:"phpthumbon.input";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:21:"phpthumbon:properties";s:4:"area";s:0:"";}s:7:"options";a:7:{s:4:"name";s:7:"options";s:4:"desc";s:17:"phpthumbon.folder";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:21:"phpthumbon:properties";s:4:"area";s:0:"";}}', '', 0, ''),
(33, 2, 0, 'YDate', '', 0, 7, 0, 'echo date(Y);', 0, 'a:0:{}', '', 0, '');
INSERT INTO `chisto_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(34, 0, 0, 'getResources', '<strong>1.6.1-pl</strong> A general purpose Resource listing and summarization snippet for MODX Revolution', 0, 0, 0, '/**\n * getResources\n *\n * A general purpose Resource listing and summarization snippet for MODX 2.x.\n *\n * @author Jason Coward\n * @copyright Copyright 2010-2013, Jason Coward\n *\n * TEMPLATES\n *\n * tpl - Name of a chunk serving as a resource template\n * [NOTE: if not provided, properties are dumped to output for each resource]\n *\n * tplOdd - (Opt) Name of a chunk serving as resource template for resources with an odd idx value\n * (see idx property)\n * tplFirst - (Opt) Name of a chunk serving as resource template for the first resource (see first\n * property)\n * tplLast - (Opt) Name of a chunk serving as resource template for the last resource (see last\n * property)\n * tpl_{n} - (Opt) Name of a chunk serving as resource template for the nth resource\n *\n * tplCondition - (Opt) Defines a field of the resource to evaluate against keys defined in the\n * conditionalTpls property. Must be a resource field; does not work with Template Variables.\n * conditionalTpls - (Opt) A JSON object defining a map of field values and the associated tpl to\n * use when the field defined by tplCondition matches the value. [NOTE: tplOdd, tplFirst, tplLast,\n * and tpl_{n} will take precedence over any defined conditionalTpls]\n *\n * tplWrapper - (Opt) Name of a chunk serving as a wrapper template for the output\n * [NOTE: Does not work with toSeparatePlaceholders]\n *\n * SELECTION\n *\n * parents - Comma-delimited list of ids serving as parents\n *\n * context - (Opt) Comma-delimited list of context keys to limit results by; if empty, contexts for all specified\n * parents will be used (all contexts if 0 is specified) [default=]\n *\n * depth - (Opt) Integer value indicating depth to search for resources from each parent [default=10]\n *\n * tvFilters - (Opt) Delimited-list of TemplateVar values to filter resources by. Supports two\n * delimiters and two value search formats. The first delimiter || represents a logical OR and the\n * primary grouping mechanism.  Within each group you can provide a comma-delimited list of values.\n * These values can be either tied to a specific TemplateVar by name, e.g. myTV==value, or just the\n * value, indicating you are searching for the value in any TemplateVar tied to the Resource. An\n * example would be &tvFilters=`filter2==one,filter1==bar%||filter1==foo`\n * [NOTE: filtering by values uses a LIKE query and % is considered a wildcard.]\n * [NOTE: this only looks at the raw value set for specific Resource, i. e. there must be a value\n * specifically set for the Resource and it is not evaluated.]\n *\n * tvFiltersAndDelimiter - (Opt) Custom delimiter for logical AND, default \',\', in case you want to\n * match a literal comma in the tvFilters. E.g. &tvFiltersAndDelimiter=`&&`\n * &tvFilters=`filter1==foo,bar&&filter2==baz` [default=,]\n *\n * tvFiltersOrDelimiter - (Opt) Custom delimiter for logical OR, default \'||\', in case you want to\n * match a literal \'||\' in the tvFilters. E.g. &tvFiltersOrDelimiter=`|OR|`\n * &tvFilters=`filter1==foo||bar|OR|filter2==baz` [default=||]\n *\n * where - (Opt) A JSON expression of criteria to build any additional where clauses from. An example would be\n * &where=`{{"alias:LIKE":"foo%", "OR:alias:LIKE":"%bar"},{"OR:pagetitle:=":"foobar", "AND:description:=":"raboof"}}`\n *\n * sortby - (Opt) Field to sort by or a JSON array, e.g. {"publishedon":"ASC","createdon":"DESC"} [default=publishedon]\n * sortbyTV - (opt) A Template Variable name to sort by (if supplied, this precedes the sortby value) [default=]\n * sortbyTVType - (Opt) A data type to CAST a TV Value to in order to sort on it properly [default=string]\n * sortbyAlias - (Opt) Query alias for sortby field [default=]\n * sortbyEscaped - (Opt) Escapes the field name(s) specified in sortby [default=0]\n * sortdir - (Opt) Order which to sort by [default=DESC]\n * sortdirTV - (Opt) Order which to sort by a TV [default=DESC]\n * limit - (Opt) Limits the number of resources returned [default=5]\n * offset - (Opt) An offset of resources returned by the criteria to skip [default=0]\n * dbCacheFlag - (Opt) Controls caching of db queries; 0|false = do not cache result set; 1 = cache result set\n * according to cache settings, any other integer value = number of seconds to cache result set [default=0]\n *\n * OPTIONS\n *\n * includeContent - (Opt) Indicates if the content of each resource should be returned in the\n * results [default=0]\n * includeTVs - (Opt) Indicates if TemplateVar values should be included in the properties available\n * to each resource template [default=0]\n * includeTVList - (Opt) Limits the TemplateVars that are included if includeTVs is true to those specified\n * by name in a comma-delimited list [default=]\n * prepareTVs - (Opt) Prepares media-source dependent TemplateVar values [default=1]\n * prepareTVList - (Opt) Limits the TVs that are prepared to those specified by name in a comma-delimited\n * list [default=]\n * processTVs - (Opt) Indicates if TemplateVar values should be rendered as they would on the\n * resource being summarized [default=0]\n * processTVList - (opt) Limits the TemplateVars that are processed if included to those specified\n * by name in a comma-delimited list [default=]\n * tvPrefix - (Opt) The prefix for TemplateVar properties [default=tv.]\n * idx - (Opt) You can define the starting idx of the resources, which is an property that is\n * incremented as each resource is rendered [default=1]\n * first - (Opt) Define the idx which represents the first resource (see tplFirst) [default=1]\n * last - (Opt) Define the idx which represents the last resource (see tplLast) [default=# of\n * resources being summarized + first - 1]\n * outputSeparator - (Opt) An optional string to separate each tpl instance [default="\\n"]\n * wrapIfEmpty - (Opt) Indicates if the tplWrapper should be applied if the output is empty [default=0]\n *\n */\n$output = array();\n$outputSeparator = isset($outputSeparator) ? $outputSeparator : "\\n";\n\n/* set default properties */\n$tpl = !empty($tpl) ? $tpl : \'\';\n$includeContent = !empty($includeContent) ? true : false;\n$includeTVs = !empty($includeTVs) ? true : false;\n$includeTVList = !empty($includeTVList) ? explode(\',\', $includeTVList) : array();\n$processTVs = !empty($processTVs) ? true : false;\n$processTVList = !empty($processTVList) ? explode(\',\', $processTVList) : array();\n$prepareTVs = !empty($prepareTVs) ? true : false;\n$prepareTVList = !empty($prepareTVList) ? explode(\',\', $prepareTVList) : array();\n$tvPrefix = isset($tvPrefix) ? $tvPrefix : \'tv.\';\n$parents = (!empty($parents) || $parents === \'0\') ? explode(\',\', $parents) : array($modx->resource->get(\'id\'));\narray_walk($parents, \'trim\');\n$parents = array_unique($parents);\n$depth = isset($depth) ? (integer) $depth : 10;\n\n$tvFiltersOrDelimiter = isset($tvFiltersOrDelimiter) ? $tvFiltersOrDelimiter : \'||\';\n$tvFiltersAndDelimiter = isset($tvFiltersAndDelimiter) ? $tvFiltersAndDelimiter : \',\';\n$tvFilters = !empty($tvFilters) ? explode($tvFiltersOrDelimiter, $tvFilters) : array();\n\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$showUnpublished = !empty($showUnpublished) ? true : false;\n$showDeleted = !empty($showDeleted) ? true : false;\n\n$sortby = isset($sortby) ? $sortby : \'publishedon\';\n$sortbyTV = isset($sortbyTV) ? $sortbyTV : \'\';\n$sortbyAlias = isset($sortbyAlias) ? $sortbyAlias : \'modResource\';\n$sortbyEscaped = !empty($sortbyEscaped) ? true : false;\n$sortdir = isset($sortdir) ? $sortdir : \'DESC\';\n$sortdirTV = isset($sortdirTV) ? $sortdirTV : \'DESC\';\n$limit = isset($limit) ? (integer) $limit : 5;\n$offset = isset($offset) ? (integer) $offset : 0;\n$totalVar = !empty($totalVar) ? $totalVar : \'total\';\n\n$dbCacheFlag = !isset($dbCacheFlag) ? false : $dbCacheFlag;\nif (is_string($dbCacheFlag) || is_numeric($dbCacheFlag)) {\n    if ($dbCacheFlag == \'0\') {\n        $dbCacheFlag = false;\n    } elseif ($dbCacheFlag == \'1\') {\n        $dbCacheFlag = true;\n    } else {\n        $dbCacheFlag = (integer) $dbCacheFlag;\n    }\n}\n\n/* multiple context support */\n$contextArray = array();\n$contextSpecified = false;\nif (!empty($context)) {\n    $contextArray = explode(\',\',$context);\n    array_walk($contextArray, \'trim\');\n    $contexts = array();\n    foreach ($contextArray as $ctx) {\n        $contexts[] = $modx->quote($ctx);\n    }\n    $context = implode(\',\',$contexts);\n    $contextSpecified = true;\n    unset($contexts,$ctx);\n} else {\n    $context = $modx->quote($modx->context->get(\'key\'));\n}\n\n$pcMap = array();\n$pcQuery = $modx->newQuery(\'modResource\', array(\'id:IN\' => $parents), $dbCacheFlag);\n$pcQuery->select(array(\'id\', \'context_key\'));\nif ($pcQuery->prepare() && $pcQuery->stmt->execute()) {\n    foreach ($pcQuery->stmt->fetchAll(PDO::FETCH_ASSOC) as $pcRow) {\n        $pcMap[(integer) $pcRow[\'id\']] = $pcRow[\'context_key\'];\n    }\n}\n\n$children = array();\n$parentArray = array();\nforeach ($parents as $parent) {\n    $parent = (integer) $parent;\n    if ($parent === 0) {\n        $pchildren = array();\n        if ($contextSpecified) {\n            foreach ($contextArray as $pCtx) {\n                if (!in_array($pCtx, $contextArray)) {\n                    continue;\n                }\n                $options = $pCtx !== $modx->context->get(\'key\') ? array(\'context\' => $pCtx) : array();\n                $pcchildren = $modx->getChildIds($parent, $depth, $options);\n                if (!empty($pcchildren)) $pchildren = array_merge($pchildren, $pcchildren);\n            }\n        } else {\n            $cQuery = $modx->newQuery(\'modContext\', array(\'key:!=\' => \'mgr\'));\n            $cQuery->select(array(\'key\'));\n            if ($cQuery->prepare() && $cQuery->stmt->execute()) {\n                foreach ($cQuery->stmt->fetchAll(PDO::FETCH_COLUMN) as $pCtx) {\n                    $options = $pCtx !== $modx->context->get(\'key\') ? array(\'context\' => $pCtx) : array();\n                    $pcchildren = $modx->getChildIds($parent, $depth, $options);\n                    if (!empty($pcchildren)) $pchildren = array_merge($pchildren, $pcchildren);\n                }\n            }\n        }\n        $parentArray[] = $parent;\n    } else {\n        $pContext = array_key_exists($parent, $pcMap) ? $pcMap[$parent] : false;\n        if ($debug) $modx->log(modX::LOG_LEVEL_ERROR, "context for {$parent} is {$pContext}");\n        if ($pContext && $contextSpecified && !in_array($pContext, $contextArray, true)) {\n            $parent = next($parents);\n            continue;\n        }\n        $parentArray[] = $parent;\n        $options = !empty($pContext) && $pContext !== $modx->context->get(\'key\') ? array(\'context\' => $pContext) : array();\n        $pchildren = $modx->getChildIds($parent, $depth, $options);\n    }\n    if (!empty($pchildren)) $children = array_merge($children, $pchildren);\n    $parent = next($parents);\n}\n$parents = array_merge($parentArray, $children);\n\n/* build query */\n$criteria = array("modResource.parent IN (" . implode(\',\', $parents) . ")");\nif ($contextSpecified) {\n    $contextResourceTbl = $modx->getTableName(\'modContextResource\');\n    $criteria[] = "(modResource.context_key IN ({$context}) OR EXISTS(SELECT 1 FROM {$contextResourceTbl} ctx WHERE ctx.resource = modResource.id AND ctx.context_key IN ({$context})))";\n}\nif (empty($showDeleted)) {\n    $criteria[\'deleted\'] = \'0\';\n}\nif (empty($showUnpublished)) {\n    $criteria[\'published\'] = \'1\';\n}\nif (empty($showHidden)) {\n    $criteria[\'hidemenu\'] = \'0\';\n}\nif (!empty($hideContainers)) {\n    $criteria[\'isfolder\'] = \'0\';\n}\n$criteria = $modx->newQuery(\'modResource\', $criteria);\nif (!empty($tvFilters)) {\n    $tmplVarTbl = $modx->getTableName(\'modTemplateVar\');\n    $tmplVarResourceTbl = $modx->getTableName(\'modTemplateVarResource\');\n    $conditions = array();\n    $operators = array(\n        \'<=>\' => \'<=>\',\n        \'===\' => \'=\',\n        \'!==\' => \'!=\',\n        \'<>\' => \'<>\',\n        \'==\' => \'LIKE\',\n        \'!=\' => \'NOT LIKE\',\n        \'<<\' => \'<\',\n        \'<=\' => \'<=\',\n        \'=<\' => \'=<\',\n        \'>>\' => \'>\',\n        \'>=\' => \'>=\',\n        \'=>\' => \'=>\'\n    );\n    foreach ($tvFilters as $fGroup => $tvFilter) {\n        $filterGroup = array();\n        $filters = explode($tvFiltersAndDelimiter, $tvFilter);\n        $multiple = count($filters) > 0;\n        foreach ($filters as $filter) {\n            $operator = \'==\';\n            $sqlOperator = \'LIKE\';\n            foreach ($operators as $op => $opSymbol) {\n                if (strpos($filter, $op, 1) !== false) {\n                    $operator = $op;\n                    $sqlOperator = $opSymbol;\n                    break;\n                }\n            }\n            $tvValueField = \'tvr.value\';\n            $tvDefaultField = \'tv.default_text\';\n            $f = explode($operator, $filter);\n            if (count($f) >= 2) {\n                if (count($f) > 2) {\n                    $k = array_shift($f);\n                    $b = join($operator, $f);\n                    $f = array($k, $b);\n                }\n                $tvName = $modx->quote($f[0]);\n                if (is_numeric($f[1]) && !in_array($sqlOperator, array(\'LIKE\', \'NOT LIKE\'))) {\n                    $tvValue = $f[1];\n                    if ($f[1] == (integer)$f[1]) {\n                        $tvValueField = "CAST({$tvValueField} AS SIGNED INTEGER)";\n                        $tvDefaultField = "CAST({$tvDefaultField} AS SIGNED INTEGER)";\n                    } else {\n                        $tvValueField = "CAST({$tvValueField} AS DECIMAL)";\n                        $tvDefaultField = "CAST({$tvDefaultField} AS DECIMAL)";\n                    }\n                } else {\n                    $tvValue = $modx->quote($f[1]);\n                }\n                if ($multiple) {\n                    $filterGroup[] =\n                        "(EXISTS (SELECT 1 FROM {$tmplVarResourceTbl} tvr JOIN {$tmplVarTbl} tv ON {$tvValueField} {$sqlOperator} {$tvValue} AND tv.name = {$tvName} AND tv.id = tvr.tmplvarid WHERE tvr.contentid = modResource.id) " .\n                        "OR EXISTS (SELECT 1 FROM {$tmplVarTbl} tv WHERE tv.name = {$tvName} AND {$tvDefaultField} {$sqlOperator} {$tvValue} AND tv.id NOT IN (SELECT tmplvarid FROM {$tmplVarResourceTbl} WHERE contentid = modResource.id)) " .\n                        ")";\n                } else {\n                    $filterGroup =\n                        "(EXISTS (SELECT 1 FROM {$tmplVarResourceTbl} tvr JOIN {$tmplVarTbl} tv ON {$tvValueField} {$sqlOperator} {$tvValue} AND tv.name = {$tvName} AND tv.id = tvr.tmplvarid WHERE tvr.contentid = modResource.id) " .\n                        "OR EXISTS (SELECT 1 FROM {$tmplVarTbl} tv WHERE tv.name = {$tvName} AND {$tvDefaultField} {$sqlOperator} {$tvValue} AND tv.id NOT IN (SELECT tmplvarid FROM {$tmplVarResourceTbl} WHERE contentid = modResource.id)) " .\n                        ")";\n                }\n            } elseif (count($f) == 1) {\n                $tvValue = $modx->quote($f[0]);\n                if ($multiple) {\n                    $filterGroup[] = "EXISTS (SELECT 1 FROM {$tmplVarResourceTbl} tvr JOIN {$tmplVarTbl} tv ON {$tvValueField} {$sqlOperator} {$tvValue} AND tv.id = tvr.tmplvarid WHERE tvr.contentid = modResource.id)";\n                } else {\n                    $filterGroup = "EXISTS (SELECT 1 FROM {$tmplVarResourceTbl} tvr JOIN {$tmplVarTbl} tv ON {$tvValueField} {$sqlOperator} {$tvValue} AND tv.id = tvr.tmplvarid WHERE tvr.contentid = modResource.id)";\n                }\n            }\n        }\n        $conditions[] = $filterGroup;\n    }\n    if (!empty($conditions)) {\n        $firstGroup = true;\n        foreach ($conditions as $cGroup => $c) {\n            if (is_array($c)) {\n                $first = true;\n                foreach ($c as $cond) {\n                    if ($first && !$firstGroup) {\n                        $criteria->condition($criteria->query[\'where\'][0][1], $cond, xPDOQuery::SQL_OR, null, $cGroup);\n                    } else {\n                        $criteria->condition($criteria->query[\'where\'][0][1], $cond, xPDOQuery::SQL_AND, null, $cGroup);\n                    }\n                    $first = false;\n                }\n            } else {\n                $criteria->condition($criteria->query[\'where\'][0][1], $c, $firstGroup ? xPDOQuery::SQL_AND : xPDOQuery::SQL_OR, null, $cGroup);\n            }\n            $firstGroup = false;\n        }\n    }\n}\n/* include/exclude resources, via &resources=`123,-456` prop */\nif (!empty($resources)) {\n    $resourceConditions = array();\n    $resources = explode(\',\',$resources);\n    $include = array();\n    $exclude = array();\n    foreach ($resources as $resource) {\n        $resource = (int)$resource;\n        if ($resource == 0) continue;\n        if ($resource < 0) {\n            $exclude[] = abs($resource);\n        } else {\n            $include[] = $resource;\n        }\n    }\n    if (!empty($include)) {\n        $criteria->where(array(\'OR:modResource.id:IN\' => $include), xPDOQuery::SQL_OR);\n    }\n    if (!empty($exclude)) {\n        $criteria->where(array(\'modResource.id:NOT IN\' => $exclude), xPDOQuery::SQL_AND, null, 1);\n    }\n}\nif (!empty($where)) {\n    $criteria->where($where);\n}\n\n$total = $modx->getCount(\'modResource\', $criteria);\n$modx->setPlaceholder($totalVar, $total);\n\n$fields = array_keys($modx->getFields(\'modResource\'));\nif (empty($includeContent)) {\n    $fields = array_diff($fields, array(\'content\'));\n}\n$columns = $includeContent ? $modx->getSelectColumns(\'modResource\', \'modResource\') : $modx->getSelectColumns(\'modResource\', \'modResource\', \'\', array(\'content\'), true);\n$criteria->select($columns);\nif (!empty($sortbyTV)) {\n    $criteria->leftJoin(\'modTemplateVar\', \'tvDefault\', array(\n        "tvDefault.name" => $sortbyTV\n    ));\n    $criteria->leftJoin(\'modTemplateVarResource\', \'tvSort\', array(\n        "tvSort.contentid = modResource.id",\n        "tvSort.tmplvarid = tvDefault.id"\n    ));\n    if (empty($sortbyTVType)) $sortbyTVType = \'string\';\n    if ($modx->getOption(\'dbtype\') === \'mysql\') {\n        switch ($sortbyTVType) {\n            case \'integer\':\n                $criteria->select("CAST(IFNULL(tvSort.value, tvDefault.default_text) AS SIGNED INTEGER) AS sortTV");\n                break;\n            case \'decimal\':\n                $criteria->select("CAST(IFNULL(tvSort.value, tvDefault.default_text) AS DECIMAL) AS sortTV");\n                break;\n            case \'datetime\':\n                $criteria->select("CAST(IFNULL(tvSort.value, tvDefault.default_text) AS DATETIME) AS sortTV");\n                break;\n            case \'string\':\n            default:\n                $criteria->select("IFNULL(tvSort.value, tvDefault.default_text) AS sortTV");\n                break;\n        }\n    } elseif ($modx->getOption(\'dbtype\') === \'sqlsrv\') {\n        switch ($sortbyTVType) {\n            case \'integer\':\n                $criteria->select("CAST(ISNULL(tvSort.value, tvDefault.default_text) AS BIGINT) AS sortTV");\n                break;\n            case \'decimal\':\n                $criteria->select("CAST(ISNULL(tvSort.value, tvDefault.default_text) AS DECIMAL) AS sortTV");\n                break;\n            case \'datetime\':\n                $criteria->select("CAST(ISNULL(tvSort.value, tvDefault.default_text) AS DATETIME) AS sortTV");\n                break;\n            case \'string\':\n            default:\n                $criteria->select("ISNULL(tvSort.value, tvDefault.default_text) AS sortTV");\n                break;\n        }\n    }\n    $criteria->sortby("sortTV", $sortdirTV);\n}\nif (!empty($sortby)) {\n    if (strpos($sortby, \'{\') === 0) {\n        $sorts = $modx->fromJSON($sortby);\n    } else {\n        $sorts = array($sortby => $sortdir);\n    }\n    if (is_array($sorts)) {\n        while (list($sort, $dir) = each($sorts)) {\n            if ($sortbyEscaped) $sort = $modx->escape($sort);\n            if (!empty($sortbyAlias)) $sort = $modx->escape($sortbyAlias) . ".{$sort}";\n            $criteria->sortby($sort, $dir);\n        }\n    }\n}\nif (!empty($limit)) $criteria->limit($limit, $offset);\n\nif (!empty($debug)) {\n    $criteria->prepare();\n    $modx->log(modX::LOG_LEVEL_ERROR, $criteria->toSQL());\n}\n$collection = $modx->getCollection(\'modResource\', $criteria, $dbCacheFlag);\n\n$idx = !empty($idx) || $idx === \'0\' ? (integer) $idx : 1;\n$first = empty($first) && $first !== \'0\' ? 1 : (integer) $first;\n$last = empty($last) ? (count($collection) + $idx - 1) : (integer) $last;\n\n/* include parseTpl */\ninclude_once $modx->getOption(\'getresources.core_path\',null,$modx->getOption(\'core_path\').\'components/getresources/\').\'include.parsetpl.php\';\n\n$templateVars = array();\nif (!empty($includeTVs) && !empty($includeTVList)) {\n    $templateVars = $modx->getCollection(\'modTemplateVar\', array(\'name:IN\' => $includeTVList));\n}\n/** @var modResource $resource */\nforeach ($collection as $resourceId => $resource) {\n    $tvs = array();\n    if (!empty($includeTVs)) {\n        if (empty($includeTVList)) {\n            $templateVars = $resource->getMany(\'TemplateVars\');\n        }\n        /** @var modTemplateVar $templateVar */\n        foreach ($templateVars as $tvId => $templateVar) {\n            if (!empty($includeTVList) && !in_array($templateVar->get(\'name\'), $includeTVList)) continue;\n            if ($processTVs && (empty($processTVList) || in_array($templateVar->get(\'name\'), $processTVList))) {\n                $tvs[$tvPrefix . $templateVar->get(\'name\')] = $templateVar->renderOutput($resource->get(\'id\'));\n            } else {\n                $value = $templateVar->getValue($resource->get(\'id\'));\n                if ($prepareTVs && method_exists($templateVar, \'prepareOutput\') && (empty($prepareTVList) || in_array($templateVar->get(\'name\'), $prepareTVList))) {\n                    $value = $templateVar->prepareOutput($value);\n                }\n                $tvs[$tvPrefix . $templateVar->get(\'name\')] = $value;\n            }\n        }\n    }\n    $odd = ($idx & 1);\n    $properties = array_merge(\n        $scriptProperties\n        ,array(\n            \'idx\' => $idx\n            ,\'first\' => $first\n            ,\'last\' => $last\n            ,\'odd\' => $odd\n        )\n        ,$includeContent ? $resource->toArray() : $resource->get($fields)\n        ,$tvs\n    );\n    $resourceTpl = false;\n    if ($idx == $first && !empty($tplFirst)) {\n        $resourceTpl = parseTpl($tplFirst, $properties);\n    }\n    if ($idx == $last && empty($resourceTpl) && !empty($tplLast)) {\n        $resourceTpl = parseTpl($tplLast, $properties);\n    }\n    $tplidx = \'tpl_\' . $idx;\n    if (empty($resourceTpl) && !empty($$tplidx)) {\n        $resourceTpl = parseTpl($$tplidx, $properties);\n    }\n    if ($idx > 1 && empty($resourceTpl)) {\n        $divisors = getDivisors($idx);\n        if (!empty($divisors)) {\n            foreach ($divisors as $divisor) {\n                $tplnth = \'tpl_n\' . $divisor;\n                if (!empty($$tplnth)) {\n                    $resourceTpl = parseTpl($$tplnth, $properties);\n                    if (!empty($resourceTpl)) {\n                        break;\n                    }\n                }\n            }\n        }\n    }\n    if ($odd && empty($resourceTpl) && !empty($tplOdd)) {\n        $resourceTpl = parseTpl($tplOdd, $properties);\n    }\n    if (!empty($tplCondition) && !empty($conditionalTpls) && empty($resourceTpl)) {\n        $conTpls = $modx->fromJSON($conditionalTpls);\n        $subject = $properties[$tplCondition];\n        $tplOperator = !empty($tplOperator) ? $tplOperator : \'=\';\n        $tplOperator = strtolower($tplOperator);\n        $tplCon = \'\';\n        foreach ($conTpls as $operand => $conditionalTpl) {\n            switch ($tplOperator) {\n                case \'!=\':\n                case \'neq\':\n                case \'not\':\n                case \'isnot\':\n                case \'isnt\':\n                case \'unequal\':\n                case \'notequal\':\n                    $tplCon = (($subject != $operand) ? $conditionalTpl : $tplCon);\n                    break;\n                case \'<\':\n                case \'lt\':\n                case \'less\':\n                case \'lessthan\':\n                    $tplCon = (($subject < $operand) ? $conditionalTpl : $tplCon);\n                    break;\n                case \'>\':\n                case \'gt\':\n                case \'greater\':\n                case \'greaterthan\':\n                    $tplCon = (($subject > $operand) ? $conditionalTpl : $tplCon);\n                    break;\n                case \'<=\':\n                case \'lte\':\n                case \'lessthanequals\':\n                case \'lessthanorequalto\':\n                    $tplCon = (($subject <= $operand) ? $conditionalTpl : $tplCon);\n                    break;\n                case \'>=\':\n                case \'gte\':\n                case \'greaterthanequals\':\n                case \'greaterthanequalto\':\n                    $tplCon = (($subject >= $operand) ? $conditionalTpl : $tplCon);\n                    break;\n                case \'isempty\':\n                case \'empty\':\n                    $tplCon = empty($subject) ? $conditionalTpl : $tplCon;\n                    break;\n                case \'!empty\':\n                case \'notempty\':\n                case \'isnotempty\':\n                    $tplCon = !empty($subject) && $subject != \'\' ? $conditionalTpl : $tplCon;\n                    break;\n                case \'isnull\':\n                case \'null\':\n                    $tplCon = $subject == null || strtolower($subject) == \'null\' ? $conditionalTpl : $tplCon;\n                    break;\n                case \'inarray\':\n                case \'in_array\':\n                case \'ia\':\n                    $operand = explode(\',\', $operand);\n                    $tplCon = in_array($subject, $operand) ? $conditionalTpl : $tplCon;\n                    break;\n                case \'between\':\n                case \'range\':\n                case \'>=<\':\n                case \'><\':\n                    $operand = explode(\',\', $operand);\n                    $tplCon = ($subject >= min($operand) && $subject <= max($operand)) ? $conditionalTpl : $tplCon;\n                    break;\n                case \'==\':\n                case \'=\':\n                case \'eq\':\n                case \'is\':\n                case \'equal\':\n                case \'equals\':\n                case \'equalto\':\n                default:\n                    $tplCon = (($subject == $operand) ? $conditionalTpl : $tplCon);\n                    break;\n            }\n        }\n        if (!empty($tplCon)) {\n            $resourceTpl = parseTpl($tplCon, $properties);\n        }\n    }\n    if (!empty($tpl) && empty($resourceTpl)) {\n        $resourceTpl = parseTpl($tpl, $properties);\n    }\n    if ($resourceTpl === false && !empty($debug)) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $output[]= $chunk->process(array(), \'<pre>\' . print_r($properties, true) .\'</pre>\');\n    } else {\n        $output[]= $resourceTpl;\n    }\n    $idx++;\n}\n\n/* output */\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\', $scriptProperties, false);\nif (!empty($toSeparatePlaceholders)) {\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n    return \'\';\n}\n\n$output = implode($outputSeparator, $output);\n\n$tplWrapper = $modx->getOption(\'tplWrapper\', $scriptProperties, false);\n$wrapIfEmpty = $modx->getOption(\'wrapIfEmpty\', $scriptProperties, false);\nif (!empty($tplWrapper) && ($wrapIfEmpty || !empty($output))) {\n    $output = parseTpl($tplWrapper, array_merge($scriptProperties, array(\'output\' => $output)));\n}\n\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n    return \'\';\n}\nreturn $output;', 0, 'a:44:{s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:121:"Name of a chunk serving as a resource template. NOTE: if not provided, properties are dumped to output for each resource.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:6:"tplOdd";a:7:{s:4:"name";s:6:"tplOdd";s:4:"desc";s:100:"Name of a chunk serving as resource template for resources with an odd idx value (see idx property).";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:8:"tplFirst";a:7:{s:4:"name";s:8:"tplFirst";s:4:"desc";s:89:"Name of a chunk serving as resource template for the first resource (see first property).";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:7:"tplLast";a:7:{s:4:"name";s:7:"tplLast";s:4:"desc";s:87:"Name of a chunk serving as resource template for the last resource (see last property).";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:10:"tplWrapper";a:7:{s:4:"name";s:10:"tplWrapper";s:4:"desc";s:115:"Name of a chunk serving as wrapper template for the Snippet output. This does not work with toSeparatePlaceholders.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"wrapIfEmpty";a:7:{s:4:"name";s:11:"wrapIfEmpty";s:4:"desc";s:95:"Indicates if empty output should be wrapped by the tplWrapper, if specified. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:6:"sortby";a:7:{s:4:"name";s:6:"sortby";s:4:"desc";s:153:"A field name to sort by or JSON object of field names and sortdir for each field, e.g. {"publishedon":"ASC","createdon":"DESC"}. Defaults to publishedon.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:11:"publishedon";s:7:"lexicon";N;s:4:"area";s:0:"";}s:8:"sortbyTV";a:7:{s:4:"name";s:8:"sortbyTV";s:4:"desc";s:65:"Name of a Template Variable to sort by. Defaults to empty string.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"sortbyTVType";a:7:{s:4:"name";s:12:"sortbyTVType";s:4:"desc";s:72:"An optional type to indicate how to sort on the Template Variable value.";s:4:"type";s:4:"list";s:7:"options";a:4:{i:0;a:2:{s:4:"text";s:6:"string";s:5:"value";s:6:"string";}i:1;a:2:{s:4:"text";s:7:"integer";s:5:"value";s:7:"integer";}i:2;a:2:{s:4:"text";s:7:"decimal";s:5:"value";s:7:"decimal";}i:3;a:2:{s:4:"text";s:8:"datetime";s:5:"value";s:8:"datetime";}}s:5:"value";s:6:"string";s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"sortbyAlias";a:7:{s:4:"name";s:11:"sortbyAlias";s:4:"desc";s:58:"Query alias for sortby field. Defaults to an empty string.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"sortbyEscaped";a:7:{s:4:"name";s:13:"sortbyEscaped";s:4:"desc";s:82:"Determines if the field name specified in sortby should be escaped. Defaults to 0.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";N;s:4:"area";s:0:"";}s:7:"sortdir";a:7:{s:4:"name";s:7:"sortdir";s:4:"desc";s:41:"Order which to sort by. Defaults to DESC.";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:3:"ASC";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:4:"DESC";s:5:"value";s:4:"DESC";}}s:5:"value";s:4:"DESC";s:7:"lexicon";N;s:4:"area";s:0:"";}s:9:"sortdirTV";a:7:{s:4:"name";s:9:"sortdirTV";s:4:"desc";s:61:"Order which to sort a Template Variable by. Defaults to DESC.";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:3:"ASC";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:4:"DESC";s:5:"value";s:4:"DESC";}}s:5:"value";s:4:"DESC";s:7:"lexicon";N;s:4:"area";s:0:"";}s:5:"limit";a:7:{s:4:"name";s:5:"limit";s:4:"desc";s:55:"Limits the number of resources returned. Defaults to 5.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"5";s:7:"lexicon";N;s:4:"area";s:0:"";}s:6:"offset";a:7:{s:4:"name";s:6:"offset";s:4:"desc";s:56:"An offset of resources returned by the criteria to skip.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";N;s:4:"area";s:0:"";}s:9:"tvFilters";a:7:{s:4:"name";s:9:"tvFilters";s:4:"desc";s:778:"Delimited-list of TemplateVar values to filter resources by. Supports two delimiters and two value search formats. THe first delimiter || represents a logical OR and the primary grouping mechanism.  Within each group you can provide a comma-delimited list of values. These values can be either tied to a specific TemplateVar by name, e.g. myTV==value, or just the value, indicating you are searching for the value in any TemplateVar tied to the Resource. An example would be &tvFilters=`filter2==one,filter1==bar%||filter1==foo`. <br />NOTE: filtering by values uses a LIKE query and % is considered a wildcard. <br />ANOTHER NOTE: This only looks at the raw value set for specific Resource, i. e. there must be a value specifically set for the Resource and it is not evaluated.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:21:"tvFiltersAndDelimiter";a:7:{s:4:"name";s:21:"tvFiltersAndDelimiter";s:4:"desc";s:83:"The delimiter to use to separate logical AND expressions in tvFilters. Default is ,";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:",";s:7:"lexicon";N;s:4:"area";s:0:"";}s:20:"tvFiltersOrDelimiter";a:7:{s:4:"name";s:20:"tvFiltersOrDelimiter";s:4:"desc";s:83:"The delimiter to use to separate logical OR expressions in tvFilters. Default is ||";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"||";s:7:"lexicon";N;s:4:"area";s:0:"";}s:5:"depth";a:7:{s:4:"name";s:5:"depth";s:4:"desc";s:88:"Integer value indicating depth to search for resources from each parent. Defaults to 10.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"10";s:7:"lexicon";N;s:4:"area";s:0:"";}s:7:"parents";a:7:{s:4:"name";s:7:"parents";s:4:"desc";s:57:"Optional. Comma-delimited list of ids serving as parents.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:14:"includeContent";a:7:{s:4:"name";s:14:"includeContent";s:4:"desc";s:95:"Indicates if the content of each resource should be returned in the results. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:10:"includeTVs";a:7:{s:4:"name";s:10:"includeTVs";s:4:"desc";s:124:"Indicates if TemplateVar values should be included in the properties available to each resource template. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"includeTVList";a:7:{s:4:"name";s:13:"includeTVList";s:4:"desc";s:96:"Limits included TVs to those specified as a comma-delimited list of TV names. Defaults to empty.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:10:"showHidden";a:7:{s:4:"name";s:10:"showHidden";s:4:"desc";s:85:"Indicates if Resources that are hidden from menus should be shown. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:15:"showUnpublished";a:7:{s:4:"name";s:15:"showUnpublished";s:4:"desc";s:79:"Indicates if Resources that are unpublished should be shown. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"showDeleted";a:7:{s:4:"name";s:11:"showDeleted";s:4:"desc";s:75:"Indicates if Resources that are deleted should be shown. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:9:"resources";a:7:{s:4:"name";s:9:"resources";s:4:"desc";s:177:"A comma-separated list of resource IDs to exclude or include. IDs with a - in front mean to exclude. Ex: 123,-456 means to include Resource 123, but always exclude Resource 456.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:10:"processTVs";a:7:{s:4:"name";s:10:"processTVs";s:4:"desc";s:117:"Indicates if TemplateVar values should be rendered as they would on the resource being summarized. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"processTVList";a:7:{s:4:"name";s:13:"processTVList";s:4:"desc";s:166:"Limits processed TVs to those specified as a comma-delimited list of TV names; note only includedTVs will be available for processing if specified. Defaults to empty.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:10:"prepareTVs";a:7:{s:4:"name";s:10:"prepareTVs";s:4:"desc";s:120:"Indicates if TemplateVar values that are not processed fully should be prepared before being returned. Defaults to true.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"prepareTVList";a:7:{s:4:"name";s:13:"prepareTVList";s:4:"desc";s:164:"Limits prepared TVs to those specified as a comma-delimited list of TV names; note only includedTVs will be available for preparing if specified. Defaults to empty.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:8:"tvPrefix";a:7:{s:4:"name";s:8:"tvPrefix";s:4:"desc";s:55:"The prefix for TemplateVar properties. Defaults to: tv.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"tv.";s:7:"lexicon";N;s:4:"area";s:0:"";}s:3:"idx";a:7:{s:4:"name";s:3:"idx";s:4:"desc";s:120:"You can define the starting idx of the resources, which is an property that is incremented as each resource is rendered.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:5:"first";a:7:{s:4:"name";s:5:"first";s:4:"desc";s:81:"Define the idx which represents the first resource (see tplFirst). Defaults to 1.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:4:"last";a:7:{s:4:"name";s:4:"last";s:4:"desc";s:129:"Define the idx which represents the last resource (see tplLast). Defaults to the number of resources being summarized + first - 1";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:85:"If set, will assign the result to this placeholder instead of outputting it directly.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:22:"toSeparatePlaceholders";a:7:{s:4:"name";s:22:"toSeparatePlaceholders";s:4:"desc";s:130:"If set, will assign EACH result to a separate placeholder named by this param suffixed with a sequential number (starting from 0).";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:5:"debug";a:7:{s:4:"name";s:5:"debug";s:4:"desc";s:68:"If true, will send the SQL query to the MODX log. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:5:"where";a:7:{s:4:"name";s:5:"where";s:4:"desc";s:193:"A JSON expression of criteria to build any additional where clauses from, e.g. &where=`{{"alias:LIKE":"foo%", "OR:alias:LIKE":"%bar"},{"OR:pagetitle:=":"foobar", "AND:description:=":"raboof"}}`";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"dbCacheFlag";a:7:{s:4:"name";s:11:"dbCacheFlag";s:4:"desc";s:218:"Determines how result sets are cached if cache_db is enabled in MODX. 0|false = do not cache result set; 1 = cache result set according to cache settings, any other integer value = number of seconds to cache result set";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";N;s:4:"area";s:0:"";}s:7:"context";a:7:{s:4:"name";s:7:"context";s:4:"desc";s:116:"A comma-delimited list of context keys for limiting results. Default is empty, i.e. do not limit results by context.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"tplCondition";a:7:{s:4:"name";s:12:"tplCondition";s:4:"desc";s:129:"A condition to compare against the conditionalTpls property to map Resources to different tpls based on custom conditional logic.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"tplOperator";a:7:{s:4:"name";s:11:"tplOperator";s:4:"desc";s:125:"An optional operator to use for the tplCondition when comparing against the conditionalTpls operands. Default is == (equals).";s:4:"type";s:4:"list";s:7:"options";a:10:{i:0;a:2:{s:4:"text";s:11:"is equal to";s:5:"value";s:2:"==";}i:1;a:2:{s:4:"text";s:15:"is not equal to";s:5:"value";s:2:"!=";}i:2;a:2:{s:4:"text";s:9:"less than";s:5:"value";s:1:"<";}i:3;a:2:{s:4:"text";s:21:"less than or equal to";s:5:"value";s:2:"<=";}i:4;a:2:{s:4:"text";s:24:"greater than or equal to";s:5:"value";s:2:">=";}i:5;a:2:{s:4:"text";s:8:"is empty";s:5:"value";s:5:"empty";}i:6;a:2:{s:4:"text";s:12:"is not empty";s:5:"value";s:6:"!empty";}i:7;a:2:{s:4:"text";s:7:"is null";s:5:"value";s:4:"null";}i:8;a:2:{s:4:"text";s:11:"is in array";s:5:"value";s:7:"inarray";}i:9;a:2:{s:4:"text";s:10:"is between";s:5:"value";s:7:"between";}}s:5:"value";s:2:"==";s:7:"lexicon";N;s:4:"area";s:0:"";}s:15:"conditionalTpls";a:7:{s:4:"name";s:15:"conditionalTpls";s:4:"desc";s:121:"A JSON map of conditional operands and tpls to compare against the tplCondition property using the specified tplOperator.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}}', '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_site_templates`
--

CREATE TABLE `chisto_site_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_site_templates`
--

INSERT INTO `chisto_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'index', 'Template', 0, 4, '', 0, '<!DOCTYPE html>\n<html lang="ru">\n[[$head]]\n<body>\n    <main>\n    	[[$header]]\n    	[[!$slider]]\n    	[[$advantageIndex]]\n    	[[$serviceIndex]]\n		[[$priceIndex]]\n		[[$stockIndex]]\n		[[$bannerIndexOne]]\n		[[$reviewIndex]]\n		[[$worksIndex]]\n        [[$bannerIndexTwo]]\n		[[$bannerIndexThree]]\n		[[$articleIndex]]\n	</main>\n	[[$footer]]\n    [[$scripts]]\n</body>\n</html>', 0, 'a:0:{}', 0, ''),
(2, 1, 0, 'services', '', 0, 5, '', 0, '<!DOCTYPE html>\n<html lang="ru">\n[[$head]]\n<body>\n    <main>\n    	[[$header]]\n    	<section class="content">\n    	    <div class="container">\n    	        <div class="row">\n                    <div class="service-page contain clearfix">\n                      <div class="col-md-4">\n                        <aside class="">\n                          <div class="ttl">\n                            <h3>Другие услуги</h3>\n                          </div>\n                            <nav>\n                              <ul>\n                                [[$pageServiceLink]]\n                              </ul>\n                            </nav>\n                        </aside>\n                      </div>\n                       <div class="col-md-8 article">\n                           <div class="ttl-head ttl-services">\n                               <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>\n                           </div>\n                           <div class="oplet">\n                               [[*content]]\n                           </div>\n                           <div class="banner-buttons-pages">\n                              <div class="btn-ban"><a href="[[~7]]"><button>Оформить заказ</button></a></div>\n                              <div class="btn-ban"><a href="[[~8]]"><button>Связаться с нами</button></a></div>\n                            </div>\n                       </div>\n    	            </div>\n    	        </div>\n    	    </div>\n    	</section>\n	</main>\n	[[$footer]]\n    [[$scripts]]\n</body>\n</html>', 0, 'a:0:{}', 0, ''),
(3, 1, 0, 'pages', '', 0, 6, '', 0, '<!DOCTYPE html>\n<html lang="ru">\n[[$head]]\n<body>\n    <main>\n    	[[$header]]\n    	<section class="content">\n    	    <div class="container">\n    	        <div class="row">\n                    <div class="[[*id:is=`5`:then=`services`]][[*id:is=`6`:then=`about-page`]][[*id:is=`7`:then=`calc-page`]][[*id:is=`8`:then=`contacts-page`]] contain clearfix">\n                       <div class="col-sm-12 article">\n                           <div class="ttl-head ttl-services">\n                               <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>\n                           </div>\n                           <div class="oplet">\n                               [[*id:is=`5`:then=`[[$servicesOut]]`]]\n                               [[*content]]\n                           </div>\n                       </div>\n    	            </div>\n    	        </div>\n    	    </div>\n    	</section>\n	</main>\n	[[$footer]]\n    [[$scripts]]\n</body>', 0, 'a:0:{}', 0, ''),
(4, 0, 0, 'slider', 'Template', 0, 9, '', 0, '<!DOCTYPE html>\n<html lang="ru">\n<body>\n</body>\n</html>', 0, 'a:0:{}', 0, ''),
(5, 0, 0, 'advantage', 'Template', 0, 10, '', 0, '<!DOCTYPE html>\n<html lang="ru">\n<body>\n</body>\n</html>', 0, 'a:0:{}', 0, ''),
(6, 2, 0, 'review', '', 0, 14, '', 0, '<!DOCTYPE html>\n<html lang="ru">\n<body>\n</body>\n</html>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_site_tmplvars`
--

CREATE TABLE `chisto_site_tmplvars` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_site_tmplvars`
--

INSERT INTO `chisto_site_tmplvars` (`id`, `source`, `property_preprocess`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `default_text`, `properties`, `input_properties`, `output_properties`, `static`, `static_file`) VALUES
(1, 3, 0, 'image', 'imgSldrTv', 'Изображение слайда', '1920x850', 0, 9, 0, '', 0, 'default', '', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, ''),
(2, 4, 0, 'image', 'imgAdvantageTv', 'Иконка для представления', '90х90', 0, 10, 0, '', 0, 'default', '', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, ''),
(3, 2, 0, 'text', 'titleAdvantage', 'Заголовок раздела преимуществ', '', 0, 10, 0, '', 0, 'default', '', 'a:0:{}', 'a:5:{s:10:"allowBlank";s:4:"true";s:9:"minLength";s:0:"";s:9:"maxLength";s:0:"";s:5:"regex";s:0:"";s:9:"regexText";s:0:"";}', 'a:0:{}', 0, ''),
(4, 5, 0, 'image', 'servicesOutTv', 'Изображение для раздела услуг', '270х165', 0, 5, 0, '', 0, 'default', '', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, ''),
(5, 2, 0, 'text', 'titleService', 'Заголовок раздела услуг', '', 0, 11, 0, '', 0, 'default', '', 'a:0:{}', 'a:5:{s:10:"allowBlank";s:4:"true";s:9:"minLength";s:0:"";s:9:"maxLength";s:0:"";s:5:"regex";s:0:"";s:9:"regexText";s:0:"";}', 'a:0:{}', 0, ''),
(6, 4, 0, 'image', 'serviceIconTv', 'Иконка для представления услуги на главной', '90х90', 0, 11, 0, '', 0, 'default', '', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, ''),
(7, 2, 0, 'option', 'onOffServiceTv', 'Вывести этот ресурс на главной?', '', 0, 11, 0, 'Да==1||Нет==0', 0, 'default', '1', 'a:0:{}', 'a:2:{s:10:"allowBlank";s:4:"true";s:7:"columns";s:1:"1";}', 'a:0:{}', 0, ''),
(8, 2, 0, 'text', 'titlePrice', 'Заголовок раздела цены', '', 0, 12, 0, '', 0, 'default', '', 'a:0:{}', 'a:5:{s:10:"allowBlank";s:4:"true";s:9:"minLength";s:0:"";s:9:"maxLength";s:0:"";s:5:"regex";s:0:"";s:9:"regexText";s:0:"";}', 'a:0:{}', 0, ''),
(9, 2, 0, 'migx', 'rowTablePriceTv', 'Редактирование таблицы цен', '', 0, 12, 0, '', 0, 'default', '', 'a:0:{}', 'a:7:{s:7:"configs";s:0:"";s:8:"formtabs";s:543:"[{\n    "caption": "Строки таблицы цен",\n    "fields": [\n    {"field": "listItemType","caption": "Тип помещения","inputTVtype": "text"},\n    {"field": "listItemOne","caption": "Разовая цена","inputTVtype": "text"},\n    {"field": "listItemMonth","caption": "Каждый месяц","inputTVtype": "text"},\n    {"field": "listItemTwoWeek","caption": "Каждые 2 недели","inputTVtype": "text"},\n    {"field": "listItemAlwaysWeek","caption": "Каждую неделю","inputTVtype": "text"}]\n}]  ";s:7:"columns";s:451:"[\n    {"header": "Тип помещения","width": "300", "dataIndex": "listItemType"},\n    {"header": "Разовая цена","width": "150","dataIndex": "listItemOne"},\n    {"header": "Каждый месяц","width": "150","dataIndex": "listItemMonth"},\n    {"header": "Каждые 2 недели","width": "150","dataIndex": "listItemTwoWeek"},\n    {"header": "Каждую неделю","width": "150","dataIndex": "listItemAlwaysWeek"}\n] ";s:7:"btntext";s:0:"";s:10:"previewurl";s:0:"";s:10:"jsonvarkey";s:0:"";s:19:"autoResourceFolders";s:5:"false";}', 'a:0:{}', 0, ''),
(10, 0, 0, 'text', 'specialIndexTv', 'Сноска в разделе цен', '', 0, 12, 0, '', 0, 'default', '', 'a:0:{}', 'a:5:{s:10:"allowBlank";s:4:"true";s:9:"minLength";s:0:"";s:9:"maxLength";s:0:"";s:5:"regex";s:0:"";s:9:"regexText";s:0:"";}', 'a:0:{}', 0, ''),
(11, 2, 0, 'migx', 'underPriceTv', 'Список элементов слева от таблицы цен', '', 0, 12, 0, '', 0, 'default', '', 'a:0:{}', 'a:7:{s:7:"configs";s:0:"";s:8:"formtabs";s:207:"[{\n    "caption": "Список элементов слева от таблицы цен",\n    "fields": [\n    {"field": "listUnderPrice","caption": "Элемент списка","inputTVtype": "text"}]\n}]  ";s:7:"columns";s:79:"[\n    {"header": "Элемент списка","dataIndex": "listUnderPrice"}\n]";s:7:"btntext";s:0:"";s:10:"previewurl";s:0:"";s:10:"jsonvarkey";s:0:"";s:19:"autoResourceFolders";s:5:"false";}', 'a:0:{}', 0, ''),
(12, 2, 0, 'migx', 'distanceServiceTv', 'Цены на дополнительные услуги', '', 0, 12, 0, '', 0, 'default', '', 'a:0:{}', 'a:7:{s:7:"configs";s:0:"";s:8:"formtabs";s:184:"[{\n    "caption": "Дополнительные услуги",\n    "fields": [\n    {"field": "listDistanceService","caption": "Элемент списка","inputTVtype": "text"}]\n}]  ";s:7:"columns";s:84:"[\n    {"header": "Элемент списка","dataIndex": "listDistanceService"}\n]";s:7:"btntext";s:0:"";s:10:"previewurl";s:0:"";s:10:"jsonvarkey";s:0:"";s:19:"autoResourceFolders";s:5:"false";}', 'a:0:{}', 0, ''),
(13, 2, 0, 'text', 'titleStock', 'Заголовок раздела акции', 'Между <span></span> выделяется красная область', 0, 13, 0, '', 0, 'default', '', 'a:0:{}', 'a:5:{s:10:"allowBlank";s:4:"true";s:9:"minLength";s:0:"";s:9:"maxLength";s:0:"";s:5:"regex";s:0:"";s:9:"regexText";s:0:"";}', 'a:0:{}', 0, ''),
(14, 2, 0, 'image', 'imgStepOneTv', 'Иконка первого шага', '', 0, 13, 0, '', 0, 'default', '', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, ''),
(15, 2, 0, 'image', 'imgStepTwoTv', 'Иконка второго шага', '', 0, 13, 0, '', 0, 'default', '', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, ''),
(16, 2, 0, 'image', 'imgStepThreeTv', 'Иконка третьего шага', '', 0, 13, 0, '', 0, 'default', '', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, ''),
(17, 2, 0, 'image', 'imgStepFourTv', 'Иконка четвертого шага', '', 0, 13, 0, '', 0, 'default', '', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, ''),
(18, 2, 0, 'text', 'descStepOneTv', 'Описание первого шага', '', 0, 13, 0, '', 0, 'default', '', 'a:0:{}', 'a:5:{s:10:"allowBlank";s:4:"true";s:9:"minLength";s:0:"";s:9:"maxLength";s:0:"";s:5:"regex";s:0:"";s:9:"regexText";s:0:"";}', 'a:0:{}', 0, ''),
(19, 2, 0, 'text', 'descStepTwoTv', 'Описание второго шага', '', 0, 13, 0, '', 0, 'default', '', 'a:0:{}', 'a:5:{s:10:"allowBlank";s:4:"true";s:9:"minLength";s:0:"";s:9:"maxLength";s:0:"";s:5:"regex";s:0:"";s:9:"regexText";s:0:"";}', 'a:0:{}', 0, ''),
(20, 2, 0, 'text', 'descStepThreeTv', 'Описание третьего шага', '', 0, 13, 0, '', 0, 'default', '', 'a:0:{}', 'a:5:{s:10:"allowBlank";s:4:"true";s:9:"minLength";s:0:"";s:9:"maxLength";s:0:"";s:5:"regex";s:0:"";s:9:"regexText";s:0:"";}', 'a:0:{}', 0, ''),
(21, 2, 0, 'text', 'descStepFourTv', 'Описание четвертого шага', '', 0, 13, 0, '', 0, 'default', '', 'a:0:{}', 'a:5:{s:10:"allowBlank";s:4:"true";s:9:"minLength";s:0:"";s:9:"maxLength";s:0:"";s:5:"regex";s:0:"";s:9:"regexText";s:0:"";}', 'a:0:{}', 0, ''),
(22, 2, 0, 'image', 'imgReviewIndexTv', 'Изображение автора отзыва', '90x90', 0, 14, 0, '', 0, 'default', '', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, ''),
(23, 2, 0, 'text', 'titleReview', 'Заголовок раздела отзывов', '', 0, 14, 0, '', 0, 'default', '', 'a:0:{}', 'a:5:{s:10:"allowBlank";s:4:"true";s:9:"minLength";s:0:"";s:9:"maxLength";s:0:"";s:5:"regex";s:0:"";s:9:"regexText";s:0:"";}', 'a:0:{}', 0, ''),
(24, 6, 0, 'migx', 'worksIndexTv', 'Загрузить работы в раздел наших работ', '', 0, 15, 0, '', 0, 'default', '', 'a:0:{}', 'a:7:{s:7:"configs";s:5:"works";s:8:"formtabs";s:0:"";s:7:"columns";s:0:"";s:7:"btntext";s:0:"";s:10:"previewurl";s:0:"";s:10:"jsonvarkey";s:0:"";s:19:"autoResourceFolders";s:5:"false";}', 'a:0:{}', 0, ''),
(25, 2, 0, 'text', 'titleWorks', 'Заголовок раздела работ (портфолио)', '', 0, 15, 0, '', 0, 'default', '', 'a:0:{}', 'a:5:{s:10:"allowBlank";s:4:"true";s:9:"minLength";s:0:"";s:9:"maxLength";s:0:"";s:5:"regex";s:0:"";s:9:"regexText";s:0:"";}', 'a:0:{}', 0, ''),
(26, 2, 0, 'text', 'bannerTwoTv', 'Лозунг для второго баннера', '', 0, 16, 0, '', 0, 'default', '', 'a:0:{}', 'a:5:{s:10:"allowBlank";s:4:"true";s:9:"minLength";s:0:"";s:9:"maxLength";s:0:"";s:5:"regex";s:0:"";s:9:"regexText";s:0:"";}', 'a:0:{}', 0, ''),
(27, 2, 0, 'text', 'bannerOneTv', 'Лозунг для первого баннера', '', 0, 16, 0, '', 0, 'default', '', 'a:0:{}', 'a:5:{s:10:"allowBlank";s:4:"true";s:9:"minLength";s:0:"";s:9:"maxLength";s:0:"";s:5:"regex";s:0:"";s:9:"regexText";s:0:"";}', 'a:0:{}', 0, ''),
(28, 2, 0, 'migx', 'listArrowBannerThreeTv', 'Список в левом блоке маркированном стрелками', '', 0, 16, 0, '', 0, 'default', '', 'a:0:{}', 'a:7:{s:7:"configs";s:0:"";s:8:"formtabs";s:164:"[{\n    "caption": "Левый список",\n    "fields": [\n    {"field": "listArrowBannerVar","caption": "Элемент списка","inputTVtype": "text"}]\n}] ";s:7:"columns";s:83:"[\n    {"header": "Элемент списка","dataIndex": "listArrowBannerVar"}\n]";s:7:"btntext";s:0:"";s:10:"previewurl";s:0:"";s:10:"jsonvarkey";s:0:"";s:19:"autoResourceFolders";s:5:"false";}', 'a:0:{}', 0, ''),
(29, 2, 0, 'migx', 'listMarkBannerThreeTv', 'Список в правом блоке маркированном маркерами', '', 0, 16, 0, '', 0, 'default', '', 'a:0:{}', 'a:7:{s:7:"configs";s:0:"";s:8:"formtabs";s:163:"[{\n    "caption": "Левый список",\n    "fields": [\n    {"field": "listMarkBannerVar","caption": "Элемент списка","inputTVtype": "text"}]\n}] ";s:7:"columns";s:82:"[\n    {"header": "Элемент списка","dataIndex": "listMarkBannerVar"}\n]";s:7:"btntext";s:0:"";s:10:"previewurl";s:0:"";s:10:"jsonvarkey";s:0:"";s:19:"autoResourceFolders";s:5:"false";}', 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_site_tmplvar_access`
--

CREATE TABLE `chisto_site_tmplvar_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_site_tmplvar_contentvalues`
--

CREATE TABLE `chisto_site_tmplvar_contentvalues` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_site_tmplvar_contentvalues`
--

INSERT INTO `chisto_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 1, 23, 'slide3.jpg'),
(2, 1, 24, 'slide1.jpg'),
(3, 1, 25, 'slide2.jpg'),
(4, 3, 1, 'Наши преимущества'),
(5, 2, 28, 'ico-adv-1.png'),
(6, 2, 29, 'ico-adv-2.png'),
(9, 2, 33, 'ico-adv-3.png'),
(10, 2, 34, 'ico-adv-4.png'),
(11, 2, 35, 'ico-adv-5.png'),
(12, 2, 36, 'ico-adv-6.png'),
(13, 2, 37, 'ico-adv-7.png'),
(14, 2, 38, 'ico-adv-8.png'),
(15, 2, 39, 'ico-adv-9.png'),
(16, 4, 19, 'services1.jpg'),
(17, 6, 11, 'ico-serv-1.png'),
(18, 4, 14, 'Генеральная.jpg'),
(19, 6, 14, 'ico-serv-4.png'),
(20, 4, 16, 'Генеральная уборка офиса по графику.jpg'),
(21, 6, 16, 'ico-serv-6.png'),
(22, 4, 11, 'Стандартная уборка квартиры.jpg'),
(23, 5, 1, 'Наши услуги'),
(31, 7, 11, '1'),
(32, 8, 1, 'Стоимость услуги'),
(33, 9, 1, '[{"MIGX_id":"1","listItemType":"1 \\u043a\\u043e\\u043c\\u043d\\u0430\\u0442\\u043d\\u0430\\u044f \\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0430","listItemOne":"113","listItemMonth":"2222","listItemTwoWeek":"3333","listItemAlwaysWeek":"4444"},{"MIGX_id":"2","listItemType":"2 \\u043a\\u043e\\u043c\\u043d\\u0430\\u0442\\u043d\\u0430\\u044f \\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0430","listItemOne":"333","listItemMonth":"44","listItemTwoWeek":"55","listItemAlwaysWeek":"6"},{"MIGX_id":"3","listItemType":"3 \\u043a\\u043e\\u043c\\u043d\\u0430\\u0442\\u043d\\u0430\\u044f \\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0430","listItemOne":"3","listItemMonth":"2","listItemTwoWeek":"4","listItemAlwaysWeek":"5"},{"MIGX_id":"4","listItemType":"4 \\u043a\\u043e\\u043c\\u043d\\u0430\\u0442\\u043d\\u0430\\u044f \\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0430","listItemOne":"323","listItemMonth":"243","listItemTwoWeek":"2342","listItemAlwaysWeek":"2342343"},{"MIGX_id":"5","listItemType":"5 \\u043a\\u043e\\u043c\\u043d\\u0430\\u0442\\u043d\\u0430\\u044f \\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0430","listItemOne":"4r34r","listItemMonth":"34r534534","listItemTwoWeek":"345345","listItemAlwaysWeek":"34"},{"MIGX_id":"6","listItemType":"\\u0414\\u043e\\u043c (\\u043a\\u043e\\u0442\\u0442\\u0435\\u0434\\u0436, \\u0442\\u0430\\u0443\\u043d\\u0445\\u0430\\u0443\\u0441, \\u0434\\u0430\\u0447\\u0430)","listItemOne":"34","listItemMonth":"33","listItemTwoWeek":"22","listItemAlwaysWeek":"5"}]'),
(34, 10, 1, 'Если Ваше помещение не подходит под описание или другие класификации – сообщите нам, пожалуйста, все подробности и мы обязательно договоримся!'),
(35, 11, 1, '[{"MIGX_id":"1","listUnderPrice":"\\u0413\\u0435\\u043d\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0443\\u0431\\u043e\\u0440\\u043a\\u0430 \\u2013 400 \\u0440\\/\\u043a\\u0432.\\u043c\\u0435\\u0442\\u0440"},{"MIGX_id":"2","listUnderPrice":"\\u0423\\u0431\\u043e\\u0440\\u043a\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430 \\u0438 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u2013 500 \\u0440\\/\\u043a\\u0432.\\u043c\\u0435\\u0442\\u0440"},{"MIGX_id":"3","listUnderPrice":"\\u041c\\u0410\\u041b\\u042b\\u0428 +40% \\u043a \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438"},{"MIGX_id":"4","listUnderPrice":"\\u041f\\u0418\\u0422\\u041e\\u041c\\u0415\\u0426 +40% \\u043a \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438"},{"MIGX_id":"5","listUnderPrice":"\\u0421\\u0443\\u043f\\u0435\\u0440 \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u2013 1 \\u0447\\u0430\\u0441 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b\\/150-200\\u0440\\u0443\\u0431"}]'),
(36, 12, 1, '[{"MIGX_id":"1","listDistanceService":"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u043a\\u043b\\u044e\\u0447\\u0435\\u0439"},{"MIGX_id":"2","listDistanceService":"\\u0418\\u043d\\u0434\\u0438\\u0432\\u0438\\u0434\\u0443\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043f\\u0440\\u043e\\u0442\\u0438\\u0440\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u044b"},{"MIGX_id":"3","listDistanceService":"\\u0425\\u043e\\u043b\\u043e\\u0434\\u0438\\u043b\\u044c\\u043d\\u0438\\u043a"},{"MIGX_id":"4","listDistanceService":"\\u0414\\u0443\\u0445\\u043e\\u0432\\u043a\\u0430"},{"MIGX_id":"5","listDistanceService":"\\u041c\\u0438\\u043a\\u0440\\u043e\\u0432\\u043e\\u043b\\u043d\\u043e\\u0432\\u043a\\u0430"},{"MIGX_id":"6","listDistanceService":"\\u0411\\u0430\\u043b\\u043a\\u043e\\u043d\\u044b"},{"MIGX_id":"7","listDistanceService":"\\u041e\\u043a\\u043d\\u0430"},{"MIGX_id":"8","listDistanceService":"\\u0412\\u0438\\u0434\\u0435\\u043e\\u043d\\u0430\\u0431\\u043b\\u044e\\u0434\\u0435\\u043d\\u0438\\u0435"},{"MIGX_id":"9","listDistanceService":"\\u041c\\u044b\\u0442\\u044c\\u0435 \\u043f\\u043e\\u0441\\u0443\\u0434\\u044b"},{"MIGX_id":"10","listDistanceService":"\\u041b\\u044e\\u0441\\u0442\\u0440\\u044b"},{"MIGX_id":"11","listDistanceService":"\\u0421\\u0442\\u0438\\u0440\\u043a\\u0430 \\u0438 \\u0433\\u043b\\u0430\\u0436\\u043a\\u0430"},{"MIGX_id":"12","listDistanceService":"\\u0412\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0448\\u043a\\u0430\\u0444\\u043e\\u0432"},{"MIGX_id":"13","listDistanceService":"\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0441\\u0430\\u043d\\u0443\\u0437\\u0435\\u043b"},{"MIGX_id":"14","listDistanceService":"\\u0425\\u0438\\u043c\\u0447\\u0438\\u0441\\u0442\\u043a\\u0430"}]'),
(37, 4, 15, 'Ген уборка коттеджей и домов.jpg'),
(38, 6, 15, 'ico-serv-37.png'),
(39, 13, 1, '<span>Акция!</span> Приведи друга'),
(40, 14, 1, 'link-ico.png'),
(41, 15, 1, 'giv-ico.png'),
(42, 16, 1, 'cleaner-ico.png'),
(43, 17, 1, 'money-ico.png'),
(44, 18, 1, 'Расскажите о нас друзьям'),
(45, 19, 1, 'Друзья оформляют первую уборку со скидкой 500 руб'),
(46, 20, 1, 'Ваша следующая уборка на 500 руб дешевле!'),
(47, 21, 1, 'Скидка 500РУБ! Назовите Имя, номер телефона и адрес предыдущей уборки друга для получения скидки'),
(48, 22, 41, 'lera.png'),
(49, 22, 42, 'win2.png'),
(50, 22, 43, 'lera.png'),
(51, 23, 1, 'Отзывы наших клиентов'),
(52, 24, 1, '[{"MIGX_id":"1","title":"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435","description":"","showBtn":"","image":"gallery5.png","published":1,"published_ro":"{\\"MIGX_id\\":2,\\"name\\":\\"published\\",\\"use_as_fallback\\":\\"\\",\\"value\\":1,\\"clickaction\\":\\"switchOption\\",\\"handler\\":\\"\\",\\"image\\":\\"assets\\\\\\/components\\\\\\/migx\\\\\\/style\\\\\\/images\\\\\\/cb_ticked.png\\",\\"idx\\":1,\\"_renderer\\":\\"this.renderSwitchStatusOptions\\",\\"selectorconfig\\":\\"\\"}","deleted":"0"},{"MIGX_id":"2","image":"Mask Group.png","deleted":"0","published":1,"published_ro":"{\\"MIGX_id\\":2,\\"name\\":\\"published\\",\\"use_as_fallback\\":\\"\\",\\"value\\":1,\\"clickaction\\":\\"switchOption\\",\\"handler\\":\\"\\",\\"image\\":\\"assets\\\\\\/components\\\\\\/migx\\\\\\/style\\\\\\/images\\\\\\/cb_ticked.png\\",\\"idx\\":1,\\"_renderer\\":\\"this.renderSwitchStatusOptions\\",\\"selectorconfig\\":\\"\\"}","title":"\\u0443\\u0443"},{"MIGX_id":"3","image":"plan_small.jpg","deleted":"0","published":"0","published_ro":"{\\"MIGX_id\\":3,\\"name\\":\\"unpublished\\",\\"use_as_fallback\\":\\"\\",\\"value\\":\\"0\\",\\"clickaction\\":\\"switchOption\\",\\"handler\\":\\"\\",\\"image\\":\\"assets\\\\\\/components\\\\\\/migx\\\\\\/style\\\\\\/images\\\\\\/cb_empty.png\\",\\"idx\\":2,\\"_renderer\\":\\"this.renderSwitchStatusOptions\\",\\"selectorconfig\\":\\"\\"}"},{"MIGX_id":"4","image":"\\u041c\\u044b\\u0442\\u044c\\u0451 \\u0441\\u0442\\u0435\\u043d.jpg","deleted":"0","published":"1","published_ro":"{\\"MIGX_id\\":2,\\"name\\":\\"published\\",\\"use_as_fallback\\":\\"\\",\\"value\\":1,\\"clickaction\\":\\"switchOption\\",\\"handler\\":\\"\\",\\"image\\":\\"assets\\\\\\/components\\\\\\/migx\\\\\\/style\\\\\\/images\\\\\\/cb_ticked.png\\",\\"idx\\":1,\\"_renderer\\":\\"this.renderSwitchStatusOptions\\",\\"selectorconfig\\":\\"\\"}"},{"MIGX_id":"5","image":"\\u0421\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u0430\\u044f \\u0443\\u0431\\u043e\\u0440\\u043a\\u0430 \\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u044b.jpg","deleted":"0","published":"1","published_ro":"{\\"MIGX_id\\":2,\\"name\\":\\"published\\",\\"use_as_fallback\\":\\"\\",\\"value\\":1,\\"clickaction\\":\\"switchOption\\",\\"handler\\":\\"\\",\\"image\\":\\"assets\\\\\\/components\\\\\\/migx\\\\\\/style\\\\\\/images\\\\\\/cb_ticked.png\\",\\"idx\\":1,\\"_renderer\\":\\"this.renderSwitchStatusOptions\\",\\"selectorconfig\\":\\"\\"}"}]'),
(53, 25, 1, 'Наши работы'),
(54, 26, 1, 'НАЧНЕМ НОВУЮ<br>ИСТОРИЮ ЧИСТОТЫ?'),
(55, 27, 1, 'Наш сервис —<br>это высшее качество!'),
(56, 28, 1, '[{"MIGX_id":"1","listArrowBannerVar":"\\u0412\\u043e\\u0437\\u043d\\u0438\\u043a\\u043b\\u0438 \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0441 \\u043e\\u0444\\u043e\\u0440\\u043c\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430?"},{"MIGX_id":"2","listArrowBannerVar":"\\u0418\\u043b\\u0438 \\u0443 \\u0412\\u0430\\u0441 \\u043e\\u0441\\u0442\\u0430\\u043b\\u0438\\u0441\\u044c \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b?"},{"MIGX_id":"3","listArrowBannerVar":"\\u0416\\u0435\\u043b\\u0430\\u0435\\u0442\\u0435 \\u043e\\u0444\\u043e\\u0440\\u043c\\u0438\\u0442\\u044c \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0443 \\u0441 \\u043f\\u043e\\u043c\\u043e\\u0449\\u044c\\u044e \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430?"}]'),
(57, 29, 1, '[{"MIGX_id":"1","listMarkBannerVar":"\\u041f\\u0438\\u0448\\u0438\\u0442\\u0435 \\u043d\\u0430\\u043c \\u043d\\u0430 \\u043f\\u043e\\u0447\\u0442\\u0443"},{"MIGX_id":"2","listMarkBannerVar":"\\u041e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0439\\u0442\\u0435 \\u0441\\u0432\\u043e\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440 \\u2013 \\u043c\\u044b \\u043f\\u0435\\u0440\\u0435\\u0437\\u0432\\u043e\\u043d\\u0438\\u043c"},{"MIGX_id":"3","listMarkBannerVar":"\\u0417\\u0432\\u043e\\u043d\\u0438\\u0442\\u0435 \\u043d\\u0430\\u043c \\u0432 \\u043e\\u0444\\u0438\\u0441"},{"MIGX_id":"5","listMarkBannerVar":"\\u041f\\u0438\\u0448\\u0438\\u0442\\u0435 \\u0438 \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u044b\\u0432\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u0432 \\u0441\\u043e\\u0446.\\u0441\\u0435\\u0442\\u044f\\u0445 (\\u0443\\u0437\\u043d\\u0430\\u0435\\u0442\\u0435 \\u043f\\u0435\\u0440\\u0432\\u044b\\u043c\\u0438 \\u043e \\u043d\\u043e\\u0432\\u044b\\u0445 \\u0441\\u043a\\u0438\\u0434\\u043a\\u0430\\u0445, \\u0430\\u043a\\u0446\\u0438\\u044f\\u0445 \\u0438 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f\\u0445)"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_site_tmplvar_templates`
--

CREATE TABLE `chisto_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_site_tmplvar_templates`
--

INSERT INTO `chisto_site_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`) VALUES
(1, 4, 0),
(2, 5, 0),
(3, 1, 0),
(4, 2, 0),
(5, 1, 0),
(6, 2, 0),
(7, 2, 0),
(8, 1, 0),
(9, 1, 0),
(10, 1, 0),
(11, 1, 0),
(12, 1, 0),
(13, 1, 0),
(14, 1, 0),
(15, 1, 0),
(16, 1, 0),
(17, 1, 0),
(18, 1, 0),
(19, 1, 0),
(20, 1, 0),
(21, 1, 0),
(22, 6, 0),
(23, 1, 0),
(24, 1, 0),
(25, 1, 0),
(26, 1, 0),
(27, 1, 0),
(28, 1, 0),
(29, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_system_eventnames`
--

CREATE TABLE `chisto_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_system_eventnames`
--

INSERT INTO `chisto_system_eventnames` (`name`, `service`, `groupname`) VALUES
('ClientConfig_ConfigChange', 6, 'clientconfig'),
('OnBeforeCacheUpdate', 4, 'System'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnBeforeUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnBeforeWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnCacheUpdate', 4, 'System'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategorySave', 1, 'Categories'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkSave', 1, 'Chunks'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextSave', 1, 'Contexts'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnElementNotFound', 1, 'System'),
('OnEmptyTrash', 1, 'Resources'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnInitCulture', 1, 'Internationalization'),
('OnLoadWebDocument', 5, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnManagerPageAfterRender', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMODXInit', 5, 'System'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPageNotFound', 1, 'System'),
('OnPageUnauthorized', 1, 'Security'),
('OnParseDocument', 5, 'System'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginSave', 1, 'Plugins'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnSiteRefresh', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnTempFormDelete', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserActivate', 1, 'Users'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserNotFound', 1, 'Users'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserRemove', 1, 'Users'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnUserSave', 1, 'Users'),
('OnWebAuthentication', 3, 'Security'),
('OnWebLogin', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnWebPageComplete', 5, 'System'),
('OnWebPageInit', 5, 'System'),
('OnWebPagePrerender', 5, 'System'),
('pdoToolsOnFenomInit', 6, 'pdoTools');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_system_settings`
--

CREATE TABLE `chisto_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_system_settings`
--

INSERT INTO `chisto_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('ace.fold_widgets', '1', 'combo-boolean', 'ace', 'general', NULL),
('ace.font_size', '13px', 'textfield', 'ace', 'general', NULL),
('ace.height', '', 'textfield', 'ace', 'general', NULL),
('ace.show_invisibles', '0', 'combo-boolean', 'ace', 'general', NULL),
('ace.snippets', '', 'textarea', 'ace', 'general', NULL),
('ace.soft_tabs', '1', 'combo-boolean', 'ace', 'general', NULL),
('ace.tab_size', '4', 'textfield', 'ace', 'general', NULL),
('ace.theme', 'monokai', 'textfield', 'ace', 'general', '2018-07-19 19:38:15'),
('ace.word_wrap', '', 'combo-boolean', 'ace', 'general', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('allow_tv_eval', '1', 'combo-boolean', 'core', 'system', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('base_help_url', '//docs.modx.com/display/revolution20/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', NULL),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_disabled', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_format', '0', 'textfield', 'core', 'caching', NULL),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_system_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', NULL),
('clientconfig.admin_groups', 'Administrator', 'textfield', 'clientconfig', 'Default', NULL),
('clientconfig.clear_cache', '1', 'combo-boolean', 'clientconfig', 'Default', NULL),
('clientconfig.context_aware', '', 'combo-boolean', 'clientconfig', 'Default', NULL),
('clientconfig.google_fonts_api_key', '', 'textfield', 'clientconfig', 'Default', NULL),
('clientconfig.vertical_tabs', '', 'combo-boolean', 'clientconfig', 'Default', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '/', 'textfield', 'core', 'furls', NULL),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'ru', 'modx-combo-language', 'core', 'language', '2018-07-19 19:21:04'),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'textfield', 'core', 'system', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '2', 'modx-combo-source', 'core', 'manager', '2018-07-19 19:50:56'),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('editor_css_path', '', 'textfield', 'core', 'editor', NULL),
('editor_css_selectors', '', 'textfield', 'core', 'editor', NULL),
('emailsender', 'ewal@list.ru', 'textfield', 'core', 'authentication', '2018-07-19 19:21:04'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', NULL),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('enable_gravatar', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_page', '2', 'textfield', 'core', 'site', '2018-07-19 19:32:43'),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', NULL),
('feed_modx_news', 'http://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'http://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', NULL),
('filemanager_path', '', 'textfield', 'core', 'file', NULL),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('filemanager_url', '', 'textfield', 'core', 'file', NULL),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '1', 'combo-boolean', 'core', 'furls', '2018-07-19 19:29:25'),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'russian', 'textfield', 'core', 'furls', '2018-07-19 19:29:44'),
('friendly_alias_translit_class', 'modx.translit.modTransliterate', 'textfield', 'core', 'furls', '2018-07-19 19:28:15'),
('friendly_alias_translit_class_path', '{core_path}components/translit/model/', 'textfield', 'core', 'furls', '2018-07-19 19:28:15'),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '1', 'combo-boolean', 'core', 'furls', '2018-07-19 19:29:55'),
('friendly_urls_strict', '1', 'combo-boolean', 'core', 'furls', '2018-07-19 19:30:00'),
('global_duplicate_uri_check', '1', 'combo-boolean', 'core', 'furls', '2018-07-19 19:30:05'),
('hidemenu_default', '1', 'combo-boolean', 'core', 'site', '2018-07-19 19:32:48'),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('lock_ttl', '360', 'textfield', 'core', 'system', NULL),
('log_level', '1', 'textfield', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', NULL),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_favicon_url', '', 'textfield', 'core', 'manager', NULL),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', NULL),
('manager_js_document_root', '', 'textfield', 'core', 'manager', NULL),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', NULL),
('manager_language', 'ru', 'modx-combo-language', 'core', 'language', '2018-07-19 19:21:04'),
('manager_lang_attribute', 'ru', 'textfield', 'core', 'language', '2018-07-19 19:21:04'),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('manager_week_start', '0', 'textfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('parser_class', 'pdoParser', 'textfield', 'pdotools', 'pdotools_main', NULL),
('parser_class_path', '{core_path}components/pdotools/model/pdotools/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('password_generated_length', '8', 'textfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'textfield', 'core', 'authentication', NULL),
('pdoFetch.class', 'pdotools.pdofetch', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdofetch_class_path', '{core_path}components/pdotools/model/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdoTools.class', 'pdotools.pdotools', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_class_path', '{core_path}components/pdotools/model/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_elements_path', '{core_path}elements/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_cache', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_default', '1', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_modx', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_options', '', 'textarea', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_parser', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_php', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_save_on_errors', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('phpthumbon.cache_dir', 'cache_image', 'textfield', 'phpthumbon', 'path', NULL),
('phpthumbon.error_mode', '1', 'numberfield', 'phpthumbon', 'general', NULL),
('phpthumbon.ext', 'jpeg', 'textfield', 'phpthumbon', 'general', NULL),
('phpthumbon.images_dir', 'images', 'textfield', 'phpthumbon', 'paths', NULL),
('phpthumbon.make_cachename', '', 'textfield', 'phpthumbon', 'general', NULL),
('phpthumbon.noimage', '{assets_path}components/phpthumbon/noimage.jpg', 'textfield', 'phpthumbon', 'path', NULL),
('phpthumbon.noimage_cache', '{assets_path}components/phpthumbon/cache/', 'textfield', 'phpthumbon', 'path', NULL),
('phpthumbon.quality', '96', 'numberfield', 'phpthumbon', 'general', NULL),
('phpthumbon.queue', '0', 'numberfield', 'phpthumbon', 'general', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('preserve_menuindex', '1', 'combo-boolean', 'core', 'manager', NULL),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'textfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('publish_default', '1', 'combo-boolean', 'core', 'site', '2018-07-19 19:32:55'),
('rb_base_dir', '', 'textfield', 'core', 'file', NULL),
('rb_base_url', '', 'textfield', 'core', 'file', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('send_poweredby_header', '0', 'combo-boolean', 'core', 'system', NULL),
('server_offset_time', '0', 'textfield', 'core', 'system', NULL),
('server_protocol', 'http', 'textfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('settings_version', '2.6.5-pl', 'textfield', 'core', 'system', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('site_name', 'Сервис чистоты', 'textfield', 'core', 'site', '2018-07-19 19:33:15'),
('site_start', '1', 'textfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '4', 'textfield', 'core', 'site', '2018-07-19 19:33:46'),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('tiny.base_url', '', 'textfield', 'tinymce', 'general', NULL),
('tiny.convert_fonts_to_spans', '1', 'combo-boolean', 'tinymce', 'cleanup-output', NULL),
('tiny.convert_newlines_to_brs', '', 'combo-boolean', 'tinymce', 'cleanup-output', NULL),
('tiny.css_selectors', '', 'textfield', 'tinymce', 'advanced-theme', NULL),
('tiny.custom_buttons1', 'undo,redo,selectall,separator,pastetext,pasteword,separator,search,replace,separator,nonbreaking,hr,charmap,separator,image,modxlink,unlink,anchor,media,separator,cleanup,removeformat,separator,fullscreen,print,code,help', 'textfield', 'tinymce', 'custom-buttons', NULL),
('tiny.custom_buttons2', 'bold,italic,underline,strikethrough,sub,sup,separator,bullist,numlist,outdent,indent,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,separator,styleprops', 'textfield', 'tinymce', 'custom-buttons', NULL),
('tiny.custom_buttons3', '', 'textfield', 'tinymce', 'custom-buttons', NULL),
('tiny.custom_buttons4', '', 'textfield', 'tinymce', 'custom-buttons', NULL),
('tiny.custom_buttons5', '', 'textfield', 'tinymce', 'custom-buttons', NULL),
('tiny.custom_plugins', 'style,advimage,advlink,modxlink,searchreplace,print,contextmenu,paste,fullscreen,noneditable,nonbreaking,xhtmlxtras,visualchars,media', 'textfield', 'tinymce', 'general', NULL),
('tiny.editor_theme', 'advanced', 'textfield', 'tinymce', 'general', NULL),
('tiny.element_format', 'xhtml', 'textfield', 'tinymce', 'cleanup-output', NULL),
('tiny.entity_encoding', 'named', 'textfield', 'tinymce', 'cleanup-output', NULL),
('tiny.fix_nesting', '', 'combo-boolean', 'tinymce', 'cleanup-output', NULL),
('tiny.fix_table_elements', '', 'combo-boolean', 'tinymce', 'cleanup-output', NULL),
('tiny.font_size_classes', '', 'textfield', 'tinymce', 'cleanup-output', NULL),
('tiny.font_size_style_values', 'xx-small,x-small,small,medium,large,x-large,xx-large', 'textfield', 'tinymce', 'cleanup-output', NULL),
('tiny.forced_root_block', 'p', 'textfield', 'tinymce', 'cleanup-output', NULL),
('tiny.indentation', '30px', 'textfield', 'tinymce', 'cleanup-output', NULL),
('tiny.invalid_elements', '', 'textfield', 'tinymce', 'cleanup-output', NULL),
('tiny.nowrap', '', 'combo-boolean', 'tinymce', 'general', NULL),
('tiny.object_resizing', '1', 'combo-boolean', 'tinymce', 'general', NULL),
('tiny.path_options', '', 'textfield', 'tinymce', 'general', NULL),
('tiny.removeformat_selector', 'b,strong,em,i,span,ins', 'textfield', 'tinymce', 'cleanup-output', NULL),
('tiny.remove_linebreaks', '', 'combo-boolean', 'tinymce', 'cleanup-output', NULL),
('tiny.remove_redundant_brs', '1', 'combo-boolean', 'tinymce', 'cleanup-output', NULL),
('tiny.skin', 'cirkuit', 'textfield', 'tinymce', 'general', NULL),
('tiny.skin_variant', '', 'textfield', 'tinymce', 'general', NULL),
('tiny.table_inline_editing', '', 'combo-boolean', 'tinymce', 'general', NULL),
('tiny.template_list', '', 'textarea', 'tinymce', 'general', NULL),
('tiny.template_list_snippet', '', 'textarea', 'tinymce', 'general', NULL),
('tiny.template_selected_content_classes', '', 'textfield', 'tinymce', 'general', NULL),
('tiny.theme_advanced_blockformats', 'p,h1,h2,h3,h4,h5,h6,div,blockquote,code,pre,address', 'textfield', 'tinymce', 'advanced-theme', NULL),
('tiny.theme_advanced_font_sizes', '80%,90%,100%,120%,140%,160%,180%,220%,260%,320%,400%,500%,700%', 'textfield', 'tinymce', 'advanced-theme', NULL),
('tiny.use_uncompressed_library', '', 'combo-boolean', 'tinymce', 'general', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', NULL),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', NULL),
('unauthorized_page', '3', 'textfield', 'core', 'site', '2018-07-19 19:33:39'),
('upload_files', 'txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,odt,ods,odp,odb,odg,odf,md,ttf,woff,eot,scss,less,css.map', 'textfield', 'core', 'file', NULL),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', NULL),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz', 'textfield', 'core', 'file', NULL),
('upload_maxsize', '62914560', 'textfield', 'core', 'file', '2018-07-19 19:21:04'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('use_alias_path', '1', 'combo-boolean', 'core', 'furls', '2018-07-19 19:30:11'),
('use_browser', '1', 'combo-boolean', 'core', 'file', NULL),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_frozen_parent_uris', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2018-07-19 19:21:04'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2018-07-19 19:21:10'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.26.html ', 'textfield', 'core', 'manager', NULL),
('which_editor', 'TinyMCE', 'modx-combo-rte', 'core', 'editor', '2018-07-19 19:28:06'),
('which_element_editor', 'Ace', 'modx-combo-rte', 'core', 'editor', '2018-07-19 19:27:13'),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_thumb_images`
--

CREATE TABLE `chisto_thumb_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cache_image` varchar(255) DEFAULT NULL,
  `config` mediumtext,
  `isend` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_transport_packages`
--

CREATE TABLE `chisto_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `workspace` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(191) NOT NULL,
  `metadata` text,
  `version_major` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_minor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_patch` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_transport_packages`
--

INSERT INTO `chisto_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('ace-1.6.5-pl', '2018-07-19 19:25:44', '2018-07-19 19:27:13', '2018-07-19 19:27:13', 0, 1, 1, 0, 'ace-1.6.5-pl.transport.zip', NULL, 'a:8:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:271:"--------------------\nExtra: Ace\n--------------------\nSince: March 29th, 2012\nAuthor: Danil Kostin <danya.postfactum@gmail.com>\nLicense: GNU GPLv2 (or later at your option)\n\nIntegrates Ace Code Editor into MODx Revolution.\n\nPress Ctrl+Alt+H to see all available shortcuts.";s:9:"changelog";s:3767:"Changelog for Ace integration into MODx Revolution.\n\nAce 1.6.5\n====================================\n- Added: "Twig" syntax for support of Twig in chunks.\n- Changed: Plugin is not static anymore.\n\nAce 1.6.4\n====================================\n- Fixed: Support of emmet in smarty mode. Again.\n\nAce 1.6.3\n====================================\n- Fixed: Support of emmet in smarty mode.\n\nAce 1.6.2\n====================================\n- Fixed: Editor mode handling.\n- Added: "Markdown" syntax for mime type "text/x-markdown".\n\nAce 1.6.1\n====================================\n- Fixed : Work with enabled system setting "compress_js".\n\nAce 1.6.0\n====================================\n- Added: "Smarty" syntax for support of Fenom in chunks.\n- Updated: Ace to version 1.2.0.\n\nAce 1.5.1\n====================================\n- Fixed: Bug with narrowing of the textarea.\n\nAce 1.5.0\n====================================\n- Changed: Assets are moved back to /assets/\n- Fixed: MODx tag completions (was completely broken)\n- Added: Editor height setting\n\nAce 1.4.3\n====================================\n- Added: MODx tag completions (Ctrl+Space)\n- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag\'n\'drop bug\n\nAce 1.4.2\n====================================\n- Added: Undo coalescing\n- Changed: Mac fullscreen command is bound to Command+F12\n- Added: Drag delay (allow to start new selection inside current one) for Mac\n- Fixed: Use file extension of static chunks to detect code syntax\n\n\nAce 1.4.1\n====================================\n- Fixed: Tab handling\n- Fixed: Emmet shortcut listing by Ctr+Alt+H\n- Added: Expandable snippets support (see ace.snippets setting)\n- Added: Emmet wrap_with_abbreviation command (Alt+W)\n\nAce 1.4.0\n====================================\n- Added: Emmet (aka Zen Coding) support\n- Added: Terminal dark theme\n- Added: Hotkey table (Ctrl+Alt+H)\n- Fixed: Resource overview fatal error\n- Changed: Assets are moved to /manager/assets/components/\n\nAce 1.3.3\n====================================\n- Added: PHP live syntax check\n- Added: Chaos dark theme\n- Added: Setting show_invisibles\n\n\nAce 1.3.2\n====================================\n- Fixed: The bug while installing the Ace\n- Fixed: Broken word_wrap setting\n- Added: Tab settings (tab size, soft tab)\n- Added: Now completele compatible with AjaxManager extra\n\n\nAce 1.3.1\n====================================\n- Changed: Plugin content now is stored in static file\n\n\nAce 1.3.0\n====================================\n- Added: German translation\n- Added: MODx tags highlighting\n- Added: Ambiance and xcode themes\n- Added: less/scss syntax highlighting\n- Added: Fullwindow mode (Ctrl + F11)\n- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.\n\n\nAce 1.2.1\n====================================\n- Changed: Assets are moved to manager folder\n- Added: Font size setting\n- Added: "GitHub" theme\n- Added: Support of html5 drag\'n\'drop (accepting of dropped text)\n- Added: XML / HTML tag autoclosing\n- Fixed: broken en lexicon and php 5.3 incompatibility\n\n\nAce 1.2.0\n====================================\n- Removed: Some unnecessary options\n- Changed: Editor options are moved to system settings\n- Fixed: Multiple little editor bugs\n- Added: Add missing "OnFileEditFormPrerender" event to MODx\n- Added: Multiline editing\n- Added: Advanced find/replace window\n\n\nAce 1.1.0\n====================================\n- Fixed: Fatal error on document create event\n- Fixed: Changing of properties has no effect\n- Added: File edition support\n- Added: MODx tree elements drag\'n\'drop support\n- Added: Auto-assigning which_element_editor to Ace\n\n\nAce 1.0.0\n====================================\n- Added: Plugin properties to adjust how Ace behaves\n- Initial commit";s:9:"signature";s:12:"ace-1.6.5-pl";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:40:"/workspace/package/install/ace-1.6.5-pl/";s:14:"package_action";i:0;}', 'Ace', 'a:38:{s:2:"id";s:24:"568f9f06dc532f593e002c59";s:7:"package";s:24:"4f6e2782f245544fe8000014";s:12:"display_name";s:12:"ace-1.6.5-pl";s:4:"name";s:3:"Ace";s:7:"version";s:5:"1.6.5";s:13:"version_major";s:1:"1";s:13:"version_minor";s:1:"6";s:13:"version_patch";s:1:"5";s:7:"release";s:2:"pl";s:8:"vrelease";s:2:"pl";s:14:"vrelease_index";s:0:"";s:6:"author";s:9:"bezumkin2";s:11:"description";s:376:"<p>New feature: modx tag code autocompletion! Press Ctrl+Space to get code suggestions with descriptions.</p><p>Works for snippets, chunks, system settings, tvs and resource fields, filters and properties.</p><p>Property sets, lexicon entries are not supported. Unfortunately, I have no idea how to retrieve chunk-specific placeholders, so there is no placeholder support.</p>";s:12:"instructions";s:353:"<p></p><p>Install via Package Management.</p><p>Set editor theme you wish in system settings (change namespace to "ace").</p><p>If you want to use this editor for resources, just set system option <i>use_editor</i> to <b>false</b>&nbsp;(global usage), or&nbsp;<i>richtext</i>&nbsp;setting of certain resource to <b>false</b> (specific usage).</p><p></p>";s:9:"changelog";s:4462:"<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>Ace 1.6.5</p><p>====================================</p><p>- Added: "Twig" syntax for support of Twig in chunks.</p><p>- Changed: Plugin is not static anymore.</p><p>Ace 1.6.4</p><p>====================================</p><p>- Fixed: Support of emmet in smarty mode. Again.</p><p>Ace 1.6.3</p><p>====================================</p><p>- Fixed: Support of emmet in smarty mode.</p><p></p><p>Ace 1.6.2</p><p>====================================</p><p>- Fixed: Editor mode handling.</p><p>- Added: "Markdown" syntax for mime type "text/x-markdown".</p><p></p><p>Ace 1.6.1</p><p>====================================</p><p>- Fixed : Work with enabled system setting "compress_js".</p><p></p><p>Ace 1.6.0</p><p>====================================</p><p>- Added: "Smarty" syntax for support of Fenom in chunks.</p><p>- Updated: Ace to version 1.2.0.</p><p></p><p>Ace 1.5.1</p><p>====================================</p><p>- Fixed: Bug with narrowing of the textarea.</p><p>Ace 1.5.0</p><p>====================================</p><p>- Changed: Assets are moved back to /assets/</p><p>- Fixed: MODx tag completions (was completely broken)</p><p>- Added: Editor height setting</p><p>Ace 1.4.3</p><p>====================================</p><p>- Added: MODx tag completions (Ctrl+Space)</p><p>- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag\'n\'drop bug</p><p>Ace 1.4.2</p><p>====================================</p><p>- Added: Undo coalescing</p><p>- Changed: Mac fullscreen command is bound to Command+F12</p><p>- Added: Drag delay (allow to start new selection inside current one) for Mac</p><p>- Fixed: Use file extension of static chunks to detect code syntax</p><p>Ace 1.4.1</p><p>====================================</p><p>- Fixed: Tab handling</p><p>- Fixed: Emmet shortcut listing by Ctr+Alt+H</p><p>- Added: Expandable snippets support (see ace.snippets setting)</p><p>- Added: Emmet wrap_with_abbreviation command (Alt+W)</p><p></p><p>Ace 1.4.0</p><p>====================================</p><p>- Added: Emmet (aka Zen Coding) support</p><p>- Added: Terminal dark theme</p><p>- Added: Hotkey table (Ctrl+Alt+H)</p><p>- Fixed: Resource overview fatal error</p><p>- Changed: Assets are moved to /manager/assets/components/</p><p></p><p>Ace 1.3.3</p><p>====================================</p><p>- Added: PHP live syntax check</p><p>- Added: Chaos dark theme</p><p>- Added: Setting show_invisibles</p><p></p><p>Ace 1.3.2</p><p>====================================</p><p>- Fixed: The bug while installing the Ace</p><p>- Fixed: Broken word_wrap setting</p><p>- Added: Tab settings (tab size, soft tab)</p><p>- Added: Now completele compatible with AjaxManager extra</p><p>Ace 1.3.1</p><p>====================================</p><p>- Changed: Plugin content now is stored in static file</p><p></p><p>Ace 1.3.0</p><p>====================================</p><p>- Added: German translation</p><p>- Added: MODx tags highlighting</p><p>- Added: Ambiance and xcode themes</p><p>- Added: less/scss syntax highlighting</p><p>- Added: Fullwindow mode (Ctrl + F11)</p><p>- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.</p><p></p><p>Ace 1.2.1</p><p>====================================</p><p>- Changed: Assets are moved to manager folder</p><p>- Added: Font size setting</p><p>- Added: "GitHub" theme</p><p>- Added: Support of html5 drag\'n\'drop (accepting of dropped text)</p><p>- Added: XML / HTML tag autoclosing</p><p>- Fixed: broken en lexicon and php 5.3 incompatibility</p><p></p><p>Ace 1.2.0</p><p>====================================</p><p>- Removed: Some unnecessary options</p><p>- Changed: Editor options are moved to system settings</p><p>- Fixed: Multiple little editor bugs</p><p>- Added: Add missing "OnFileEditFormPrerender" event to MODx</p><p>- Added: Multiline editing</p><p>- Added: Advanced find/replace window</p><p></p><p></p><p>Ace 1.1.0</p><p>====================================</p><p>- Fixed: Fatal error on document create event</p><p>- Fixed: Changing of properties has no effect</p><p>- Added: File edition support</p><p>- Added: MODx tree elements drag\'n\'drop support</p><p>- Added: Auto-assigning which_element_editor to Ace</p><p></p><p></p><p>Ace 1.0.0</p><p>====================================</p><p>- Added: Plugin properties to adjust how Ace behaves</p><p>- Initial commit</p><p></p><p></p>";s:9:"createdon";s:24:"2016-01-08T11:35:34+0000";s:9:"createdby";s:9:"bezumkin2";s:8:"editedon";s:24:"2018-07-19T19:24:45+0000";s:10:"releasedon";s:24:"2016-01-08T11:35:34+0000";s:9:"downloads";s:6:"203553";s:8:"approved";s:4:"true";s:7:"audited";s:5:"false";s:8:"featured";s:5:"false";s:10:"deprecated";s:5:"false";s:7:"license";s:5:"GPLv2";s:7:"smf_url";s:0:"";s:10:"repository";s:24:"4d4c3fa6b2b0830da9000001";s:8:"supports";s:3:"2.2";s:8:"location";s:60:"http://modx.com/extras/download/?id=568f9f07dc532f593e002c5b";s:9:"signature";s:12:"ace-1.6.5-pl";s:11:"supports_db";s:12:"mysql,sqlsrv";s:16:"minimum_supports";s:3:"2.2";s:9:"breaks_at";s:8:"10000000";s:10:"screenshot";s:68:"http://modx.s3.amazonaws.com/extras/4f6e2782f245544fe8000014/ace.png";s:4:"file";a:7:{s:2:"id";s:24:"568f9f07dc532f593e002c5b";s:7:"version";s:24:"568f9f06dc532f593e002c59";s:8:"filename";s:26:"ace-1.6.5-pl.transport.zip";s:9:"downloads";s:6:"106189";s:6:"lastip";s:12:"37.57.163.10";s:9:"transport";s:4:"true";s:8:"location";s:60:"http://modx.com/extras/download/?id=568f9f07dc532f593e002c5b";}s:17:"package-signature";s:12:"ace-1.6.5-pl";s:10:"categories";s:15:"richtexteditors";s:4:"tags";s:0:"";}', 1, 6, 5, 'pl', 0),
('backupmodx-1.0.5-beta', '2018-07-19 19:26:38', '2018-07-19 19:27:28', '2018-07-19 19:27:28', 0, 1, 1, 0, 'backupmodx-1.0.5-beta.transport.zip', NULL, 'a:9:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:285:"\nbackupmodx\n\n\nAuthor: Quadro - Jan Dähne info@quadro-system.de\nCopyright 2015\n\nOfficial Documentation: http://www.quadro-system.de/modx-extras/backupmodx.html\n\nBugs and Feature Requests: https://github.com:jdaehne/BackupMODX\n\nQuestions: http://forums.modx.com\n\nCreated by MyComponent\n";s:9:"changelog";s:1193:"Changelog for backupmodx\n\nbackupmodx 1.0.5\n---------------------------------\n+ Bugfix: abbility to change tar-alias for different hosting-provider\n+ Bugfix: keeps cache-folder included - only excludes all files inside the cache-folder to achieve a smaller tar-archive\n+ Adding an optional readme file\n+ Define additional files and folders to exclude in the backup\n+ Define a directory to place the backup (inside or outside the webroot)\n\n\nbackupmodx 1.0.4\n---------------------------------\n+ Bugfix: placing the sql-file in the root of combined tar-archive\n+ Bugfix: excluding cache-folder to achieve smaller files\n\n\nbackupmodx 1.0.3\n---------------------------------\n+ placing the sql-file in the root of combined tar-archive\n+ checking if shell-commands working\n+ excluding cache-folder to achieve smaller files\n+ adding abbility to change tar-alias for different hosting-provider\n\n\nbackupmodx 1.0.2\n---------------------------------\n+ Ability to define groups that can see the widget. Default is only: Administartor\n\n\nbackupmodx 1.0.1\n---------------------------------\n+ Includes "core-folder" placed outside the webroot.\n\n\nbackupmodx 1.0.0\n---------------------------------\nInitial Version";s:13:"setup-options";a:0:{}s:9:"signature";s:21:"backupmodx-1.0.5-beta";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:49:"/workspace/package/install/backupmodx-1.0.5-beta/";s:14:"package_action";i:0;}', 'BackupMODX', 'a:38:{s:2:"id";s:24:"56c44370dc532f593e096d79";s:7:"package";s:24:"568a8995dc532f033500d60c";s:12:"display_name";s:21:"backupmodx-1.0.5-beta";s:4:"name";s:10:"BackupMODX";s:7:"version";s:5:"1.0.5";s:13:"version_major";s:1:"1";s:13:"version_minor";s:1:"0";s:13:"version_patch";s:1:"5";s:7:"release";s:4:"beta";s:8:"vrelease";s:4:"beta";s:14:"vrelease_index";s:0:"";s:6:"author";s:6:"quadro";s:11:"description";s:1249:"<p>The Backup MODX extra is a tiny dashboard widget. Just place the widget into your dashboard and click the "Backup" button whenever you need a quick backup of your site. For example before upgrading your site. You can select either to backup your database, files or both. After the backup is finished you can download the files separately or combined as a tar-archive. Just click the "Remove Backups" button after your download is finished and the script will delete the backup folder. Ready for upgrade or anything else. Always delete your backups or place/store them outside your web-root!</p><p></p><p>The extra will backup all files and folders inside the base-path and will also include the core-folder if placed outside the web-root.</p><p></p><p>The widget is tested on different hosting environments and it works for my needs. If you have any problems/errors while using this extra - please let me know. If you also know how to enhance the extra/code - please feel free to contribute on the GitHub Repository.</p><p>Documentation:&nbsp;<a href="http://www.quadro-system.de/modx-extras/backupmodx.html" title="http://www.quadro-system.de/modx-extras/backupmodx.html" target="">http://www.quadro-system.de/modx-extras/backupmodx.html</a></p>";s:12:"instructions";s:7:"<p></p>";s:9:"changelog";s:1422:"<p>Changelog for backupmodx</p><p></p><p>backupmodx 1.0.5</p><p>---------------------------------</p><p>+ Bugfix: abbility to change tar-alias for different hosting-provider</p><p>+ Bugfix: keeps cache-folder included - only excludes all files inside the cache-folder to achieve a smaller tar-archive</p><p>+ Adding an optional readme file</p><p>+ Define additional files and folders to exclude in the backup</p><p>+ Define a directory to place the backup (inside or outside the webroot)</p><p></p><p></p><p>backupmodx 1.0.4</p><p>---------------------------------</p><p>+ Bugfix: placing the sql-file in the root of combined tar-archive</p><p>+ Bugfix: excluding cache-folder to achieve smaller files</p><p></p><p></p><p>backupmodx 1.0.3</p><p>---------------------------------</p><p>+ placing the sql-file in the root of combined tar-archive</p><p>+ checking if shell-commands working</p><p>+ excluding cache-folder to achieve smaller files</p><p>+ adding abbility to change tar-alias for different hosting-provider</p><p></p><p></p><p>backupmodx 1.0.2</p><p>---------------------------------</p><p>+ Ability to define groups that can see the widget. Default is only: Administartor</p><p></p><p></p><p>backupmodx 1.0.1</p><p>---------------------------------</p><p>+ Includes "core-folder" placed outside the webroot.</p><p></p><p></p><p>backupmodx 1.0.0</p><p>---------------------------------</p><p>Initial Version</p>";s:9:"createdon";s:24:"2016-02-17T09:54:56+0000";s:9:"createdby";s:6:"quadro";s:8:"editedon";s:24:"2018-07-19T19:07:02+0000";s:10:"releasedon";s:24:"2016-02-17T09:54:56+0000";s:9:"downloads";s:4:"7063";s:8:"approved";s:4:"true";s:7:"audited";s:5:"false";s:8:"featured";s:5:"false";s:10:"deprecated";s:5:"false";s:7:"license";s:5:"GPLv2";s:7:"smf_url";s:0:"";s:10:"repository";s:24:"4d4c3fa6b2b0830da9000001";s:8:"supports";s:3:"2.3";s:8:"location";s:60:"http://modx.com/extras/download/?id=56c44371dc532f593e096d7b";s:9:"signature";s:21:"backupmodx-1.0.5-beta";s:11:"supports_db";s:5:"mysql";s:16:"minimum_supports";s:3:"2.3";s:9:"breaks_at";s:8:"10000000";s:10:"screenshot";s:78:"http://modx.s3.amazonaws.com/extras/568a8995dc532f033500d60c/backupMODX-01.jpg";s:4:"file";a:7:{s:2:"id";s:24:"56c44371dc532f593e096d7b";s:7:"version";s:24:"56c44370dc532f593e096d79";s:8:"filename";s:35:"backupmodx-1.0.5-beta.transport.zip";s:9:"downloads";s:4:"6317";s:6:"lastip";s:13:"80.87.195.137";s:9:"transport";s:4:"true";s:8:"location";s:60:"http://modx.com/extras/download/?id=56c44371dc532f593e096d7b";}s:17:"package-signature";s:21:"backupmodx-1.0.5-beta";s:10:"categories";s:29:"administration,administration";s:4:"tags";s:0:"";}', 1, 0, 5, 'beta', 0);
INSERT INTO `chisto_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('clientconfig-2.0.0-pl', '2018-07-21 11:38:31', '2018-07-21 11:38:45', '2018-07-21 11:38:45', 0, 1, 1, 0, 'clientconfig-2.0.0-pl.transport.zip', NULL, 'a:10:{s:7:"license";s:1109:"The MIT License (MIT)\n\nCopyright (c) 2016 Mark Hamstra Web Development <hello@markhamstra.com>\n\nPermission is hereby granted, free of charge, to any person obtaining a copy\nof this software and associated documentation files (the "Software"), to deal\nin the Software without restriction, including without limitation the rights\nto use, copy, modify, merge, publish, distribute, sublicense, and/or sell\ncopies of the Software, and to permit persons to whom the Software is\nfurnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all\ncopies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\nIMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\nFITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\nAUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\nLIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\nOUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\n";s:6:"readme";s:853:"-------------------------\nClientConfig\n-------------------------\nAuthor: Mark Hamstra\nContact: mark@modmore.com\n-------------------------\n\nClientConfig is the by product of a workshop at MODXpo Europe 2012,\nthe "Developing Extras in MODX" one. See the session page at modxpo.eu\nhttp://modxpo.eu/schedule/sessions/developing-extras-for-modx-hands-on\nfor more information and footage of the workshop.\n\nClientConfig gives your client a user-friendly interface for making site\nwide changes, while you as the administrator set up the different options\navailable to the end-user.\n\nPossible uses include:\n- Regularly update a slogan or tag-line in header or footer\n- Change call-to-action button colors based on the season\n- Keep contact details updated in one central location\n- Update the email-address a form sends notifications to.\n\nLicensed under the MIT.";s:9:"changelog";s:5116:"++ ClientConfig 2.0.0-pl\n++ Released on 2018-06-26\n+++++++++++++++++++++++++\n- Don\'t add _duplicate to the key when duplicating a setting [#142]\n- Updated German [#141], Russian [#145] and Dutch translations\n\n++ ClientConfig 2.0.0-rc1\n++ Released on 2017-10-04\n+++++++++++++++++++++++++\n- ClientConfig can now (optionally) manage settings for different contexts [#4/#112]\n- Media fields (image/file) now prefix the media source url [#124]\n- Allow snippet/chunk tags in options for the dropdown field [#104]\n- Updated minimum requirements to PHP 5.5.0 and MODX 2.5.2.\n- Added separate clientconfig.categories lexicon for the vertical tabs interface [#91]\n\n++ ClientConfig 1.4.2-pl\n++ Released on 2017-07-22\n+++++++++++++++++++++++++\n- Restore PHP 5.3 compatibility in creating settings. Note: next release will require 5.5+!\n- Fix issue saving settings on certain environments due to missing value for source [#129]\n- Fix incorrect header/container alignment in both manager pages [#128]\n- Fix (unused) namespace assets path (on new installs) [#126]\n\n++ ClientConfig 1.4.1-pl\n++ Released on 2017-02-02\n+++++++++++++++++++++++++\n- Fix bug where the new source dropdown does not appear for image field types\n\n++ ClientConfig 1.4.0-pl\n++ Released on 2017-01-31\n+++++++++++++++++++++++++\n- Fix loading of TinyMCE RTE, causing it to be initialised without configuration [#122]\n- Add ClientConfig_ConfigChange event to be able of hooking into configuration changes [#117]\n- Change plugin event from OnHandleRequest to OnMODXInit [#87, #109, #115]\n- Enable inline editing in the admin component [#94, #95, #114]\n- Fix field-required errors not being shown by adding a popup\n- Accept 0 as valid required value on the number input [#119]\n- Add a Password input type [#105]\n- Add a File input type [#36]\n- Don\'t show "Error adding field" errors during installation/upgrade [#92]\n- Fix loading RTE if the field key contains a dot [#89]\n- Add CMD/CTRL + S shortcut for saving the configuration [#80]\n- Preserve linebreaks when editing a setting in the admin section by using a textarea for the value [#69]\n- Relicense under the MIT license instead of GPL [#67]\n- Allow specifying a media source for the image input type [#66]\n\n++ ClientConfig 1.3.2-pl\n++ Released on 2015-12-09\n+++++++++++++++++++++++++\n- Update French translation\n- Make sure image field uses the MODX default media source\n- Respect manager_date_format and manager_time_format settings\n\n++ ClientConfig 1.3.1-pl\n++ Released on 2014-07-20\n+++++++++++++++++++++++++\n- Update Dutch translation\n- More weird border fixes\n- Minor fix to when borders are added, specifically for 2.2.\n\n++ ClientConfig 1.3.0-pl\n++ Released on 2014-07-19\n+++++++++++++++++++++++++\n- #27 Ability to import/export groups and settings\n- #16 Auto-select first group when adding a setting\n- #15 Force admins to create a group before creating a setting, as settings need groups\n- #76 Fix issue where unchecking a checkbox would fail if the setting was required\n- #78 Make the is_required column show Yes/No instead of true/false\n- #60 Get rid of an extra border\n- #75 Update help link to point to modmore.com\n\n++ ClientConfig 1.2.1-pl\n++ Released on 2014-01-07\n+++++++++++++++++++++++++\n- #57 Add Google Font input type (Thanks @garryn)\n- #63 Fix issue loading more than one rich text field\n\n++ ClientConfig 1.2.0-pl\n++ Released on 2013-08-16\n+++++++++++++++++++++++++\n- #38 Add setting (vertical_tabs) to allow stacking groups vertically instead of horizontal tabs\n- #46 Add ability to duplicate a setting\n- #45 Show field options field when editing a select box setting.\n- #54 Add Rich Text input type.\n- Improved width consistency of input items.\n- #37 Added input type Image (thanks COEX!)\n- #3 Fix/add colorpicker input type (thanks COEX!)\n\n++ ClientConfig 1.1.2-pl\n++ Released on 2013-03-07\n+++++++++++++++++++++++++\n- Add/update translations: Russian (thx @Alroniks!), German (thx @enigmatic-user!), Swedish (thx @fractalwolfe!) and Dutch.\n- #47 Show field descriptions under the fields. (Thanks @fractalwolfe!)\n- #40 Add placeholder tooltips with the [[++key]] for admins. (Thanks @fractalwolfe!)\n\n++ ClientConfig 1.1.1-pl\n++ Released on 2012-12-31\n+++++++++++++++++++++++++\n- #35 Don\'t strip out tags when saving values (relies on allow_tags_in_post=true in mgr context).\n- #39 Increase database field max sizes for longer descriptions and values.\n- #33 Make sure to show message when no tabs are to be shown.\n- #34 Prevent E_WARNING when there are no settings configured.\n\n++ ClientConfig 1.1.0-pl\n++ Released on 2012-12-16\n+++++++++++++++++++++++++\n- #26 Add ability to manually sort Settings within a Group\n- #25 Add ability to manually sort Groups\n- #21 Add Filter on Group for settings.\n- #24 Remember last visited tab in both admin and client view.\n- #22 Add "Help!" button on Admin panel linking to RTFM instructions.\n- Improve checking if key exists on updating a setting.\n- #30 Fix bug with incorrectly checking cgSetting.is_required checkbox\n- Make controller a tad more portable.\n\n++ ClientConfig 1.0.0-pl\n++ Released on 2012-12-09\n+++++++++++++++++++++++++\nFirst release\n";s:13:"setup-options";s:39:"clientconfig-2.0.0-pl/setup-options.php";s:9:"signature";s:21:"clientconfig-2.0.0-pl";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:49:"/workspace/package/install/clientconfig-2.0.0-pl/";s:26:"clientconfig_context_aware";s:1:"0";s:14:"package_action";i:0;}', 'ClientConfig', 'a:38:{s:2:"id";s:24:"5b32a7b0bc8dd3ca548b4567";s:7:"package";s:24:"50c3f87ef245542fc1000033";s:12:"display_name";s:21:"clientconfig-2.0.0-pl";s:4:"name";s:12:"ClientConfig";s:7:"version";s:5:"2.0.0";s:13:"version_major";s:1:"2";s:13:"version_minor";s:1:"0";s:13:"version_patch";s:1:"0";s:7:"release";s:2:"pl";s:8:"vrelease";s:2:"pl";s:14:"vrelease_index";s:0:"";s:6:"author";s:5:"MarkH";s:11:"description";s:984:"<p></p><p></p><p>ClientConfig gives your client a user-friendly interface for making site&nbsp;wide changes, while you as the administrator set up the different options&nbsp;available to the end-user.</p><p><b>New in ClientConfig 2.0: <a href="https://www.modmore.com/blog/2017/clientconfig-2-context-settings/" title="" target="">context-aware settings</a>!</b></p><p>Possible uses include:</p><p></p><ul><li>Regularly update a slogan or tag-line in header or footer</li><li>Change call-to-action button colors based on the season</li><li>Keep contact details updated in one central location</li><li>Update the email-address a form sends notifications to.</li></ul><p><a href="https://github.com/Mark-H/ClientConfig" title="" target="">Please report bugs and feature requests on Github</a>, and <a href="http://forums.modx.com/thread/81490/clientconfig-custom-configuration-cmp-for-clients#dis-post-449423" title="" target="">chat about it on the Forums</a>.</p><p></p><p></p><p></p>";s:12:"instructions";s:573:"<p>To install, simply grab the package through package manager and install it. Navigate to the component in the components directory, hit the admin button in the top right, and start configuring settings for your clients to maintain.&nbsp;</p><p>You can use the values from the settings by using either the system setting tag syntax &#91;&#91;++key&#93;&#93;, or by using $modx-&gt;getOption(\'key\') in code.&nbsp;</p><p>For further information, <a href="https://docs.modmore.com/en/Open_Source/ClientConfig/index.html" title="" target="">refer to the documentation</a>.</p>";s:9:"changelog";s:7419:"<p></p><ul style="margin-bottom: 15px; color: rgb(119, 119, 119); font-family: helvetica, arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"></ul><p></p><p style="widows: auto;"><b>ClientConfig 2.0.0-pl </b>:: 2018-06-26</p><p style="widows: auto;"><ul><li>Don\'t add _duplicate to the key when duplicating a setting &#91;#142&#93;</li><li>Updated German &#91;#141&#93;, Russian &#91;#145&#93; and Dutch translations</li></ul></p><p style="widows: auto;"><b>ClientConfig 2.0.0-rc1 </b>:: 2017-10-04</p><p style="widows: auto;"><ul><li>ClientConfig can now (optionally) manage settings for different contexts &#91;#4/#112&#93;</li><li>Media fields (image/file) now prefix the media source url &#91;#124&#93;</li><li>Allow snippet/chunk tags in options for the dropdown field &#91;#104&#93;</li><li>Updated minimum requirements to PHP 5.5.0 and MODX 2.5.2.&nbsp;</li><li>Added separate clientconfig.categories lexicon for the vertical tabs interface &#91;#91&#93;</li></ul></p><p style="widows: auto;"><b>ClientConfig 1.4.2-pl</b>&nbsp;:: 2017-07-22<b></b></p><p style="widows: auto;"></p><ul><li>Restore PHP 5.3 compatibility in creating settings. <b>Note: next release will require 5.5+!</b></li><li>Fix issue saving settings on certain environments due to missing value for source &#91;#129&#93;</li><li>Fix incorrect header/container alignment in both manager pages &#91;#128&#93;</li><li>Fix (unused) namespace assets path (on new installs) &#91;#126&#93;</li></ul><p></p><p style="widows: auto;"><b>ClientConfig 1.4.1</b><b>-pl</b>&nbsp;:: 2017-02-01</p><p style="widows: auto;"></p><ul><li>Fix bug where the new source dropdown does not appear for image field types</li></ul><p></p><p style="widows: auto;"><b>ClientConfig 1.4.0-pl</b>&nbsp;:: 2017-01-31</p><ul><li>Fix loading of TinyMCE RTE, causing it to be initialised without configuration &#91;#122&#93;</li><li>Add ClientConfig_ConfigChange event to be able of hooking into configuration changes &#91;#117&#93;</li><li>Change plugin event from OnHandleRequest to OnMODXInit &#91;#87, #109, #115&#93;</li><li>Enable inline editing in the admin component &#91;#94, #95, #114&#93;</li><li>Fix field-required errors not being shown by adding a popup</li><li>Accept 0 as valid required value on the number input &#91;#119&#93;</li><li>Add a Password input type &#91;#105&#93;</li><li>Add a File input type &#91;#36&#93;</li><li>Don\'t show "Error adding field" errors during installation/upgrade &#91;#92&#93;</li><li>Fix loading RTE if the field key contains a dot &#91;#89&#93;</li><li>Add CMD/CTRL + S shortcut for saving the configuration &#91;#80&#93;</li><li>Preserve linebreaks when editing a setting in the admin section by using a textarea for the value &#91;#69&#93;</li><li>Relicense under the MIT license instead of GPL &#91;#67&#93;</li><li>Allow specifying a media source for the image input type &#91;#66&#93;</li></ul><p style="widows: auto;"><b>ClientConfig 1.3.2-pl</b>&nbsp;:: 2015-12-09</p><p style="widows: auto;"></p><ul><li>Update French translation</li><li>Make sure image field uses the MODX default media source</li><li>Respect manager_date_format and manager_time_format settings</li></ul><p style="margin-bottom: 15px; orphans: auto; text-align: start; text-indent: 0px; widows: auto;"><b>ClientConfig 1.3.1-pl</b> :: 2014-07-20&nbsp;</p><p style="margin-bottom: 15px; orphans: auto; text-align: start; text-indent: 0px; widows: auto;"></p><ul><li>Update Dutch translation</li><li>More weird border fixes</li><li>Minor fix to when borders are added, specifically for 2.2.</li></ul><p></p><p style="margin-bottom: 15px; color: rgb(119, 119, 119); font-family: helvetica, arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 19px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><b>ClientConfig v1.3.0</b>&nbsp;:: July 19th, 2014</p><p></p><ul><li>#27 &nbsp;Ability to import/export groups and settings</li><li>#16 &nbsp;Auto-select first group when adding a setting</li><li>#15 &nbsp;Force admins to create a group before creating a setting, as settings need groups</li><li>#76 &nbsp;Fix issue where unchecking a checkbox would fail if the setting was required</li><li>#78 &nbsp;Make the is_required column show Yes/No instead of true/false</li><li>#60 &nbsp;Get rid of an extra border</li><li>#75 &nbsp;Update help link to point to modmore.com</li></ul><p></p><p style="margin-bottom: 15px; color: rgb(119, 119, 119); font-family: helvetica, arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><b>ClientConfig v1.2.1</b>&nbsp;:: January 7th, 2014&nbsp;</p><ul><li>#57 &nbsp;Add Google Font input type (Thanks @garryn)</li><li>#63 &nbsp;Fix issue loading more than one rich text field</li></ul><p><b>ClientConfig v1.2.0</b>&nbsp;:: August 16th, 2013 (modmore.com) / November 14th, 2013 (modx.com)</p><ul><li>#38 &nbsp;Add setting (vertical_tabs) to allow stacking groups vertically instead of horizontal tabs</li><li>#46 &nbsp;Add ability to duplicate a setting</li><li>#45 &nbsp;Show field options field when editing a select box setting.</li><li>#54 &nbsp;Add Rich Text input type.</li><li>Improved width consistency of input items.</li><li>#37 &nbsp;Added input type Image (thanks COEX!)</li><li>#3 &nbsp; Fix/add colorpicker input type (thanks COEX!)</li></ul><p><b>ClientConfig v1.1.2</b>&nbsp;:: March 7th, 2012<b></b></p><p></p><ul><li>Add/update translations: Russian (thx @Alroniks!), German (thx @enigmatic-user!), Swedish (thx @fractalwolfe!) and Dutch.</li><li>#47 &nbsp;Show field descriptions under the fields. (Thanks @fractalwolfe!)</li><li>#40 &nbsp;Add placeholder tooltips with the &#91;&#91;++key&#93;&#93; for admins. (Thanks @fractalwolfe!)</li></ul><p></p><p><b>ClientConfig v1.1.1</b> :: December 31st, 2012</p><p></p><ul><li>#35 &nbsp;Don\'t strip out tags when saving values.</li><li>#39 &nbsp;Increase database field max sizes for longer descriptions and values.</li><li>#33 &nbsp;Make sure to show message when no tabs are to be shown.</li><li>#34 &nbsp;Prevent E_WARNING when there are no settings configured.</li></ul><p></p><p><b>ClientConfig v1.1.0</b>&nbsp;:: December 16th, 2012</p><p></p><p></p><ul><li>#26 &nbsp;Add ability to manually sort Settings within a Group</li><li>#25 &nbsp;Add ability to manually sort Groups</li><li>#21 &nbsp;Add Filter on Group for settings.</li><li>#24 &nbsp;Remember last visited tab in both admin and client view.</li><li>#22 &nbsp;Add "Help!" button on Admin panel linking to RTFM instructions.</li><li>Improve checking if key exists on updating a setting.</li><li>#30 &nbsp;Fix bug with incorrectly checking cgSetting.is_required checkbox</li><li>Make controller a tad more portable.</li></ul><p><b>ClientConfig v1.0.0</b>&nbsp;:: December 9th, 2012</p><p></p><p>Initial release.</p><p></p>";s:9:"createdon";s:24:"2018-06-26T20:53:04+0000";s:9:"createdby";s:5:"MarkH";s:8:"editedon";s:24:"2018-07-21T10:33:03+0000";s:10:"releasedon";s:24:"2018-06-26T20:53:04+0000";s:9:"downloads";s:5:"34268";s:8:"approved";s:4:"true";s:7:"audited";s:5:"false";s:8:"featured";s:5:"false";s:10:"deprecated";s:5:"false";s:7:"license";s:3:"MIT";s:7:"smf_url";s:0:"";s:10:"repository";s:24:"4d4c3fa6b2b0830da9000001";s:8:"supports";s:3:"2.5";s:8:"location";s:60:"http://modx.com/extras/download/?id=5b32a7b0bc8dd3ca548b4568";s:9:"signature";s:21:"clientconfig-2.0.0-pl";s:11:"supports_db";s:5:"mysql";s:16:"minimum_supports";s:3:"2.5";s:9:"breaks_at";s:8:"10000000";s:10:"screenshot";s:77:"http://modx.s3.amazonaws.com/extras/50c3f87ef245542fc1000033/clientconfig.jpg";s:4:"file";a:7:{s:2:"id";s:24:"5b32a7b0bc8dd3ca548b4568";s:7:"version";s:24:"5b32a7b0bc8dd3ca548b4567";s:8:"filename";s:35:"clientconfig-2.0.0-pl.transport.zip";s:9:"downloads";s:4:"1469";s:6:"lastip";s:14:"169.50.213.197";s:9:"transport";s:4:"true";s:8:"location";s:60:"http://modx.com/extras/download/?id=5b32a7b0bc8dd3ca548b4568";}s:17:"package-signature";s:21:"clientconfig-2.0.0-pl";s:10:"categories";s:61:"administration,administration,personalization,personalization";s:4:"tags";s:30:"setting,settings,configuration";}', 2, 0, 0, 'pl', 0),
('getresources-1.6.1-pl', '2018-07-21 21:12:09', '2018-07-21 21:12:17', '2018-07-21 21:12:17', 0, 1, 1, 0, 'getresources-1.6.1-pl.transport.zip', NULL, 'a:8:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:336:"--------------------\nSnippet: getResources\n--------------------\nVersion: 1.6.0-pl\nReleased: December 30, 2013\nSince: December 28, 2009\nAuthor: Jason Coward <jason@opengeek.com>\n\nA general purpose Resource listing and summarization snippet for MODX Revolution.\n\nOfficial Documentation:\nhttp://docs.modxcms.com/display/ADDON/getResources\n";s:9:"changelog";s:3492:"Changelog for getResources.\n\ngetResources 1.6.1-pl (December 30, 2013)\n====================================\n- Allow tvFilter values to contain filter operators\n- Allow 0-based idx\n- Pass scriptProperties to wrapperTpl\n- [#30][#80] Only dump properties for invalid tpl when debug enabled\n\ngetResources 1.6.0-pl (February 19, 2013)\n====================================\n- Add tplWrapper for specifying a wrapper template\n\ngetResources 1.5.1-pl (August 23, 2012)\n====================================\n- Add tplOperator property to default properties\n- [#73] Add between tplOperator to conditionalTpls\n\ngetResources 1.5.0-pl (June 15, 2012)\n====================================\n- [#58] Add tplCondition/conditionalTpls support\n- [#67] Add odd property\n- [#60] Allow custom delimiters for tvFilters\n- [#63] Give tplFirst/tplLast precedence over tpl_X/tpl_nX\n- Automatically prepare TV values for media-source dependent TVs\n\ngetResources 1.4.2-pl (December 9, 2011)\n====================================\n- [#25] Add new operators to tvFilters\n- [#37] Consider default values with tvFilters\n- [#57] Fix tpl overrides and improve order\n\ngetResources 1.4.1-pl (December 8, 2011)\n====================================\n- [#57] Add support for factor-based tpls\n- [#54], [#55] Fix processTVList feature\n\ngetResources 1.4.0-pl (September 21, 2011)\n====================================\n- [#50] Use children of parents from other contexts\n- [#45] Add dbCacheFlag to control db caching of getCollection, default to false\n- [#49] Allow comma-delimited list of TV names as includeTVList or processTVList\n\ngetResources 1.3.1-pl (July 14, 2011)\n====================================\n- [#43] Allow 0 as idx property\n- [#9] Fix tvFilters grouping\n- [#46] Fix criteria issue with &resources property\n\ngetResources 1.3.0-pl (March 28, 2011)\n====================================\n- [#33] sortbyTVType: Allow numeric and datetime TV sorting via SQL CAST()\n- [#24] Fix typos in list property options\n- [#4] Support multiple sortby fields via JSON object\n- Use get() instead to toArray() if includeContent is false\n- [#22] Add &toSeparatePlaceholders property for splitting output\n\ngetResources 1.2.2-pl (October 18, 2010)\n====================================\n- [#19] Fix sortbyTV returning duplicate rows\n\ngetResources 1.2.1-pl (October 11, 2010)\n====================================\n- Remove inadvertent call to modX::setLogTarget(\'ECHO\')\n\ngetResources 1.2.0-pl (September 25, 2010)\n====================================\n- Fix error when &parents is not set\n- Allow empty &sortby\n- Add ability to sort by a single Template Variable value (or default value)\n\ngetResources 1.1.0-pl (July 30, 2010)\n====================================\n- Added &toPlaceholder property for assigning results to a placeholder\n- Added &resources property for including/excluding specific resources\n- Added &showDeleted property\n- Allow multiple contexts to be passed into &context\n- Added &showUnpublish property\n- Added getresources.core_path reference for easier development\n- [#ADDON-135] Make output separator configurable via outputSeparator property\n- Add where property to allow ad hoc criteria in JSON format\n\ngetResources 1.0.0-ga (December 29, 2009)\n====================================\n- [#ADDON-81] Allow empty tvPrefix property.\n- [#ADDON-89] Allow parents property to have a value of 0.\n- Changed default value of sortbyAlias to empty string and added sortbyEscaped property with default of 0.\n- Added changelog, license, and readme.\n";s:9:"signature";s:21:"getresources-1.6.1-pl";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:49:"/workspace/package/install/getresources-1.6.1-pl/";s:14:"package_action";i:0;}', 'getResources', 'a:38:{s:2:"id";s:24:"52c184b462cf240b35006e31";s:7:"package";s:24:"4d556c3db2b083396d000abe";s:12:"display_name";s:21:"getresources-1.6.1-pl";s:4:"name";s:12:"getResources";s:7:"version";s:5:"1.6.1";s:13:"version_major";s:1:"1";s:13:"version_minor";s:1:"6";s:13:"version_patch";s:1:"1";s:7:"release";s:2:"pl";s:8:"vrelease";s:2:"pl";s:14:"vrelease_index";s:1:"0";s:6:"author";s:8:"opengeek";s:11:"description";s:157:"<p>This patch release fixes several bugs, including the dumping of properties to array if the output of a tpl Chunk is empty.</p><p></p><p></p><p></p><p></p>";s:12:"instructions";s:37:"<p>Install via Package Management</p>";s:9:"changelog";s:1742:"<p></p><p>getResources 1.6.1-pl (December 30, 2013)</p><ul><li>Allow tvFilter values to contain filter operators</li><li><li>Allow 0-based idx</li><li>Pass scriptProperties to wrapperTpl</li><li>Only dump properties for invalid tpl when debug enabled</li></li></ul><p>getResources 1.6.0-pl (February 19, 2013)</p><p></p><ul><li>Add tplWrapper for specifying a wrapper template</li></ul><p></p><p>getResources 1.5.1-pl (August 23, 2012)</p><p></p><ul><li>Add tplOperator property to default properties</li><li>&#91;#73&#93; Add between tplOperator to conditionalTpls</li></ul><p></p><p>getResources 1.5.0-pl (June 15, 2012)</p><p></p><ul><li>&#91;#58&#93; Add tplCondition/conditionalTpls support</li><li>&#91;#67&#93; Add odd property</li><li>&#91;#60&#93; Allow custom delimiters for tvFilters</li><li>&#91;#63&#93; Give tplFirst/tplLast precedence over tpl_X/tpl_nX</li><li>Automatically prepare TV values for media-source dependent TVs</li></ul><p></p><p></p><p>getResources 1.4.2-pl (December 9, 2011)</p><p></p><ul><li>&#91;#25&#93; Add new operators to tvFilters</li><li>&#91;#37&#93; Consider default values with tvFilters</li><li>&#91;#57&#93; Fix tpl overrides and improve order</li></ul><p></p><p></p><p>getResources 1.4.1-pl (December 8, 2011)</p><p></p><ul><li>&#91;#57&#93; Add support for factor-based tpls</li><li>&#91;#54&#93;, &#91;#55&#93; Fix processTVList feature</li></ul><p></p><p></p><p>getResources 1.4.0-pl (September 21, 2011)</p><p></p><ul><li>&#91;#50&#93; Use children of parents from other contexts</li><li>&#91;#45&#93; Add dbCacheFlag to control db caching of getCollection, default to false</li><li>&#91;#49&#93; Allow comma-delimited list of TV names as includeTVList or processTVList</li></ul><p></p><p></p>";s:9:"createdon";s:24:"2013-12-30T14:35:32+0000";s:9:"createdby";s:8:"opengeek";s:8:"editedon";s:24:"2018-07-21T21:10:49+0000";s:10:"releasedon";s:24:"2013-12-30T14:35:32+0000";s:9:"downloads";s:6:"245290";s:8:"approved";s:4:"true";s:7:"audited";s:4:"true";s:8:"featured";s:4:"true";s:10:"deprecated";s:5:"false";s:7:"license";s:5:"GPLv2";s:7:"smf_url";s:0:"";s:10:"repository";s:24:"4d4c3fa6b2b0830da9000001";s:8:"supports";s:1:"2";s:8:"location";s:60:"http://modx.com/extras/download/?id=52c184b562cf240b35006e33";s:9:"signature";s:21:"getresources-1.6.1-pl";s:11:"supports_db";s:12:"mysql,sqlsrv";s:16:"minimum_supports";s:1:"2";s:9:"breaks_at";s:8:"10000000";s:10:"screenshot";s:0:"";s:4:"file";a:7:{s:2:"id";s:24:"52c184b562cf240b35006e33";s:7:"version";s:24:"52c184b462cf240b35006e31";s:8:"filename";s:35:"getresources-1.6.1-pl.transport.zip";s:9:"downloads";s:6:"116305";s:6:"lastip";s:14:"89.111.177.152";s:9:"transport";s:4:"true";s:8:"location";s:60:"http://modx.com/extras/download/?id=52c184b562cf240b35006e33";}s:17:"package-signature";s:21:"getresources-1.6.1-pl";s:10:"categories";s:32:"blogging,content,navigation,news";s:4:"tags";s:57:"blog,blogging,resources,getr,getresource,resource,listing";}', 1, 6, 1, 'pl', 0);
INSERT INTO `chisto_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('migx-2.12.0-pl', '2018-07-19 19:25:06', '2018-07-19 19:27:40', '2018-07-19 19:27:40', 0, 1, 1, 0, 'migx-2.12.0-pl.transport.zip', NULL, 'a:10:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:1392:"--------------------\nMIGX\n--------------------\nVersion: 2.1.0\nAuthor: Bruno Perner <b.perner@gmx.de>\n--------------------\n\n* MIGX (multiItemsGridTv for modx) is a custom-tv-input-type for adding multiple items into one TV-value and a snippet for listing this items on your frontend.\n* It has a configurable grid and a configurable tabbed editor-window to add and edit items.\n* Each item can have multiple fields. For each field you can use another tv-input-type.\n\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/Bruno17/multiItemsGridTV/issues\n\nInstallation:\n\ninstall by package-management.\nCreate a new menu:\nSystem -> Actions \n\nActions-tree:\nmigx -> right-click -> create Acton here\ncontroller: index\nnamespace: migx\nlanguage-topics: migx:default,file\n\nmenu-tree:\nComponents -> right-click -> place action here\nlexicon-key: migx\naction: migx - index\nparameters: &configs=migxconfigs||packagemanager||setup\n\nclear cache\ngo to components -> migx -> setup-tab -> setup\n\nIf you are upgrading from MIGX - versions before 2.0\ngo to tab upgrade. click upgrade.\nThis will add a new autoincrementing field MIGX_id to all your MIGX-TV-items\nThe getImageList-snippet needs this field to work correctly.\n\n\nAllways after upgrading MIGX of any Version:\ngo to components -> migx -> setup-tab -> setup\n\nthis will upgrade the migx-configs-table and add new fields, if necessary.\n\n\n";s:9:"changelog";s:10646:"Changelog for MIGX.\n\nMIGX 2.12.0\n==============\nselect db-fields from defined class and its joins for formtabs and columns\nadd categories and a category-filter to MIGX Configs\nmultiple grouping-levels for &groupingField\nhooksnippet getformnames\nadd snippet migxAutoPublish for publishing by Cronjobs\nadd beforesave - hook to update-processor\nallow string in where-property\nadd a default schema-template, used at create package\nand some bugfixes\n\nMIGX 2.11.0\n==============\ngroupingfield, preparesnippet, _total, _count, improve @CODE\nhooksnippet beforecreateform\n\nMIGX 2.10.0\n==============\nhooksnippet getcustomconfigs for importcsvmigx\nsupport layout-rows/columns in formtabs\ncontextmenu \'flat formtabs\'\nmultiupload to db, resizeOnUpload - plugin\n[packagemanager] Add Extension Package - feature\nrespect joinalias in export.php and handlepositionselector.php\npossible to use TV-value in migxresourcemediapath - snippet\n[getImageList] inherit_children_tvname\nMIGXdb add item before/after\n\nMIGX 2.9.7\n==============\nadd emtpyTpl\nfix some MIGX-grid width - issues\nimport csv to MIGX\n\nMIGX 2.9.6\n==============\nhooksnippet getcustomconfigs for export-processor\nfix missing formtabs after saving\n\nMIGX 2.9.5\n==============\ncolumn-actionbuttons also for MIGX\nexport/import MIGX-items from/into MIGX-TV\nget tinymcewrapper working\nmore config-options for combo-filter\nFix and simplify Redactor implementation to use MODx.loadRTE()\n\nMIGX 2.9.4\n==============\n[migxResourcemediapath] add context_key as path option\nbutton for \'alter fields from schema\'\nfix MIGX-grid width\ncustom grid for MIGX-TV\nrespect context-default-media-source - setting\n\nMIGX 2.9.3\n==============\nbasic support for new TinyMCE RTE\nfix assetsUrl/connectorUrl - settings\nMIGX-TV MODX multifile-uploader/autocreate items  \nMIGX-TV configurable contextmenues\n\nMIGX 2.9.2\n==============\nsome smaller fixes\n\nMIGX 2.9.1\n==============\nadd hook-snippet setting\nsome handleRelated - update - functions\ndestroy updatewindow on close\n\nMIGX 2.9\n==============\n[migxLoopCollection] allow use of foreign database\nSottwell\'s improvements on migxresourcemediapath\nnew snippet: migxGetCollectionTree\naccess to foreign database from default processors\nimprovements on multiple formtabs\nmake inline-editing for MIGX - grid possible\noption to add MIGX-items directly without modal\nlistbox-cell-editor\nmovetotop,movetobottom - buttons for MIGX-grid\ncell-editing for MIgXdb - grids\noption to add MIGXdb-items directly without modal\n[getImageList] &inheritFrom - inherit MIGX-items from parents or other resources\nsome migxredactor - fixes \n\nMIGX 2.8.1\n==============\nlets disable the \'Add Item\' - button\nnew configs gridperpage and sortconfig\nwrapperTpl for getImageList and migxLoopCollection\n\nMIGX 2.8.0\n==============\nresolve tables on install\nrender cross, also when empty string\nreusable activaterelations - processors\n[migxLoopCollection] tpl_nN\n[#154] clean TV-value, if no MIGX-items \nadditional db-storage of formtabs and fields\nget menue working in MODX 2.3\nimprove description_is_code \n\n\nMIGX 2.6.8\n==============\nsome other small fixes\nrestrictive condition by processed MIGX-tags for formfields\nFilter-Button for Reset all filters to default-value\nextend date-filter\nmake cmp main caption translatable \nMigx::prepareJoins - optional rightjoin \n\nMIGX 2.6.7\n==============\nadd date - filter \nadd handlepositionselector - processor \nadd snippet exportmigx2db\n\nMIGX 2.6.6\n==============\nfixes only\n\nMIGX 2.6.5\n==============\nfixes only\n\nMIGX 2.6.4\n==============\n[redactor-field] get and use file-properties from a redactor-inputTV\nadd renderImageFromHtml - renderer\n\nMIGX 2.6.3\n==============\nconfigurable redactor-field with configs-configuration, make redactor work in MIGXdb - CMP\n\nMIGX 2.6.2\n==============\nfix issue with imported configs-field, if not an array \n\nMIGX 2.6.1\n==============\nMake Formfields translatable\n\nMIGX 2.6\n==============\n[getImageList] output inner arrays as json-string\nadded polish translation\n[getImageList] splits, build summaries\n make grid-columns translatable, let user add custom-lexicons from custom php-config-files \n\n\nMIGX 2.5.11\n==============\nadd simple MIGXdb - validation (only required for now)\nsome fixes\n\n\nMIGX 2.5.9\n==============\nlet us create new indexes, with altered field-def from schema \noptimize input-option-values-handling, see:http://forums.modx.com/thread/79757/sortable-editable-list-of-checkboxes?page=4#dis-post-483240\n\n\nMIGX 2.5.8\n\n==============\nAdded \'showScreenshot\' (big image in popup) \nAdded template-field for direct template-input for renderChunk\nAdded position - selector for new MIGX - items\nFix for not removed rte-editors when using formswitcher\nsend current store-params to iframe-window\n\n\nMIGX 2.5.6\n\n==============\n\nAdd support for the modmore.com Redactor editor \nsome work on multiuploader for MIGXdb\nmore eNotice - fixes\n\n\nMIGX 2.5.2\n\n==============\nread input-options into MIGX-TV\nrespect filter in default - export.php\nfix for empty value in TV - configs not loading renderers etc.\nfix changed processaction-param after export2csv \nstopEvent() by onClick - event\n\nMIGX 2.5.1\n\n==============\nfix bug with renderChunk - renderer\n\nMIGX 2.5\n\n==============\nget different rtes working - support for tinymce, ckeditor \nsome settings for MIGXfe\ncs - lexicons, \nsome eNotice - fixes\nfix with to big integers on TV-id (set phptype to string)\nlimit MIGX-record-count\n\n\nMIGX 2.4.2\n\n==============\ncolumnButtons for the migx - grid \nlittle form-layout-mods\nadded the option to have the first formtab outside the other tabs above of them.\n\nadded the option to use the TV-description-field as parsed code-areas in the formtabs, modx-tags are parsed there - \nsnippets, chunks, output-filters can be used there. All fields of the record can be used as placeholders.\n\nmigxupdate for MIGXfe\ndefault-values for MIGXdb-filters\nupdate co_id in iframe-window\nadd a searchbox to MIGX-Configurator\nread configs directly from exported configs-files from custom-packages - directory by using configname:packagename - configs\n\n\nMIGX 2.4.1\n\n==============\nsome new snippets:\ngetDayliMIGXrecord\nmigxgetrelations\n\nadded beta treecombo-filter-option for example to filter resources in MIGXdb by resourcetree\nadd window-title configuration, make window-caption dynamic (its possible to use placeholders now)\nhide tabs in form, when only one tab\nadded selectposition - renderer\n\n\nMIGX 2.4.0\n\n==============\nnew renderer - switchStatusOptions\nnew renderer - renderChunk\ngetImageList - added \'contains\' and \'snippet\' - where-filters\nadd duplicate-contextmenue to MIGXdb \nnew property for getImageList: &reverse\ngive TVs in each CMP-tab a unique id\nrefresh grid after closing iframe-window\nadded tpl_n{n} tplFirst tplLast tpl_n tpl_oneresult properties to getImageList\nexport jsonarray-fields as separate fields in csv-export\nalias, breadcrumb and ultimateparent for migxREsourceMediaPath\nAdded TV - description - field to configuration\n\n\nMIGX 2.3.1\n\n==============\nsome eNotice - error - fixes\nadd type - configuration to gridcolumns, now its possible to sort also numeric on the MIGX - grid: see https://github.com/Bruno17/MIGX/issues/41\n\nMIGX 2.3.0\n\n==============\nadd multifile - uploader, upload to MIGX - mediasource\nadd load from mediasource - button to MIGX\nadd migxResourcePath - snippet\nadd iframe - support - its now possible to create chunks with snippet-calls and show the result in an iframe-window. used by multifile-uploader.\n\n\nMIGX 2.2.3\n\n==============\nconfirmation before overriding schema-files\nsome additions for childresources-management by MIGXdb\nswitch between multiple forms - configurations\nadd renderDate - renderer , thanks to Jako\nadditional send all store-baseParams when opening the form-window. This way we can have different forms depending on filters for example.\nadd parent-property for dynamic filter-comboboxes\nadd getliste-where for default getlist-processor\nexport formtabs as clean json in editraw-mode\n\n\nMIGX 2.2.2\n\n==============\nadd migxLoopCollection-snippet\nmove prepareJoins into a migx-method\nconfirmation before remove db-record, getcombo did not use idfield \nallow empty prefix \nadd possibility to use tables without \'deleted\' - field and default-getlist-processor\nfix Call-time pass-by-reference errors\nget tinyMCE to work on richtext-TV-inputs in MIGXdb - CMPs \nfix prefix not sended to writeSchema\ngrid add cls \'main-wrapper\' to give it a bit padding, thanks to jako\n\n\nMIGX 2.2.0\n\n==============\n\nexport/import configuration-objects as json to/from files in custom-package-directories \nnew configs: getlist - defaultsort, joins, gridload_mode (by button, auto) \ngrid-smarty-template now can be also in custom-package-directories\nreworked handling of joined objects in default update-php \nadd connected_object_id baseparam to migx-grid\nadded snippet migxLoopCollection\n\n\nMIGX 2.1.1\n\n==============\n\n  fix for migx-snippet not working with multiple calls on one page\n  resource_id as script-property for getlist-processor when used with migx-snippet\n\nMIGX 2.1.0\n\n==============\n\n  add &sort to the getImageList - snippet\n  add new snippet \'migx\' to get items from db-tables, can use the same configurations and getList - processors as the MIGXdb - manager\n  make it possible to have config-files for grids and processors in another package-folder for easier packaging together custom - packages\n  more MIGXdb - configurations\n\n\nMIGX 2.0.1\n\n==============\n\n  more E_NOTICE - Error - fixes\n  Fix Missing Add - Item - Replacement - String \n\nMIGX 2.0.0\n\n==============\n\n- pl\n\n  fix for Revo 2.2.2\n  fix some E_NOTICE - errors\n\n- new in beta5\n\n  Configure multiple CMP - tabs\n  packagemanager ported to extjs - tab\n  added MIGX-setup/upgrade - tab\n  added configurable text and combo - filterboxes\n\n- new in beta3\n\n  This is a preview-version of MIGXdb\n  MIGXdb can now also be used as configurable CMP\n  MIGX - configurator for tabs, columns, MIGXdb-TV and MIGXdb-CMP\n  Package-manager, create and edit schemas and package-tables\n\n- new:\n  better compatibility with revo 2.2\n  working with mediasources\n  introduced MIGXdb\n\n\nMIGX 1.2.0\n==============\n- new:\n  merge scriptProperties to Placeholders \n  basic compatibility for modx 2.2 \n  autoinc-field: MIGX_id\n  autoResourceFolders - functionality, autoCreate directory for each resource\n  \n  \n- fixed:\n  url-TV support\n  context-based base_path issues\n  remove remaining []\n  remove Tiny-instances when switching form\n  enter on textarea closes window\n  fireResourceFormChange for drag,remove,duplicate \n\nMIGX 1.1.0\n==============\n- new:\n  &docidVarKey\n  &processTVs\n  \n- fixed:\n  context-filepath-issue\n\nMIGX 1.0.0\n==============\n- Initial release.";s:13:"setup-options";s:32:"migx-2.12.0-pl/setup-options.php";s:9:"signature";s:14:"migx-2.12.0-pl";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:42:"/workspace/package/install/migx-2.12.0-pl/";s:14:"menu_placement";s:6:"topnav";s:14:"package_action";i:0;}', 'MIGX', 'a:38:{s:2:"id";s:24:"5a7b25e9bc8dd3a7748b4567";s:7:"package";s:24:"4db018def24554690c000005";s:12:"display_name";s:14:"migx-2.12.0-pl";s:4:"name";s:4:"MIGX";s:7:"version";s:6:"2.12.0";s:13:"version_major";s:1:"2";s:13:"version_minor";s:2:"12";s:13:"version_patch";s:1:"0";s:7:"release";s:2:"pl";s:8:"vrelease";s:2:"pl";s:14:"vrelease_index";s:0:"";s:6:"author";s:7:"Bruno17";s:11:"description";s:676:"<p>MIGX (multiItemsGridTv for modx) is a custom-tv-input-type for adding multiple items into one TV-value and a snippet for listing this items on your frontend.</p><p>It has a cofigurable grid and a configurable tabbed editor-window to add and edit items.</p><p>Each item can have multiple fields. For each field you can use another tv-input-type.</p><p>MIGXdb can manage (resource-related) custom-db-table-items in a TV and can help to create CMPs for custom-db-tables</p><p>See the official documentation here:&nbsp;<a href="http://rtfm.modx.com/display/addon/MIGX" style="color: rgb(15, 112, 150); " title="" target="">http://rtfm.modx.com/display/addon/MIGX</a></p><p></p>";s:12:"instructions";s:5876:"<p></p><p style="margin: 10px 0px 20px; padding: 0px; border-width: 0px; outline-width: 0px; font-size: 13px; vertical-align: baseline; background-color: transparent; line-height: 1.4;">Installation:Install via Package Management.</p><p style="margin: 10px 0px 20px; padding: 0px; border-width: 0px; outline-width: 0px; font-size: 13px; vertical-align: baseline; background-color: transparent; line-height: 1.4;">For MIGX and MIGXdb - Configuration - Management:</p><p style="margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; ">Create a new menu:System -&gt; Actions Actions-tree:migx -&gt; right-click -&gt; create Acton herecontroller: indexnamespace: migxlanguage-topics: migx:default,filemenu-tree:Components -&gt; right-click -&gt; place action herelexicon-key: migxaction: migx - indexparameters: &amp;configs=migxconfigs||packagemanager||setupclear cachego to components -&gt; migx -&gt; setup-tab -&gt; setupIf you are upgrading from MIGX - versions before 2.0go to tab upgrade. click upgrade.This will add a new autoincrementing field MIGX_id to all your MIGX-TV-itemsThe getImageList-snippet needs this field to work correctly.</p><p style="margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; "><b style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; ">Note:</b>&nbsp;Make sure to remove older versions of multiItemsGridTv and the multiitemsgridTv-namespace, if you had them tried from Github.</p><p style="margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; "><b style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; ">Note</b>: Input Options for the MIGX only work for Revolution 2.1.0-rc2 and later.</p><p style="margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; "></p><p style="margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; "></p>";s:9:"changelog";s:13083:"<p>Changelog for MIGX.</p><p>MIGX 2.12.0</p><p>==============</p><p><ul><li>select db-fields from defined class and its joins for formtabs and columns</li><li>add categories and a category-filter to MIGX Configs</li><li>multiple grouping-levels for &amp;groupingField</li><li>hooksnippet getformnames</li><li>add snippet migxAutoPublish for publishing by Cronjobs</li><li>add beforesave - hook to update-processor</li><li>allow string in where-property</li><li>add a default schema-template, used at create package</li><li>and some bugfixes</li></ul></p><p>MIGX 2.11.0</p><p>==============</p><p></p><ul><li>groupingfield, preparesnippet, _total, _count, improve @CODE</li><li>hooksnippet beforecreateform</li></ul><p></p><p></p><p>MIGX 2.10.0</p><p>==============</p><p></p><ul><li>hooksnippet getcustomconfigs for importcsvmigx</li><li>support layout-rows/columns in formtabs</li><li>contextmenu \'flat formtabs\'</li><li>multiupload to db, resizeOnUpload - plugin</li><li>&#91;packagemanager&#93; Add Extension Package - feature</li><li>respect joinalias in export.php and handlepositionselector.php</li><li>possible to use TV-value in migxresourcemediapath - snippet</li><li>&#91;getImageList&#93; inherit_children_tvname</li><li>MIGXdb add item before/after</li></ul><p></p><p></p><p>MIGX 2.9.7</p><p>==============</p><p></p><ul><li>add emtpyTpl</li><li>fix some MIGX-grid width - issues</li><li>import csv to MIGX</li></ul><p></p><p></p><p>MIGX 2.9.6</p><p>==============</p><p></p><ul><li>hooksnippet getcustomconfigs for export-processor</li><li>fix missing formtabs after saving</li></ul><p></p><p>MIGX 2.9.5==============</p><ul><li>fix Form tabs data being wiped after saving</li></ul><p>MIGX 2.9.5==============</p><ul><li>column-actionbuttons also for MIGX</li><li>export/import MIGX-items from/into MIGX-TV</li><li>get tinymcewrapper working</li><li>more config-options for combo-filter</li><li>Fix and simplify Redactor implementation to use MODx.loadRTE()</li></ul><p>MIGX 2.9.4==============</p><ul><li>&#91;migxResourcemediapath&#93; add context_key as path option</li><li>button for \'alter fields from schema\'</li><li>fix MIGX-grid width</li><li>custom grid for MIGX-TV</li><li>respect context-default-media-source - setting</li></ul><p></p><p>MIGX 2.9.3==============</p><ul><li>basic support for new TinyMCE RTE</li><li>fix assetsUrl/connectorUrl - settings</li><li>MIGX-TV MODX multifile-uploader/autocreate items&nbsp; </li><li>MIGX-TV configurable contextmenues</li></ul><p>MIGX 2.9.2==============</p><ul><li>some smaller fixes</li></ul><p>MIGX 2.9.1==============</p><ul><li>add hook-snippet setting</li><li>some handleRelated - update - functions</li><li>destroy updatewindow on close</li></ul><p></p><p>MIGX 2.9.0==============</p><ul><li>&#91;migxLoopCollection&#93; allow use of foreign database</li><li>Sottwell\'s improvements on migxresourcemediapath</li><li>new snippet: migxGetCollectionTree</li><li>access to foreign database from default processors</li><li>improvements on multiple formtabs</li><li>make inline-editing for MIGX - grid possible</li><li>option to add MIGX-items directly without modal</li><li>listbox-cell-editor</li><li>movetotop,movetobottom - buttons for MIGX-grid</li><li>cell-editing for MIgXdb - grids</li><li>option to add MIGXdb-items directly without modal</li><li>&#91;getImageList&#93; &amp;inheritFrom - inherit MIGX-items from parents or other resources</li><li>some migxredactor - fixes </li></ul><p></p><p>MIGX 2.8.1==============</p><ul><li>lets disable the \'Add Item\' - button</li><li>new configs gridperpage and sortconfig</li><li>wrapperTpl for getImageList and migxLoopCollection</li></ul><p>MIGX 2.8.0==============</p><ul><li>resolve tables on install</li><li>render cross, also when empty string</li><li>reusable activaterelations - processors</li><li>&#91;migxLoopCollection&#93; tpl_nN</li><li>&#91;#154&#93; clean TV-value, if no MIGX-items </li><li>additional db-storage of formtabs and fields</li><li>get menue working in MODX 2.3</li><li>improve description_is_code </li></ul><p></p><p>MIGX 2.6.8==============</p><ul><li>some other small fixes</li><li>restrictive condition by processed MIGX-tags for formfields</li><li>Filter-Button for Reset all filters to default-value</li><li>extend date-filter</li><li>make cmp main caption translatable </li><li>Migx::prepareJoins - optional rightjoin </li></ul><p></p><p>MIGX 2.6.7==============</p><ul><li>add date - filter </li><li>add handlepositionselector - processor </li><li>add snippet exportmigx2db</li></ul><p>MIGX 2.6.6==============</p><ul><li>fixes only</li></ul><p></p><p>MIGX 2.6.5==============</p><ul><li>fix bug with migxResourceMediaPath</li></ul><p>MIGX 2.6.5==============</p><ul><li>fix not working richtext-editors in MIGXdb</li><li>add emptyThrash - process to MIGXdb</li></ul><p>MIGX 2.6.4==============</p><ul><li>&#91;redactor-field&#93; get and use file-properties from a redactor-inputTV</li><li>add renderImageFromHtml - renderer</li></ul><p>MIGX 2.6.3==============</p><ul><li>configurable redactor-field with configs-configuration, make redactor work in MIGXdb - CMP</li></ul><p></p><p>MIGX 2.6.2</p><p>==============</p><ul><li>fix issue with imported configs-field, if not an array\n      </li></ul><p></p><p>MIGX 2.6.1</p><p>==============</p><ul><li>Make Formfields translatable</li></ul><p></p><p>MIGX 2.6</p><p>==============</p><ul><li>&#91;getImageList&#93; output inner arrays as json-string</li><li>added polish translation</li><li>&#91;getImageList&#93; splits, build summaries</li><li>&nbsp;make grid-columns translatable, let user add custom-lexicons from custom php-config-files </li></ul><p>MIGX 2.5.11</p><p>==============</p><ul><li>add simple MIGXdb - validation (only required for now)</li><li>some fixes</li></ul><p></p><p>MIGX 2.5.9</p><p>==============</p><ul><li>let us create new indexes, with altered field-def from schema </li><li>optimize input-option-values-handling, see:http://forums.modx.com/thread/79757/sortable-editable-list-of-checkboxes?page=4#dis-post-483240</li></ul><p></p><p>MIGX 2.5.8</p><p>==============</p><ul><li>Added \'showScreenshot\' (big image in popup) </li><li>Added template-field for direct template-input for renderChunk</li><li>Added position - selector for new MIGX - items</li><li>Fix for not removed rte-editors when using formswitcher</li><li>send current store-params to iframe-window</li></ul><p></p><p>MIGX 2.5.6</p><p>==============</p><ul><li>Add support for the modmore.com Redactor editor\n</li><li>some work on multiuploader for MIGXdb</li><li>more eNotice - fixes</li></ul><p></p><p>MIGX 2.5.2</p><p>==============</p><ul><li>read input-options into MIGX-TV</li><li>respect filter in default - export.php</li><li>fix for empty value in TV - configs not loading renderers etc.</li><li>fix changed processaction-param after export2csv </li><li>stopEvent() by onClick - event</li></ul><p></p><p>MIGX 2.5.1</p><p>==============</p><ul><li>fix bug with renderChunk - renderer</li></ul><p></p><p>MIGX 2.5</p><p>==============</p><ul><li>get different rtes working - support for tinymce, ckeditor </li><li>some settings for MIGXfe</li><li>cs - lexicons, </li><li>some eNotice - fixes</li><li>fix with to big integers on TV-id (set phptype to string)</li><li>limit MIGX-record-count</li></ul><p></p><p>MIGX 2.4.2</p><p>==============</p><ul><li>columnButtons for the migx - grid </li><li>little form-layout-mods</li><li>added the option to have the first formtab outside the other tabs above of them.</li><li>added the option to use the TV-description-field as parsed code-areas in the formtabs, modx-tags are parsed there - </li><li>snippets, chunks, output-filters can be used there. All fields of the record can be used as placeholders.</li><li>migxupdate for MIGXfe</li><li>default-values for MIGXdb-filters</li><li>update co_id in iframe-window</li><li>add a searchbox to MIGX-Configurator</li><li>read configs directly from exported configs-files from custom-packages - directory by using configname:packagename - configs</li></ul><p>MIGX 2.4.1</p><p>==============</p><p>some new snippets:</p><ul><li>getDayliMIGXrecord</li><li>migxgetrelations</li></ul><p></p><ul><li>added beta treecombo-filter-option for example to filter resources in MIGXdb by resourcetree</li><li>add window-title configuration, make window-caption dynamic (its possible to use placeholders now)</li><li>hide tabs in form, when only one tab</li><li>added selectposition - renderer</li></ul><p>MIGX 2.4.0</p><p>==============</p><ul><li>new renderer - switchStatusOptions</li><li>new renderer - renderChunk</li><li>getImageList - added \'contains\' and \'snippet\' - where-filters</li><li>add duplicate-contextmenue to MIGXdb </li><li>new property for getImageList: &amp;reverse</li><li>give TVs in each CMP-tab a unique id</li><li>refresh grid after closing iframe-window</li><li>added tpl_n{n} tplFirst tplLast tpl_n tpl_oneresult properties to getImageList</li><li>export jsonarray-fields as separate fields in csv-export</li><li>alias, breadcrumb and ultimateparent for migxREsourceMediaPath</li><li>Added TV - description - field to configuration</li></ul><p></p><p>MIGX 2.3.1</p><p>==============</p><ul><li>some eNotice - error - fixes</li><li>add type - configuration to gridcolumns, now its possible to sort also numeric on the MIGX - grid: see https://github.com/Bruno17/MIGX/issues/41</li></ul><p></p><p>MIGX 2.3.0</p><p>==============</p><ul><li>add multifile - uploader, upload to MIGX - mediasource</li><li>add load from mediasource - button to MIGX</li><li>add migxResourcePath - snippet</li><li>add iframe - support - its now possible to create chunks with snippet-calls and show the result in an iframe-window. used by multifile-uploader.</li></ul><p></p><p>MIGX 2.2.3</p><p>==============</p><ul><li>confirmation before overriding schema-files</li><li>some additions for childresources-management by MIGXdb</li><li>switch between multiple forms - configurations</li><li>add renderDate - renderer , thanks to Jako</li><li>additional send all store-baseParams when opening the form-window. This way we can have different forms depending on filters for example.</li><li>add parent-property for dynamic filter-comboboxes</li><li>add getliste-where for default getlist-processor</li><li>export formtabs as clean json in editraw-mode</li></ul><p></p><p>MIGX 2.2.2</p><p>==============</p><ul><li>add migxLoopCollection-snippet</li><li>move prepareJoins into a migx-method</li><li>confirmation before remove db-record, getcombo did not use idfield </li><li>allow empty prefix </li><li>add possibility to use tables without \'deleted\' - field and default-getlist-processor</li><li>fix Call-time pass-by-reference errors</li><li>get tinyMCE to work on richtext-TV-inputs in MIGXdb - CMPs </li><li>fix prefix not sended to writeSchema</li><li>grid add cls \'main-wrapper\' to give it a bit padding, thanks to jako</li></ul><p></p><p>MIGX 2.2.0</p><p>==============</p><ul><li>export/import configuration-objects as json to/from files in custom-package-directories </li><li>new configs: getlist - defaultsort, joins, gridload_mode (by button, auto) </li><li>grid-smarty-template now can be also in custom-package-directories</li><li>reworked handling of joined objects in default update-php </li><li>add connected_object_id baseparam to migx-grid</li><li>added snippet migxLoopCollection</li></ul><p></p><p>MIGX 2.1.1</p>\n<p>==============</p>\n<ul><li>fix for migx-snippet not working with multiple calls on one page\n      </li><li>resource_id as script-property for getlist-processor when used with migx-snippet</li></ul>\n\n      <p>MIGX 2.1.0</p><p>==============</p><ul><li>&nbsp; add &amp;sort to the getImageList - snippet</li><li>&nbsp; add new snippet \'migx\' to get items from db-tables, can use the same configurations and getList - processors as the MIGXdb - manager</li><li>&nbsp; make it possible to have config-files for grids and processors in another package-folder for easier packaging together custom - packages</li><li>&nbsp; more MIGXdb - configurations</li></ul><p>MIGX 2.0.1</p><p>==============</p><ul><li>more E_NOTICE - Error - fixes</li><li>Fix Missing Add - Item - Replacement - String </li></ul><p></p><p>MIGX 2.0.0</p><p>==============</p><p>- pl</p><ul><li>&nbsp; fix for Revo 2.2.2</li><li>&nbsp; fix some E_NOTICE - errors</li></ul><p></p><p>- new in beta5</p><ul><li>&nbsp; Configure multiple CMP - tabs</li><li>&nbsp; packagemanager ported to extjs - tab</li><li>&nbsp; added MIGX-setup/upgrade - tab</li><li>&nbsp; added configurable text and combo - filterboxes</li></ul><p></p><p>- new in beta3</p><ul><li>&nbsp; This is a preview-version of MIGXdb</li><li>&nbsp; MIGXdb can now also be used as configurable CMP</li><li>&nbsp; MIGX - configurator for tabs, columns, MIGXdb-TV and MIGXdb-CMP</li><li>&nbsp; Package-manager, create and edit schemas and package-tables</li></ul><p></p><p>- new:</p><ul><li>&nbsp; better compatibility with revo 2.2</li></ul><ul><li>&nbsp; working with mediasources</li></ul><ul><li>&nbsp; starting with MIGXdb (very dev)</li></ul>";s:9:"createdon";s:24:"2018-02-07T16:14:33+0000";s:9:"createdby";s:7:"Bruno17";s:8:"editedon";s:24:"2018-07-19T19:24:33+0000";s:10:"releasedon";s:24:"2018-02-08T13:05:06+0000";s:9:"downloads";s:6:"145837";s:8:"approved";s:4:"true";s:7:"audited";s:5:"false";s:8:"featured";s:5:"false";s:10:"deprecated";s:5:"false";s:7:"license";s:5:"GPLv2";s:7:"smf_url";s:0:"";s:10:"repository";s:24:"4d4c3fa6b2b0830da9000001";s:8:"supports";s:3:"2.2";s:8:"location";s:60:"http://modx.com/extras/download/?id=5a7b25e9bc8dd3a7748b4568";s:9:"signature";s:14:"migx-2.12.0-pl";s:11:"supports_db";s:5:"mysql";s:16:"minimum_supports";s:3:"2.2";s:9:"breaks_at";s:8:"10000000";s:10:"screenshot";s:70:"http://modx.s3.amazonaws.com/extras/4db018def24554690c000005/migx1.JPG";s:4:"file";a:7:{s:2:"id";s:24:"5a7b25e9bc8dd3a7748b4568";s:7:"version";s:24:"5a7b25e9bc8dd3a7748b4567";s:8:"filename";s:28:"migx-2.12.0-pl.transport.zip";s:9:"downloads";s:5:"16384";s:6:"lastip";s:12:"37.57.163.10";s:9:"transport";s:4:"true";s:8:"location";s:60:"http://modx.com/extras/download/?id=5a7b25e9bc8dd3a7748b4568";}s:17:"package-signature";s:14:"migx-2.12.0-pl";s:10:"categories";s:15:"content,gallery";s:4:"tags";s:46:"migx,multiitems,multitv,migxdb,CMP,MIGX,MIGXdb";}', 2, 12, 0, 'pl', 0);
INSERT INTO `chisto_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('pdotools-2.11.2-pl', '2018-07-19 19:24:52', '2018-07-19 19:27:50', '2018-07-19 19:27:50', 0, 1, 1, 0, 'pdotools-2.11.2-pl.transport.zip', NULL, 'a:8:{s:9:"changelog";s:26702:"Changelog for pdoTools.\n\n2.11.2 pl\n==============\n- Fix detection of element names starting with a number.\n\n2.11.1 pl\n==============\n- Faster processing of static files.\n\n2.11.0 pl\n==============\n- [pdoFetch] Added "setTotal" option to enable calculating all rows ("SQL_CALC_FOUND_ROWS"), which will also result in the "totalVar" placeholder is being set.\n- [pdoFetch] Option "setTotal" disabled by default.\n- [pdoPage] Forces "setTotal" to provide pagination.\n\n2.10.6 pl\n==============\n- Improved German lexicons.\n\n2.10.5 pl\n==============\n- [pdoTools] Ability to return array from "prepareSnippet" for more performance.\n- [FenomX] Fixed method "getStore".\n\n2.10.4 pl\n==============\n- [Fenom] Do not output raw tags if there was a compile errors.\n- [#266] [pdoMenu] Fixed the setting of "here" and "self" classes.\n- [#261] [Fenom] Fixed unexpected behavior of the fenom tag "ignore".\n\n2.10.3 pl\n==============\n- Improved compatibility with PHP 7.2\n- [pdoFetch] Ability to use arrays in "&sortby".\n\n2.10.2 pl\n==============\n- [Fenom] Improved processing of caching snippets inside uncached.\n\n2.10.1 pl\n==============\n- [#256] [Fenom] Fixed bug with caching of scripts and styles.\n- [pdoPage] "&setMeta" now works when "&cache=`1`".\n- [Fenom] Improved regular expression to detect Fenom syntax.\n\n2.10.0 pl\n==============\n- [#259] [pdoFetch] Fixed error when passed pure SQL into "having" parameter.\n- [#258] [pdoPage] Canonical urls always must be "full".\n- [#245] [pdoMenu] Ability to use conditional tpls instead of regular "tpl".\n- [#121] [pdoMenu] Improved work of specified chunks with weblinks.\n\n2.9.3 pl\n==============\n- [#255] [Fenom] New system setting "pdotools_fenom_save_on_errors" to save code on compilation errors in the cache directory for later debugging.\n\n2.9.2 pl\n==============\n- [pdoParser] Proper traversal trough arrays fields of resources in fast tags.\n\n2.9.1 pl\n==============\n- [Fenom] Updated to version 2.11.8.\n\n2.9.0 pl\n==============\n- [pdoPage] Improved "&pageLinkScheme" logic.\n- [#249] A little improvement for resource modifier.\n- [#251] [pdoFetch] More compatibility with PHP 7.1.\n- [#253] [pdoPage] Fixing a missing pagination in Ajax mode.\n- [#254] [Fenom] Options of json modifiers must check version of PHP to proper work.\n\n2.8.6 pl\n==============\n- [pdoArchive] Ability to specify fields with regular dates in the "&dateField" parameter.\n- [Fenom] Added all options to json modifiers.\n\n2.8.5 pl\n==============\n- [#248] [pdoPage] Fixed E_WARNING with array values in GET parameters.\n\n2.8.4 pl\n==============\n- Ability to use file elements in core path outside base path.\n- Fixed bug with the caching of elements.\n\n2.8.3 pl\n==============\n- [Fenom] Fixed rare bug with the caching of scripts and styles that was registered via Fenom.\n- [pdoPage] Fixed the "?page=1" in the url when ajaxMode is enabled.\n- [pdoPage] Snippet will register "canonical" link if "&setMeta" is enabled.\n- [pdoPage] Fix processing of request with rawurldecode on some servers.\n- [pdoTools] Added passing of "scriptProperties" values into a "&prepareSnippet".\n\n2.8.2 pl\n==============\n- [pdoMenu] Fixed the checking of permissions for containers.\n- [pdoPage] Added the ability to run files as &element.\n- [pdoTools] The method runSnippet will return boolean false if snippet was not found.\n- [Fenom] Fixed the possible bugs of caching of scripts and styles.\n\n2.8.1 pl\n==============\n- [#244] Fixed possible duplicate of a container in the jquery.pdopage.js.\n- Added fallback class for the enable modParser.\n\n2.8.0 pl\n==============\n- Ability to use an arrays in the parameters of the snippets.\n- Replaced modX::toJSON and modX::fromJSON to native php functions.\n\n2.7.5 pl\n==============\n- Fenom is now managed via composer.\n- [Fenom] Modifier "resource" no longer checks fields of resources in their schema.\n- [Fenom] Modifier "strrev" now can work with arrays.\n- [Fenom] Improved modifier "ismember".\n\n2.7.4 pl\n==============\n- [#242] Added jquery.pdopage.js plugin and minified versions.\n- [#241] [Fenom] Improved the retrieving of TVs for a current resource.\n- [pdoFetch] Restored the checking of possible SQL injections in the &sortby with xPDO 2.5.1.\n\n2.7.3 pl\n==============\n- Improved compatibility with MODX 2.5.2.\n\n2.7.2 pl\n==============\n- [pdoFetch] Some security improvements.\n\n2.7.1 pl\n==============\n- Some security improvements in the connector.php.\n- Fixed bug with registering scripts in styles via Fenom introduced in version 2.7.0.\n\n2.7.0 pl\n==============\n- [Fenom] Updated to the version 2.11.4.\n- [Fenom] Fixed resource cache for scripts and styles registered by Fenom.\n- [Fenom] Added rand() and number_format() to an allowed PHP functions.\n- [Fenom] New output filter "number" (or "number_format").\n\n2.6.5 pl\n==============\n- Fixed undeclared variable (PHP 7.1)\n\n2.6.4 pl\n==============\n- Added escaping of a MODX tags that being processed in the &prepareSnippet.\n- [#239] Improved work of the &decodeJSON option.\n\n2.6.3 pl\n==============\n- Fixed possible E_NOTICE on line 305 pdofetch.class.php.\n- Fixed possible E_NOTICE when "snippet" and "chunk" Fenom modifiers was called.\n\n2.6.2 pl\n==============\n- Fixed possible E_NOTICE on line 1317 pdotools.class.php.\n\n2.6.1 pl\n==============\n- Improved compatibility with PHP 5.3.\n\n2.6.0 pl\n==============\n- [Fenom] The ability to extend Fenom via system event "pdoToolsOnFenomInit".\n\n2.5.6 pl\n==============\n- [pdoFetch] Ability to join TVs not only to the query main class.\n\n2.5.5 pl\n==============\n- Fixed parse of INLINE chunks with "@" symbols.\n\n2.5.4 pl\n==============\n- [#224] Added microMODX::cleanAlias().\n- [#226] [Fenom] Added "declension" modifier.\n\n2.5.3 pl\n==============\n- [#221] Fixed typo in month name.\n- [Fenom] Fixed path to compile dir.\n\n2.5.2 pl\n==============\n- [#220] Cache code of snippet with respect to property set.\n\n2.5.1 pl\n==============\n- Fixed cache of snippets in pdoTools::runSnippet().\n\n2.5.0 pl\n==============\n- Improved support of debugParser.\n- [#209] Improved loading of the models.\n- [Fenom] New modifiers: "snippet" and "chunk".\n- [Fenom] New elements provider: "file".\n- New method pdoTools::runSnippet().\n\n2.4.0 pl\n==============\n- Added snippet pdoArchive.\n- [pdoResources] Faster processing of additional snippet parameters to placeholders.\n- [#123] [pdoMenu] Fixed bug with &displayStart and unpublished root nodes.\n- [#207] [pdoMenu] Fixed &webLinkClass option.\n- [#193] [pdoNeighbors] Added parameter &wrapIfEmpty.\n- [#203] [Fenom] Added more PCRE modifiers.\n\n2.3.5 pl\n==============\n- [pdoFetch] Added escaping of columns names in query.\n\n2.3.4 pl\n==============\n- [#200] [pdoFetch] Fixed &sortbyTV with dot in name.\n\n2.3.3 pl\n==============\n- Added system plugin for "autoload" of main classes with respect to their paths in system settings.\n\n2.3.2 pl\n==============\n- [#196] [pdoPage] Added workaround to support ClientConfig tags in ajax mode.\n- [Fenom] Added general MODX output filters as Fenom modifiers.\n- [Fenom] Implemented autoload of modifiers from snippets.\n- [Fenom] Removed system setting "pdotools_fenom_modifiers".\n\n2.3.1 pl\n==============\n- [pdoSitemap] Lightning fast work chunks processing with &scheme=`uri`.\n- [Fenom] Improved check of syntax before processing.\n\n2.3.0 pl\n==============\n- Removed shortcuts from system core.\n- PSR-2.\n- [Fenom] Added default modifiers: "url" and "lexicon".\n- [pdoCrumbs] Changed default chunks to ul -> li.\n- [#190] [pdoSitemap] Changed date format to ISO 8601.\n\n2.2.8 pl\n==============\n- [Fenom] Use modResource::getContent() method to get content of current resource in {$_modx->resource}.\n\n2.2.7 pl\n==============\n- [pdoPage] Ability to get access to a javascript configs from 3rd party scripts.\n\n2.2.6 pl\n==============\n- [#184] [Fenom] Updated to version 2.8.2.\n\n2.2.5 pl\n==============\n- [#182] [pdoTitle] Added passing a parameters into nested pdoCrumbs.\n- [pdoSitemap] Added processing of MODX tags if needed.\n- Added method pdoTools::makeUrl().\n- [#181] New url schema type - "uri".\n\n2.2.4 pl\n==============\n- [Fenom] Fixed speed issues when MODX snippets are run as Fenom modifiers.\n- [pdoUsers] Fixed overwrite modUser.id by modUserProfile.id.\n\n2.2.3 pl\n==============\n- [pdoPage] Fixed processing of uncached conditions in chunks when ajax mode is enabled.\n\n2.2.2 pl\n==============\n- [pdoPage] Added new parameter &pageLinkScheme.\n\n2.2.1 pl\n==============\n- [#155] [pdoPage] Added new parameter &ajaxHistory.\n- [pdoPage] Added connector for requests in ajax mode.\n\n2.2.0 pl\n==============\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\n- [#174] [Fenom] Ability to add Fenom modifiers into pdoParser.\n\n2.1.21 pl\n==============\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\n- [#176] [pdoUsers] Fixed &toPlaceholders with &returnIds.\n\n2.1.20 pl\n==============\n- [pdoSitemap] Fixed default &cacheKey.\n\n2.1.19 pl\n==============\n- [Fenom] Disabled $options in cacheManager::set() due to security reasons.\n\n2.1.18 pl\n==============\n- [Fenom] Fixed ability to access to the modX object from {$_modx} variable.\n- [Fenom] Improved method {$_modx->runProcessor()}.\n\n2.1.17 pl\n==============\n- [Fenom] Added {$_modx->getResource($id, $options)}.\n- [Fenom] Added {$_modx->getResources($where, $options)}.\n- [Fenom] Improved support of debugParser.\n\n2.1.16 pl\n==============\n- [Fenom] Added {$_modx->isMember($groups, $matchAll)}.\n- [Fenom] Added {$_modx->getPlaceholders()}.\n\n2.1.15 pl\n==============\n- [pdoPage] Added parameter &strictMode.\n\n2.1.14 pl\n==============\n- [pdoSitemap] Added options for cache snippets results.\n- [pdoSitemap] Cache enabled by default.\n\n2.1.13 pl\n==============\n- [#163] Fixed ignoring of &idx in pdoResources and pdoUsers.\n\n2.1.12 pl\n==============\n- [pdoPage] [#161] Fixed support of arrays in hash when &ajaxMode is enabled.\n\n2.1.11 pl\n==============\n- [#150] [Fenom] Fixed processing of TVs values in a {$_modx->resource}.\n- [#147] [pdoSitemap] Fixed possible duplicates in sitemap.\n- [pdoPage] Support of arrays in hash when &ajaxMode is enabled.\n\n2.1.10 pl\n==============\n- [#157] [Fenom] Fixed pre-processing of Fenom tags in extending templates and chunks.\n- [#145] [pdoPage] Rolled back #81 due to issues with complicate forms.\n\n2.1.9 pl\n==============\n- [#144] [pdoParser] Leave unprocessed FastField tags so other components could parse them.\n- [pdoFetch] Updated syntax for "SET SQL_BIG_SELECTS = 1".\n\n2.1.8 pl\n==============\n- [Fenom] Ability to use id of chunks and templates in {include} and {extends}.\n- [Fenom] Added support of debugParser.\n- [Fenom] Added {$_modx->getChildIds()} and {$_modx->getParentIds()}.\n\n2.1.7 pl\n==============\n- Fixed work with integer values from system setting "link_tag_scheme".\n\n2.1.6 pl\n==============\n- [Fenom] Updated to version 2.8.0.\n- [Fenom] Improved check of syntax to process content of chunks.\n- [pdoParser] Fixed E_WARNING on line 50 introduced in previous version.\n\n2.1.5 pl\n==============\n- [Fenom] Fixed register of scripts and styles by cached snippets.\n\n2.1.4 pl\n==============\n- [Fenom] Fixed TVs in {$_modx->resource}\n- [Fenom] Added new method {$_modx->getInfo()}\n\n2.1.3 pl\n==============\n- Improved work of system setting "pdotools_fenom_php".\n\n2.1.2 pl\n==============\n- [Fenom] Replaced {$_modx->placeholders} to functions.\n\n2.1.1 pl\n==============\n- pdoParser enabled by default.\n- [Fenom] Fixed return content in {$_modx->getChunk}.\n- [Fenom] Added cache for snippets called through {$_modx->runSnippet}.\n- [pdoTools] Added processing of property sets for chunks.\n- [pdoResources] Set additionalPlaceholders in &tplWrapper\n\n2.1.0 pl\n==============\n- [Fenom] Updated Fenom to version 2.7.1.\n- [Fenom] Added safe system variable {$_modx}.\n- [Fenom] Added MODX template provider for chunks and templates.\n\n2.0.5 pl\n==============\n- [#132] Fixed possible E_WARNING on empty chunks.\n- [#122] Ability to use 3rd party pdoPage and pdoMenu classes.\n- [#118] [pdoPage] Fixed parameter &offset.\n- [pdoPage] Fixed default CSS classes in "empty" chunks.\n\n2.0.4 pl\n==============\n- Fixed processing of "pdotools_fenom_cache" system setting.\n\n2.0.3 pl\n==============\n- [#125] [pdoTitle] Fixed parameter &id.\n\n2.0.2 pl\n==============\n- Improved processing of @FILE binding.\n\n2.0.1 pl\n==============\n- Fixed possible E_WARNING on line 319 and 349 of pdoTools class.\n- Disabled system option "pdotools_fenom_modx" by default due to security issues.\n\n2.0.0 pl\n==============\n- New system settings to control the Fenom.\n- Ability to enable caching of Fenom compiled chunks.\n- Improved handling of parameter "cache_key".\n- [pdoMenu] Improved work when &cache is enabled.\n\n2.0.0 rc2\n==============\n- Compiled Fenom templates cached to RAM instead of HDD.\n- Removed plugin pdoTools.\n\n2.0.0 rc1\n==============\n- Added Fenom template engine.\n- Fenom enabled by default.\n- pdoParser uses Fenom to process pages.\n\n1.11.2 pl\n==============\n- [#116] [pdoTitle] Disabled &register_js by default.\n\n1.11.1 pl\n==============\n- [pdoSitemap] Fixed default url scheme after last update.\n\n1.11.0 pl1\n==============\n- [pdoTitle] Added new snippet.\n- [pdoPage] Added support of snippet pdoTitle when &ajaxMode is enabled.\n- [pdoPage] Prevent overwriting of scripts and styles of nested &element by default parameters.\n- [pdoPage] Added triggering javascript event "pdopage_load".\n\n1.10.2 pl1\n==============\n- [#112] Parameter &scheme was set to system default in all snippets.\n- [#111] [pdoPage] Added ability to set "prev" & "next" meta tags.\n- [#107] [pdoNeighbors] Added ability to specify &parents for work.\n- [#106] [pdoMenu] Fixed "hereClass" and "selfClass" enabled &useWeblinkUrl parameter.\n- [#104] [pdoMenu] Snippet now using "pagetitle" for link titles if "titleOfLinks" is empty.\n\n1.10.1 pl\n==============\n- [#108] [pdoFetch] Fixed E_ERROR when using &sortbyTV.\n- [pdoFetch] Added new parameter &sortbyTVType.\n- [pdoFetch] If &sortdirTV is not set it will be equal to &sortdir.\n\n1.10.0 pl\n==============\n- [pdoMenu] Returned and fixed parameter &showDeleted.\n- [pdoPage] Improved default javascript.\n- [pdoPage] Fixed overwriting &frontend_js and &frontend_css parameters when &ajax is disabled.\n- [pdoFetch] Ability to specify functions in select fields.\n- [pdoTools] Ability to use compound quick placeholders.\n\n1.10.0 beta4\n==============\n- [pdoPage] Ajax pagination out from the box.\n- [pdoFetch] Improved log of getCollection.\n- [pdoTools] Added tplOperator "contains".\n\n1.9.7 pl\n==============\n- [#99] [pdoFetch] Fixed returning of primary key in "ids" mode.\n- [#97] [pdoTools] Fixed default tplPath for @FILE chunks.\n- [#85] [pdoFetch] Added function getChildIds().\n- [pdoFetch] Disabled "total" placeholder for &return=`ids`.\n\n1.9.6 pl2\n==============\n- [pdoFetch] Fixed exclusion of field "id" in custom classes.\n- [pdoMenu] Improved parameter &countChildren.\n- [#100] [pdoMenu] Removed parameter &showDeleted because it not working.\n\n1.9.6 rc\n==============\n- Added execution of SQL_BIG_SELECTS = 1 before query.\n- [pdoPage] Added parameter &ajax for supporting of ajax requests.\n\n1.9.5 pl1\n==============\n- Rolled back #72 due to issues in pdoMenu.\n\n1.9.5 pl\n==============\n- Added ability to return JSON or serialized string from pdoFetch::run().\n- [#83] [pdoMenu] Added level placeholder to outer templates.\n- [#82] [pdoFetch] Added support for complex &where parameter.\n- [#81] [pdoPage] Improved handling of arrays in url.\n- [#77] Fixed making of url for modWebLink to another context.\n- [#72] [pdoTools] Fixed order for children of excluded parents in buildTree.\n- [#60] [pdoMenu] Fixed parameter &tplCategoryFolder.\n- [#57] [pdoMenu] Improved placeholder [[+children]].\n- [#57] [pdoMenu] Added parameter &countChildren.\n\n1.9.4 pl1\n==============\n- [#78] [pdoNeighbors] Added parameter &loop=`1` for looping links.\n- [pdoSitemap] Fixed possible E_FATAL php-apc.\n\n1.9.3 pl1\n==============\n- [pdoTools] Ability to specify value for empty quick placeholders.\n- [pdoTools] Ability to use INLINE snippets and filters.\n- [pdoFetch] Improved loading of 3rd party models.\n- [pdoPage] Fixed E_WARNING when &limit=`0`.\n\n1.9.2 pl2\n==============\n- [#56] [pdoParser] Fixed wrong links processing.\n- [#53] Improved loading of classes.\n- [pdoField] Rolled back to original logic of "top" and "topLevel" parameters due to issues.\n- [pdoField] Added parameter "ultimate" to emulate logic of UltimateParent.\n\n1.9.1 pl6\n==============\n- [pdoFetch] Adding alias of main class of query to "sortby" if no alias exists.\n- [pdoFetch] Improved selecting of all fields of class with specified alias.\n- [pdoField] Parameter "topLevel" works exactly as in UltimateParent.\n- [pdoField] Parameter "top" without "topLevel" returns parent on "top" level.\n\n1.9.1 pl\n==============\n- [#47] [pdoMenu] Fixed processing &tplOuter when output is empty.\n- [#46] [pdoParser] Fixed processing of TVs with dots in name.\n- [#44] [pdoMenu] Improved handling of Wayfinder parameters "includeDocs" and "excludeDocs".\n- [#37] [pdoField] get the default, only if the field was empty.\n- [#34] Fixed processing of "modSymLink" documents.\n- [#32] Improved cache methods.\n- [#26] Replaced FIND_IN_SET() to FIELD().\n- [pdoFetch] Ability to work with objects, that has multiple primary keys.\n- [pdoPage] New parameter &cacheAnonymous.\n- [pdoMenu] New parameter &cacheAnonymous.\n- Added aliases for sort query in order of specified &resources: "ids" or "resources".\n- Removed unnecessary query in pdoFetch::getCollection().\n- Improved pdoFetch::getCollection().\n- Renamed pdoFetch::getObject() to getArray(). Now it uses getCollection for retrieve results.\n- pdoTools::setCache() now returns cacheKey.\n- pdoFetch::getObject() is now alias of pdoFetch::getArray().\n\n1.9.0 pl2\n==============\n- [pdoMenu] Chunks of parents and categories are now depends on the descendants and ignores parameter isfolder.\n- [pdoNeighbors] Speed improvements.\n- [#27] Ability to specify custom pdoFetch and pdoTools classes through FQN system settings.\n- [pdoParser] Handles TVs in resource tags.\n- [pdoParser] Handles output filters.\n- [pdoFetch] Improved method "addTVFilters", that used by "tvFilters" parameter in pdoResources.\n- [pdoSitemap] Pass the whole row so we can use more columns.\n\n1.9.0 rc\n==============\n- Improved method pdoTools::getChunk().\n- Improved method pdoTools::parseChunk().\n- Improved method pdoTools::fastProcess().\n- Improved method pdoTools::makePlaceholders().\n- Accelerated snippet pdoNeighbors.\n- Fixed bug in pdoUsers when usersgroups was specified by names.\n- getObject and getCollection() runs in separate instance.\n- Added pdoParser with FastField tags.\n- [pdoPage] Changed default value of parameter "totalVar" due to issues.\n- [#24] Fixed prepareTVs and empty tvPrefix.\n- [#23] [pdoResources] Ability to return ids to placeholder.\n- Fixed warning when getObject returns false.\n- Fixed placeholders prefix in recursive makePlaceholders.\n\n1.8.9 pl4\n==============\n- Added german lexicon.\n- [#20] Ability to specify not JSON string in &where=``.\n- [pdoPage] Added parameter "pageCountVar" for specifying name of variable with number of pages.\n- [pdoPage] Support Bootstrap3.\n- [pdoField] Ability to specify class for fetching field.\n- Improved joining of tables in pdoFetch.\n- Added preparing and processing TVs in getObject and getCollection methods.\n- Improved load of 3rd party models.\n\n1.8.8 pl2\n==============\n- Rewrited cache of snippets "pdoMenu" and "pdoPage".\n- New methods pdoTools::getCache() and pdoTools::setCache().\n- [pdoMenu] Fixed parameter "tplParentRowActive".\n- [#18] Fixed "idx" in pdoTools::defineChunk().\n\n1.8.7 pl\n==============\n- Added boolean parameter "decodeJSON" to specify whether or not decode JSON in results rows.\n- Removed default "sortby" and "sortdir" from class pdoFetch for better work of getCollection() method.\n\n1.8.6 pl2\n==============\n- Fixed possibly E_NOTICE when site has no extension packages installed.\n- [#17] [pdoMenu] Added placeholder [[+wf.menutitle]].\n- [#16] [pdoMenu] Disabled status verification of specified parents.\n- [#13] [pdoMenu] Improved work with root of multiple contexts.\n- [pdoMenu] Fixed bug when specified parent has only the one child.\n- [pdoResources] Added parameter "&useWeblink" and placeholder "[[+link]]". It is disabled by default.\n\n1.8.5 pl\n==============\n- [#15] [pdoPage] Improved generation of links to pages.\n- [pdoMenu] Improved processing of classes "modSymlink" and "modWeblink".\n- [pdoBreadcrumbs] Improved processing of classes "modSymlink" and "modWeblink". Added parameter "&useWeblink".\n- [pdoNeighbors] Added parameter "&useWeblink" and placeholder "[[+link]]".\n- [pdoSitemap] Added parameter "&useWeblink" and proper processing of classes "modSymlink" and "modWeblink".\n\n1.8.4 pl\n==============\n- [pdoCrumbs] Added ability to specify the crumbs root (defaulting to site_start)\n- [pdoCrumbs] Added ability to specify class_key (ie. to generate crumbs only for derivative classes)\n- More accuracy when try to decode json in fetch results.\n\n1.8.3 pl3\n==============\n- Improved preparation of template variables.\n- Improved transfer of additional parameters from snippet to results.\n- [pdoMenu] Added lexicon entries for parameters.\n- [pdoMenu] Allow to specify "limit" and "offset".\n- [#12] Added parameter "toPlaceholder".\n- Increased accuracy of timings log.\n\n1.8.1 pl2\n==============\n- Accelerated method pdoTools::getChunk().\n- Added snippet pdoMenu.\n- Added support for tags [^qt^] and [^q^].\n\n1.8.0 pl\n==============\n- [#10] [pdoPage] Added placeholder "page".\n- [#9] [pdoPage] Added placeholder "pageCount".\n- [#8] Improved support of big numbers when sorting by TVs.\n- Fixed work of pdoPage when it called multiple times on page.\n- Fixed mistype in pdoFetch::getCollection().\n\n1.8.0 rc5\n==============\n- Added processing of JSON fields. For example, you can use [[+extended.keyname]] in chunks of pdoUsers.\n- pdoTools was removed from system extension packages, but you can still use "$modx->getService(\'pdoFetch\');".\n- Fixed getting chunk without any parameters.\n- Added snippet pdoPage.\n\n1.8.0 beta1\n==============\n- Improved handling of "default_text" parameter in TVs.\n- Fixed and improved method pdoTools::buildTree().\n- The logic of build the conditions of the query moved into new method pdoFetch::additionalConditions().\n- Improved method pdoFetch::addSelects().\n- Improved method pdoFetch::addSort().\n- Improved some snippets in accordance to new abilities of pdoFetch: pdoResources, pdoNeighbors and pdoSitemap.\n\n1.7.4 pl\n==============\n- [#7] [pdoSitemap] Fixed hidden parameters "&sortBy" and "&sortDir" that used for compatibility with GoogleSiteMap.\n\n1.7.3 pl1\n==============\n- [pdoCrumbs] Fixed possible E_NOTICE on line 157.\n- [pdoCrumbs] Fixed generation of link to site start in relative mode.\n- [#6] pdoCrumbs and pdoNeighbors are now uses "menutitle" by default. If it is empty, will be used "pagetitle".\n\n1.7.2 pl1\n==============\n- [pdoField] Added new parameters: "default=``" and "&field=``".\n- [pdoField] Improved logic of "&top=``" and "&topLevel=``".\n- Added 2 new methods: pdoFetch::getObject() and pdoFetch::getCollection().\n- Ability to send arrays into common config parameters. JSON is still supported.\n- Improved select of default values in TVs.\n\n1.7.1 pl\n==============\n- [pdoCrumbs] Fixed work with "modSymLink" and "modWebLink" resources.\n\n1.7.0 pl1\n==============\n- New snippet pdoCrumbs.\n- New snippet pdoField.\n- New snippet pdoSitemap.\n- New snippet pdoNeighbors.\n- Ability to specify snippet for preparation of fetched rows by parameter "&prepareSnippet=``".\n- Added method pdoTools::checkPermissions() for checking user privileges to view the results.\n- Added @TEMPLATE binding. You can use name or id of any template. If empty - will use template of each row.\n- [pdoResources] Improved parameter "&context".\n- [pdoResources] Script properties are now passed to chunks. You can send any placeholders to it.\n\n1.6.0 pl1\n==============\n- Fixed compatibility issues in PHP < 5.3.\n\n1.6.0 pl\n==============\n- Added parameter "&loadModels" for comma-separated list of 3rd party components that needed for query.\n- Added parameters "&prepareTVs" and "&processTVs".\n- Added parameters "&tvFilters", "&tvFiltersAndDelimiter" and "&tvFiltersAndDelimiter".\n- Added support of parameters "&sortbyTV" and "&sortdirTV" for compatibility with getResources.\n- Added ability to use @INLINE and @FILE bindings in all template parameters.\n- Removed method pdoTools::getPlaceholders.\n\n1.5.0 pl2\n==============\n- Fixed sort of decimals in TVs.\n\n1.5.0 pl1\n==============\n- Added processing of simple [[~id]] placeholders in fastMode.\n- Added support of default value for TVs.\n- Improved sort by TVs of types "number" and "date".\n\n1.5.0 rc\n==============\n- [pdoUsers] Added new snippet "pdoUsers".\n- [pdoResources] Fixed "toSeparatePlaceholders".\n- [pdoResources] Parameter "parents" now supports dash prefix for excluding resources from query by parent.\n- [pdoResources] Fixed issue when snippet runs multiple times at one page.\n\n1.4.1 pl1\n==============\n- Improved "context" processing.\n- Fixed "idx" when multiple snippets called at one page.\n- Fixed default sortby when joined tables exists.\n\n1.4.1 beta3\n==============\n- Added parameters "tplCondition", "tplOperator" and "conditionalTpls".\n- Added parameter "select" for specifying needed columns of selected tables. Can be a JSON string with array.\n- Added parameter "toSeparatePlaceholders".\n- Improved "pdoResources" snippet.\n\n1.4.0 beta1\n==============\n- Ability to specify JSON string in "sortby", for example "&sortby=`{"pagetitle":"asc","createdon":"desc"}`"\n- Added automatic replacement of tvs in "where" and "having" parameters.\n- Added automatic replacement of tvs in "sortby" parameter.\n- Removed example snippet\n- Added snippet "pdoResources", that could replace "getResources".\n- Added method pdoTools::defineChunk() for chunk of given idx.\n- Added "memory usage" in log.\n\n1.3.0\n==============\n- Improved placeholders processing when fastMode is enabled.\n- Added support of "having" conditions.\n\n1.2.1\n==============\n- Fixed not working "includeTVs" when "leftJoin" is empty.\n\n1.2.0\n==============\n- Native render of quick placeholders, such as "<!--pdotools_introtext <blockquote>[[+introtext]]</blockquote>-->".\n- Added joining of TVs in pdoFetch. Use parameter "includeTVs" with comma-separated list of template variables.\n- Added method pdoFetch::setConfig() for proper setting options when you run multiple pdoTools snippets at the one page.\n- Method pdoTools::makeArray is now recursive, for processing a multidimensional arrays of values.\n\n1.1.0\n==============\n- Improved getChunk function.\n\n1.0.1\n==============\n- Fixed setting total in "chunks" mode.\n- Improved displaying "where" condition in log.\n\n1.0.0\n==============\n- Initial release.";s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:646:"--------------------\npdoTools\n--------------------\nAuthor: Vasiliy Naumkin <bezumkin@yandex.ru>\n--------------------\n\nSmall library for creating fast snippets for MODX Revolution that works through PDO.\n\nRequired by Tickets and miniShop2.\n\nMain features\n- Builds queries with xPDO.\n- Retrieve results with PDO.\n- Improved pdoTools::getChunk() function, that processing placeholders faster, than original modX::getChunk().\n\npdoTools snippets will work so faster, than more fields you will retrieve from database at one query.\n\n--------------------\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/bezumkin/pdoTools/issues\n";s:9:"signature";s:18:"pdotools-2.11.2-pl";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:46:"/workspace/package/install/pdotools-2.11.2-pl/";s:14:"package_action";i:0;}', 'pdoTools', 'a:38:{s:2:"id";s:24:"5b162064bc8dd3560d8b4567";s:7:"package";s:24:"50f8468bf2455436ec00000d";s:12:"display_name";s:18:"pdotools-2.11.2-pl";s:4:"name";s:8:"pdoTools";s:7:"version";s:6:"2.11.2";s:13:"version_major";s:1:"2";s:13:"version_minor";s:2:"11";s:13:"version_patch";s:1:"2";s:7:"release";s:2:"pl";s:8:"vrelease";s:2:"pl";s:14:"vrelease_index";s:0:"";s:6:"author";s:9:"bezumkin2";s:11:"description";s:7:"<p></p>";s:12:"instructions";s:158:"<p></p><p>For example just run:</p><p>&#91;&#91;!pdoPage?element=`pdoResources`&#93;&#93;</p><p>&#91;&#91;!+page.nav&#93;&#93;</p><p></p><p></p><p></p><p></p>";s:9:"changelog";s:162:"<a href="https://raw.githubusercontent.com/bezumkin/pdoTools/master/core/components/pdotools/docs/changelog.txt" title="" target="_blank">See on GitHub</a><p></p>";s:9:"createdon";s:24:"2018-06-05T05:32:20+0000";s:9:"createdby";s:9:"bezumkin2";s:8:"editedon";s:24:"2018-07-19T19:18:59+0000";s:10:"releasedon";s:24:"2018-06-05T05:32:20+0000";s:9:"downloads";s:6:"211097";s:8:"approved";s:4:"true";s:7:"audited";s:5:"false";s:8:"featured";s:5:"false";s:10:"deprecated";s:5:"false";s:7:"license";s:5:"GPLv2";s:7:"smf_url";s:0:"";s:10:"repository";s:24:"4d4c3fa6b2b0830da9000001";s:8:"supports";s:3:"2.3";s:8:"location";s:60:"http://modx.com/extras/download/?id=5b162065bc8dd3560d8b4568";s:9:"signature";s:18:"pdotools-2.11.2-pl";s:11:"supports_db";s:5:"mysql";s:16:"minimum_supports";s:3:"2.3";s:9:"breaks_at";s:8:"10000000";s:10:"screenshot";s:97:"http://modx.s3.amazonaws.com/extras/50f8468bf2455436ec00000d/ffe1e89f12c51f01ad55ce39b88731b1.jpg";s:4:"file";a:7:{s:2:"id";s:24:"5b162065bc8dd3560d8b4568";s:7:"version";s:24:"5b162064bc8dd3560d8b4567";s:8:"filename";s:32:"pdotools-2.11.2-pl.transport.zip";s:9:"downloads";s:4:"6772";s:6:"lastip";s:13:"5.101.156.190";s:9:"transport";s:4:"true";s:8:"location";s:60:"http://modx.com/extras/download/?id=5b162065bc8dd3560d8b4568";}s:17:"package-signature";s:18:"pdotools-2.11.2-pl";s:10:"categories";s:9:"utilities";s:4:"tags";s:0:"";}', 2, 11, 2, 'pl', 0);
INSERT INTO `chisto_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('phpthumbon-1.3.1-pl', '2018-07-19 19:26:19', '2018-07-19 19:27:58', '2018-07-19 19:27:58', 0, 1, 1, 0, 'phpthumbon-1.3.1-pl.transport.zip', NULL, 'a:8:{s:7:"license";s:7815:"                  GNU LESSER GENERAL PUBLIC LICENSE\r\n                       Version 3, 29 June 2007\r\n\r\n Copyright (C) 2007 Free Software Foundation, Inc. <http://fsf.org/>\r\n Everyone is permitted to copy and distribute verbatim copies\r\n of this license document, but changing it is not allowed.\r\n\r\n\r\n  This version of the GNU Lesser General Public License incorporates\r\nthe terms and conditions of version 3 of the GNU General Public\r\nLicense, supplemented by the additional permissions listed below.\r\n\r\n  0. Additional Definitions.\r\n\r\n  As used herein, "this License" refers to version 3 of the GNU Lesser\r\nGeneral Public License, and the "GNU GPL" refers to version 3 of the GNU\r\nGeneral Public License.\r\n\r\n  "The Library" refers to a covered work governed by this License,\r\nother than an Application or a Combined Work as defined below.\r\n\r\n  An "Application" is any work that makes use of an interface provided\r\nby the Library, but which is not otherwise based on the Library.\r\nDefining a subclass of a class defined by the Library is deemed a mode\r\nof using an interface provided by the Library.\r\n\r\n  A "Combined Work" is a work produced by combining or linking an\r\nApplication with the Library.  The particular version of the Library\r\nwith which the Combined Work was made is also called the "Linked\r\nVersion".\r\n\r\n  The "Minimal Corresponding Source" for a Combined Work means the\r\nCorresponding Source for the Combined Work, excluding any source code\r\nfor portions of the Combined Work that, considered in isolation, are\r\nbased on the Application, and not on the Linked Version.\r\n\r\n  The "Corresponding Application Code" for a Combined Work means the\r\nobject code and/or source code for the Application, including any data\r\nand utility programs needed for reproducing the Combined Work from the\r\nApplication, but excluding the System Libraries of the Combined Work.\r\n\r\n  1. Exception to Section 3 of the GNU GPL.\r\n\r\n  You may convey a covered work under sections 3 and 4 of this License\r\nwithout being bound by section 3 of the GNU GPL.\r\n\r\n  2. Conveying Modified Versions.\r\n\r\n  If you modify a copy of the Library, and, in your modifications, a\r\nfacility refers to a function or data to be supplied by an Application\r\nthat uses the facility (other than as an argument passed when the\r\nfacility is invoked), then you may convey a copy of the modified\r\nversion:\r\n\r\n   a) under this License, provided that you make a good faith effort to\r\n   ensure that, in the event an Application does not supply the\r\n   function or data, the facility still operates, and performs\r\n   whatever part of its purpose remains meaningful, or\r\n\r\n   b) under the GNU GPL, with none of the additional permissions of\r\n   this License applicable to that copy.\r\n\r\n  3. Object Code Incorporating Material from Library Header Files.\r\n\r\n  The object code form of an Application may incorporate material from\r\na header file that is part of the Library.  You may convey such object\r\ncode under terms of your choice, provided that, if the incorporated\r\nmaterial is not limited to numerical parameters, data structure\r\nlayouts and accessors, or small macros, inline functions and templates\r\n(ten or fewer lines in length), you do both of the following:\r\n\r\n   a) Give prominent notice with each copy of the object code that the\r\n   Library is used in it and that the Library and its use are\r\n   covered by this License.\r\n\r\n   b) Accompany the object code with a copy of the GNU GPL and this license\r\n   document.\r\n\r\n  4. Combined Works.\r\n\r\n  You may convey a Combined Work under terms of your choice that,\r\ntaken together, effectively do not restrict modification of the\r\nportions of the Library contained in the Combined Work and reverse\r\nengineering for debugging such modifications, if you also do each of\r\nthe following:\r\n\r\n   a) Give prominent notice with each copy of the Combined Work that\r\n   the Library is used in it and that the Library and its use are\r\n   covered by this License.\r\n\r\n   b) Accompany the Combined Work with a copy of the GNU GPL and this license\r\n   document.\r\n\r\n   c) For a Combined Work that displays copyright notices during\r\n   execution, include the copyright notice for the Library among\r\n   these notices, as well as a reference directing the user to the\r\n   copies of the GNU GPL and this license document.\r\n\r\n   d) Do one of the following:\r\n\r\n       0) Convey the Minimal Corresponding Source under the terms of this\r\n       License, and the Corresponding Application Code in a form\r\n       suitable for, and under terms that permit, the user to\r\n       recombine or relink the Application with a modified version of\r\n       the Linked Version to produce a modified Combined Work, in the\r\n       manner specified by section 6 of the GNU GPL for conveying\r\n       Corresponding Source.\r\n\r\n       1) Use a suitable shared library mechanism for linking with the\r\n       Library.  A suitable mechanism is one that (a) uses at run time\r\n       a copy of the Library already present on the user\'s computer\r\n       system, and (b) will operate properly with a modified version\r\n       of the Library that is interface-compatible with the Linked\r\n       Version.\r\n\r\n   e) Provide Installation Information, but only if you would otherwise\r\n   be required to provide such information under section 6 of the\r\n   GNU GPL, and only to the extent that such information is\r\n   necessary to install and execute a modified version of the\r\n   Combined Work produced by recombining or relinking the\r\n   Application with a modified version of the Linked Version. (If\r\n   you use option 4d0, the Installation Information must accompany\r\n   the Minimal Corresponding Source and Corresponding Application\r\n   Code. If you use option 4d1, you must provide the Installation\r\n   Information in the manner specified by section 6 of the GNU GPL\r\n   for conveying Corresponding Source.)\r\n\r\n  5. Combined Libraries.\r\n\r\n  You may place library facilities that are a work based on the\r\nLibrary side by side in a single library together with other library\r\nfacilities that are not Applications and are not covered by this\r\nLicense, and convey such a combined library under terms of your\r\nchoice, if you do both of the following:\r\n\r\n   a) Accompany the combined library with a copy of the same work based\r\n   on the Library, uncombined with any other library facilities,\r\n   conveyed under the terms of this License.\r\n\r\n   b) Give prominent notice with the combined library that part of it\r\n   is a work based on the Library, and explaining where to find the\r\n   accompanying uncombined form of the same work.\r\n\r\n  6. Revised Versions of the GNU Lesser General Public License.\r\n\r\n  The Free Software Foundation may publish revised and/or new versions\r\nof the GNU Lesser General Public License from time to time. Such new\r\nversions will be similar in spirit to the present version, but may\r\ndiffer in detail to address new problems or concerns.\r\n\r\n  Each version is given a distinguishing version number. If the\r\nLibrary as you received it specifies that a certain numbered version\r\nof the GNU Lesser General Public License "or any later version"\r\napplies to it, you have the option of following the terms and\r\nconditions either of that published version or of any later version\r\npublished by the Free Software Foundation. If the Library as you\r\nreceived it does not specify a version number of the GNU Lesser\r\nGeneral Public License, you may choose any version of the GNU Lesser\r\nGeneral Public License ever published by the Free Software Foundation.\r\n\r\n  If the Library as you received it specifies that a proxy can decide\r\nwhether future versions of the GNU Lesser General Public License shall\r\napply, that proxy\'s public statement of acceptance of any version is\r\npermanent authorization for you to choose that version for the\r\nLibrary.\r\n";s:6:"readme";s:384:"phpThumbOn\r\n=========\r\nОптимизированный сниппет phpThumbOf под MODX Revolution. Схожый синтаксис, но более быстрая работа. Более подробно смотрите в changelog\r\n\r\nПроект на GitHub: https://github.com/AgelxNash/phpthumbon\r\nДокументация: http://blog.agel-nash.ru/addon/phpthumbon.html";s:9:"changelog";s:2520:"phpThumbOn 1.3.1 (21.12.2014)\n=====================================\n- modPhpThumb вместо чистого phpThumb\n\nphpThumbOn 1.3.0 (23.09.2014)\n=====================================\n- Немецкий и Английский лексикон\n- Обновлен пакет для совместимости с MODX 2.3.x\n\nphpThumbOn 1.2.1 (27.12.2013)\n=====================================\n- Баг со сбросом информации об объекте при ответе процессора\n- Исправление проблемы с абсолютными путями\n\nphpThumbOn 1.2.0 (26.12.2013)\n=====================================\n- Удаление ранее созданных превью при повторном вызове сниппета с другими параметрами\n- Избавление от пустоты на выходе, если скрипт не смог создать превьюху\n- Кеширование сжатых noimage картинок\n- Возможность обработки нескольких картинок очереди за 1 запуск процессора\n- Исправлено логирование проблемных картинок\n- Кастомные имена превьюх\n\nphpThumbOn 1.1.0 (06.12.2013)\n=====================================\n- Добавлена поддержка очереди сжатия\n\nphpThumbOn 1.0.2 (16.09.2013)\n=====================================\n- Исправлена работа в режиме AJAX\n\nphpThumbOn 1.0.1 (25.08.2013)\n=====================================\n- Исправлено некорректное восприятие параметра input с начальным слешем\n\nphpThumbOn 1.0.0 (02.08.2013)\n=====================================\n- Имя файла превьюхи максимально вычищенно от непонятных последовательностей символов\n- Картинки семантично раскладываются по папкам в соответствии с оригинальными картинками\n- Удалены постоянные проверки и отчистки всего кеша\n- Отключена поддержка AWS Amazon\n- Добавлен ряд параметров отвечающих за качество и тип превьюхи по умолчанию\n- Код сниппета оптимизирован под множественные вызовы";s:9:"signature";s:19:"phpthumbon-1.3.1-pl";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:47:"/workspace/package/install/phpthumbon-1.3.1-pl/";s:14:"package_action";i:0;}', 'phpThumbOn', 'a:38:{s:2:"id";s:24:"5496b872dc532f2c59060674";s:7:"package";s:24:"5241d84962cf2423f0000842";s:12:"display_name";s:19:"phpthumbon-1.3.1-pl";s:4:"name";s:10:"phpThumbOn";s:7:"version";s:5:"1.3.1";s:13:"version_major";s:1:"1";s:13:"version_minor";s:1:"3";s:13:"version_patch";s:1:"1";s:7:"release";s:2:"pl";s:8:"vrelease";s:2:"pl";s:14:"vrelease_index";s:0:"";s:6:"author";s:9:"ilyautkin";s:11:"description";s:556:"<p></p><ul><li>Queuing support</li><li>Fixed mode AJAX</li><li>The incorrect perception of the input parameter with the initial slash</li><li>File name prevyuhi maximum Scrubbing of unknown character sequences</li><li>Pictures semantically decomposed into folders according to the original picture</li><li>Removed constant checking and cleaning up all the cache</li><li>Not support AWS Amazon</li><li>Added a number of parameters responsible for the quality and type of prevyuhi default</li><li>Code snippet is optimized for multiple calls</li></ul><p></p>";s:12:"instructions";s:389:"<p>For a complete replacement phpthumbof will need to change the call &#91;&#91;phpThumbOf? &amp;...&#93;&#93; to &#91;&#91;phpthumbon? &amp;...&#93;&#93; or you can create a snippet:</p><p>return $modx-&gt;runSnippet(\'phpThumbOn\', $scriptProperties);</p><p></p><p><b>Processing job queue</b>:&nbsp;http://example.com/assets/components/phpthumbon/connector.php?action=login&amp;ctx=web</p>";s:9:"changelog";s:47:"<p></p><ul><li>Use modPhpThumb</li></ul><p></p>";s:9:"createdon";s:24:"2014-12-21T12:09:22+0000";s:9:"createdby";s:9:"ilyautkin";s:8:"editedon";s:24:"2018-07-19T18:35:13+0000";s:10:"releasedon";s:24:"2014-12-21T12:09:22+0000";s:9:"downloads";s:5:"22327";s:8:"approved";s:4:"true";s:7:"audited";s:5:"false";s:8:"featured";s:5:"false";s:10:"deprecated";s:5:"false";s:7:"license";s:5:"GPLv2";s:7:"smf_url";s:0:"";s:10:"repository";s:24:"4d4c3fa6b2b0830da9000001";s:8:"supports";s:3:"2.2";s:8:"location";s:60:"http://modx.com/extras/download/?id=5496b873dc532f2c59060676";s:9:"signature";s:19:"phpthumbon-1.3.1-pl";s:11:"supports_db";s:5:"mysql";s:16:"minimum_supports";s:3:"2.2";s:9:"breaks_at";s:8:"10000000";s:10:"screenshot";s:0:"";s:4:"file";a:7:{s:2:"id";s:24:"5496b873dc532f2c59060676";s:7:"version";s:24:"5496b872dc532f2c59060674";s:8:"filename";s:33:"phpthumbon-1.3.1-pl.transport.zip";s:9:"downloads";s:5:"18344";s:6:"lastip";s:12:"92.53.96.183";s:9:"transport";s:4:"true";s:8:"location";s:60:"http://modx.com/extras/download/?id=5496b873dc532f2c59060676";}s:17:"package-signature";s:19:"phpthumbon-1.3.1-pl";s:10:"categories";s:28:"content,multimedia,utilities";s:4:"tags";s:0:"";}', 1, 3, 1, 'pl', 0);
INSERT INTO `chisto_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('tinymce-4.3.4-pl', '2018-07-19 19:24:31', '2018-07-19 19:28:06', '2018-07-19 19:28:06', 0, 1, 1, 0, 'tinymce-4.3.4-pl.transport.zip', NULL, 'a:8:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:9:"changelog";s:76033:"﻿\r\nThis file shows the changes in recent releases of TinyMCE for MODx. The most current release is usually the \r\ndevelopment release, and is only shown to give an idea of what\'s currently in the pipeline.\r\n\r\nTinyMCE 4.3.4\r\n====================================\r\n- Use modx->controller->addJavascript/addHtml/etc to fix issue in MODX Revolution 2.5.1\r\n\r\nTinyMCE 4.3.3\r\n====================================\r\n- Change popup windows to more convenient modals\r\n- Update TinyMCE to 3.5.4.1\r\n\r\nTinyMCE 4.3.2\r\n====================================\r\n- Update Czech/German translation\r\n- [#74] Fix inclusion of english as fallback for language\r\n- [#80] Make context menu use MODxLink plugin\r\n- Upgrade TinyMCE to 3.4.7\r\n\r\nTinyMCE 4.3.1\r\n====================================\r\n- MODX 2.2 compatibility fixes\r\n\r\nTinyMCE 4.3.0\r\n====================================\r\n- [#70] Fixes to cirkuit skin with missing CSS styles\r\n- [#71] Update TinyMCE to v3.4.5\r\n- [#64] Add tiny.template_list_snippet setting for grabbing template list from a Snippet\r\n- [#66] Fix issues with Revolution 2.2.0 code\r\n- [#63] Add tiny.base_url setting for managing the document_base_url tinymce setting\r\n\r\nTinyMCE 4.2.4\r\n====================================\r\n- Updated TinyMCE to 3.4.2\r\n- Fix issue where recursion detected xPDO error was showing in logs on chunk editing\r\n- [#55] Fix help for element_format and preformatted descriptions in plugin properties\r\n- [#53] Languages added/update: German, English, French, Indonesian, Japanese, Dutch, Russian, Ukrainian\r\n\r\nTinyMCE 4.2.2\r\n====================================\r\n- [#49] Added spellchecker files\r\n\r\nTinyMCE 4.2.1\r\n====================================\r\n- [#45] [#47] Fixes for front-end usage and compatibility with NewsPublisher\r\n- Add compressed JS for faster loading\r\n\r\nTinyMCE 4.2.0\r\n====================================\r\n- [#44] Fix issue with invalid forced_root_block value that causes TinyMCE to hang on empty resources\r\n- [#42] Fix issue with passed-in values that caused TinyMCE to not load correctly\r\n- Update TinyMCE to 3.3.9.3\r\n- [#21] Add a bunch of system settings for controlling TinyMCE output and cleanup\r\n- [#41] Add tiny.forced_root_block setting\r\n- Fix issue with using tinymce with richtext TVs when Resource\'s richtext is set to false\r\n- Fix issue with using tinymce in front-end\r\n\r\nTinyMCE 4.1.2\r\n====================================\r\n- [#33] Fixed missing language reference issue\r\n- Fixed problem that stripped // in http:// on image selection from MODx.Browser\r\n- Fixed language issue with modxlink plugin\r\n\r\nTinyMCE 4.1.1\r\n====================================\r\n- Fixed issue with Tiny preventing save bar loading on derivative Resource types\r\n\r\nTinyMCE 4.1.0\r\n====================================\r\n- Fixed issues with context support of thumbnails and relative paths\r\n- Fixed issues with language overriding\r\n- Added theme_advanced_blockformats system setting\r\n- Fixed bugs with width of tinymce in panels\r\n- Fixed issue with language loading in non-english languages and modxlink plugin\r\n- Enabled resizing by default on editors\r\n- Added "Toggle Editor" checkbox to main content panels\r\n- Fixed issue where buttons/sourceview didn\'t mark form dirty\r\n\r\nTinyMCE 4.0.5\r\n====================================\r\n- Added fixes for bugs with template changing and richtext tvs\r\n\r\nTinyMCE 4.0.4\r\n====================================\r\n- Fixed random bugs with ampersands and other issues\r\n- Fixed bugs in relative path mapping\r\n- Fixed bugs that occur only in strict PHP environments\r\n\r\nTinyMCE 4.0.3\r\n====================================\r\n- Fixed bug where TinyMCE wasn\'t working with TVs\r\n- Moved config array to properties array to prevent collusions of config vars in tiny JS\r\n- Added setting to toggle between uncompressed TinyMCE JS library\r\n- Fixed random issue with element being loaded twice\r\n- Fixed JSON issue with PHP installs less than 5.3.0\r\n- Fixed issues with richtext TVs\r\n\r\nTinyMCE 4.0.2\r\n====================================\r\n- Fixed issues with contextual persistence in file browser\r\n\r\nTinyMCE 4.0.1\r\n====================================\r\n- Updated TinyMCE to 3.3.8, fixed random bugs\r\n- Added cirkuit skin and made it default\r\n- Cleaned up code execution in plugin\r\n\r\nTinyMCE 4.0.0\r\n====================================\r\n- Added lexicon support for tiny system settings\r\n- Added support for template plugin, can now use tiny.template_list setting\r\n- Fixed bug with editor theme\r\n- Added language strings for dialogs\r\n- Fixed bug with language being ignored\r\n- Fixed bug with TVs on non-document panels as TVs\r\n- Fixed bug where TinyMCE was ignoring save syncing\r\n- Adjusted rte loading logic to properly load right data for TV rtes\r\n- Fixed bug with mce tags being added in, cleanup setting now defaults to true\r\n- Added modxlink tinymce plugin to add searchability to link popup\r\n- Fixed bug where css_selectors setting wasnt working\r\n- Added resolver to auto-set which_editor to TinyMCE and use_editor to 1 when installing\r\n- Added svn props to changelog\r\n\r\nTinyMCE 3.2.7.0 (LastChangedRevision: 581, LastChangedDate: 2009-11-06 08:20:21 -0600 (Fri, 06 Nov 2009))\r\n====================================\r\n- Optimized lexicon to work with Revo RC-2\r\n- Adjusted resolver code to work with Revo RC2\r\n- [#TINYMCE-52] Added skin and skin_variant properties for TinyMCE; also set the default to the silver o2k7 theme\r\n- [#TINYMCE-53] Added tiny.custom_buttons5 setting for 5th row of buttons options\r\n- [#TINYMCE-54] Added table_inline_editing property\r\n- Removed deprecated assets docs dir\r\n- [#TINYMCE-42], [#TINYMCE-38], [#TINYMCE-46], [#TINYMCE-43], [#TINYMCE-29], [#TINYMCE-6], [#TINYMCE-47] Fixed bugs with saving not syncing, bugs where RTE would not reload in TVs when \'Reload\' was clicked, image path bugs, other bugs\r\n- Fixed bug with toggle not found in SVN\r\n- Fixed various bugs\r\n- Fixed bug with css style selectors\r\n- Changed integrations to work in Revo-beta5.\r\n- Added hook for OnRichTextBrowserInit to allow for proper integrations into MODx.Browser\r\n- Added hook for OnBeforeManagerPageInit to properly register TinyMCE JS and Ext-derived object before page load; this allows using the \'tinymce\' xtype in ExtJS forms\r\n\r\n====================================\r\nVersion 3.2.0.1 (2008-09-17)\r\n	Fixed bug where font sizes and faces wouldn\'t be changed correctly when there was a parent with a different style.\r\n	Fixed bug where adding fonts to the same selection would produce redundant spans.\r\nVersion 3.2 (2008-09-11)\r\n	Added new text style support, it will now use span elements internally instead of font elements.\r\n	Added new improved support for the theme_advanced_font_sizes option, check the Wiki for details.\r\n	Added new keep_style setting that maintains the text style on return/enter on non IE browsers, enabled by default.\r\n	Added new onBeforeSetContent/onBeforeGetContent/onSetContent/onGetContent events to the Selection class.\r\n	Added new selectByIndex method to ListBox class. This enables you to select list items by an index instead of a value.\r\n	Added new possibility to the select method of the ListBox class. This can now have a selector function as it\'s value argument.\r\n	Added new possibility to skip the loading of popups css by setting the feature popup_css to the value false.\r\n	Added new possibility to skip translation of popups by setting the translate_i18n feature to false.\r\n	Added new element_format option enables you to produce HTML element endings instead of XHTML. But we are still in the XHTML is better camp.\r\n	Added missing allowfullscreen and quality options for flash elements, this will now get correctly stored.\r\n	Fixed bug where table cell dialog didn\'t close properly unless the accessibility_warnings option was set to false.\r\n	Fixed bug where the modal dialog blocker element for inlinepopups wasn\'t placed at a correct location if the page had scroll.\r\n	Fixed bug where non inline dialogs didn\'t close correctly if the inlinepopups plugin was used.\r\n	Fixed bug where non inline dialogs could make the modal dialog blocker to work incorrectly.\r\n	Fixed bug where style select wasn\'t populated correctly if you pressed the arrow. Patch by Hari Karam Singh.\r\n	Fixed bug where toggling the fullscreen mode didn\'t restore scrollbars on IE when the editor was inside a frame. Patch by Jacob Barrett.\r\n	Fixed bug where inserting flash contents using the template plugin didn\'t work correctly.\r\n	Fixed bug where inserting flash contents using the selection.setContent or mceInsertContent command didn\'t work correctly.\r\n	Fixed bug where IE would produce an exception if a comment started with -.\r\n	Fixed bug where the blockquote button would wrap lists incorrectly on non IE browsers.\r\n	Fixed bug where Opera would display BR elements in the element path.\r\n	Fixed bug where xhtmlxtras didn\'t insert elements correctly on IE.\r\n	Fixed bug where the buttons wasn\'t activated correctly in the xhtmlxtras plugin.\r\n	Fixed bug where adding an object as the style attribute for the dom setAttribs method wouldn\'t work.\r\n	Fixed bug where the background color would bleed out to parent container element in Gecko.\r\n	Fixed bug where the insert column actions for tables would fail if you did it in a thead or tfoot. Patch contributed by T Andersen (tan73).\r\n	Fixed bug where event blocker element wasn\'t positioned correctly for the inlinepopups plugin.\r\n	Fixed bug where pasting from Office 2007 would produce an odd comment in the contents.\r\n	Fixed bug where the paste as plain text could remove an extra character. Patch contributed by Speednet.\r\n	Fixed bug where some characters where missing for the paste_replace_list option. Patch contributed by Speednet.\r\n	Fixed bug where removing non existing editor instances by the mceRemoveControl command would produce an error.\r\n	Fixed bug where meta elements with the name description would produce errors in IE.\r\n	Fixed bug where color and background colors wouldn\'t be updated properly.\r\n	Fixed bug where the createMenuButton of tinymce.ControlManager didn\'t implement the last class argument.\r\n	Fixed bug where the editor_css option was relative from the TinyMCE installation directory not the current page.\r\n	Fixed bug where elements wouldn\'t be padded if the element contained bogus br elements. For example TD elements.\r\n	Fixed bug where parsing of <body > in fullpage plugin would produce an error.\r\n	Fixed bug where relative urls with just ./ would become an empty string.\r\n	Fixed bug where outdent button would be disabled if inline_styles where set to false.\r\n	Fixed bug where replace with an empty search string would produce an error on IE.\r\n	Fixed bug where restoring the overflow state of the body in fullscreen plugin running on IE would produce vertical scrollbars.\r\n	Fixed bug where pressing return/enter in list items would sometimes move the caret the to top of the content area in FF.\r\n	Fixed bug where the style listbox wouldn\'t be updated correctly if you used the use_native_selects option.\r\n	Fixed bug where WebKit browsers would produce a div element when ending list elements using return.\r\n	Fixed so translation of popup contents only occurs if it\'s needed.\r\n	Optimized the URI object in regards or converting absolute URIs to relative URIs.\r\nVersion 3.1.1 (2008-08-18)\r\n	Added new getSize method to DOMUtils it will return the dimensions only of an element.\r\n	Added new alert/confirm methods to the tinyMCEPopup class to prevent focus problems and also to shorten method calls.\r\n	Added new plugin_preview_inline option to preview plugin to enable/disable native/inline dialogs.\r\n	Added new readonly option. If this is set the editor will only display the contents for the user.\r\n	Added missing tabindex and accesskey to input elements in the default valid_elements setup.\r\n	Updated firebug lite to 1.2, to enable it use the tiny_mce_dev.js?debug=1 on the development package.\r\n	Fixed so the preview dialog in the preview plugin uses inline dialogs/popups.\r\n	Fixed so CDATA sections remains intact through the serialization process of the DOM tree.\r\n	Fixed various issues with the getAttrib command. It will now return more correct values.\r\n	Fixed bug where the embed element wasn\'t properly parsed in the media plugin it now supports 3 formats.\r\n	Fixed bug where the noshade attribute was serialized incorrectly on IE.\r\n	Fixed bug where editing an existing link element didn\'t force it relative.\r\n	Fixed bug where image link creation fails on Safari if the image is aligned.\r\n	Fixed bug where it was possible to scroll the fullscreen mode in Opera 9.50.\r\n	Fixed bug where removal of center image alignment would fail. Patch contributed by Andrew Ozz.\r\n	Fixed bug where inlinedialogs didn\'t work properly if the doctype was incorrect in IE.\r\n	Fixed bug where cross domain loading didn\'t work correctly in Opera 9.50.\r\n	Fixed bug where breaking huge text blocks with return/enter key would scroll to end of block.\r\n	Fixed bug where replace button kept inserting the replacement text even if there is no more matches.\r\n	Fixed bug with fullpage plugin where value wasn\'t set correctly. Patch contributed by Pascal Chantelois.\r\n	Fixed bug where the dom utils setAttrib method call could produce an exception if the input was null/false.\r\n	Fixed bug where pressing backspace would sometimes remove one extra character in Gecko browsers.\r\n	Fixed bug where the native confirm/alert boxes would move focus to parent document if fired in dialogs.\r\n	Fixed bug where Opera 9.50 was telling you that the selection is collapsed even when it isn\'t.\r\n	Fixed bug where mceInsertContent would break up existing elements in Opera and Gecko.\r\n	Fixed bug where TinyMCE fails to detect some keyboard combos on Mac, contributed by MattyRob.\r\n	Fixed bug where replace all didn\'t move the caret to beginning of text before searching.\r\n	Fixed bug where the oninit callback wasn\'t executed correctly when the strict_loading_mode option was used, thanks goes to Nicholas Oxhoej.\r\n	Fixed bug where a access denied exception was thrown if some other script specified document.domain before loading TinyMCE.\r\n	Fixed so setting language to empty string will skip language loading if translations are made by some backend.\r\n	Fixed so dialog_type is automatically modal if you use the inlinepopups plugin use dialog_type : "window" to re-enable the old behavior.\r\nVersion 3.1.0.1 (2008-06-18)\r\n	Fixed bug where the Opera line break fix didn\'t work correctly on Mac OS X and Unix.\r\n	Fixed bug where IE was producing the default value the maxlength attribute of input elements.\r\nVersion 3.1.0 (2008-06-17)\r\n	Fixed bug where the paste as text didn\'t work correctly it encoded produced paragraphs and br elements.\r\n	Fixed bug where embed element in XHTML style didn\'t work correctly in the media plugin.\r\n	Fixed bug where style elements was forced empty in IE. The will now be wrapped in a comment just like script elements.\r\n	Fixed bug where some script elements wrapped in CDATA could fail to be serialized correctly.\r\n	Fixed bug where FF 3 produced -moz- internal styles in some style attributes.\r\n	Fixed bug where query strings and external URLs didn\'t work correctly in style attributes.\r\n	Fixed bug where shape attribute of area elements got serialized as rect regardless of it\'s initial value in IE 6.\r\n	Fixed bug where selection of elements inside layers would fail in IE since focus was moved to the document body.\r\n	Fixed bug where pressing enter/return in an editable select box would produce an __mce_add_custom__ class value.\r\n	Fixed bug where changing font size of text placed inside a colored text chunk would remove the parent node.\r\n	Fixed bug where Opera 9.5 final produced a strange line break behavior due to a workaround for previous Opera versions.\r\n	Fixed bug where text/background color would produce a strange focus problem when you tried to click on the body in IE.\r\n	Fixed issue where selecting the title of an listbox equals the old 2.x behavior of changing the value to an empty string.\r\n	Fixed issue where it was common for the media plugin to break if the _value attribute wasn\'t added for the param element.\r\n	Fixed issue where the wrong parent editor instance might be updated if you use fullscreen mode in an incorrect way.\r\n	Fixed issue where Safari was producing a warning about the base element not being closed correctly.\r\n	Removed redundant form element name matching from regexp in the DOMUtils class.\r\nVersion 3.0.9 (2008-06-02)\r\n	Added new contextmenu_offset_x/contextmenu_offset_y options for the contextmenu plugin.\r\n	Added cite attribute to the default rule for the blockquote element.\r\n	Added support for using arrow keys for selection of items in listboxes.\r\n	Added support for using arrow keys for selection of items in dropmenus.\r\n	Fixed bug where blockformat change on elements with BR inside them didn\'t change correctly on Firefox.\r\n	Fixed bug where removing table rows inside thead or tfoot would remove the whole table if it was the last one.\r\n	Fixed bug where XHR synchronous mode didn\'t execute the callback handlers synchronously.\r\n	Fixed bug where setting border to 0 didn\'t add border: 0 to the style attribute when using the advimage dialog.\r\n	Fixed bug where the selection of images and table cells didn\'t work correctly when the editor is placed in a frame and running on IE.\r\n	Fixed bug where the store/restore of a selection didn\'t work correctly in non IE browsers.\r\n	Fixed bug where only the first element would be invalid for the invalid_elements option.\r\n	Fixed bug where paste as plain text didn\'t encode the characters correctly when they where inserted.\r\n	Fixed bug where HTML source window couldn\'t be maximized on Gecko when the maximizable feature was enabled.\r\n	Fixed bug where color selection using the color picker could produce exception in IE.\r\n	Fixed bug where font size changes could produce produce extra redundant elements.\r\n	Fixed bug where IE could produce unknown runtime error if you replaced a image with another image from a separate frame.\r\n	Fixed bug where the domLoaded state for the Event class wasn\'t set correctly if the editor was loaded dynamically using the gzip compressor.\r\n	Fixed bug where handling of the base element for a page would produce incorrect urls. Based on a patch contributed by John LeSueur.\r\n	Fixed bug where table constraint alert boxes was presented with an empty value and wasn\'t the skinned inline ones.\r\n	Fixed bug where the onChange event wasn\'t fired when the form was submitted. It\'s now also triggered when the save method is called.\r\n	Fixed bug where encoding set to xml didn\'t work as expected. It now encodes the contents into XML entities.\r\n	Fixed bug where numrows didn\'t work correctly for the merge cells dialog of the table plugin.\r\n	Fixed bug where the onGetContent event was fired even when the no_events flag was set.\r\n	Fixed bug where the preview panels for the advimage and the media plugin could overflow on Safari and FF 3.\r\n	Fixed bug where the editing and removal of abbr elements using the xhtmlxtras plugin working correctly on IE.\r\n	Fixed bug where save button in the save plugin didn\'t work correctly on IE.\r\n	Fixed bug where dragging layers didn\'t work as expected since it would snap back to it\'s original location if you saved.\r\n	Fixed bug where the description of the template plugin dialog wasn\'t updated correctly.\r\n	Fixed bug where the values for frame and rules in the table dialogs where swapped.\r\n	Fixed bug where the elements like ins, del, cite, acronym and abbr didn\'t have the default editing style as the old 2.x branch.\r\n	Fixed bug where ask mode would lock the focused textarea if you pressed cancel in the confirm dialog on FF 3.\r\n	Fixed bug where ask mode would produce contents for empty textareas if you reloaded the page.\r\n	Fixed so the onGetContent event gets the full pass through object just like the other events.\r\n	Fixed so attributes for block elements remains the same when you change format of a element.\r\nVersion 3.0.8 (2008-04-30)\r\n	Fixed bug where IE would produce an error if textareas without names where converted.\r\n	Fixed bug where editor wasn\'t forced empty when there was only a single br or empty paragraph left.\r\n	Fixed bug where IE would produce an warning message if object elements where produced in the media plugins preview running on https.\r\n	Fixed bug where new addVer function didn\'t handle hash items correctly. Patch contributed by Mirek Burkon.\r\n	Fixed bug where font_size_style_values option wasn\'t applied correctly to fonts inside the editor.\r\n	Fixed bug where image selection could be lost if a image was edited using context menu on IE.\r\n	Fixed bug where style values wasn\'t updated properly due to an invalid regexp.\r\n	Fixed bug where IE 6 where displaying warning message about insecure items when inserting an image while using https. Patch contributed by Norifumi Sunaoka.\r\n	Fixed bug where IE was producing an auto save message if you selected a color from the color split button.\r\n	Fixed bug where backspace sometimes would move the caret to the end of the previous block in Gecko.\r\n	Fixed bug where the rowlayout manager didn\'t work as described in the documentation.\r\n	Fixed bug where the default options for the fullpage plugin wasn\'t applied correctly.\r\n	Fixed bug where selection would jump one character if you applied a styles to a words in non IE browsers.\r\n	Fixed bug where undo levels wasn\'t added correctly if you went back in undo history and added a new event.\r\n	Fixed bug where font size dropdown didn\'t mark the selected size in IE.\r\n	Fixed bug where the size of the editor was determined using clientWidth instead of offsetWidth.\r\n	Fixed so the onchange event doesn\'t fire on the initial undo level, it will also fire when the editor is blurred.\r\n	Fixed so the advhr plugin produces XHTML valid output instead of non standard attributes.\r\n	Fixed so blockquote gets converted into [quote] in when the bbcode plugin is enabled.\r\n	Fixed so theme_advanced_font_sizes can be named for example Font 1=1, Font 2=2 etc.\r\n	Fixed so editor_selector/editor_deselector can be regexps. By default only strings are allowed not part regexps like before.\r\n	Fixed so that the version suffix is optional. It still requires the build process so you need to export it manually.\r\n	Fixed so it\'s possible to tab to table cells in non Gecko browsers and also produce new rows if you tab at the end of a table. Contributed by Josh Peek.\r\nVersion 3.0.7 (2008-04-14)\r\n	Added new version suffix to all internal GET requests to make sure that the users cache gets cleared correctly.\r\n	Fixed issue with isDirty returning true event if it wasn\'t dirty on IE due to changes in tables during initialization.\r\n	Fixed memory leak in IE where if a page was unloaded before all images on the page was loaded it would leak.\r\n	Fixed bug in IE where underline and strikethrough could produce an exception error message.\r\n	Fixed bug where inserting paragraphs in totally empty table cells would produce odd effects.\r\n	Fixed bug where layer style data wasn\'t updated correctly due to some performance enhancements with the DOM serializer.\r\n	Fixed bug where it would convert the wrong element if there was two elements with the same name and id on the page.\r\n	Fixed bug where it was possible to add style information to the body element using the style plugin.\r\n	Fixed bug where Gecko would add an extra undo level some times due to the blur event.\r\n	Fixed bug where the underline icon would get active if the caret was inside a link element.\r\n	Fixed bug where merging th cells not working correctly. Patch contributed by Andr� R.\r\n	Fixed bug where forecolorpicker and backcolorpicker buttons where rendered incorrectly when the o2k7 skin was used.\r\n	Fixed bug where comment couldn\'t contain -- since it\'s invalid markup. It will now at least not break on those invalid comments.\r\n	Fixed bug where apos wasn\'t handled correctly in IE. It will now convert apos to &#39; on IE since that browser doesn\'t support that entity.\r\n	Fixed bug where entities wasn\'t encoded correctly inside pre elements since they where protected from whitespace removal.\r\n	Fixed bug where color split buttons where rendered incorrectly on IE6 when using the non default theme.\r\n	Fixed so caret is placed after links ones they are created, to improve usability of the editor.\r\n	Fixed so you can select tables by clicking on it\'s borders in non IE browsers to normalize the behavior.\r\n	Fixed so the menus can be toggled by clicking once more on the icon in listboxes, menubuttons and splitbuttons based on code contributed by Josh Peek.\r\n	Fixed so buttons can be labeled, currently only works with the default skin, so it\'s kind of experimental. Patch contributed by Daniel Insley.\r\n	Fixed so forecolorpicker and backcolorpicker remembers the last selected color. Patch contributed by Shane Tomlinson.\r\n	Fixed so that you can only execute the mceAddEditor command once for the same instance name.\r\n	Fixed so command functions added with addCommand can pass though the call to default handles if it returns true.\r\nVersion 3.0.6.2 (2008-04-07)\r\n	Fixed bug where empty tables couldn\'t be edited correctly on non IE browsers if they where loaded into the editor.\r\n	Fixed bug where it was impossible to resize layers correctly in IE since it thought it was an image.\r\n	Fixed bug where an editor instance was stealing focus in IE resulting in a scroll to the editor on page reloads.\r\n	Fixed bug where Safari was crashing on Mac OS X if you closed dialogs using the Esc key.\r\nVersion 3.0.6.1 (2008-04-04)\r\n	Added support for the missing mceAddFrameControl command. The input for this command has changed so consult the Wiki.\r\n	Fixed bug where sub menus for the drop menus would leave an empty element behind.\r\n	Fixed memory leak in IE if the editor was placed in a frame or iframe.\r\nVersion 3.0.6 (2008-04-03)\r\n	Added elements to the default value of valid_elements option. It now contains all XHTML strict elements and a few transitional.\r\n	Added more accessibility fixes, it\'s now possible to navigate and close list boxes and split button menus with the keyboard.\r\n	Added missing getInfo method to the contextmenu and safari plugin, this caused problems for the Drupal module.\r\n	Added new inlinepopups_zindex option to the inlinepopups plugin so that you can configure the default start z-index.\r\n	Added new setControlType method to the tinymce.ControlManager class. This method enables you to override the default classes.\r\n	Added ability to specific an optional control class to use instead of the default one for the ControlManager methods. Based on concept by Josh Peek.\r\n	Fixed bug where attribute rules for the DOM Serializer couldn\'t contain - or _ characters in their names.\r\n	Fixed bug where inlinepopups event blocker and modal dialog blocker elements produced vertical scrollbars.\r\n	Fixed bug where there was a rendering issue with quirks mode in Safari moving the resize handle to an incorrect position.\r\n	Fixed bug with forecolor/backcolor controls on IE. Sometimes elements positioned relative will generate display errors.\r\n	Fixed bug where a p2 was leaking out in the global name space when you selected a color from the forecolor/backcolor controls.\r\n	Fixed bug where empty paragraphs didn\'t work as expected in browsers other than IE.\r\n	Fixed bug where the load method of the tinymce.dom.ScriptLoader didn\'t check if the file was already loaded.\r\n	Fixed bug where the load method for the PluginManager and ThemeManager didn\'t check if a plugin/theme by a specific name was all ready loaded.\r\n	Fixed bug where the theme_advanced_link_targets option didn\'t work correctly with the advanced themes link dialog. Patch contributed by Arnold B.\r\n	Fixed bug where the style command would merge classes into empty span elements.\r\n	Fixed bug where the style command would remove empty span elements outside the current selection.\r\n	Fixed bug where the fix for the Safari backspace bug removed all editor contents if it was filled with empty paragraphs.\r\n	Fixed bug where alert and confirm boxes opened by the inlinepopups plugin would produce an exception if domain relaxing was used.\r\n	Fixed bug where Safari was adding style attributes to all elements when you paste them into the editor.\r\n	Fixed bug where the spellchecker menus was visually incorrect since the space for the non existing icon was still there.\r\n	Fixed bug where remove_linebreaks option didn\'t remove line breaks inside the text contents of a element.\r\n	Fixed bug where Safari 3.1 was introducing _mc_tmp into paragraphs due to the new querySelectorAll and a TinyMCE specific workaround.\r\n	Fixed bug where getParam method in the Editor class was returning incorrect objects and would mess up the font drop down. Patch contributed by speednet.\r\n	Fixed bug where the table dialog would produce an exception in IE when you edited tables since it tried to place focus in a disabled field.\r\n	Fixed bug where class attribute on some span elements was removed on cleanup.\r\n	Fixed bug where resizing the editor in IE could produce an exception if the editor width/height got to be a negative value.\r\n	Fixed bug where wmv files wouldn\'t play since the src param was used instead of the url param.\r\n	Fixed bug where br elements would be added here and there in Gecko. Geckos internal _moz_dirty br elements where serialized as well.\r\n	Fixed bug where editing named anchors would produce two anchors instead of one updated one.\r\n	Fixed bug where arrow and function keys didn\'t work when an noneditable element was focused within the editor.\r\n	Fixed bug where the dispatcher could produce an exception if the listener list was altered inside an event callback.\r\n	Fixed bug where it was impossible to totally empty the editor contents on Safari due to an mistreatment of nbsp as whitespace. Patch contributed by Andrew Ozz.\r\n	Fixed bug where TinyMCE would not convert textareas with the same name attribute value. It will now generate an unique id for those textareas.\r\n	Fixed bug where backspace/delete key was deleting td elements inside tables while running on Gecko.\r\n	Fixed bug where Firefox 3.0b4 and Opera 9.26 where scrolling to the top of document when pressing return/enter.\r\n	Fixed bug where the template plugin wasn\'t just inserting the mceTmpl tagged element.\r\n	Fixed bug where the alert method of the default WindowManager implementation didn\'t translate input language strings like the inlinepopups dialog does.\r\n	Fixed bugs with the backspace behavior in Gecko. The caret was placed on incorrect locations in the DOM sometimes.\r\n	Fixed so advimage dialog and table dialogs has support for editable select boxes for the class value.\r\n	Fixed so the media, pagebreak and spellchecker doesn\'t load it\'s default content.css file if the content_css option is set to false.\r\n	Fixed so the paste_use_dialog option works again it\'s enabled by default but can be disabled on IE. Patch contributed by Speednet.\r\n	Fixed so that the fullscreen editor is focused when switching fullscreen editing on.\r\n	Fixed so it\'s possible to edit images and links inside tables using the context menu.\r\n	Fixed so table dialogs and the advanced image dialog doesn\'t loose selection in IE if the dialogs where navigated/submitted with the keyboard.\r\n	Fixed so the theme_advanced_blockformats options can have named items for example title 1=h1;title 2=h2.\r\n	Fixed so it\'s possible to add a custom editor_css for the simple theme.\r\n	Fixed quirks with directionality rtl, patch contributed by Andrew Ozz.\r\n	Fixed so the inlinepopups default start zIndex is 300000.\r\n	Fixed typo in media plugin Shockware is now replaced with Shockwave.\r\n	Fixed psuedo memory leak in IE with the replaceChild method inside the DOMUtils.replace method.\r\n	Fixed so memory is released when an editor instance is removed from page.\r\n	Optimized the color split button menus so that they use less event handlers.\r\n	Removed the util/mclayer.js file since it\'s no longer used by any of the TinyMCE dialogs and is considered deprecated.\r\nVersion 3.0.5 (2008-03-12)\r\n	Added new black skin variant to the o2k7 skin contributed by Stefan Moonen.\r\n	Added new explode method to the tinymce core class. This does a split but removed whitespace it also defaults to a , delimiter.\r\n	Added new detection logic for IE 8 standards mode into the DOMUtils class strMode can now be checked to see if that mode is on/off.\r\n	Added new noscale option value for the scale select box for Flash in the media plugin.\r\n	Fixed bug where the menu for the ColorSplitButton wasn\'t removed when the editor was removed.\r\n	Fixed bug where font colors couldn\'t be edited correctly since the style of the element didn\'t get updated correctly.\r\n	Fixed bug where class of elements would get lost when TinyMCE was fixing incorrect HTML markup.\r\n	Fixed bug where table editing would produce double height values.\r\n	Fixed bug where width style value wouldn\'t be removed if you switched width unit from cm/em to pixels or percent.\r\n	Fixed bug where the search/replace input box wasn\'t auto focused like the other dialogs.\r\n	Fixed bug where the old mceAddControl command would use the fullscreen settings next time it created an instance.\r\n	Fixed bug where multiple lines where added to the target cell if you merged multiple empty cells.\r\n	Fixed bug where drop down menus would be incorrectly positioned inside scrollable divs.\r\n	Fixed bug where the separators of the silver skin variant didn\'t display correctly in IE 6.\r\n	Fixed bug where createStyleSheet seems to load scripts at opposite order in some IE versions.\r\n	Fixed bug where directionality could produce odd results for the UI and the dialogs.\r\n	Fixed bug where the DOM serializer wouldn\'t serialize custom namespaced attributes in IE 6 using the *[*] valid elements rule.\r\n	Fixed bug where table caption would be inserted after the thead element if you swapped a tr to be inside the thead.\r\n	Fixed bug where the youtube detection logic for the media plugin was to generic.\r\n	Fixed so the deprecated and undocumented theme_advanced_path_location set to none won\'t hide the whole statusbar.\r\n	Fixed so most input lists can have whitespace in them they are now split using the new tinymce.explode method.\r\n	Fixed so the popup_css and popup_css_add URLs are relative to where the current document is located.\r\n	Fixed various bugs and quirks with the store/restore selection logic.\r\n	Fixed so the editor starts in IE 8 standards mode but still that browser is very very buggy.\r\n	Fixed so dialog_type set to modal will block the background and other inline windows and only give access to the front most window.\r\nVersion 3.0.4.1 (2008-03-08)\r\n	Fixed critical bug where it was impossible to edit images when inlinepopups where used due to lost selection in IE.\r\nVersion 3.0.4 (2008-03-07)\r\n	Added new option constrain_menus, this enables you to force view port constraints on all menus. Contributed by Shane Tomlinson.\r\n	Fixed bug where table background wasn\'t visible inside the editor due to a default CSS rule overriding the style attribute.\r\n	Fixed bug where links would get a null class added if no styles was used in IE.\r\n	Fixed bug where spellchecker was auto focusing the editor in IE.\r\n	Fixed bug where document.domain would produce invalid argument if the editor was loaded in IE6 over a network UNC path.\r\n	Fixed bug where table height attribute was used, this is deprecated in XHTML so it now adds it as an style.\r\n	Fixed bug where textareas with style values would produce error in IE.\r\n	Fixed so the first element in each dialog is focused by default to enhance keyboard usage.\r\n	Fixed so you can add a mceFocus class to elements to make it auto focused.\r\n	Fixed so you can close dialogs using the esc key.\r\n	Fixed so you can press return/enter to submit the action of each dialog.\r\n	Fixed so tabbing inside an inline popups wont focus the resize anchor elements.\r\n	Fixed so you can press ok in inline alert messages using the return/enter key.\r\n	Fixed so textareas can be set to non px or % sizes for example em, cm, pt etc.\r\n	Fixed so non pixel values can be used in width/height properties for tables.\r\n	Fixed so the custom context menu can be disabled by holding down ctrl key while clicking.\r\n	Fixed so the layout for the o2k7 skin looks better if you don\'t have separators before and after list boxes.\r\n	Fixed so the sub classes get a copy of the super class constructor function to ease up type checking.\r\n	Fixed so font sizes for the format block previews are normalized according to http://www.w3.org/TR/CSS21/sample.html (it can be overridden).\r\n	Fixed so font sizes for h1-h6 in the default content.css is normalized according to http://www.w3.org/TR/CSS21/sample.html (it can be overridden).\r\nVersion 3.0.3 (2008-03-03)\r\n	Fixed bug where an error about document.domain would be thrown if TinyMCE was loaded using a different port.\r\n	Fixed bug where mode exact would convert textareas without id or name if the elements option was omitted.\r\n	Fixed bug where the caret could be placed at an incorrect location when backspace was used in Gecko.\r\n	Fixed bug where local file:// URLs where converted into absolute domain URLs.\r\n	Fixed bug where an error was produced if a editor was removed inside an editor command.\r\n	Fixed bug where force_p_newlines didn\'t effect the paste plugin correctly.\r\n	Fixed bug where the paste plugin was producing an exception on IE if you pasted contents with middots.\r\n	Fixed bug where delete key could produce exceptions in Gecko sometimes due to the fix for the table cell bug.\r\n	Fixed bug where the layer plugin would produce an visual add class called mceVisualAid this one is now renamed to mceItemVisualAid to mark it internal.\r\n	Fixed bug where TinyMCE wouldn\'t initialize properly if ActiveX controls was disabled in IE.\r\n	Fixed bug where tables and other elements that had visual aids on them would produce an extra space after any custom class names.\r\n	Fixed bug where search with an empty string would produce some odd "invalid pointer" error in IE.\r\n	Fixed bug where elements like menus where placed at incorrect positions in Opera 9.26.\r\n	Fixed bug where IE was loosing focus of the editor when you clicked some dropmenu and if it was placed in a frame or iframe.\r\n	Fixed bug where focus of images could be lost in IE if you focused the accessibility confirm dialog in the advimage plugin.\r\n	Fixed bug where nestled font elements would produce odd output like missing font elements.\r\n	Fixed bug where text colors and styles got removed if invalid_elements included the font element.\r\n	Fixed bug where text-decoration set to underline or line-through would remove other styles from span elements.\r\n	Fixed bug where editor contents like \\n\\n would be incorrectly handled and processed as real line feeds.\r\n	Fixed bug where incorrectly encoded urls with ampersands in them would be decoded incorrectly.\r\n	Optimized the DOMUtils decode method to be a lot faster if the string doesn\'t have any entities to decode.\r\nVersion 3.0.2.1 (2008-02-26)\r\n	Fixed alert/confirm dialogs so they display correctly.\r\nVersion 3.0.2 (2008-02-26)\r\n	Added new body_id option that enables you to specify the id of the body inside the editor iframe based on ideas by David Bildstr�m (ChronoZ).\r\n	Added new body_class option that enables you to set the class for the body of the editor iframe based on ideas by David Bildstr�m (ChronoZ).\r\n	Added new CSS class to the default content.css files mceForceColors that forces white background and black text can be used with the body_class option.\r\n	Added new type parameter to the Editor.getParam function to reduce redundant logic for parsing hash tables.\r\n	Added new isDone method to the ScriptLoaded class, this enables you to check if a script has been loaded or not.\r\n	Added new resizeTo and resizeBy methods for the advanced theme. Can be called using tinyMCE.activeEditor.theme.resizeTo(w, h);\r\n	Added new skin_variant option this can be used to extend existing skins with slight modifications like color.\r\n	Added new variant of the o2k7 skin called "silver" based on a contribution made by Stefan Moonen.\r\n	Fixed bug where the template plugin might produce errors if the template_mdate_classes wasn\'t configured.\r\n	Fixed bug where the media plugin didn\'t convert the URLs for movies once they where inserted.\r\n	Fixed bug where the style field for the advlink dialog didn\'t work correctly if you edited an existing link.\r\n	Fixed bug where alignment of toolbars would fail in editor was uses in a quirks mode on IE, fix contributed by Peter Wood & Art Lawry.\r\n	Fixed bug where initialization of multiple editors at the same time using the mceAddControl method would produce errors.\r\n	Fixed bug where initialization of editors using mceAddControl command or new tinymce.Editor calls would fail during page load.\r\n	Fixed bug where the check for domain relaxing could fail if the document.domain property was changed by another script.\r\n	Fixed bug where textareas couldn\'t be named description or any other name that matches the meta elements in IE and Opera.\r\n	Fixed bug where the element path would fail sometimes in IE due to "unknown runtime error" on innerHTML.\r\n	Fixed bug where Safari would crash if you was hiding the editor before serializing the contents.\r\n	Fixed bug where the editor wasn\'t scaled propertly in fullscreen mode using the old fullscreen_new_window option.\r\n	Fixed bug where render method didn\'t load language packs in IE and Opera if you rendered an editor during page load.\r\n	Fixed bug where resizing the browser window in fullscreen didn\'t resize the editor.\r\n	Fixed bug where the blockquote command didn\'t move the caret inside the new empty blockquote if you used it on an empty document.\r\n	Fixed bug where auto in a style width/height for the textarea would produce an editor with the size value of 100. Fix contributed by Shane Tomlinson.\r\n	Fixed bug where restoration of selection at the beginning of an element could fail in Gecko.\r\n	Fixed bug where caret restoration after a cleanup could place the it at an incorrect location.\r\n	Fixed bug where delete key inside td elements would delete the cell in Gecko.\r\n	Fixed so the blockquote button toggles individual lines. This behavior is a bit more like the old indentation behavior in the 2.x branch.\r\n	Fixed so the dialog language packs only gets loaded the first time you open a dialog.\r\n	Fixed so all classes in the whole UI is prefixed with "mce" to avoid collisions, use the skin converter to update your existing skins.\r\n	Fixed so all classes in the inlinepopups logic is prefixed with "mce" to avoid collisions, use the skin converter to update your existing skins.\r\n	Fixed so that the window in fullscreen mode can be resized when fullscreen_new_window option is enabled.\r\n	Fixed so blockquote elements are formatted in the source output with an linefeed before and after it.\r\n	Optimized the editor initialization by reducing the number of calls to getBookmark/moveToBookmark.\r\nVersion 3.0.1 (2008-02-21)\r\n	Added spellchecker plugin into the main package, but without any backend can be specified with the spellchecker_rpc_url option.\r\n	Added src attribute for script elements to the default valid_elements option value.\r\n	Added extra parameter to the class_filter callback it can now also filter out classes based on the whole CSS rule.\r\n	Added support for domain relaxing, TinyMCE can now be loaded from an remote domain as long as they are on the same root domain.\r\n	Added support for custom elements the new custom_elements option enables you to add non HTML elements to the editor.\r\n	Added support for the W3C Selectors API that was added to latest nightly build of WebKit.\r\n	Fixed bug where some object param element wasn\'t stored correctly using the media plugin.\r\n	Fixed bug where Opera was scrolling to top of page is drop menus on list boxes where displayed.\r\n	Fixed bug where IE6 was crashing if a format block was used on a container with anchor elements.\r\n	Fixed bug where spans with font sizes wasn\'t handled correctly when editor was loading contents.\r\n	Fixed bug where mode exact couldn\'t convert editors with name only. Id is no longer required but recommended.\r\n	Fixed bug where the mceInsertRawHTML command produced an extra undo level.\r\n	Fixed bug where the specific_textareas mode didn\'t work correctly this is the same thing as textareas now.\r\n	Fixed bug where the values of input elements in the HTML page of dialogs pages where changed in IE.\r\n	Fixed bug where fullscreen and fullpage plugins didn\'t work well together.\r\n	Fixed bug where embed elements wasn\'t handled properly in the media plugin.\r\n	Fixed bug where style information on span elements gets munged when fonts are converted to spans.\r\n	Fixed bug where some entities in element attributes where encoded incorrectly in the latest WebKit build.\r\n	Fixed bug where initialization would fail in IE if there where two input elements with the name submit in the form.\r\n	Fixed bug where fullscreen mode didn\'t work correctly in IE when the fullscreen_new_window option was used.\r\n	Fixed bug where invalid contents like an ul inside a p element would produce odd results in IE.\r\n	Fixed bug where Opera 9.2x was placing the drop menus at incorrect locations if the editor was placed in a table.\r\n	Fixed bug where Opera was producing odd results if enter/return was pressed while having forced_root_blocks disabled.\r\n	Fixed bug where layer plugin was stealing focus in IE on initialization.\r\n	Fixed bug where body attributes wasn\'t set properly in the fullpage plugin, fix contributed by Hiroaki Kawai.\r\n	Fixed bug where insert image and insert link dialogs where producing an extra level in the undo history.\r\n	Fixed bug where Gecko would produce an error if empty elements like <div></div> where inserted using mceInsertContent.\r\n	Fixed bug where center alignment of images produced odd results inside table cells.\r\n	Fixed bug where center alignment of images couldn\'t be toggled correctly.\r\n	Fixed bug where alignment of images inside tables would produce double float style items in IE if the fix_table_elements option was enabled.\r\n	Fixed bug where a variable called \'v\' was polluting the global namespace. Objects tinymce and tinyMCE are the only ones allowed to be global.\r\n	Fixed bug where insert table from context menu couldn\'t insert new tables inside existing tables.\r\n	Fixed bug where Safari wouldn\'t produce br elements on enter when the force_br_newlines option was enabled.\r\n	Fixed bug where switching cell type in table cell dialog would produce odd attributes in IE.\r\n	Fixed bug where Gecko was outputting internal attributes if valid_elements where set to "*[*]".\r\n	Fixed bug where the style plugin would produce non hex colors inside the dialog when running on Gecko.\r\n	Fixed bug where an empty src value for insert image would remove the currently selected image if it wasn\'t and image element.\r\n	Fixed bug where hidden input elements would break the logic for the tab_focus option.\r\n	Fixed bug where save button wasn\'t working correctly in fullscreen mode.\r\n	Fixed bug where the editor was forced to be placed in a form element if the save_onsavecallback option was used.\r\n	Fixed bug where upper case param attributes wasn\'t parsed correctly in the media plugin.\r\n	Fixed bug where render method of tinymce.Editor class would produce an exception if the strict_loading_mode option was omitted.\r\n	Fixed bug where nodeChanged event could be fired while the editor was loading and there for produce an exception in FF.\r\n	Fixed bug where no undo levels where added if the user created new table rows using the tab key on Gecko.\r\n	Fixed bug where tables would be broken if you selected a different block format for contents withing an table cell.\r\n	Fixed bug where the render method of the tinymce.Editor class didn\'t setup the tinymce.EditorManager.settings object correctly.\r\n	Fixed bug where the advanced image dialog would go to the first tab if the alternative image was changed using the file browser link.\r\n	Fixed bug where the forced_root_block option would produce BR elements inside empty blocks if the block wasn\'t a paragraph.\r\n	Fixed bug where the forced_root_block doesn\'t work correctly on IE if the specified element was something else than paragraphs.\r\n	Fixed bug where selection of images would get lost if user selected something from the context menu in IE.\r\n	Fixed bug where the context menu plugin would pollute the global namespace with two variables p1 and p2.\r\n	Fixed compatibility issue with Mootools, it is destroying document.getElementById on unload in IE. (Mantra: You don\'t own the internal objects).\r\n	Fixed bugs where dialogs/tabs and other UI elements where rendered incorrectly in Firefox 3.\r\n	Fixed so the auto CSS class importer is compatible with 2.x.\r\n	Fixed so the editor UI and inlinedialogs works correctly with the YUI CSS reset package.\r\n	Fixed so header and footer elements are forced to lower case when the fullpage plugin is used.\r\n	Fixed so load prefixes "-" for plugins and themes isn\'t required if the plugin/theme was loaded by the ThemeManager/PluginManager.\r\n	Fixed so the JSONRequest uses application/json content type to make Ruby on rails happy.\r\n	Fixed so the CSS rule is more exact for the body in the default content.css files. Body is now defined as "body.mceContentBody" instead of just "body".\r\n	Fixed so the tiny_mce_dev.js uses XHR instead of document.write to load scripts to resolve an issue with Opera 9.50.\r\n	Fixed so language pack loading can be disabled by setting the language option to false. Can be useful for systems with their own language pack management.\r\nVersion 3.0 (2008-01-30)\r\n	Added map and area elements to the default valid_elements list and also some indentation rules.\r\n	Fixed bug where empty paragraphs wasn\'t padded when loading contents.\r\n	Fixed bug where the RowLayout manager didn\'t work at all.\r\n	Fixed bug where style attribute data would get messed up in advimage dialog.\r\n	Fixed bug where the table dialogs class select wasn\'t updated correctly.\r\n	Fixed bug where elements would get extra whitespace around on insert when body was present in valid_elements.\r\n	Fixed bug where coords attribute of the area element wasn\'t handled properly in IE.\r\n	Fixed bug where Safari didn\'t produce BR elements on shift+return.\r\n	Fixed bug where force blocks would cast odd invalid attribute exception in IE.\r\n	Fixed bug where media plugin would produce extra whitespace before and after objects.\r\n	Fixed bug where cleanup_callback could break the contents of the editor. But use the new event system instead of this option.\r\n	Fixed bug where the tab_focus option didn\'t work between editor instanced. You can now tab between editors.\r\n	Fixed bug where the load function of the ScriptLoader class didn\'t load single files without the load que as it was supposed to.\r\n	Fixed bug where the execcommand_callback parameter order was incorrect. Recommendation use the new addCommand method.\r\n	Fixed bug where range.select calls sometimes failed on some IE versions.\r\n	Fixed bug where Safari was scrolling to top of document when enter/returned was pressed.\r\n	Fixed bug where fullscreen_new_window option didn\'t work correctly.\r\n	Fixed bug where the nonbreaking plugin inserted an space instead of an non breaking space the first time.\r\n	Fixed bug where the visualization of non breaking spaces where visual in element path.\r\n	Fixed so the focus is restored to the editor after inserting an custom character.\r\n	Fixed so the isNotDirty state is set to false if a new undo level is added.\r\n	Fixed so pointless style information for borders gets removed in IE.\r\n	Fixed so the resize button has a se-resize cursor css value.\r\nVersion 3.0rc2 (2008-01-18)\r\n	Added new fix_nesting option to fix bug #1867292, this is disabled by default.\r\n	Added new indentation option enables you to specify how much each indent/outdent call will add/remove.\r\n	Added easier support for enabling/disabling icon columns on drop menues.\r\n	Added new menu button control class. This control is very similar to the splitbutton but without any onclick action.\r\n	Added support for previous tab focus (shift+tab). The tab_focus setting now takes two items next and previous element.\r\n	Fixed bug where iframes inside the editor got removed in Firefox on initial load.\r\n	Fixed bug where the CSS for abbr elements wasn\'t applied correctly in IE.\r\n	Fixed bug where mceAddControl on element inside a hidden container produced errors.\r\n	Fixed bug where closed anchors like <a /> produced strange results.\r\n	Fixed bug where caret would jump to the top of the editor if enter was pressed a the end of a list.\r\n	Fixed bug where remove editor failed if the editor wasn\'t properly initialized.\r\n	Fixed bug where render call on for a non existing element produced exception.\r\n	Fixed bug where parent window was hidden when the color picker was used in a non inlinepopups setup.\r\n	Fixed bug where onchange event wasn\'t fired correctly on IE when color picker was used in dialogs.\r\n	Fixed bug where save plugin could not save contents if the converted element wasn\'t an textarea.\r\n	Fixed bug where events might be fired even after an editor instance was removed such as blur events.\r\n	Fixed bug where an exception about undefined undo levels could be throwed sometimes.\r\n	Fixed bug where the plugin_preview_pageurl option didn\'t work.\r\n	Fixed bug where adding/removing an editor instance very fast could produce problems.\r\n	Fixed bug where the link button was highlighted when an anchor element was selected.\r\n	Fixed bug where the selected contents where removed if a new anchor element was added.\r\n	Fixed bug where splitbuttons where rendered one pixel down in the default theme.\r\n	Fixed bug where some buttons where placed at incorrect positions in the o2k7 theme.\r\n	Fixed bug that made it impossible to visually disable a custom button that used an image instead of CSS sprites.\r\n	Fixed bug where it wasn\'t possible to press delete/backspace if the editor was added+removed and re-added due to a FF bug.\r\n	Fixed bug where an entities option with only 38,amp,60,lt,62,gt would fail in IE.\r\n	Fixed bug where innerHTML sometimes generated unknown runtime error on IE.\r\n	Fixed bug where content_css files wasn\'t loaded in the template preview iframe.\r\n	Fixed bug where scroll position was incorrect when toggling fullscreen mode.\r\n	Fixed bug where restoration of overflow didn\'t work correctly when disabling fullscreen mode in Opera.\r\n	Fixed bug where drop menus where places at incorrect locations if the editor was placed in a scrollable container element.\r\n	Fixed bug where hideMenu didn\'t hide sub menus correctly. It will now hide all menus recursively.\r\n	Fixed so theme_advanced_path_location can be used in init options for compatibility reasons.\r\n	Fixed so the drop menu colors matches the rest of o2k7 theme.\r\n	Fixed so the preview example.html file is updated to the new 3.x API.\r\n	Fixed so the margins are the same by default inside the editable area between IE and other browsers.\r\n	Fixed so editor contents gets stored before it the onSubmit event is fired.\r\nVersion 3.0rc1 (2008-01-08)\r\n	Added new classes for toolbar rows in advanced theme mceToolbarRow1..n enabled you to change appearance of individual rows.\r\n	Added auto detection for the strict_loading_mode option when running in application/xhtml+xml mode on Gecko.\r\n	Optimized the HTML serializer by bundling some post process methods together.\r\n	Fixed so that the toolbars have unique IDs, enables you to alter the toolbars using the ControlManager and the DOM.\r\n	Fixed bug where delta values for dialog sizes in language packs didn\'t work correctly due to missing string to number casting.\r\n	Fixed bug where paragraph generation logic didn\'t handle hr or table elements correctly if they where the only element.\r\n	Fixed bug where some elements got extra linebreaks added after or before it in HTML output.\r\n	Fixed bug where it was hard to modify existing style data on table rows and table cells.\r\n	Fixed bug where the dom.getRect method didn\'t handle non pixel values correctly.\r\n	Fixed bug where strikethrough and underline couldn\'t be toggled on existing span elements.\r\n	Fixed bug where the postprocessor searched for nsbp instead of nbsp entities.\r\n	Fixed bug where it was impossible to edit links that had child elements within them.\r\n	Fixed bug where it was possible to click on the parent item of a submenu.\r\n	Fixed bug where mouseover/mouseout images couldn\'t be removed in advimage dialog.\r\n	Fixed bug where drop menus didn\'t work when running in application/xhtml+xml mode.\r\n	Fixed bug where Opera added doctype to output in application/xhtml+xml mode.\r\n	Fixed bug where some DOM methods didn\'t work correctly in the application/xhtml+xml mode.\r\n	Fixed bug where the inlinepopups didn\'t work correctly in the application/xhtml+xml mode.\r\n	Fixed bug where the ColorSplitButton didn\'t display correctly in the application/xhtml+xml mode.\r\n	Fixed bug where the UI layout was incorrect on Gecko browsers when running in application/xhtml+xml mode.\r\n	Fixed bug where the word paste plugin produced exception while running in application/xhtml+xml mode.\r\n	Fixed bug where there wasn\'t any hidden input element generated for divs while running in application/xhtml+xml mode.\r\n	Fixed bug where indentation of script/style/pre elements where incorrect.\r\n	Fixed bug where script element contents was removed in IE.\r\n	Fixed bug where script element contents got entity encoded.\r\n	Fixed bug where you couldn\'t edit existing element styles using the styles plugin.\r\n	Fixed bug where styles wasn\'t updated properly sometimes due to an performance enhancement.\r\n	Fixed bug where font sizes couldn\'t be changed using the style plugin.\r\n	Fixed bug where an error was produced in Gecko browsers when switching back from fullscreen mode.\r\n	Fixed bug where Opera was producing br elements after elements like h3.\r\n	Fixed bug where TinyMCE couldn\'t be loaded on a page using - characters in it\'s URL.\r\n	Fixed bug where the editor container element was forced to have a specific name.\r\n	Fixed bug with force_br_newlines option on Firefox, even though it should never be used (Read FAQ).\r\n	Fixed bug where onclick event had an return true; prefix added when creating an popup.\r\n	Fixed bug where the theme_advanced_statusbar_location option couldn\'t handle the value "none".\r\n	Fixed issue with URLs with multiple at characters for example an Zope URI.\r\n	Fixed so simple and advanced themes doesn\'t collide.\r\n	Fixed so a elements gets removed when the href field is left empty, the href attribute is required in a link after all.\r\n	Fixed so img elements gets removed when the src field is left empty, the src attribute is required for all images after all.\r\n	Removed the indent and encode methods from the tinymce.dom.Serializer class due to performance enhancement and reduction of the API size.\r\nVersion 3.0b3 (2007-12-14)\r\n	Added new getElement method to Editor class, returns the element that was replaced with the editor instance.\r\n	Added new unavailable prefix for disabled controls for accessibility reasons.\r\n	Fixed bug where regexp patterns couldn\'t be used for the editor_selector/editor_deselector options.\r\n	Fixed bug where the DOM wasn\'t properly initialized before the onInit event was executed in popups.\r\n	Fixed bug where font sizes where reduced by font size actions on previous spans in Safari.\r\n	Fixed bug where HR elements got places at the wrong location in IE.\r\n	Fixed bug where align/justify didn\'t work correctly on multiple paragraphs.\r\n	Fixed bug with missing translation for cell scope settings.\r\n	Fixed bug where selection/caret position was lost on some table actions.\r\n	Fixed bug where editor instances couldn\'t be added to hidden div elements.\r\n	Fixed bug where list elements in Safari would get an odd ID attribute.\r\n	Fixed bug where IE would return <html/> when the editor was completely empty.\r\n	Fixed bug where accessibility title attribute for access keys wasn\'t setup properly.\r\n	Fixed bug where forecolorpicker and backcolorpicker control names wasn\'t working.\r\n	Fixed bug where inserting template content didn\'t work in Safari due to selection exception.\r\n	Fixed bug where absolute URLs to remote hosts couldn\'t be used for background images.\r\n	Fixed bug where mysterious span elements where produced in Safari when injecting HTML contents.\r\n	Fixed bug where the media plugin didn\'t work correctly on the latest Opera 9.24.\r\n	Fixed bug where indentation of HTML output wasn\'t applied to all block elements.\r\n	Fixed bug where Safari was production DOM exception if you pressed enter in an empty editor.\r\n	Fixed bug where media plugin didn\'t parse script tags correctly patch contributed by Mathieu Campagna.\r\n	Fixed bug where the drop menus of list boxes like blockformat could produce scrolling of the page.\r\n	Fixed bug where the drop menus where placed at an incorrect location if TinyMCE was placed in a scrollable div.\r\n	Fixed bug where submit buttons couldn\'t be named submit, it\'s not recommended to name submit buttons submit anyway.\r\n	Fixed bug where the stylelistbox produced an exception if there was only one class in the list box.\r\n	Fixed bug where the stylelistbox wasn\'t updated correctly when the current class was removed.\r\n	Fixed bug where the formatblock command sometimes removed the body element.\r\n	Fixed bug where fullscreen switching in IE sometimes produced an exception when the spellchecker plugin was enabled.\r\n	Fixed issue where FF produced an empty paragraph when the editor was completely empty.\r\n	Fixed issue with size of image dialog in the advanced theme.\r\n	Fixed issues with the bbcode plugin it now also handles spans and the [font] rule.\r\n	Fixed so the style compression feature is a bit smarter to resolve issues with Opera.\r\n	Reintroduced the remove_linebreaks option, this is enabled by default.\r\nVersion 3.0b2 (2007-11-29)\r\n	Added type and compact attributes to the default valid_elements list for the ul and ol elements.\r\n	Added missing accessibility support to native list boxes in both the toolbar and dialogs.\r\n	Added missing access key for the element path for accessibility reasons.\r\n	Fixed support for loading themes from external URLs.\r\n	Fixed bug where setOuterHTML didn\'t work correctly when multiple elements where passed to it.\r\n	Fixed bug with visualchars plugin was moving elements around in the DOM.\r\n	Fixed bug with DIV elements that got converted into editors on IE.\r\n	Fixed bug with paste plugin using the old event API.\r\n	Fixed bug where the spellchecker was removing the word when it was ignored.\r\n	Fixed bug where fullscreen wasn\'t working properly.\r\n	Fixed bug where the base href element and attribute was ignored.\r\n	Fixed bug where redo function didn\'t work in IE.\r\n	Fixed bug where content_css didn\'t work as previous 2.x branch.\r\n	Fixed bug where preview dialog was throwing errors if the content_css wasn\'t defined.\r\n	Fixed bug where the theme_advanced_path option didn\'t work like the 2.x branch.\r\n	Fixed bug where the theme_advanced_statusbar_location was called theme_advanced_status_location.\r\n	Fixed bug where the strict_loading_mode option didn\'t work if you created editors dynamically without using the EditorManager.\r\n	Fixed bug where some language values wasn\'t translated such as insert and update in dialogs.\r\n	Fixed bug where some image attributes wasn\'t stored correctly when inserting an image.\r\n	Fixed bug where fullscreen mode didn\'t restore scrollbars when disabled.\r\n	Fixed bug where there was no visual representation for tab focus in toolbars on IE.\r\n	Fixed bug where HR elements wasn\'t treated as block elements so forced_root_block would fail on these.\r\n	Fixed bug where autosave presented warning message even when the form was submitted normally.\r\n	Fixed typo of openBrower it\'s now openBrowser in form_utils.js.\r\n	Fixed various HTML problems like missing TD elements and duplicated doctypes.\r\n	Fixed default values for theme_advanced_resize_horizontal, theme_advanced_resizing_use_cookie to be 2.x compatible.\r\n	Moved spellchecker JS files into the development package.\r\n	Removed support for theme_advanced_path_location since the theme_advanced_statusbar_location is the correct option name.\r\nVersion 3.0b1 (2007-11-21)\r\n	Added new tab_focus option, that enables you to specify a element id or that the next element to be focused on tab key down.\r\n	Added new addQueryValueHandler method to the tinymce.Editor class.\r\n	Added new class_filter option, this enables you to specify a function that can filter out CSS classes for the styles list box.\r\n	Added support form [url=url]title[/url] to the bbcode plugin.\r\n	Renamed the addCommandQueryState method in the tinymce.Editor class to addQueryStateHandler.\r\n	Renamed loadQue to loadQueue, to correct spelling.\r\n	Removed the createDOM method from the window manager and replace it with a createInstance method.\r\n	Removed the add to beginning of class attribute parameter of the DOMUtils.addClass method.\r\n	Fixed bug with the forced_root_block option, didn\'t work correctly with multiple inline elements.\r\n	Fixed bug where image dialogs replaced the current image element with a new one even when it was updated.\r\n	Fixed bug where the submit trigger wasn\'t executed when divs where converted into editor instances.\r\n	Fixed bug where div elements that got converted into editors didn\'t get a hidden input element generated for them.\r\n	Fixed bug where the the media_use_script option for the media plugin wasn\'t working correctly.\r\n	Fixed bug where the font size and font family listboxes wasn\'t updated correctly on Safari.\r\n	Fixed bug where the height of the fieldset in default image dialog for the advanced theme was to small.\r\n	Fixed bug where the font sizes behaved incorrectly after a cleanup on Safari.\r\n	Fixed bug where formatblock didn\'t work correctly in Safari on some elements.\r\n	Fixed bug where template plugin didn\'t insert content correctly unless some options where specified.\r\n	Fixed bug where charmap on Safari produced scrollbars.\r\n	Fixed bug where there was white artifacts in some dialogs due to missing background color.\r\n	Fixed bug where port was added to all external URLs if the editor was loaded from a custom port.\r\n	Fixed bug where the context menus got duplicated on Safari 3.0.4 on Mac OS X.\r\n	Fixed bug where dialogs like paste from word was huge on Firefox.\r\n	Fixed bug with media plugin not working with windows media objects.\r\n	Fixed bug where a forever loop was created if multiple instances where submitted using form.submit.\r\n	Fixed bug with editing a table produce error in IE when inlinepopups where used.\r\n	Fixed bug where the style plugin generated ugly looking style information in IE.\r\n	Fixed bug where the inline dialogs that got opened while in fullscreen mode wasn\'t visible.\r\n	Fixed bug where it was difficult to place the caret inside the word paste dialog.\r\n	Fixed bug where Opera produced strange border in the word paste dialog.\r\n	Fixed bug where viewport constraints could move a inlinepopup to a negative x, y position if the viewport was to small.\r\n	Fixed bug where template plugin was producing an error due to a deprecated API call.\r\n	Fixed bug where drag drop of images failed in Gecko if a document_base_url was specified.\r\n	Fixed bug where Firefox 3 failed to apply block formats like H1-H6 it still breaks on DIVs this has been reported to bugzilla.\r\n	Fixed bug where IE was producing a warning dialog about non secure items when running TinyMCE over HTTPS.\r\n	Fixed bug where the onbeforeunload event was triggered when menus or dialogs where opened.\r\n	Fixed bug where the fullscreen mode of the HTML view source box threw an error.\r\n	Fixed bug where the mceFocus command didn\'t work correctly.\r\n	Fixed bug where the selection could get lost in IE using inlinepopups.\r\n	Fixed so the body of the editor area has the mceContentBody class just like the 2.x branch. \r\n	Fixed so the media icon gets active when a media element is selected.\r\nVersion 3.0a3 (2007-11-13)\r\n	Added new experimental jQuery and Prototype framework adapters to the development package.\r\n	Added new translation.html file for the development package. Helps with the internationalization of TinyMCE.\r\n	Added new setup callback option, use this callback to add events to TinyMCE. This method is recommended over the old callbacks.\r\n	Added new API documetation to all classes, functions, events, properties to the Wiki with examples etc.\r\n	Added new init method to all plugins and themes, since it\'s shorter to write and it mimics interface capable languages better.\r\n	Fixed various CSS issues in the default skin such as alignment of split buttons and separators.\r\n	Fixed issues with mod_security. It didn\'t like that a content type of text/javascript was forced in a XHR.\r\n	Fixed all events so that they now pass the sender object as it\'s first argument.\r\n	Fixed some DOM methods so they now can take an array as input.\r\n	Fixed so addButton and the methods of the ControlManager uses less arguments and it now uses a settings object instead.\r\n	Fixed various issues with the tinymce.util.URI class.\r\n	Fixed bug in IE and Safari and the on demand gzip loading feature.\r\n	Fixed bug with moving inline windows sometimes failed in IE6.\r\n	Fixed bug where save_callback function wasn\'t executed at all.\r\n	Fixed bug where inlinepopups produces scrollbars if windows where moved to the corners of the browser.\r\n	Fixed bug where view HTML source failed when inserting a embedded media object.\r\n	Fixed bug where the listbox menus didn\'t display correctly on IE6.\r\n	Fixed bug where undo level wasn\'t added when editor was blurred.\r\n	Fixed bug where spellchecker wasn\'t disabled when fullscreen mode was enabled.\r\n	Fixed bug where Firefox could crash some times when the user switched to fullscreen mode.\r\n	Fixed bug where tinymce.ui.DropMenu didn\'t remove all item data when an item was removed from the menu.\r\n	Fixed bug where anchor list in advlink dialog wasn\'t populated correctly in Safari.\r\n	Fixed bug where it wasn\'t possible to edit tables in IE when inlinepopups was enabled.\r\n	Fixed bug where it wasn\'t possible to change the table width of an existing table.\r\n	Fixed bug where xhtmlxtras like abbr didn\'t work correctly on IE.\r\n	Fixed bug where IE6 had some graphics rendering issues with the inlinepopups.\r\n	Fixed bug where inlinepopup windows where moved incorrectly when they were boundary checked for min width.\r\n	Fixed bug where textareas without id or name couldn\'t be converted into editor instances.\r\n	Fixed bug where TinyMCE was stealing element focus on IE.\r\n	Fixed bug where the getParam method didn\'t handle false values correctly.\r\n	Fixed bug where inlinepopups was clipped by other TinyMCE instances or relative elements in IE.\r\n	Fixed bug where the contextmenu was clipped by other TinyMCE instances or relative elements in IE.\r\n	Fixed bug where listbox menus was clipped by other TinyMCE instances or relative elements in IE.\r\n	Fixed bug where listboxes wasn\'t updated correctly when the a value wasn\'t found by select.\r\n	Fixed various CSS issues that produced odd rendering bugs in IE.\r\n	Fixed issues with tinymce.ui.DropMenu class, it required some optional settings to be specified.\r\n	Fixed so multiple blockquotes can be removed with a easier method than before.\r\n	Optimized some of the core API to boost performance.\r\n	Removed some functions from the core API that wasn\'t needed.\r\nVersion 3.0a2 (2007-11-02)\r\n	Fixed critical bug where IE generaded an error on a hasAttribute call in the serialization engine.\r\n	Fixed critical bug where some dialogs didn\'t open in the non dev package.\r\n	Fixed bug when using the theme_advanced_styles option. Error was thrown in some dialogs.\r\n	Fixed bug where the close buttons produced an error when native windows where used.\r\n	Fixed bug in default skin so that split buttons gets activated correctly.\r\n	Fixed so plugins can be loaded from external urls outsite the plugins directory.\r\nVersion 3.0a1 (2007-11-01)\r\n	Rewrote the core and most of the plugins and themes from scratch.\r\n	Added new and improved serialization engine, faster and more powerful.\r\n	Added new internal event system, things like editor.onClick.add(func).\r\n	Added new inlinepopups plugin, the dialogs are now skinnable and uses clearlooks2 as default.\r\n	Added new contextmenu plugin, context menus can now have submenus and plugins can add items on the fly.\r\n	Added new skin support for the simple and advanced themes you can alter the whole UI using CSS.\r\n	Added new o2k7 skin for the simple and advanced themes.\r\n	Added new custom list boxes for font size/format/style etc with preview support.\r\n	Added new UI management, enabled plugins to create controls like splitbuttons or menus easier.\r\n	Added new JSON parser/serializer and JSON-RPC class to the core API.\r\n	Added new cookie utility class to the core API.\r\n	Added new Unit testing class to the core API only available in dev mode.\r\n	Added new firebug lite integration when loading the dev version of TinyMCE.\r\n	Added new Safari plugin, fixes lots compatibility of issues with Safari 3.x.\r\n	Added new URI/URL parsing it now handles the hole RFC and even some exceptions.\r\n	Added new pagebreak plugin, enables you to insert pagebreak comments like <!-- pagebreak -->\r\n	Added new on demand loading of plugins and themes. Enables you to load and init TinyMCE at any time.\r\n	Added new throbber/progress visualization a plugin can show/hide this when it\'s needed.\r\n	Added new blockquote button. Enables you to wrap paragraphs in blockquotes.\r\n	Added new compat2x plugin. Will provide a TinyMCE 2.x API for older plugins.\r\n	Added new theme_advanced_resizing_min_width, theme_advanced_resizing_min_height options.\r\n	Added new theme_advanced_resizing_max_height, theme_advanced_resizing_max_height options.\r\n	Added new use_native_selects option. Enables you to toggle native listboxes on and off.\r\n	Added new docs_url option enables you to specify where the TinyMCE user documentation is located.\r\n	Added new frame and rules options for the table dialog.\r\n	Added new global rule for valid_elements/extended_valid_elements enables you to specify global attributes for all elements.\r\n	Added new deny attribute rule characher so it\'s possible to deny global attribute rules on specific elements.\r\n	Added new unit tests in the dev package of TinyMCE. Runs tests on the core API, commands and settings of the editor.\r\n	Readded the inline_styles option and enabled it by default so deprecated attributes are no longer used.\r\n	Removed all button images and replaced them with CSS sprite images. Reduces the number of requests needed.\r\n	Removed lots of language files and merged them into the base language files. Reduces the number of requests needed.\r\n	Removed lots of unnecessary files and merged many of them together to reduce requests and improve loading speed.\r\n	Reduced the over all script size by 33% and the number of files/requests by 75% so it loads a lot faster.\r\n	Fixed so convert_fonts_to_spans are enabled by default. So no more font tags.\r\n	Fixed so underline and strikethrough uses spans instread of deprecated U and STRIKE elements.\r\n	Fixed so indent/outdent adds/removed margin-left instead of blockquotes.\r\n	Fixed so alignment of paragraphs results in a text-align style value instead of the deprecated align attribute.\r\n	Fixed so alignment of images uses float or vertical-align style values instead of the deprecated align attribute.\r\n	Fixed so all classes from @import stylesheets gets imported into the editor.\r\n	Fixed so the directionality can toggle the dir attribute on and off.\r\n	Fixed so the fullscreen_settings can be used for all types of fullscreen modes.\r\n	Fixed so the advanced HR dialog gets displayed when inserting a HR not only on edit.\r\n	Fixed bug where word wrap didn\'t work in the source editor on Safari.\r\n	Fixed so non HTML elements can be used within the editor such as <myns:tag>\r\n	Fixed various memory leaks in IE and reduced the unload cleanups needed.\r\n	Fixed so the preformatted option adds an invisible container pre tag inside the editor.\r\n	Renamed the _template plugin to example and updated it to use the new 3.x API.\r\n";s:6:"readme";s:52:"Please consult the HTML documentation for details.\n\n";s:9:"signature";s:16:"tinymce-4.3.4-pl";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:44:"/workspace/package/install/tinymce-4.3.4-pl/";s:14:"package_action";i:0;}', 'TinyMCE', 'a:38:{s:2:"id";s:24:"579f77a2f05e8bac11ffd034";s:7:"package";s:24:"4d556bc5b2b083396d0007e9";s:12:"display_name";s:16:"tinymce-4.3.4-pl";s:4:"name";s:7:"TinyMCE";s:7:"version";s:5:"4.3.4";s:13:"version_major";s:1:"4";s:13:"version_minor";s:1:"3";s:13:"version_patch";s:1:"4";s:7:"release";s:2:"pl";s:8:"vrelease";s:2:"pl";s:14:"vrelease_index";s:1:"0";s:6:"author";s:8:"theboxer";s:11:"description";s:102:"<p>TinyMCE version 3.4.7 for MODX Revolution. Works with Revolution 2.2.x or later only.</p><ul>\n</ul>";s:12:"instructions";s:225:"<p>Install via Package Management.</p>\n<p>If you\'re having issues installing, make sure you have the latest ZipArchive extension for PHP, and that it\'s properly configured, or set the "archive_with" System Setting to Yes.</p>";s:9:"changelog";s:2493:"<p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.3.4<ul><li>Use modx-&gt;controller-&gt;addJavascript/addHtml/etc to fix issue in MODX Revolution 2.5.1</li></ul></b><b style="line-height: 1.5;">New in 4.3.3</b><b></b></p><ul><li>Change popup windows to more convenient modals</li><li>Have TinyMCE respect context settings of Resource being edited</li><li>Update TinyMCE to 3.5.4.1</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.3.2</b></p><ul><li>Update Czech/German translation</li><li>&#91;#74&#93; Fix inclusion of english as fallback for language</li><li>&#91;#80&#93; Make context menu use MODxLink plugin</li><li>Upgrade TinyMCE to 3.4.7</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.3.1</b></p><ul><li>Optimizations for MODX 2.2</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.3.0</b></p><ul><li>&#91;#71&#93; Update TinyMCE to v3.4.5</li><li>&#91;#70&#93; Fixes to cirkuit skin with missing CSS styles</li><li>&#91;#64&#93; Add tiny.template_list_snippet setting for grabbing template list from a Snippet</li><li>&#91;#66&#93; Fix issues with Revolution 2.2.0 code</li><li>&#91;#63&#93; Add tiny.base_url setting for managing the document_base_url tinymce setting</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.2.4</b></p><ul><li>Updated TinyMCE to 3.4.2</li><li>Fix issue where recursion detected xPDO error was showing in logs on chunk editing</li><li>&#91;#55&#93; Fix help for element_format and preformatted descriptions in plugin properties</li><li>&#91;#53&#93; Languages added/update: German, English, French, Indonesian, Japanese, Dutch, Russian, Ukrainian</li></ul><b>New in 4.2.3</b><p></p><ul><li>Fix issue that inserted wrong URL when using TinyMCE in Revolution 2.1 and later</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.2.2</b></p><ul><li>&#91;#49&#93; Added spellchecker files</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.2.1</b></p><ul><li>&#91;#45&#93; &#91;#47&#93; Fixes for front-end usage and compatibility with NewsPublisher</li><li>Add compressed JS for faster loading</li></ul>";s:9:"createdon";s:24:"2016-08-01T16:24:02+0000";s:9:"createdby";s:8:"theboxer";s:8:"editedon";s:24:"2018-07-19T19:21:13+0000";s:10:"releasedon";s:24:"2016-08-01T16:24:00+0000";s:9:"downloads";s:6:"374190";s:8:"approved";s:4:"true";s:7:"audited";s:5:"false";s:8:"featured";s:5:"false";s:10:"deprecated";s:5:"false";s:7:"license";s:5:"GPLv2";s:7:"smf_url";s:0:"";s:10:"repository";s:24:"4d4c3fa6b2b0830da9000001";s:8:"supports";s:3:"2.2";s:8:"location";s:60:"http://modx.com/extras/download/?id=579f77a2f05e8bac11ffd035";s:9:"signature";s:16:"tinymce-4.3.4-pl";s:11:"supports_db";s:12:"mysql,sqlsrv";s:16:"minimum_supports";s:3:"2.2";s:9:"breaks_at";s:8:"10000000";s:10:"screenshot";s:54:"http://modx.s3.amazonaws.com/extras/459/tinymce-ss.png";s:4:"file";a:7:{s:2:"id";s:24:"579f77a2f05e8bac11ffd035";s:7:"version";s:24:"579f77a2f05e8bac11ffd034";s:8:"filename";s:30:"tinymce-4.3.4-pl.transport.zip";s:9:"downloads";s:5:"80403";s:6:"lastip";s:15:"212.227.127.151";s:9:"transport";s:4:"true";s:8:"location";s:60:"http://modx.com/extras/download/?id=579f77a2f05e8bac11ffd035";}s:17:"package-signature";s:16:"tinymce-4.3.4-pl";s:10:"categories";s:23:"content,richtexteditors";s:4:"tags";s:0:"";}', 4, 3, 4, 'pl', 0);
INSERT INTO `chisto_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('translit-1.0.0-beta', '2018-07-19 19:25:19', '2018-07-19 19:28:15', '2018-07-19 19:28:15', 0, 1, 1, 0, 'translit-1.0.0-beta.transport.zip', NULL, 'a:7:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:453:"--------------------\nExtension: translit\n--------------------\nVersion: 1.0.0-beta\nReleased: October 20, 2010\nSince: October 20, 2010\nAuthor: Jason Coward <jason@modx.com>\n\nA MODx Revolution Core Extension, the translit package provides a custom transliteration service class. When installed,\nthis is automatically available for the core Friendly URL alias transliteration process for Resources. You can also use\nthe service in your plugins and snippets.";s:9:"signature";s:19:"translit-1.0.0-beta";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:47:"/workspace/package/install/translit-1.0.0-beta/";s:14:"package_action";i:0;}', 'translit', 'a:38:{s:2:"id";s:24:"4d556cf0b2b083396d000eeb";s:7:"package";s:24:"4d556cf0b2b083396d000eea";s:12:"display_name";s:19:"translit-1.0.0-beta";s:4:"name";s:8:"translit";s:7:"version";s:5:"1.0.0";s:13:"version_major";s:1:"1";s:13:"version_minor";s:1:"0";s:13:"version_patch";s:1:"0";s:7:"release";s:4:"beta";s:8:"vrelease";s:4:"beta";s:14:"vrelease_index";s:1:"0";s:6:"author";s:8:"opengeek";s:11:"description";s:585:"<p>A service class that allows custom transliteration tables to be used when auto-creating or sanitizing friendly URL aliases in MODx Revolution. This initial beta release includes three tables that can be specified as the friendly_alias_translit System Setting:</p>\n<p><ol>\n<li>noaccents</li>\n<li>russian</li>\n<li>german</li>\n</ol>\nCustom named transliteration tables can be manually added to the {core_path}components/translit/model/modx/translit/tables/ directory and configured. Additional contributed transliteration tables will be included in future releases of the package.\n</p>";s:12:"instructions";s:37:"<p>Install via Package Management</p>";s:9:"changelog";s:0:"";s:9:"createdon";s:24:"2010-10-20T11:53:35+0000";s:9:"createdby";s:8:"opengeek";s:8:"editedon";s:24:"2018-07-19T19:20:12+0000";s:10:"releasedon";s:24:"2010-10-20T11:57:11+0000";s:9:"downloads";s:6:"141461";s:8:"approved";s:4:"true";s:7:"audited";s:5:"false";s:8:"featured";s:5:"false";s:10:"deprecated";s:5:"false";s:7:"license";s:5:"GPLv2";s:7:"smf_url";s:47:"http://modxcms.com/forums/index.php?topic=56059";s:10:"repository";s:24:"4d4c3fa6b2b0830da9000001";s:8:"supports";s:1:"2";s:8:"location";s:60:"http://modx.com/extras/download/?id=4d556cf1b2b083396d000eec";s:9:"signature";s:19:"translit-1.0.0-beta";s:11:"supports_db";s:5:"mysql";s:16:"minimum_supports";s:1:"2";s:9:"breaks_at";s:8:"10000000";s:10:"screenshot";s:0:"";s:4:"file";a:7:{s:2:"id";s:24:"4d556cf1b2b083396d000eec";s:7:"version";s:24:"4d556cf0b2b083396d000eeb";s:8:"filename";s:33:"translit-1.0.0-beta.transport.zip";s:9:"downloads";s:6:"141663";s:6:"lastip";s:13:"5.101.156.190";s:9:"transport";s:4:"true";s:8:"location";s:60:"http://modx.com/extras/download/?id=4d556cf1b2b083396d000eec";}s:17:"package-signature";s:19:"translit-1.0.0-beta";s:10:"categories";s:36:"internationalization,core-extensions";s:4:"tags";s:15:"transliteration";}', 1, 0, 0, 'beta', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_transport_providers`
--

CREATE TABLE `chisto_transport_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint(4) NOT NULL DEFAULT '10',
  `properties` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_transport_providers`
--

INSERT INTO `chisto_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2018-07-11 19:07:48', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_users`
--

CREATE TABLE `chisto_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modPBKDF2',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_users`
--

INSERT INTO `chisto_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'ewal', 'uEsxuF0utVuMojWK9/Ycr5s1YB+gbZghm5hI6zZjiVo=', '', 'modUser', 1, NULL, NULL, 'hashing.modPBKDF2', '6b2e5151db665981f188ff99d26ca4c1', 1, NULL, 1, 1532028064);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_user_attributes`
--

CREATE TABLE `chisto_user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(191) NOT NULL DEFAULT '',
  `city` varchar(191) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(191) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(191) NOT NULL DEFAULT '',
  `extended` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_user_attributes`
--

INSERT INTO `chisto_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, '????????????? ?? ?????????', 'ewal@list.ru', '', '', 0, 0, 0, 1, 0, 1532028070, 0, '533i74lp7i45cglloc781s7dc1', 0, 0, '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_user_group_roles`
--

CREATE TABLE `chisto_user_group_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_user_group_roles`
--

INSERT INTO `chisto_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_user_group_settings`
--

CREATE TABLE `chisto_user_group_settings` (
  `group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_user_messages`
--

CREATE TABLE `chisto_user_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(191) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_user_settings`
--

CREATE TABLE `chisto_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chisto_workspaces`
--

CREATE TABLE `chisto_workspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `attributes` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chisto_workspaces`
--

INSERT INTO `chisto_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2018-07-19 19:21:03', 1, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chisto_access_actiondom`
--
ALTER TABLE `chisto_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `chisto_access_actions`
--
ALTER TABLE `chisto_access_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `chisto_access_category`
--
ALTER TABLE `chisto_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `chisto_access_context`
--
ALTER TABLE `chisto_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `chisto_access_elements`
--
ALTER TABLE `chisto_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `chisto_access_media_source`
--
ALTER TABLE `chisto_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `chisto_access_menus`
--
ALTER TABLE `chisto_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `chisto_access_namespace`
--
ALTER TABLE `chisto_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `chisto_access_permissions`
--
ALTER TABLE `chisto_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `chisto_access_policies`
--
ALTER TABLE `chisto_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `chisto_access_policy_templates`
--
ALTER TABLE `chisto_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chisto_access_policy_template_groups`
--
ALTER TABLE `chisto_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chisto_access_resources`
--
ALTER TABLE `chisto_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `chisto_access_resource_groups`
--
ALTER TABLE `chisto_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `chisto_access_templatevars`
--
ALTER TABLE `chisto_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `chisto_actiondom`
--
ALTER TABLE `chisto_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `chisto_actions`
--
ALTER TABLE `chisto_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `controller` (`controller`);

--
-- Индексы таблицы `chisto_actions_fields`
--
ALTER TABLE `chisto_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Индексы таблицы `chisto_active_users`
--
ALTER TABLE `chisto_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Индексы таблицы `chisto_categories`
--
ALTER TABLE `chisto_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `chisto_categories_closure`
--
ALTER TABLE `chisto_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Индексы таблицы `chisto_class_map`
--
ALTER TABLE `chisto_class_map`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`),
  ADD KEY `parent_class` (`parent_class`),
  ADD KEY `name_field` (`name_field`);

--
-- Индексы таблицы `chisto_clientconfig_context_value`
--
ALTER TABLE `chisto_clientconfig_context_value`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chisto_clientconfig_group`
--
ALTER TABLE `chisto_clientconfig_group`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chisto_clientconfig_setting`
--
ALTER TABLE `chisto_clientconfig_setting`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chisto_content_type`
--
ALTER TABLE `chisto_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `chisto_context`
--
ALTER TABLE `chisto_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `chisto_context_resource`
--
ALTER TABLE `chisto_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Индексы таблицы `chisto_context_setting`
--
ALTER TABLE `chisto_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Индексы таблицы `chisto_dashboard`
--
ALTER TABLE `chisto_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Индексы таблицы `chisto_dashboard_widget`
--
ALTER TABLE `chisto_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Индексы таблицы `chisto_dashboard_widget_placement`
--
ALTER TABLE `chisto_dashboard_widget_placement`
  ADD PRIMARY KEY (`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `chisto_documentgroup_names`
--
ALTER TABLE `chisto_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `chisto_document_groups`
--
ALTER TABLE `chisto_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Индексы таблицы `chisto_element_property_sets`
--
ALTER TABLE `chisto_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Индексы таблицы `chisto_extension_packages`
--
ALTER TABLE `chisto_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `chisto_fc_profiles`
--
ALTER TABLE `chisto_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `chisto_fc_profiles_usergroups`
--
ALTER TABLE `chisto_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Индексы таблицы `chisto_fc_sets`
--
ALTER TABLE `chisto_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `chisto_lexicon_entries`
--
ALTER TABLE `chisto_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `chisto_manager_log`
--
ALTER TABLE `chisto_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Индексы таблицы `chisto_media_sources`
--
ALTER TABLE `chisto_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Индексы таблицы `chisto_media_sources_contexts`
--
ALTER TABLE `chisto_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Индексы таблицы `chisto_media_sources_elements`
--
ALTER TABLE `chisto_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Индексы таблицы `chisto_membergroup_names`
--
ALTER TABLE `chisto_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Индексы таблицы `chisto_member_groups`
--
ALTER TABLE `chisto_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `chisto_menus`
--
ALTER TABLE `chisto_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Индексы таблицы `chisto_migx_configs`
--
ALTER TABLE `chisto_migx_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `chisto_migx_config_elements`
--
ALTER TABLE `chisto_migx_config_elements`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chisto_migx_elements`
--
ALTER TABLE `chisto_migx_elements`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chisto_migx_formtabs`
--
ALTER TABLE `chisto_migx_formtabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Индексы таблицы `chisto_migx_formtab_fields`
--
ALTER TABLE `chisto_migx_formtab_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`),
  ADD KEY `formtab_id` (`formtab_id`),
  ADD KEY `field` (`field`),
  ADD KEY `pos` (`pos`);

--
-- Индексы таблицы `chisto_namespaces`
--
ALTER TABLE `chisto_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `chisto_property_set`
--
ALTER TABLE `chisto_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `chisto_register_messages`
--
ALTER TABLE `chisto_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `chisto_register_queues`
--
ALTER TABLE `chisto_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `chisto_register_topics`
--
ALTER TABLE `chisto_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `chisto_session`
--
ALTER TABLE `chisto_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Индексы таблицы `chisto_site_content`
--
ALTER TABLE `chisto_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `chisto_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Индексы таблицы `chisto_site_htmlsnippets`
--
ALTER TABLE `chisto_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `chisto_site_plugins`
--
ALTER TABLE `chisto_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `chisto_site_plugin_events`
--
ALTER TABLE `chisto_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `chisto_site_snippets`
--
ALTER TABLE `chisto_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `chisto_site_templates`
--
ALTER TABLE `chisto_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `chisto_site_tmplvars`
--
ALTER TABLE `chisto_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `chisto_site_tmplvar_access`
--
ALTER TABLE `chisto_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Индексы таблицы `chisto_site_tmplvar_contentvalues`
--
ALTER TABLE `chisto_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Индексы таблицы `chisto_site_tmplvar_templates`
--
ALTER TABLE `chisto_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `chisto_system_eventnames`
--
ALTER TABLE `chisto_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `chisto_system_settings`
--
ALTER TABLE `chisto_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `chisto_thumb_images`
--
ALTER TABLE `chisto_thumb_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image` (`image`);

--
-- Индексы таблицы `chisto_transport_packages`
--
ALTER TABLE `chisto_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Индексы таблицы `chisto_transport_providers`
--
ALTER TABLE `chisto_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `chisto_users`
--
ALTER TABLE `chisto_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Индексы таблицы `chisto_user_attributes`
--
ALTER TABLE `chisto_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Индексы таблицы `chisto_user_group_roles`
--
ALTER TABLE `chisto_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `authority` (`authority`);

--
-- Индексы таблицы `chisto_user_group_settings`
--
ALTER TABLE `chisto_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Индексы таблицы `chisto_user_messages`
--
ALTER TABLE `chisto_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chisto_user_settings`
--
ALTER TABLE `chisto_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Индексы таблицы `chisto_workspaces`
--
ALTER TABLE `chisto_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chisto_access_actiondom`
--
ALTER TABLE `chisto_access_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_access_actions`
--
ALTER TABLE `chisto_access_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_access_category`
--
ALTER TABLE `chisto_access_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_access_context`
--
ALTER TABLE `chisto_access_context`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `chisto_access_elements`
--
ALTER TABLE `chisto_access_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_access_media_source`
--
ALTER TABLE `chisto_access_media_source`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_access_menus`
--
ALTER TABLE `chisto_access_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_access_namespace`
--
ALTER TABLE `chisto_access_namespace`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_access_permissions`
--
ALTER TABLE `chisto_access_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT для таблицы `chisto_access_policies`
--
ALTER TABLE `chisto_access_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `chisto_access_policy_templates`
--
ALTER TABLE `chisto_access_policy_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `chisto_access_policy_template_groups`
--
ALTER TABLE `chisto_access_policy_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `chisto_access_resources`
--
ALTER TABLE `chisto_access_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_access_resource_groups`
--
ALTER TABLE `chisto_access_resource_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_access_templatevars`
--
ALTER TABLE `chisto_access_templatevars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_actiondom`
--
ALTER TABLE `chisto_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_actions`
--
ALTER TABLE `chisto_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `chisto_actions_fields`
--
ALTER TABLE `chisto_actions_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT для таблицы `chisto_categories`
--
ALTER TABLE `chisto_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `chisto_class_map`
--
ALTER TABLE `chisto_class_map`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `chisto_clientconfig_context_value`
--
ALTER TABLE `chisto_clientconfig_context_value`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_clientconfig_group`
--
ALTER TABLE `chisto_clientconfig_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chisto_clientconfig_setting`
--
ALTER TABLE `chisto_clientconfig_setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `chisto_content_type`
--
ALTER TABLE `chisto_content_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `chisto_dashboard`
--
ALTER TABLE `chisto_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chisto_dashboard_widget`
--
ALTER TABLE `chisto_dashboard_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `chisto_documentgroup_names`
--
ALTER TABLE `chisto_documentgroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_document_groups`
--
ALTER TABLE `chisto_document_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_extension_packages`
--
ALTER TABLE `chisto_extension_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_fc_profiles`
--
ALTER TABLE `chisto_fc_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_fc_sets`
--
ALTER TABLE `chisto_fc_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_lexicon_entries`
--
ALTER TABLE `chisto_lexicon_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_manager_log`
--
ALTER TABLE `chisto_manager_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=790;
--
-- AUTO_INCREMENT для таблицы `chisto_media_sources`
--
ALTER TABLE `chisto_media_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `chisto_membergroup_names`
--
ALTER TABLE `chisto_membergroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chisto_member_groups`
--
ALTER TABLE `chisto_member_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chisto_migx_configs`
--
ALTER TABLE `chisto_migx_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chisto_migx_config_elements`
--
ALTER TABLE `chisto_migx_config_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_migx_elements`
--
ALTER TABLE `chisto_migx_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_migx_formtabs`
--
ALTER TABLE `chisto_migx_formtabs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chisto_migx_formtab_fields`
--
ALTER TABLE `chisto_migx_formtab_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `chisto_property_set`
--
ALTER TABLE `chisto_property_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_register_queues`
--
ALTER TABLE `chisto_register_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `chisto_register_topics`
--
ALTER TABLE `chisto_register_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `chisto_site_content`
--
ALTER TABLE `chisto_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT для таблицы `chisto_site_htmlsnippets`
--
ALTER TABLE `chisto_site_htmlsnippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблицы `chisto_site_plugins`
--
ALTER TABLE `chisto_site_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `chisto_site_snippets`
--
ALTER TABLE `chisto_site_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT для таблицы `chisto_site_templates`
--
ALTER TABLE `chisto_site_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `chisto_site_tmplvars`
--
ALTER TABLE `chisto_site_tmplvars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT для таблицы `chisto_site_tmplvar_access`
--
ALTER TABLE `chisto_site_tmplvar_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_site_tmplvar_contentvalues`
--
ALTER TABLE `chisto_site_tmplvar_contentvalues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT для таблицы `chisto_thumb_images`
--
ALTER TABLE `chisto_thumb_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_transport_providers`
--
ALTER TABLE `chisto_transport_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chisto_users`
--
ALTER TABLE `chisto_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chisto_user_attributes`
--
ALTER TABLE `chisto_user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chisto_user_group_roles`
--
ALTER TABLE `chisto_user_group_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `chisto_user_messages`
--
ALTER TABLE `chisto_user_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chisto_workspaces`
--
ALTER TABLE `chisto_workspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
