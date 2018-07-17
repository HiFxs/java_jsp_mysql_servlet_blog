-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2018-07-17 16:01:31
-- 服务器版本： 5.7.22-0ubuntu18.04.1
-- PHP Version: 7.2.7-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- 表的结构 `t_article`
--

CREATE TABLE `t_article` (
  `id` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `author` varchar(30) NOT NULL,
  `sort` varchar(30) NOT NULL,
  `time` datetime DEFAULT '2017-09-18 00:00:00',
  `star` int(11) DEFAULT '0',
  `comment` int(11) DEFAULT '0',
  `visit` int(11) DEFAULT '0',
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_article`
--

INSERT INTO `t_article` (`id`, `title`, `author`, `sort`, `time`, `star`, `comment`, `visit`, `content`) VALUES
(1, 'javaEE', 'Mr.xv', 'java', '2018-07-16 00:00:00', 5, 3, 5, 'helloworld'),
(10, 'java +jsp +servlet+mysql', '徐浩杰', 'java', '2018-07-16 21:32:55', 0, 0, 2, '第一次博客网搭建');

-- --------------------------------------------------------

--
-- 表的结构 `t_article_delet`
--

CREATE TABLE `t_article_delet` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `sort` varchar(30) NOT NULL,
  `time` datetime DEFAULT '2017-09-18 00:00:00',
  `star` int(11) DEFAULT '0',
  `comment` int(11) DEFAULT '0',
  `visit` int(11) DEFAULT '0',
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_article_delet`
--

INSERT INTO `t_article_delet` (`id`, `title`, `author`, `sort`, `time`, `star`, `comment`, `visit`, `content`) VALUES
(1, 'k', 'kkk', 'kkk', '2018-07-16 00:00:00', 3, 3, 3, 'helloworld');

-- --------------------------------------------------------

--
-- 表的结构 `t_comment`
--

CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `nickname` varchar(30) DEFAULT NULL,
  `content` text,
  `time` datetime DEFAULT '2017-09-18 00:00:00',
  `star` int(11) DEFAULT '0',
  `diss` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_comment`
--

INSERT INTO `t_comment` (`id`, `article_id`, `nickname`, `content`, `time`, `star`, `diss`) VALUES
(1, 1, 'kkkk', 'helloworld', '2017-09-18 00:00:00', 3, 3);

-- --------------------------------------------------------

--
-- 表的结构 `t_tag`
--

CREATE TABLE `t_tag` (
  `id` int(11) DEFAULT NULL,
  `tag` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_tag`
--

INSERT INTO `t_tag` (`id`, `tag`) VALUES
(1, 'helloword'),
(10, 'helloword');

-- --------------------------------------------------------

--
-- 表的结构 `t_user`
--

CREATE TABLE `t_user` (
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'primary_key',
  `user_name` varchar(20) NOT NULL COMMENT 'username',
  `user_password` varchar(20) NOT NULL COMMENT 'password'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_user`
--

INSERT INTO `t_user` (`user_id`, `user_name`, `user_password`) VALUES
(1, '928675426', 'xhj970829');

-- --------------------------------------------------------

--
-- 表的结构 `t_visitor`
--

CREATE TABLE `t_visitor` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `web_ip` varchar(50) DEFAULT NULL,
  `host` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_visitor`
--

INSERT INTO `t_visitor` (`id`, `ip`, `time`, `web_ip`, `host`) VALUES
(1, '127.0.0.1', '2018-07-16', '127.0.0.1', '127.0.0.1'),
(52, '127.0.0.1', '2018-07-16 21:22:36', '127.0.0.1', '127.0.0.1'),
(53, '127.0.0.1', '2018-07-16 21:22:46', '127.0.0.1', '127.0.0.1'),
(54, '127.0.0.1', '2018-07-16 21:22:55', '127.0.0.1', '127.0.0.1'),
(55, '127.0.0.1', '2018-07-16 21:30:52', '127.0.0.1', '127.0.0.1'),
(56, '127.0.0.1', '2018-07-16 21:31:53', '127.0.0.1', '127.0.0.1'),
(57, '127.0.0.1', '2018-07-16 21:36:35', '127.0.0.1', '127.0.0.1'),
(58, '127.0.0.1', '2018-07-16 22:52:51', '127.0.0.1', '127.0.0.1'),
(59, '127.0.0.1', '2018-07-16 22:53:17', '127.0.0.1', '127.0.0.1'),
(60, '127.0.0.1', '2018-07-16 22:56:59', '127.0.0.1', '127.0.0.1'),
(61, '127.0.0.1', '2018-07-16 22:58:09', '127.0.0.1', '127.0.0.1'),
(62, '127.0.0.1', '2018-07-16 22:58:10', '127.0.0.1', '127.0.0.1'),
(63, '127.0.0.1', '2018-07-16 22:58:16', '127.0.0.1', '127.0.0.1'),
(64, '127.0.0.1', '2018-07-16 22:58:49', '127.0.0.1', '127.0.0.1'),
(65, '127.0.0.1', '2018-07-16 23:16:43', '127.0.0.1', '127.0.0.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_article`
--
ALTER TABLE `t_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_article_delet`
--
ALTER TABLE `t_article_delet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_comment`
--
ALTER TABLE `t_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `t_tag`
--
ALTER TABLE `t_tag`
  ADD KEY `id` (`id`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `t_visitor`
--
ALTER TABLE `t_visitor`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `t_article`
--
ALTER TABLE `t_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `t_article_delet`
--
ALTER TABLE `t_article_delet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `t_comment`
--
ALTER TABLE `t_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `t_user`
--
ALTER TABLE `t_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'primary_key', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `t_visitor`
--
ALTER TABLE `t_visitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- 限制导出的表
--

--
-- 限制表 `t_comment`
--
ALTER TABLE `t_comment`
  ADD CONSTRAINT `article_id` FOREIGN KEY (`article_id`) REFERENCES `t_article` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 限制表 `t_tag`
--
ALTER TABLE `t_tag`
  ADD CONSTRAINT `t_tag_ibfk_1` FOREIGN KEY (`id`) REFERENCES `t_article` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
