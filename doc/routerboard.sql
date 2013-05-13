-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 07, 2013 at 01:28 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `routerboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
CREATE TABLE IF NOT EXISTS `group` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(25) NOT NULL,
  `group_description` text NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`group_id`, `group_name`, `group_description`, `deleted`) VALUES
(1, 'Integrated solutions', 'These products are provided complete with cases, power adapters and packaged inside individual product boxes. Ready to use and preconfigured with the most basic functionality so you can plug-in and use.', 0),
(2, 'RouterBOARD', 'Small integrated routers running RouterOS. The RouterBOARD devices are sold as they are, choose case, adapters and interfaces separately. Perfect for assembling your own systems as they offer the biggest customization options', 0),
(3, 'Enclosures', 'Indoor and outdoor cases and boxes for using with RouterBOARD devices. Choose based on intended place of use, the RouterBOARD model, and the type of connections you will need (USB, antenna holes etc)', 0),
(4, 'Interfaces', 'Wireless radio cards for expanding the functionality of RouterBOARD devices and PCs running RouterOS. Choose based on frequency, output power and connector type.', 0),
(5, 'Accessories', 'These devices are made for MikroTik products - power adapters, pigtails and PoE injectors.', 0),
(6, 'Product archive', 'These products are not manufactured anymore, and are listed here only for reference.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `product_id`, `url`, `position`, `deleted`) VALUES
(1, 1, 'c18.png', -240, 0),
(2, 2, 'c17.png', -320, 0),
(3, 3, 'c18.png', -320, 0),
(4, 4, 'c15.png', 0, 0),
(5, 5, 'c18.png', -80, 0),
(6, 6, 'c15.png', -160, 0),
(7, 7, 'c7.png', -400, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `info` varchar(255) NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `code`, `name`, `description`, `price`, `group_id`, `info`, `deleted`) VALUES
(1, 'RBSEXTANTG5HPnD', 'SEXTANT G 5HPnD', 'The SEXTANT is a 18dBi 5GHz antenna with a built in RB911G router. It has two polarizations to give you all benefits of 2x2 MIMO in 802.11n./Inside is the high power RB911 dual chain wireless device, with high performance, high output power, and a Gigabit Ethernet port, to fully utilize the benefit of 802.11n high speed wireless./Easy to use and quick to deploy, SEXTANT is ideal for point to point links. /Package contains SEXTANTG5PHnD, mounting kit, PoE injector, power adapter', '110.00', 1, '18dBi dual pol/CPE or PtP/802.11n TDMA/Gigabit Ethernet', 0),
(2, 'RB260GS', 'RB260GS', 'The RB260GS is a small SOHO switch. It has five Gigabit Ethernet ports and one SFP cage powered by an Atheros Switch Chip. \r\n\r\nTested and recommended to use with MikroTik SFP modules: S-85DLC05D, S-31DLC20D and S-35/53LC20D (not included) \r\n\r\nIt is powered by an operating system designed specifically for MikroTik Switch products - SwOS. \r\n\r\nSwOS is configurable from your web browser. It gives you all the basic functionality for a managed switch, plus more: Allows to manage port-to-port forwarding, apply MAC filter, configure \r\nVLANs, mirror traffic, apply bandwidth limitation and even adjust some MAC and IP header fields.', '39.95', 1, 'Gigabit switch/Five Gig Ethernet', 0),
(3, 'RB912UAG-5HPnD', 'RB912UAG-5HPnD', 'The RB912UAG-5HPnD is very versatile device. It''s \r\nsmall wireless router with an integrated high power wireless card and an additional miniPCIe slot for 802.11 wireless, or 3G card. The Gigabit port helps to utilize the full potential of 802.11n wireless speeds. \r\n\r\nThe integrated wireless card is capable of up to 1000mW output power. It has built in 16kV ESD protection on both the Ethernet and the \r\nMMCX ports', '79.00', 2, '1000mW 5Ghz', 0),
(4, 'CA411-711', 'CA411-711', 'CA411-711 is new indoor case for RB411 and RB711 series. It has changeable front panels, so you can choose one that fits the product that you actually use. Also, case is higher to accommodate high-power wireless cards and has wall mounting holes on the back.', '15.00', 3, 'fits RB411 and RB711/higher profile', 0),
(5, 'S-31DLC20D', 'S-31DLC20D', 'S-31DLC20D is a 1.25G SFP transceiver with a 1310nm Dual LC connector, for up to 20 kilometer Single Mode fiber connections, with DDM \r\n\r\nUnits are tested and compatible with RB260GS,RB2011LS, RB2011LS-IN, RB2011UAS-IN, RB2011UAS-RM, RB2011UAS-2HnD, RB2011UAS-2HnD-IN, and CCR1036-12G-4S. Units are compatible with non-MikroTik SFP devices as well.', '29.00', 4, '20KM, Single Mode', 0),
(6, '12POW', '12POW', '12V 0.5A Power Supply \r\n\r\nFits RB750', '9.00', 5, '12V 0.5A', 0),
(7, 'IAMP4', 'RB14', 'RouterBOARD 14 miniPCI to PCI Adapter for using four miniPCI cards inside regular PC with PCI slots. Doesn''t require any drivers.', NULL, 6, 'miniPCI to PCI', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_more_info`
--

