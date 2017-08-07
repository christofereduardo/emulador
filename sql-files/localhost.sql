-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 14-Nov-2016 às 13:28
-- Versão do servidor: 5.5.34
-- versão do PHP: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `ragnarok`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acc_reg_num_db`
--

CREATE TABLE IF NOT EXISTS `acc_reg_num_db` (
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acc_reg_str_db`
--

CREATE TABLE IF NOT EXISTS `acc_reg_str_db` (
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` varchar(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `account_data`
--

CREATE TABLE IF NOT EXISTS `account_data` (
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `bank_vault` int(11) unsigned NOT NULL DEFAULT '0',
  `base_exp` tinyint(4) unsigned NOT NULL DEFAULT '100',
  `base_drop` tinyint(4) unsigned NOT NULL DEFAULT '100',
  `base_death` tinyint(4) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auction`
--

CREATE TABLE IF NOT EXISTS `auction` (
  `auction_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) unsigned NOT NULL DEFAULT '0',
  `seller_name` varchar(30) NOT NULL DEFAULT '',
  `buyer_id` int(11) unsigned NOT NULL DEFAULT '0',
  `buyer_name` varchar(30) NOT NULL DEFAULT '',
  `price` int(11) unsigned NOT NULL DEFAULT '0',
  `buynow` int(11) unsigned NOT NULL DEFAULT '0',
  `hours` smallint(6) NOT NULL DEFAULT '0',
  `timestamp` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(11) unsigned NOT NULL DEFAULT '0',
  `item_name` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autotrade_data`
--

CREATE TABLE IF NOT EXISTS `autotrade_data` (
  `char_id` int(11) NOT NULL DEFAULT '0',
  `itemkey` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`itemkey`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autotrade_merchants`
--

CREATE TABLE IF NOT EXISTS `autotrade_merchants` (
  `account_id` int(11) NOT NULL DEFAULT '0',
  `char_id` int(11) NOT NULL DEFAULT '0',
  `sex` tinyint(2) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT 'Buy From Me!',
  PRIMARY KEY (`account_id`,`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cart_inventory`
--

CREATE TABLE IF NOT EXISTS `cart_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL DEFAULT '0',
  `nameid` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `equip` int(11) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  `bound` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `char`
--

CREATE TABLE IF NOT EXISTS `char` (
  `char_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_num` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `class` smallint(6) unsigned NOT NULL DEFAULT '0',
  `base_level` smallint(6) unsigned NOT NULL DEFAULT '1',
  `job_level` smallint(6) unsigned NOT NULL DEFAULT '1',
  `base_exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `job_exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `zeny` int(11) unsigned NOT NULL DEFAULT '0',
  `str` smallint(4) unsigned NOT NULL DEFAULT '0',
  `agi` smallint(4) unsigned NOT NULL DEFAULT '0',
  `vit` smallint(4) unsigned NOT NULL DEFAULT '0',
  `int` smallint(4) unsigned NOT NULL DEFAULT '0',
  `dex` smallint(4) unsigned NOT NULL DEFAULT '0',
  `luk` smallint(4) unsigned NOT NULL DEFAULT '0',
  `max_hp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `max_sp` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `sp` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `status_point` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_point` int(11) unsigned NOT NULL DEFAULT '0',
  `option` int(11) NOT NULL DEFAULT '0',
  `karma` tinyint(3) NOT NULL DEFAULT '0',
  `manner` smallint(6) NOT NULL DEFAULT '0',
  `party_id` int(11) unsigned NOT NULL DEFAULT '0',
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `pet_id` int(11) unsigned NOT NULL DEFAULT '0',
  `homun_id` int(11) unsigned NOT NULL DEFAULT '0',
  `elemental_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hair` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hair_color` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clothes_color` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weapon` smallint(6) unsigned NOT NULL DEFAULT '0',
  `shield` smallint(6) unsigned NOT NULL DEFAULT '0',
  `head_top` smallint(6) unsigned NOT NULL DEFAULT '0',
  `head_mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `head_bottom` smallint(6) unsigned NOT NULL DEFAULT '0',
  `robe` smallint(6) unsigned NOT NULL DEFAULT '0',
  `last_map` varchar(11) NOT NULL DEFAULT '',
  `last_x` smallint(4) unsigned NOT NULL DEFAULT '53',
  `last_y` smallint(4) unsigned NOT NULL DEFAULT '111',
  `save_map` varchar(11) NOT NULL DEFAULT '',
  `save_x` smallint(4) unsigned NOT NULL DEFAULT '53',
  `save_y` smallint(4) unsigned NOT NULL DEFAULT '111',
  `partner_id` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(2) NOT NULL DEFAULT '0',
  `father` int(11) unsigned NOT NULL DEFAULT '0',
  `mother` int(11) unsigned NOT NULL DEFAULT '0',
  `child` int(11) unsigned NOT NULL DEFAULT '0',
  `fame` int(11) unsigned NOT NULL DEFAULT '0',
  `rename` smallint(3) unsigned NOT NULL DEFAULT '0',
  `delete_date` int(11) unsigned NOT NULL DEFAULT '0',
  `slotchange` smallint(3) unsigned NOT NULL DEFAULT '0',
  `char_opt` int(11) unsigned NOT NULL DEFAULT '0',
  `font` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unban_time` int(11) unsigned NOT NULL DEFAULT '0',
  `uniqueitem_counter` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`),
  UNIQUE KEY `name_key` (`name`),
  KEY `account_id` (`account_id`),
  KEY `party_id` (`party_id`),
  KEY `guild_id` (`guild_id`),
  KEY `online` (`online`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=150002 ;

--
-- Extraindo dados da tabela `char`
--

INSERT INTO `char` (`char_id`, `account_id`, `char_num`, `name`, `class`, `base_level`, `job_level`, `base_exp`, `job_exp`, `zeny`, `str`, `agi`, `vit`, `int`, `dex`, `luk`, `max_hp`, `hp`, `max_sp`, `sp`, `status_point`, `skill_point`, `option`, `karma`, `manner`, `party_id`, `guild_id`, `pet_id`, `homun_id`, `elemental_id`, `hair`, `hair_color`, `clothes_color`, `weapon`, `shield`, `head_top`, `head_mid`, `head_bottom`, `robe`, `last_map`, `last_x`, `last_y`, `save_map`, `save_x`, `save_y`, `partner_id`, `online`, `father`, `mother`, `child`, `fame`, `rename`, `delete_date`, `slotchange`, `char_opt`, `font`, `unban_time`, `uniqueitem_counter`) VALUES
(150000, 2000000, 1, 'Athos', 4062, 99, 1, 343210000, 0, 549000, 200, 200, 200, 200, 200, 200, 17771, 17771, 1522, 1522, 1351, 19, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'prontera', 149, 166, 'pay_arche', 43, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12),
(150001, 2000001, 1, 'Beatris', 4062, 99, 1, 0, 0, 96000, 1, 1, 1, 1, 1, 1, 5982, 5982, 512, 512, 1303, 34, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 'prontera', 150, 171, 'pay_arche', 46, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `char_reg_num_db`
--

CREATE TABLE IF NOT EXISTS `char_reg_num_db` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`key`,`index`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `char_reg_num_db`
--

INSERT INTO `char_reg_num_db` (`char_id`, `key`, `index`, `value`) VALUES
(150000, 'jobchange_level', 0, 50),
(150000, 'PC_DIE_COUNTER', 0, 3),
(150000, 'jobchange_level_3rd', 0, 1),
(150001, 'nov_1st_cos', 0, 3),
(150001, 'PC_DIE_COUNTER', 0, 11),
(150000, 'lastjob1', 0, 1),
(150000, 'lastjob', 0, 7),
(150000, 'lastwarpx', 0, 116),
(150000, 'lastwarpy', 0, 56),
(150001, 'nov_get_item02', 0, 12),
(150001, 'nov_get_item03', 0, 13),
(150001, 'NOV_SK', 0, 3),
(150001, 'nov_2nd_cos', 0, 25),
(150001, 'lastjob1', 0, 3),
(150001, 'lastwarpx', 0, 46),
(150001, 'lastwarpy', 0, 130),
(150001, 'jobchange_level', 0, 26),
(150001, 'jobchange_level_3rd', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `char_reg_str_db`
--

CREATE TABLE IF NOT EXISTS `char_reg_str_db` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` varchar(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`key`,`index`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `char_reg_str_db`
--

INSERT INTO `char_reg_str_db` (`char_id`, `key`, `index`, `value`) VALUES
(150000, 'lastwarp$', 0, 'alberta'),
(150001, 'lastwarp$', 0, 'pay_arche');

-- --------------------------------------------------------

--
-- Estrutura da tabela `charlog`
--

CREATE TABLE IF NOT EXISTS `charlog` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `char_msg` varchar(255) NOT NULL DEFAULT 'char select',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_num` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(23) NOT NULL DEFAULT '',
  `str` int(11) unsigned NOT NULL DEFAULT '0',
  `agi` int(11) unsigned NOT NULL DEFAULT '0',
  `vit` int(11) unsigned NOT NULL DEFAULT '0',
  `int` int(11) unsigned NOT NULL DEFAULT '0',
  `dex` int(11) unsigned NOT NULL DEFAULT '0',
  `luk` int(11) unsigned NOT NULL DEFAULT '0',
  `hair` tinyint(4) NOT NULL DEFAULT '0',
  `hair_color` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `charlog`
--

INSERT INTO `charlog` (`time`, `char_msg`, `account_id`, `char_id`, `char_num`, `name`, `str`, `agi`, `vit`, `int`, `dex`, `luk`, `hair`, `hair_color`) VALUES
('2016-08-16 11:44:23', 'make new char', 2000000, 150000, 1, 'Adminstrador', 1, 1, 1, 1, 1, 1, 1, 0),
('2016-08-16 11:44:24', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-08-16 11:46:45', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-08-16 11:48:30', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-09-06 11:20:40', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-09-06 11:30:02', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-09-06 11:35:58', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-09-06 11:46:20', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-09-06 11:46:39', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-09-06 11:46:51', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-09-06 12:01:29', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-09-06 12:08:39', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-09-06 12:41:06', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-09-06 14:44:09', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-09-06 15:42:58', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-09-06 15:58:06', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-09-06 16:00:39', 'char select', 2000000, 150000, 1, 'Adminstrador', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-09-06 16:35:01', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-05 21:02:25', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-05 21:26:11', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-05 21:27:41', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-05 21:29:23', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-05 21:31:37', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-05 21:34:39', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-05 21:36:40', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-05 21:38:32', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-05 21:39:49', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-05 21:50:55', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-05 21:52:45', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-05 21:54:02', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-22 13:38:19', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-22 13:41:44', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-22 14:36:30', 'make new char', 2000001, 150001, 1, 'Beatris', 1, 1, 1, 1, 1, 1, 5, 1),
('2016-10-22 14:36:31', 'char select', 2000001, 150001, 1, 'Beatris', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-22 14:37:18', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-22 15:09:12', 'char select', 2000001, 150001, 1, 'Beatris', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-22 15:09:48', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-22 15:10:06', 'char select', 2000001, 150001, 1, 'Beatris', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-22 15:10:45', 'char select', 2000001, 150001, 1, 'Beatris', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-22 15:12:23', 'char select', 2000001, 150001, 1, 'Beatris', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 10:28:23', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 10:59:42', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 11:02:02', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 11:47:13', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 12:02:19', 'char select', 2000001, 150001, 1, 'Beatris', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 12:02:34', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 12:06:41', 'char select', 2000001, 150001, 1, 'Beatris', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 12:07:22', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 16:19:01', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 22:21:23', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 22:53:06', 'char select', 2000001, 150001, 1, 'Beatris', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 23:12:28', 'char select', 2000001, 150001, 1, 'Beatris', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 23:17:04', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 23:53:48', 'char select', 2000001, 150001, 1, 'Beatris', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 23:54:37', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 23:54:58', 'char select', 2000001, 150001, 1, 'Beatris', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-23 23:58:42', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-24 11:52:18', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-26 20:51:40', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-26 21:16:24', 'char select', 2000000, 150000, 1, 'Athos', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-26 21:16:44', 'char select', 2000001, 150001, 1, 'Beatris', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-10-26 21:22:25', 'char select', 2000001, 150001, 1, 'Beatris', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `elemental`
--

CREATE TABLE IF NOT EXISTS `elemental` (
  `ele_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `mode` int(11) unsigned NOT NULL DEFAULT '1',
  `hp` int(12) NOT NULL DEFAULT '1',
  `sp` int(12) NOT NULL DEFAULT '1',
  `max_hp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `max_sp` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `atk1` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `atk2` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `matk` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `aspd` smallint(4) unsigned NOT NULL DEFAULT '0',
  `def` smallint(4) unsigned NOT NULL DEFAULT '0',
  `mdef` smallint(4) unsigned NOT NULL DEFAULT '0',
  `flee` smallint(4) unsigned NOT NULL DEFAULT '0',
  `hit` smallint(4) unsigned NOT NULL DEFAULT '0',
  `life_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ele_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `char_id` int(11) NOT NULL DEFAULT '0',
  `friend_account` int(11) NOT NULL DEFAULT '0',
  `friend_id` int(11) NOT NULL DEFAULT '0',
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `global_acc_reg_num_db`
--

CREATE TABLE IF NOT EXISTS `global_acc_reg_num_db` (
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `global_acc_reg_str_db`
--

CREATE TABLE IF NOT EXISTS `global_acc_reg_str_db` (
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` varchar(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild`
--

CREATE TABLE IF NOT EXISTS `guild` (
  `guild_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL DEFAULT '',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `master` varchar(24) NOT NULL DEFAULT '',
  `guild_lv` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `connect_member` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `max_member` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `average_lv` smallint(6) unsigned NOT NULL DEFAULT '1',
  `exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `next_exp` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_point` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `mes1` varchar(60) NOT NULL DEFAULT '',
  `mes2` varchar(120) NOT NULL DEFAULT '',
  `emblem_len` int(11) unsigned NOT NULL DEFAULT '0',
  `emblem_id` int(11) unsigned NOT NULL DEFAULT '0',
  `emblem_data` blob,
  PRIMARY KEY (`guild_id`,`char_id`),
  UNIQUE KEY `guild_id` (`guild_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `guild`
--

INSERT INTO `guild` (`guild_id`, `name`, `char_id`, `master`, `guild_lv`, `connect_member`, `max_member`, `average_lv`, `exp`, `next_exp`, `skill_point`, `mes1`, `mes2`, `emblem_len`, `emblem_id`, `emblem_data`) VALUES
(1, 'Staff', 150000, 'Adminstrador', 50, 0, 76, 99, 0, 0, 6, '', '', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_alliance`
--

CREATE TABLE IF NOT EXISTS `guild_alliance` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `opposition` int(11) unsigned NOT NULL DEFAULT '0',
  `alliance_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`alliance_id`),
  KEY `alliance_id` (`alliance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_castle`
--

CREATE TABLE IF NOT EXISTS `guild_castle` (
  `castle_id` int(11) unsigned NOT NULL DEFAULT '0',
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `economy` int(11) unsigned NOT NULL DEFAULT '0',
  `defense` int(11) unsigned NOT NULL DEFAULT '0',
  `triggerE` int(11) unsigned NOT NULL DEFAULT '0',
  `triggerD` int(11) unsigned NOT NULL DEFAULT '0',
  `nextTime` int(11) unsigned NOT NULL DEFAULT '0',
  `payTime` int(11) unsigned NOT NULL DEFAULT '0',
  `createTime` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleC` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG0` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG1` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG2` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG3` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG4` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG5` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG6` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG7` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`castle_id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_expulsion`
--

CREATE TABLE IF NOT EXISTS `guild_expulsion` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `mes` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_member`
--

CREATE TABLE IF NOT EXISTS `guild_member` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hair` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `hair_color` smallint(6) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `class` smallint(6) unsigned NOT NULL DEFAULT '0',
  `lv` smallint(6) unsigned NOT NULL DEFAULT '0',
  `exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `exp_payper` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `position` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`char_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `guild_member`
--

INSERT INTO `guild_member` (`guild_id`, `account_id`, `char_id`, `hair`, `hair_color`, `gender`, `class`, `lv`, `exp`, `exp_payper`, `online`, `position`, `name`) VALUES
(1, 2000000, 150000, 1, 0, 1, 4062, 99, 0, 0, 1, 0, 'Adminstrador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_position`
--

CREATE TABLE IF NOT EXISTS `guild_position` (
  `guild_id` int(9) unsigned NOT NULL DEFAULT '0',
  `position` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `mode` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `exp_mode` tinyint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`,`position`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `guild_position`
--

INSERT INTO `guild_position` (`guild_id`, `position`, `name`, `mode`, `exp_mode`) VALUES
(1, 0, 'Manutenção', 17, 0),
(1, 1, 'Position 2', 0, 0),
(1, 2, 'Position 3', 0, 0),
(1, 3, 'Position 4', 0, 0),
(1, 4, 'Position 5', 0, 0),
(1, 5, 'Position 6', 0, 0),
(1, 6, 'Position 7', 0, 0),
(1, 7, 'Position 8', 0, 0),
(1, 8, 'Position 9', 0, 0),
(1, 9, 'Position 10', 0, 0),
(1, 10, 'Position 11', 0, 0),
(1, 11, 'Position 12', 0, 0),
(1, 12, 'Position 13', 0, 0),
(1, 13, 'Position 14', 0, 0),
(1, 14, 'Position 15', 0, 0),
(1, 15, 'Position 16', 0, 0),
(1, 16, 'Position 17', 0, 0),
(1, 17, 'Position 18', 0, 0),
(1, 18, 'Position 19', 0, 0),
(1, 19, 'Newbie', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_skill`
--

CREATE TABLE IF NOT EXISTS `guild_skill` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `lv` tinyint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `guild_skill`
--

INSERT INTO `guild_skill` (`guild_id`, `id`, `lv`) VALUES
(1, 10000, 1),
(1, 10001, 1),
(1, 10002, 1),
(1, 10003, 3),
(1, 10004, 10),
(1, 10006, 5),
(1, 10007, 5),
(1, 10008, 5),
(1, 10009, 5),
(1, 10010, 1),
(1, 10011, 3),
(1, 10012, 1),
(1, 10013, 1),
(1, 10014, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_storage`
--

CREATE TABLE IF NOT EXISTS `guild_storage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `equip` int(11) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) unsigned NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  `bound` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `homunculus`
--

CREATE TABLE IF NOT EXISTS `homunculus` (
  `homun_id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `prev_class` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `level` smallint(4) NOT NULL DEFAULT '0',
  `exp` int(12) NOT NULL DEFAULT '0',
  `intimacy` int(12) NOT NULL DEFAULT '0',
  `hunger` smallint(4) NOT NULL DEFAULT '0',
  `str` smallint(4) unsigned NOT NULL DEFAULT '0',
  `agi` smallint(4) unsigned NOT NULL DEFAULT '0',
  `vit` smallint(4) unsigned NOT NULL DEFAULT '0',
  `int` smallint(4) unsigned NOT NULL DEFAULT '0',
  `dex` smallint(4) unsigned NOT NULL DEFAULT '0',
  `luk` smallint(4) unsigned NOT NULL DEFAULT '0',
  `hp` int(12) NOT NULL DEFAULT '1',
  `max_hp` int(12) NOT NULL DEFAULT '1',
  `sp` int(12) NOT NULL DEFAULT '1',
  `max_sp` int(12) NOT NULL DEFAULT '1',
  `skill_point` smallint(4) unsigned NOT NULL DEFAULT '0',
  `alive` tinyint(2) NOT NULL DEFAULT '1',
  `rename_flag` tinyint(2) NOT NULL DEFAULT '0',
  `vaporize` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`homun_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hotkey`
--

CREATE TABLE IF NOT EXISTS `hotkey` (
  `char_id` int(11) NOT NULL,
  `hotkey` tinyint(2) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `itemskill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_lvl` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`hotkey`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `hotkey`
--

INSERT INTO `hotkey` (`char_id`, `hotkey`, `type`, `itemskill_id`, `skill_lvl`) VALUES
(150000, 0, 1, 267, 5),
(150000, 1, 1, 271, 5),
(150000, 2, 1, 270, 5),
(150000, 3, 1, 401, 1),
(150000, 4, 0, 12323, 0),
(150001, 0, 0, 569, 0),
(150001, 2, 0, 601, 0),
(150001, 3, 1, 46, 5),
(150000, 5, 1, 264, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `interlog`
--

CREATE TABLE IF NOT EXISTS `interlog` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `interlog`
--

INSERT INTO `interlog` (`time`, `log`) VALUES
('2016-08-16 12:28:21', 'Guild (Nome:Staff | GID: 1) criada por Adminstrador (AID: 2000000).\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `interreg`
--

CREATE TABLE IF NOT EXISTS `interreg` (
  `varname` varchar(11) NOT NULL,
  `value` varchar(20) NOT NULL,
  PRIMARY KEY (`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `equip` int(11) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  `favorite` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bound` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Extraindo dados da tabela `inventory`
--

INSERT INTO `inventory` (`id`, `char_id`, `nameid`, `amount`, `equip`, `identify`, `refine`, `attribute`, `card0`, `card1`, `card2`, `card3`, `expire_time`, `favorite`, `bound`, `unique_id`) VALUES
(33, 150001, 611, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 150001, 2112, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 644249389367298),
(31, 150001, 1243, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 644249389367297),
(30, 150001, 601, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 150001, 602, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 150001, 2352, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 644249389367296),
(17, 150001, 1201, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 150001, 2301, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 150001, 569, 279, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 150001, 512, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 150001, 713, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 150001, 914, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 150001, 909, 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 150001, 645, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 150001, 1751, 961, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 150001, 1701, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 644249389367299),
(43, 150001, 507, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 150001, 910, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, 150001, 938, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 150001, 913, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 150001, 4025, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 150001, 7884, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ipbanlist`
--

CREATE TABLE IF NOT EXISTS `ipbanlist` (
  `list` varchar(255) NOT NULL DEFAULT '',
  `btime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` varchar(255) NOT NULL DEFAULT '',
  KEY `list` (`list`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `account_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(23) NOT NULL DEFAULT '',
  `user_pass` varchar(32) NOT NULL DEFAULT '',
  `sex` enum('M','F','S') NOT NULL DEFAULT 'M',
  `email` varchar(39) NOT NULL DEFAULT '',
  `group_id` tinyint(3) NOT NULL DEFAULT '0',
  `state` int(11) unsigned NOT NULL DEFAULT '0',
  `unban_time` int(11) unsigned NOT NULL DEFAULT '0',
  `expiration_time` int(11) unsigned NOT NULL DEFAULT '0',
  `logincount` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(100) NOT NULL DEFAULT '',
  `birthdate` date NOT NULL DEFAULT '0000-00-00',
  `character_slots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pincode` varchar(4) NOT NULL DEFAULT '',
  `pincode_change` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`),
  KEY `name` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2000002 ;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`, `group_id`, `state`, `unban_time`, `expiration_time`, `logincount`, `lastlogin`, `last_ip`, `birthdate`, `character_slots`, `pincode`, `pincode_change`) VALUES
(1, 's1', 'p1', 'S', 'athena@athena.com', 0, 0, 0, 0, 33, '2016-10-26 21:16:15', '127.0.0.1', '0000-00-00', 0, '', 0),
(2000000, 'athos', '84625asd', 'M', 'a@a.com', 99, 0, 0, 0, 46, '2016-10-26 21:16:24', '127.0.0.1', '0000-00-00', 0, '', 0),
(2000001, 'player', '84625asd', 'F', 'a@a.com', 0, 0, 0, 0, 12, '2016-10-26 21:16:43', '127.0.0.1', '0000-00-00', 0, '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mail`
--

CREATE TABLE IF NOT EXISTS `mail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `send_name` varchar(30) NOT NULL DEFAULT '',
  `send_id` int(11) unsigned NOT NULL DEFAULT '0',
  `dest_name` varchar(30) NOT NULL DEFAULT '',
  `dest_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(45) NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `zeny` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mapreg`
--

CREATE TABLE IF NOT EXISTS `mapreg` (
  `varname` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`varname`,`index`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mapreg`
--

INSERT INTO `mapreg` (`varname`, `index`, `value`) VALUES
('$timezonestring$', 0, '^FF0000GMT^000000'),
('$ttnames$', 0, 'Breezy Havana'),
('$ttnames$', 1, 'RS125'),
('$ttnames$', 2, 'Hollgrehenn'),
('$ttnames$', 3, 'Antonio'),
('$ttnames$', 4, 'Aragham'),
('$ttnames$', 5, 'Kafra Jasmine'),
('$ttnames$', 6, 'Chris'),
('$ttnames$', 7, 'Breezy Havana'),
('$ttnames$', 8, 'RS125'),
('$ttnames$', 9, 'Breezy Havana'),
('$ttnames$', 10, 'Nari'),
('$ttnames$', 11, 'Senorita Sylvia'),
('$ttnames$', 12, 'Joo Jahk'),
('$ttnames$', 13, 'RS125'),
('$ttranks', 0, '999999'),
('$top_ptmin', 0, '10'),
('$top_80min', 0, '8'),
('$top_70min', 0, '7'),
('$top_60min', 0, '6'),
('$top_50min', 0, '5'),
('$arn_pritop60', 0, '480'),
('$arn_pritop70', 0, '480'),
('$arn_pritop80', 0, '480'),
('$arn_pritop90', 0, '480'),
('$arn_acotop', 0, '480'),
('$arn_pritopn60$', 0, 'Default'),
('$arn_pritopn70$', 0, 'Default'),
('$arn_pritopn80$', 0, 'Default'),
('$arn_pritopn90$', 0, 'Default'),
('$arn_acotopn$', 0, 'Default'),
('$DTS_Time', 0, '835');

-- --------------------------------------------------------

--
-- Estrutura da tabela `memo`
--

CREATE TABLE IF NOT EXISTS `memo` (
  `memo_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `map` varchar(11) NOT NULL DEFAULT '',
  `x` smallint(4) unsigned NOT NULL DEFAULT '0',
  `y` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memo_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mercenary`
--

CREATE TABLE IF NOT EXISTS `mercenary` (
  `mer_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `hp` int(12) NOT NULL DEFAULT '1',
  `sp` int(12) NOT NULL DEFAULT '1',
  `kill_counter` int(11) NOT NULL,
  `life_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mercenary_owner`
--

CREATE TABLE IF NOT EXISTS `mercenary_owner` (
  `char_id` int(11) NOT NULL,
  `merc_id` int(11) NOT NULL DEFAULT '0',
  `arch_calls` int(11) NOT NULL DEFAULT '0',
  `arch_faith` int(11) NOT NULL DEFAULT '0',
  `spear_calls` int(11) NOT NULL DEFAULT '0',
  `spear_faith` int(11) NOT NULL DEFAULT '0',
  `sword_calls` int(11) NOT NULL DEFAULT '0',
  `sword_faith` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `npc_market_data`
--

CREATE TABLE IF NOT EXISTS `npc_market_data` (
  `name` varchar(24) NOT NULL DEFAULT '',
  `itemid` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`,`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `party`
--

CREATE TABLE IF NOT EXISTS `party` (
  `party_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL DEFAULT '',
  `exp` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `item` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `leader_id` int(11) unsigned NOT NULL DEFAULT '0',
  `leader_char` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`party_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pet`
--

CREATE TABLE IF NOT EXISTS `pet` (
  `pet_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `class` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `level` smallint(4) unsigned NOT NULL DEFAULT '0',
  `egg_id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `equip` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `intimate` smallint(9) unsigned NOT NULL DEFAULT '0',
  `hungry` smallint(9) unsigned NOT NULL DEFAULT '0',
  `rename_flag` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `incubate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `quest`
--

CREATE TABLE IF NOT EXISTS `quest` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL,
  `state` enum('0','1','2') NOT NULL DEFAULT '0',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `count1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`quest_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ragsrvinfo`
--

CREATE TABLE IF NOT EXISTS `ragsrvinfo` (
  `index` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `exp` int(11) unsigned NOT NULL DEFAULT '0',
  `jexp` int(11) unsigned NOT NULL DEFAULT '0',
  `drop` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sc_data`
--

CREATE TABLE IF NOT EXISTS `sc_data` (
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `type` smallint(11) unsigned NOT NULL,
  `tick` int(11) NOT NULL,
  `val1` int(11) NOT NULL DEFAULT '0',
  `val2` int(11) NOT NULL DEFAULT '0',
  `val3` int(11) NOT NULL DEFAULT '0',
  `val4` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`char_id`,`type`),
  KEY `account_id` (`account_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `skill`
--

CREATE TABLE IF NOT EXISTS `skill` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `skill`
--

INSERT INTO `skill` (`char_id`, `id`, `lv`, `flag`) VALUES
(150001, 383, 10, 0),
(150000, 383, 10, 0),
(150000, 382, 5, 0),
(150000, 381, 5, 0),
(150000, 380, 10, 0),
(150000, 142, 1, 0),
(150000, 130, 4, 0),
(150000, 129, 5, 0),
(150000, 128, 3, 0),
(150000, 127, 1, 0),
(150000, 126, 10, 0),
(150000, 124, 1, 0),
(150000, 123, 5, 0),
(150000, 122, 1, 0),
(150000, 121, 1, 0),
(150000, 120, 1, 0),
(150000, 119, 5, 0),
(150000, 118, 1, 0),
(150000, 117, 5, 0),
(150000, 116, 5, 0),
(150000, 115, 1, 0),
(150000, 47, 10, 0),
(150000, 46, 10, 0),
(150000, 45, 10, 0),
(150000, 44, 10, 0),
(150000, 43, 10, 0),
(150000, 1, 9, 0),
(150001, 382, 5, 0),
(150001, 381, 5, 0),
(150001, 142, 1, 0),
(150001, 129, 5, 0),
(150001, 128, 10, 0),
(150001, 127, 1, 0),
(150001, 126, 3, 0),
(150001, 117, 5, 0),
(150001, 116, 5, 0),
(150001, 115, 5, 0),
(150001, 47, 10, 0),
(150001, 46, 10, 0),
(150001, 45, 10, 0),
(150001, 44, 10, 0),
(150001, 43, 10, 0),
(150001, 1, 9, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `skill_homunculus`
--

CREATE TABLE IF NOT EXISTS `skill_homunculus` (
  `homun_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `lv` smallint(6) NOT NULL,
  PRIMARY KEY (`homun_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sql_updates`
--

CREATE TABLE IF NOT EXISTS `sql_updates` (
  `timestamp` int(11) unsigned NOT NULL,
  `ignored` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sql_updates`
--

INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES
(1360858500, 'No'),
(1360951560, 'No'),
(1362445531, 'No'),
(1362528000, 'No'),
(1362794218, 'No'),
(1364409316, 'No'),
(1366075474, 'No'),
(1366078541, 'No'),
(1381354728, 'No'),
(1381423003, 'No'),
(1382892428, 'No'),
(1383162785, 'No'),
(1383167577, 'No'),
(1383205740, 'No'),
(1383955424, 'No'),
(1384473995, 'No'),
(1384545461, 'No'),
(1384588175, 'No'),
(1384763034, 'No'),
(1387844126, 'No'),
(1388854043, 'No'),
(1389028967, 'No'),
(1392832626, 'No'),
(1395789302, 'No'),
(1396893866, 'No'),
(1398477600, 'No'),
(1400256139, 'No'),
(1404494956, 'No');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sstatus`
--

CREATE TABLE IF NOT EXISTS `sstatus` (
  `index` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `user` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `storage`
--

CREATE TABLE IF NOT EXISTS `storage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` smallint(11) unsigned NOT NULL DEFAULT '0',
  `equip` int(11) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) unsigned NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  `bound` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Extraindo dados da tabela `storage`
--

INSERT INTO `storage` (`id`, `account_id`, `nameid`, `amount`, `equip`, `identify`, `refine`, `attribute`, `card0`, `card1`, `card2`, `card3`, `expire_time`, `bound`, `unique_id`) VALUES
(1, 2000000, 1201, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 2000000, 2301, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 2000000, 607, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 2000000, 2423, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 644245094400003),
(23, 2000000, 2701, 1, 0, 1, 0, 0, 4079, 0, 0, 0, 0, 0, 644245094400002),
(22, 2000000, 2701, 1, 0, 1, 0, 0, 4079, 0, 0, 0, 0, 0, 644245094400001),
(21, 2000000, 2537, 1, 0, 1, 10, 0, 4174, 0, 0, 0, 0, 0, 644245094400004),
(20, 2000000, 5353, 1, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 644245094400005),
(19, 2000000, 2115, 1, 0, 1, 10, 0, 4128, 0, 0, 0, 0, 0, 644245094400008),
(18, 2000000, 5206, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 644245094400009),
(17, 2000000, 2365, 1, 0, 1, 10, 0, 4393, 0, 0, 0, 0, 0, 644245094400007),
(16, 2000000, 1544, 1, 0, 1, 10, 0, 4140, 4140, 4140, 0, 0, 0, 644245094400000),
(13, 2000000, 12043, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 2000000, 608, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 2000000, 7563, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 2000000, 12323, 4985, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 2000000, 12212, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
