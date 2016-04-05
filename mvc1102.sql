-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 24, 2016 at 11:01 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `mvc1102`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`) VALUES
(1, 'Stone'),
(2, 'Schmidt'),
(3, 'Sanchez'),
(4, 'Hunt'),
(5, 'Robertson'),
(6, 'Cox'),
(7, 'Fernandez'),
(8, 'Graham'),
(9, 'Greene'),
(10, 'Washington'),
(11, 'Gordon'),
(12, 'Lewis'),
(13, 'Matthews'),
(14, 'Olson'),
(15, 'Grant'),
(16, 'Ramos'),
(17, 'Ortiz'),
(18, 'Richards'),
(19, 'Morgan'),
(20, 'Fields'),
(21, 'Long'),
(22, 'Boyd'),
(23, 'Parker'),
(24, 'Martinez'),
(25, 'Wells'),
(26, 'Wallace'),
(27, 'Johnston'),
(28, 'Tucker'),
(29, 'Chapman'),
(30, 'Riley');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `style_id` tinyint(3) unsigned DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `style_id` (`style_id`),
  KEY `price_index` (`price`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `description`, `price`, `style_id`, `status`) VALUES
(1, 'donec semper sapien', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 406.00, 8, 0),
(2, 'erat volutpat in congue etiam', 'Donec semper sapien a libero. Nam dui.', 468.00, 8, 1),
(3, 'cras in purus', 'In eleifend quam a odio. In hac habitasse platea dictumst.', 437.00, 6, 1),
(4, 'tincidunt eu felis fusce', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 272.00, 10, 0),
(5, 'risus auctor sed tristique', 'Suspendisse potenti. Nullam porttitor lacus at turpis.', 413.00, 10, 1),
(6, 'eros elementum', 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.', 444.00, 6, 0),
(7, 'dapibus augue', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo.', 620.00, 2, 1),
(8, 'felis sed lacus morbi', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 549.00, 4, 1),
(9, 'ultrices aliquet', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 978.00, 6, 1),
(10, 'hendrerit at', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 338.00, 1, 1),
(11, 'libero rutrum ac lobortis', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 939.00, 4, 1),
(12, 'vel nulla eget', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', 502.00, 5, 0),
(13, 'vehicula condimentum curabitur in libero', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', 229.00, 8, 0),
(14, 'at nunc', 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 548.00, 2, 1),
(15, 'quis orci eget orci', 'Proin eu mi. Nulla ac enim.', 643.00, 7, 0),
(16, 'pulvinar nulla pede ullamcorper augue', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 693.00, 4, 0),
(17, 'pede justo lacinia eget tincidunt', 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.', 550.00, 2, 0),
(18, 'venenatis non sodales', 'Etiam vel augue. Vestibulum rutrum rutrum neque.', 705.00, 9, 1),
(19, 'habitasse platea dictumst', 'Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst.', 898.00, 7, 1),
(20, 'suscipit', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', 603.00, 5, 1),
(21, 'enim', 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 972.00, 7, 0),
(22, 'in tempus', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 623.00, 3, 0),
(23, 'porta volutpat erat quisque', 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 824.00, 7, 1),
(24, 'posuere cubilia curae mauris viverra', 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', 268.00, 7, 0),
(25, 'rutrum neque aenean', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', 545.00, 8, 0),
(26, 'quam', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 312.00, 10, 0),
(27, 'eget massa tempor convallis nulla', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 574.00, 7, 0),
(28, 'luctus et ultrices posuere cubilia', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 724.00, 10, 1),
(29, 'neque', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.', 894.00, 7, 0),
(30, 'quisque ut erat curabitur', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', 784.00, 6, 1),
(31, 'enim', 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.', 247.00, 2, 1),
(32, 'mauris non ligula pellentesque ultrices', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 341.00, 9, 0),
(33, 'eget nunc donec quis', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 371.00, 5, 0),
(34, 'ultrices aliquet', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 484.00, 8, 0),
(35, 'aliquam quis', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 519.00, 3, 1),
(36, 'turpis enim blandit mi', 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', 607.00, 5, 1),
(37, 'est congue', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 220.00, 10, 0),
(38, 'eros suspendisse accumsan tortor quis', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', 576.00, 5, 1),
(39, 'etiam pretium iaculis justo in', 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 240.00, 3, 0),
(40, 'venenatis lacinia aenean sit', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.', 703.00, 9, 0),
(41, 'enim in tempor turpis nec', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 352.00, 8, 1),
(42, 'fusce', 'Nulla tellus. In sagittis dui vel nisl.', 532.00, 9, 1),
(43, 'turpis integer aliquet massa id', 'Phasellus in felis. Donec semper sapien a libero.', 338.00, 9, 1),
(44, 'viverra', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 493.00, 8, 1),
(45, 'suscipit ligula in lacus curabitur', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 682.00, 2, 0),
(46, 'imperdiet', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', 376.00, 2, 1),
(47, 'luctus', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 580.00, 4, 0),
(48, 'duis bibendum morbi', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 338.00, 2, 1),
(49, 'pede ac diam', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.', 432.00, 10, 0),
(50, 'egestas', 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', 747.00, 7, 1),
(51, 'nunc nisl duis bibendum', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 205.00, 3, 0),
(52, 'montes', 'Nullam molestie nibh in lectus. Pellentesque at nulla.', 931.00, 3, 1),
(53, 'duis bibendum morbi', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', 950.00, 10, 0),
(54, 'rhoncus mauris', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', 819.00, 9, 0),
(55, 'tincidunt eu felis', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 247.00, 7, 1),
(56, 'luctus et ultrices posuere', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 465.00, 8, 1),
(57, 'vivamus vel nulla', 'Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.', 570.00, 9, 1),
(58, 'nunc commodo', 'Nullam molestie nibh in lectus. Pellentesque at nulla.', 916.00, 8, 0),
(59, 'leo maecenas', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', 812.00, 5, 0),
(60, 'molestie sed justo pellentesque viverra', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', 968.00, 5, 1),
(61, 'vehicula consequat', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 547.00, 4, 1),
(62, 'quis orci nullam molestie', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 235.00, 1, 1),
(63, 'quis libero nullam sit', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', 367.00, 2, 1),
(64, 'convallis eget eleifend luctus ultricies', 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.', 549.00, 5, 1),
(65, 'quam sapien varius ut', 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', 303.00, 3, 1),
(66, 'dui', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', 284.00, 7, 0),
(67, 'accumsan tortor quis turpis sed', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.', 831.00, 7, 1),
(68, 'quisque', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', 963.00, 8, 1),
(69, 'pretium', 'Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 506.00, 3, 0),
(70, 'posuere', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.', 859.00, 4, 0),
(71, 'amet consectetuer adipiscing elit proin', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', 461.00, 7, 1),
(72, 'morbi non quam nec dui', 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 603.00, 7, 1),
(73, 'lacus morbi quis tortor id', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.', 948.00, 4, 0),
(74, 'ut rhoncus aliquet pulvinar', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.', 632.00, 4, 0),
(75, 'est et tempus semper', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 203.00, 7, 1),
(76, 'blandit nam nulla integer', 'Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 803.00, 10, 1),
(77, 'consequat nulla nisl', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 637.00, 6, 0),
(78, 'mi pede malesuada', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 356.00, 8, 1),
(79, 'elementum', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 431.00, 8, 1),
(80, 'mauris laoreet', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 788.00, 2, 1),
(81, 'vestibulum ante', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 626.00, 9, 1),
(82, 'dictumst aliquam augue', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.', 562.00, 9, 1),
(83, 'varius nulla facilisi cras', 'Integer a nibh. In quis justo.', 475.00, 9, 0),
(84, 'in imperdiet et commodo vulputate', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 364.00, 2, 0),
(85, 'hac habitasse platea dictumst etiam', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 577.00, 8, 1),
(86, 'duis consequat', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 410.00, 3, 0),
(87, 'risus semper porta volutpat quam', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 209.00, 4, 1),
(88, 'integer ac', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 594.00, 3, 0),
(89, 'interdum mauris non ligula pellentesque', 'Sed accumsan felis. Ut at dolor quis odio consequat varius.', 297.00, 1, 1),
(90, 'ut at dolor', 'Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo.', 227.00, 8, 1),
(91, 'morbi ut odio', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 875.00, 4, 1),
(92, 'nulla ac enim', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.', 567.00, 2, 0),
(93, 'morbi quis tortor id nulla', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 912.00, 7, 1),
(94, 'lectus suspendisse potenti in eleifend', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 624.00, 10, 1),
(95, 'in leo maecenas pulvinar lobortis', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 366.00, 9, 0),
(96, 'faucibus cursus', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 974.00, 10, 0),
(97, 'sagittis', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 754.00, 2, 1),
(98, 'nec condimentum', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 364.00, 3, 0),
(99, 'blandit lacinia erat vestibulum', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 249.00, 5, 1),
(100, 'sapien in sapien', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', 874.00, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `book_author`
--

CREATE TABLE IF NOT EXISTS `book_author` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(10) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=120 ;

--
-- Dumping data for table `book_author`
--

INSERT INTO `book_author` (`id`, `book_id`, `author_id`) VALUES
(1, 12, 18),
(2, 52, 20),
(3, 76, 1),
(4, 82, 13),
(5, 31, 29),
(6, 94, 15),
(7, 60, 3),
(8, 38, 4),
(9, 18, 27),
(10, 26, 30),
(11, 2, 17),
(12, 82, 12),
(13, 87, 23),
(14, 8, 19),
(15, 61, 21),
(16, 90, 6),
(20, 24, 22),
(21, 43, 27),
(22, 87, 11),
(23, 5, 3),
(24, 18, 19),
(25, 53, 20),
(26, 1, 20),
(27, 11, 1),
(28, 45, 8),
(29, 14, 25),
(30, 17, 25),
(31, 38, 2),
(32, 42, 4),
(33, 56, 11),
(34, 38, 13),
(35, 1, 10),
(36, 70, 23),
(37, 16, 28),
(38, 71, 12),
(39, 25, 19),
(40, 93, 14),
(41, 43, 5),
(42, 34, 24),
(43, 68, 18),
(44, 5, 19),
(45, 17, 15),
(46, 91, 23),
(47, 54, 30),
(48, 83, 26),
(49, 40, 24),
(50, 10, 13),
(51, 23, 2),
(52, 38, 3),
(53, 24, 26),
(54, 55, 20),
(55, 89, 12),
(56, 86, 11),
(57, 30, 7),
(58, 78, 20),
(59, 62, 12),
(60, 6, 6),
(61, 83, 9),
(62, 30, 5),
(63, 64, 8),
(64, 43, 24),
(65, 80, 20),
(66, 91, 19),
(67, 78, 2),
(68, 100, 3),
(69, 44, 20),
(70, 19, 3),
(71, 99, 26),
(72, 5, 16),
(73, 86, 23),
(74, 99, 4),
(75, 59, 23),
(76, 86, 15),
(77, 22, 12),
(78, 34, 3),
(79, 60, 11),
(80, 96, 12),
(81, 91, 3),
(82, 21, 28),
(83, 100, 17),
(84, 68, 28),
(85, 54, 30),
(86, 67, 10),
(87, 42, 14),
(88, 4, 21),
(89, 57, 3),
(90, 99, 1),
(91, 63, 3),
(92, 53, 10),
(93, 34, 26),
(94, 51, 9),
(95, 33, 7),
(96, 16, 21),
(97, 44, 23),
(98, 18, 14),
(99, 31, 29),
(100, 74, 24),
(101, 94, 21),
(102, 31, 1),
(103, 13, 15),
(104, 11, 10),
(105, 9, 10),
(106, 14, 12),
(107, 45, 26),
(108, 69, 6),
(109, 51, 13),
(110, 44, 24),
(111, 17, 3),
(112, 95, 23),
(113, 29, 10),
(114, 18, 4),
(115, 11, 16),
(116, 39, 10),
(117, 69, 18),
(118, 38, 22),
(119, 50, 5);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created` datetime NOT NULL,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `username`, `email`, `message`, `created`, `ip`) VALUES
(1, 'jessiee', 'jessie@bb.com', 'beach!', '2016-03-15 20:37:26', '127.0.0.1')

-- --------------------------------------------------------

--
-- Table structure for table `style`
--

CREATE TABLE IF NOT EXISTS `style` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `style`
--

INSERT INTO `style` (`id`, `name`) VALUES
(1, 'in'),
(2, 'morbi'),
(3, 'dictumst'),
(4, 'est'),
(5, 'odio'),
(6, 'luctus'),
(7, 'orci'),
(8, 'felis'),
(9, 'orci'),
(10, 'proin'),
(11, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'admin@mvc.com', '1d43a95f76d1da7b3c39597ecf00121e'),
(2, 'blabla@mvc.com', '2e287147ae28f561af52fe3f26267bd8');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`style_id`) REFERENCES `style` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
