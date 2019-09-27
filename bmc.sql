-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2019 at 07:03 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_medical`
--

CREATE TABLE IF NOT EXISTS `jenis_medical` (
`id_jenis_medical` int(2) NOT NULL,
  `nama_medical` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_medical`
--

INSERT INTO `jenis_medical` (`id_jenis_medical`, `nama_medical`) VALUES
(1, 'Urine'),
(2, 'Liver'),
(3, 'Hema'),
(4, 'Lipid'),
(5, 'Ginjal'),
(6, 'Glukosa'),
(7, 'Darting(darah tinggi)'),
(8, 'encok');

-- --------------------------------------------------------

--
-- Table structure for table `med_cek`
--

CREATE TABLE IF NOT EXISTS `med_cek` (
`id_mc` int(3) NOT NULL,
  `no_lab` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `id_jenis_medical` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `med_cek`
--

INSERT INTO `med_cek` (`id_mc`, `no_lab`, `nama`, `jk`, `tgl_lahir`, `id_jenis_medical`) VALUES
(1, '25432424SZ', 'tester', 'P', '1984-12-07', 8),
(2, 'nhghg', 'hgfjy', 'P', '1995-10-10', 6),
(4, 'asdcadc', 'aervae', 'P', '2017-07-12', 2),
(5, '1234AA', 'tester hahah', 'P', '1984-12-20', 3),
(6, 'sdcds', 'sdc', 'P', '2019-08-26', 1),
(7, 'sdcds', 'sdc', 'P', '2019-08-26', 2),
(11, 'dscdc', 'dcsd', 'L', '2019-09-10', 3),
(12, '132323', 'wakwaaw', 'P', '1979-11-14', 7),
(13, '78575SF', 'henny', 'P', '1984-09-18', 8),
(14, 'asdca', 'asdca', 'L', '2019-09-03', 7),
(15, 'asdcadrg', 'ethnert', 'L', '2019-09-02', 7),
(16, 'jg''', '.ili', 'P', '1989-11-15', 6),
(18, 'dfvzfv', 'wawawa wiwiwiw', 'L', '1987-10-07', 4),
(19, 'arfa lala', 'ergqerg', 'P', '2019-09-02', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `role` enum('admin','operator') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `role`) VALUES
(1, 'resya', '21232f297a57a5a743894a0e4a801fc3', 'Resyakila Sutayta', 'admin'),
(2, 'wibi', '5802eb416ebef4a86ab20ce60b43ab45', 'Wibisono', 'operator'),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_medical`
--
ALTER TABLE `jenis_medical`
 ADD PRIMARY KEY (`id_jenis_medical`);

--
-- Indexes for table `med_cek`
--
ALTER TABLE `med_cek`
 ADD PRIMARY KEY (`id_mc`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_medical`
--
ALTER TABLE `jenis_medical`
MODIFY `id_jenis_medical` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `med_cek`
--
ALTER TABLE `med_cek`
MODIFY `id_mc` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
