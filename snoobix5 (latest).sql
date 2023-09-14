-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2023 at 10:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snoobix5`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_status`
--

CREATE TABLE `active_status` (
  `id` int(11) NOT NULL,
  `is_active` varchar(5) DEFAULT NULL,
  `active` varchar(5) NOT NULL DEFAULT '1',
  `recdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `active_status`
--

INSERT INTO `active_status` (`id`, `is_active`, `active`, `recdate`) VALUES
(1, 'Yes', '1', '2022-03-09 13:54:32'),
(2, 'No', '1', '2022-03-09 13:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `blog_image` varchar(100) DEFAULT NULL,
  `blog_title` varchar(500) DEFAULT NULL,
  `blog_contents` text DEFAULT NULL,
  `recdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_image`, `blog_title`, `blog_contents`, `recdate`, `active`) VALUES
(1, '1T0ABJoOBsPmFtimIgZgSz5txLkJaGRyansC5vfN.jpg', 'Buying a used car? Keep an eye on these things before you do', '<p>Buying used cars is an art. It can become extra tricky if they are old used cars. There are many things that can go wrong when you buy a pre-used car. Some people prefer used car dealerships, some preferring buying from individuals. There are some disadvantages of buying a used car from the dealer, like hidden costs, as well as from private sellers, like the shady history of the car. Just keep in mind the chances of Murphy&rsquo;s law when buying something, anything, from a stranger.</p>\r\n\r\n<p>It is all about what to look for and what to ask when buying a second-hand car. Here are some things to know when buying a used car from a private seller or a car dealer in Pakistan. You can call it your second hand car checklist, if you will.</p>\r\n\r\n<h3>Engine</h3>\r\n\r\n<p>There are a handful of things that need to be checked engine-wise before buying your used car. Make sure there is no smoke of any kind. Smoke depending upon the colour can mean something minor like bad fuel mixture to something extreme like needing a complete engine rebuild. Also, listen for odd noise. There should not be any odd and out of the ordinary sounds.</p>\r\n\r\n<p>Also, see if there is any OBD code. New cars are pretty clever and can tell you in detail if there is any nasty hidden surprise for you AFTER you have bought the car. OBD scanning is especially useful for hybrid vehicles and cars with DCT.</p>\r\n\r\n<p>Transmission is also part of this thing. For manual check if the clutch is good or slipping. For newer cars with clever dual clutch transmissions like Honda Vezel, get an expert to thoroughly check it since replacing a DCT&rsquo;s clutch is a massive cost.</p>', '2022-04-09 16:12:35', '1'),
(2, 'uploads/eAsGwRMegr8qfn8dgFHh0THanITynymvzMwIRmgl.jpg', 'this is test blog CDEF', '<p>t has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n', '2022-04-28 00:41:17', '1'),
(12, NULL, 'Create Your Ultimate Income', '<p>&nbsp;gsg sdfg&nbsp;</p>\r\n', '2022-04-28 01:46:36', '1'),
(11, NULL, 'Create Your Ultimate Income', '<p>&nbsp;gsg sdfg&nbsp;</p>\r\n', '2022-04-28 01:40:49', '1'),
(10, NULL, 'Create Your Ultimate Income', '<p>&nbsp;gsg sdfg&nbsp;</p>\r\n', '2022-04-28 01:39:42', '1'),
(9, 'estERAfzD3gRrIlzAoMdlt7faqL6QIXqJ81QO199.png', 'this is test blog', '<p>ghj fdgh</p>\r\n', '2022-04-28 01:12:35', '1'),
(13, NULL, 'this is test blog', '<p>s gsdfg sdfg</p>\r\n', '2022-04-28 01:47:17', '1'),
(14, NULL, 'this is test blog', '<p>s gsdfg sdfg</p>\r\n', '2022-04-28 01:47:40', '1');

-- --------------------------------------------------------

--
-- Table structure for table `charts_desinger`
--

CREATE TABLE `charts_desinger` (
  `id` int(11) NOT NULL,
  `chart_title` varchar(225) NOT NULL,
  `chart_values` text NOT NULL,
  `chart_properties` text NOT NULL,
  `chart_type` varchar(225) NOT NULL,
  `chart_code` text NOT NULL,
  `active` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `reply_message` text DEFAULT NULL,
  `reply_date` date DEFAULT NULL,
  `recdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `full_name`, `email_address`, `message`, `reply_message`, `reply_date`, `recdate`, `active`) VALUES
(1, 'Nadeem Iqbal', 'itspingo@yahoo.com', 'adf sdfg ', NULL, NULL, '2022-04-06 21:20:53', '1');

-- --------------------------------------------------------

--
-- Table structure for table `dznr_modules`
--