DROP TABLE IF EXISTS `product_more_info`;
CREATE TABLE IF NOT EXISTS `product_more_info` (
  `product_id` int(10) unsigned NOT NULL,
  `slideshow_pic_s` varchar(25) DEFAULT NULL,
  `slideshow_pic_m` varchar(25) NOT NULL,
  `slideshow_pic_l` varchar(25) NOT NULL,
  `routerboot` varchar(25) NOT NULL,
  `brochure` varchar(25) NOT NULL,
  `design_files_pdf` varchar(25) NOT NULL,
  `dimensions` varchar(25) NOT NULL,
  `quick_guide` varchar(25) NOT NULL,
  `high_res_image` varchar(25) NOT NULL,
  `user_guide` varchar(25) NOT NULL,
  `rb400l_differences` varchar(25) NOT NULL,
  `design_files_dxf-pdf` varchar(25) NOT NULL,
  `design_files_dxf` varchar(25) NOT NULL,
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_more_info`
--

INSERT INTO `product_more_info` (`product_id`, `slideshow_pic_s`, `slideshow_pic_m`, `slideshow_pic_l`, `routerboot`, `brochure`, `design_files_pdf`, `dimensions`, `quick_guide`, `high_res_image`, `user_guide`, `rb400l_differences`, `design_files_dxf-pdf`, `design_files_dxf`) VALUES
(1, '', '313_m.png', '313_l.png', 'SextantG-5HPnD.pdf', '', '', '', '', 'SEXTANTG5HPnD_hi_res.png', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_spec`
--

DROP TABLE IF EXISTS `product_spec`;
CREATE TABLE IF NOT EXISTS `product_spec` (
  `product_id` int(10) unsigned NOT NULL,
  `product_code` varchar(25) DEFAULT NULL,
  `cpu_speed` varchar(25) DEFAULT NULL,
  `cpu_cores` varchar(25) DEFAULT NULL,
  `ram` varchar(25) DEFAULT NULL,
  `lan_ports` varchar(25) DEFAULT NULL,
  `gigabit` varchar(25) DEFAULT NULL,
  `minipci` varchar(25) DEFAULT NULL,
  `minipci_e` varchar(25) DEFAULT NULL,
  `integrated_wireless` varchar(25) DEFAULT NULL,
  `wireless_standards` varchar(25) DEFAULT NULL,
  `power_jack` varchar(25) DEFAULT NULL,
  `poe` varchar(25) DEFAULT NULL,
  `dimensions` varchar(25) DEFAULT NULL,
  `operating_system` varchar(25) DEFAULT NULL,
  `temperature_range` varchar(25) DEFAULT NULL,
  `routeros_license` varchar(25) DEFAULT NULL,
  `antenna_gain` varchar(25) DEFAULT NULL,
  `tx_power` varchar(25) DEFAULT NULL,
  `cpu` varchar(25) DEFAULT NULL,
  `max_power_consumption` varchar(25) DEFAULT NULL,
  `usb` varchar(25) DEFAULT NULL,
  `802_3af_support` varchar(25) DEFAULT NULL,
  `voltage_monitor` varchar(25) DEFAULT NULL,
  `cpu_temperature_monitor` varchar(25) DEFAULT NULL,
  `pcb_temperature_monitor` varchar(25) DEFAULT NULL,
  `sfp_ports` varchar(25) DEFAULT NULL,
  `architecture` varchar(25) DEFAULT NULL,
  `memory_cards` varchar(25) DEFAULT NULL,
  `current_monitor` varchar(25) DEFAULT NULL,
  `memory_card_type` varchar(25) DEFAULT NULL,
  `material` varchar(25) DEFAULT NULL,
  `color` varchar(25) DEFAULT NULL,
  `purpose` varchar(25) DEFAULT NULL,
  `wavelength` varchar(25) DEFAULT NULL,
  `distance` varchar(25) DEFAULT NULL,
  `mode` varchar(25) DEFAULT NULL,
  `data_rate` varchar(25) DEFAULT NULL,
  `connector` varchar(25) DEFAULT NULL,
  `format` varchar(25) DEFAULT NULL,
  `802_11a` varchar(25) DEFAULT NULL,
  `802_11b` varchar(25) DEFAULT NULL,
  `802_11g` varchar(25) DEFAULT NULL,
  `802_11n` varchar(25) DEFAULT NULL,
  `chipset` varchar(25) DEFAULT NULL,
  `output_power` varchar(25) DEFAULT NULL,
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_spec`
--

INSERT INTO `product_spec` (`product_id`, `product_code`, `cpu_speed`, `cpu_cores`, `ram`, `lan_ports`, `gigabit`, `minipci`, `minipci_e`, `integrated_wireless`, `wireless_standards`, `power_jack`, `poe`, `dimensions`, `operating_system`, `temperature_range`, `routeros_license`, `antenna_gain`, `tx_power`, `cpu`, `max_power_consumption`, `usb`, `802_3af_support`, `voltage_monitor`, `cpu_temperature_monitor`, `pcb_temperature_monitor`, `sfp_ports`, `architecture`, `memory_cards`, `current_monitor`, `memory_card_type`, `material`, `color`, `purpose`, `wavelength`, `distance`, `mode`, `data_rate`, `connector`, `format`, `802_11a`, `802_11b`, `802_11g`, `802_11n`, `chipset`, `output_power`) VALUES
(1, 'RBSEXTANTG5HPnD', '600MHz', '1', '32MB', '1', 'YES', '1', NULL, '0', '802.11a/n', 'YES', '8-30V', 'Ø250mm, height 90mm, 830g', 'RouterOS', '-30C to +70C', 'L3', '18dBi', '30dBm', 'AR9342', '11W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'RB260GS', NULL, NULL, NULL, '5', 'YES', '0', '0', '0', NULL, '9-28V DC', 'YES', '113x89x28mm', 'MikroTik SwOS', '-25℃ to +65℃', NULL, NULL, NULL, NULL, '6W', '0', NULL, NULL, NULL, NULL, '1', 'RISC', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`);

--
-- Constraints for table `product_more_info`
--
ALTER TABLE `product_more_info`
  ADD CONSTRAINT `product_more_info_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product_spec`
--
ALTER TABLE `product_spec`
  ADD CONSTRAINT `product_spec_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