CREATE TABLE `dznr_modules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(200) NOT NULL,
  `parent_module` varchar(100) DEFAULT '0',
  `module_folder` varchar(50) DEFAULT NULL,
  `module_type` varchar(100) DEFAULT 'application',
  `menutype` varchar(100) NOT NULL,
  `module_descr` text DEFAULT NULL,
  `module_icon` varchar(50) DEFAULT NULL,
  `table_name` varchar(100) DEFAULT NULL,
  `controller_file` varchar(50) DEFAULT NULL,
  `view_file` varchar(50) DEFAULT NULL,
  `form_code` text DEFAULT NULL,
  `dznr_code` text DEFAULT NULL,
  `filter` varchar(500) DEFAULT NULL,
  `is_hidden` varchar(5) NOT NULL DEFAULT 'N',
  `active` varchar(5) NOT NULL DEFAULT '1',
  `user_id` varchar(10) DEFAULT NULL,
  `recdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `page_name` varchar(200) DEFAULT NULL,
  `add_page` varchar(5) DEFAULT NULL,
  `edit_page` varchar(5) DEFAULT NULL,
  `view_page` varchar(5) DEFAULT NULL,
  `duplicate_page` varchar(5) DEFAULT NULL,
  `list_page` varchar(5) DEFAULT NULL,
  `application` varchar(100) DEFAULT NULL,
  `clientid` varchar(50) DEFAULT NULL,
  `sql_script_file` varchar(500) DEFAULT NULL,
  `php_script_files` text DEFAULT NULL,
  `config_file` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dznr_modules`
--

INSERT INTO `dznr_modules` (`id`, `module_name`, `parent_module`, `module_folder`, `module_type`, `menutype`, `module_descr`, `module_icon`, `table_name`, `controller_file`, `view_file`, `form_code`, `dznr_code`, `filter`, `is_hidden`, `active`, `user_id`, `recdate`, `page_name`, `add_page`, `edit_page`, `view_page`, `duplicate_page`, `list_page`, `application`, `clientid`, `sql_script_file`, `php_script_files`, `config_file`) VALUES
(1, 'Test Module', '0', NULL, 'application', '', '', NULL, 'test_module', NULL, NULL, ' \n	  &lt;p name=&quot;grid-12&quot; id=&quot;76171&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col&quot; style=&quot;margin-left:10px; margin-right:10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_76171&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(76171)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot;&gt;&lt;p name=&quot;column_heading&quot; id=&quot;37948&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;(grid-12)-0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_37948&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 37948)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;lorem ipsum&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/p&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/p&gt;&lt;p name=&quot;grid-6&quot; id=&quot;46192&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col&quot; data-item-grid=&quot;grid-6&quot; style=&quot;margin-left:10px; margin-right:10px;&quot; data-item-seq=&quot;1&quot;&gt;\n\n\n\n\n			\n				\n				&lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_46192&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(46192)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-6 dropzone&quot; data-grid-position=&quot;0&quot;&gt;&lt;p name=&quot;email_input&quot; id=&quot;42632&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;(grid-6)-1-0-0&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; &gt;\n					&lt;label&gt;Email Address&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span &gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;password_input&apos;, 42632)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(42632)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;input type=&quot;email&quot; name=&quot;email_address&quot; id=&quot;email_address&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n				\n			\n&lt;/p&gt;&lt;/span&gt;\n					&lt;span class=&quot;col-6 dropzone dragover&quot; data-grid-position=&quot;1&quot;&gt;&lt;p name=&quot;password_input&quot; id=&quot;72820&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;(grid-6)-1-0-1&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; &gt;\n					&lt;label&gt;Password&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span &gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;password_input&apos;, 72820)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;input type=&quot;password&quot; name=&quot;password&quot; id=&quot;password&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n				\n				\n&lt;/p&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/p&gt;&lt;p name=&quot;grid-12&quot; id=&quot;27537&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col&quot; style=&quot;margin-left:10px; margin-right:10px;&quot; data-item-seq=&quot;2&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_27537&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(27537)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot;&gt;&lt;p name=&quot;check_box&quot; id=&quot;6930&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;(grid-12)-2-0&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; &gt;\n					&lt;label&gt;&lt;input type=&quot;checkbox&quot; name=&quot;remember_me&quot; id=&quot;remember_me&quot; value=&quot;Y&quot;&gt;Remember Me&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span &gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;check_box&apos;, 6930)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					\n				&lt;/span&gt;\n			&lt;/span&gt;	\n\n&lt;/p&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/p&gt;', ' \n	  &lt;p name=&quot;grid-12&quot; id=&quot;76171&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col&quot; style=&quot;margin-left:10px; margin-right:10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_76171&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(76171)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot;&gt;&lt;p name=&quot;column_heading&quot; id=&quot;37948&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;(grid-12)-0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_37948&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 37948)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(37948)&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_37948&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;lorem ipsum&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/p&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/p&gt;&lt;p name=&quot;grid-6&quot; id=&quot;46192&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col&quot; data-item-grid=&quot;grid-6&quot; style=&quot;margin-left:10px; margin-right:10px;&quot; data-item-seq=&quot;1&quot;&gt;\n\n\n\n\n			\n				\n				&lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_46192&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(46192)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-6 dropzone&quot; data-grid-position=&quot;0&quot;&gt;&lt;p name=&quot;email_input&quot; id=&quot;42632&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;(grid-6)-1-0-0&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_42632&quot;&gt;\n					&lt;label&gt;Email Address&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_42632&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;password_input&apos;, 42632)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(42632)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_42632&quot;&gt;\n					&lt;input type=&quot;email&quot; name=&quot;email_address&quot; id=&quot;email_address&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n				\n			\n&lt;/p&gt;&lt;/span&gt;\n					&lt;span class=&quot;col-6 dropzone dragover&quot; data-grid-position=&quot;1&quot;&gt;&lt;p name=&quot;password_input&quot; id=&quot;72820&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;(grid-6)-1-0-1&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_72820&quot;&gt;\n					&lt;label&gt;Password&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_72820&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;password_input&apos;, 72820)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(72820)&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_72820&quot;&gt;\n					&lt;input type=&quot;password&quot; name=&quot;password&quot; id=&quot;password&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n				\n				\n&lt;/p&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/p&gt;&lt;p name=&quot;grid-12&quot; id=&quot;27537&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col&quot; style=&quot;margin-left:10px; margin-right:10px;&quot; data-item-seq=&quot;2&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_27537&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(27537)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot;&gt;&lt;p name=&quot;check_box&quot; id=&quot;6930&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;(grid-12)-2-0&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_6930&quot;&gt;\n					&lt;label&gt;&lt;input type=&quot;checkbox&quot; name=&quot;remember_me&quot; id=&quot;remember_me&quot; value=&quot;Y&quot;&gt;Remember Me&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_6930&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;check_box&apos;, 6930)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(6930)&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;	\n\n&lt;/p&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/p&gt;', NULL, 'N', '1', '', '2023-07-09 13:35:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Test Submodule', '0', NULL, 'submodule', '', '', NULL, 'test_submodule', NULL, NULL, ' \n	  &lt;p name=&quot;grid-12&quot; id=&quot;47411&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col dragging&quot; style=&quot;margin-left:10px; margin-right:10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_47411&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(47411)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot;&gt;&lt;p name=&quot;column_heading&quot; id=&quot;33313&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-0&quot;&gt;\n				&lt;span&gt;\n					&lt;span class=&quot;row&quot;&gt;						\n						&lt;span id=&quot;controls_33313&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;display: block;&quot; align=&quot;right&quot;&gt;\n							&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 33313)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n							&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(33313)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n							\n						&lt;/span&gt;\n					&lt;/span&gt;\n					&lt;span class=&quot;row&quot;&gt;\n						&lt;span class=&quot;col-12 float-left&quot; id=&quot;label_33313&quot;&gt;\n							&lt;span class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;Column Heading&lt;/b&gt;&lt;/span&gt;\n						&lt;/span&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n			&lt;/p&gt;&lt;p name=&quot;text_input&quot; id=&quot;57479&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; &gt;\n					&lt;label&gt;Submdule Field 1 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span &gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 57479)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(57479)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;input type=&quot;text&quot; name=&quot;submdule_field_1&quot; id=&quot;submdule_field_1&quot; class=&quot;form-control&quot; value=&quot;lorem ipsm de factp&quot; required=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/p&gt;&lt;p name=&quot;text_input&quot; id=&quot;54386&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-2&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; &gt;\n					&lt;label&gt;Submodule Field 2 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span &gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 54386)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;input type=&quot;text&quot; name=&quot;submodule_field_2&quot; id=&quot;submodule_field_2&quot; class=&quot;form-control&quot; value=&quot;lorem ipsum de facto&quot; required=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/p&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/p&gt;', ' \n	  &lt;p name=&quot;grid-12&quot; id=&quot;47411&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col dragging&quot; style=&quot;margin-left:10px; margin-right:10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_47411&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(47411)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot;&gt;&lt;p name=&quot;column_heading&quot; id=&quot;33313&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-0&quot;&gt;\n				&lt;span&gt;\n					&lt;span class=&quot;row&quot;&gt;						\n						&lt;span id=&quot;controls_33313&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;display: block;&quot; align=&quot;right&quot;&gt;\n							&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 33313)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n							&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(33313)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n							\n						&lt;/span&gt;\n					&lt;/span&gt;\n					&lt;span class=&quot;row&quot;&gt;\n						&lt;span class=&quot;col-12 float-left&quot; id=&quot;label_33313&quot;&gt;\n							&lt;span class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;Column Heading&lt;/b&gt;&lt;/span&gt;\n						&lt;/span&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n			&lt;/p&gt;&lt;p name=&quot;text_input&quot; id=&quot;57479&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_57479&quot;&gt;\n					&lt;label&gt;Submdule Field 1 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_57479&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 57479)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(57479)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_57479&quot;&gt;\n					&lt;input type=&quot;text&quot; name=&quot;submdule_field_1&quot; id=&quot;submdule_field_1&quot; class=&quot;form-control&quot; value=&quot;lorem ipsm de factp&quot; required=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/p&gt;&lt;p name=&quot;text_input&quot; id=&quot;54386&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-2&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_54386&quot;&gt;\n					&lt;label&gt;Submodule Field 2 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_54386&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 54386)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(54386)&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_54386&quot;&gt;\n					&lt;input type=&quot;text&quot; name=&quot;submodule_field_2&quot; id=&quot;submodule_field_2&quot; class=&quot;form-control&quot; value=&quot;lorem ipsum de facto&quot; required=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/p&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/p&gt;', NULL, 'N', '1', '', '2023-07-24 11:02:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'test module', '0', NULL, 'application', '', '', NULL, 'test_module', NULL, NULL, ' \n	  &lt;div name=&quot;grid-12&quot; id=&quot;58854&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_58854&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(58854)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;47587&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_47587&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 47587)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(47587)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;test Header&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;div name=&quot;text_input&quot; id=&quot;48847&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; &gt;\n					&lt;label&gt;Test Input &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span &gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 48847)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;input type=&quot;text&quot; name=&quot;test_input&quot; id=&quot;test_input&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;', ' \n	  &lt;div name=&quot;grid-12&quot; id=&quot;58854&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_58854&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(58854)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;47587&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_47587&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 47587)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(47587)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_47587&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;test Header&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;div name=&quot;text_input&quot; id=&quot;48847&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_48847&quot;&gt;\n					&lt;label&gt;Test Input &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_48847&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 48847)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(48847)&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_48847&quot;&gt;\n					&lt;input type=&quot;text&quot; name=&quot;test_input&quot; id=&quot;test_input&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;', NULL, 'N', '1', '', '2023-08-07 10:15:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'div test', '0', NULL, '', '', 'this new description', NULL, 'div_test', NULL, NULL, ' \n	  &lt;div name=&quot;grid-12&quot; id=&quot;48584&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_48584&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(48584)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;text_input&quot; id=&quot;51960&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; &gt;\n					&lt;label&gt;div test &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span &gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 51960)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(51960)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;input type=&quot;text&quot; name=&quot;div_test&quot; id=&quot;div_test&quot; class=&quot;form-control&quot; value=&quot;lorem ipsm de factp&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;div name=&quot;column_heading&quot; id=&quot;14108&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_14108&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 14108)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(14108)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;div test heaading&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;', ' \n	  &lt;div name=&quot;grid-12&quot; id=&quot;48584&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_48584&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(48584)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;text_input&quot; id=&quot;51960&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_51960&quot;&gt;\n					&lt;label&gt;div test &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_51960&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 51960)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(51960)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_51960&quot;&gt;\n					&lt;input type=&quot;text&quot; name=&quot;div_test&quot; id=&quot;div_test&quot; class=&quot;form-control&quot; value=&quot;lorem ipsm de factp&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;div name=&quot;column_heading&quot; id=&quot;14108&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_14108&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 14108)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(14108)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_14108&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;div test heaading&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;', NULL, 'N', '1', '', '2023-08-07 10:30:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'test 2', '0', NULL, 'application', '', '', NULL, 'test_2', NULL, NULL, ' \n	  &lt;div name=&quot;grid-12&quot; id=&quot;9884&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_9884&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(9884)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;53806&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_53806&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;Test 2 &lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;div name=&quot;text_input&quot; id=&quot;39024&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; &gt;\n					&lt;label&gt;Test 2 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span &gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 39024)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;input type=&quot;text&quot; name=&quot;test_2&quot; id=&quot;test_2&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;', ' \n	  &lt;div name=&quot;grid-12&quot; id=&quot;9884&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_9884&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(9884)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;53806&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_53806&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_53806&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;Test 2 &lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;div name=&quot;text_input&quot; id=&quot;39024&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_39024&quot;&gt;\n					&lt;label&gt;Test 2 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_39024&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 39024)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(39024)&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_39024&quot;&gt;\n					&lt;input type=&quot;text&quot; name=&quot;test_2&quot; id=&quot;test_2&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;', NULL, 'N', '1', '', '2023-08-07 16:56:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dznr_modules` (`id`, `module_name`, `parent_module`, `module_folder`, `module_type`, `menutype`, `module_descr`, `module_icon`, `table_name`, `controller_file`, `view_file`, `form_code`, `dznr_code`, `filter`, `is_hidden`, `active`, `user_id`, `recdate`, `page_name`, `add_page`, `edit_page`, `view_page`, `duplicate_page`, `list_page`, `application`, `clientid`, `sql_script_file`, `php_script_files`, `config_file`) VALUES
(6, 'test 2', '0', NULL, 'application', '', '', NULL, 'test_2', NULL, NULL, ' \n	  &lt;div name=&quot;grid-12&quot; id=&quot;9884&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_9884&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(9884)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;53806&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_53806&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_53806&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;Test 2 &lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;div name=&quot;text_input&quot; id=&quot;39024&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_39024&quot;&gt;\n					&lt;label&gt;Test 2 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_39024&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_39024&quot;&gt;\n					&lt;input type=&quot;text&quot; name=&quot;test_2&quot; id=&quot;test_2&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;p name=&quot;number_input&quot; id=&quot;2302&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-2&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; &gt;\n					&lt;label&gt;Test Field 2&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span &gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;number_input&apos;, 2302)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;input type=&quot;number&quot; name=&quot;test_field_2&quot; id=&quot;test_field_2&quot; min=&quot;0&quot; max=&quot;999999999&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/p&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;', ' \n	  &lt;div name=&quot;grid-12&quot; id=&quot;9884&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_9884&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(9884)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;53806&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_53806&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_53806&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;Test 2 &lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;div name=&quot;text_input&quot; id=&quot;39024&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_39024&quot;&gt;\n					&lt;label&gt;Test 2 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_39024&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_39024&quot;&gt;\n					&lt;input type=&quot;text&quot; name=&quot;test_2&quot; id=&quot;test_2&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;p name=&quot;number_input&quot; id=&quot;2302&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-2&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_2302&quot;&gt;\n					&lt;label&gt;Test Field 2&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_2302&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;number_input&apos;, 2302)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(2302)&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_2302&quot;&gt;\n					&lt;input type=&quot;number&quot; name=&quot;test_field_2&quot; id=&quot;test_field_2&quot; min=&quot;0&quot; max=&quot;999999999&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/p&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;', NULL, 'N', '1', '', '2023-08-07 16:56:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'test 2', '0', NULL, 'application', '', '', NULL, 'test_2', NULL, NULL, ' \n	  &lt;div name=&quot;grid-12&quot; id=&quot;9884&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_9884&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(9884)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;53806&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_53806&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_53806&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;Test 2 &lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;div name=&quot;text_input&quot; id=&quot;39024&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_39024&quot;&gt;\n					&lt;label&gt;Test 2 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_39024&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_39024&quot;&gt;\n					&lt;input type=&quot;text&quot; name=&quot;test_2&quot; id=&quot;test_2&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;p name=&quot;number_input&quot; id=&quot;2302&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-2&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_2302&quot;&gt;\n					&lt;label&gt;Test Field 2&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_2302&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;number_input&apos;, 2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_2302&quot;&gt;\n					&lt;input type=&quot;number&quot; name=&quot;test_field_2&quot; id=&quot;test_field_2&quot; min=&quot;0&quot; max=&quot;999999999&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/p&gt;&lt;div name=&quot;column_heading&quot; id=&quot;65361&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-3&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_65361&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 65361)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;test 3&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;', ' \n	  &lt;div name=&quot;grid-12&quot; id=&quot;9884&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_9884&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(9884)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;53806&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_53806&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_53806&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;Test 2 &lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;div name=&quot;text_input&quot; id=&quot;39024&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_39024&quot;&gt;\n					&lt;label&gt;Test 2 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_39024&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_39024&quot;&gt;\n					&lt;input type=&quot;text&quot; name=&quot;test_2&quot; id=&quot;test_2&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;p name=&quot;number_input&quot; id=&quot;2302&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-2&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_2302&quot;&gt;\n					&lt;label&gt;Test Field 2&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_2302&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;number_input&apos;, 2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_2302&quot;&gt;\n					&lt;input type=&quot;number&quot; name=&quot;test_field_2&quot; id=&quot;test_field_2&quot; min=&quot;0&quot; max=&quot;999999999&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/p&gt;&lt;div name=&quot;column_heading&quot; id=&quot;65361&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-3&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_65361&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 65361)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(65361)&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_65361&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;test 3&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;', NULL, 'N', '1', '', '2023-08-07 17:13:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'admin', '0', NULL, '', '', '', NULL, 'admin', NULL, NULL, ' \n    	 \n\n    	 \n	  &lt;div name=&quot;grid-12&quot; id=&quot;9884&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_9884&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(9884)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;53806&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_53806&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_53806&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;Test 2 &lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;div name=&quot;text_input&quot; id=&quot;39024&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_39024&quot;&gt;\n					&lt;label&gt;Test 2 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_39024&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_39024&quot;&gt;\n					&lt;input type=&quot;text&quot; name=&quot;test_2&quot; id=&quot;test_2&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;p name=&quot;number_input&quot; id=&quot;2302&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-2&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_2302&quot;&gt;\n					&lt;label&gt;Test Field 2&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_2302&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;number_input&apos;, 2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_2302&quot;&gt;\n					&lt;input type=&quot;number&quot; name=&quot;test_field_2&quot; id=&quot;test_field_2&quot; min=&quot;0&quot; max=&quot;999999999&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;div style=&quot;color:red;font-size:12px;&quot; data-item-seq=&quot;0--1&quot;&gt;&lt;/div&gt;				&lt;div name=&quot;column_heading&quot; id=&quot;65361&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-4&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_65361&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 65361)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(65361)&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_65361&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;test 3&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n\n				\n			\n\n			\n			\n&lt;/div&gt;\n\n\n \n	  ', ' \n    	 \n\n    	 \n	  &lt;div name=&quot;grid-12&quot; id=&quot;9884&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_9884&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(9884)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;53806&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_53806&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_53806&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;Test 2 &lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;div name=&quot;text_input&quot; id=&quot;39024&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_39024&quot;&gt;\n					&lt;label&gt;Test 2 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_39024&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_39024&quot;&gt;\n					&lt;input type=&quot;text&quot; name=&quot;test_2&quot; id=&quot;test_2&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;p name=&quot;number_input&quot; id=&quot;2302&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-2&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_2302&quot;&gt;\n					&lt;label&gt;Test Field 2&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_2302&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;number_input&apos;, 2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_2302&quot;&gt;\n					&lt;input type=&quot;number&quot; name=&quot;test_field_2&quot; id=&quot;test_field_2&quot; min=&quot;0&quot; max=&quot;999999999&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;div style=&quot;color:red;font-size:12px;&quot; data-item-seq=&quot;0--1&quot;&gt;&lt;/div&gt;				&lt;div name=&quot;column_heading&quot; id=&quot;65361&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-4&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_65361&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 65361)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(65361)&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_65361&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;test 3&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n\n				\n			\n\n			\n			\n&lt;/div&gt;\n\n\n \n	  ', NULL, 'N', '1', '', '2023-08-07 17:16:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'admin', '0', NULL, '', '', '', NULL, 'admin', NULL, NULL, ' \n    	 \n\n    	 \n	  &lt;div name=&quot;grid-12&quot; id=&quot;9884&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_9884&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(9884)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;53806&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_53806&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_53806&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;Test 2 &lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;div name=&quot;text_input&quot; id=&quot;39024&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_39024&quot;&gt;\n					&lt;label&gt;Test 2 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_39024&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_39024&quot;&gt;\n					&lt;input type=&quot;text&quot; name=&quot;test_2&quot; id=&quot;test_2&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;p name=&quot;number_input&quot; id=&quot;2302&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-2&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_2302&quot;&gt;\n					&lt;label&gt;Test Field 2&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_2302&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;number_input&apos;, 2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_2302&quot;&gt;\n					&lt;input type=&quot;number&quot; name=&quot;test_field_2&quot; id=&quot;test_field_2&quot; min=&quot;0&quot; max=&quot;999999999&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;div style=&quot;color:red;font-size:12px;&quot; data-item-seq=&quot;0--1&quot;&gt;&lt;/div&gt;				&lt;div name=&quot;column_heading&quot; id=&quot;65361&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-4&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_65361&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 65361)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(65361)&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_65361&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;test 4&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;p&gt;&lt;/p&gt;\n				\n			\n\n			\n			\n&lt;/div&gt;\n\n\n \n	  ', ' \n    	 \n\n    	 \n	  &lt;div name=&quot;grid-12&quot; id=&quot;9884&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_9884&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(9884)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;53806&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_53806&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_53806&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;Test 2 &lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;div name=&quot;text_input&quot; id=&quot;39024&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_39024&quot;&gt;\n					&lt;label&gt;Test 2 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_39024&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_39024&quot;&gt;\n					&lt;input type=&quot;text&quot; name=&quot;test_2&quot; id=&quot;test_2&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;p name=&quot;number_input&quot; id=&quot;2302&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-2&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_2302&quot;&gt;\n					&lt;label&gt;Test Field 2&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_2302&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;number_input&apos;, 2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_2302&quot;&gt;\n					&lt;input type=&quot;number&quot; name=&quot;test_field_2&quot; id=&quot;test_field_2&quot; min=&quot;0&quot; max=&quot;999999999&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;div style=&quot;color:red;font-size:12px;&quot; data-item-seq=&quot;0--1&quot;&gt;&lt;/div&gt;				&lt;div name=&quot;column_heading&quot; id=&quot;65361&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-4&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_65361&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 65361)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(65361)&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_65361&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;test 4&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;p&gt;&lt;/p&gt;\n				\n			\n\n			\n			\n&lt;/div&gt;\n\n\n \n	  ', NULL, 'N', '1', '', '2023-08-07 17:17:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dznr_modules` (`id`, `module_name`, `parent_module`, `module_folder`, `module_type`, `menutype`, `module_descr`, `module_icon`, `table_name`, `controller_file`, `view_file`, `form_code`, `dznr_code`, `filter`, `is_hidden`, `active`, `user_id`, `recdate`, `page_name`, `add_page`, `edit_page`, `view_page`, `duplicate_page`, `list_page`, `application`, `clientid`, `sql_script_file`, `php_script_files`, `config_file`) VALUES
(10, 'test 2', '0', NULL, 'application', '', '', NULL, 'test_2', NULL, NULL, ' \n	  &lt;div name=&quot;grid-12&quot; id=&quot;9884&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_9884&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(9884)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;53806&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_53806&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_53806&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;Test 2 &lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;p name=&quot;number_input&quot; id=&quot;2302&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_2302&quot;&gt;\n					&lt;label&gt;Test Field 2&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_2302&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;display: block;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;number_input&apos;, 2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_2302&quot;&gt;\n					&lt;input type=&quot;number&quot; name=&quot;test_field_2&quot; id=&quot;test_field_2&quot; min=&quot;0&quot; max=&quot;999999999&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/p&gt;&lt;div name=&quot;text_input&quot; id=&quot;39024&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-2&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_39024&quot;&gt;\n					&lt;label&gt;Test 2 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_39024&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_39024&quot;&gt;\n					&lt;input type=&quot;text&quot; name=&quot;test_2&quot; id=&quot;test_2&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;div name=&quot;column_heading&quot; id=&quot;65361&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-3&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_65361&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 65361)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(65361)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_65361&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;test 3&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;', ' \n	  &lt;div name=&quot;grid-12&quot; id=&quot;9884&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; style=&quot;margin-left: 10px; margin-right: 10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_9884&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(9884)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;53806&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_53806&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(53806)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_53806&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;Test 2 &lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;p name=&quot;number_input&quot; id=&quot;2302&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item&quot; data-item-seq=&quot;0-1&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_2302&quot;&gt;\n					&lt;label&gt;Test Field 2&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_2302&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;display: block;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;number_input&apos;, 2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(2302)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_2302&quot;&gt;\n					&lt;input type=&quot;number&quot; name=&quot;test_field_2&quot; id=&quot;test_field_2&quot; min=&quot;0&quot; max=&quot;999999999&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/p&gt;&lt;div name=&quot;text_input&quot; id=&quot;39024&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-2&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_39024&quot;&gt;\n					&lt;label&gt;Test 2 &lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_39024&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;text_input&apos;, 39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(39024)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_39024&quot;&gt;\n					&lt;input type=&quot;text&quot; name=&quot;test_2&quot; id=&quot;test_2&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n &lt;/div&gt;&lt;div name=&quot;column_heading&quot; id=&quot;65361&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-3&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_65361&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 65361)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(65361)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_65361&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;test 3&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;', NULL, 'N', '1', '', '2023-08-07 17:19:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'admin', '0', NULL, '', '', '', NULL, 'admin', NULL, NULL, ' \n	  &lt;div name=&quot;grid-12&quot; id=&quot;70985&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; style=&quot;margin-left:10px; margin-right:10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_70985&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(70985)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;94779&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_94779&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 94779)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;lorem ipsum defacto&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;&lt;div name=&quot;grid-6&quot; id=&quot;24134&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; data-item-grid=&quot;grid-6&quot; style=&quot;margin-left:10px; margin-right:10px;&quot; data-item-seq=&quot;1&quot;&gt;\n\n\n\n\n			\n				\n				&lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_24134&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(24134)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-6 dropzone&quot; data-grid-position=&quot;0&quot; style=&quot;background-color: rgb(238, 238, 238);&quot;&gt;&lt;div name=&quot;email_input&quot; id=&quot;84256&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;1-0-0&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; &gt;\n					&lt;label&gt;Email&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span &gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;password_input&apos;, 84256)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(84256)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;input type=&quot;email&quot; name=&quot;email&quot; id=&quot;email&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n				\n			\n&lt;/div&gt;&lt;/span&gt;\n					&lt;span class=&quot;col-6 dropzone dragover&quot; data-grid-position=&quot;1&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;password_input&quot; id=&quot;99406&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;1-0-1&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; &gt;\n					&lt;label&gt;Password&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span &gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;password_input&apos;, 99406)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; &gt;\n					&lt;input type=&quot;password&quot; name=&quot;password&quot; id=&quot;password&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n				\n				\n&lt;/div&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;', ' \n	  &lt;div name=&quot;grid-12&quot; id=&quot;70985&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; style=&quot;margin-left:10px; margin-right:10px;&quot; data-item-seq=&quot;0&quot; data-item-grid=&quot;grid-12&quot;&gt;\n\n\n\n\n			\n				\n				 &lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_70985&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(70985)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-12 dropzone dragover&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;column_heading&quot; id=&quot;94779&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;0-0&quot;&gt;\n\n\n\n\n			\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span id=&quot;controls_94779&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;column_heading&apos;, 94779)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(94779)&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_94779&quot;&gt;\n					&lt;span align=&quot;left&quot; class=&quot;font-size:34px;&quot;&gt;&lt;b&gt;lorem ipsum defacto&lt;/b&gt;&lt;/span&gt; \n									&lt;/span&gt;\n			&lt;/span&gt;\n			\n			\n&lt;/div&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;&lt;div name=&quot;grid-6&quot; id=&quot;24134&quot; draggable=&quot;false&quot; class=&quot;list-group-item grid-col mb-3&quot; data-item-grid=&quot;grid-6&quot; style=&quot;margin-left:10px; margin-right:10px;&quot; data-item-seq=&quot;1&quot;&gt;\n\n\n\n\n			\n				\n				&lt;span class=&quot;row&quot;&gt;	\n					&lt;span id=&quot;controls_24134&quot; class=&quot;col-12 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n						&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(24134)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n					&lt;/span&gt;\n				&lt;/span&gt;\n				 &lt;span class=&quot;row&quot;&gt;\n					&lt;span class=&quot;col-6 dropzone&quot; data-grid-position=&quot;0&quot; style=&quot;background-color: rgb(238, 238, 238);&quot;&gt;&lt;div name=&quot;email_input&quot; id=&quot;84256&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;1-0-0&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_84256&quot;&gt;\n					&lt;label&gt;Email&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_84256&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;password_input&apos;, 84256)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(84256)&quot; draggable=&quot;false&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_84256&quot;&gt;\n					&lt;input type=&quot;email&quot; name=&quot;email&quot; id=&quot;email&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n				\n			\n&lt;/div&gt;&lt;/span&gt;\n					&lt;span class=&quot;col-6 dropzone dragover&quot; data-grid-position=&quot;1&quot; style=&quot;background-color: rgb(249, 249, 249);&quot;&gt;&lt;div name=&quot;password_input&quot; id=&quot;99406&quot; draggable=&quot;true&quot; class=&quot;list-group-item child-item mb-3&quot; data-item-seq=&quot;1-0-1&quot;&gt;\n\n\n\n\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-6 float-left&quot; id=&quot;label_99406&quot;&gt;\n					&lt;label&gt;Password&lt;/label&gt;\n				&lt;/span&gt;\n				&lt;span id=&quot;controls_99406&quot; class=&quot;col-6 float-right item_icons item_icons_show&quot; style=&quot;align:right;&quot; align=&quot;right&quot;&gt;\n					&lt;a style=&quot;cursor:pointer;color:blue;&quot; onclick=&quot;showattribs(&apos;password_input&apos;, 99406)&quot;&gt;&lt;i class=&quot;bi bi-gear&quot;&gt;&lt;/i&gt;&lt;/a&gt;	\n					&lt;a style=&quot;cursor:pointer;color:red;&quot; onclick=&quot;remove_item(99406)&quot;&gt;&lt;i class=&quot;bi bi-trash&quot;&gt;&lt;/i&gt;&lt;/a&gt;\n				&lt;/span&gt;\n			&lt;/span&gt;\n			&lt;span class=&quot;row&quot;&gt;\n				&lt;span class=&quot;col-12&quot; id=&quot;input_99406&quot;&gt;\n					&lt;input type=&quot;password&quot; name=&quot;password&quot; id=&quot;password&quot; class=&quot;form-control&quot; value=&quot;&quot;&gt;\n					&lt;div style=&quot;color:red;font-size:12px;&quot;&gt;&lt;/div&gt;				&lt;/span&gt;\n			&lt;/span&gt;\n				\n				\n&lt;/div&gt;&lt;/span&gt;\n				&lt;/span&gt;\n			\n\n			\n			\n&lt;/div&gt;', NULL, 'N', '1', '', '2023-09-14 08:35:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dznr_module_fields`
--

CREATE TABLE `dznr_module_fields` (
  `id` int(11) NOT NULL,
  `moduleid` varchar(10) DEFAULT NULL,
  `module_name` varchar(200) DEFAULT NULL,
  `parent_grid_id` int(11) NOT NULL,
  `divid` varchar(20) DEFAULT NULL,
  `fieldid` varchar(10) DEFAULT NULL,
  `field_label` varchar(200) DEFAULT NULL,
  `field_name` varchar(200) DEFAULT NULL,
  `old_field_name` varchar(100) DEFAULT NULL,
  `field_type` varchar(100) DEFAULT NULL,
  `isrequired` varchar(5) DEFAULT NULL,
  `display_pos` varchar(10) DEFAULT NULL,
  `display_seq` text DEFAULT NULL COMMENT 'grid type - grid position in main table - item vertical sequence -  item horizontal squence\r\n',
  `default_value` varchar(200) DEFAULT NULL,
  `range_min` int(11) DEFAULT 0,
  `range_max` int(11) DEFAULT 999999999,
  `item_values` text DEFAULT NULL,
  `list_type` varchar(200) DEFAULT NULL,
  `staticlist` text DEFAULT NULL,
  `codelist` varchar(200) DEFAULT NULL,
  `newcodelist` varchar(200) DEFAULT NULL,
  `listmodulename` varchar(200) DEFAULT NULL,
  `listmoduleitem` varchar(200) DEFAULT NULL,
  `codes_list_name` varchar(100) DEFAULT NULL,
  `onlistpag` varchar(5) DEFAULT NULL,
  `clientid` varchar(50) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `active` varchar(5) DEFAULT 'Y',
  `userid` varchar(10) DEFAULT NULL,
  `recdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dznr_module_fields`
--

INSERT INTO `dznr_module_fields` (`id`, `moduleid`, `module_name`, `parent_grid_id`, `divid`, `fieldid`, `field_label`, `field_name`, `old_field_name`, `field_type`, `isrequired`, `display_pos`, `display_seq`, `default_value`, `range_min`, `range_max`, `item_values`, `list_type`, `staticlist`, `codelist`, `newcodelist`, `listmodulename`, `listmoduleitem`, `codes_list_name`, `onlistpag`, `clientid`, `action`, `active`, `userid`, `recdate`) VALUES
(1, '3', 'test module', 0, '59245', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-07-30 09:21:21'),
(2, '3', 'test module', 59245, '14870', NULL, 'Form Heading', 'form_heading', NULL, 'column_heading', '', '', '0-0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-07-30 09:21:37'),
(3, '3', 'test module', 0, '10357', NULL, 'grid-6', 'grid-6', NULL, 'grid-6', '', '', '1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'update', 'Y', NULL, '2023-07-30 09:21:39'),
(4, '3', 'test module', 10357, '14540', NULL, 'Test Field 1', 'test_field_1', NULL, 'text_input', 'Y', '', '1-0-0', '', 0, 999999999, '', '', '', '', '', '', '', '', 'Y', NULL, 'add', 'Y', NULL, '2023-07-30 09:22:00'),
(5, '3', 'test module', 10357, '49030', NULL, 'Test Field 2', 'test_field_2', NULL, 'text_input', 'N', '', '1-0-1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-07-30 09:22:10'),
(6, '3', 'test module', 0, '31675', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', 'N', '', '2', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-07-30 09:22:20'),
(7, '3', 'test module', 31675, '17636', NULL, 'Email Address', 'email_address', NULL, 'email_input', '', '', '2-0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-07-30 09:22:37'),
(8, '3', 'test module', 0, '48478', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'update', 'Y', NULL, '2023-08-01 04:04:52'),
(9, '3', 'test module', 0, '41120', NULL, 'grid-4', 'grid-4', NULL, 'grid-4', '', '', '-1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-01 04:05:05'),
(10, '3', 'test module', 0, '44126', NULL, 'grid-3', 'grid-3', NULL, 'grid-3', '', '', '-1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'update', 'Y', NULL, '2023-08-01 04:05:13'),
(11, '3', 'test module', 0, '3756', NULL, 'grid-4', 'grid-4', NULL, 'grid-4', '', '', '-1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-01 04:05:19'),
(12, '3', 'test module', 0, '59935', NULL, 'grid-6', 'grid-6', NULL, 'grid-6', '', '', '-1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-01 04:05:21'),
(13, '3', 'test module', 0, '73907', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '-1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-01 04:05:25'),
(14, '3', 'test module', 0, '9100', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 08:38:05'),
(15, '3', 'test module', 0, '20886', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 09:14:30'),
(17, '3', 'test module', 0, '80176', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 09:18:04'),
(18, '3', 'test module', 0, '33050', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 09:48:27'),
(19, '3', 'test module', 0, '23551', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 09:55:13'),
(20, '3', 'test module', 0, '28009', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 09:56:31'),
(21, '3', 'test module', 0, '9796', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 09:58:28'),
(22, '3', 'test module', 0, '78086', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 09:59:44'),
(23, '3', 'test module', 78086, '1866', NULL, 'Test Field 2', 'test_field_2', NULL, 'column_heading', '', '', '0-1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 10:00:46'),
(24, '3', 'test module', 78086, '98759', NULL, 'Test Field 1', 'test_field_1', NULL, 'column_heading', '', '', '0-0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 10:00:50'),
(25, '3', 'test module', 0, '92649', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 10:02:59'),
(26, '3', 'test module', 0, '87601', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 10:10:47'),
(27, '3', 'test module', 0, '82522', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 10:12:02'),
(28, '3', 'test module', 0, '98393', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 10:15:58'),
(29, '3', 'test module', 0, '67124', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 10:23:56'),
(30, '3', 'test module', 67124, '19490', NULL, 'lorem ipsum', 'lorem_ipsum', NULL, 'column_heading', '', '', '0-0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 10:25:20'),
(31, '3', 'test module', 0, '32447', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 10:26:36'),
(32, '3', 'test module', 0, '35342', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 16:27:01'),
(34, '3', 'test module', 0, '1347', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 16:37:05'),
(35, '3', 'test module', 0, '76223', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 16:39:24'),
(36, '3', 'test module', 0, '33137', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 16:45:29'),
(37, '3', 'test module', 33137, '65136', NULL, 'lorem ipsum', 'lorem_ipsum', NULL, 'column_heading', '', '', '0-0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-02 17:01:11'),
(38, '3', 'test module', 33137, '63864', NULL, 'Test Field 2', 'test_field_2', NULL, 'text_input', 'Y', '', '0-2', '', 0, 999999999, '', '', '', '', '', '', '', '', 'Y', NULL, 'add', 'Y', NULL, '2023-08-02 17:01:27'),
(39, '3', 'test module', 0, '60219', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-03 20:13:27'),
(40, '3', 'test module', 60219, '62314', NULL, 'Test Field 2', 'test_field_2', NULL, 'column_heading', '', '', '0-0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-03 20:13:38'),
(41, '3', 'test module', 60219, '82756', NULL, 'lorem ipsum', 'lorem_ipsum', NULL, 'text_input', 'N', '', '0-1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-03 20:13:43'),
(86, '3', 'test module', 0, '57830', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-06 19:06:08'),
(87, '3', 'test module', 0, '5554', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-06 19:32:09'),
(88, '3', 'test module', 0, '67004', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-06 19:32:30'),
(89, '3', 'test module', 0, '75862', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-06 19:45:39'),
(90, '3', 'test module', 0, '75211', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'update', 'Y', NULL, '2023-08-06 19:45:54'),
(91, '3', 'test module', 0, '18015', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-06 19:49:21'),
(92, '3', 'test module', 0, '77734', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-06 19:49:32'),
(93, '3', 'test module', 0, '58854', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-07 10:13:05'),
(95, '3', 'test module', 58854, '47587', NULL, 'test Header', 'test_header', NULL, 'column_heading', '', '', '0-0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-07 10:14:50'),
(96, '3', 'test module', 58854, '48847', NULL, 'Test Input', 'test_input', NULL, 'text_input', 'N', '', '0-1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-07 10:15:01'),
(97, '4', 'div test', 0, '48584', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-07 10:28:46'),
(98, '4', 'div test', 48584, '51960', NULL, 'div test', 'div_test', NULL, 'text_input', 'N', '', '0-0', 'lorem ipsm de factp', 0, 999999999, '', '', '', '', '', '', '', '', 'Y', NULL, 'add', 'Y', NULL, '2023-08-07 10:29:24'),
(99, '4', 'div test', 48584, '14108', NULL, 'div test heaading', 'div_test_heaading', NULL, 'column_heading', '', '', '0-1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-07 10:29:34'),
(100, '5', 'test 2', 0, '55224', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-07 16:33:03'),
(101, '5', 'test 2', 0, '41665', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-07 16:33:38'),
(102, '5', 'test 2', 0, '9884', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-07 16:36:47'),
(103, '5', 'test 2', 9884, '53806', NULL, 'Test 2 ', 'test_2_', NULL, 'column_heading', '', '', '0-0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-07 16:55:50'),
(104, '5', 'test 2', 9884, '39024', NULL, 'Test 2', 'test_2', NULL, 'text_input', 'N', '', '0-1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-07 16:55:56'),
(105, '6', 'test 2', 9884, '2302', NULL, 'Test Field 2', 'test_field_2', NULL, 'number_input', 'N', '', '0-2', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-07 16:56:55'),
(106, '7', 'admin', 9884, '65361', NULL, 'test 4', 'test_4', NULL, 'column_heading', '', '', '0-2', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'update', 'Y', NULL, '2023-08-07 17:12:57'),
(108, '11', 'admin', 0, '41507', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 17:48:02'),
(109, '11', 'admin', 0, '48492', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 17:58:02'),
(110, '11', 'admin', 0, '69407', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 17:59:07'),
(111, '11', 'admin', 0, '67914', NULL, 'grid-6', 'grid-6', NULL, 'grid-6', '', '', '1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 17:59:08'),
(112, '11', 'admin', 0, '64274', NULL, 'grid-6', 'grid-6', NULL, 'grid-6', '', '', '2', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'update', 'Y', NULL, '2023-08-30 17:59:09'),
(113, '11', 'admin', 0, '26965', NULL, 'grid-6', 'grid-6', NULL, 'grid-6', '', '', '3', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 17:59:31'),
(119, '11', 'admin', 0, '28460', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 18:06:55'),
(120, '11', 'admin', 0, '99005', NULL, 'grid-6', 'grid-6', NULL, 'grid-6', '', '', '1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 18:06:56'),
(121, '11', 'admin', 0, '32418', NULL, 'grid-4', 'grid-4', NULL, 'grid-4', '', '', '2', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 18:06:57'),
(122, '11', 'admin', 0, '72121', NULL, 'grid-3', 'grid-3', NULL, 'grid-3', '', '', '3', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 18:06:59'),
(123, '11', 'admin', 0, '81757', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 18:07:27'),
(124, '11', 'admin', 0, '45390', NULL, 'grid-6', 'grid-6', NULL, 'grid-6', '', '', '1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 18:07:28'),
(125, '11', 'admin', 0, '21380', NULL, 'grid-4', 'grid-4', NULL, 'grid-4', '', '', '2', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 18:07:30'),
(126, '11', 'admin', 0, '86251', NULL, 'grid-3', 'grid-3', NULL, 'grid-3', '', '', '3', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 18:07:33'),
(128, '11', 'admin', 0, '63276', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 18:09:53'),
(129, '11', 'admin', 0, '90074', NULL, 'grid-6', 'grid-6', NULL, 'grid-6', '', '', '1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 18:09:54'),
(130, '11', 'admin', 0, '16374', NULL, 'grid-4', 'grid-4', NULL, 'grid-4', '', '', '3', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-08-30 18:41:30'),
(139, '11', 'admin', 0, '30333', NULL, 'grid-3', 'grid-3', NULL, 'grid-3', '', '', '1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-09-14 08:29:31'),
(140, '11', 'admin', 0, '70985', NULL, 'grid-12', 'grid-12', NULL, 'grid-12', '', '', '0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-09-14 08:34:16'),
(141, '11', 'admin', 70985, '94779', NULL, 'lorem ipsum defacto', 'lorem_ipsum_defacto', NULL, 'column_heading', '', '', '0-0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-09-14 08:34:31'),
(142, '11', 'admin', 0, '24134', NULL, 'grid-6', 'grid-6', NULL, 'grid-6', '', '', '1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-09-14 08:34:38'),
(143, '11', 'admin', 24134, '84256', NULL, 'Email', 'email', NULL, 'email_input', '', '', '1-0-0', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-09-14 08:35:06'),
(144, '11', 'admin', 24134, '99406', NULL, 'Password', 'password', NULL, 'password_input', '', '', '1-0-1', '', 0, 999999999, '', '', '', '', '', '', '', '', '', NULL, 'add', 'Y', NULL, '2023-09-14 08:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(500) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `recdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `recdate`, `active`) VALUES
(1, 'How to start bidding?', 'All successful bidders can confirm their winning bid by checking the “Sbidu”. In addition, all successful bidders will receive an email notifying them of their winning bid after the auction closes.', '2022-04-09 12:01:09', '1'),
(2, 'Security Deposit / Bidding Power', 'All successful bidders can confirm their winning bid by checking the “Sbidu”. In addition, all successful bidders will receive an email notifying them of their winning bid after the auction closes.', '2022-04-09 12:01:31', '1'),
(3, 'Delivery time to the destination port', 'All successful bidders can confirm their winning bid by checking the “Sbidu”. In addition, all successful bidders will receive an email notifying them of their winning bid after the auction closes.', '2022-04-09 12:01:50', '1'),
(4, 'How to register to bid in an auction?', 'All successful bidders can confirm their winning bid by checking the “Sbidu”. In addition, all successful bidders will receive an email notifying them of their winning bid after the auction closes.', '2022-04-09 12:02:07', '1'),
(5, 'How will I know if my bid was successful?', 'All successful bidders can confirm their winning bid by checking the “Sbidu”. In addition, all successful bidders will receive an email notifying them of their winning bid after the auction closes.', '2022-04-09 12:02:21', '1'),
(6, 'What happens if I bid on the wrong lot?', 'All successful bidders can confirm their winning bid by checking the “Sbidu”. In addition, all successful bidders will receive an email notifying them of their winning bid after the auction closes.', '2022-04-09 12:02:39', '1');

-- --------------------------------------------------------

--
-- Table structure for table `monthly_sale`
--

CREATE TABLE `monthly_sale` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `salesman_id` int(11) DEFAULT NULL,
  `month` varchar(200) DEFAULT NULL,
  `total_sale` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monthly_sale`
--

INSERT INTO `monthly_sale` (`id`, `client_id`, `salesman_id`, `month`, `total_sale`, `created_at`, `updated_at`, `deleted_at`, `active`) VALUES
(1, 1, 24, 'Jan-2023', 200, '2023-07-13 12:02:42', '2023-07-13 17:02:42', NULL, '1'),
(2, 1, 24, 'Feb-2023', 400, '2023-07-13 12:03:07', '2023-07-13 17:03:07', NULL, '1'),
(3, 1, 2, 'Mar-2023', 250, '2023-07-13 12:03:31', '2023-07-13 17:03:31', NULL, '1'),
(4, 1, 24, 'Jul-2023', 300, '2023-07-13 12:03:58', '2023-07-13 17:03:58', NULL, '1'),
(5, 1, 2, 'Apr-2023', 240, '2023-07-13 12:04:20', '2023-07-13 17:04:20', NULL, '1'),
(6, 1, 2, 'May-2023', 430, '2023-07-13 12:04:41', '2023-07-13 17:04:41', NULL, '1'),
(7, 1, 24, 'Jun-2023', 480, '2023-07-13 12:05:21', '2023-07-13 17:05:21', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `sys_applications`
--

CREATE TABLE `sys_applications` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `applicname` varchar(100) DEFAULT NULL,
  `applicfolder` varchar(50) DEFAULT NULL,
  `appdescr` varchar(255) DEFAULT NULL,
  `table_prefix` varchar(10) DEFAULT NULL,
  `icon` varchar(200) DEFAULT NULL,
  `version` varchar(10) DEFAULT NULL,
  `newver` varchar(10) DEFAULT NULL,
  `active` varchar(5) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_applications`
--

INSERT INTO `sys_applications` (`id`, `client_id`, `applicname`, `applicfolder`, `appdescr`, `table_prefix`, `icon`, `version`, `newver`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Real Estates', NULL, 'Real Estates system for SNOOBIX plateform', NULL, 'fas fa-arrows-alt', '1.0', NULL, '1', '2023-06-26 15:10:30', '2023-06-28 08:05:50'),
(2, 1, 'test app 1', NULL, 'test app one', NULL, 'fas fa-apple-alt', '1.0', NULL, '1', '2023-06-28 02:31:03', '2023-06-28 08:06:22'),
(3, NULL, 'test app 2', NULL, 'test app two', NULL, 'fas fa-bolt', '1.0', NULL, '1', '2023-06-28 12:40:46', '2023-06-28 17:40:46'),
(6, 5, 'test app 12', NULL, 'asd asdf asdf adsf', NULL, 'fas fa-adjust', '1.0', NULL, '1', '2023-06-28 12:45:15', '2023-06-28 17:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `sys_charts`
--

CREATE TABLE `sys_charts` (
  `id` int(11) NOT NULL,
  `divid` varchar(20) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `chart_title` varchar(200) DEFAULT NULL,
  `chart_type` varchar(100) DEFAULT NULL,
  `label_x` varchar(100) DEFAULT NULL,
  `label_y` varchar(100) DEFAULT NULL,
  `application_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `data_column_id_x` int(11) DEFAULT NULL,
  `data_column_id_y` int(11) DEFAULT NULL,
  `chart_properties` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sys_charts`
--

INSERT INTO `sys_charts` (`id`, `divid`, `client_id`, `user_id`, `chart_title`, `chart_type`, `label_x`, `label_y`, `application_id`, `module_id`, `data_column_id_x`, `data_column_id_y`, `chart_properties`, `created_at`, `updated_at`, `deleted_at`, `active`) VALUES
(1, '44615', NULL, NULL, 'Test Title for Bar Chart', 'bar_basic', 'x text label Bar Chart', 'y text label Bar Chart', 2, 112, 652, 653, '', '2023-07-31 17:12:31', NULL, NULL, ''),
(2, '25358', NULL, NULL, 'Test Title for Line chart ', 'line_basic', 'x text label Line Chart', 'ytext label Line Chart', 2, 112, 652, 653, '', '2023-07-31 17:48:53', NULL, NULL, ''),
(3, '28525', NULL, NULL, 'Test Title for AreaChart', 'area_basic', 'x text label AreaChart', 'y text label AreaChart', 2, 112, 652, 653, '', '2023-07-31 19:05:48', NULL, NULL, ''),
(4, '8937', NULL, NULL, 'Test tile for Pie chart', 'pie_basic', '', '', 2, 112, 652, 653, '', '2023-08-02 10:44:26', NULL, NULL, ''),
(5, '92008', NULL, NULL, 'Test tile for Pie chart', 'pie_basic', '', '', 2, 112, 652, 653, '', '2023-08-02 18:31:39', NULL, NULL, ''),
(6, '54088', NULL, NULL, 'Test tile for Pie chart', 'pie_basic', '', '', 2, 112, 652, 653, '', '2023-08-02 20:24:20', NULL, NULL, ''),
(7, '90196', NULL, NULL, 'Test tile for Pie chart', 'pie_basic', '', '', 2, 112, 652, 653, '', '2023-08-02 20:25:34', NULL, NULL, ''),
(8, '99851', NULL, NULL, 'Test tile for Pie chart', 'pie_basic', '', '', 2, 112, 652, 653, '', '2023-08-02 20:45:00', NULL, NULL, ''),
(9, '97683', NULL, NULL, 'Test Title for Donut Chart', 'donut_basic', '', '', 2, 112, 652, 653, '', '2023-08-02 20:51:35', NULL, NULL, ''),
(10, '87075', NULL, NULL, 'Test tile for Donut chart', 'donut_basic', '', '', 2, 112, 652, 653, '', '2023-08-02 20:53:28', NULL, NULL, ''),
(11, '38978', NULL, NULL, 'Test Area Title', 'area_basic', 'x test label', 'y test label', 2, 112, 652, 653, '', '2023-08-03 07:15:02', NULL, NULL, ''),
(12, '87612', NULL, NULL, 'Test Title for Radar Chart', 'radar_basic', 'x test label', 'y test label', 2, 112, 652, 653, '', '2023-08-03 08:22:36', NULL, NULL, ''),
(13, '26470', NULL, NULL, 'Test Title for Radar Chart', 'radar_basic', 'x test label', 'y test label', 2, 112, 652, 653, '', '2023-08-03 15:23:20', NULL, NULL, ''),
(14, '76831', NULL, NULL, 'Test Title for Radar Chart', 'radar_basic', 'x test label', 'y test label', 2, 112, 652, 653, '', '2023-08-03 16:15:56', NULL, NULL, ''),
(15, '45231', NULL, NULL, 'Test tile for Pie chart', 'radar_basic', 'x text label Line Chart', 'ytext label Line Chart', 2, 112, 652, 653, '', '2023-08-03 19:15:23', NULL, NULL, ''),
(16, '33392', NULL, NULL, 'Test tile for Pie chart', 'radar_basic', 'x test label', 'y test label', 2, 112, 652, 653, '', '2023-08-03 19:32:52', NULL, NULL, ''),
(17, '26827', NULL, NULL, 'test', 'scattered_basic', 'x test label', 'y test label', 2, 112, 652, 653, '', '2023-08-03 19:46:19', NULL, NULL, ''),
(18, '33134', NULL, NULL, 'Test tile for Pie chart', 'bar_basic', 'x test label', 'y test label', 2, 112, 652, 653, '', '2023-08-13 12:00:14', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `sys_chart_properties`
--

CREATE TABLE `sys_chart_properties` (
  `id` int(11) NOT NULL,
  `sys_chart_id` int(11) NOT NULL,
  `chart_background` varchar(200) NOT NULL,
  `label_colors` text NOT NULL,
  `chart_shadow_enabled` varchar(5) NOT NULL,
  `chart_zoom_enabled` varchar(5) NOT NULL COMMENT 'true,false',
  `chart_tooblbar_show` varchar(5) NOT NULL COMMENT 'true,false',
  `colors` text NOT NULL,
  `datalabel_colors` text NOT NULL,
  `datalabel_enabled` tinyint(4) NOT NULL,
  `stroke_curve` varchar(20) NOT NULL COMMENT 'smooth,straight,stepline',
  `stroke_colors` text NOT NULL,
  `stroke_width` tinyint(4) NOT NULL,
  `title_align` varchar(20) NOT NULL,
  `markers_enabled` tinyint(11) NOT NULL,
  `markers_size` varchar(20) NOT NULL,
  `marker_colors` varchar(200) NOT NULL COMMENT 'array of colors',
  `marker_shape` varchar(20) NOT NULL COMMENT '''circle'', ''square'', ''diamond'', etc.',
  `marker_radius` varchar(5) NOT NULL,
  `bar_horizontal` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:false, 1: true',
  `bar_radius` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sys_chart_properties`
--

INSERT INTO `sys_chart_properties` (`id`, `sys_chart_id`, `chart_background`, `label_colors`, `chart_shadow_enabled`, `chart_zoom_enabled`, `chart_tooblbar_show`, `colors`, `datalabel_colors`, `datalabel_enabled`, `stroke_curve`, `stroke_colors`, `stroke_width`, `title_align`, `markers_enabled`, `markers_size`, `marker_colors`, `marker_shape`, `marker_radius`, `bar_horizontal`, `bar_radius`) VALUES
(1, 1, '#0f4c5c', '#fb8b24', '1', '', '0', '\"#9a031e\"', '', 0, '', '', 0, '', 0, '', '', '', '', 1, '12'),
(2, 2, '#f2e9e4', '#22223b', '1', '', '1', '\"#9a8c98\"', '', 0, 'smooth', '', 0, '', 1, '12', '\"\"', 'circle', '', 0, ''),
(3, 3, '#798080', '', '0', '', '0', '\"#99917a\"', '', 0, 'smooth', '', 0, '', 1, '10', '\"\"', 'circle', '', 0, ''),
(4, 4, '#F4BFD4', '', '0', '', '0', '\"#efefef\"', '', 0, '', '', 0, '', 0, '', '', '', '', 0, ''),
(5, 5, '#C3DFE0', '', '0', '', '0', '\"#BCD979\",\"#9DAD6F\",\"#7D6D61\",\"#5E574D\"', '\"#ffffff\"', 1, '', '', 0, '', 0, '', '', '', '', 0, ''),
(6, 6, '#BCD979', '', '0', '', '0', '\"#9DAD6F\",\"#7D6D61\",\"#5E574D\",\"#191919\",\"#2E2E2E\",\"#414141\"', '\"#D9D0DE\"', 1, '', '', 0, '', 0, '', '', '', '', 0, ''),
(7, 7, '#BCD979', '', '0', '', '0', '\"#9DAD6F\",\"#7D6D61\",\"#5E574D\",\"#161925\",\"#2B2E39\",\"\"', '\"#D9D0DE\"', 1, '', '\"#BCD979\"', 5, '', 0, '', '', '', '', 0, ''),
(8, 8, '#BCD979', '', '0', '', '0', '\"#9DAD6F\",\"#7D6D61\",\"#5E574D\",\"#161925\",\"#2B2E39\"', '\"#ffffff\"', 1, '', '\"#BCD979\"', 3, '', 0, '', '', '', '', 0, ''),
(9, 9, '#FFFBF1', '', '0', '', '0', '\"#9DAD6F\",\"#7D6D61\",\"#5E574D\",\"#161925\",\"#2B2E39\"', '', 0, '', '', 0, '', 0, '', '', '', '', 0, ''),
(10, 10, '#C3DFE0', '', '1', '', '0', '', '', 1, '', '\"#000000\"', 2, '', 0, '', '', '', '', 0, ''),
(11, 11, '#6b705c', '#ffe8d6', '1', '', '1', '\"#b7b7a4\"', '', 0, 'smooth', '', 0, '', 1, '7', '\"#ffe8d6\"', 'circle', '', 0, ''),
(12, 12, '#F4BFD4', '', '0', '', '0', '\"#3d405b\"', '', 0, '', '', 0, '', 0, '', '', '', '', 0, ''),
(13, 13, '#b6ad90', '#333d29', '0', '', '0', '\"#333d29\"', '', 0, '', '', 0, '', 0, '', '', '', '', 0, ''),
(14, 14, '#F4BFD4', '#000814', '0', '', '0', '\"\"', '', 0, '', '', 0, '', 1, '4', '\"#001d3d\"', 'circle', '', 0, ''),
(15, 15, '#A29587', '#D8D4F2', '1', '', '0', '\"#D8D4F2\"', '', 0, '', '', 0, '', 1, '10', '\"#C4B2BC\"', '', '', 0, ''),
(16, 16, '#efefef', '#ffe8d6', '0', '', '0', '\"#A29587\"', '', 0, '', '', 0, '', 0, '', '', '', '', 0, ''),
(17, 17, '#F4BFD4', '#ffe8d6', '1', '', '0', '', '', 0, '', '', 0, '', 1, '5', '\"#846C5B\"', 'circle', '', 0, ''),
(18, 18, '#efefef', '#ffe8d6', '0', '', '0', '\"\"', '', 0, '', '', 0, '', 0, '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `sys_chart_type`
--

CREATE TABLE `sys_chart_type` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sys_chart_type`
--

INSERT INTO `sys_chart_type` (`id`, `name`) VALUES
(1, 'line');

-- --------------------------------------------------------

--
-- Table structure for table `sys_modules`
--

CREATE TABLE `sys_modules` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `module_name` varchar(200) NOT NULL,
  `application_id` int(11) DEFAULT NULL,
  `parent_module` varchar(100) DEFAULT '0',
  `module_folder` varchar(50) DEFAULT NULL,
  `module_type` varchar(100) DEFAULT 'application',
  `module_descr` text DEFAULT NULL,
  `module_icon` varchar(50) DEFAULT NULL,
  `table_name` varchar(100) DEFAULT NULL,
  `controller_file` varchar(50) DEFAULT NULL,
  `view_file` varchar(50) DEFAULT NULL,
  `filter` varchar(500) DEFAULT NULL,
  `is_hidden` varchar(5) NOT NULL DEFAULT 'N',
  `active` varchar(5) NOT NULL DEFAULT '1',
  `user_id` varchar(10) DEFAULT NULL,
  `recdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sys_modules`
--

INSERT INTO `sys_modules` (`id`, `client_id`, `module_name`, `application_id`, `parent_module`, `module_folder`, `module_type`, `module_descr`, `module_icon`, `table_name`, `controller_file`, `view_file`, `filter`, `is_hidden`, `active`, `user_id`, `recdate`) VALUES
(1, 1, 'Contact Us', NULL, 'menu', NULL, 'application', NULL, 'fa fa-envelope', 'contactus', NULL, NULL, NULL, 'N', '1', NULL, '2022-03-09 13:14:24'),
(2, 1, 'FAQs', NULL, 'menu', NULL, 'application', NULL, 'fa fa-question', 'faqs', NULL, NULL, NULL, 'N', '1', NULL, '2022-03-09 13:57:07'),
(3, 1, 'Blogs', NULL, 'menu', NULL, 'application', NULL, 'fa fa-blog', 'blogs', NULL, NULL, NULL, 'N', '1', NULL, '2022-03-09 14:11:50'),
(35, 1, 'Menu', NULL, 'menu', NULL, '', NULL, 'fa fa-list', '', NULL, NULL, NULL, 'N', '1', NULL, '2022-03-09 14:11:50'),
(36, 1, 'Payment Methods', NULL, 'lookups', NULL, 'lookup', NULL, 'fa fa-money-bill', 'payment_methods', NULL, NULL, NULL, 'N', '1', NULL, '2022-08-09 07:59:56'),
(38, 1, 'Lookups', NULL, 'lookups', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'N', '1', NULL, '2022-08-09 08:50:33'),
(39, 1, 'Permissions', NULL, 'menu', NULL, 'main_module', NULL, 'fa fa-user', 'roles', 'roles', NULL, NULL, 'N', '1', NULL, '2023-04-26 20:58:32'),
(58, 1, 'Users', NULL, 'menu', NULL, 'main_module', NULL, 'fa fa-user', 'users', 'users', NULL, NULL, 'N', '1', NULL, '2023-05-18 03:43:06'),
(61, 1, 'States', NULL, 'lookups', NULL, 'lookup', NULL, 'fa fa-user', 'provinces', 'states', NULL, NULL, 'N', '1', NULL, '2023-05-18 09:50:43'),
(63, 1, 'Cities', NULL, 'lookups', NULL, 'lookup', NULL, 'fa fa-user', 'cities', 'cities', NULL, NULL, 'N', '1', NULL, '2023-05-18 11:10:05'),
(64, 1, 'Configurations', NULL, 'menu', NULL, 'main_module', NULL, 'fa fa-user', 'config_params', 'configurations', NULL, NULL, 'N', '1', NULL, '2023-05-18 13:03:00'),
(66, 1, 'Categories', 1, 'lookups', NULL, 'lookup', NULL, 'fa fa-user', 'relest_categories', 'categories', NULL, NULL, 'N', '1', NULL, '2023-05-18 13:33:24'),
(67, 1, 'Property Types', 1, 'lookups', NULL, 'lookup', NULL, 'fa fa-user', 'relest_property_types', 'property_types', NULL, NULL, 'N', '1', NULL, '2023-05-18 14:10:12'),
(68, 1, 'Ad Types', 1, 'lookups', NULL, 'lookup', NULL, 'fa fa-user', 'relest_ad_types', 'ad_types', NULL, NULL, 'N', '1', NULL, '2023-05-18 14:19:08'),
(69, 1, 'All Amenities', 1, 'lookups', NULL, 'lookup', NULL, 'fa fa-user', 'relest_all_amenities', 'all_amenities', NULL, NULL, 'N', '1', NULL, '2023-05-18 14:46:11'),
(70, 1, 'Inquiries', 1, 'menu', NULL, 'main_module', NULL, 'fa fa-user', 'relest_inquiries', 'inquiries', NULL, NULL, 'N', '1', NULL, '2023-05-18 15:24:52'),
(71, 1, 'Approval Status', 1, 'lookups', NULL, 'lookup', NULL, 'fa fa-user', 'relest_approval_statuses', 'approval_status', NULL, NULL, 'N', '1', NULL, '2023-05-18 15:38:39'),
(73, 1, 'Listing Reasons', 1, 'lookups', NULL, 'lookup', NULL, 'fa fa-user', 'relest_listing_reasons', 'listing_reasons', NULL, NULL, 'N', '1', NULL, '2023-05-23 11:49:03'),
(75, 1, 'Real Estates', 1, 'menu', NULL, 'main_module', NULL, 'fa fa-user', 'relest_ads', 'real_estates', NULL, NULL, 'N', '1', NULL, '2023-06-17 08:28:28'),
(83, 1, 'Applications', NULL, 'menu', NULL, 'main_module', NULL, 'fa fa-list', 'sys_applications', NULL, NULL, NULL, 'N', '1', NULL, '2023-06-26 14:47:27'),
(101, 1, 'Area Units', 1, '0', NULL, 'lookup', NULL, 'fa fas_fa-border-style', 'relest_area_units', 'area_units', NULL, NULL, 'N', '1', '1', '2023-07-02 13:32:49'),
(104, 1, 'Countries', 1, '0', NULL, 'lookup', NULL, 'fa fas_fa-chess-board', 'countries', 'countries', NULL, NULL, 'N', '1', '1', '2023-07-09 09:45:49'),
(105, 1, 'Task statuses', 2, '0', NULL, 'lookup', NULL, 'fa fas_fa-align-center', 'task_statuses', 'task_statuses', NULL, NULL, 'N', '1', '1', '2023-07-11 09:07:09'),
(106, 1, 'Tasks', 2, '0', NULL, 'main_module', NULL, 'fa fas_fa-receipt', 'tasks', 'tasks', NULL, NULL, 'N', '1', '1', '2023-07-13 03:28:37'),
(112, 1, 'Monthly Sale', 2, '0', NULL, 'main_module', NULL, 'fa fas_fa-cart-arrow-down', 'monthly_sale', 'monthly_sale', NULL, NULL, 'N', '1', '1', '2023-07-13 12:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `sys_module_fields`
--

CREATE TABLE `sys_module_fields` (
  `id` int(11) NOT NULL,
  `dznr_moduleid` varchar(5) DEFAULT NULL,
  `field_label` varchar(200) DEFAULT NULL,
  `field_name` varchar(200) DEFAULT NULL,
  `placeholder` varchar(200) DEFAULT NULL,
  `field_type` varchar(100) DEFAULT NULL,
  `isrequired` varchar(5) DEFAULT NULL,
  `display_seq` int(11) DEFAULT NULL,
  `default_value` varchar(200) DEFAULT NULL,
  `range_min` int(11) DEFAULT NULL,
  `range_max` int(11) DEFAULT NULL,
  `list_type` varchar(200) DEFAULT NULL,
  `input_length` int(11) DEFAULT 255,
  `staticlist` text DEFAULT NULL,
  `listmodulename` varchar(200) DEFAULT NULL,
  `listmoduleitem` varchar(200) DEFAULT NULL,
  `onlistpag` varchar(5) DEFAULT NULL,
  `active` varchar(5) NOT NULL DEFAULT '1',
  `userid` varchar(10) DEFAULT NULL,
  `recdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sys_module_fields`
--

INSERT INTO `sys_module_fields` (`id`, `dznr_moduleid`, `field_label`, `field_name`, `placeholder`, `field_type`, `isrequired`, `display_seq`, `default_value`, `range_min`, `range_max`, `list_type`, `input_length`, `staticlist`, `listmodulename`, `listmoduleitem`, `onlistpag`, `active`, `userid`, `recdate`) VALUES
(1, '1', 'ID', 'id', NULL, 'hidden_input', 'N', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2022-03-09 13:14:25'),
(2, '1', 'FULL NAME', 'full_name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2022-03-09 13:14:25'),
(3, '1', 'EMAIL ADDRESS', 'email_address', NULL, 'email_input', 'Y', 3, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2022-03-09 13:14:25'),
(4, '1', 'MESSAGE', 'message', NULL, 'text_area', 'Y', 4, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2022-03-09 13:14:25'),
(5, '1', 'REPLY MESSAGE', 'reply_message', NULL, 'text_area', 'N', 5, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2022-03-09 13:14:25'),
(6, '1', 'REPLY DATE', 'reply_date', NULL, 'date_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2022-03-09 13:14:25'),
(7, '1', 'RECDATE', 'recdate', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2022-03-09 13:14:25'),
(8, '1', 'ACTIVE', 'active', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 5, NULL, '', '', '', '1', NULL, '2022-03-09 13:14:25'),
(9, '2', 'ID', 'id', NULL, 'hidden_input', 'N', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2022-03-09 13:57:07'),
(10, '2', 'QUESTION', 'question', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 500, NULL, '', '', 'Y', '1', NULL, '2022-03-09 13:57:07'),
(11, '2', 'ANSWER', 'answer', NULL, 'text_area', 'Y', 3, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2022-03-09 13:57:07'),
(12, '2', 'RECDATE', 'recdate', NULL, 'hidden_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2022-03-09 13:57:07'),
(13, '2', 'ACTIVE', 'active', NULL, 'list_single', 'N', 5, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2022-03-09 13:57:07'),
(14, '3', 'ID', 'id', NULL, 'hidden_input', 'N', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2022-03-09 14:11:50'),
(15, '3', 'BLOG IMAGE', 'blog_image', NULL, 'single_image', 'N', 2, NULL, NULL, NULL, NULL, 100, NULL, '', '', '', '1', NULL, '2022-03-09 14:11:50'),
(16, '3', 'BLOG TITLE', 'blog_title', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 500, NULL, '', '', 'Y', '1', NULL, '2022-03-09 14:11:50'),
(17, '3', 'BLOG CONTENTS', 'blog_contents', NULL, 'text_editor', 'Y', 4, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2022-03-09 14:11:50'),
(18, '3', 'RECDATE', 'recdate', NULL, 'date_time', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2022-03-09 14:11:51'),
(19, '3', 'ACTIVE', 'active', NULL, 'list_single', 'N', 6, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2022-03-09 14:11:51'),
(20, '36', 'ID', 'id', NULL, 'hidden_input', 'N', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2022-08-09 07:59:56'),
(21, '36', 'PAYMENT METHOD', 'payment_method', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2022-08-09 07:59:56'),
(22, '36', 'RECDATE', 'recdate', NULL, 'hidden_input', 'N', 3, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'N', '1', NULL, '2022-08-09 07:59:56'),
(23, '36', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 4, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2022-08-09 07:59:56'),
(24, '39', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-26 20:58:33'),
(25, '39', 'FULL NAME', 'full_name', NULL, 'text_input', 'N', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-04-26 20:58:33'),
(26, '39', 'DOB', 'dob', NULL, 'date_input', 'N', 3, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-26 20:58:33'),
(27, '39', 'COMMENTS', 'comments', NULL, 'text_area', 'N', 4, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2023-04-26 20:58:33'),
(28, '39', 'ACTIVE', 'active', NULL, 'text_input', 'Y', 5, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-04-26 20:58:33'),
(29, '39', 'CREATED AT', 'created_at', NULL, 'date_time', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 20:58:33'),
(30, '39', 'UPDATED AT', 'updated_at', NULL, 'date_time', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 20:58:33'),
(31, '39', 'DELETED AT', 'deleted_at', NULL, 'date_time', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 20:58:33'),
(32, '40', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-26 21:04:10'),
(33, '40', 'FULL NAME', 'full_name', NULL, 'text_input', 'N', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-04-26 21:04:10'),
(34, '40', 'DOB', 'dob', NULL, 'date_input', 'N', 3, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-26 21:04:10'),
(35, '40', 'COMMENTS', 'comments', NULL, 'text_area', 'N', 4, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2023-04-26 21:04:10'),
(36, '40', 'ACTIVE', 'active', NULL, 'text_input', 'Y', 5, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-04-26 21:04:10'),
(37, '40', 'CREATED AT', 'created_at', NULL, 'date_time', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 21:04:10'),
(38, '40', 'UPDATED AT', 'updated_at', NULL, 'date_time', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 21:04:10'),
(39, '40', 'DELETED AT', 'deleted_at', NULL, 'date_time', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 21:04:10'),
(40, '41', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-26 23:22:29'),
(41, '41', 'FULL NAME', 'full_name', NULL, 'text_input', 'N', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', '', '1', NULL, '2023-04-26 23:22:29'),
(42, '41', 'DOB', 'dob', NULL, 'date_input', 'N', 3, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 23:22:29'),
(43, '41', 'COMMENTS', 'comments', NULL, 'text_area', 'N', 4, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2023-04-26 23:22:29'),
(44, '41', 'ACTIVE', 'active', NULL, 'text_input', 'Y', 5, NULL, NULL, NULL, NULL, 20, NULL, '', '', '', '1', NULL, '2023-04-26 23:22:29'),
(45, '41', 'CREATED AT', 'created_at', NULL, 'date_time', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 23:22:29'),
(46, '41', 'UPDATED AT', 'updated_at', NULL, 'date_time', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 23:22:29'),
(47, '41', 'DELETED AT', 'deleted_at', NULL, 'date_time', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 23:22:29'),
(48, '42', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-26 23:33:21'),
(49, '42', 'FULL NAME', 'full_name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-04-26 23:33:21'),
(50, '42', 'DOB', 'dob', NULL, 'date_input', 'Y', 3, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-26 23:33:21'),
(51, '42', 'COMMENTS', 'comments', NULL, 'text_area', 'N', 4, NULL, NULL, NULL, NULL, 65535, NULL, '', '', 'N', '1', NULL, '2023-04-26 23:33:21'),
(52, '42', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-04-26 23:33:21'),
(53, '42', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 23:33:21'),
(54, '42', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 23:33:21'),
(55, '42', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 23:33:21'),
(56, '43', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-26 23:34:15'),
(57, '43', 'FULL NAME', 'full_name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-04-26 23:34:15'),
(58, '43', 'DOB', 'dob', NULL, 'date_input', 'Y', 3, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-26 23:34:15'),
(59, '43', 'COMMENTS', 'comments', NULL, 'text_area', 'N', 4, NULL, NULL, NULL, NULL, 65535, NULL, '', '', 'N', '1', NULL, '2023-04-26 23:34:15'),
(60, '43', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-04-26 23:34:15'),
(61, '43', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 23:34:15'),
(62, '43', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 23:34:15'),
(63, '43', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-26 23:34:15'),
(64, '44', 'ID', 'id', NULL, 'hidden_input', 'N', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-27 04:02:39'),
(65, '44', 'FULL NAME', 'full_name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-04-27 04:02:39'),
(66, '44', 'DOB', 'dob', NULL, 'date_input', 'Y', 3, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-27 04:02:39'),
(67, '44', 'COMMENTS', 'comments', NULL, 'text_area', 'N', 4, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2023-04-27 04:02:40'),
(68, '44', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-04-27 04:02:40'),
(69, '44', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-27 04:02:40'),
(70, '44', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-27 04:02:40'),
(71, '44', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-27 04:02:40'),
(72, '45', 'ID', 'id', NULL, 'hidden_input', 'N', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-27 04:16:17'),
(73, '45', 'FULL NAME', 'full_name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-04-27 04:16:17'),
(74, '45', 'DOB', 'dob', NULL, 'date_input', 'Y', 3, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-27 04:16:17'),
(75, '45', 'COMMENTS', 'comments', NULL, 'text_area', 'N', 4, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2023-04-27 04:16:17'),
(76, '45', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-04-27 04:16:17'),
(77, '45', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-27 04:16:17'),
(78, '45', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-27 04:16:17'),
(79, '45', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-27 04:16:17'),
(80, '46', 'ID', 'id', NULL, 'hidden_input', 'N', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-27 04:54:00'),
(81, '46', 'FULL NAME', 'full_name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-04-27 04:54:00'),
(82, '46', 'DOB', 'dob', NULL, 'date_input', 'Y', 3, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-27 04:54:00'),
(83, '46', 'COMMENTS', 'comments', NULL, 'text_area', 'N', 4, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2023-04-27 04:54:00'),
(84, '46', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-04-27 04:54:00'),
(85, '46', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-27 04:54:00'),
(86, '46', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-27 04:54:00'),
(87, '46', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-27 04:54:00'),
(88, '47', 'ID', 'id', NULL, 'hidden_input', 'N', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-27 05:01:33'),
(89, '47', 'FULL NAME', 'full_name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-04-27 05:01:33'),
(90, '47', 'DOB', 'dob', NULL, 'date_input', 'Y', 3, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-27 05:01:33'),
(91, '47', 'COMMENTS', 'comments', NULL, 'text_area', 'N', 4, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2023-04-27 05:01:33'),
(92, '47', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-04-27 05:01:33'),
(93, '47', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-27 05:01:33'),
(94, '47', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-27 05:01:33'),
(95, '47', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-27 05:01:33'),
(96, '48', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-27 19:28:55'),
(97, '48', 'FULL NAME', 'full_name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-04-27 19:28:55'),
(98, '48', 'DOB', 'dob', NULL, 'date_input', 'Y', 3, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-04-27 19:28:55'),
(99, '48', 'COMMENTS', 'comments', NULL, 'text_area', 'N', 4, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2023-04-27 19:28:55'),
(100, '48', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-04-27 19:28:55'),
(101, '48', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-27 19:28:55'),
(102, '48', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-27 19:28:55'),
(103, '48', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-04-27 19:28:55'),
(104, '49', 'ACTIVE', 'active', NULL, 'text_input', 'Y', 4, NULL, NULL, NULL, NULL, 5, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:05:22'),
(105, '49', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:05:22'),
(106, '49', 'EMAIL', 'email', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:05:22'),
(107, '49', 'EMAIL VERIFIED AT', 'email_verified_at', NULL, 'hidden_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:05:22'),
(108, '49', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:05:22'),
(109, '49', 'NAME', 'name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:05:22'),
(110, '49', 'PASSWORD', 'password', NULL, 'hidden_input', 'Y', 7, NULL, NULL, NULL, NULL, 1020, NULL, '', '', '', '1', NULL, '2023-05-18 03:05:22'),
(111, '49', 'REMEMBER TOKEN', 'remember_token', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 400, NULL, '', '', '', '1', NULL, '2023-05-18 03:05:22'),
(112, '49', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:05:22'),
(113, '50', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'active', 'Y', '1', NULL, '2023-05-18 03:13:02'),
(114, '50', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:13:02'),
(115, '50', 'EMAIL', 'email', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:13:02'),
(116, '50', 'EMAIL VERIFIED AT', 'email_verified_at', NULL, 'hidden_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:13:02'),
(117, '50', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:13:02'),
(118, '50', 'NAME', 'name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:13:02'),
(119, '50', 'PASSWORD', 'password', NULL, 'hidden_input', 'Y', 7, NULL, NULL, NULL, NULL, 1020, NULL, '', '', '', '1', NULL, '2023-05-18 03:13:02'),
(120, '50', 'REMEMBER TOKEN', 'remember_token', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 400, NULL, '', '', '', '1', NULL, '2023-05-18 03:13:02'),
(121, '50', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:13:02'),
(122, '51', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'active', 'Y', '1', NULL, '2023-05-18 03:23:11'),
(123, '51', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:23:11'),
(124, '51', 'EMAIL', 'email', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:23:11'),
(125, '51', 'EMAIL VERIFIED AT', 'email_verified_at', NULL, 'hidden_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:23:11'),
(126, '51', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:23:11'),
(127, '51', 'NAME', 'name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:23:11'),
(128, '51', 'PASSWORD', 'password', NULL, 'hidden_input', 'Y', 7, NULL, NULL, NULL, NULL, 1020, NULL, '', '', '', '1', NULL, '2023-05-18 03:23:11'),
(129, '51', 'REMEMBER TOKEN', 'remember_token', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 400, NULL, '', '', '', '1', NULL, '2023-05-18 03:23:11'),
(130, '51', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:23:11'),
(131, '52', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'active', 'Y', '1', NULL, '2023-05-18 03:29:56'),
(132, '52', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:29:56'),
(133, '52', 'EMAIL', 'email', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:29:56'),
(134, '52', 'EMAIL VERIFIED AT', 'email_verified_at', NULL, 'hidden_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:29:56'),
(135, '52', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:29:56'),
(136, '52', 'NAME', 'name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:29:56'),
(137, '52', 'PASSWORD', 'password', NULL, 'hidden_input', 'Y', 7, NULL, NULL, NULL, NULL, 1020, NULL, '', '', '', '1', NULL, '2023-05-18 03:29:56'),
(138, '52', 'REMEMBER TOKEN', 'remember_token', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 400, NULL, '', '', '', '1', NULL, '2023-05-18 03:29:56'),
(139, '52', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:29:56'),
(140, '53', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'active', 'Y', '1', NULL, '2023-05-18 03:37:21'),
(141, '53', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:37:21'),
(142, '53', 'EMAIL', 'email', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:37:21'),
(143, '53', 'EMAIL VERIFIED AT', 'email_verified_at', NULL, 'hidden_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:37:21'),
(144, '53', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:37:21'),
(145, '53', 'NAME', 'name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:37:21'),
(146, '53', 'PASSWORD', 'password', NULL, 'hidden_input', 'Y', 7, NULL, NULL, NULL, NULL, 1020, NULL, '', '', '', '1', NULL, '2023-05-18 03:37:21'),
(147, '53', 'REMEMBER TOKEN', 'remember_token', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 400, NULL, '', '', '', '1', NULL, '2023-05-18 03:37:21'),
(148, '53', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:37:21'),
(149, '54', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'active', 'Y', '1', NULL, '2023-05-18 03:38:32'),
(150, '54', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:38:32'),
(151, '54', 'EMAIL', 'email', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:38:32'),
(152, '54', 'EMAIL VERIFIED AT', 'email_verified_at', NULL, 'hidden_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:38:32'),
(153, '54', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:38:32'),
(154, '54', 'NAME', 'name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:38:32'),
(155, '54', 'PASSWORD', 'password', NULL, 'hidden_input', 'Y', 7, NULL, NULL, NULL, NULL, 1020, NULL, '', '', '', '1', NULL, '2023-05-18 03:38:32'),
(156, '54', 'REMEMBER TOKEN', 'remember_token', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 400, NULL, '', '', '', '1', NULL, '2023-05-18 03:38:32'),
(157, '54', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:38:32'),
(158, '55', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'active', 'Y', '1', NULL, '2023-05-18 03:39:33'),
(159, '55', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:39:33'),
(160, '55', 'EMAIL', 'email', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:39:33'),
(161, '55', 'EMAIL VERIFIED AT', 'email_verified_at', NULL, 'hidden_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:39:33'),
(162, '55', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:39:33'),
(163, '55', 'NAME', 'name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:39:33'),
(164, '55', 'PASSWORD', 'password', NULL, 'hidden_input', 'Y', 7, NULL, NULL, NULL, NULL, 1020, NULL, '', '', '', '1', NULL, '2023-05-18 03:39:34'),
(165, '55', 'REMEMBER TOKEN', 'remember_token', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 400, NULL, '', '', '', '1', NULL, '2023-05-18 03:39:34'),
(166, '55', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:39:34'),
(167, '56', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'active', 'Y', '1', NULL, '2023-05-18 03:41:20'),
(168, '56', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:41:20'),
(169, '56', 'EMAIL', 'email', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:41:21'),
(170, '56', 'EMAIL VERIFIED AT', 'email_verified_at', NULL, 'hidden_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:41:21'),
(171, '56', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:41:21'),
(172, '56', 'NAME', 'name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:41:21'),
(173, '56', 'PASSWORD', 'password', NULL, 'hidden_input', 'Y', 7, NULL, NULL, NULL, NULL, 1020, NULL, '', '', '', '1', NULL, '2023-05-18 03:41:21'),
(174, '56', 'REMEMBER TOKEN', 'remember_token', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 400, NULL, '', '', '', '1', NULL, '2023-05-18 03:41:21'),
(175, '56', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:41:21'),
(176, '57', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'active', 'Y', '1', NULL, '2023-05-18 03:41:45'),
(177, '57', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:41:45'),
(178, '57', 'EMAIL', 'email', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:41:45'),
(179, '57', 'EMAIL VERIFIED AT', 'email_verified_at', NULL, 'hidden_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:41:45'),
(180, '57', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:41:45'),
(181, '57', 'NAME', 'name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:41:45'),
(182, '57', 'PASSWORD', 'password', NULL, 'hidden_input', 'Y', 7, NULL, NULL, NULL, NULL, 1020, NULL, '', '', '', '1', NULL, '2023-05-18 03:41:45'),
(183, '57', 'REMEMBER TOKEN', 'remember_token', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 400, NULL, '', '', '', '1', NULL, '2023-05-18 03:41:45'),
(184, '57', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:41:45'),
(185, '58', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'active', 'Y', '1', NULL, '2023-05-18 03:43:07'),
(186, '58', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:43:07'),
(187, '58', 'EMAIL', 'email', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:43:07'),
(188, '58', 'EMAIL VERIFIED AT', 'email_verified_at', NULL, 'hidden_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:43:07'),
(189, '58', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:43:07'),
(190, '58', 'NAME', 'name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 03:43:07'),
(191, '58', 'PASSWORD', 'password', NULL, 'hidden_input', 'Y', 7, NULL, NULL, NULL, NULL, 1020, NULL, '', '', '', '1', NULL, '2023-05-18 03:43:07'),
(192, '58', 'REMEMBER TOKEN', 'remember_token', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 400, NULL, '', '', '', '1', NULL, '2023-05-18 03:43:07'),
(193, '58', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 03:43:07'),
(194, '59', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 3, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-05-18 07:10:14'),
(195, '59', 'COUNTRY', 'country', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-05-18 07:10:14'),
(196, '59', 'CREATED AT', 'created_at', NULL, 'date_time', 'Y', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 07:10:14'),
(197, '59', 'DELETED AT', 'deleted_at', NULL, 'date_time', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 07:10:14'),
(198, '59', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 07:10:14'),
(199, '59', 'UPDATED AT', 'updated_at', NULL, 'date_time', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 07:10:14'),
(206, '61', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-05-18 09:50:43'),
(207, '61', 'COUNTRYID', 'countryid', NULL, 'list_single', 'Y', 2, NULL, NULL, NULL, NULL, 5, NULL, 'countries', 'country', 'Y', '1', NULL, '2023-05-18 09:50:43'),
(208, '61', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 09:50:43'),
(209, '61', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 09:50:43'),
(210, '61', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 09:50:43'),
(211, '61', 'PROVINCE', 'province', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-05-18 09:50:43'),
(212, '61', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 09:50:43'),
(213, '62', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-05-18 10:09:24'),
(214, '62', 'CITY', 'city', NULL, 'text_input', 'N', 4, NULL, NULL, NULL, NULL, 200, NULL, '', '', '', '1', NULL, '2023-05-18 10:09:24'),
(215, '62', 'COUNTRY', 'countryid', NULL, 'list_single', 'N', 2, NULL, NULL, NULL, NULL, 5, NULL, 'countries', 'country', 'Y', '1', NULL, '2023-05-18 10:09:24'),
(216, '62', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 10:09:24'),
(217, '62', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 10:09:24'),
(218, '62', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 10:09:24'),
(219, '62', 'PROVINCE', 'provinceid', NULL, 'list_single', 'N', 3, NULL, NULL, NULL, NULL, 5, NULL, 'provinces', 'province', 'Y', '1', NULL, '2023-05-18 10:09:24'),
(220, '62', 'SORT BY', 'sort_by', NULL, 'hidden_input', 'Y', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 10:09:24'),
(221, '62', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 10:09:24'),
(222, '63', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-05-18 11:10:05'),
(223, '63', 'CITY', 'city', NULL, 'text_input', 'N', 4, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-05-18 11:10:05'),
(224, '63', 'COUNTRY', 'countryid', NULL, 'list_single', 'N', 2, NULL, NULL, NULL, NULL, 5, NULL, 'countries', 'country', 'Y', '1', NULL, '2023-05-18 11:10:05'),
(225, '63', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 11:10:05'),
(226, '63', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 11:10:05'),
(227, '63', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 11:10:05'),
(228, '63', 'STATE / PROVINCE', 'provinceid', NULL, 'list_single', 'N', 3, NULL, NULL, NULL, NULL, 5, NULL, 'provinces', 'province', 'Y', '1', NULL, '2023-05-18 11:10:05'),
(229, '63', 'SORT BY', 'sort_by', NULL, 'hidden_input', 'Y', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 11:10:05'),
(230, '63', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 11:10:05'),
(231, '64', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 4, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-05-18 13:03:00'),
(232, '64', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 13:03:00'),
(233, '64', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 13:03:00'),
(234, '64', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 13:03:00'),
(235, '64', 'NAME', 'param_name', NULL, 'display_item', 'Y', 2, NULL, NULL, NULL, NULL, 255, NULL, '', '', 'Y', '1', NULL, '2023-05-18 13:03:00'),
(236, '64', 'VALUE', 'param_value', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2023-05-18 13:03:00'),
(237, '64', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 13:03:00'),
(238, '65', 'ACTIVE', 'active', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-05-18 13:28:01'),
(239, '65', 'AREA UNIT', 'area_unit', NULL, 'text_input', 'N', 2, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-05-18 13:28:01'),
(240, '65', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 13:28:01'),
(241, '65', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 13:28:01'),
(242, '65', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 13:28:01'),
(243, '65', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 13:28:01'),
(244, '66', 'ACCESSORY FEATURES', 'accessory_features', NULL, 'hidden_input', 'Y', 6, NULL, NULL, NULL, NULL, 255, NULL, '', '', '', '1', NULL, '2023-05-18 13:33:24'),
(245, '66', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 3, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-05-18 13:33:24'),
(246, '66', 'CATEGORY', 'category', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-05-18 13:33:24'),
(247, '66', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 13:33:24'),
(248, '66', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 13:33:24'),
(249, '66', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 13:33:24'),
(250, '66', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 13:33:24'),
(251, '67', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 4, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-05-18 14:10:12'),
(252, '67', 'CATEGORY', 'categoryid', NULL, 'list_single', 'Y', 2, NULL, NULL, NULL, NULL, 5, NULL, 'relest_categories', 'category', 'Y', '1', NULL, '2023-05-18 14:10:12'),
(253, '67', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 14:10:12'),
(254, '67', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 14:10:12'),
(255, '67', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 14:10:12'),
(256, '67', 'TYPE', 'type', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-05-18 14:10:12'),
(257, '67', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 14:10:12'),
(258, '68', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-05-18 14:19:08'),
(259, '68', 'AD TYPE', 'ad_type', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-05-18 14:19:08'),
(260, '68', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 14:19:08'),
(261, '68', 'CREDIT', 'credit', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 14:19:08'),
(262, '68', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 14:19:08'),
(263, '68', 'DURATION', 'duration', NULL, 'text_input', 'Y', 4, NULL, NULL, NULL, NULL, 255, NULL, '', '', 'Y', '1', NULL, '2023-05-18 14:19:08'),
(264, '68', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 14:19:08'),
(265, '68', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 14:19:08'),
(266, '69', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 4, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-05-18 14:46:11'),
(267, '69', 'AMENITY', 'amenity', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 100, NULL, '', '', 'Y', '1', NULL, '2023-05-18 14:46:11'),
(268, '69', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 14:46:11'),
(269, '69', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 14:46:11'),
(270, '69', 'ICON', 'icon', NULL, 'single_image', 'Y', 3, NULL, NULL, NULL, NULL, 50, NULL, '', '', '', '1', NULL, '2023-05-18 14:46:11'),
(271, '69', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 14:46:11'),
(272, '69', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 14:46:11'),
(273, '70', 'ACTIVE', 'active', NULL, 'list_single', 'N', 6, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-05-18 15:24:52'),
(274, '70', 'AD TITLE', 'ad_id', NULL, 'list_single', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, 'relest_ad', 'title', 'Y', '1', NULL, '2023-05-18 15:24:52'),
(275, '70', 'CONTACT', 'contact', NULL, 'text_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 15:24:52'),
(276, '70', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 15:24:52'),
(277, '70', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 15:24:52'),
(278, '70', 'EMAIL', 'email', NULL, 'email_input', 'N', 3, NULL, NULL, NULL, NULL, 976, NULL, '', '', 'Y', '1', NULL, '2023-05-18 15:24:52'),
(279, '70', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 15:24:52'),
(280, '70', 'INQUIRY', 'inquiry', NULL, 'text_input', 'N', 9, NULL, NULL, NULL, NULL, 2000, NULL, '', '', 'N', '1', NULL, '2023-05-18 15:24:52'),
(281, '70', 'IS READ', 'is_read', NULL, 'hidden_input', 'N', 10, NULL, NULL, NULL, NULL, 48, NULL, '', '', '', '1', NULL, '2023-05-18 15:24:52'),
(282, '70', 'NAME', 'name', NULL, 'text_input', 'N', 2, NULL, NULL, NULL, NULL, 976, NULL, '', '', '', '1', NULL, '2023-05-18 15:24:52'),
(283, '70', 'TYPE', 'type', NULL, 'hidden_input', 'N', 11, NULL, NULL, NULL, NULL, 976, NULL, '', '', '', '1', NULL, '2023-05-18 15:24:52'),
(284, '70', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 12, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 15:24:52'),
(285, '70', 'USER NAME', 'user_id', NULL, 'hidden_input', 'N', 13, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'N', '1', NULL, '2023-05-18 15:24:52'),
(286, '71', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 3, NULL, NULL, NULL, NULL, 1020, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-05-18 15:38:39'),
(287, '71', 'APPROVAL STATUS', 'approval_status', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 1020, NULL, '', '', 'Y', '1', NULL, '2023-05-18 15:38:39'),
(288, '71', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 15:38:39'),
(289, '71', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 15:38:39'),
(290, '71', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-18 15:38:39'),
(291, '71', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-18 15:38:39'),
(330, '73', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 4, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-05-23 11:49:03'),
(331, '73', 'CATEGORY', 'category_id', NULL, 'list_single', 'Y', 2, NULL, NULL, NULL, NULL, 20, NULL, 'relest_categories', 'category', 'Y', '1', NULL, '2023-05-23 11:49:03'),
(332, '73', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-23 11:49:03'),
(333, '73', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-23 11:49:03'),
(334, '73', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-05-23 11:49:03'),
(335, '73', 'LISTING REASON', 'listing_reason', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 800, NULL, '', '', 'Y', '1', NULL, '2023-05-23 11:49:03'),
(336, '73', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-05-23 11:49:03'),
(380, '75', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-06-17 08:28:28'),
(381, '75', 'TITLE', 'title', NULL, 'text_input', 'N', 2, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-06-17 08:28:28'),
(382, '75', 'CATEGORY ID', 'category_id', NULL, 'hidden_input', 'N', 3, NULL, NULL, NULL, NULL, 10, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:28'),
(383, '75', 'PROPERTY TYPE', 'property_type_id', NULL, 'list_single', 'N', 4, NULL, NULL, NULL, NULL, 10, NULL, 'relest_categories', 'category', 'Y', '1', NULL, '2023-06-17 08:28:28'),
(384, '75', 'LISTING PURPOSE', 'listing_purpose_id', NULL, 'list_multiple', 'N', 5, NULL, NULL, NULL, NULL, 10, NULL, 'relest_listing_reasons', 'listing_reason', 'Y', '1', NULL, '2023-06-17 08:28:28'),
(385, '75', 'PRICE', 'price', NULL, 'number_input', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-06-17 08:28:28'),
(386, '75', 'PRICE UNITS', 'price_units', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 100, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:28'),
(387, '75', 'TOTAL PRICE', 'total_price', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:28'),
(388, '75', 'COUNTRY', 'country_id', NULL, 'list_single', 'N', 9, NULL, NULL, NULL, NULL, 5, NULL, 'countries', 'country', '', '1', NULL, '2023-06-17 08:28:28'),
(389, '75', 'PROVINCE', 'province_id', NULL, 'list_single', 'N', 10, NULL, NULL, NULL, NULL, 5, NULL, 'provinces', 'province', '', '1', NULL, '2023-06-17 08:28:28'),
(390, '75', 'CITY', 'city', NULL, 'text_input', 'N', 11, NULL, NULL, NULL, NULL, 100, NULL, '', '', 'Y', '1', NULL, '2023-06-17 08:28:28'),
(391, '75', 'LOCATION', 'location', NULL, 'text_input', 'N', 12, NULL, NULL, NULL, NULL, 100, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:28'),
(392, '75', 'DESCRIPTION', 'description', NULL, 'text_area', 'N', 13, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:28'),
(393, '75', 'BEDS', 'beds', NULL, 'number_input', 'N', 14, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:29'),
(394, '75', 'BATHS', 'baths', NULL, 'number_input', 'N', 15, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:29'),
(395, '75', 'GARAGES', 'garages', NULL, 'number_input', 'N', 16, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:29'),
(396, '75', 'KITCHENS', 'kitchens', NULL, 'number_input', 'N', 17, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:29'),
(397, '75', 'AMENITUES', 'amenity_ids', NULL, 'list_multiple', 'N', 18, NULL, NULL, NULL, NULL, 50, NULL, 'relest_amenities', 'title', '', '1', NULL, '2023-06-17 08:28:29'),
(398, '75', 'COVERED AREA', 'covered_area', NULL, 'text_input', 'N', 19, NULL, NULL, NULL, NULL, 20, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:29'),
(399, '75', 'AREA UNITS', 'area_units', NULL, 'list_single', 'N', 20, NULL, NULL, NULL, NULL, 100, NULL, 'relest_area_units', 'area_unit', 'Y', '1', NULL, '2023-06-17 08:28:29'),
(400, '75', 'AD TYPE', 'type_id', NULL, 'text_input', 'N', 21, NULL, NULL, NULL, NULL, 100, NULL, 'relest_ad_types', 'ad_type', '', '1', NULL, '2023-06-17 08:28:29'),
(401, '75', 'VIDEO IDS', 'video_ids', NULL, 'text_input', 'N', 22, NULL, NULL, NULL, NULL, 50, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:29'),
(402, '75', 'LIVING AREA', 'living_area', NULL, 'number_input', 'N', 23, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:29'),
(403, '75', 'LIVING AREA UNITS', 'living_area_units_id', NULL, 'list_single', 'N', 24, NULL, NULL, NULL, NULL, 10, NULL, 'relest_area_units', 'area_unit', '', '1', NULL, '2023-06-17 08:28:29'),
(404, '75', 'PIECES', 'pieces', NULL, 'number_input', 'N', 25, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:29'),
(405, '75', 'ROOMS', 'rooms', NULL, 'number_input', 'N', 26, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:29'),
(406, '75', 'EXPIRE DATE', 'expire_date', NULL, 'date_input', 'N', 27, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:29'),
(407, '75', 'APPROVAL STATUS', 'approval_status', NULL, 'list_single', 'N', 28, NULL, NULL, NULL, NULL, 200, NULL, 'relest_approval_statuses', 'approval_status', 'Y', '1', NULL, '2023-06-17 08:28:29'),
(408, '75', 'UNAPPROVED REASON', 'unapproved_reason', NULL, 'text_input', 'N', 29, NULL, NULL, NULL, NULL, 500, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:29'),
(409, '75', 'CONTACT PERSON', 'contact_person', NULL, 'text_input', 'N', 30, NULL, NULL, NULL, NULL, 255, NULL, '', '', 'Y', '1', NULL, '2023-06-17 08:28:29'),
(410, '75', 'CONTACT NO', 'contactno', NULL, 'text_input', 'N', 31, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-06-17 08:28:29'),
(411, '75', 'CONTACT EMAIL', 'contact_email', NULL, 'text_input', 'N', 32, NULL, NULL, NULL, NULL, 200, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:29'),
(412, '75', 'USERID', 'userid', NULL, 'hidden_input', 'N', 33, NULL, NULL, NULL, NULL, 10, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:29'),
(413, '75', 'DEALER ID', 'dealer_id', NULL, 'hidden_input', 'N', 34, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:29'),
(414, '75', 'USER ID', 'user_id', NULL, 'list_single', 'N', 35, NULL, NULL, NULL, NULL, 10, NULL, 'users', 'name', 'Y', '1', NULL, '2023-06-17 08:28:29'),
(415, '75', 'ADMIN NOTES', 'admin_notes', NULL, 'text_area', 'N', 36, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:29'),
(416, '75', 'POST VIEWS', 'post_views', NULL, 'number_input', 'N', 37, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:30'),
(417, '75', 'PHONE VIEWS', 'phone_views', NULL, 'number_input', 'N', 38, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:30'),
(418, '75', 'EXPRESSIONS', 'expressions', NULL, 'number_input', 'N', 39, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:30'),
(419, '75', 'CREATED AT', 'created_at', NULL, 'date_time', 'Y', 40, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:30'),
(420, '75', 'UPDATED AT', 'updated_at', NULL, 'date_input', 'N', 41, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:30'),
(421, '75', 'DELETED AT', 'deleted_at', NULL, 'date_input', 'N', 42, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-17 08:28:30'),
(422, '75', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 43, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-06-17 08:28:30'),
(459, '82', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 3, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-06-26 10:48:07');
INSERT INTO `sys_module_fields` (`id`, `dznr_moduleid`, `field_label`, `field_name`, `placeholder`, `field_type`, `isrequired`, `display_seq`, `default_value`, `range_min`, `range_max`, `list_type`, `input_length`, `staticlist`, `listmodulename`, `listmoduleitem`, `onlistpag`, `active`, `userid`, `recdate`) VALUES
(460, '82', 'COUNTRY', 'country', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-06-26 10:48:07'),
(461, '82', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-26 10:48:07'),
(462, '82', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-26 10:48:08'),
(463, '82', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-06-26 10:48:08'),
(464, '82', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-26 10:48:08'),
(465, '83', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 6, NULL, NULL, NULL, NULL, 15, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-06-26 14:47:27'),
(466, '83', 'APPDESCR', 'appdescr', NULL, 'text_input', 'Y', 4, NULL, NULL, NULL, NULL, 765, NULL, '', '', 'N', '1', NULL, '2023-06-26 14:47:27'),
(467, '83', 'FOLDER NAME', 'applicfolder', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 150, NULL, '', '', 'Y', '1', NULL, '2023-06-26 14:47:27'),
(468, '83', 'APPLICATION', 'applicname', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 300, NULL, '', '', 'Y', '1', NULL, '2023-06-26 14:47:27'),
(469, '84', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 6, NULL, NULL, NULL, NULL, 15, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-06-26 14:48:54'),
(470, '84', 'APPDESCR', 'appdescr', NULL, 'text_input', 'Y', 4, NULL, NULL, NULL, NULL, 765, NULL, '', '', 'N', '1', NULL, '2023-06-26 14:48:54'),
(471, '84', 'FOLDER NAME', 'applicfolder', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 150, NULL, '', '', 'Y', '1', NULL, '2023-06-26 14:48:54'),
(472, '84', 'APPLICATION', 'applicname', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 300, NULL, '', '', 'Y', '1', NULL, '2023-06-26 14:48:54'),
(473, '85', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 6, NULL, NULL, NULL, NULL, 15, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-06-26 14:49:20'),
(474, '85', 'APPDESCR', 'appdescr', NULL, 'text_input', 'Y', 4, NULL, NULL, NULL, NULL, 765, NULL, '', '', 'N', '1', NULL, '2023-06-26 14:49:20'),
(475, '85', 'FOLDER NAME', 'applicfolder', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 150, NULL, '', '', 'Y', '1', NULL, '2023-06-26 14:49:20'),
(476, '85', 'APPLICATION', 'applicname', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 300, NULL, '', '', 'Y', '1', NULL, '2023-06-26 14:49:20'),
(477, '85', 'CLIENTID', 'clientid', NULL, 'hidden_input', 'Y', 6, NULL, NULL, NULL, NULL, 15, NULL, '', '', 'N', '1', NULL, '2023-06-26 14:49:20'),
(478, '85', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-06-26 14:49:20'),
(479, '85', 'NEWVER', 'newver', NULL, 'hidden_input', 'Y', 7, NULL, NULL, NULL, NULL, 30, NULL, '', '', 'N', '1', NULL, '2023-06-26 14:49:20'),
(480, '85', 'RECDATE', 'recdate', NULL, 'hidden_input', 'Y', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'N', '1', NULL, '2023-06-26 14:49:20'),
(481, '85', 'TABLE PREFIX', 'table_prefix', NULL, 'hidden_input', 'Y', 9, NULL, NULL, NULL, NULL, 30, NULL, '', '', 'N', '1', NULL, '2023-06-26 14:49:20'),
(482, '85', 'VERSION', 'version', NULL, 'text_input', 'Y', 5, NULL, NULL, NULL, NULL, 30, NULL, '', '', 'Y', '1', NULL, '2023-06-26 14:49:20'),
(483, '92', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 3, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-06-27 23:37:24'),
(484, '92', 'COUNTRY', 'country', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-06-27 23:37:24'),
(485, '92', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-27 23:37:24'),
(486, '92', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-27 23:37:24'),
(487, '92', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-06-27 23:37:24'),
(488, '92', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-06-27 23:37:24'),
(489, '93', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-02 12:30:03'),
(490, '93', 'AREA UNIT', 'area_unit', NULL, 'text_input', 'N', 2, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-07-02 12:30:03'),
(491, '93', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 12:30:03'),
(492, '93', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 12:30:03'),
(493, '93', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 12:30:03'),
(494, '93', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 3, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-07-02 12:30:03'),
(502, '95', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-02 12:58:36'),
(503, '95', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 2, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-02 12:58:36'),
(504, '95', 'AREA UNIT', 'area_unit', NULL, 'text_input', 'N', 3, NULL, NULL, NULL, NULL, 200, NULL, '', '', '', '1', NULL, '2023-07-02 12:58:36'),
(505, '95', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 12:58:36'),
(506, '95', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 12:58:36'),
(507, '95', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 12:58:36'),
(508, '95', 'ACTIVE', 'active', NULL, 'text_input', 'Y', 7, NULL, NULL, NULL, NULL, 5, NULL, '', '', 'Y', '1', NULL, '2023-07-02 12:58:36'),
(509, '96', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:07:11'),
(510, '96', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 2, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'N', '1', NULL, '2023-07-02 13:07:11'),
(511, '96', 'AREA UNIT', 'area_unit', NULL, 'text_input', 'N', 3, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:07:11'),
(512, '96', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:07:11'),
(513, '96', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:07:11'),
(514, '96', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:07:11'),
(515, '96', 'ACTIVE', 'active', NULL, 'text_input', 'Y', 7, NULL, NULL, NULL, NULL, 5, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:07:11'),
(516, '97', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:20:41'),
(517, '97', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:20:41'),
(518, '97', 'AREA UNIT', 'area_unit', NULL, 'text_input', 'N', 2, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:20:41'),
(519, '97', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:20:41'),
(520, '97', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:20:41'),
(521, '97', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:20:41'),
(522, '97', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 3, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-07-02 13:20:41'),
(523, '98', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:27:44'),
(524, '98', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 2, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:27:44'),
(525, '98', 'AREA UNIT', 'area_unit', NULL, 'text_input', 'N', 3, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:27:44'),
(526, '98', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:27:44'),
(527, '98', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:27:44'),
(528, '98', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:27:44'),
(529, '98', 'ACTIVE', 'active', NULL, 'text_input', 'Y', 7, NULL, NULL, NULL, NULL, 5, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:27:44'),
(530, '99', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:29:08'),
(531, '99', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 2, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:29:08'),
(532, '99', 'AREA UNIT', 'area_unit', NULL, 'text_input', 'N', 3, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:29:08'),
(533, '99', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:29:08'),
(534, '99', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:29:08'),
(535, '99', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:29:08'),
(536, '99', 'ACTIVE', 'active', NULL, 'text_input', 'Y', 7, NULL, NULL, NULL, NULL, 5, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:29:08'),
(537, '100', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:32:20'),
(538, '100', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 2, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:32:20'),
(539, '100', 'AREA UNIT', 'area_unit', NULL, 'text_input', 'N', 3, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:32:20'),
(540, '100', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:32:20'),
(541, '100', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:32:20'),
(542, '100', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:32:20'),
(543, '100', 'ACTIVE', 'active', NULL, 'text_input', 'Y', 7, NULL, NULL, NULL, NULL, 5, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:32:20'),
(544, '101', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:32:49'),
(545, '101', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 2, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:32:49'),
(546, '101', 'AREA UNIT', 'area_unit', NULL, 'text_input', 'N', 3, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:32:49'),
(547, '101', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:32:49'),
(548, '101', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:32:49'),
(549, '101', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-02 13:32:49'),
(550, '101', 'ACTIVE', 'active', NULL, 'text_input', 'Y', 7, NULL, NULL, NULL, NULL, 5, NULL, '', '', 'Y', '1', NULL, '2023-07-02 13:32:49'),
(551, '102', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-09 08:39:16'),
(552, '102', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'N', '1', NULL, '2023-07-09 08:39:16'),
(553, '102', 'COUNTRY', 'country', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-07-09 08:39:16'),
(554, '102', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-09 08:39:16'),
(555, '102', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-09 08:39:16'),
(556, '102', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-09 08:39:16'),
(557, '102', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 3, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-07-09 08:39:16'),
(558, '103', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-09 09:37:49'),
(559, '103', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 2, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-09 09:37:49'),
(560, '103', 'COUNTRY', 'country', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-07-09 09:37:49'),
(561, '103', 'CREATED AT', 'created_at', NULL, 'check_box', 'Y', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-09 09:37:49'),
(562, '103', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-09 09:37:49'),
(563, '103', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-09 09:37:49'),
(564, '103', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 7, NULL, NULL, NULL, NULL, 5, NULL, '', '', 'Y', '1', NULL, '2023-07-09 09:37:49'),
(565, '104', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-09 09:45:49'),
(566, '104', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 2, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-09 09:45:49'),
(567, '104', 'COUNTRY', 'country', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2023-07-09 09:45:49'),
(568, '104', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-09 09:45:49'),
(569, '104', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-09 09:45:49'),
(570, '104', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-09 09:45:49'),
(571, '104', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 7, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-07-09 09:45:49'),
(572, '105', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 3, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-07-11 09:07:10'),
(573, '105', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 09:07:10'),
(574, '105', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 09:07:10'),
(575, '105', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 09:07:10'),
(576, '105', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-11 09:07:10'),
(577, '105', 'TASK STATUS', 'task_status', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 800, NULL, '', '', 'Y', '1', NULL, '2023-07-11 09:07:10'),
(578, '105', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 09:07:10'),
(579, '106', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 5, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-07-11 09:46:11'),
(580, '106', 'ASSIGNED TO', 'assigned_to', NULL, 'list_single', 'N', 3, NULL, NULL, NULL, NULL, 0, NULL, 'sys_users', 'name', 'Y', '1', NULL, '2023-07-11 09:46:11'),
(581, '106', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 09:46:11'),
(582, '106', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 09:46:11'),
(583, '106', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 09:46:11'),
(584, '106', 'DESCRIPTION', 'description', NULL, 'text_input', 'Y', 9, NULL, NULL, NULL, NULL, 2000, NULL, '', '', 'N', '1', NULL, '2023-07-11 09:46:11'),
(585, '106', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-11 09:46:11'),
(586, '106', 'STATUS', 'task_status', NULL, 'list_single', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, 'task_statuses', 'task_status', 'Y', '1', NULL, '2023-07-11 09:46:11'),
(587, '106', 'TITLE', 'title', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 400, NULL, '', '', 'Y', '1', NULL, '2023-07-11 09:46:11'),
(588, '106', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 10, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 09:46:11'),
(589, '107', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 7, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-07-11 13:05:04'),
(590, '107', 'APPLICATION', 'application_id', NULL, 'list_single', 'N', 2, NULL, NULL, NULL, NULL, 0, NULL, 'sys_applications', 'applicname', 'Y', '1', NULL, '2023-07-11 13:05:04'),
(591, '107', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 13:05:04'),
(592, '107', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 13:05:04'),
(593, '107', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 10, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 13:05:04'),
(594, '107', 'DESCR COLUMN', 'descr_column', NULL, 'text_input', 'N', 5, NULL, NULL, NULL, NULL, 800, NULL, '', '', 'Y', '1', NULL, '2023-07-11 13:05:04'),
(595, '107', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-11 13:05:04'),
(596, '107', 'MODULE', 'module_id', NULL, 'list_single', 'N', 3, NULL, NULL, NULL, NULL, 0, NULL, 'sys_modules', 'module_name', 'Y', '1', NULL, '2023-07-11 13:05:04'),
(597, '107', 'STATUS COLUMN', 'status_column', NULL, 'text_input', 'N', 6, NULL, NULL, NULL, NULL, 800, NULL, '', '', 'Y', '1', NULL, '2023-07-11 13:05:04'),
(598, '107', 'TITLE COLUMN', 'title_column', NULL, 'text_input', 'N', 4, NULL, NULL, NULL, NULL, 800, NULL, '', '', 'Y', '1', NULL, '2023-07-11 13:05:04'),
(599, '107', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 11, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 13:05:04'),
(600, '108', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 7, NULL, NULL, NULL, NULL, 20, NULL, '', '', '', '1', NULL, '2023-07-11 23:39:08'),
(601, '108', 'APPLICATION', 'application_id', NULL, 'list_single', 'N', 2, NULL, NULL, NULL, NULL, 0, NULL, 'sys_applications', 'applicname', 'Y', '1', NULL, '2023-07-11 23:39:08'),
(602, '108', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 23:39:08'),
(603, '108', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 23:39:08'),
(604, '108', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 10, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 23:39:08'),
(605, '108', 'DESCR COLUMN', 'descr_column', NULL, 'list_single', 'N', 5, NULL, NULL, NULL, NULL, 800, NULL, 'sys_module_fields', 'field_name', 'Y', '1', NULL, '2023-07-11 23:39:08'),
(606, '108', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-11 23:39:08'),
(607, '108', 'MODULE', 'module_id', NULL, 'list_single', 'N', 3, NULL, NULL, NULL, NULL, 0, NULL, 'sys_modules', 'module_name', 'Y', '1', NULL, '2023-07-11 23:39:08'),
(608, '108', 'STATUS COLUMN', 'status_column', NULL, 'list_single', 'N', 6, NULL, NULL, NULL, NULL, 800, NULL, 'sys_module_fields', 'field_name', 'Y', '1', NULL, '2023-07-11 23:39:08'),
(609, '108', 'TITLE COLUMN', 'title_column', NULL, 'list_single', 'N', 4, NULL, NULL, NULL, NULL, 800, NULL, 'sys_module_fields', 'field_name', 'Y', '1', NULL, '2023-07-11 23:39:08'),
(610, '108', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 11, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-11 23:39:08'),
(611, '109', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 8, NULL, NULL, NULL, NULL, 15, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-07-12 12:51:00'),
(612, '109', 'APPLICATION', 'application_id', NULL, 'list_single', 'N', 2, NULL, NULL, NULL, NULL, 600, NULL, 'sys_applications', 'applicname', 'Y', '1', NULL, '2023-07-12 12:51:00'),
(613, '109', 'MODULE', 'caltable', NULL, 'list_single', 'N', 3, NULL, NULL, NULL, NULL, 300, NULL, 'sys_modules', 'module_name', 'Y', '1', NULL, '2023-07-12 12:51:00'),
(614, '109', 'CALENDAR TITLE', 'caltitle', NULL, 'text_input', 'N', 4, NULL, NULL, NULL, NULL, 765, NULL, '', '', 'Y', '1', NULL, '2023-07-12 12:51:00'),
(615, '109', 'CLIENTID', 'clientid', NULL, 'hidden_input', 'N', 13, NULL, NULL, NULL, NULL, 15, NULL, '', '', '', '1', NULL, '2023-07-12 12:51:00'),
(616, '109', 'DESCR COLUMN', 'col4descr', NULL, 'list_single', 'N', 5, NULL, NULL, NULL, NULL, 300, NULL, 'sys_module_fields', 'field_label', 'Y', '1', NULL, '2023-07-12 12:51:00'),
(617, '109', 'END DATE COLUMN', 'col4end', NULL, 'list_single', 'N', 7, NULL, NULL, NULL, NULL, 300, NULL, 'sys_module_fields', 'field_label', 'Y', '1', NULL, '2023-07-12 12:51:00'),
(618, '109', 'START DATE COLUMN', 'col4start', NULL, 'list_single', 'N', 6, NULL, NULL, NULL, NULL, 300, NULL, 'sys_module_fields', 'field_label', 'Y', '1', NULL, '2023-07-12 12:51:00'),
(619, '109', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-12 12:51:01'),
(620, '109', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 10, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-12 12:51:01'),
(621, '109', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-12 12:51:01'),
(622, '109', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 11, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-12 12:51:01'),
(623, '109', 'USER', 'user_id', NULL, 'hidden_input', 'N', 12, NULL, NULL, NULL, NULL, 30, NULL, '', '', '', '1', NULL, '2023-07-12 12:51:01'),
(624, '110', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-13 02:03:09'),
(625, '110', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 02:03:09'),
(626, '110', 'USER ID', 'user_id', NULL, 'hidden_input', 'N', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 02:03:09'),
(627, '110', 'APPLICATION', 'application_id', NULL, 'list_single', 'N', 3, NULL, NULL, NULL, NULL, 0, NULL, 'sys_applications', 'applicname', 'Y', '1', NULL, '2023-07-13 02:03:09'),
(628, '110', 'MODULE', 'module_id', NULL, 'list_single', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, 'sys_modules', 'module_name', 'Y', '1', NULL, '2023-07-13 02:03:09'),
(629, '110', 'TITLE COLUMN', 'title_column_id', NULL, 'list_single', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, 'sys_module_fields', 'field_label', 'Y', '1', NULL, '2023-07-13 02:03:09'),
(630, '110', 'START DATE COLUMN', 'start_date_column_id', NULL, 'list_single', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, 'sys_module_fields', 'field_label', 'Y', '1', NULL, '2023-07-13 02:03:09'),
(631, '110', 'END DATE COLUMN', 'end_date_column_id', NULL, 'list_single', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, 'sys_module_fields', 'field_label', 'Y', '1', NULL, '2023-07-13 02:03:09'),
(632, '110', 'CALENDAR TITLE', 'title', NULL, 'text_input', 'N', 2, NULL, NULL, NULL, NULL, 765, NULL, '', '', 'Y', '1', NULL, '2023-07-13 02:03:09'),
(633, '110', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 10, NULL, NULL, NULL, NULL, 15, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-07-13 02:03:09'),
(634, '110', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 11, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 02:03:09'),
(635, '110', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 12, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 02:03:09'),
(636, '110', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 13, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 02:03:09'),
(637, '111', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-13 03:28:37'),
(638, '111', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 2, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 03:28:37'),
(639, '111', 'TITLE', 'title', NULL, 'text_input', 'N', 3, NULL, NULL, NULL, NULL, 800, NULL, '', '', 'Y', '1', NULL, '2023-07-13 03:28:37'),
(640, '111', 'DESCRIPTION', 'description', NULL, 'text_input', 'N', 4, NULL, NULL, NULL, NULL, 2000, NULL, '', '', '', '1', NULL, '2023-07-13 03:28:37'),
(641, '111', 'ASSIGNED TO', 'assigned_to', NULL, 'list_single', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, 'sys_users', 'name', 'Y', '1', NULL, '2023-07-13 03:28:37'),
(642, '111', 'START DATE', 'start_date', NULL, 'date_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-13 03:28:37'),
(643, '111', 'END DATE', 'end_date', NULL, 'date_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-13 03:28:37'),
(644, '111', 'TASK STATUS', 'task_status', NULL, 'list_single', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, 'task_statuses', 'task_status', 'Y', '1', NULL, '2023-07-13 03:28:37'),
(645, '111', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 9, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 03:28:37'),
(646, '111', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 10, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 03:28:37'),
(647, '111', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 11, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 03:28:37'),
(648, '111', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 12, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'N', '1', NULL, '2023-07-13 03:28:37'),
(649, '112', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-13 12:02:03'),
(650, '112', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 2, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 12:02:03'),
(651, '112', 'SALESMAN', 'salesman_id', NULL, 'list_single', 'N', 3, NULL, NULL, NULL, NULL, 0, NULL, 'sys_users', 'name', 'Y', '1', NULL, '2023-07-13 12:02:03'),
(652, '112', 'MONTH', 'month', NULL, 'text_input', 'N', 4, NULL, NULL, NULL, NULL, 800, NULL, '', '', 'Y', '1', NULL, '2023-07-13 12:02:03'),
(653, '112', 'TOTAL SALE', 'total_sale', NULL, 'number_input', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-13 12:02:03'),
(654, '112', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 12:02:03'),
(655, '112', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 12:02:03'),
(656, '112', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 12:02:03'),
(657, '112', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 9, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-07-13 12:02:03'),
(658, '113', 'ID', 'id', NULL, 'hidden_input', 'Y', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2023-07-13 12:22:22'),
(659, '113', 'CLIENT ID', 'client_id', NULL, 'hidden_input', 'N', 2, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 12:22:22'),
(660, '113', 'USER ID', 'user_id', NULL, 'hidden_input', 'N', 3, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 12:22:22'),
(661, '113', 'CHART TITLE', 'chart_title', NULL, 'text_input', 'N', 4, NULL, NULL, NULL, NULL, 800, NULL, '', '', 'Y', '1', NULL, '2023-07-13 12:22:22'),
(662, '113', 'CHART TYPE', 'chart_type', NULL, 'text_input', 'N', 5, NULL, NULL, NULL, NULL, 400, NULL, '', '', 'Y', '1', NULL, '2023-07-13 12:22:22'),
(663, '113', 'LABEL X', 'label_x', NULL, 'text_input', 'N', 6, NULL, NULL, NULL, NULL, 400, NULL, '', '', 'Y', '1', NULL, '2023-07-13 12:22:22'),
(664, '113', 'LABEL Y', 'label_y', NULL, 'text_input', 'N', 7, NULL, NULL, NULL, NULL, 400, NULL, '', '', 'Y', '1', NULL, '2023-07-13 12:22:22'),
(665, '113', 'APPLICATION', 'application_id', NULL, 'list_single', 'N', 8, NULL, NULL, NULL, NULL, 0, NULL, 'sys_applications', 'applicname', 'Y', '1', NULL, '2023-07-13 12:22:22'),
(666, '113', 'MODULE ID', 'module_id', NULL, 'list_single', 'N', 9, NULL, NULL, NULL, NULL, 0, NULL, 'sys_modules', 'module_name', 'Y', '1', NULL, '2023-07-13 12:22:22'),
(667, '113', 'DATA COLUMN X-AXIS', 'data_column_id_x', NULL, 'list_single', 'N', 10, NULL, NULL, NULL, NULL, 0, NULL, 'sys_module_fields', 'field_label', 'Y', '1', NULL, '2023-07-13 12:22:22'),
(668, '113', 'DATA COLUMN Y-AXIS', 'data_column_id_y', NULL, 'list_single', 'N', 11, NULL, NULL, NULL, NULL, 0, NULL, 'sys_module_fields', 'field_label', 'Y', '1', NULL, '2023-07-13 12:22:22'),
(669, '113', 'CREATED AT', 'created_at', NULL, 'hidden_input', 'Y', 12, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 12:22:22'),
(670, '113', 'UPDATED AT', 'updated_at', NULL, 'hidden_input', 'N', 13, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 12:22:22'),
(671, '113', 'DELETED AT', 'deleted_at', NULL, 'hidden_input', 'N', 14, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2023-07-13 12:22:22'),
(672, '113', 'ACTIVE', 'active', NULL, 'list_single', 'Y', 15, NULL, NULL, NULL, NULL, 20, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2023-07-13 12:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `sys_widgets`
--

CREATE TABLE `sys_widgets` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `divid` int(11) NOT NULL,
  `title` text NOT NULL,
  `subtitle` text NOT NULL,
  `widget_type` varchar(100) NOT NULL,
  `widget_table` varchar(100) NOT NULL,
  `display_seq` varchar(20) NOT NULL,
  `active` varchar(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sys_widgets`
--

INSERT INTO `sys_widgets` (`id`, `client_id`, `divid`, `title`, `subtitle`, `widget_type`, `widget_table`, `display_seq`, `active`, `created_at`, `updated_at`) VALUES
(1, 0, 3367, 'Test ', '', 'progressIndicator', 'widget_progress', '', '0', '2023-08-15 08:53:03', NULL),
(2, 0, 43337, '', '', 'statisticalBox', 'widget_statbox', '', '0', '2023-08-15 09:15:34', NULL),
(3, 0, 7981, '', '', 'statisticalBox', 'widget_statbox', '', '0', '2023-08-16 08:20:40', NULL),
(4, 0, 69735, 'Test', 'Test', 'statisticalBox', 'widget_statbox', '', '0', '2023-08-16 12:21:47', NULL),
(5, 0, 60108, 'Test', 'Test', 'statisticalBox', 'widget_statbox', '', '0', '2023-08-16 12:25:15', NULL),
(6, 0, 92905, '', '', 'statisticalBox', 'widget_statbox', '', '0', '2023-08-16 12:37:33', NULL),
(7, 0, 20565, '', '', 'statisticalBox', 'widget_statbox', '', '0', '2023-08-16 13:40:14', NULL),
(8, 0, 24568, '', '', 'statisticalBox', 'widget_statbox', '', '0', '2023-08-16 15:07:49', NULL),
(9, 0, 5108, '', 'Test Subtitle', 'statisticalBox', 'widget_statbox', '', '0', '2023-08-16 15:08:58', NULL),
(10, 0, 17170, '', '', 'statisticalBox', 'widget_statbox', '', '0', '2023-08-16 18:16:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@email.com', NULL, '$2y$10$dMJDxLYobp2vdFFFyxvJtu1GfevRjIgXKGW/fI3PYSKtVAeWkC.WS', NULL, '2022-03-09 08:19:50', '2022-03-09 08:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `widget_progress`
--

CREATE TABLE `widget_progress` (
  `id` int(11) NOT NULL,
  `label_position` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT 'bar,spinner',
  `color` text NOT NULL,
  `bg_color` text NOT NULL,
  `application_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `label_col_id` int(11) NOT NULL,
  `data_col_id` int(11) NOT NULL,
  `show_percentage` varchar(2) NOT NULL,
  `widget_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `widget_progress`
--

INSERT INTO `widget_progress` (`id`, `label_position`, `type`, `color`, `bg_color`, `application_id`, `module_id`, `label_col_id`, `data_col_id`, `show_percentage`, `widget_id`) VALUES
(1, '', 'progress_radical', '#1b024b', '#7b8793', 2, 112, 652, 653, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `widget_statbox`
--

CREATE TABLE `widget_statbox` (
  `id` int(11) NOT NULL,
  `stat_type` varchar(200) NOT NULL,
  `label` varchar(200) NOT NULL,
  `chart_color` varchar(200) NOT NULL,
  `counter_color` varchar(200) NOT NULL,
  `label_color` varchar(200) NOT NULL,
  `application_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `data_column_id_x` int(11) NOT NULL,
  `data_column_id_y` int(11) NOT NULL,
  `value_filter` varchar(200) NOT NULL,
  `enable_percentage` tinyint(2) NOT NULL COMMENT '0:deactive, 1: active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `widget_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `widget_statbox`
--

INSERT INTO `widget_statbox` (`id`, `stat_type`, `label`, `chart_color`, `counter_color`, `label_color`, `application_id`, `module_id`, `data_column_id_x`, `data_column_id_y`, `value_filter`, `enable_percentage`, `created_at`, `updated_at`, `deleted_at`, `widget_id`) VALUES
(1, 'statistical_box', 'Total Sale', '#e9ecef', '', '', 2, 112, 652, 653, '', 0, '2023-08-15 09:15:34', NULL, NULL, 2),
(2, 'statitical_counter', '', '', '', '', 0, 0, 0, 0, '', 0, '2023-08-16 08:20:40', NULL, NULL, 3),
(3, 'statitical_counter', 'Total Sales', '', '', '', 2, 112, 653, 0, '', 0, '2023-08-16 12:21:47', NULL, NULL, 4),
(4, 'statitical_counter', 'Total Months', '', '', '', 2, 112, 652, 0, '', 0, '2023-08-16 12:25:16', NULL, NULL, 5),
(5, 'statitical_counter', 'Total Sale Months', '', '', '', 2, 112, 653, 0, '400', 0, '2023-08-16 12:37:33', NULL, NULL, 6),
(6, 'statitical_counter', 'Total Sale', '', '#be99ea', '#780ac2', 2, 112, 652, 0, '', 0, '2023-08-16 13:40:14', NULL, NULL, 7),
(7, 'statitical_counter', 'Total Sale Months', '', '#fd8d0d', '#98999a', 2, 112, 652, 0, '', 0, '2023-08-16 15:07:49', NULL, NULL, 8),
(8, 'statitical_counter', 'Total 400 Sale', '', '#87d80e', '#888c91', 2, 112, 653, 0, '400', 0, '2023-08-16 15:08:39', NULL, NULL, 9),
(9, 'statitical_counter', 'Total Sale ', '', '#0d6efd', '#8a8f93', 2, 112, 653, 0, '400', 0, '2023-08-16 18:16:47', NULL, NULL, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_status`
--
ALTER TABLE `active_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charts_desinger`
--
ALTER TABLE `charts_desinger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dznr_modules`
--
ALTER TABLE `dznr_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dznr_module_fields`
--
ALTER TABLE `dznr_module_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthly_sale`
--
ALTER TABLE `monthly_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_applications`
--
ALTER TABLE `sys_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_charts`
--
ALTER TABLE `sys_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_chart_properties`
--
ALTER TABLE `sys_chart_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_chart_type`
--
ALTER TABLE `sys_chart_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_modules`
--
ALTER TABLE `sys_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_module_fields`
--
ALTER TABLE `sys_module_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_widgets`
--
ALTER TABLE `sys_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widget_progress`
--
ALTER TABLE `widget_progress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widget_statbox`
--
ALTER TABLE `widget_statbox`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_status`
--
ALTER TABLE `active_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `charts_desinger`
--
ALTER TABLE `charts_desinger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dznr_modules`
--
ALTER TABLE `dznr_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dznr_module_fields`
--
ALTER TABLE `dznr_module_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `monthly_sale`
--
ALTER TABLE `monthly_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sys_applications`
--
ALTER TABLE `sys_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sys_charts`
--
ALTER TABLE `sys_charts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sys_chart_properties`
--
ALTER TABLE `sys_chart_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sys_chart_type`
--
ALTER TABLE `sys_chart_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_modules`
--
ALTER TABLE `sys_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `sys_module_fields`
--
ALTER TABLE `sys_module_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=673;

--
-- AUTO_INCREMENT for table `sys_widgets`
--
ALTER TABLE `sys_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widget_progress`
--
ALTER TABLE `widget_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widget_statbox`
--
ALTER TABLE `widget_statbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
