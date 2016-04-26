/*
Navicat MySQL Data Transfer

Source Server         : lh
Source Server Version : 50546
Source Host           : 172.30.6.104:3306
Source Database       : longhien

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2016-03-07 17:42:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for advertising
-- ----------------------------
DROP TABLE IF EXISTS `advertising`;
CREATE TABLE `advertising` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `type` enum('image','video','flash') DEFAULT 'image',
  `position` varchar(50) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `params` text,
  `order` int(10) DEFAULT '0',
  `created` int(10) DEFAULT '0',
  `published` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advertising
-- ----------------------------
INSERT INTO `advertising` VALUES ('2', 'Banner Left 1', 'banner', 'image', 'left', '/uploads/photos/14-01-2015-CV-06-12-20-PM54b6a374cf0fa.jpg', '', 'banner', '1', '1', '1');
INSERT INTO `advertising` VALUES ('3', 'Banner Left 2', '', 'image', 'left', 'uploads/photos/ads2.jpg', '', '', '0', '0', '1');
INSERT INTO `advertising` VALUES ('4', 'Banner Right', 'Banner Flash', 'flash', 'right', 'uploads/flash/banner187x400.swf', 'http://tennisxuxu.net', 'banner Flash', '1', '1', '1');
INSERT INTO `advertising` VALUES ('5', 'Slide1', '', 'image', 'slide', '/uploads/photos/07-03-2016-CV-10-32-39-AM56dd58c7dd94e.png', '', '', '0', '0', '0');
INSERT INTO `advertising` VALUES ('6', 'Slide2', 'banner', 'image', 'slide', '/uploads/photos/07-03-2016-CV-10-32-39-AM56dd58c7dd94e.png', '', '', '0', '0', '1');
INSERT INTO `advertising` VALUES ('7', 'Slide3', '', 'image', 'slide', '/uploads/photos/07-03-2016-CV-10-32-39-AM56dd58c7dd94e.png', '', '', '0', '0', '0');
INSERT INTO `advertising` VALUES ('8', 'Slide4', '', 'image', 'slide', '/uploads/photos/07-03-2016-CV-10-32-39-AM56dd58c7dd94e.png', '', '', '0', '0', '0');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) DEFAULT NULL,
  `images` text,
  `sectionid` int(11) DEFAULT '0',
  `description` text NOT NULL,
  `published` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `access` tinyint(3) DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '0', 'MÁY MAY 1 KIM', 'may-may-1-kim', null, '3', 'MÁY MAY 1 KIM', '1', '1', '0', null);
INSERT INTO `categories` VALUES ('2', '0', 'MÁY MAY 2 KIM', 'may-may-2-kim', null, '3', 'MÁY MAY 2 KIM', '1', '2', '0', null);
INSERT INTO `categories` VALUES ('3', '0', 'MÁY VẮT SỔ', 'may-vat-so', null, '3', 'MÁY VẮT SỔ', '1', '3', '0', null);
INSERT INTO `categories` VALUES ('4', '0', 'MÁY VIỀN', 'may-vien', null, '3', 'MÁY VIỀN', '1', '4', '0', null);
INSERT INTO `categories` VALUES ('5', '0', 'MÁY NHIỀU KIM', 'may-nhieu-kim', null, '3', 'MÁY NHIỀU KIM', '1', '4', '0', null);
INSERT INTO `categories` VALUES ('6', '0', 'MÁY ĐÍNH NÚT', 'may-dinh-nut', null, '3', 'MÁY ĐÍNH NÚT', '1', '7', '0', null);
INSERT INTO `categories` VALUES ('7', '0', 'MÁY THÙA KHUY', 'may-thua-khuy', null, '3', 'MÁY THÙA KHUY', '1', '9', '0', null);
INSERT INTO `categories` VALUES ('8', '0', 'MÁY ĐÍNH BỌ ĐIỆN TỬ', 'may-dinh-bo-dien-tu', null, '3', 'MÁY ĐÍNH BỌ ĐIỆN TỬ', '1', '10', '0', null);
INSERT INTO `categories` VALUES ('9', '0', 'MÁY LẬP TRÌNH', 'may-lap-trinh', null, '3', 'MÁY LẬP TRÌNH', '1', '11', '0', null);
INSERT INTO `categories` VALUES ('10', '0', 'MÁY BƯỚC', 'may-buoc', null, '3', 'MÁY BƯỚC', '0', '11', '0', null);

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `introtext` mediumtext NOT NULL,
  `fulltext` text NOT NULL,
  `home` tinyint(1) DEFAULT '0',
  `sectionid` int(11) DEFAULT '0',
  `catid` int(11) DEFAULT '0',
  `created` int(10) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `modified` int(10) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `published` tinyint(1) DEFAULT '0',
  `public_time` int(10) DEFAULT '0',
  `images` text,
  `urls` text,
  `ordering` int(11) DEFAULT '0',
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `hits` int(11) DEFAULT '0',
  `params` text,
  `access` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES ('1', 'Dịch Vụ 1', 'gioi-thieu-shop-tennis-xu-xu', '<p class=\"MsoNormal\" style=\"margin: 6pt 0in 12pt;\"></p><p class=\"MsoNormal\" style=\"font-family: \'Times New Roman\'; font-size: medium; margin: 6pt 0in 12pt;\"><strong style=\"font-size: 10pt; text-align: justify;\"><span style=\"font-size: 10pt; font-family: Arial, sans-serif; font-style: italic;\">Tennis&nbsp;</span></strong><span style=\"font-size: 10pt; text-align: justify; font-family: Arial, sans-serif;\"><span style=\"font-weight: bold; font-style: italic;\">Xuxu Shop</span>&nbsp;chuyên kinh doanh sỉ và lẻ các mặt hàng thời trang và phụ kiện thể thao với mức giá cạnh tranh nhất. Chỉ với một cú click chuột hoặc một cuộc điện thoại, Quý khách đã có thể sở hữu ngay những sản phẩm thời trang thể thao sành điệu và năng động.</span></p><p></p>', '<p class=\"MsoNormal\" style=\"margin: 6pt 0in 12pt;\"></p><p class=\"MsoNormal\" style=\"font-size: 10pt; margin-bottom: 0.0001pt;\"><strong style=\"text-align: justify; font-size: 10pt;\"><span style=\"font-size: 10pt; font-family: Arial, sans-serif; font-style: italic;\">Tennis </span></strong><span style=\"text-align: justify; font-size: 10pt; font-family: Arial, sans-serif;\"><span style=\"font-weight: bold; font-style: italic;\">Xuxu Shop</span> chuyên kinh\r\ndoanh sỉ và lẻ các mặt hàng thời trang và phụ kiện thể thao với mức giá cạnh\r\ntranh nhất. Chỉ với một cú click chuột hoặc một cuộc điện thoại, Quý khách đã\r\ncó thể sở hữu ngay những sản phẩm thời trang thể thao sành điệu và năng động.</span></p><p style=\"font-size: 10pt; font-style: normal; margin: 0in 0in 0.0001pt; text-align: justify;\"><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"font-size: 10pt; margin: 0in 0in 0.0001pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; font-family: Arial, sans-serif; font-style: italic;\">Tennis </span></strong><span style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><span style=\"font-weight: bold; font-style: italic;\">Xuxu Shop</span> cam kết\r\nmang đến những sản phẩm và dịch vụ tốt nhất cho Quý khách hàng với phương châm\r\n“Uy tín và Chất lượng”.<br><o:p></o:p></span></p>\r\n\r\n<p style=\"font-size: 10pt; margin: 0in 0in 0.0001pt; text-align: justify;\"><span style=\"font-size: 10pt; font-family: Arial, sans-serif;\">Giá cả sản phẩm luôn\r\nhợp lý và thường xuyên được cập nhật chính xác trên website <span style=\"font-style: italic;\">tennisxuxu.net</span> va <span style=\"font-style: italic;\">tennisxuxu.com</span><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"font-style: normal; margin-bottom: 0.0001pt;\"><span style=\"font-family: Arial, sans-serif;\"><span style=\"font-weight: bold; font-size: large; color: rgb(255, 102, 0);\">Dịch vụ </span><span style=\"font-size: 10pt;\"><o:p></o:p></span></span></p>\r\n\r\n<p style=\"font-size: 10pt; margin: 0in 0in 0.0001pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; font-family: Arial, sans-serif; font-style: italic;\">Tennis </span></strong><span style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><span style=\"font-weight: bold; font-style: italic;\">Xuxu Shop</span> còn cung\r\ncấp dịch vụ đan vợt tennis hiện đại nhất, độ<span style=\"font-style: normal; color: rgb(51, 51, 51); background-color: rgb(250, 250, 250); background-position: initial initial; background-repeat: initial initial;\"> chính xác và ổn định từ bộ phận kéo lực hay bộ phân điện\r\ntử và cơ căng lực và các kẹp dây (Clamp) chuẩn và hạn chế tối đa những sai số\r\nvề lực căng dây.<br></span> <o:p></o:p></span></p>\r\n\r\n<p style=\"font-size: 10pt; margin: 0in 0in 0.0001pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; font-family: Arial, sans-serif; font-style: italic;\">Tennis </span></strong><span style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><span style=\"font-weight: bold; font-style: italic;\">Xuxu Shop</span> cam kết sẽ\r\nluôn mang đến sự hài lòng cho những <span style=\"font-style: normal; color: rgb(51, 51, 51); background-color: rgb(250, 250, 250); background-position: initial initial; background-repeat: initial initial;\">người\r\nchơi Tennis chuyên nghiệp có thể sở hữu những cây vợt được căng dây đúng quy\r\ncách và lực căng chính xác theo đúng nhu cầu của từng người chơi.<br><br></span></span><span style=\"font-family: Arial, sans-serif; font-size: 10pt;\">Mọi thắc mắc và góp ý\r\nvui lòng liên hệ:</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"font-size: 10pt; margin-bottom: 0.0001pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; font-family: Arial, sans-serif; font-style: italic;\">Tennis XuXu Shop</span><span style=\"font-style: normal; font-size: 10pt; font-family: Arial, sans-serif; font-weight: normal;\"> – </span><span style=\"font-size: 10pt; font-family: Arial, sans-serif; font-weight: normal; font-style: italic;\">103 Đặng Văn Ngữ, P.14, Q. Phú Nhuận, Tp.HCM (Xem bản\r\nđồ)<br></span></strong><strong style=\"font-size: 10pt;\"><span style=\"font-size: 10pt; font-family: Arial, sans-serif; font-weight: normal;\"><span style=\"font-style: italic;\">Tel: 0989 233 233 (Mr. Đầy) – 0988 767 767 (Ms. Thu)</span></span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"font-size: 10pt; font-style: normal; margin-bottom: 0.0001pt; text-align: justify;\"><strong><span style=\"font-size:10.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;font-weight:normal;mso-bidi-font-weight:bold;mso-bidi-font-style:\r\nitalic\">Trân trọng<o:p></o:p></span></strong></p><p></p>', '1', '4', null, '1353905254', '0', '1354103702', '0', '1', '0', 'uploads/photos/Chrysanthemum.jpg', '', '0', '', '', '', '0', '{\"file\":{\"name\":\"Chrysanthemum.jpg\",\"type\":\"image\\/jpeg\",\"size\":879394,\"width\":1024,\"height\":768,\"extension\":\"jpg\"}}', '0');
INSERT INTO `content` VALUES ('2', 'Dịch Vụ 2', 'huong-dan', 'Em Ipsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book. ', 'Em Ipsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book. Em Ipsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book. Em Ipsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book. Em Ipsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book. Em Ipsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book. ', '0', '4', '0', '1353906254', '0', '1354180183', '0', '0', '0', '', '', '0', '', '', '', '0', '', '0');
INSERT INTO `content` VALUES ('3', 'Giảm giá - Khuyến mãi 1', 'dat-hang-thanh-toan', '<p class=\"MsoNormal\" style=\"font-size: 10pt; margin-bottom: 0.0001pt;\"><span style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><span style=\"font-weight: bold;\">Phương thức thanh toán</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"font-size: 10pt; margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-size: 10pt; font-family: Arial, sans-serif;\">Quý khách mua hàng tại tennisxuxu.net và tennisxuxu.com có thể thanh toán bằng các hình thức dưới đây:<o:p></o:p></span></p><p class=\"MsoListParagraph\" style=\"font-size: 10pt; margin: 0in 0in 0.0001pt;\"><strong><span style=\"font-size: 10pt; font-family: Arial, sans-serif;\">THANH TOÁN TRỰC TIẾP BẰNG TIỀN MẶT:</span></strong></p>', '<p class=\"MsoNormal\" style=\"font-size: 10pt; font-family: Arial, Verdana; margin-bottom: 0.0001pt;\"><span style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><span style=\"font-weight: bold;\">Phương thức thanh toán</span><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"font-size: 10pt; font-family: Arial, Verdana; font-weight: normal; margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Quý\r\nkhách mua hàng tại tennisxuxu.net và tennisxuxu.com có thể thanh toán bằng các\r\nhình thức dưới đây:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"font-size: 10pt; font-family: Arial, Verdana; font-weight: normal; margin: 0in 0in 0.0001pt;\"><strong><span style=\"font-size:10.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;\">THANH TOÁN TRỰC TIẾP BẰNG TIỀN MẶT:</span></strong><strong><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-weight:normal;\r\nmso-bidi-font-weight:bold\"><o:p></o:p></span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"font-size: 10pt; font-family: Arial, Verdana; font-weight: normal; margin-bottom: 0.0001pt;\"><strong><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-bidi-font-style:italic\">Thanh toán trực tiếp tại Cửa hàng:</span></strong><strong><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-weight:normal;\r\nmso-bidi-font-weight:bold;mso-bidi-font-style:italic\"><o:p></o:p></span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><strong style=\"font-weight: normal; font-size: 10pt; font-family: Arial, Verdana;\"><span style=\"font-size:10.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-bidi-font-style:italic\">Tennis </span></strong><span style=\"font-weight: normal; font-size: 10pt; font-family: Arial, sans-serif;\">Xuxu Shop </span><span style=\"font-family: Arial; font-size: small;\"><strong>– 103 Đặng Văn\r\nNgữ, P.14, Q. Phú Nhuận, Tp.HCM (Xem bản đồ)</strong><strong><o:p></o:p></strong></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><strong><span style=\"font-family: Arial; font-size: small;\">Tel: 0989 233 233 (Mr. Đầy) –\r\n0988 767 767 (Ms. Thu)</span></strong><strong style=\"font-weight: normal; font-size: 10pt; font-family: Arial, Verdana;\"><span style=\"font-size:10.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-weight:normal;mso-bidi-font-weight:bold;\r\nmso-bidi-font-style:italic\"><o:p></o:p></span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"font-size: 10pt; font-family: Arial, Verdana; font-weight: normal; margin-bottom: 0.0001pt;\"><strong><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-bidi-font-style:italic\">Thanh toán tại địa chỉ quý khách yêu cầu:</span></strong><strong><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-weight:normal;\r\nmso-bidi-font-weight:bold;mso-bidi-font-style:italic\"><o:p></o:p></span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"font-size: 10pt; font-family: Arial, Verdana; font-weight: normal; margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Với\r\nnhững hợp đồng lớn, chúng tôi chấp nhận phương thức thanh toán tại nơi quý\r\nkhách yêu cầu trên địa bàn các quận nội thành TP. Hồ Chí Minh.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"font-size: 10pt; font-family: Arial, Verdana; font-weight: normal; margin-bottom: 0.0001pt;\"><strong><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">THANH\r\nTOÁN QUA NGÂN HÀNG HOẶC ATM</span></strong><span style=\"font-size:10.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"font-size: 10pt; font-family: Arial, Verdana; font-weight: normal; margin: 0in 0in 0.0001pt; text-align: justify;\"><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Quý khách có thể\r\nchuyển khoản vào tài khoản của Tennis Xuxu Shop tại các ngân hàng hoặc qua máy\r\nATM, xin vui lòng chuyển vào một trong những tài khoản sau:<o:p></o:p></span></p>\r\n\r\n<p style=\"font-size: 10pt; font-family: Arial, Verdana; font-weight: normal; margin: 0in 0in 0.0001pt; text-align: justify;\"><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Chủ tài khoản:<o:p></o:p></span></p>\r\n\r\n<p style=\"font-size: 10pt; font-family: Arial, Verdana; font-weight: normal; margin: 0in 0in 0.0001pt; text-align: justify;\"><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Số tài khoản:<o:p></o:p></span></p>\r\n\r\n<p style=\"font-size: 10pt; font-family: Arial, Verdana; font-weight: normal; margin: 0in 0in 0.0001pt; text-align: justify;\"><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ngân hàng<o:p></o:p></span></p>\r\n\r\n<p style=\"font-size: 10pt; font-family: Arial, Verdana; font-weight: normal; margin: 0in 0in 0.0001pt; text-align: justify;\"><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sau khi chuyển tiền,\r\nkhách hàng vui lòng thông báo cho Tennis Xuxu Shop tên ngân hàng, tên người\r\nchuyển tiền và số tiền đã chuyển càng sớm càng tốt để chúng tôi tiến hành kiểm\r\ntra và giao hàng sớm nhất có thể cho Quý khách<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"font-size: 10pt; font-family: Arial, Verdana; font-weight: normal; margin-bottom: 0.0001pt;\"><strong><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">YÊU\r\nCẦU KHÁC:</span></strong><strong><span style=\"font-size:10.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;font-weight:normal;mso-bidi-font-weight:bold\"><o:p></o:p></span></strong></p>\r\n\r\n<p style=\"font-size: 10pt; font-family: Arial, Verdana; font-weight: normal; margin: 0in 0in 0.0001pt; text-align: justify;\"><span style=\"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Quý khách có bất kỳ\r\nyêu cầu gì khác xin vui lòng liên hệ với chúng tôi qua số Điện thoại 0989 233\r\n233, hoặc có thể trao đổi qua Yahoo Messenger nếu trên website của chúng tôi có\r\ntín hiệu đang tư vấn trực tuyến. Chúng tôi sẵn sàng phục vụ quý khách 24/24h\r\ntất cả các ngày trong tuần.<o:p></o:p></span></p>', '1', '6', '0', '1353907254', '0', '1354338148', '0', '1', '0', '', '', '0', '', '', '', '0', '', '0');
INSERT INTO `content` VALUES ('4', 'Giảm giá - Khuyến mãi 2', 'serena-williams-tin-minh-la-so-1', '<span style=\"color: rgb(95, 95, 95); background-color: rgb(244, 245, 247); font-family: Arial; font-size: small;\">Với sự trở lại thần kỳ trong năm 2012, Serena Williams tin mình đang là tay vợt số 1 thế giới ở thời điểm này, chỉ có bảng hạng WTA là không phản ánh điều đó.</span>', '<div class=\"short_intro\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(95, 95, 95); background-color: rgb(244, 245, 247);\"><span style=\"font-size: small; font-family: Arial;\">Với sự trở lại thần kỳ trong năm 2012, Serena Williams tin mình đang là tay vợt số 1 thế giới ở thời điểm này, chỉ có bảng hạng WTA là không phản ánh điều đó.</span></div><div class=\"fck_detail\" style=\"border: 0px; margin: 0px; padding: 10px 0px 0px; width: 502px; float: left; overflow: hidden; background-color: rgb(244, 245, 247);\"><p align=\"center\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\"><img alt=\"1-jpg-1353846344-1353846460_500x0.jpg\" src=\"http://l.f1.img.vnexpress.net/2012/11/25/1-jpg-1353846344-1353846460_500x0.jpg\" width=\"500\" style=\"border: 0px; margin: 0px; padding: 0px; color: transparent; vertical-align: middle;\"></span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Serena vô đối. Đấy là những từ được dành để nói về cô em nhà Williams bởi nửa sau của năm 2012, tất cả khó mà tìm được cây vợt đánh bóng tốt hơn, mạnh hơn và chính xác hơn cây vợt người Mỹ sau khi cô giành chức vô địch ở trận chung kết WTA Championships vừa qua tại Istanbul, Thổ Nhĩ Kỳ, với chiến thắng 6-4, 6-3 trước Maria Sharapova.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Thật khó tin là từ khoảnh khắc tồi tệ nhất trong mùa giải 2012 với đỉnh cao sự nghiệp của Serena chỉ cách nhau 38 ngày. Sau khi phải dừng bước ở vòng 1 giải Pháp mở rộng trước cây vợt xếp hạng 111 thế giới là Virginie Razzano hồi tháng 5, cây vợt 31 tuổi người Mỹ thất vọng đến nỗi cô đã không ra khỏi nhà trong 2 ngày liền.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Chỉ trong hơn 1 tháng sau, Serena đã cầm trên tay danh hiệu Wimbledon thứ 5 và cũng là Grand Slam thứ 14 trong sự nghiệp của cô. Đương nhiên, đó là một chiến thắng mà cô không nghĩ nó sẽ xảy ra sau khi người ta phát hiện cô bị nghẽn mạch phổi và gần như có thể chấm dứt sự nghiệp của cô.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Bất ngờ hơn cả là Wimbledon giống như một chất xúc tác cho 5 tháng còn lại của mùa giải bởi Serena đã đoạt tất cả những danh hiệu ở các giải lớn mà cô góp mặt, trong đó có 2 HC vàng Olympic ở nội dung đánh đơn và đánh đôi với cô chị Venus, giải Mỹ mở rộng và giải WTA Championships.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Nhiều người thì cho rằng, thất bại ở giải Pháp chính là bước ngoặt quyết định của Serena nhưng cô gái người Mỹ thì lại đưa ra một lời giải thích hoàn toàn khác. \"Tôi nghĩ bước ngoặt quan trọng của tôi đến vào tháng 4,\" Serena nói. \"Khi đó, tôi dã quyết định tôi muốn được chơi tốt hơn. Rồi tôi thua ở Paris và thất vọng đến mức tôi đã không ra khỏi nhà trong 2 ngày liền.\"</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Nỗi hoài nghi về bản thân một lần nữa xuất hiện trở lại với Serena ở trận chung kết Wimbledon, trước đám đông khán giả ngồi kín sân Centre Court. Cô đã để cây vợt người Ba Lan là Agnieszka Radwanska gỡ hòa 1-1 sau khi thắng chóng vánh ở set đầu tiên, trước lúc cô dẫn lại 2-1 ở set quyết định.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Gần đây, Li Na có so sánh những trận đấu với Serena như là thi đấu với một bức tường vì bóng luôn bật lại chứ không bao giờ vượt qua được. Còn cô em nhà Williams thì thừa nhận rằng, trên sân cỏ cô mạnh mẽ như vậy, tất cả chỉ là để che giấu nỗi lo lắng ở bên trong con người cô. “Tôi đã cố gắng che giấu mọi cảm xúc của mình bởi đôi lúc là nỗi sợ hãi, đôi lúc đó là động lực giúp tôi mạnh mẽ hơn.\"</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Động lực đó giúp cây vợt 31 tuổi người Mỹ vượt qua được những giai đoạn khó khăn nhất trong sự nghiệp, từ chấn thương cho đến khoảnh khắc cô phát hiện ra mình bị nghẽn mạch phổi. Sau 2 năm xa rời cây vợt, cuối cùng thì Serena cũng trở lại thi đấu ở Eastbourne vào tháng 6/2011.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Bỏ lại sau lưng những chấn thương, ốm đau để lần lượt giành Wimledon, HC vàng Olympic ở nội dung đánh đơn và đánh đôi, US Open và kết thúc năm 2012 bằng danh hiệu WTA Championships, chưa kể cô còn vô địch ở Madrid và Stanford, thật ngạc nhiên là trên bảng xếp hạng WTA, Serena chỉ có một vị trí khiêm tốn là thứ 3.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Đành rằng Serena tham dự các giải đấu ít hơn hai đối thủ chính của cô nhưng số 1 thế giới Azarenka (Australian Open) và số 2 Sharapova (Roland Garros) chỉ giành được vỏn vẹn một Grand Slam trong năm. Việc duy trì sự ổn định trong một thời gian đã giúp họ giành được những danh hiệu ít có tính cạnh tranh hơn nhưng điều đó không có nghĩa họ là xuất sắc nhất. Tất cả biết điều đó, Serena biết điều đó và họ biết cây vợt số 1 thế giới là cây vợt chỉ đứng thứ 3 trên bảng xếp hạng WTA.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Việc Serena giành lại vị trí số 1 thế giới trong năm 2013 có lẽ chỉ còn là vấn đề thời gian nhưng với cây vợt người Mỹ, chiến thắng tại các giải Grand Slam quan trọng nhiều hơn bởi tại đó, cô sẽ thấy mình vượt qua một thử thách nữa trong đời.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px; text-align: right;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-size: small; font-family: Arial;\">Anh Hào</span></p></div>', '0', '6', '0', '1353908254', '0', '1354638118', '0', '1', '0', '/uploads/photos/04-12-2012-CV-05-21-58-PM50be232632206.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('5', 'Giảm giá - Khuyến mãi 3', 'djokovic-thoat-hiem-trong-duong-to-ke-toc', '<span style=\"color: rgb(95, 95, 95); background-color: rgb(244, 245, 247); font-family: Arial; font-size: small;\">Trận bán kết 1 được dự đoán dễ dàng lại diễn ra rất khó khăn với Djokovic và anh phải lội ngược dòng trước Del Potro để vào chung kết.</span>', '<div style=\"text-align: justify;\"><p class=\"Normal\" style=\"text-align: left; border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; background-color: rgb(244, 245, 247);\">Del Potro bước vào trận bán kết 1 với Djokovic đêm 11/11 với tư cách là tay vợt chiếu dưới. nhưng anh suýt làm nên điều thần kỳ là loại tay vợt số 1 thế giới để lọt vào chung kết World Tour Finals.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; text-align: start; background-color: rgb(244, 245, 247);\">Del Potro là người chiến thắng trong một set rưỡi đầu tiên của trận đấu, trước khi bản lĩnh của Djokovic được tung ra đúng lúc, giúp anh thoát hiểm ngoạn mục ở thời khắc đứng trên bờ vực của thất bại.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; text-align: start; background-color: rgb(244, 245, 247);\">Del Potro khởi đầu rất ấn tượng. Anh thi đấu ngang ngửa với Djokovic, trong khi tay vợt số 1 thế giới tiếp tục tái diễn khả năng nhập cuộc chậm.</p><p class=\"Normal\" style=\"text-align: center; border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; background-color: rgb(244, 245, 247);\"><img src=\"http://l.f1.img.vnexpress.net/2012/11/12/1-jpg-1352657838-1352657863_500x0.jpg\" alt=\"1-jpg-1352657838-1352657863_500x0.jpg\" style=\"text-align: justify; font-family: Arial, Verdana; font-size: 10pt;\"></p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; text-align: start; background-color: rgb(244, 245, 247);\">Bước ngoặt đầu tiên đã đến ở game thứ 9, khi Djokovic giao bóng và có nhiều pha xử lý thiếu chính xác dẫn đến bị mất điểm. Del Potro đã có 2 cơ hội ăn điểm break-point và tận dụng thành công cơ hội thứ 2. Thắng tiếp games thứ 10, tay vợt người Argentina thắng set đầu 6-4.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; text-align: start; background-color: rgb(244, 245, 247);\">Tâm trạng hưng phấn giúp Del Potro chơi rất hay ở đầu set 2. Anh suýt bẻ break của Djokovic ngay ở game đầu tiên ghi điểm liên tiếp ở 3 pha bóng và dẫn trước 40-15. Djokovic phải lao vào chiến đấu rất vất vả ở game đấu này mới bảo vệ được điểm.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; text-align: start; background-color: rgb(244, 245, 247);\">Del Potro tiếp tục tấn công mạnh ở game thứ 3, khi quyền giao bóng lại thuộc về Djokovic. Tái hiện tình thế dẫn trước 40-15, lần này Del Potro đã tung ra pha ép trái đánh phải chính xác, hạ gục Djokovic.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; text-align: start; background-color: rgb(244, 245, 247);\">Dẫn trước 2-1, tưởng chừng Del Potro chỉ cần giữ vững thành trì trong các game giao bóng còn lại là đủ để giành chiến thắng, thì Djokovic đã vùng lên kịp thời. Anh chật vật đòi break thành công ngay ở game thứ 4 trong sự chưng hửng của đối thủ.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; text-align: start; background-color: rgb(244, 245, 247);\">Kể từ đây trận đấu hoàn toàn thuộc về Djokovic. Anh bẻ break thứ 2 của Del Potro ở game thứ 8 và dẫn 6-3 ở set 2. Sang set cuối, Djokovic còn thắng thần tốc hơn, anh ghi điểm một lèo để kết thúc trận đấu với tỷ số 4-6, 6-3, 6-2.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; text-align: start; background-color: rgb(244, 245, 247);\">Game thắng bản lề ở set đấu thứ 2 đã giúp tay vợt số 1 thế giới thoát khỏi lối chơi co cụm và vụng về. Ở hai set cuối, Djokovic càng chơi càng linh hoạt, tinh quái và chính xác. Sự lột xác này khiến Del Potro vô cùng bối rối và không thể chống đỡ.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; text-align: start; background-color: rgb(244, 245, 247);\">Thắng trận này, Djokovic giành vé vào chung kết và chờ kết quả trận bán kết 2 giữa Murray và Federer để xác định đối thủ tiếp theo.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; background-color: rgb(244, 245, 247); text-align: right;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">Anh Hoàng</strong></p></div>', '0', '6', '0', '1353909037', '0', '1353909037', '0', '1', '0', 'uploads/photos/1-jpg-1352657838-1352657863_500x0.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('6', 'Đối Tác 1', 'federer-dai-thang-murray-de-tai-dau-djokovic', '<span style=\"color: rgb(95, 95, 95); background-color: rgb(244, 245, 247); font-size: small; font-family: Arial;\">Vinh quang thuộc về Federer trong lần tái đấu thứ 3 năm 2012 với Murray tại London, cùng đó là tấm vé vào chung kết World Tour Finals.</span>', '<p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; background-color: rgb(244, 245, 247);\">Sau màn ra mắt đầu tiên với trận thắng áp đảo trước Tipsarevic khiến giới truyền thông gọi anh bằng cái tên \"Quý ông hoàn hảo\" kể từ đầu giải, phải đến trận bán kết rạng sáng ngày 12/11 với Andy Murray, Federer mới lấy lại được hình ảnh này trong mắt khán giả.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; background-color: rgb(244, 245, 247);\">Được dự báo đây là thử thách khó khăn nhất của vòng bán kết, trong đó Federer có thể bị hụt chân vì phong độ thất thường, nhưng \"Tàu tốc hành\" lại thắng giòn giã 7-6 (5), 6-2 trước Andy Murray, gieo nỗi sầu lớn cho khán giả London.</p><p class=\"Normal\" style=\"text-align: center; border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; background-color: rgb(244, 245, 247);\"><img src=\"http://l.f1.img.vnexpress.net/2012/11/12/1-1-jpg-1352673173-1352673254_500x0.jpg\" alt=\"1-1-jpg-1352673173-1352673254_500x0.jpg\"></p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; background-color: rgb(244, 245, 247);\">Murray là người khởi đầu may mắn và ấn tượng hơn. Anh ăn điểm break ngay ở đầu set 1 và vượt lên dẫn 4-3, trước khi bị Federer dập tắt niềm vui. Không giống như trận đấu đầy chủ quan và mất tinh thần thi đấu trước Del Potro ở vòng bảng, sau khi bị Murray bẻ break, Federer rất bình tĩnh đòi ngay lại điểm ở game thứ 8. Đây là game đấu mà tay vợt Thụy Sĩ sử dụng lối đánh giao bóng rồi áp lưới hoặc bỏ baseline để di chuyển linh hoạt khắp sân rất thành công.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; background-color: rgb(244, 245, 247);\">Chấm dứt được cơn hưng phấn mới chớm của Murray là một điểm mấu chốt đối với \"Tàu tốc hành\". Sau đó, khi set 1 hòa 6-6 và phải đấu tiebreak, Federer thi đấu rất tỉnh táo, vượt qua thời điểm Murray dẫn điểm trước để rồi kết thúc thành công tiebreak 7-5.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; background-color: rgb(244, 245, 247);\">Sang set 2, Murray đánh mất hẳn khả năng áp đảo Federer. Ở trận đấu này, Murray chỉ có sức mà đánh mất đi sự tinh tế và chính xác trong các pha dứt điểm. Ngược lại, Federer duy trì những đường bóng khó chịu. Nếu trong set đầu khả năng chơi bóng bền của anh không tốt, đặc biệt những đường bóng từ sau vạch baseline tung xuống cuối sân của đối thủ thường không chính xác, thì điều này đã được cải thiện tốt hơn rất nhiều trong set 2.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; background-color: rgb(244, 245, 247);\">Nhờ đó, Federer hai lần ăn điểm break của Murray ở game thứ 3 và thứ 7 set đấu. Anh cũng chứng tỏ sự hơn hẳn trước đối thủ khi giữ được thế chủ động để tung ra những đường tấn công vô cùng đẹp mắt. Không thể chống đỡ, Murray gác vợt rất nhanh với tỷ số thua đậm 2-6 trong set này.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; background-color: rgb(244, 245, 247);\">Với chiến thắng này, Federer trả xong món nợ thua Murray ở bán kết Shanghai Masters và ghi tên mình vào chung kết World Tour Finals, nơi anh sẽ đấu cùng Djokovic.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; background-color: rgb(244, 245, 247);\">Còn Murray tan giấc mộng vô địch giải đấu cuối cùng trong năm để cạnh tranh danh hiệu VĐV xuất sắc của nước Anh 2012.</p><p class=\"Normal\" style=\"border: 0px; font-size: 16px; margin: 1em 0px; padding: 0px; font-family: \'Times New Roman\'; background-color: rgb(244, 245, 247); text-align: right;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">Anh Hoàng</strong></p>', '0', '5', '0', '1353909262', '0', '1353909262', '0', '1', '0', 'uploads/photos/1.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('7', 'Đối Tác 2', 'del-potro-muon-mo-rong-bo-tu', '<span style=\"color: rgb(95, 95, 95); background-color: rgb(244, 245, 247); font-size: small; font-family: Arial;\">ATP World Tour finals đã khép lại một năm khá thành công cho Del Potro và anh lạc quan hướng tới 2013 với mục tiêu biến nhóm Bộ tứ thành Bộ ngũ.</span>', '<div class=\"short_intro\" style=\"border: 0px; margin: 0px; padding: 0px; font-weight: 700; color: rgb(95, 95, 95); background-color: rgb(244, 245, 247);\"><span style=\"font-family: Arial; font-size: small;\">ATP World Tour finals đã khép lại một năm khá thành công cho Del Potro và anh lạc quan hướng tới 2013 với mục tiêu biến nhóm Bộ tứ thành Bộ ngũ.</span></div><div class=\"fck_detail\" style=\"border: 0px; margin: 0px; padding: 10px 0px 0px; width: 502px; float: left; overflow: hidden; background-color: rgb(244, 245, 247);\"><p align=\"center\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\"><img alt=\"2-jpg-1352743541-1352743579_500x0.jpg\" src=\"http://l.f1.img.vnexpress.net/2012/11/13/2-jpg-1352743541-1352743579_500x0.jpg\" width=\"500\" style=\"border: 0px; margin: 0px; padding: 0px; color: transparent; vertical-align: middle;\"></span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Năm 2009, Del Potro được đánh giá là một thách thức với bộ đôi Roger Federer và Rafael Nadal khi anh giành chức vô địch giải Mỹ mở rộng. Nhưng ngay sau đó anh bị chấn thương cổ tay rất nặng, phải phẫu thuật và nghỉ thi đấu trong một thời gian dài.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Trong lúc cây vợt người Argentina biến mất khỏi sân chơi đỉnh cao, bộ đôi Federer và Nadal đã có thêm sự hiện diện của Djokovic và Andy Murray. Nhóm \'Big Four\' này đã thống trị quần vợt thế giới và chia nhau tất cả những danh hiệu Grand Slam trong 3 năm kể từ ngày Del Potro chiến thắng ở Flushing Meadows.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Tuy nhiên, với phong độ như hiện tại, cây vợt người Argentina cho rằng, anh đã sẵn sàng chen chân vào nhóm Big Four. \'\'Đấy sẽ là thách thức của tôi trong năm tới và tôi sẽ cố gắng tranh chấp Grand Slam với họ,\'\' Del Potro nói.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Sau 3 năm nỗ lực tìm lại phong độ vì chấn thương, Del Potro bắt đầu chơi tốt dần lên trong nửa năm cuối. Tại giải Pháp mở rộng, anh thất bại trước Federer ở vòng tứ kết và ở Olympic, một lần nữa anh lại chịu gác vợt trước cây vợt người Thụy Sĩ tại bán kết, trong đó set 3 kết thúc với tỷ số 19-17.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Del Potro cũng đã thắng Djokovic trong trận tranh HC đồng Olympic và tiếp đó, anh phục thù thành công trước Federer ở trận chung kết Swiss Indoors tại Basel. Còn tại ATP World Tour finals, một lần nữa Del Potro lại vượt qua Federer để lọt vào bán kết, đồng thời trở thành cây vợt đầu tiên trong 10 năm qua đánh bại FedEx 2 lần liên tiếp ở giải trong nhà.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px; text-align: right;\"><strong style=\"border: 0px; margin: 0px; padding: 0px; font-family: Arial; font-size: small;\">Anh Hào</strong></p></div>', '0', '5', '0', '1353909473', '0', '1353909473', '0', '1', '0', 'uploads/photos/2.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('8', 'Đối Tác 3', 'djokovic-nguoc-dong-dang-quang-world-tour-finals', '<div class=\"short_intro\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(95, 95, 95); background-color: rgb(244, 245, 247);\"><span style=\"font-family: Arial; font-size: small;\">Trận chung kết trong mơ với Federer cùng những diễn biến hấp dẫn đã khép lại mùa giải 2012 mà người chiến thắng là Vua ngược dòng Novak Djokovic.</span></div><div class=\"relative_news\" style=\"border: 0px; margin: 0px; padding: 0px 0px 10px; width: 502px; float: left; line-height: 16px; background-color: rgb(244, 245, 247);\"><ul class=\"list_dot_3x3\" style=\"border: 0px; margin: 0px; padding: 10px 0px 0px; list-style: none; float: left; width: 502px;\"></ul></div>', '<div class=\"short_intro\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(95, 95, 95); background-color: rgb(244, 245, 247);\"><span style=\"font-size: small; font-family: Arial;\">Trận chung kết trong mơ với Federer cùng những diễn biến hấp dẫn đã khép lại mùa giải 2012 mà người chiến thắng là Vua ngược dòng Novak Djokovic.</span></div><div class=\"relative_news\" style=\"border: 0px; margin: 0px; padding: 0px 0px 10px; width: 502px; float: left; line-height: 16px; background-color: rgb(244, 245, 247);\"><ul class=\"list_dot_3x3\" style=\"border: 0px; margin: 0px; padding: 10px 0px 0px; list-style: none; float: left; width: 502px;\"><li style=\"border: 0px; margin: 0px 0px 5px; padding: 0px 0px 0px 10px; display: inline; list-style-type: none; background-image: url(http://st.f1.thethao.vnexpress.net/c/v12/images/graphics/bg_arrow_tintuclienquan.gif); float: left; overflow: hidden; width: 470px; background-position: 0% 6px; background-repeat: no-repeat no-repeat;\"><span style=\"font-size: small; font-family: Arial;\"><a class=\"txt_gray\" href=\"http://thethao.vnexpress.net/video/video-tennis/djokovic-thang-nguoc-federer-tai-chung-ket-wtf-2386742.html\" title=\"Djokovic thắng ngược Federer tại chung kết WTF\" alt=\"Djokovic thắng ngược Federer tại chung kết WTF\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(102, 102, 102); text-decoration: initial; outline: none;\">Djokovic thắng ngược Federer tại chung kết WTF</a><span class=\"txt_gray\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(102, 102, 102);\"></span></span></li><li style=\"border: 0px; margin: 0px 0px 5px; padding: 0px 0px 0px 10px; display: inline; list-style-type: none; background-image: url(http://st.f1.thethao.vnexpress.net/c/v12/images/graphics/bg_arrow_tintuclienquan.gif); float: left; overflow: hidden; width: 470px; background-position: 0% 6px; background-repeat: no-repeat no-repeat;\"><span style=\"font-size: small; font-family: Arial;\"><a class=\"txt_gray\" href=\"http://thethao.vnexpress.net/video/video-tennis/federer-va-nole-khen-nhau-tai-le-trao-thuong-wtf-2387175.html\" title=\"Federer và Nolé khen nhau tại lễ trao thưởng WTF\" alt=\"Federer và Nolé khen nhau tại lễ trao thưởng WTF\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(102, 102, 102); text-decoration: initial; outline: none;\">Federer và Nolé khen nhau tại lễ trao thưởng WTF</a><span class=\"txt_gray\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(102, 102, 102);\"></span></span></li></ul></div><div class=\"fck_detail\" style=\"border: 0px; margin: 0px; padding: 10px 0px 0px; width: 502px; float: left; overflow: hidden; background-color: rgb(244, 245, 247);\"><p align=\"center\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\"><img alt=\"1-jpg-1352765372-1352765393_500x0.jpg\" src=\"http://l.f1.img.vnexpress.net/2012/11/13/1-jpg-1352765372-1352765393_500x0.jpg\" width=\"500\" style=\"border: 0px; margin: 0px; padding: 0px; color: transparent; vertical-align: middle;\"></span></p><p align=\"center\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><font style=\"border: 0px; margin: 0px; padding: 0px; font-size: small; font-family: Arial;\">Novak Djokovic lần thứ hai vô địch World Tour Finals.</font></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Trận chiến cuối cùng của mùa giải 2012 diễn ra rạng sáng ngày 13/11 là một màn so vợt trong mơ giữa hai tay vợt đứng đầu thế giới Djokovic và Federer. Với đỉnh cao về trình độ, trận chung kết giống như một món quà dành cho người hâm mộ London sau khi World Tour Finals cán mốc 1 triệu khán giả đến sân O2 xem trực tiếp sau 2 năm giải gắn bó với London.</span></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Đáp lại sự trông đợi của khán giả, trận chung kết nổi sóng ngay ở set đấu đầu tiên với những diễn biến ngoắt nghéo, nơi cả hai tay vợt đã phô diễn hết phẩm chất kỹ thuật lẫn bản lĩnh tinh thần.</span></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Federer khởi đầu trận đấu không thể tốt hơn. Anh thắng liền 3 game đầu tiên, trong đó có 2 game thắng trắng và một điểm break. Anh cũng gây ấn tượng với 9 pha bóng ghi điểm liên tiếp kể từ đầu trận. Trong khi Djokovic tỏ ra chậm chạp và vụng về với những pha bóng hỏng bao nhiêu, thì Federer tinh tế và ổn định bấy nhiêu.</span></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Nhưng cũng từ đây, thế trận đổi chiều một cách bất ngờ. Ở game thứ 4, trong khi Federer có cơ hội ăn break thứ hai của Djokovic, thì phẩm chất của tay vợt lội ngược dòng hay nhất thế giới hiện nay đã bật ra. Djokovic bắt đầu kéo Federer vào các loạt bóng bền mà tay vợt Thụy Sĩ là người thường xuyên mất kiên nhẫn và đánh hỏng. Chiến thuật này của Djokovic đã phát huy tác dụng giúp anh ăn liền 3 game để gỡ hòa điểm số.</span></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Đến game thứ 9, Djokovic bất ngờ vượt lên khi bẻ break của Federer để dẫn 5-4, nhưng Federer khiến diễn biến trận đấu kịch tính hơn bằng màn đòi lại break thành công ở ngay game thứ 10.</span></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Cả hai tiếp tục bám đuổi điểm số đến 6-6 và phải bước vào tiebreak. Cuộc đua diễn ra ngang bằng cho đến khi Djokovic tận dụng được hai lỗi đánh bóng hỏng liền của Federer để thắng tiebreak 8-6.</span></p><p align=\"center\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\"><img alt=\"2-jpg-1352765348-1352765393_500x0.jpg\" src=\"http://l.f1.img.vnexpress.net/2012/11/13/2-jpg-1352765348-1352765393_500x0.jpg\" width=\"500\" style=\"border: 0px; margin: 0px; padding: 0px; color: transparent; vertical-align: middle;\"></span></p><p align=\"center\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><font style=\"border: 0px; margin: 0px; padding: 0px; font-size: small; font-family: Arial;\">Federer vẫn giậm chân ở con số 6 lần vô địch giải đấu.</font></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Sang set 2, Federer lại là người vượt lên trước sau khi giành break ngay ở game đầu tiên sau hơn 10 phút giằng co với Djokovic, trong đó anh có 4 cơ hội ăn break-point nhưng phải đến lần thứ 4 mới thành công.</span></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Djokovic sau game đấu này không còn duy trì được độ sung sức nhưng vẫn dồn hết tinh thần để đối phó với Federer. Không muốn bị Djokovic lật ngược tình thế như set 1, Federer đã rất cố gắng giữ ưu thế dẫn điểm.</span></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Nhưng một lần nữa may mắn lại không đứng về phía Federer. Đến game thứ 10, điều khiến anh lo ngại nhất đã đến. Djokovic sau chuỗi thời gian thi đấu mờ nhạt bất ngờ tận dụng phút thi đấu thiếu sắc bén của Federer để đòi break thành công.</span></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Không dừng ở đó, dấu chấm hết cho mục tiêu giành ngôi vô địch World Tour Finals ở giải này cho tay vợt số 2 thế giới đã đến ở game thứ 12, khi anh lại để Djokovic giành chiến thắng trong những pha bắt bài quá xuất sắc, khiến trận đấu đột ngột kết thúc khi đang ở đỉnh cao của sự căng thẳng.</span></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Sau 2 giờ 14 phút với tỷ số 7-6 (6), 7-5, ngôi vô địch giành cho Djokovic quá xứng đáng trong một trận đấu mà anh luôn bị tụt lại, nhưng lại tận dụng thành công những thời điểm xuống tay của đối thủ mạnh để lật ngược tình thế. Thắng Murray ở vòng bảng, Del Potro ở bán kết và Federer ở chung kết đều bằng những cú lật ngược từ thua thành thắng vô cùng ấn tượng, Djokovic đã để lại dấu ấn rất lớn tại giải World Tour Finals năm nay, xứng danh số 1 thế giới của năm lần thứ hai liên tiếp.</span></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Nhưng cũng không thể quên dành những lời khen tặng cho Federer. Không nói về tỷ số và chiếc cúp vô địch, \"Tàu tốc hành\" đã cống hiến một thứ tennis đẹp, lôi cuốn, đầy chất nghệ thuật. Với những bước di chuyển nhanh nhẹn, khả năng lên lưới bắt bài đối phương hoàn hảo, những pha cứu bóng rất độc đáo và siêu khó, Federer chứng minh anh xứng đáng như thế nào với giải Phong cách mới nhận cách đây vài ngày.</span></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Khán giả London chúc mừng Djokovic vô địch nhưng không thể gạt bỏ được nỗi tiếc nuối và sự hụt hẫng trước thất bại của người nghệ sĩ banh nỉ Federer. Nhưng trên tất cả, đây là một cái kết đẹp cho quần vợt mùa giải 2012, khi mà đến phút chót quần vợt chuyên nghiệp vẫn ngập tràn những pha bóng đầy hứng khởi của Federer và bản lĩnh thép của Djokovic, hai chất liệu đã dệt nên thời kỳ hoàng kim nhất trong Kỷ nguyên mở rộng.</span></p><table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"margin: auto; width: 480px;\"><tbody style=\"border: 0px; margin: 0px; padding: 0px;\"><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-size: small; font-family: Arial;\">Thống kê</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-size: small; font-family: Arial;\">Djokovic</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-size: small; font-family: Arial;\">Federer</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-size: small; font-family: Arial;\">Giao bóng</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">&nbsp;</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">&nbsp;</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Ace</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">6</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">8</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Lỗi kép</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">2</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">2</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Tỉ lệ giao bóng 1 thành công</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">69%</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">61%</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Điểm ăn bóng 1</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">43/68 (63%)</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">35/57 (61%)</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Điểm ăn bóng 2</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">14/30 (47%)</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">19/36 (53%)</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Số lần cứu break-point</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">4/7 (57%)</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">3/7 (43%)</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Số game giao bóng</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">12</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">12</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-size: small; font-family: Arial;\">Trả bóng</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">&nbsp;</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">&nbsp;</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Điểm ăn trong pha trả giao bóng 1</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">22/57 (39%)</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">25/68 (37%)</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Điểm ăn trong pha trả giao bóng 2</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">17/36 (47%)</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">16/30 (53%)</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Số lần ăn break-point</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">4/7 (57%)</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">3/7 (43%)</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Số game trả giao bóng</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">12</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">12</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-size: small; font-family: Arial;\">Điểm số</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">&nbsp;</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">&nbsp;</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Điểm các game giao bóng</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">57/98 (58%)</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">54/93 (58%)</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Điểm các game trả bóng</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">39/93 (42%)</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">41/98 (42%)</span></td></tr><tr style=\"border: 0px; margin: 0px;\"><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Tổng cộng</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">96/191 (50%)</span></td><td style=\"vertical-align: top; border: 0px;\"><span style=\"font-size: small; font-family: Arial;\">95/91 (50%)</span></td></tr></tbody></table><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px; text-align: right;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-size: small; font-family: Arial;\">Anh Hoàng</span></p></div>', '0', '5', '0', '1353909661', '0', '1353909661', '0', '1', '0', 'uploads/photos/3.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('9', 'Đối Tác 4', 'czech-mo-lap-cu-dup-o-davis-cup', '<span style=\"color: rgb(95, 95, 95); background-color: rgb(244, 245, 247); font-size: small; font-family: Arial;\">Czech có cơ hội lập kỳ tích vô địch cả Davis Cup và Fed Cup trong một năm sau 22 năm khi tiếp Tây Ban Nha ở chung kết Davis Cup từ ngày 5/11.</span>', '<div class=\"short_intro\" style=\"border: 0px; margin: 0px; padding: 0px; font-weight: 700; color: rgb(95, 95, 95); background-color: rgb(244, 245, 247);\"><span style=\"font-size: small; font-family: Arial;\">Czech có cơ hội lập kỳ tích vô địch cả Davis Cup và Fed Cup trong một năm sau 22 năm khi tiếp Tây Ban Nha ở chung kết Davis Cup từ ngày 5/11.</span></div><div class=\"fck_detail\" style=\"border: 0px; margin: 0px; padding: 10px 0px 0px; width: 502px; float: left; overflow: hidden; background-color: rgb(244, 245, 247);\"><p align=\"center\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\"><img alt=\"2-jpg-1352921031-1352921101_500x0.jpg\" src=\"http://l.f1.img.vnexpress.net/2012/11/15/2-jpg-1352921031-1352921101_500x0.jpg\" width=\"500\" style=\"border: 0px; margin: 0px; padding: 0px; color: transparent; vertical-align: middle;\"></span></p><p align=\"center\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><font style=\"border: 0px; margin: 0px; padding: 0px; font-size: small; font-family: Arial;\">Berdych và Stepanek là trụ cột của đội CH Czech.</font></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Đội chủ nhà hy vọng sự cổ vũ của các CĐV và mặt sân cứng sẽ mang lại cho họ chút lợi thế trước tuyển Tây Ban Nha đang có tham vọng giành Davis Cup lần thứ 4 trong 5 năm trở lại đây. Đội khách có thể không có cựu số 1 thế giới Rafa Nadal nhưng sự thực thì họ vẫn được đánh giá cao hơn Czech và có cơ hội lặp lại được chiến thắng hủy diệt 5-0 trước chính người Czech trên mặt sân đất nện tại Barcelona cách đây 3 năm.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Trong đội hình ĐKVĐ Tây Ban Nha có sự hiện diện của cây vợt số 5 thế giới David Ferrer và cây vợt số 11 Nicolas Almagro. Sát cánh bên họ là những nhà vô địch giải Barclays Association of Tennis Professionals World Tour Finals, Marcel Granollers và Marc Lopez. Granollers hiện xếp hạng 33, trong khi Lopez là cây vợt số 9 xuất sắc nhất ở nội dung đánh đôi. Theo đội trưởng Alex Corretja, Tây Ban Nha thừa sức bảo vệ thành công Davis Cup nếu Ferrer thắng trong 2 trận đánh đơn.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Bên phía Czech, sân O2 Arena ở Prague sẽ là lợi thế cho Tomas Berdych cùng các đồng đội của anh. Berdych đang xếp hạng 6 thế giới và chơi bên cạnh anh sẽ là Radek Stepanek, cây vợt xếp hạng 37 thế giới. Dự bị cho họ sẽ là Lukas Rosol, cây vợt xếp hạng 84 và từng khiến Nadal phải ôm hận ở vòng 2 Wimbledon hồi hè, và Ivo Minar, hạng 187. Còn đội trưởng của tuyển Czech là Jaroslav Navratil.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Nếu thắng tại Davis Cup, quần vợt Czech sẽ hoàn tất cú đúp, kỳ tích mà lần cuối cùng một quốc gia làm được là Mỹ vào năm 1990. 10 năm sau đó, tuyển Tiệp Khắc cũ dưới sự dẫn dắt của cây vợt 20 tuổi Ivan Lendl cũng đã giành Davis Cup. Trong khi đó, Tây Ban Nha hy vọng họ sẽ có danh hiệu thứ 4 sau 3 Davis Cup mà họ giành được trong 4 năm qua. Trước đó, Tây Ban Nha cũng vô địch vào các năm 2000 và 2004.<br><br><strong style=\"border: 0px; margin: 0px; padding: 0px;\">Lịch thi đấu ngày 15-16/11:</strong></span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Vòng 1: David Ferrer - Radek Stepanek</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Vòng 2: Tomas Berdych - Nicolas Almagro</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Vòng 3: Marcel Granollers &amp; Marc Lopez - Tomas Berdych &amp; Radek Stepanek</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Vòng 4: David Ferrer - Tomas Berdych</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Vòng 5: Nicolas Almagro - Radek Stepanek</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px; text-align: right;\"><strong style=\"border: 0px; margin: 0px; padding: 0px; font-size: small; font-family: Arial;\">Anh Hào</strong></p></div>', '0', '5', '0', '1353909765', '0', '1353909765', '0', '1', '0', 'uploads/photos/4.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('10', 'Đối Tác 5', 'phong-ngu-len-ngoi-tan-cong-lep-ve', '<span style=\"color: rgb(95, 95, 95); background-color: rgb(244, 245, 247); font-family: Arial; font-size: small;\">Federer cho rằng mặt sân hiện nay khiến lối đánh phòng ngự lên ngôi và tạo ra một sự đồng nhất về phong cách thi đấu giữa các tay vợt hàng đầu.</span>', '<div class=\"short_intro\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(95, 95, 95); background-color: rgb(244, 245, 247);\"><span style=\"font-size: small; font-family: Arial;\">Federer cho rằng mặt sân hiện nay khiến lối đánh phòng ngự lên ngôi và tạo ra một sự đồng nhất về phong cách thi đấu giữa các tay vợt hàng đầu.</span></div><div class=\"fck_detail\" style=\"font-weight: normal; font-family: Arial, Verdana; font-size: 10pt; border: 0px; margin: 0px; padding: 10px 0px 0px; width: 502px; float: left; overflow: hidden; background-color: rgb(244, 245, 247);\"><p align=\"center\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\"><img alt=\"2-jpg-1352979035-1352979046_500x0.jpg\" src=\"http://l.f1.img.vnexpress.net/2012/11/15/2-jpg-1352979035-1352979046_500x0.jpg\" width=\"500\" style=\"border: 0px; margin: 0px; padding: 0px; color: transparent; vertical-align: middle;\"></span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Bức màn quần vợt nam trong năm 2012 đã khép lại sau trận chung kết ATP World Tour Finals vào đầu tuần, một năm hiếm hoi tất cả được chứng kiến 4 nhà vô địch Grand Slam khác nhau, với những cuộc so tài khó quên. Tuy vậy, Roger Federer cho rằng, năm 2013 sẽ còn tuyệt vời hơn nếu tốc độ bóng trên bề mặt các sân trở nên nhanh hơn.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Chỉ mới gần đây thôi, người hâm mộ đã được chứng kiến nhiều cây vợt có những cú giao bóng rất mạnh, những cú đánh bóng đầy uy lực như Pete Sampras, Boris Becker và Stefan Edberg. Thậm chí, những cây vợt chuyên đánh cuối sân như Andre Agassi và Jim Courier cũng có phong cách tấn công rất đa dạng. Xa hơn, John McEnroe, Jimmy Connors và Ivan Lendl đều chơi trên lưới chỉ với 4-5 pha chạm bóng.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Còn lúc này, các cây vợt có thể đánh qua lại tới 20 pha chạm bóng và những trận đấu vì thế cũng keo dài hơn. Chẳng hạn như chung kết Australia Open hồi đầu năm giữa Novak Djokovic và Rafa Nadal kéo dài tới gần 6 tiếng, trong khi trận chung kết Mỹ mở rộng giữa Andy Murray và Djokovic cũng diễn ra hơn 5 tiếng. Gần đây nhất là trận chung kết Shanghai Masters, Murray và Djokovic đã mất 3 tiếng rưỡi dù chỉ có 3 set.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Theo Federer, mặt sân chậm hơn, bóng chậm hơn, cộng với nền tảng thể lực sung mãn của các cây vợt, đã tạo nên sự cân bằng trong cục diện hiện tại. \"Chỉ khi người ta làm các mặt sân khiến tốc độ bóng nhanh hơn, lúc đó các cây vợt mới khó phòng ngự. Khi đó, phong cách tấn công sẽ trở nên rất quan trọng,\" cây vợt 31 tuổi người Thụy Sĩ nói. \"Còn bây giờ, tất cả đều có thể phòng ngự tốt cho đến khi một ai đó mắc lỗi sau 15-20 cú đánh bóng\".</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Federer thích thú với ý tưởng sự khác biệt giữa các mặt sân sẽ rõ rệt hơn bây giờ, trong đó có loại sân bóng bay chậm, có loại sân bóng sẽ bay rất nhanh. Anh cho rằng điều này sẽ tạo ra mảnh đất để nuôi dưỡng nhiều phong cách thi đấu khác nhau, đặc biệt mặt sân bóng bay nhanh sẽ cổ xúy cho lối đánh tấn công.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Với việc giải Mỹ mở rộng, Australia Open và nhiều giải Masters Series đang diễn ra trên mặt sân cứng có tốc độ chậm trung bình, Federer khẳng định các cây vợt đang có nguy cơ đồng nhất về phong cách, đặc biệt khi mặt sân cỏ Wimbledon giờ phù hợp với lối đánh cuối sân hơn là trên lưới.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Có thể FedEx đưa ra quan điểm này là vì anh vừa thất bại trước Djokovic ở trận chung kết ATP World Tour Finals và Nole lại là một cây vợt rất mạnh trong những pha cứu bóng đa dạng, linh hoạt.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Trong khi đó, người đồng hương của Nole là Janko Tipsarevic tiết lộ, trong quần vợt hiện đại, ưu tiên của các cây vợt là phòng ngự hơn là tấn công. Trong 10 năm qua, thay đổi lớn của quần vợt không phải là phong cách tấn công, đó là phòng ngự,</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Tipsarevic nhận định: \"Thậm chí với những cây vợt có chiều cao như Del Potro, Berdych và Tsonga cũng phòng ngự rất tốt. Trước đây nhìn vào Sampras và Agassi có thể thấy họ quen tất công chứ không quen phòng thủ\".</span></p></div>', '0', '5', '0', '1353909863', '0', '1353909902', '0', '1', '0', 'uploads/photos/5.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('11', 'Đối Tác 6', 'top-4-va-cuoc-chien-tren-lich-thi-dau', '<span style=\"color: rgb(95, 95, 95); background-color: rgb(244, 245, 247); font-size: small; font-family: Arial;\">Mới có Djokovic và Federer công bố lịch thi đấu 2013, nhưng người hâm mộ bắt đầu dự đoán xem trật tự bảng xếp hạng ATP năm tới sẽ như thế nào.</span>', '<div class=\"short_intro\" style=\"border: 0px; margin: 0px; padding: 0px; font-weight: 700; color: rgb(95, 95, 95); background-color: rgb(244, 245, 247);\"><span style=\"font-family: Arial; font-size: small;\">Mới có Djokovic và Federer công bố lịch thi đấu 2013, nhưng người hâm mộ bắt đầu dự đoán xem trật tự bảng xếp hạng ATP năm tới sẽ như thế nào.</span></div><div class=\"fck_detail\" style=\"border: 0px; margin: 0px; padding: 10px 0px 0px; width: 502px; float: left; overflow: hidden; background-color: rgb(244, 245, 247);\"><p align=\"center\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\"><img alt=\"1-jpg-1353573890-1353573948_500x0.jpg\" src=\"http://l.f1.img.vnexpress.net/2012/11/22/1-jpg-1353573890-1353573948_500x0.jpg\" width=\"500\" style=\"border: 0px; margin: 0px; padding: 0px; color: transparent; vertical-align: middle;\"></span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">2012 là một năm mở nhất của quần vợt nam trong nhiều mùa giải gần đây khi 4 cây vợt hàng đầu thay nhau giành Grand Slam. Dù đây là thời điểm các cây vợt xả hơi và nạp lại năng lượng trước khi bắt đầu mùa giải 2013 diễn ra vào đầu tháng sau, người ta cũng chờ đón xem trật tự bảng xếp hạng ATP.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Đến lúc này, tốp đầu mới chỉ có 2 cây vợt là Novak Djokovic và Roger Federer là công bố lịch thi đấu trong năm 2013. Riêng trường hợp của Rafael Nadal, cây vợt người Tây Ban Nha còn phải chờ xem chấn thương đầu gối của anh phục hồi như thế nào, mặc dù anh đã cầm vợt tập luyện trở lại.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Trong năm 2013, Nole sẽ tham dự 15 giải, chưa kể các trận đấu biểu diễn, Hopman Cup, Davis Cup và ATP World Tour Finals (nếu anh đủ điểm tới đó), với tổng số 12.920 điểm cần bảo vệ. Ngoài 4 Grand Slam, trong đó Australia mở rộng mở màn từ ngày 14 đến 28/1, là 11 giải thuộc hệ thống ATP Tour. Wimbledon là giải duy nhất diễn ra trên mặt sân cỏ có sự hiện diện của cây vợt người Serbia và các giải còn lại đều trên mặt sân cứng, sân đất nện.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Để so sánh, lịch thi đấu của Federer gồm 14 giải và sẽ là 15 nếu anh đủ điểm dự ATP World Tour Finals. Đáng chú ý là FedEx sẽ không có mặt ở giải Miami Masters và Basel Open. Federer cũng sẽ còn phải cân nhắc khả năng tham dự các giải đấu khác, chẳng hạn như Rogers Cup và Shanghai Masters khi hai giải này liền kề với Western &amp; Southern Open, Cincinnati, Mỹ mở rộng và Paris Masters...</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Bất ngờ duy nhất cho đến nay vẫn là quyết định bỏ giải Miami Open của FedEx. Nhìn vào lịch thi đấu, cây vợt số 2 thế giới sẽ phải ra sân liên tục trong mùa xuân, từ Australian mở rộng, Davis Cup (có khả năng), Rotterdam, Dubai và sau đó là Indian Wells. Không dự Miami sẽ giúp anh có đến 6 tuần nghỉ ngơi trước khi mùa giải trên sân đất nện bắt đầu ở Madrid. Sau cùng thì với việc anh không còn hợp tác cùng IMG trong năm nay, FedEx cũng sẽ không xuất hiện trong những giải đấu do hãng này tài trợ. Lần đầu tiên kể từ năm 2009, anh không tham dự giải biểu diễn Abu Dhabi vào tháng 12.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Một vấn đề nữa mà FedEx phải đối mặt là cơ hội của anh tại Grand Slam. Ở độ tuổi 32, thể lực sẽ là trở ngại rất lớn cho cây vợt người Thụy Sĩ và trong khi chấn thương đầu gối có thể quay lại hành hạ Nadal một lần nữa, khả năng vô địch của Djokovic, Murray hay thậm chí Juan Martin Del Potro là rất lớn.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Tại Australia, Murray đang được đánh giá cao nhất sau khi cây vợt người Scotland đạt thành tích khá tốt trong 3 năm trở lại đây, với 2 lần lọt vào chung kết và 1 lần dự bán kết. Bên cạnh đấy, sự hợp tác với Ivan Lendl cũng đã giúp Murray ngày càng trưởng thành và hoàn thiện bản thân hơn. Mục tiêu của cây vợt số 3 sẽ là danh hiệu Grand Slam thứ 2 trong tháng 1.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Đến giải Pháp mở rộng, do chấn thương đầu gối của Nadal, vai trò ứng cử viên số 1 thuộc về Djokovic. Đấy là vì ở mùa giải 2012, Nole chỉ chịu thua Nadal trong trận chung kết, trong khi lần cuối cùng FedEx chiến thắng trên mặt sân đất nện là năm 2009.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Tới Grand Slam thứ 3 trong năm, cơ hội dành cho nhóm Big Four là ngang bằng nhau trừ khi Nadal cũng có mặt. Có lẽ, đây là Grand Slam duy nhất trong năm mà khả năng vô địch của bộ tứ là khó đoán nhất, đặc biệt khi Murray cũng cho thấy anh có thể đánh bại tất cả sau chiến thắng ở Olympic London.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Còn ở giải Mỹ, tất cả sẽ phải nhắc đến Del Potro như là một đối thủ tiềm tàng. Năm 2009, cây vợt người Argentina từng đánh bại Federer ở trận chung kết, trước khi anh bắt đầu tìm lại được phong độ ngày nào trong năm 2012 sau một thời gian chấn thương. Như Tòa tháp Tandil tuyên bố thì anh sẽ biến nhóm Big Four thành Big Five trong năm 2013 này và điều này cũng có nghĩa anh sẽ tấn công bộ tứ ngay từ Australia mở rộng chứ không phải đợi đến Mỹ mở rộng.</span></p><p style=\"border: 0px; margin: 1em 0px; padding: 0px; text-align: right;\"><strong style=\"border: 0px; margin: 0px; padding: 0px; font-family: Arial; font-size: small;\">Anh Hào</strong></p></div>', '1', '5', '0', '1354180940', '0', '1354181005', '0', '1', '0', 'uploads/photos/1-jpg-1353573890-1353573948_500x0.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('12', 'Đối Tác 7', 'rafael-nadal-thi-dau-o-doha', '<span style=\"color: rgb(95, 95, 95); font-family: Arial; font-size: small; background-color: rgb(244, 245, 247);\">Sau một tuần trở lại sân tập, cây vợt số 4 thế giới Rafael Nadal thông báo anh sẽ tham dự giải Qatar ExxonMobil Open vào đầu tháng 1 tới.</span>', '<div class=\"short_intro\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(95, 95, 95); background-color: rgb(244, 245, 247);\"><span style=\"font-family: Arial; font-size: small;\">Sau một tuần trở lại sân tập, cây vợt số 4 thế giới Rafael Nadal thông báo anh sẽ tham dự giải Qatar ExxonMobil Open vào đầu tháng 1 tới.</span></div><div class=\"fck_detail\" style=\"border: 0px; margin: 0px; padding: 10px 0px 0px; width: 502px; float: left; overflow: hidden; background-color: rgb(244, 245, 247);\"><p align=\"center\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\"><img alt=\"1-jpg-1353916213-1353916219_500x0.jpg\" src=\"http://l.f1.img.vnexpress.net/2012/11/26/1-jpg-1353916213-1353916219_500x0.jpg\" width=\"500\" style=\"border: 0px; margin: 0px; padding: 0px; color: transparent; vertical-align: middle;\"></span></p><p style=\"font-weight: normal; border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Thông tin này đã được giám đốc giải Qatar ExxonMobil Open, Karim Alami, xác nhận, bên cạnh sự có mặt của David Ferrer, Richard Gasquet và Gael Monfils. Mặc dù ngày 27/12 anh sẽ có mặt ở Dubai dự giải đấu biểu diễn cùng Djokovic và Murray, nhưng Qatar ExxonMobil Open sẽ là giải chính thức đánh dấu sự trở lại của Nadal sau chấn thương mà anh gặp phải ở Wimbledon hồi tháng 6. Đây cũng có thể xem là quá trình chuẩn bị của số 4 thế giới trước giải Australian Open.&nbsp;</span></p><p style=\"font-weight: normal; border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Chuyến đi tới Doha vì thế được xem là một bài test đánh giá khả năng phục hồi của Nadal bởi dù sao thì Qatar Open cũng là một giải đấu có uy tín mở màn mùa giải mới. Nếu cây vợt người Tây Ban Nha đi sâu vào giải để gặp Ferrer, Gasquet hay Monfils, anh sẽ đánh giá được cơ hội của mình ở Australian Open.</span></p><p style=\"font-weight: normal; border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Tính cho đến tháng 1, Nadal sẽ có 6 tháng điều trị chấn thương. Dù hiện tại vẫn đứng thứ 4 trên bảng xếp hạng ATP, tất cả vẫn hoài nghi vào phong độ của anh. Bên cạnh đó, Qatar Open diễn ra trên mặt sân cứng và như ông vua sân đất nện thừa nhận thì anh cảm thấy rất khó khăn khi thi đấu trên mặt sân này.</span></p><p style=\"font-weight: normal; border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">“Mặt sân cứng có tác động xấu đến cơ thể,” Nadal nói. “Tôi biết thể thao là một lĩnh vực kinh doanh và tạo ra những mặt sân này dễ dàng hơn so với mặt sân cỏ hay đất nện. Tôi có lẽ phải thi đấu nhiều hơn trên mặt sân đất nện nhưng với lịch thi đấu cả mùa giải, tôi không có nhiều lựa chọn.”</span></p><p style=\"font-weight: normal; border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Tuy vậy, quyết định trở lại trên mặt sân cứng cũng sẽ mang lại cho Nadal cơ hội đánh giá khả năng phục hồi của đầu gối. Nếu anh cảm thấy không thoải mái, anh sẽ rút lui khỏi Australian Open mà không bị chú ý quá nhiều. Ngược lại, Nadal sẽ có thêm tự tin để tới Melbourne.</span></p><p style=\"font-weight: normal; border: 0px; margin: 1em 0px; padding: 0px; text-align: right;\"><strong style=\"border: 0px; margin: 0px; padding: 0px; font-family: Arial; font-size: small;\">Anh Hào</strong></p></div>', '1', '5', '0', '1354181104', '0', '1354181104', '0', '1', '0', 'uploads/photos/1-jpg-1353916213-1353916219_500x0.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('13', 'Đối Tác 8', 'laura-robson-nhan-giai-guong-mat-moi-cua-nam', '<span style=\"color: rgb(95, 95, 95); font-family: Arial; font-size: small; background-color: rgb(244, 245, 247);\">Màn thi đấu ấn tượng ở Mỹ mở rộng là nền tảng chính giúp cây vợt nữ người Anh Laura Robson được trao giải Gương mặt mới trong năm của WTA.</span>', '<div class=\"short_intro\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(95, 95, 95); background-color: rgb(244, 245, 247);\"><span style=\"font-family: Arial; font-size: small;\">Màn thi đấu ấn tượng ở Mỹ mở rộng là nền tảng chính giúp cây vợt nữ người Anh Laura Robson được trao giải Gương mặt mới trong năm của WTA.</span></div><div class=\"fck_detail\" style=\"border: 0px; margin: 0px; padding: 10px 0px 0px; width: 502px; float: left; overflow: hidden; background-color: rgb(244, 245, 247);\"><p align=\"center\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\"><img alt=\"1-1-jpg-1354026714-1354026722_500x0.jpg\" src=\"http://l.f1.img.vnexpress.net/2012/11/27/1-1-jpg-1354026714-1354026722_500x0.jpg\" width=\"500\" style=\"border: 0px; margin: 0px; padding: 0px; color: transparent; vertical-align: middle;\"></span></p><p style=\"font-weight: normal; border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Mặc dù giành danh hiệu Wimbledon trẻ khi mới 14 tuổi vào năm 2008 và được chờ đợi sẽ bùng nổ khi chuyển sang thi đấu chuyên nghiệp, phải chờ đến nửa sau năm 2012 Robson mới được nhắc đến. Tại Olympic London, cô cùng Murray lọt vào chung kết đánh đôi (giành HC bạc) và tại giải Mỹ mở rộng, cô vào đến vòng 4. Những thành tích này rất đáng kế với một cây vợt chỉ mới 18 tuổi như Robson và giúp cô nhận được giải thưởng của WTA.</span></p><p style=\"font-weight: normal; border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Tuy Robson thất bại ở Wimbledon và chưa từng thắng liên tiếp hai trận nào ở hệ thống giải WTA trước đó, cô đã thi đấu rất thành công trên mặt sân đất nện tại Palermo ngay sau khi Wimbledon kết thúc. Lần đầu tiên cô có mặt ở bán kết một giải WTA và đánh bại một cây vợt nằm trong tốp 30 là Roberta Vinci.</span></p><p style=\"font-weight: normal; border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Đến cuối mùa hè, cô gái người Anh có thêm hai dấu mốc quan trọng nữa trong sự nghiệp. Tại giải Mỹ mở rộng, cô lọt vào đến vòng 4 và trở thành cây vợt người Anh đầu tiên sau 14 năm có mặt ở vòng này. Tiếp đó là trận chung kết Guangzhou và một lần nữa, cô trở thành cây vợt người Anh đầu tiên sau 22 năm có mặt ở một trận chung kết WTA.</span></p><p style=\"font-weight: normal; border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Riêng giải Mỹ mở rộng để lại nhiều kỷ niệm đẹp cho Robson khi cô đánh bại Kim Clijsters trong trận đấu cuối cùng của cựu số 1 thế giới và vượt qua Li Na ở vòng 3. Đây là lần đầu tiên, Robson có được một chiến thắng trước một cây vợt nằm trong tốp 10 của WTA.</span></p><p style=\"font-weight: normal; border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-family: Arial; font-size: small;\">Kết thúc mùa giải 2012, Robson lọt vào tứ kết một giải nữa ở Osaka. Nhờ kết quả này, sau khi chỉ xếp hạng 113 thế giới tại giải Palermo hồi tháng 7, cô đã vươn lên vị trí thứ 52 trong tháng 10 và thứ 53 trong năm 2012.</span></p><p style=\"font-weight: normal; border: 0px; margin: 1em 0px; padding: 0px; text-align: right;\"><strong style=\"border: 0px; margin: 0px; padding: 0px; font-family: Arial; font-size: small;\">Anh Hào</strong></p></div>', '1', '5', '0', '1354181221', '0', '1354181221', '0', '1', '0', 'uploads/photos/1-1-jpg-1354026714-1354026722_500x0.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('14', 'Đối Tác 9', 'nadal-tro-lai-tap-luyen-cho-australia-mo-rong', '<span style=\"color: rgb(95, 95, 95); font-family: Arial; font-size: small; background-color: rgb(244, 245, 247);\">Sau 5 tháng nghỉ thi đấu, Nadal đã vác vợt ra sân tập lần đầu tiên trong ngày 20/11 dưới sự giám sát của ông chú Toni và một chuyên gia phục hồi thể lực.</span>', '<div class=\"short_intro\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(95, 95, 95); background-color: rgb(244, 245, 247);\"><span style=\"font-size: small; font-family: Arial;\">Sau 5 tháng nghỉ thi đấu, Nadal đã vác vợt ra sân tập lần đầu tiên trong ngày 20/11 dưới sự giám sát của ông chú Toni và một chuyên gia phục hồi thể lực.</span></div><div class=\"fck_detail\" style=\"font-weight: normal; border: 0px; margin: 0px; padding: 10px 0px 0px; width: 502px; float: left; overflow: hidden; background-color: rgb(244, 245, 247);\"><p align=\"center\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\"><img alt=\"1-4-jpg-1353432109-1353432374_500x0.jpg\" src=\"http://l.f1.img.vnexpress.net/2012/11/21/1-4-jpg-1353432109-1353432374_500x0.jpg\" width=\"500\" style=\"border: 0px; margin: 0px; padding: 0px; color: transparent; vertical-align: middle;\"></span></p><p align=\"center\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><font style=\"border: 0px; margin: 0px; padding: 0px; font-size: small; font-family: Arial;\">Nadal tập luyện ở Manacor.&nbsp;<em style=\"border: 0px; margin: 0px; padding: 0px;\">Ảnh:</em>&nbsp;<em style=\"border: 0px; margin: 0px; padding: 0px;\">EPA</em></font></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Buổi tập đầu tiên của Nadal diễn ra tại quê nhà Manacor, trong đó anh bắt đầu tung ra những cú giao bóng để tìm lại cảm giác. Ngoài HLV Toni Nadal, một chuyên gia phục hồi thể lực cũng có mặt để giám sát các động tác, cũng như đề phòng tình huống xấu xảy ra.</span></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Đây là tín hiệu lạc quan đầu tiên đối với việc trở lại sân đấu của Nadal sau một thời gian dài vắng bóng. Anh cũng đã chấm dứt giai đoạn giấu mình trong phòng tập và bể bơi để hồi phục đầu gối trái.</span></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Buổi tập diễn ra suôn sẻ và Nadal cho biết anh cố gắng để kịp trở lại phong độ cao khi bước chân vào Australia mở rộng 2013 diễn ra vào tháng 1.</span></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px;\"><span style=\"font-size: small; font-family: Arial;\">Nadal đã nghỉ thi đấu kể từ trận thua trước Lukas Rosol ở vòng 2 Wimbledon cách đây 5 tháng. Chưa đầy nửa năm vắng bóng Nadal, quần vợt thế giới đã có những biến động lớn. Murray kịp vươn mình thành một nhà vô địch Olympic và Grand Slam. Nadal bị rơi xuống vị trí thứ 4 và đang bị bị bám đuổi sát sao bởi người đồng hương Ferrer.</span></p><p class=\"Normal\" style=\"border: 0px; margin: 1em 0px; padding: 0px; text-align: right;\"><strong style=\"border: 0px; margin: 0px; padding: 0px; font-size: small; font-family: Arial;\">Anh Hoàng</strong></p></div>', '1', '5', '0', '1354181507', '0', '1354181507', '0', '1', '0', 'uploads/photos/1-4-jpg-1353432109-1353432374_500x0.jpg', null, '0', null, null, null, '0', 'Array', '0');

-- ----------------------------
-- Table structure for made_in
-- ----------------------------
DROP TABLE IF EXISTS `made_in`;
CREATE TABLE `made_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of made_in
-- ----------------------------
INSERT INTO `made_in` VALUES ('1', 'Đài Loan ');

-- ----------------------------
-- Table structure for manufactory
-- ----------------------------
DROP TABLE IF EXISTS `manufactory`;
CREATE TABLE `manufactory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `made_in` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `made_in` (`made_in`),
  CONSTRAINT `manufactory_ibfk_1` FOREIGN KEY (`made_in`) REFERENCES `made_in` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manufactory
-- ----------------------------
INSERT INTO `manufactory` VALUES ('1', 'HIKARI', '1');

-- ----------------------------
-- Table structure for pay_detail
-- ----------------------------
DROP TABLE IF EXISTS `pay_detail`;
CREATE TABLE `pay_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `total_price` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_detail
-- ----------------------------
INSERT INTO `pay_detail` VALUES ('2', '135398842550b439495f177', 'Thanh', 'QB', '54455', 'Thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989077');
INSERT INTO `pay_detail` VALUES ('3', '135398842550b439495f177', 'Thanh', 'tran phu', '4545', 'thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989085');
INSERT INTO `pay_detail` VALUES ('4', '135398842550b439495f177', 'Thanh', 'tran phu', '4545', 'thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989088');
INSERT INTO `pay_detail` VALUES ('5', '135398842550b439495f177', 'Thanh', 'tran phu', '4545', 'thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989088');
INSERT INTO `pay_detail` VALUES ('6', '135398842550b439495f177', 'Thanh', 'tran phu', '4545', 'thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989090');
INSERT INTO `pay_detail` VALUES ('7', '135398842550b439495f177', 'Thanh', 'tran phu', '4545', 'thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989094');
INSERT INTO `pay_detail` VALUES ('8', '135398842550b439495f177', 'Thanh', 'tran phu', '4545', 'thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989095');
INSERT INTO `pay_detail` VALUES ('9', '135398842550b439495f177', 'Thanh', 'tran phu', '4545', 'thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989095');
INSERT INTO `pay_detail` VALUES ('10', '135398942150b43d2d8b82f', 'Vo Dinh Thanh', '270 B Tan Binh p15 Quan Tan Binh. Tp .Ho Chi Minh', '0982 255 252', 'Thanh@yahoo.com.vn', '8', '1', null, null, '1500000', '1', '1353989421');
INSERT INTO `pay_detail` VALUES ('11', '135398942150b43d2d8b82f', 'Vo Dinh Thanh', '270 B Tan Binh p15 Quan Tan Binh. Tp .Ho Chi Minh', '0982 255 252', 'Thanh@yahoo.com.vn', '7', '1', null, null, '70000', '1', '1353989421');
INSERT INTO `pay_detail` VALUES ('12', '135398942150b43d2d8b82f', 'Phuong', 'Tran Phu Q5', '085455454', 'Phuong@gmail.com', '7', '5', null, null, '350000', '1', '1353989717');
INSERT INTO `pay_detail` VALUES ('13', '135398942150b43d2d8b82f', 'Phuong', 'Tran Phu Q5', '085455454', 'Phuong@gmail.com', '8', '1', null, null, '1500000', '1', '1353989717');
INSERT INTO `pay_detail` VALUES ('14', '135398942150b43d2d8b82f', 'Phuong', 'Tran Phu Q5', '085455454', 'Phuong@gmail.com', '7', '1', null, null, '70000', '1', '1353989717');
INSERT INTO `pay_detail` VALUES ('15', '135410990050b613cc44af3', 'Thanh', 'TB', '164654654654', 'thanh', '1', '2', null, null, '20000', '1', '1354110171');
INSERT INTO `pay_detail` VALUES ('16', '135410990050b613cc44af3', 'Thanh', 'TB', '164654654654', 'thanh', '9', '1', null, null, '15', '1', '1354110171');
INSERT INTO `pay_detail` VALUES ('17', '135410990050b613cc44af3', 'Thanh', 'TB', '164654654654', 'thanh', '12', '1', null, null, '700', '1', '1354110171');
INSERT INTO `pay_detail` VALUES ('18', '135410990050b613cc44af3', 'thnanh', 'TB', '7546464', 'thanh', '1', '2', null, null, '20000', '1', '1354110214');
INSERT INTO `pay_detail` VALUES ('19', '135410990050b613cc44af3', 'thnanh', 'TB', '7546464', 'thanh', '9', '1', null, null, '15', '1', '1354110214');
INSERT INTO `pay_detail` VALUES ('20', '135410990050b613cc44af3', 'thnanh', 'TB', '7546464', 'thanh', '12', '1', null, null, '700', '1', '1354110214');
INSERT INTO `pay_detail` VALUES ('21', '135410990050b613cc44af3', 'thnanh', 'TB', '7546464', 'thanh', '1', '2', null, null, '20000', '1', '1354110214');
INSERT INTO `pay_detail` VALUES ('22', '135410990050b613cc44af3', 'thnanh', 'TB', '7546464', 'thanh', '9', '1', null, null, '15', '1', '1354110214');
INSERT INTO `pay_detail` VALUES ('23', '135410990050b613cc44af3', 'thnanh', 'TB', '7546464', 'thanh', '12', '1', null, null, '700', '1', '1354110214');
INSERT INTO `pay_detail` VALUES ('24', '135410990050b613cc44af3', 'tjhanh', 'sdsdslk', '4846459', 'thanh', '1', '2', null, null, '20000', '1', '1354110259');
INSERT INTO `pay_detail` VALUES ('25', '135410990050b613cc44af3', 'tjhanh', 'sdsdslk', '4846459', 'thanh', '12', '1', null, null, '700', '1', '1354110259');
INSERT INTO `pay_detail` VALUES ('26', '135411084050b61778613f8', 'Phuong', 'TT', '46465164646', 'Phuong@yahoo.com', '1', '2', null, null, '20000', '1', '1354110872');
INSERT INTO `pay_detail` VALUES ('27', '135411084050b61778613f8', 'Phuong', 'TT', '46465164646', 'Phuong@yahoo.com', '12', '1', null, null, '700', '1', '1354110872');
INSERT INTO `pay_detail` VALUES ('28', '135411084050b61778613f8', 'Tuan', 'BT', '84464984984', 'Tuan@gmail.com', '1', '2', null, null, '20000', '1', '1354111174');
INSERT INTO `pay_detail` VALUES ('29', '137157029351c08075a725e', 'abc', '123 abc', '123123q', 'aaa@aaaa.com', '18', '12', '233', 'Xanh', '7872', '1', '1371570429');

-- ----------------------------
-- Table structure for pcounter_save
-- ----------------------------
DROP TABLE IF EXISTS `pcounter_save`;
CREATE TABLE `pcounter_save` (
  `save_name` varchar(10) NOT NULL,
  `save_value` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pcounter_save
-- ----------------------------
INSERT INTO `pcounter_save` VALUES ('day_time', '2457455');
INSERT INTO `pcounter_save` VALUES ('max_count', '14');
INSERT INTO `pcounter_save` VALUES ('counter', '49');
INSERT INTO `pcounter_save` VALUES ('yesterday', '0');
INSERT INTO `pcounter_save` VALUES ('online', '1');
INSERT INTO `pcounter_save` VALUES ('today', '1');
INSERT INTO `pcounter_save` VALUES ('max_time', '0');

-- ----------------------------
-- Table structure for pcounter_users
-- ----------------------------
DROP TABLE IF EXISTS `pcounter_users`;
CREATE TABLE `pcounter_users` (
  `user_ip` varchar(39) NOT NULL,
  `user_time` int(10) unsigned NOT NULL,
  UNIQUE KEY `user_ip` (`user_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pcounter_users
-- ----------------------------
INSERT INTO `pcounter_users` VALUES ('\'10.0.0.1\'', '1457347339');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `introtext` mediumtext NOT NULL,
  `fulltext` text NOT NULL,
  `home` tinyint(1) DEFAULT '0',
  `sectionid` int(11) DEFAULT '0',
  `catid` int(11) DEFAULT '0',
  `manufactory_id` int(11) DEFAULT '0',
  `made_in` int(11) DEFAULT '0',
  `created` int(10) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `modified` int(10) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `published` tinyint(1) DEFAULT '0',
  `public_time` int(10) DEFAULT '0',
  `images` text,
  `urls` text,
  `ordering` int(11) DEFAULT '0',
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `hits` int(11) DEFAULT '0',
  `params` text,
  `access` tinyint(1) DEFAULT '0',
  `price` varchar(20) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `price_new` varchar(20) DEFAULT NULL,
  `promotions` tinyint(1) DEFAULT '0',
  `new` tinyint(1) DEFAULT '0',
  `fast_selling` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'MÁY MAY 1 KIM 1', 'may-may-1-kim-1', 'Áo tennis Adidas xuất khẩu A01', 'Áo tennis Adidas xuất khẩu A01', '0', '3', '1', '0', '0', '1353736877', '0', '1457346268', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '1', null, null, null, '0', '{\"file\":{\"name\":\"image1.jpg\",\"type\":\"image\\/jpeg\",\"size\":15605,\"width\":280,\"height\":215,\"extension\":\"jpg\"}}', '0', '10000', null, null, '5000', '1', '0', '0');
INSERT INTO `products` VALUES ('2', 'MÁY MAY 2 KIM 1', 'may-may-2-kim1', 'Áo tennis Adidas xuất khẩu A02', 'Áo tennis Adidas xuất khẩu A02', '0', '3', '2', '0', '0', '1353737877', '0', '1354809738', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '2', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"racket_face\":\"\",\"racket_length\":\"\",\"racket_stretch\":\"\",\"racket_density\":\"\",\"balance\":\"aaaa\"}', '0', '1000', null, null, '2000', '0', '1', '0');
INSERT INTO `products` VALUES ('3', 'MÁY VẮT SỔ 1', 'may-vat-so', 'Áo tennis Adidas xuất khẩu A03', 'Áo tennis Adidas xuất khẩu A03', '0', '3', '3', '0', '0', '1353738877', '0', '0', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '3', null, null, null, '0', null, '0', '30000', null, null, '31000', '0', '0', '0');
INSERT INTO `products` VALUES ('4', 'MÁY VIỀN 1', 'may-vien', 'Áo tennis Adidas xuất khẩu A04', 'Áo tennis Adidas xuất khẩu A04', '0', '3', '4', '0', '0', '1353739877', '0', '0', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '4', null, null, null, '0', null, '0', '40000', null, null, '41000', '0', '0', '0');
INSERT INTO `products` VALUES ('5', 'MÁY NHIỀU KIM 1', 'may-nhieu-kim', 'Áo tennis Adidas xuất khẩu A05', 'Áo tennis Adidas xuất khẩu A05', '0', '3', '5', '0', '0', '1353740877', '0', '1421252962', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '5', null, null, null, '0', '{\"file\":{\"name\":\"Penguins.jpg\",\"type\":\"image\\/jpeg\",\"size\":777835,\"width\":1024,\"height\":768,\"extension\":\"jpg\"}}', '0', '50000', null, null, '51000', '0', '0', '1');
INSERT INTO `products` VALUES ('6', 'MÁY ĐÍNH NÚT 1', 'may-dinh-nut', 'Áo tennis Adidas xuất khẩu A06', 'Áo tennis Adidas xuất khẩu A06', '0', '3', '6', '0', '0', '1353741877', '0', '0', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', null, '0', '60000', null, null, '61000', '0', '0', '0');
INSERT INTO `products` VALUES ('7', 'MÁY THÙA KHUY 1', 'may-thua-khuy', 'Áo tennis Adidas xuất khẩu A07', 'Áo tennis Adidas xuất khẩu A07', '0', '3', '7', '0', '0', '1353742877', '0', '0', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"Tulips.jpg\",\"type\":\"image\\/jpeg\",\"size\":620888,\"width\":1024,\"height\":768,\"extension\":\"jpg\"}}', '0', '70000', null, null, '71000', '0', '0', '0');
INSERT INTO `products` VALUES ('8', 'MÁY ĐÍNH BỌ ĐIỆN TỬ 1', 'may-dinh-bo-dien-tu', 'sdsdsds', 'sdsdsdsdsdsds', '1', '3', '8', '0', '0', '1353743877', '0', '1353743928', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"42,45\",\"colors\":\"Xanh\",\"warranty\":\"1 anm\",\"manufacturer\":\"Nike\",\"material\":\"v\\u1ea3i \",\"weight\":\"1.5G\",\"origin\":\"USA\",\"file\":{\"name\":\"nub1188555544.jpg\",\"type\":\"image\\/jpeg\",\"size\":17361,\"width\":300,\"height\":300,\"extension\":\"jpg\"}}', '0', '1500000', '5000000', null, '1400000', '1', '0', '0');
INSERT INTO `products` VALUES ('9', 'MÁY LẬP  1', 'may-lap-trinh', 'sdsd', '<span style=\"margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 20px; background-color: rgb(247, 244, 244);\"><strong style=\"margin: 0px; padding: 0px; outline: 0px;\">Máy may 1 kim điện tử JACK JK-SHIRLEYLLN</strong></span><br style=\"margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(247, 244, 244);\"><strong style=\"margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(247, 244, 244);\">Descriptions:</strong><br style=\"margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(247, 244, 244);\"><span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(247, 244, 244);\">This is an economical type JK8991DY series with automatic thread trimmer and needle positioning, free speed adjustment, handy switch and automatic system for reverse feed function. Cost is reduced, while reserving the characteristic of semi-dry head, direct-drive, and energy-saving, high efficiency, lower noise and vibration, in order to provide customer with more choices.</span><div><strong style=\"margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(247, 244, 244);\">Descriptions:</strong><br style=\"margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(247, 244, 244);\"><span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(247, 244, 244);\">This is an economical type JK8991DY series with automatic thread trimmer and needle positioning, free speed adjustment, handy switch and automatic system for reverse feed function. Cost is reduced, while reserving the characteristic of semi-dry head, direct-drive, and energy-saving, high efficiency, lower noise and vibration, in order to provide customer with more choices.</span></div><div><strong style=\"margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(247, 244, 244);\">Descriptions:</strong><br style=\"margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(247, 244, 244);\"><span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(247, 244, 244);\">This is an economical type JK8991DY series with automatic thread trimmer and needle positioning, free speed adjustment, handy switch and automatic system for reverse feed function. Cost is reduced, while reserving the characteristic of semi-dry head, direct-drive, and energy-saving, high efficiency, lower noise and vibration, in order to provide customer with more choices.</span></div><div><strong style=\"margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(247, 244, 244);\">Descriptions:</strong><br style=\"margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(247, 244, 244);\"><span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(247, 244, 244);\">This is an economical type JK8991DY series with automatic thread trimmer and needle positioning, free speed adjustment, handy switch and automatic system for reverse feed function. Cost is reduced, while reserving the characteristic of semi-dry head, direct-drive, and energy-saving, high efficiency, lower noise and vibration, in order to provide customer with more choices.</span></div>', '1', '3', '9', '0', '0', '1353745587', '0', '1457197473', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"image1.jpg\",\"type\":\"image\\/jpeg\",\"size\":15605,\"width\":280,\"height\":215,\"extension\":\"jpg\"}}', '0', '15', '12', null, '13', '1', '1', '1');
INSERT INTO `products` VALUES ('10', 'MÁY BƯỚC', 'may-buoc', 'sds', 'dsds', '1', '3', '10', '0', '0', '1353745671', '0', '1353745671', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '1', null, null, null, '0', '{\"size\":\"55\",\"colors\":\"vang\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"jennifer-pham.jpg\",\"type\":\"image\\/jpeg\",\"size\":187635,\"width\":400,\"height\":601,\"extension\":\"jpg\"}}', '0', '52', '12', null, '30', '1', '1', '0');
INSERT INTO `products` VALUES ('11', 'MÁY MAY 1 KIM 2', 'may-may-1-kim-2', 'giày thể thao', 'giày thể thao', '1', '3', '1', '0', '0', '1353911574', '0', '1353911574', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"V\\u00e0ng, \\u0110en, \\u0110\\u1ecf\",\"warranty\":\"6 Th\\u00e1ng\",\"manufacturer\":\"Babolat\",\"material\":\"V\\u1ea3i\",\"weight\":\"0.5G\",\"origin\":\"H\\u00e0ng Qu\\u1ed1c\",\"file\":{\"name\":\"images (3).jpg\",\"type\":\"image\\/jpeg\",\"size\":7569,\"width\":225,\"height\":225,\"extension\":\"jpg\"}}', '0', '850.000', null, null, '800.000', '0', '1', '1');
INSERT INTO `products` VALUES ('12', 'MÁY MAY 2 KIM 2', 'may-may-2-kim2', 'Ba lô, túi thể thao', 'Ba lô, túi thể thao', '1', '3', '2', '0', '0', '1353911795', '0', '1353911888', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\\u0110\\u1ecf\",\"warranty\":\"\",\"manufacturer\":\"Babolat\",\"material\":\"V\\u1ea3i\",\"weight\":\"1kg\",\"origin\":\"H\\u00e0n Qu\\u1ed1c\",\"file\":{\"name\":\"10.jpg\",\"type\":\"image\\/jpeg\",\"size\":75534,\"width\":382,\"height\":299,\"extension\":\"jpg\"}}', '0', '700.000', null, null, '800.000', '0', '1', '0');
INSERT INTO `products` VALUES ('13', 'MÁY VẮT SỔ 2', 'may-vat-so', 'Giày thể thao,', 'Giày thể thao,', '1', '3', '3', '0', '0', '1353994365', '0', '1353994401', '0', '1', '0', 'uploads/photos/image1.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"image1.jpg\",\"type\":\"image\\/jpeg\",\"size\":8130,\"width\":153,\"height\":120,\"extension\":\"jpg\"},\"size\":\"39,40,41,42\",\"colors\":\"Xanh\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"0.3 kg\",\"origin\":\"\"}', '0', '800.000', null, null, '750.000', '0', '1', '0');
INSERT INTO `products` VALUES ('14', 'MÁY VIỀN 2', 'may-vien', 'vợt tennis wilson', 'vợt tennis wilson', '1', '3', '4', '0', '0', '1354345020', '0', '1354345184', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"3 th\\u00e1ng\",\"manufacturer\":\"wilson\",\"material\":\"\",\"weight\":\"267g\",\"origin\":\"ch\\u00ednh h\\u00e3ng\",\"file\":{\"name\":\"W-BLX EVY-267G-100IN-2012.JPG\",\"type\":\"image\\/jpeg\",\"size\":61807,\"width\":300,\"height\":400,\"extension\":\"JPG\"}}', '0', '', null, null, '2100000', '0', '1', '0');
INSERT INTO `products` VALUES ('15', 'MÁY NHIỀU KIM 2', 'may-nhieu-kim', 'tést', 'tést', '1', '3', '5', '0', '0', '1354345309', '0', '1354345309', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"do\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"V\\u1ee2T TR\\u1eba EM WILSON.JPG\",\"type\":\"image\\/jpeg\",\"size\":71265,\"width\":300,\"height\":400,\"extension\":\"JPG\"}}', '0', '', null, null, '2100000', '0', '1', '0');
INSERT INTO `products` VALUES ('16', 'MÁY ĐÍNH NÚT 2', 'may-dinh-nut', 'ggfdg', 'gdgd', '1', '3', '6', '0', '0', '1354346305', '0', '1354346328', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"V\\u1ee2T TR\\u1eba EM WILSON.JPG\",\"type\":\"image\\/jpeg\",\"size\":71265,\"width\":300,\"height\":400,\"extension\":\"JPG\"},\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\"}', '0', '6565', null, null, '776567', '0', '1', '0');
INSERT INTO `products` VALUES ('17', 'MÁY ĐÍNH NÚT 3', 'may-dinh-nut', '4545', '544', '1', '3', '6', '0', '0', '1354346490', '0', '1354346526', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"jennifer-pham.jpg\",\"type\":\"image\\/jpeg\",\"size\":187635,\"width\":400,\"height\":601,\"extension\":\"jpg\"}}', '0', '', null, null, '455', '0', '1', '0');
INSERT INTO `products` VALUES ('18', 'MÁY THÙA KHUY 2', 'may-thua-khuy', 'fdfvdf', 'dfefs', '1', '3', '7', '0', '0', '1354346614', '0', '1354346614', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"images (3).jpg\",\"type\":\"image\\/jpeg\",\"size\":7569,\"width\":225,\"height\":225,\"extension\":\"jpg\"}}', '0', '6565', null, null, '656', '0', '1', '0');
INSERT INTO `products` VALUES ('19', 'MÁY ĐÍNH BỌ ĐIỆN TỬ 2', 'may-dinh-bo-dien-tu', '<font face=\"Arial, Verdana\" size=\"2\">ÁO KHOÁC TENNIS ADIDAS-D1</font>', '<font face=\"Arial, Verdana\" size=\"2\">ÁO KHOÁC TENNIS ADIDAS-D1</font>', '1', '3', '8', '0', '0', '1354346916', '0', '1354347081', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"\\u00c1O KHO\\u00c1C TENNIS ADIDAS-D1.JPG\",\"type\":\"image\\/jpeg\",\"size\":60095,\"width\":533,\"height\":400,\"extension\":\"JPG\"}}', '0', '', null, null, '', '0', '0', '1');
INSERT INTO `products` VALUES ('20', 'MÁY ĐÍNH BỌ ĐIỆN TỬ 3', 'may-dinh-bo-dien-tu', '<font face=\"Arial, Verdana\" size=\"2\">ÁO KHOÁC TENNIS ADIDAS-D2</font>', '<font face=\"Arial, Verdana\" size=\"2\">ÁO KHOÁC TENNIS ADIDAS-D2</font>', '1', '3', '8', '0', '0', '1354347153', '0', '1354347153', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"\\u00c1O KHO\\u00c1C TENNIS ADIDAS-D2.JPG\",\"type\":\"image\\/jpeg\",\"size\":63459,\"width\":533,\"height\":400,\"extension\":\"JPG\"}}', '0', '', null, null, '', '1', '0', '1');
INSERT INTO `products` VALUES ('21', 'MÁY LẬP TRÌNH 2', 'may-lap-trinh', '<font face=\"Arial, Verdana\" size=\"2\">ÁO KHOÁC TENNIS ADIDAS-D3</font>', '<font face=\"Arial, Verdana\" size=\"2\">ÁO KHOÁC TENNIS ADIDAS-D3</font>', '1', '3', '9', '0', '0', '1354347247', '0', '1354347247', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"\\u00c1O KHO\\u00c1C TENNIS ADIDAS-D3.JPG\",\"type\":\"image\\/jpeg\",\"size\":68850,\"width\":533,\"height\":400,\"extension\":\"JPG\"}}', '0', '', null, null, '', '0', '0', '1');
INSERT INTO `products` VALUES ('22', 'MÁY THÙA KHUY 3', 'ao-tennis-adidas-d1', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS ADIDAS-D1</font>', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS ADIDAS-D1</font>', '1', '3', '7', '0', '0', '1354347303', '0', '1354347366', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"\\u00c1O TENNIS ADIDAS-D1.JPG\",\"type\":\"image\\/jpeg\",\"size\":57928,\"width\":533,\"height\":400,\"extension\":\"JPG\"}}', '0', '', null, null, '', '0', '1', '0');
INSERT INTO `products` VALUES ('23', 'MÁY ĐÍNH NÚT 4', 'may-dinh-nut', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS ADIDAS-D2</font>', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS ADIDAS-D2</font>', '1', '3', '6', '0', '0', '1354347628', '0', '1354347628', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"\\u00c1O TENNIS ADIDAS-D2.JPG\",\"type\":\"image\\/jpeg\",\"size\":65142,\"width\":533,\"height\":400,\"extension\":\"JPG\"}}', '0', '', null, null, '', '1', '0', '1');
INSERT INTO `products` VALUES ('24', 'MÁY NHIỀU KIM 3', 'may-nhieu-kim', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS ADIDAS-D3</font>', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS ADIDAS-D3</font>', '1', '3', '5', '0', '0', '1354347821', '0', '1354347821', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"\\u00c1O TENNIS ADIDAS-D3.JPG\",\"type\":\"image\\/jpeg\",\"size\":68146,\"width\":533,\"height\":400,\"extension\":\"JPG\"}}', '0', '', null, null, '', '0', '1', '1');
INSERT INTO `products` VALUES ('25', 'MÁY VIỀN 3', 'may-vien', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS ADIDAS-D3</font>', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS ADIDAS-D3</font>', '1', '3', '4', '0', '0', '1354347822', '0', '1354347822', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"\\u00c1O TENNIS ADIDAS-D3.JPG\",\"type\":\"image\\/jpeg\",\"size\":68146,\"width\":533,\"height\":400,\"extension\":\"JPG\"}}', '0', '', null, null, '', '0', '1', '1');
INSERT INTO `products` VALUES ('26', 'MÁY VẮT SỔ 3', 'may-vat-so', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS ADIDAS-D4</font>', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS ADIDAS-D4</font>', '1', '3', '3', '0', '0', '1354347929', '0', '1354347929', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"\\u00c1O TENNIS ADIDAS-D4.JPG\",\"type\":\"image\\/jpeg\",\"size\":60545,\"width\":533,\"height\":400,\"extension\":\"JPG\"}}', '0', '', null, null, '', '1', '0', '1');
INSERT INTO `products` VALUES ('27', 'MÁY ĐÍNH NÚT 5', 'may-dinh-nut', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS ADIDAS-D5</font>', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS ADIDAS-D5</font>', '1', '3', '6', '0', '0', '1354347929', '0', '1354348021', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"\\u00c1O TENNIS ADIDAS-D4.JPG\",\"type\":\"image\\/jpeg\",\"size\":60545,\"width\":533,\"height\":400,\"extension\":\"JPG\"},\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\"}', '0', '', null, null, '', '1', '0', '1');
INSERT INTO `products` VALUES ('28', 'MÁY VIỀN 4', 'may-vien', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS NIKE-N1</font>', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS NIKE-N1ÁO TENNIS NIKE-N1ÁO TENNIS NIKE-N1ÁO TENNIS NIKE-N1</font>', '1', '3', '4', '0', '0', '1354348166', '0', '1354348166', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\"}', '0', '', null, null, '', '0', '0', '1');
INSERT INTO `products` VALUES ('29', 'MÁY NHIỀU KIM 4', 'may-nhieu-kim', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS NIKE-N2</font>', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS NIKE-N2</font>', '1', '3', '5', '0', '0', '1354348316', '0', '1354348316', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"\\u00c1O TENNIS NIKE-N2.JPG\",\"type\":\"image\\/jpeg\",\"size\":60381,\"width\":533,\"height\":400,\"extension\":\"JPG\"}}', '0', '', null, null, '', '0', '0', '0');
INSERT INTO `products` VALUES ('30', 'MÁY VẮT SỔ 4', 'may-vat-so', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS NIKE-N3</font>', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS NIKE-N3</font>', '1', '3', '3', '0', '0', '1354348386', '0', '1354348386', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"\\u00c1O TENNIS NIKE-N3.JPG\",\"type\":\"image\\/jpeg\",\"size\":63316,\"width\":533,\"height\":400,\"extension\":\"JPG\"}}', '0', '', null, null, '', '0', '0', '1');
INSERT INTO `products` VALUES ('31', 'MÁY ĐÍNH NÚT 6', 'may-dinh-nut', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS NIKE-N4</font>', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS NIKE-N4</font>', '1', '3', '6', '0', '0', '1354348442', '0', '1354348442', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"\\u00c1O TENNIS NIKE-N4.JPG\",\"type\":\"image\\/jpeg\",\"size\":64726,\"width\":533,\"height\":400,\"extension\":\"JPG\"}}', '0', '', null, null, '', '0', '0', '1');
INSERT INTO `products` VALUES ('32', 'MÁY VẮT SỔ 5', 'may-vat-so', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS NIKE-N5</font>', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS NIKE-N5</font>', '1', '3', '3', '0', '0', '1354348481', '0', '1354348481', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\",\"file\":{\"name\":\"\\u00c1O TENNIS NIKE-N5.JPG\",\"type\":\"image\\/jpeg\",\"size\":64983,\"width\":533,\"height\":400,\"extension\":\"JPG\"}}', '0', '', null, null, '', '0', '0', '1');
INSERT INTO `products` VALUES ('33', 'MÁY MAY 2 KIM 3', 'may-may-2-kim3', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS NIKE-N6</font>', '<font face=\"Arial, Verdana\" size=\"2\">ÁO TENNIS NIKE-N6</font>', '1', '3', '2', '0', '0', '1354348516', '0', '1354352649', '0', '1', '0', '/uploads/photos/07-03-2016-CV-10-24-28-AM56dd56dc58c47.jpg', null, '0', null, null, null, '0', '{\"size\":\"\",\"colors\":\"\",\"warranty\":\"\",\"manufacturer\":\"\",\"material\":\"\",\"weight\":\"\",\"origin\":\"\"}', '0', '', '10', null, '', '0', '0', '1');

-- ----------------------------
-- Table structure for sections
-- ----------------------------
DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) DEFAULT NULL,
  `images` text,
  `description` text NOT NULL,
  `published` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `access` tinyint(1) DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sections
-- ----------------------------
INSERT INTO `sections` VALUES ('1', 'Home', null, null, '', '0', '0', '0', null);
INSERT INTO `sections` VALUES ('2', 'Sản phẩm', null, null, '', '0', '0', '0', null);
INSERT INTO `sections` VALUES ('3', 'Thương Hiệu', null, null, '', '0', '0', '0', null);
INSERT INTO `sections` VALUES ('4', 'Dịch Vụ', null, null, '', '0', '0', '0', null);
INSERT INTO `sections` VALUES ('5', 'Đối Tác', null, null, '', '0', '0', '0', null);
INSERT INTO `sections` VALUES ('6', 'Giảm giá - Khuyến mãi', null, null, '', '0', '0', '0', null);
INSERT INTO `sections` VALUES ('7', 'Liên hệ', null, null, '', '0', '0', '0', null);

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` char(32) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('21oltlm9ptlpkdgm9ds3s7qaq7', '1457348066', '');
INSERT INTO `sessions` VALUES ('9khsafatk7mfnln1b2ckc7aim4', '1457348065', '');
INSERT INTO `sessions` VALUES ('aelkmmncvtgaivchd4o1sq42a4', '1457348063', '');
INSERT INTO `sessions` VALUES ('b114ga0v9iaejujqk7euqbuu32', '1457348060', '');
INSERT INTO `sessions` VALUES ('bq80umtlpakbs37sppm9umhgb4', '1457348062', '');
INSERT INTO `sessions` VALUES ('gh1kfcqkmgimbla48bo5i1guk3', '1457348060', '');
INSERT INTO `sessions` VALUES ('gvh0u7bti9lbb6anhcqaj62is5', '1457348067', '');
INSERT INTO `sessions` VALUES ('hhopqtr4hqmjqv6nvbegfs4si4', '1457348056', '');
INSERT INTO `sessions` VALUES ('igl3ohcnp4o7qnho36mrr3kbr6', '1457347693', '');
INSERT INTO `sessions` VALUES ('irur3fa982rqf06h6kdcf801v4', '1457348239', '');
INSERT INTO `sessions` VALUES ('m3egeah2kt89j0bt2f0oeo0362', '1457348238', '');
INSERT INTO `sessions` VALUES ('n170psomsop1e0hqp8bhfv9fu5', '1457348055', '');
INSERT INTO `sessions` VALUES ('qch02fuemnv74jhd8iq70p1f45', '1457347696', '');
INSERT INTO `sessions` VALUES ('sm5lej45oh26958emh2otget66', '1457347679', '');
INSERT INTO `sessions` VALUES ('u7heh011lpt2jpd0go6anko9b1', '1457348065', '');
INSERT INTO `sessions` VALUES ('urpfm2nukonpo7o7ifsrjsn3g7', '1457348066', '');
INSERT INTO `sessions` VALUES ('user', '1457347679', 0x7B226964223A223134353733343637373935366464353864623136623135227D);
INSERT INTO `sessions` VALUES ('vq4rrjnerc7eele4b82ubq1ue6', '1457348067', '');

-- ----------------------------
-- Table structure for translation
-- ----------------------------
DROP TABLE IF EXISTS `translation`;
CREATE TABLE `translation` (
  `message` varbinary(255) NOT NULL,
  `translation` varchar(255) NOT NULL,
  `language` varchar(5) NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`message`,`language`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of translation
-- ----------------------------
INSERT INTO `translation` VALUES (0x41626F7574, 'Über', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41626F7574, 'Acerca', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41626F7574, 'me concernant ??', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41626F7574, 'Info', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41626F7574, 'Info', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x41636365737320636F6E74726F6C, 'Zugangskontrolle', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41636365737320636F6E74726F6C, 'Controle d acces', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41636365737320636F6E74726F6C, 'Controllo accesso', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E, 'Aktion', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E, 'Acción', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E, 'Action', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E, 'Azione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E73, 'Aktionen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E73, 'Acciones', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E73, 'Actions', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E73, 'Azioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416374697661746564, 'erstmalig Aktiviert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416374697661746564, 'PremiÃ¨re activation de votre compte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416374697661746564, 'Attivato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416374697665, 'Aktiv', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416374697665, 'Activo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416374697665, 'Actif', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416374697665, 'Attiv', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416374697665, 'Aktiv', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x416374697665, 'ÐÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x416374697665202D204669727374207669736974, 'Aktiv - erster Besuch', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416374697665202D204669727374207669736974, 'Actif - premiÃ¨re visite', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416374697665202D204669727374207669736974, 'Attivo - Priva visita', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416374697665207573657273, 'Aktive Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416374697665207573657273, 'Usuarios activos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416374697665207573657273, 'Utiliateurs actifs', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416374697665207573657273, 'Utenti attivi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416374697665207573657273, 'Aktywni uÅ¼ytkownicy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x41637469766974696573, 'Aktivitäten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41637469766974696573, 'Actividades', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41637469766974696573, 'ActivitÃ©s', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41637469766974696573, 'AttivitÃ ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416464206173206120667269656E64, 'Zur Kontaktliste hinzufügen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416464206173206120667269656E64, 'Agregar como amigo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416464206173206120667269656E64, 'Ajouter Ã  ma liste de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416464206173206120667269656E64, 'Aggiungi un contatto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E20696E626F78, 'Administratorposteingang', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E20696E626F78, 'Bandeja de entrada de Admin', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E20696E626F78, 'Boite e-mail de l administrateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E20696E626F78, 'Admin - Posta in arrivo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E20696E626F78, 'ZarzÄ…dzaj skrzynkÄ… odbiorczÄ…', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2073656E74206D65737361676573, 'Gesendete Nachrichten des Administrators', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2073656E74206D65737361676573, 'Mensajes enviados de Admin', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2073656E74206D65737361676573, 'E-mail envoyÃ© par l administrateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2073656E74206D65737361676573, 'Admin - Messaggi inviati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2073656E74206D65737361676573, 'WiadomoÅ›ci wysÅ‚ane przez administratora', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E207573657273, 'Administratoren', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E207573657273, 'Usuarios administradores', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E207573657273, 'Administrateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E207573657273, 'Utenti admin', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E207573657273, 'Administratorzy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2075736572732063616E206E6F742062652064656C6574656421, 'Administratoren können nicht gelöscht werden', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2075736572732063616E206E6F742062652064656C6574656421, '¡No se pueden eliminar los usuarios Administradores!', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2075736572732063616E206E6F742062652064656C6574656421, 'UN compte administrateur ne peut pas Ãªtre supprimÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2075736572732063616E206E6F742062652064656C6574656421, 'Utente admin non cancellabile!', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2075736572732063616E206E6F742062652064656C6574656421, 'Nie moÅ¼na usunÄ…Ä‡ konta administratora', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x416C6C, 'Alle', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416C6C, 'Ade tous', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416C6C, 'Tutto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F772070726F66696C6520636F6D6D656E7473, 'Profilkommentare erlauben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F772070726F66696C6520636F6D6D656E7473, 'Permitir comentarios en perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F772070726F66696C6520636F6D6D656E7473, 'Autoriser les commentaires de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F772070726F66696C6520636F6D6D656E7473, 'Consenti commenti profili', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420617265206C6F77657263617365206C65747465727320616E64206469676974732E, 'Erlaubt sind Kleinbuchstaben und Ziffern.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420617265206C6F77657263617365206C65747465727320616E64206469676974732E, 'Se permiten letras minúsculas y dígitos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420617265206C6F77657263617365206C65747465727320616E64206469676974732E, 'Seules les minuscule et les chiffres sont autorisÃ©s.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420617265206C6F77657263617365206C65747465727320616E64206469676974732E, 'Sono consentiti lettere minuscole e numeri.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420617265206C6F77657263617365206C65747465727320616E64206469676974732E, 'Erlaubt sind Kleinbuchstaben und Ziffern.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F776564206C6F77657263617365206C65747465727320616E64206469676974732E, 'Consenti lettere minuscole e numeri.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F776564206C6F77657263617365206C65747465727320616E64206469676974732E, 'Ð”Ð¾Ð¿ÑƒÑÐºÐ°ÑŽÑ‚ÑÑ ÑÑ‚Ñ€Ð¾Ñ‡Ð½Ñ‹Ðµ Ð±ÑƒÐºÐ²Ñ‹ Ð¸ Ñ†Ð¸Ñ„Ñ€Ñ‹.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420726F6C6573, 'Erlaubte Rollen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420726F6C6573, 'Roles permitidos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420726F6C6573, 'Permission rÃ´le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420726F6C6573, 'Ruoli autorizzati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420726F6C6573, 'DostÄ™pne role', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F776564207573657273, 'Erlaubte Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F776564207573657273, 'Usuarios permitidos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F776564207573657273, 'Permission utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F776564207573657273, 'Utenti autorizzati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F776564207573657273, 'DostÄ™pni uÅ¼ytkownicy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x416C7265616479206578697374732E, 'Existiert bereits.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416C7265616479206578697374732E, 'Ya existe.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416C7265616479206578697374732E, 'Existe dÃ©jÃ .', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416C7265616479206578697374732E, 'GiÃ  esistente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416C7265616479206578697374732E, 'Existiert bereits.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x416C7265616479206578697374732E, 'Ð£Ð¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C6520736176696E6720796F7572206368616E676573, 'Es ist ein Fehler aufgetreten.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C6520736176696E6720796F7572206368616E676573, 'Ocurrió un error al guardar los cambios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C6520736176696E6720796F7572206368616E676573, 'Une erreur est survenue.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C6520736176696E6720796F7572206368616E676573, 'Si Ã¨ verificato un errore durante il salvataggio delle modifiche.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C6520736176696E6720796F7572206368616E676573, 'WystÄ…piÅ‚ bÅ‚Ä…d podczas zapisywania Twoich zmian.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C652075706C6F6164696E6720796F75722061766174617220696D616765, 'Ein Fehler ist beim hochladen ihres Profilbildes aufgetreten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C652075706C6F6164696E6720796F75722061766174617220696D616765, 'Une erreur est survenue lors du chargement de votre photo de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C652075706C6F6164696E6720796F75722061766174617220696D616765, 'Si Ã¨ verificato un errore durante il caricamento dell\'immagine', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416E73776572, 'Antworten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41707065617220696E20736561726368, 'In der Suche erscheinen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41707065617220696E20736561726368, 'Je souhaite apparaitre dans les rÃ©sultats de recherche', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41707065617220696E20736561726368, 'Mostra nelle ricerche', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207265616C6C79207375726520796F752077616E7420746F2064656C65746520796F7572204163636F756E743F, 'Sind Sie Sicher, dass Sie Ihren Zugang löschen wollen?', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207265616C6C79207375726520796F752077616E7420746F2064656C65746520796F7572204163636F756E743F, '¿Seguro que desea eliminar su cuenta?', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207265616C6C79207375726520796F752077616E7420746F2064656C65746520796F7572204163636F756E743F, 'Etes vous sur de vouloir supprimer votre compte?', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207265616C6C79207375726520796F752077616E7420746F2064656C65746520796F7572204163636F756E743F, 'Sicuro di voler cancellare il tuo account?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207265616C6C79207375726520796F752077616E7420746F2064656C65746520796F7572204163636F756E743F, 'Czy jesteÅ› pewien, Å¼e chcesz usunÄ…Ä‡ konto?', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2064656C6574652074686973206974656D3F, 'Sind Sie sicher, dass Sie dieses Element wirklich löschen wollen? ', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2064656C6574652074686973206974656D3F, '¿Seguro desea eliminar este elemento?', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2064656C6574652074686973206974656D3F, 'Etes vous sur de supprimÃ© cet elÃ©ment? ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2064656C6574652074686973206974656D3F, 'Sicuro di cancellare questo elemento?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2064656C6574652074686973206974656D3F, 'Ð’Ñ‹ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ?', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2072656D6F7665207468697320636F6D6D656E742066726F6D20796F75722070726F66696C653F, 'Sind Sie sicher, dass sie diesen Kommentar entfernen wollen?', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2072656D6F7665207468697320636F6D6D656E742066726F6D20796F75722070726F66696C653F, '¿Estás seguro que deseas borrar este comentario?', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2072656D6F7665207468697320636F6D6D656E742066726F6D20796F75722070726F66696C653F, 'Etes vous sur de vouloir supprimer ce commentaire?', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2072656D6F7665207468697320636F6D6D656E742066726F6D20796F75722070726F66696C653F, 'Sicuro di voler eliminare il commento dal tuo profilo?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520796F752077616E7420746F2072656D6F7665207468697320667269656E643F, 'Sind Sie sicher, dass Sie diesen Kontakt aus ihrer Liste entfernen wollen?', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520796F752077616E7420746F2072656D6F7665207468697320667269656E643F, 'ÃŠtes vous sur de vouloir suprimer ce membre de votre liste de contact?', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520796F752077616E7420746F2072656D6F7665207468697320667269656E643F, 'Sicuro di voler rimuovere questo contatto?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41737369676E207468697320726F6C6520746F206E6577207573657273206175746F6D61746963616C6C79, 'Rolle automatisch an neue Benutzer zuweisen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41737369676E207468697320726F6C6520746F206E6577207573657273206175746F6D61746963616C6C79, 'RÃ´le automatique pour un nouveau membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41737369676E207468697320726F6C6520746F206E6577207573657273206175746F6D61746963616C6C79, 'Assegna questo ruolo automaticamente ai nuovi utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41766174617220696D616765, 'Profilbild', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41766174617220696D616765, 'Tu Avatar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41766174617220696D616765, 'Image de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41766174617220696D616765, 'Avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4261636B, 'Zurück', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4261636B, 'Volver', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4261636B, 'Retour', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4261636B, 'Indietro', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F20696E626F78, 'Zurück zum Posteingang', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F20696E626F78, 'Volver a la bandeja de entrada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F20696E626F78, 'Retour Ã  la boite mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F20696E626F78, 'Torna alla posta in arrivo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F206D792050726F66696C65, 'Zurück zu meinem Profil', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F206D792050726F66696C65, 'Volver a mi Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F206D792050726F66696C65, 'Retour Ã  mon profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F206D792050726F66696C65, 'Torna al mio profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F2070726F66696C65, 'Zurück zum Profil', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F2070726F66696C65, 'Volver a perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F2070726F66696C65, 'Retour au profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F2070726F66696C65, 'Torna al mio profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F2070726F66696C65, 'ZurÃ¼ck zum Profil', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564, 'Verbannt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564, 'Excluido', 'es', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564, 'Membre banni', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564, 'Bannato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564, 'Verbannt', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564, 'Ð—Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ð½', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564207573657273, 'Gesperrte Benuter', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564207573657273, 'Usuarios excluidos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564207573657273, 'Utilisateur bloquÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564207573657273, 'Utenti bannati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564207573657273, 'Zbanowani uÅ¼ytkownicy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365, 'Durchsuchen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42726F7773652067726F757073, 'Buscar grupos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365206C6F6767656420757365722061637469766974696573, 'Benutzeraktivitäten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365206C6F6767656420757365722061637469766974696573, 'Consultar bitácora de actividades del usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365206C6F6767656420757365722061637469766974696573, 'ActivitÃ© des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365206C6F6767656420757365722061637469766974696573, 'Naviga attivitÃ  utenti loggati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365206D656D6265727368697073, 'Mitgliedschaften kaufen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365206D656D6265727368697073, 'Mitgliedschaften kaufen ??', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365206D656D6265727368697073, 'Naviga iscrizioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x42726F77736520757365722061637469766974696573, 'Tätigkeitenhistorie', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42726F77736520757365722061637469766974696573, 'ActivitÃ© de mon compte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42726F77736520757365722061637469766974696573, 'Naviga attivitÃ  utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x42726F77736520757365722067726F757073, 'Benutzergruppen durchsuchen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42726F77736520757365722067726F757073, 'Buscar grupos de usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x42726F77736520757365722067726F757073, 'Rechercher dans un grouppe d utilisateurs', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42726F77736520757365722067726F757073, 'Naviga gruppi utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365207573657267726F757073, 'Gruppen durchsuchen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365207573657267726F757073, 'Rechercher dans les grouppes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365207573657267726F757073, 'Naviga gruppi utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365207573657273, 'Benutzer durchsuchen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365207573657273, 'Buscar usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365207573657273, 'Rechercher dans la liste des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365207573657273, 'Naviga utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C, 'Abbrechen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C, 'Cancelar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C, 'Annuler', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C, 'Cancella', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2064656C6574696F6E, 'Löschvorgang abbrechen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2064656C6574696F6E, 'Cancelar eliminación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2064656C6574696F6E, 'Stopper la suppression', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2064656C6574696F6E, 'Annulla cancellazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2064656C6574696F6E, 'Anuluj usuwanie', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2072657175657374, 'Anfrage zurückziehen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2072657175657374, 'Annuler la demande de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2072657175657374, 'Cancella richiesta', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43616E6E6F74207365742070617373776F72642E2054727920616761696E2E, 'No pudimos guardar tu contraseña. Inténtalo otra vez', 'es', 'yum');
INSERT INTO `translation` VALUES (0x43617465676F7279, 'Kategorie', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652050617373776F7264, 'Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652061646D696E2050617373776F7264, 'Administratorpasswort ändern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652061646D696E2050617373776F7264, 'Cambiar contraseña de Admin', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652061646D696E2050617373776F7264, 'Changer le mot de passe de l administrateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652061646D696E2050617373776F7264, 'Modifica password admin', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652061646D696E2050617373776F7264, 'ZmieÅ„ hasÅ‚o administratora', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652070617373776F7264, 'Passwort ändern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652070617373776F7264, 'Cambiar contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652070617373776F7264, 'Modification du mot de ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652070617373776F7264, 'Cambia password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652070617373776F7264, 'Passwort Ã¤ndern', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4368616E676573, 'Änderungen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4368616E676573, 'Cambios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4368616E676573, 'Modification', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4368616E676573, 'Modifiche', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4368616E676573, 'Zmiany', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67657320617265207361766564, 'Änderungen wurden gespeichert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67657320617265207361766564, 'Cambios guardados', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67657320617265207361766564, 'Les modifications ont bien Ã©tÃ© enregistrÃ©es.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67657320617265207361766564, 'Modifiche salvate.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67657320617265207361766564, 'Zmiany zostaÅ‚y zapisane.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4368616E6765732069732073617665642E, 'Änderungen wurde gespeichert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4368616E6765732069732073617665642E, 'Cambio guardado', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4368616E6765732069732073617665642E, 'Modifications mÃ©morisÃ©es.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4368616E6765732069732073617665642E, 'Modifiche salvate', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4368616E6765732069732073617665642E, 'Ð˜Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½Ñ‹.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x43686F6F736520416C6C, 'Alle auswählen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x43686F6F736520416C6C, 'Seleccionar todos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x43686F6F736520416C6C, 'SÃ©lectioner tout', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x43686F6F736520416C6C, 'Scegli tutti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43686F6F736520416C6C, 'Wybierz wszystkie', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x43697479, 'Stadt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x43697479, 'Ciudad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x43697479, 'Ville', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x43697479, 'CittÃ ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43697479, 'Miasto', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x436F6C756D6E204669656C64207479706520696E207468652064617461626173652E, 'Spaltentyp in der Datenbank', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6C756D6E204669656C64207479706520696E207468652064617461626173652E, 'Columna tipo de Campo en la base de datos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x436F6C756D6E204669656C64207479706520696E207468652064617461626173652E, 'Type de la colone dans la banque de donnÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6C756D6E204669656C64207479706520696E207468652064617461626173652E, 'Tipo di colonna nel database', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6C756D6E204669656C64207479706520696E207468652064617461626173652E, 'Spaltentyp in der Datenbank', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x436F6D6D656E74, 'Kommentar', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6D6D656E74, 'Comentario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x436F6D6D656E74, 'Commentaire', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6D6D656E74, 'Commento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F7365, 'Nachricht schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F7365, 'Ecrire un message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F7365, 'Scrivi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F7365206E6577206D657373616765, 'Nachricht schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F7365206E6577206D657373616765, 'Crear mensaje nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F7365206E6577206D657373616765, 'Ecrire un nouveau message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F7365206E6577206D657373616765, 'Scrivi nuovo messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F73696E67206E6577206D657373616765, 'Nachricht schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F73696E67206E6577206D657373616765, 'Creando mensaje nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F73696E67206E6577206D657373616765, 'Ecrire un nouveau message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F73696E67206E6577206D657373616765, 'Scrittura nuovo messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D, 'Bestätigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D, 'Confirmar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D, 'Confirmer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D, 'Conferma', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D2064656C6574696F6E, 'Löschvorgang bestätigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D2064656C6574696F6E, 'Confirmar eliminación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D2064656C6574696F6E, 'Confirmation de suppression', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D2064656C6574696F6E, 'Conferma cancellazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D2064656C6574696F6E, 'PotwierdÅº usuwanie', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D6174696F6E2070656E64696E67, 'Bestätigung ausstehend', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D6174696F6E2070656E64696E67, 'Esperando confirmación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D6174696F6E2070656E64696E67, 'Confirmation en attente', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D6174696F6E2070656E64696E67, 'In attesa di conferma', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6E74656E74, 'Inhalt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6E74656E74, 'Texte du message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6E74656E74, 'Contenuto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465, 'Anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465, 'Crear', 'es', 'yum');
INSERT INTO `translation` VALUES (0x437265617465, 'CÃ©er', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465, 'Aggiungi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465, 'Dodaj', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x437265617465, 'ÐÐ¾Ð²Ñ‹Ð¹', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520416374696F6E, 'Crea azione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652050726F66696C65204669656C64, 'Profilfeld anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652050726F66696C65204669656C64, 'Crear Campo de Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652050726F66696C65204669656C64, 'Nouveau champ de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652050726F66696C65204669656C64, 'Aggiungi campo Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652050726F66696C65204669656C64, 'Dodaj pole profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652050726F66696C65204669656C64, 'Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520526F6C65, 'Rolle anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520526F6C65, 'Crear Rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520526F6C65, 'CrÃ©er un rÃ´le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520526F6C65, 'Crea ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520526F6C65, 'Dodaj rolÄ™', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652055736572, 'Benutzer anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652055736572, 'Crear Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652055736572, 'CrÃ©er un nouvel utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652055736572, 'Nuovo utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652055736572, 'ÐÐ¾Ð²Ñ‹Ð¹', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x437265617465205573657267726F7570, 'Neue Gruppe erstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465205573657267726F7570, 'Crea gruppo utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206D792070726F66696C65, 'Mein Profil anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206D792070726F66696C65, 'Crea profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577205472616E736C6174696F6E, 'Neue Übersetzung erstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772055736572, 'Neuen Benutzer anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577205573657267726F7570, 'Neue Gruppe erstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577205573657267726F7570, 'Crear nuevo grupo de usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720616374696F6E, 'Neue Aktion', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720616374696F6E, 'Crear acción nueva', 'es', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720616374696F6E, 'Nouvelle action', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720616374696F6E, 'Nuova azione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577206669656C642067726F7570, 'Neue Feldgruppe erstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577206669656C642067726F7570, 'Crear campo de grupo nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577206669656C642067726F7570, 'CrÃ©er un nouveau champs dans le groupe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577206669656C642067726F7570, 'Nuovo campo gruppo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577206669656C642067726F7570, 'Dodaj nowÄ… grupÄ™ pÃ³l', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577207061796D656E742074797065, 'Neue Zahlungsart hinzufügen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577207061796D656E742074797065, 'CrÃ©er un nouveau mode de paiement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577207061796D656E742074797065, 'Nuovo tipo pagamento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720726F6C65, 'Neue Rolle anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720726F6C65, 'Crear rol nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720726F6C65, 'CrÃ©er un nouveau rÃ´le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720726F6C65, 'Nuovo ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720726F6C65, 'Dodaj nowÄ… rolÄ™', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772073657474696E67732070726F66696C65, 'Neues Einstellungsprofil erstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772073657474696E67732070726F66696C65, 'Crear ajuste de perfil nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772073657474696E67732070726F66696C65, 'crÃ©er une nouvelle configuration de profil.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772073657474696E67732070726F66696C65, 'Nuova opzion profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772073657474696E67732070726F66696C65, 'Dodaj nowe ustawienia profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772075736572, 'Crear usuario nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772075736572, 'CrÃ©er un nouveau membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772075736572, 'Nuovo utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772075736572, 'Dodaj nowego uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577207573657267726F7570, 'Neue Gruppe erstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577207573657267726F7570, 'CrÃ©er un nouveau grouppe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577207573657267726F7570, 'Nuovo usergroup', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465207061796D656E742074797065, 'Zahlungsart anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465207061796D656E742074797065, 'Crea tipo pagamento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64, 'Ein neues Profilfeld erstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64, 'Crear campo de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64, 'CrÃ©er un nouveau champ de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64, 'Crea campo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64, 'Dodaj pole do profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64732067726F7570, 'Crear grupo de campos de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64732067726F7570, 'Nuovo gruppo di campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64732067726F7570, 'Dodaj grupÄ™ pÃ³l do profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520726F6C65, 'Neue Rolle anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520726F6C65, 'Crear rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520726F6C65, 'CrÃ©er un nouveau rÃ´le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520726F6C65, 'Crea ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520726F6C65, 'Dodaj rolÄ™', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652075736572, 'Benutzer anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652075736572, 'Crear usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652075736572, 'CrÃ©er un membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652075736572, 'Crea utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652075736572, 'Dodaj uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x44617465, 'Datum', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44617465, 'Fecha', 'es', 'yum');
INSERT INTO `translation` VALUES (0x44617465, 'Date', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44617465, 'Data', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44617465, 'Data', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x44656661756C74, 'Default', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44656661756C74, 'Predeterminado', 'es', 'yum');
INSERT INTO `translation` VALUES (0x44656661756C74, 'Default', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44656661756C74, 'Predefinito', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656661756C74, 'ÐŸÐ¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465204163636F756E74, 'Zugang löschen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465204163636F756E74, 'Eliminar Cuenta', 'es', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465204163636F756E74, 'Supprimer le compte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465204163636F756E74, 'Cancella account', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652050726F66696C65204669656C64, 'Cancella campo Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652050726F66696C65204669656C64, 'Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652055736572, 'Benutzer löschen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652055736572, 'Eliminar Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652055736572, 'Supprimer le membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652055736572, 'Cancella utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652055736572, 'Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206163636F756E74, 'Zugang löschen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206163636F756E74, 'Eliminar cuenta', 'es', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206163636F756E74, 'Supprimer ce compte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206163636F756E74, 'Cancella account', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206163636F756E74, 'UsuÅ„ konto', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652066696C65, 'Cancella file', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206D657373616765, 'Nachricht löschen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206D657373616765, 'Eliminar mensaje', 'es', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206D657373616765, 'Supprimer le message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206D657373616765, 'Cancella messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656C65746564, 'Gelöscht', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44656C65746564, 'SupprimÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44656C65746564, 'Cancella', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656E79, 'Ablehnen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44656E79, 'Negar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x44656E79, 'Refuser', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44656E79, 'Vietao', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4465736372697074696F6E, 'Beschreibung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4465736372697074696F6E, 'Descripción', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4465736372697074696F6E, 'Description', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4465736372697074696F6E, 'Descrizione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4465736372697074696F6E, 'Opis', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E74207573657273206C6F6767656420696E20746F646179, 'Anzahl der heute angemeldeten Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E74207573657273206C6F6767656420696E20746F646179, 'Diferentes usuarios iniciaron sesión hoy', 'es', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E74207573657273206C6F6767656420696E20746F646179, 'Nombre d utilisateurs inscrits/connectÃ©s aujourd hui.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E74207573657273206C6F6767656420696E20746F646179, 'Numero di utenti connessi oggi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E74207573657273206C6F6767656420696E20746F646179, 'Liczba dzisiejszych unikalnych logowaÅ„', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E7420766965776E2050726F66696C6573, 'Insgesamt betrachtete Profile', 'de', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E7420766965776E2050726F66696C6573, 'Perfiles diferentes vistos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E7420766965776E2050726F66696C6573, 'Total des profils consultÃ©s', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E7420766965776E2050726F66696C6573, 'Visualizzazioni profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F66206669656C64732E, 'Reihenfolgenposition, in der das Feld angezeigt wird', 'de', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F66206669656C64732E, 'Mostrar orden de los campos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F66206669656C64732E, 'Ordre de position dans laquelle le champ apparaitra', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F66206669656C64732E, 'Mostra ordine dei campi.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F66206669656C64732E, 'KolejnoÅ›Ä‡ wyÅ›wietlania pÃ³l.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F66206669656C64732E, 'ÐŸÐ¾Ñ€ÑÐ´Ð¾Ðº Ð¾Ñ‚Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ Ð¿Ð¾Ð»ÐµÐ¹.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F662067726F75702E, 'Anzeigereihenfolge der Gruppe.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F662067726F75702E, 'Mostrar orden del grupo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F662067726F75702E, 'Annonces ordonnÃ©es du grouppe.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F662067726F75702E, 'Ordine di visualizzazione del gruppo.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F662067726F75702E, 'WyÅ›wietl kolejnoÅ›Ä‡ grup.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742061707065617220696E20736561726368, 'Nicht in der Suche erscheinen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742061707065617220696E20736561726368, 'Ne pas paraitre dans les rÃ©sultat de recherche', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742061707065617220696E20736561726368, 'Non mostrare nelle ricerche', 'it', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742073686F77206D79206F6E6C696E6520737461747573, 'Status verstecken', 'de', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742073686F77206D79206F6E6C696E6520737461747573, 'Ne pas rendre mon profil visible lorsque je suis en ligne', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742073686F77206D79206F6E6C696E6520737461747573, 'Non mostrare il mio stato online', 'it', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742073686F7720746865206F776E6572206F6620612070726F66696C65207768656E20692076697369742068696D, 'Niemandem zeigen, wen ich besucht habe', 'de', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742073686F7720746865206F776E6572206F6620612070726F66696C65207768656E20692076697369742068696D, 'Ne pas montrer les profils que j ai visitÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742073686F7720746865206F776E6572206F6620612070726F66696C65207768656E20692076697369742068696D, 'Non mostrare al proprietario quando visito il suo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4475726174696F6E20696E2064617973, 'Gültigkeitsdauer in Tagen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4475726174696F6E20696E2064617973, 'ValiditÃ© en jours', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4475726174696F6E20696E2064617973, 'Durata in giorni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x452D4D61696C2061646472657373, 'E-Mail Adresse', 'de', 'yum');
INSERT INTO `translation` VALUES (0x452D4D61696C2061646472657373, 'Correo electrónico', 'es', 'yum');
INSERT INTO `translation` VALUES (0x452D4D61696C2061646472657373, 'Adresse e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x452D4D61696C2061646472657373, 'Indirizzo email', 'it', 'yum');
INSERT INTO `translation` VALUES (0x452D4D61696C20616C726561647920696E207573652E20496620796F752068617665206E6F742072656769737465726564206265666F72652C20706C6561736520636F6E74616374206F75722053797374656D2061646D696E6973747261746F722E, 'Este correo ya está siendo usado por alguien. Si no te habías registrado antes entonces contáctanos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x452D6D61696C, 'E-mail', 'de', 'yum');
INSERT INTO `translation` VALUES (0x452D6D61696C, 'Correo electrónico', 'es', 'yum');
INSERT INTO `translation` VALUES (0x452D6D61696C, 'E-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x452D6D61696C, 'E-mail', 'it', 'yum');
INSERT INTO `translation` VALUES (0x452D6D61696C, 'Mejl', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x452D6D61696C, 'Ð­Ð»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð°Ñ Ð¿Ð¾Ñ‡Ñ‚Ð°', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x45646974, 'Bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x45646974, 'Editar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x45646974, 'Editer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x45646974, 'Modifica', 'it', 'yum');
INSERT INTO `translation` VALUES (0x45646974, 'Bearbeiten', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x45646974, 'Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4564697420706572736F6E616C2064617461, 'Persönliche Daten bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4564697420706572736F6E616C2064617461, 'Editar datos personales', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4564697420706572736F6E616C2064617461, 'Modifier mes donnÃ©es personnelles', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4564697420706572736F6E616C2064617461, 'Modifica dati personali', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65, 'Profil bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65, 'Editar perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65, 'Editer le profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65, 'Modifica profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65, 'Meine Profildaten bearbeiten', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65, 'Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65206669656C64, 'Profilfeld bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65206669656C64, 'Editar campo del perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65206669656C64, 'Editer les champ du profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65206669656C64, 'Modifica campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65206669656C64, 'Profilfeld bearbeiten', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456469742074657874, 'Modifica testo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x45646974207468697320726F6C65, 'Diese Rolle bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x45646974207468697320726F6C65, 'Editar este rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x45646974207468697320726F6C65, 'Modifier ce rÃ´le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x45646974207468697320726F6C65, 'Modifica questo ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x45646974207468697320726F6C65, 'ZmieÅ„ tÄ™ rolÄ™', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456D61696C20697320696E636F72726563742E, 'E-Mail ist nicht korrekt.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456D61696C20697320696E636F72726563742E, 'Email incorrecto', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456D61696C20697320696E636F72726563742E, 'L adresse e-mail est incorrecte.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456D61696C20697320696E636F72726563742E, 'Email non corretta.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456D61696C20697320696E636F72726563742E, 'Mejl jest niepoprawny.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456D61696C20697320696E636F72726563742E, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ñ Ñ‚Ð°ÐºÐ¸Ð¼ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ñ‹Ð¼ Ð°Ð´Ñ€ÐµÑÐ¾Ð¼ Ð½Ðµ Ð·Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ð½.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x456D61696C206973206E6F7420736574207768656E20747279696E6720746F2073656E6420526567697374726174696F6E20456D61696C, 'Debes colocar el correo electrónico para enviar el correo de registro', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652043617074636861, 'Captcha Überprüfung aktivieren', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652043617074636861, 'Habilitar Captcha', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652043617074636861, 'Activer le controle par Captcha', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652043617074636861, 'Attiva Captcha', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652043617074636861, 'WÅ‚Ä…cz Captcha', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520456D61696C2041637469766174696F6E, 'Aktivierung per E-Mail einschalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520456D61696C2041637469766174696F6E, 'Habilitar Activación por Email', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520456D61696C2041637469766174696F6E, 'Activer l activation par e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520456D61696C2041637469766174696F6E, 'Attiva attivazione via Email', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520456D61696C2041637469766174696F6E, 'WÅ‚Ä…cz aktywacjÄ™ mejlem', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652050726F66696C6520486973746F7279, 'Profilhistorie einschalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652050726F66696C6520486973746F7279, 'Habilitar Historial de Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652050726F66696C6520486973746F7279, 'Activer le protocole des profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652050726F66696C6520486973746F7279, 'Attiva storico Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652050726F66696C6520486973746F7279, 'WÅ‚Ä…cz historiÄ™ profilÃ³w', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C65205265636F76657279, 'Wiederherstellung einschalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C65205265636F76657279, 'Habilitar Recuperación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C65205265636F76657279, 'Activer la restauration', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C65205265636F76657279, 'Attiva rispristino', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C65205265636F76657279, 'WÅ‚Ä…cz odzyskiwanie haseÅ‚', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520526567697374726174696F6E, 'Registrierung einschalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520526567697374726174696F6E, 'Habilitar Registro', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520526567697374726174696F6E, 'Activer l enregistrement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520526567697374726174696F6E, 'Attiva registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520526567697374726174696F6E, 'WÅ‚Ä…cz rejestracjÄ™', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456E642064617465, 'Enddatum', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456E642064617465, 'Data scadenza', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456E6473206174, 'Endet am', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456E6473206174, 'Scade il', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72204D657373616765, 'Fehlermeldung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72204D657373616765, 'Mensaje de Error', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72204D657373616765, 'Message d erreur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72204D657373616765, 'Messaggio d\'errore', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72204D657373616765, 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ð¾Ð± Ð¾ÑˆÐ¸Ð±ÐºÐµ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72206D657373616765207768656E2056616C69646174696F6E206661696C732E, 'Fehlermeldung falls die Validierung fehlschlägt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72206D657373616765207768656E2056616C69646174696F6E206661696C732E, 'Mensaje de error cuando la Validación falla', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72206D657373616765207768656E2056616C69646174696F6E206661696C732E, 'Message d erreur pour le cas ou la validation Ã©choue', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72206D657373616765207768656E2056616C69646174696F6E206661696C732E, 'Messaggio d\'errore se fallisce la validazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72206D657373616765207768656E20796F752076616C69646174652074686520666F726D2E, 'Messaggio d\'errore durante la validazione del form.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72206D657373616765207768656E20796F752076616C69646174652074686520666F726D2E, 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ð¾Ð± Ð¾ÑˆÐ¸Ð±ÐºÐµ Ð¿Ñ€Ð¸ Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐµ Ñ„Ð¾Ñ€Ð¼Ñ‹.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72207768696C652070726F63657373696E67206E65772061766174617220696D616765203A207B6572726F725F6D6573736167657D3B2046696C65207761732075706C6F6164656420776974686F757420726573697A696E67, 'Das Bild konnte nicht richtig skaliert werden: {error_message}. Es wurde trotzdem erfolgreich hochgeladen und in ihrem Profil aktiviert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72207768696C652070726F63657373696E67206E65772061766174617220696D616765203A207B6572726F725F6D6573736167657D3B2046696C65207761732075706C6F6164656420776974686F757420726573697A696E67, 'L image n a pas pu Ãªtre retaillÃ©e automatiquement lors du chargement. : {error_message}. elle a Ã©tÃ© cependant chargÃ©e avec succÃ¨s et activÃ©e dans votre profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72207768696C652070726F63657373696E67206E65772061766174617220696D616765203A207B6572726F725F6D6573736167657D3B2046696C65207761732075706C6F6164656420776974686F757420726573697A696E67, 'Errore processando il nuovo avatar: {error_message}. File caricato senza ridimensionamento.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64, 'Feld', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64, 'Campo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64, 'Champ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64, 'Campo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64, 'Pole', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65, 'Feldgröße', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65, 'Tamaño del Campo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65, 'Longueur du champ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65, 'Dimensione campo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65, 'Ð Ð°Ð·Ð¼ÐµÑ€ Ð¿Ð¾Ð»Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65206D696E, 'min Feldgröße', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65206D696E, 'Tamaño mínimo del campo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65206D696E, 'longueur du champ minimum', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65206D696E, 'Dimesione minima campo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65206D696E, 'ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642054797065, 'Feldtyp', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642054797065, 'Tipo de Campo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642054797065, 'Type du champ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642054797065, 'Tipo campo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642054797065, 'Ð¢Ð¸Ð¿ Ð¿Ð¾Ð»Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642067726F7570, 'Feldgruppe', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642067726F7570, 'Grupo de Campos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642067726F7570, 'Champ des groupes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642067726F7570, 'Campi gruppo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642067726F7570, 'Grupa pÃ³l', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Feldname in der Ursprungssprache', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Nombre del campo en el idioma \"sourceLanguage\".', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Non du champ dans la langue standard', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Nome campo per il linguaggio di \"sourceLanguage\".', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Feldname in der Ursprungssprache', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ Ð¿Ð¾Ð»Ñ Ð½Ð° ÑÐ·Ñ‹ÐºÐµ \"sourceLanguage\".', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A65, 'Feldgröße', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A65, 'Tamaño del campo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A65, 'Longueur du champ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A65, 'Dimensione campo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A65, 'FeldgrÃ¶ÃŸe', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A6520636F6C756D6E20696E207468652064617461626173652E, 'Dimensione campo nel database', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A6520636F6C756D6E20696E207468652064617461626173652E, 'Ð Ð°Ð·Ð¼ÐµÑ€ Ð¿Ð¾Ð»Ñ ÐºÐ¾Ð»Ð¾Ð½ÐºÐ¸ Ð² Ð±Ð°Ð·Ðµ Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A6520696E207468652064617461626173652E, 'Feldgröße in der Datenbank', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A6520696E207468652064617461626173652E, 'Tamaño del campo en la base de datos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A6520696E207468652064617461626173652E, 'Longueur du champ dans la banque de donnÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A6520696E207468652064617461626173652E, 'Dimensione campo nel database', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A6520696E207468652064617461626173652E, 'FeldgrÃ¶ÃŸe in der Datenbank', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642074797065, 'Feldtyp', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642074797065, 'Tipo de campo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642074797065, 'Type de champ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642074797065, 'Tipo campo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642074797065, 'Feldtyp', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64207479706520636F6C756D6E20696E207468652064617461626173652E, 'Tipo campo nel database.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64207479706520636F6C756D6E20696E207468652064617461626173652E, 'Ð¢Ð¸Ð¿ Ð¿Ð¾Ð»Ñ ÐºÐ¾Ð»Ð¾Ð½ÐºÐ¸ Ð² Ð±Ð°Ð·Ðµ Ð´Ð°Ð½Ð½Ñ‹Ñ….', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64732077697468203C7370616E20636C6173733D227265717569726564223E2A3C2F7370616E3E206172652072657175697265642E, 'Felder mit <span class=\"required\">*</span> sind Pflichtfelder.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669727374204E616D65, 'Nome', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669727374204E616D65, 'Ð˜Ð¼Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4669727374206E616D65, 'Vorname', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669727374206E616D65, 'Nombre', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669727374206E616D65, 'PrÃ©nom', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669727374206E616D65, 'Cognome', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669727374206E616D65, 'Vorname', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x466F7220616C6C, 'Für alle', 'de', 'yum');
INSERT INTO `translation` VALUES (0x466F7220616C6C, 'Para todos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x466F7220616C6C, 'Pour tous', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x466F7220616C6C, 'Per tutti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x466F7220616C6C, 'Ð”Ð»Ñ Ð²ÑÐµÑ…', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x466F726D2076616C69646174696F6E206572726F72, 'Error en la validación del formulario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473, 'Kontakte', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473, 'Amigos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473, 'Mes contacts', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473, 'Contatti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473206F66207B757365726E616D657D, 'Kontakte von {username}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473206F66207B757365726E616D657D, 'Contact de {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473206F66207B757365726E616D657D, 'Contatti di {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970, 'Kontakt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970, 'Amistades', 'es', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970, 'Contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970, 'Contatto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x467269656E647368697020636F6E6669726D6564, 'Freundschaft bestätigt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E647368697020636F6E6669726D6564, 'Amistad confirmada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x467269656E647368697020636F6E6669726D6564, 'Demande de contact confirmÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E647368697020636F6E6669726D6564, 'Contatto confermato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x467269656E64736869702072656A6563746564, 'Kontaktanfrage abgelehnt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E64736869702072656A6563746564, 'Demande de contact refusÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E64736869702072656A6563746564, 'Amizicia rigettata', 'it', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420616C72656164792073656E74, 'Kontaktbestätigung ausstehend', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420616C72656164792073656E74, 'Ya se envió la solicitud de amistad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420616C72656164792073656E74, 'En attente de confirmation', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420616C72656164792073656E74, 'Richiesta di contatto giÃ  inviata', 'it', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420666F72207B757365726E616D657D20686173206265656E2073656E74, 'Kontaktanfrage an {username} gesendet', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420666F72207B757365726E616D657D20686173206265656E2073656E74, 'La solicitud de amistad a {username} ha sido enviada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420666F72207B757365726E616D657D20686173206265656E2073656E74, 'Demande de contact envoyÃ©e Ã  {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420666F72207B757365726E616D657D20686173206265656E2073656E74, 'Inviata richiesta di contatto a {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420686173206265656E2072656A6563746564, 'Kontaktanfrage zurückgewiesen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420686173206265656E2072656A6563746564, 'Solicitud de amistad rechazada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420686173206265656E2072656A6563746564, 'Votre demande de contact a Ã©tÃ© rejetÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420686173206265656E2072656A6563746564, 'Richiesta di contatto respinta', 'it', 'yum');
INSERT INTO `translation` VALUES (0x46726F6D, 'Von', 'de', 'yum');
INSERT INTO `translation` VALUES (0x46726F6D, 'Desde', 'es', 'yum');
INSERT INTO `translation` VALUES (0x46726F6D, 'De', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x46726F6D, 'Da', 'it', 'yum');
INSERT INTO `translation` VALUES (0x46726F6D, 'Od', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x47656E6572616C, 'Allgemein', 'de', 'yum');
INSERT INTO `translation` VALUES (0x47656E6572616C, 'Generale', 'it', 'yum');
INSERT INTO `translation` VALUES (0x47656E65726174652044656D6F2044617461, 'Zufallsbenutzer erzeugen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x47656E65726174652044656D6F2044617461, 'Genera datos de prueba', 'es', 'yum');
INSERT INTO `translation` VALUES (0x47656E65726174652044656D6F2044617461, 'GÃ©nÃ©rer un compte membre-dÃ©mo', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x47656E65726174652044656D6F2044617461, 'Genera dati demo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x476F20746F2070726F66696C65206F66207B757365726E616D657D, 'Zum Profil von {username}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x476F20746F2070726F66696C65206F66207B757365726E616D657D, 'Ir al perfil de {username}', 'es', 'yum');
INSERT INTO `translation` VALUES (0x476F20746F2070726F66696C65206F66207B757365726E616D657D, 'Voir le profil de {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x476F20746F2070726F66696C65206F66207B757365726E616D657D, 'Vai al profilo di {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4772616E74207065726D697373696F6E, 'Berechtigung zuweisen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4772616E74207065726D697373696F6E, 'Otorgar permiso', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4772616E74207065726D697373696F6E, 'Attribuer une permission ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4772616E74207065726D697373696F6E, 'Assegna permesso', 'it', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570204E616D65, 'Gruppenname', 'de', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570204E616D65, 'Nombre de grupo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570204E616D65, 'Nom du groupe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570204E616D65, 'Nome gruppo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570204E616D65, 'Nazwa grupy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Gruppenname in der Basissprache.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Nombre del grupo en el idioma \"sourceLanguage\".', 'es', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Nom du groupe dans la langue principale.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Il nome del gruppo nella lingua di base.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Nazwa grupy w jÄ™zyku uÅ¼ytkownika.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206F776E6572, 'Gruppeneigentümer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206F776E6572, 'Dueño del grupo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206F776E6572, 'PropriÃ©taire du grouppe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206F776E6572, 'Proprietario gruppo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570207469746C65, 'Titel der Gruppe', 'de', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570207469746C65, 'Título del grupo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570207469746C65, 'Titre du grouppe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570207469746C65, 'Titolo gruppo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x486176696E67, 'Anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x486176696E67, 'Annonce', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x486176696E67, 'Visualizza', 'it', 'yum');
INSERT INTO `translation` VALUES (0x48696464656E, 'Verstecken', 'de', 'yum');
INSERT INTO `translation` VALUES (0x48696464656E, 'Escondido', 'es', 'yum');
INSERT INTO `translation` VALUES (0x48696464656E, 'CachÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x48696464656E, 'Nascosto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x48696464656E, 'Ð¡ÐºÑ€Ñ‹Ñ‚', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x486F7720657870656E736976652069732061206D656D626572736869703F, 'Preis der Mitgliedschaft', 'de', 'yum');
INSERT INTO `translation` VALUES (0x486F7720657870656E736976652069732061206D656D626572736869703F, 'Prix de l abbonement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x486F7720657870656E736976652069732061206D656D626572736869703F, 'Quanto costa l\'iscrizione?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x486F77206D616E7920646179732077696C6C20746865206D656D626572736869702062652076616C6964206166746572207061796D656E743F, 'Wie viele Tage ist die Mitgliedschaft nach Zahlungseingang gültig?', 'de', 'yum');
INSERT INTO `translation` VALUES (0x486F77206D616E7920646179732077696C6C20746865206D656D626572736869702062652076616C6964206166746572207061796D656E743F, 'Nombre de jours pour la validitÃ© d un abbonement aprÃ¨s paiement?', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x486F77206D616E7920646179732077696C6C20746865206D656D626572736869702062652076616C6964206166746572207061796D656E743F, 'Quanti giorni Ã¨ valida l\'iscrizione dopo il pagamento?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F7265, 'Ignorieren', 'de', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F7265, 'Ignorar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F7265, 'Ignorer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F7265, 'Ignora', 'it', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F726564207573657273, 'Ignorierliste', 'de', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F726564207573657273, 'Usuarios ignorados', 'es', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F726564207573657273, 'Liste noire', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F726564207573657273, 'Utenti ignorati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E616374697665207573657273, 'Inaktive Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E616374697665207573657273, 'Usuarios inactivos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E616374697665207573657273, 'Utilisateur inactif', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E616374697665207573657273, 'Utenti inattivi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E616374697665207573657273, 'Nieaktywni uÅ¼ytkownicy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742061637469766174696F6E2055524C, 'El enlace de activación que usaste es incorrecto', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742061637469766174696F6E2055524C2E, 'Falsche Aktivierungs URL.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742061637469766174696F6E2055524C2E, 'URL de activación incorrecta.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742061637469766174696F6E2055524C2E, 'Le lien d activation de votre compte est incorrect ou pÃ©rimÃ©. Consultez notre FAQ: mot clÃ©= inscription ou contactez gratuitement notre Help-Center en ligne sur la page d aide.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742061637469766174696F6E2055524C2E, 'URL di attivazione incorretto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742061637469766174696F6E2055524C2E, 'Falsche Aktivierungs URL.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742061637469766174696F6E2055524C2E, 'ÐÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð°Ñ ÑÑÑ‹Ð»ÐºÐ° Ð°ÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ð¸ ÑƒÑ‡ÐµÑ‚Ð½Ð¾Ð¹ Ð·Ð°Ð¿Ð¸ÑÐ¸.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742070617373776F726420286D696E696D616C206C656E67746820342073796D626F6C73292E, 'Falsches Passwort (minimale Länge 4 Zeichen).', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742070617373776F726420286D696E696D616C206C656E67746820342073796D626F6C73292E, 'Contraseña incorrecta (debe tener mínimo 4 caracteres).', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742070617373776F726420286D696E696D616C206C656E67746820342073796D626F6C73292E, 'Mot de passe incorrect (longueur minimal de 4 charactÃ¨res).', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742070617373776F726420286D696E696D616C206C656E67746820342073796D626F6C73292E, 'Password sbagliata (lunga almeno 4 caratteri).', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742070617373776F726420286D696E696D616C206C656E67746820342073796D626F6C73292E, 'Falsches Passwort (minimale LÃ¤nge 4 Zeichen).', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742070617373776F726420286D696E696D616C206C656E67746820342073796D626F6C73292E, 'ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð°Ñ Ð´Ð»Ð¸Ð½Ð° Ð¿Ð°Ñ€Ð¾Ð»Ñ 4 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð°.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x496E636F7272656374207265636F76657279206C696E6B2E, 'Recovery link ist falsch.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E636F7272656374207265636F76657279206C696E6B2E, 'Enlace de recuperación que usaste es incorrecto', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E636F7272656374207265636F76657279206C696E6B2E, 'Le lien de restauration est incorrect ou pÃ©rimÃ©.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E636F7272656374207265636F76657279206C696E6B2E, 'Link ripristino incorretto.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E636F7272656374207265636F76657279206C696E6B2E, 'Recovery link ist falsch.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x496E636F7272656374207265636F76657279206C696E6B2E, 'ÐÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð°Ñ ÑÑÑ‹Ð»ÐºÐ° Ð²Ð¾ÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð¿Ð°Ñ€Ð¾Ð»Ñ.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742073796D626F6C27732E2028412D7A302D3929, 'Im Benutzernamen sind nur Buchstaben und Zahlen erlaubt.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742073796D626F6C27732E2028412D7A302D3929, 'Caracteres incorrectos. (A-z0-9)', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742073796D626F6C27732E2028412D7A302D3929, 'Pour le choix de votre nom d utilisateur seules les lettres de l alphabet et les chiffres sont acceptÃ©s .', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742073796D626F6C27732E2028412D7A302D3929, 'Sono consentiti solo lettere e numeri', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742073796D626F6C27732E2028412D7A302D3929, 'Im Benutzernamen sind nur Buchstaben und Zahlen erlaubt.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742073796D626F6C27732E2028412D7A302D3929, 'Ð’ Ð¸Ð¼ÐµÐ½Ð¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð´Ð¾Ð¿ÑƒÑÐºÐ°ÑŽÑ‚ÑÑ Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ð»Ð°Ñ‚Ð¸Ð½ÑÐºÐ¸Ðµ Ð±ÑƒÐºÐ²Ñ‹ Ð¸ Ñ†Ð¸Ñ„Ñ€Ñ‹.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x496E636F727265637420757365726E616D6520286C656E677468206265747765656E203320616E642032302063686172616374657273292E, 'Falscher Benutzername (Länge zwischen 3 und 20 Zeichen).', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E636F727265637420757365726E616D6520286C656E677468206265747765656E203320616E642032302063686172616374657273292E, 'Nombre de usuario incorrecto (debe tener longitud entre 3 y 20 caracteres)', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E636F727265637420757365726E616D6520286C656E677468206265747765656E203320616E642032302063686172616374657273292E, 'Nom d utilisateur incorrect (Longueur comprise entre 3 et 20 charactÃ¨res).', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E636F727265637420757365726E616D6520286C656E677468206265747765656E203320616E642032302063686172616374657273292E, 'Username errato (lunghezza tra i 3 e i 20 caratteri).', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E636F727265637420757365726E616D6520286C656E677468206265747765656E203320616E642032302063686172616374657273292E, 'Falscher Benutzername (LÃ¤nge zwischen 3 und 20 Zeichen).', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x496E636F727265637420757365726E616D6520286C656E677468206265747765656E203320616E642032302063686172616374657273292E, 'Ð”Ð»Ð¸Ð½Ð° Ð¸Ð¼ÐµÐ½Ð¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð¾Ñ‚ 3 Ð´Ð¾ 20 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð².', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x496E737472756374696F6E732068617665206265656E2073656E7420746F20796F752E20506C6561736520636865636B20796F757220656D61696C2E, 'Weitere Anweisungen wurden an ihr E-Mail Postfach geschickt. Bitte prüfen Sie ihre E-Mails', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E737472756374696F6E732068617665206265656E2073656E7420746F20796F752E20506C6561736520636865636B20796F757220656D61696C2E, 'Se enviarion instrucciones a tu correo. Por favor, ve tu cuenta de correo.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E737472756374696F6E732068617665206265656E2073656E7420746F20796F752E20506C6561736520636865636B20796F757220656D61696C2E, 'Merci pour votre inscription.Controlez votre boite e-mail, le code d activation de votre compte vous a Ã©tÃ© envoyÃ© par e-mail. *IMPORTANT:pour le cas ou notre e-mail ne vous serais pas parvenu, il est possible que notre e-mail ai Ã©tÃ© filtrÃ© par votre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E737472756374696F6E732068617665206265656E2073656E7420746F20796F752E20506C6561736520636865636B20796F757220656D61696C2E, 'Istruzioni inviate per email. Controlla la tua casella di posta elettronica.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E76616C6964207265636F76657279206B6579, 'Fehlerhafter Wiederherstellungsschlüssel', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E7669746174696F6E, 'Einladung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E7669746174696F6E, 'Invitaciones', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E7669746174696F6E, 'Invitation', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E7669746174696F6E, 'Invito', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4973206D656D6265727368697020706F737369626C65, 'Mitgliedschaft möglich?', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4973206D656D6265727368697020706F737369626C65, 'Inscription possible?', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4973206D656D6265727368697020706F737369626C65, 'Iscrizione possibile?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4A6F696E2067726F7570, 'Beitreten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4A6F696E2067726F7570, 'Collega al gruppo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4A756D7020746F2070726F66696C65, 'Zum Profil', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4A756D7020746F2070726F66696C65, 'Consulter le profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4A756D7020746F2070726F66696C65, 'Vai al profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C616E6775616765, 'Sprache', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C616E6775616765, 'Idioma', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C616E6775616765, '	Langue', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C616E6775616765, 'Lingua', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C617374204E616D65, 'Cognome', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C617374204E616D65, 'Ð¤Ð°Ð¼Ð¸Ð»Ð¸Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C617374206E616D65, 'Nachname', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C617374206E616D65, 'Apellido', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C617374206E616D65, 'Nom de famille', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C617374206E616D65, 'Nome', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C617374206E616D65, 'Nachname', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C617374207669736974, 'Letzter Besuch', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C617374207669736974, 'òltima visita', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C617374207669736974, 'DernÃ¨re visite', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C617374207669736974, 'Ultima visita', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C617374207669736974, 'Letzter Besuch', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C617374207669736974, 'ÐŸÐ¾ÑÐ»ÐµÐ´Ð½Ð¸Ð¹ Ð²Ð¸Ð·Ð¸Ñ‚', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C6574206D652061707065617220696E2074686520736561726368, 'Ich möchte in der Suche erscheinen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6574206D652061707065617220696E2074686520736561726368, 'Je ne souhaite pas apparaitre dans les rÃ©sultats des moteurs de recherche', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6574206D652061707065617220696E2074686520736561726368, 'Mostrami nei risultati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C65742074686520757365722063686F6F736520696E20707269766163792073657474696E6773, 'Den Benutzer entscheiden lassen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C65742074686520757365722063686F6F736520696E20707269766163792073657474696E6773, 'Laisser l utilisateur choisir lui-mÃªme', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C65742074686520757365722063686F6F736520696E20707269766163792073657474696E6773, 'Consentire all\'utente di scegliere le impostazioni della privacy', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C65747465727320617265206E6F7420636173652D73656E7369746976652E, 'Zwischen Groß-und Kleinschreibung wird nicht unterschieden.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C65747465727320617265206E6F7420636173652D73656E7369746976652E, 'Las letras nos son sensibles a mayúsculas y minúsculas.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C65747465727320617265206E6F7420636173652D73656E7369746976652E, 'Aucune importance ne sera apportÃ©e aux minuscules ou majuscules.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C65747465727320617265206E6F7420636173652D73656E7369746976652E, 'La ricerca non Ã¨ case sensitive.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C65747465727320617265206E6F7420636173652D73656E7369746976652E, 'Zwischen GroÃŸ-und Kleinschreibung wird nicht unterschieden.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C65747465727320617265206E6F7420636173652D73656E7369746976652E, 'Ð ÐµÐ³Ð¸ÑÑ‚Ñ€ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð½Ðµ Ð¸Ð¼ÐµÐµÑ‚.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742050726F66696C65204669656C64, 'Lista campi Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742050726F66696C65204669656C64, 'Ð¡Ð¿Ð¸ÑÐ¾Ðº', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742055736572, 'Lista utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742055736572, 'Ð¡Ð¿Ð¸ÑÐ¾Ðº Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C69737420726F6C6573, 'Rollen anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C69737420726F6C6573, 'Listar roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C69737420726F6C6573, 'liste des rÃ´les', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C69737420726F6C6573, 'Lista ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C69737420726F6C6573, 'Lista rÃ³l', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742075736572, 'Benutzer auflisten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742075736572, 'Listar usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742075736572, 'Liste complÃ¨tes des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742075736572, 'Lista utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742075736572, 'Benutzer auflisten', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C697374207573657273, 'Benutzer anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C697374207573657273, 'Listar usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C697374207573657273, 'Liste des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C697374207573657273, 'Lista utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C697374207573657273, 'Lista uÅ¼ytkownikÃ³w', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6F672070726F66696C6520766973697473, 'Meine Profilbesuche anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F672070726F66696C6520766973697473, 'Voir les statistiques des visiteurs de mon profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F672070726F66696C6520766973697473, 'Log visite profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F6767656420696E206173, 'Angemeldet als', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F6767656420696E206173, 'ConnectÃ© en tant que', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F6767656420696E206173, 'Loggato come', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E, 'Anmeldung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E, 'Iniciar sesión', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E, 'Inscription', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E, 'Entra', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E, 'Logowanie', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E, 'Ð’Ñ…Ð¾Ð´', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E2054797065, 'Anmeldungsart', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E2054797065, 'Tipo de inicio de sesión', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E2054797065, 'Mode de connection', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E2054797065, 'Tipo login', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E2054797065, 'Rodzaj logowania', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F77656420627920456D61696C20616E6420557365726E616D65, 'Anmeldung per Benutzername oder E-Mail adresse', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F77656420627920456D61696C20616E6420557365726E616D65, 'Inicio de sesión por Email y Nombre de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F77656420627920456D61696C20616E6420557365726E616D65, 'Connection avec le nom d utilisateur ou adresse e-mail.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F77656420627920456D61696C20616E6420557365726E616D65, 'Login con il nome utente o l\'indirizzo e-mail', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F77656420627920456D61696C20616E6420557365726E616D65, 'Logowanie przez nazwÄ™ lub mejl', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920456D61696C, 'Anmeldung nur per E-Mail adresse', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920456D61696C, 'Inicio de sesión sólo por Email', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920456D61696C, 'COnnection avec l adresse e-mail seulement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920456D61696C, 'Login solo tramite email', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920456D61696C, 'Logowanie poprzez mejl', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920557365726E616D65, 'Anmeldung nur per Benutzername', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920557365726E616D65, 'Inicio de sesión sólo por Nombre de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920557365726E616D65, 'Connection avec le nom d utilisateur seulement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920557365726E616D65, 'Login solo tramite username', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920557365726E616D65, 'Logowanie poprzez nazwÄ™', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E206973206E6F7420706F737369626C6520776974682074686520676976656E2063726564656E7469616C73, 'Anmeldung mit den angegebenen Werten nicht möglich', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F676F7574, 'Abmelden', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F676F7574, 'Cerrar sesión', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6F676F7574, 'DÃ©connection', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F676F7574, 'Esci', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F676F7574, 'Wyloguj', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6F676F7574, 'Ð’Ñ‹Ð¹Ñ‚Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C6F73742050617373776F72643F, 'Password dimenticata?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F73742050617373776F72643F, 'Ð—Ð°Ð±Ñ‹Ð»Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ?', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C6F73742070617373776F72643F, 'Passwort vergessen?', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F73742070617373776F72643F, '¿Olvidó la contraseña?', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6F73742070617373776F72643F, 'Mot de passe oubliÃ©?', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F73742070617373776F72643F, 'Password dimenticata?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F73742070617373776F72643F, 'Passwort vergessen?', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D61696C2073656E64206D6574686F64, 'Nachrichtenversandmethode', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D61696C2073656E64206D6574686F64, 'Método de envío de correo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D61696C2073656E64206D6574686F64, 'Mode d envoie des messages', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D61696C2073656E64206D6574686F64, 'Metodo invio mail', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D61696C2073656E64206D6574686F64, 'Metoda wysyÅ‚ania mejli', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616B65207B6669656C647D207075626C696320617661696C61626C65, 'Das Feld {field} öffentlich machen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616B65207B6669656C647D207075626C696320617661696C61626C65, 'Rendre publique le champ {field}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616B65207B6669656C647D207075626C696320617661696C61626C65, 'Rendi pubblico il campo {field}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765, 'Verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765, 'Administrar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765, 'Gestion', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765, 'Gestione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765, 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520416374696F6E73, 'Gestione azioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C64, 'Profilfeld verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C64, 'Administrar Campos de Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C64, 'GÃ©rer le champ de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C64, 'Gestione campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C64, 'ZarzÄ…dzaj polem profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C64, 'ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ° Ð¿Ð¾Ð»ÐµÐ¹', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C6473, 'Profilfelder verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C6473, 'Administrar Campos de Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C6473, 'GÃ©rer les champs de profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C6473, 'Gestione campi Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C6473, 'ZarzÄ…dzaj polami profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C6473, 'ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ° Ð¿Ð¾Ð»ÐµÐ¹', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C6573, 'Profile verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C6573, 'Administrar Perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C6573, 'GÃ©rer les profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C6573, 'Gestione profili', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520526F6C6573, 'Rollenverwaltung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520526F6C6573, 'Administrar Roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520526F6C6573, 'Gestion des rÃ´les', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520526F6C6573, 'Gestione Ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520526F6C6573, 'ZarzÄ…dzaj rolami', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652055736572, 'Benutzerverwaltung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652055736572, 'Administrar Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652055736572, 'Gestion utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652055736572, 'Gestione utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652055736572, 'Benutzerverwaltung', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652055736572, 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑÐ¼Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765205573657273, 'Benutzerverwaltung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765205573657273, 'Administrar Usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765205573657273, 'Gestion des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765205573657273, 'Gestione utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206669656C642067726F757073, 'Feldgruppen verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206669656C642067726F757073, 'Administrar grupos de campos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206669656C642067726F757073, 'GÃ©rer les champs des groupes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206669656C642067726F757073, 'Gestione campo gruppi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206669656C642067726F757073, 'ZarzÄ…dzaj grupami pÃ³l', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520667269656E6473, 'Freundschaftsverwaltung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520667269656E6473, 'Administrar amigos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520667269656E6473, 'Gestion des contacts', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520667269656E6473, 'Gestione contatti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206D79207573657273, 'Meine Benutzer verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206D79207573657273, 'Administrar mis usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206D79207573657273, 'GÃ©rer mes membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206D79207573657273, 'Gestione utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206D79207573657273, 'ZarzÄ…dzaj moimi uÅ¼ytkownikami', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207061796D656E7473, 'Zahlungsarten verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207061796D656E7473, 'Gestione pagamenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207065726D697373696F6E73, 'Berechtigungen verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207065726D697373696F6E73, 'Gestione permessi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65204669656C6473, 'Profilfelder verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65204669656C6473, 'Administrar Campos de Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65204669656C6473, 'GÃ©rer les champs du profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65204669656C6473, 'Gestione campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65204669656C6473, 'Profilfelder verwalten', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C642067726F757073, 'Administrar grupos de campos de perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C642067726F757073, 'GÃ©rer les champs des profils de grouppes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C642067726F757073, 'Gestione campo profilo gruppi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C642067726F757073, 'ZarzÄ…dzaj grupami pÃ³l w profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C6473, 'Profilfelder verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C6473, 'GÃ©rer les champs de profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C6473, 'Gestione campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C6473, 'ZarzÄ…dzaj polami profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C64732067726F757073, 'Gestione campi profilo gruppi ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C64732067726F757073, 'ZarzÄ…dzaj grupami pÃ³l w profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C6573, 'Profile verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C6573, 'Administrar perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C6573, 'GÃ©rer les profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C6573, 'Gestione profili', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C6573, 'ZarzÄ…dzaj profilem', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520726F6C6573, 'Rollen verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520726F6C6573, 'Adminsitrar roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520726F6C6573, 'GÃ©rer les rÃ´les', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520726F6C6573, 'Gestione Ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520726F6C6573, 'ZarzÄ…dzaj rolami', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746578742073657474696E6773, 'Texteinstellungen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746578742073657474696E6773, 'Administrar configuración de texto', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746578742073657474696E6773, 'Option de texte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746578742073657474696E6773, 'Impostazioni di testo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746869732070726F66696C65, 'dieses Profil bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746869732070726F66696C65, 'Administrar este perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746869732070726F66696C65, 'Modifier ce profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746869732070726F66696C65, 'Modifica profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746869732070726F66696C65, 'ZarzÄ…dzaj tym profilem', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520757365722047726F757073, 'Benutzergruppen verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520757365722047726F757073, 'Administrar Grupos de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520757365722047726F757073, 'Gerer les utilisateurs des grouppes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520757365722047726F757073, 'Gestine gruppi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207573657273, 'Benutzer verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207573657273, 'Administrar usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207573657273, 'GÃ©rer les membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207573657273, 'Gestione utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207573657273, 'ZarzÄ…dzaj uÅ¼ytkownikaki', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E67652050726F66696C65204669656C64, 'Mange Profil Field', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E67652050726F66696C65204669656C64, 'Administrar Campo del Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E67652050726F66696C65204669656C64, 'Gestione campo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D61726B2061732072656164, 'Als gelesen markieren', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D61726B2061732072656164, 'Marquer comme lu', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D61726B2061732072656164, 'Segna come letto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D61746368, 'Treffer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D61746368, 'Combinar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D61746368, 'RÃ©sultat', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D61746368, 'Corrispondenza (RegExp)', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D61746368, 'Ð¡Ð¾Ð²Ð¿Ð°Ð´ÐµÐ½Ð¸Ðµ (RegExp)', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4D656D62657273686970, 'Mitgliedschaft', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D656D62657273686970, 'Devenir membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D656D62657273686970, 'Iscrizione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D656D6265727368697020656E64732061743A207B646174657D, 'Mitgliedschaft endet am: {date}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D656D6265727368697020656E64732061743A207B646174657D, 'Iscrizione termina il: {date}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D656D6265727368697020686173206E6F74206265656E20706179656420796574, 'Zahlungseingang noch nicht erfolgt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D656D6265727368697020686173206E6F74206265656E20706179656420796574, 'Iscrizione non pagata', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D656D626572736869702070617965642061743A207B646174657D, 'Zahlungseingang erfolgt am: {date}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D656D626572736869702070617965642061743A207B646174657D, 'Iscrizione pagata il: {date}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D656D6265727368697073, 'Mitgliedschaften', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D656D6265727368697073, 'Iscrizioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D657373616765, 'Nachricht', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D657373616765, 'Mensaje', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D657373616765, 'Message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D657373616765, 'Messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676520227B6D6573736167657D2220686173206265656E2073656E7420746F207B746F7D, 'Nachricht \"{message}\" wurde an {to} gesendet', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676520227B6D6573736167657D2220686173206265656E2073656E7420746F207B746F7D, 'Message \"{message}\" a Ã©tÃ© envoyÃ© {to} ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676520227B6D6573736167657D2220686173206265656E2073656E7420746F207B746F7D, 'Messaggio \"{message}\" Ã¨ stato inviato a {to}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676520227B6D6573736167657D2220776173206D61726B65642061732072656164, 'Nachricht \"{message}\" wurde als gelesen markiert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676520227B6D6573736167657D2220776173206D61726B65642061732072656164, 'Message \"{message}\" marquer comme lu.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676520227B6D6573736167657D2220776173206D61726B65642061732072656164, 'Messaggio \"{message}\" Ã¨ stato contrassegnato come letto.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676520636F756E74, 'Anzahl Nachrichten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D, 'Nachricht von', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D, 'Message de', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D, 'Messaggio da', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D20, 'Nachricht von ', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D20, 'Mensaje de', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D20, 'Message de ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D20, 'Messaggio da ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D20, 'Nachricht von ', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676573, 'Nachrichten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676573, 'Mensajes', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676573, 'Message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676573, 'Messagi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676573, 'WiadomoÅ›ci', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167696E672073797374656D, 'Nachrichtensystem', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167696E672073797374656D, 'Sistema de mensajes', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167696E672073797374656D, 'Message-Board', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167696E672073797374656D, 'Sistema messaggistica', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167696E672073797374656D, 'System wiadomoÅ›ci', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D696E696D616C2070617373776F7264206C656E67746820342073796D626F6C732E, 'Minimale Länge des Passworts 4 Zeichen.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D696E696D616C2070617373776F7264206C656E67746820342073796D626F6C732E, 'Mínimo 4 caracteres para la contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D696E696D616C2070617373776F7264206C656E67746820342073796D626F6C732E, 'La longueur de votre mot de passe doit comporter au moins quatre charactÃ¨res.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D696E696D616C2070617373776F7264206C656E67746820342073796D626F6C732E, 'Lunghezza minima password di 4 caratteri.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D696E696D616C2070617373776F7264206C656E67746820342073796D626F6C732E, 'Minimale LÃ¤nge des Passworts 4 Zeichen.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D696E696D616C2070617373776F7264206C656E67746820342073796D626F6C732E, 'ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð°Ñ Ð´Ð»Ð¸Ð½Ð° Ð¿Ð°Ñ€Ð¾Ð»Ñ 4 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð°.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C652073657474696E6773, 'Moduleinstellungen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C652073657474696E6773, 'Ajustes del módulo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C652073657474696E6773, 'RÃ©glage des modules', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C652073657474696E6773, 'Opzioni modulo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C652073657474696E6773, 'Ustawienia moduÅ‚u', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C6520746578742073657474696E6773, 'Ajustes de texto del módulo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C6520746578742073657474696E6773, 'Opzioni testo modulo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C6520746578742073657474696E6773, 'Ustawienia tekstÃ³w moduÅ‚u', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D7920496E626F78, 'Posteingang', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D7920496E626F78, 'Mi bandeja de entrada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D7920496E626F78, 'Boite e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D7920496E626F78, 'Moja skrzynka odbiorcza', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D7920667269656E6473, 'Meine Kontakte', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D7920667269656E6473, 'Mis amigos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D7920667269656E6473, 'Mes contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D7920667269656E6473, 'Contatti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D792067726F757073, 'Meine Gruppen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D792067726F757073, 'Mis grupos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D792067726F757073, 'Mes grouppes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D792067726F757073, 'Gruppi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D7920696E626F78, 'Mein Posteingang', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D7920696E626F78, 'Mi bandeja de entrada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D7920696E626F78, 'Ma boite e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D7920696E626F78, 'Posta in arrivo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D79206D656D6265727368697073, 'Meine Mitgliedschaften', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D79206D656D6265727368697073, 'Options de mon compte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D79206D656D6265727368697073, 'Iscrizioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D792070726F66696C65, 'Mein Profil', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D792070726F66696C65, 'Mi perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D792070726F66696C65, 'Mon profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D792070726F66696C65, 'Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E64736869702072657175657374, 'nueva solicitud de amistad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E647368697020726571756573742066726F6D207B757365726E616D657D, 'neue Kontaktanfrage von {username}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E647368697020726571756573742066726F6D207B757365726E616D657D, 'Nouvelle demande de contact de {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E647368697020726571756573742066726F6D207B757365726E616D657D, 'Nuova richiesta di contatto da {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E6473686970207265717565737473, 'Neue Freundschaftsanfragen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E6473686970207265717565737473, 'Nueva solicitud de amistad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E6473686970207265717565737473, 'Nouvelle demande de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E6473686970207265717565737473, 'Nuova richiesta contatto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6577206D65737361676573, 'Neue Nachrichten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6577206D65737361676573, 'Nouveaux mÃ©ssages', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6577206D65737361676573, 'Nuovo messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F7264, 'Neues Passwort', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F7264, 'Nouveau mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F7264, 'Nuovo Password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F72642069732073617665642E, 'Neues Passwort wird gespeichert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F72642069732073617665642E, 'La contraseña nueva ha sido guardada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F72642069732073617665642E, 'Votre nouveau mot de passe a bien Ã©tÃ© mÃ©morisÃ©.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F72642069732073617665642E, 'Nuova passowrd salvata', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F72642069732073617665642E, 'Neues Passwort wird gespeichert.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F72642069732073617665642E, 'ÐÐ¾Ð²Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070726F66696C6520636F6D6D656E74, 'Nuevo comentario de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070726F66696C6520636F6D6D656E742066726F6D207B757365726E616D657D, 'Neuer Profilkommentar von {username}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070726F66696C6520636F6D6D656E742066726F6D207B757365726E616D657D, 'Nouveau commentaire pour le profil de {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070726F66696C6520636F6D6D656E742066726F6D207B757365726E616D657D, 'Nuovo commento per il profilo {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E65772073657474696E67732070726F66696C65, 'Neues Einstellungsprofil', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E65772073657474696E67732070726F66696C65, 'Nuevos ajustes de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E65772073657474696E67732070726F66696C65, 'Nouvelle configuration de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E65772073657474696E67732070726F66696C65, 'Nuova preferenze profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E65772073657474696E67732070726F66696C65, 'Nowe ustawienia profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6577207472616E736C6174696F6E, 'Neue Übersetzung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E65772076616C7565, 'Neuer Wert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E65772076616C7565, 'Valor nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E65772076616C7565, 'Nouvelle valeur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E65772076616C7565, 'Nuovo valore', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E65772076616C7565, 'Nowa wartoÅ›Ä‡', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6F, 'Nein', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F, 'No', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F, 'Non', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F, 'No', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F, 'Nein', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6F, 'ÐÐµÑ‚', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4E6F20667269656E647368697020726571756573746564, 'Keine Freundschaft angefragt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F20667269656E647368697020726571756573746564, 'No hay solicitud de amistad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F20667269656E647368697020726571756573746564, 'Pas de demande de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F20667269656E647368697020726571756573746564, 'Contatto non richiesto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F206E6577206D65737361676573, 'Keine neuen Nachrichten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F206E6577206D65737361676573, 'Pas de nouveaux mÃ©ssages', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F206E6577206D65737361676573, 'Nessun nuovo messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2070726F66696C65206368616E6765732077657265206D616465, 'Keine Profiländerungen stattgefunden', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2070726F66696C65206368616E6765732077657265206D616465, 'No se hicieron cambios en el perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2070726F66696C65206368616E6765732077657265206D616465, 'pas de rÃ©sultat pour les profils modifiÃ©s', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2070726F66696C65206368616E6765732077657265206D616465, 'Nessun cambiamento al profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2070726F66696C65206368616E6765732077657265206D616465, 'Nie dokonano zmian w profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2C206275742073686F77206F6E20726567697374726174696F6E20666F726D, 'Ja, und auf Registrierungsseite anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2C206275742073686F77206F6E20726567697374726174696F6E20666F726D, 'No, pero mostrar en formulario de registro', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2C206275742073686F77206F6E20726567697374726174696F6E20666F726D, 'non et charger le formulaire d inscription', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2C206275742073686F77206F6E20726567697374726174696F6E20666F726D, 'No, ma mostra nel form di registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2C206275742073686F77206F6E20726567697374726174696F6E20666F726D, 'Nie, ale pokaÅ¼ w formularzu rejestracji', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2C206275742073686F77206F6E20726567697374726174696F6E20666F726D, 'ÐÐµÑ‚, Ð½Ð¾ Ð¿Ð¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð¿Ñ€Ð¸ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4E6F626F64792068617320636F6D6D656E74656420796F75722070726F66696C6520796574, 'Bisher hat niemand mein Profil kommentiert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F626F64792068617320636F6D6D656E74656420796F75722070726F66696C6520796574, 'Aucun commentaire pour votre profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F626F64792068617320636F6D6D656E74656420796F75722070726F66696C6520796574, 'Nessuno ha commentato il tuo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F626F647920686173207669736974656420796F75722070726F66696C6520796574, 'Bisher hat noch niemand ihr Profil angesehen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F626F647920686173207669736974656420796F75722070726F66696C6520796574, 'Nadie ha visitado tu perfil todavía', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F626F647920686173207669736974656420796F75722070726F66696C6520796574, 'Aucune visite rÃ©cente de votre profil.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F626F647920686173207669736974656420796F75722070726F66696C6520796574, 'Fino ad ora nessuno ha visto il tuo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F6E65, 'Keine', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F6E65, 'Ninguno', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F6E65, 'Aucun', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F6E65, 'Nessuno', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F6E65, 'Å»aden', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6F7420616374697665, 'Nicht aktiv', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F7420616374697665, 'Innactivo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F7420616374697665, 'Non actif', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F7420616374697665, 'Non attivo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F7420616374697665, 'Nicht aktiv', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6F7420616374697665, 'ÐÐµ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4E6F742061737369676E6564, 'Nicht zugewiesen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F742061737369676E6564, 'No asignado', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F742061737369676E6564, 'Non assignÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F742061737369676E6564, 'Non assegnato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F742061737369676E6564, 'Nie przypisano', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6F742076697369746564, 'Non visitato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F6B, 'Ok', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F6B, 'Aceptar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4F6B, 'Ok', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F6B, 'Ok', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F6B, 'Ok', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4F6B, 'Ok', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4F6C642076616C7565, 'Alter Wert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F6C642076616C7565, 'Valor antiguo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4F6C642076616C7565, 'Ancienne valeur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F6C642076616C7565, 'Vecchio valore', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F6C642076616C7565, 'Stara wartoÅ›Ä‡', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4F6E65206F662074686520726563697069656E747320287B757365726E616D657D29206861732069676E6F72656420796F752E204D6573736167652077696C6C206E6F742062652073656E7421, 'Einer der gewählten Benutzer ({username}) hat Sie auf seiner Ignorier-Liste. Die Nachricht wird nicht gesendet!', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F6E65206F662074686520726563697069656E747320287B757365726E616D657D29206861732069676E6F72656420796F752E204D6573736167652077696C6C206E6F742062652073656E7421, 'Uno de los destinatarios ({username}) te ha ignorado. ¡No se enviará el mensaje!', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4F6E65206F662074686520726563697069656E747320287B757365726E616D657D29206861732069676E6F72656420796F752E204D6573736167652077696C6C206E6F742062652073656E7421, 'Un des membres sÃ©lectionnÃ© vous a mis sur sa liste noire ({username}). Ce message ne sera pas envoyÃ©!', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F6E65206F662074686520726563697069656E747320287B757365726E616D657D29206861732069676E6F72656420796F752E204D6573736167652077696C6C206E6F742062652073656E7421, 'Un destinatario ({username}) ti ha inserito nella lista degli ignorati. Messaggio non inviato!', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C79206F776E6572, 'Nur Besitzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C79206F776E6572, 'Sólo el dueño', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C79206F776E6572, 'PropriÃ©taire seulement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C79206F776E6572, 'Solo proprietario', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C79206F776E6572, 'Ð¢Ð¾Ð»ÑŒÐºÐ¾ Ð²Ð»Ð°Ð´ÐµÐ»ÐµÑ†', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C7920796F757220667269656E6473206172652073686F776E2068657265, 'Nur ihre Kontakte werden hier angezeigt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C7920796F757220667269656E6473206172652073686F776E2068657265, 'Seuls vos contacts seront visibles ici', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C7920796F757220667269656E6473206172652073686F776E2068657265, 'Solo i tuoi contatti verranno visualizzati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F7264657220636F6E6669726D6564, 'Bestellbestätigung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F7264657220636F6E6669726D6564, 'Ordini confermati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F726465722064617465, 'Bestelldatum', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F726465722064617465, 'Data ordine', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F72646572206D656D62657273686970, 'Mitgliedschaft bestellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F72646572206D656D62657273686970, 'Ordine iscrizione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F72646572206E756D626572, 'Bestellnummer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F72646572206E756D626572, 'Numero ordine', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F726465726564206174, 'Bestellt am', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F726465726564206174, 'Ordinato il', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F726465726564206D656D6265727368697073, 'Bestellte Mitgliedschaften', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F726465726564206D656D6265727368697073, 'Options complÃ©mentaires', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F726465726564206D656D6265727368697073, 'Iscrizioni ordinate', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F74686572, 'Verschiedenes', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F74686572, 'Otro', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4F74686572, 'Divers', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F74686572, 'Altro', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F74686572, 'PozostaÅ‚e', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4F746865722056616C696461746F72, 'Otro validador', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4F746865722056616C696461746F72, 'Autre validation', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F746865722056616C696461746F72, 'Altro validatore', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F746865722056616C696461746F72, 'Ð”Ñ€ÑƒÐ³Ð¾Ð¹ Ð²Ð°Ð»Ð¸Ð´Ð°Ñ‚Ð¾Ñ€', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5061727469636970616E7420636F756E74, 'Anzahl Teilnehmer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5061727469636970616E7473, 'Teilnehmer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5061727469636970616E7473, 'Partecipanti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F7264, 'Passwort', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F7264, 'Contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F7264, 'Passwort', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F7264, 'Password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F7264, 'HasÅ‚o', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F72642045787069726174696F6E2054696D65, 'Ablaufzeit von Passwörtern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F72642045787069726174696F6E2054696D65, 'Tiempo de expiración de la contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F72642045787069726174696F6E2054696D65, 'DurÃ©e de vie des mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F72642045787069726174696F6E2054696D65, 'Scadenza password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F72642045787069726174696F6E2054696D65, 'Czas waÅ¼noÅ›ci hasÅ‚a', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F726420697320696E636F72726563742E, 'Passwort ist falsch.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F726420697320696E636F72726563742E, 'Contraseña incorrecta', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F726420697320696E636F72726563742E, 'Le mot de passe est incorrect.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F726420697320696E636F72726563742E, 'Password incorretta', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F726420697320696E636F72726563742E, 'Niepoprawne hasÅ‚o.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F726420697320696E636F72726563742E, 'ÐÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F7264207265636F76657279, 'Passwort wiederherstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F7264207265636F76657279, 'Recuperación de contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F72647320646F206E6F74206D61746368, 'Las contraseñas no coinciden', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E74, 'Zahlungsmethode', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E74, 'Pagamento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E742061727269766564, 'Zahlungseingang bestätigt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E742061727269766564, 'Pagamento arrivato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E742064617465, 'Bezahlt am', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E742064617465, 'Data pagamento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E74207479706573, 'Zahlungsarten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E74207479706573, 'Options de paiement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E74207479706573, 'Tipi pagamento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E7473, 'Zahlungsarten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E7473, 'Pagamenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5065726D697373696F6E73, 'Berechtigungen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5065726D697373696F6E73, 'Permisos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5065726D697373696F6E73, 'Permissions', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5065726D697373696F6E73, 'Autorizzazioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520616374697661746520796F75206163636F756E7420676F20746F207B61637469766174696F6E5F75726C7D, 'Perfavore attiva il tuo accounto all\'indirizzo {activation_url}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20416E20696E737472756374696F6E73207761732073656E7420746F20796F757220656D61696C20616464726573732E, 'Bitte überprüfen Sie Ihre E-Mails. Eine Anleitung wurde an Ihre E-Mail-Adresse geschickt.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20416E20696E737472756374696F6E73207761732073656E7420746F20796F757220656D61696C20616464726573732E, 'Por favor verifica tu e-mail a donde se han enviado más instrucciones.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20416E20696E737472756374696F6E73207761732073656E7420746F20796F757220656D61696C20616464726573732E, 'Controlez votre boite e-mail, d autres instructions vous ont Ã©tÃ© envoyÃ©es par e-mail. *IMPORTANT:pour le cas ou notre e-mail ne vous serais pas parvenu, il est possible que notre e-mail ai Ã©tÃ© filtrÃ© par votre fournisseur  d accÃ¨s internet et placÃ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20416E20696E737472756374696F6E73207761732073656E7420746F20796F757220656D61696C20616464726573732E, 'Perfavore controlla la tua email con le istruzioni che ti abbiamo inviato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20416E20696E737472756374696F6E73207761732073656E7420746F20796F757220656D61696C20616464726573732E, 'Bitte Ã¼berprÃ¼fen Sie Ihre E-Mails. Eine Anleitung wurde an Ihre E-Mail-Adresse geschickt.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20416E20696E737472756374696F6E73207761732073656E7420746F20796F757220656D61696C20616464726573732E, 'ÐÐ° Ð’Ð°Ñˆ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹ Ð±Ñ‹Ð»Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾ Ð¿Ð¸ÑÑŒÐ¼Ð¾ Ñ Ð¸Ð½ÑÑ‚Ñ€ÑƒÐºÑ†Ð¸ÑÐ¼Ð¸.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20496E737472756374696F6E732068617665206265656E2073656E7420746F20796F757220656D61696C20616464726573732E, 'Bitte schauen Sie in Ihr Postfach. Weitere Anweisungen wurden per E-Mail geschickt.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20496E737472756374696F6E732068617665206265656E2073656E7420746F20796F757220656D61696C20616464726573732E, 'Por favor revisa tu e-mail. Hemos enviado intrusiones a tu dirección de e-mail.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20496E737472756374696F6E732068617665206265656E2073656E7420746F20796F757220656D61696C20616464726573732E, 'Controlez votre boite e-mail. D autres instructions vous ont Ã©tÃ© envoyÃ©es par e-mail. *IMPORTANT:pour le cas ou notre e-mail ne vous serais pas parvenu, il est possible que notre e-mail ai Ã©tÃ© filtrÃ© par votre fournisseur  d accÃ¨s internet et placÃ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20496E737472756374696F6E732068617665206265656E2073656E7420746F20796F757220656D61696C20616464726573732E, 'Si prega di controllare la casella di posta. Ulteriori istruzioni sono state inviate via e-mail.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20496E737472756374696F6E732068617665206265656E2073656E7420746F20796F757220656D61696C20616464726573732E, 'ProszÄ™ sprawdÅº TwÃ³j mejl. Instrukcje zostaÅ‚y wysÅ‚ane na TwÃ³j adres mejlowy.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220612072657175657374204D65737361676520757020746F203235352063686172616374657273, 'Bitte geben Sie eine Nachricht bis zu 255 Zeichen an, die dem Benutzer bei der Kontaktanfrage mitgegeben wird', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220612072657175657374204D65737361676520757020746F203235352063686172616374657273, 'Por favor escribe un mensaje no mayor a 255 caracteres', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220612072657175657374204D65737361676520757020746F203235352063686172616374657273, 'Vous pouvez ajouter un message personalisÃ© de 255 charactÃ¨res Ã  votre demande de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220612072657175657374204D65737361676520757020746F203235352063686172616374657273, 'Perfavore inserisci un messaggio di richiesta di massimo 255 caratteri', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220746865206C6574746572732061732074686579206172652073686F776E20696E2074686520696D6167652061626F76652E, 'Bitte geben Sie die, oben im Bild angezeigten, Buchstaben ein.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220746865206C6574746572732061732074686579206172652073686F776E20696E2074686520696D6167652061626F76652E, 'Por favor escribe las letras que se muestran en la imagen.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220746865206C6574746572732061732074686579206172652073686F776E20696E2074686520696D6167652061626F76652E, 'Recopiez les charactÃ¨res apparaissant dans l image au dessus.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220746865206C6574746572732061732074686579206172652073686F776E20696E2074686520696D6167652061626F76652E, 'Perfavore inserire le lettere mostrate nella seguente immagine.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220746865206C6574746572732061732074686579206172652073686F776E20696E2074686520696D6167652061626F76652E, 'Bitte geben Sie die, oben im Bild angezeigten, Buchstaben ein.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220746865206C6574746572732061732074686579206172652073686F776E20696E2074686520696D6167652061626F76652E, 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð±ÑƒÐºÐ²Ñ‹, Ð¿Ð¾ÐºÐ°Ð·Ð°Ð½Ð½Ñ‹Ðµ Ð½Ð° ÐºÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐµ Ð²Ñ‹ÑˆÐµ.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F7572206C6F67696E206F7220656D61696C206164647265732E, 'Perfavore inserisci il tuo username o l\'indirizzo mail.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F7572206C6F67696E206F7220656D61696C206164647265732E, 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð’Ð°Ñˆ Ð»Ð¾Ð³Ð¸Ð½ Ð¸Ð»Ð¸ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F7572206C6F67696E206F7220656D61696C20616464726573732E, 'Bitte geben Sie Ihren Benutzernamen oder E-Mail-Adresse ein.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F7572206C6F67696E206F7220656D61696C20616464726573732E, 'Por favor escribe tu nombre de usuario o dirección de e-mail.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F7572206C6F67696E206F7220656D61696C20616464726573732E, 'Indiquez dans ce champ, votre nom d utilisateur ou votre adresse e-mail.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F7572206C6F67696E206F7220656D61696C20616464726573732E, 'Inserisci il tuo nome utente o indirizzo e-mail.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F7572206C6F67696E206F7220656D61696C20616464726573732E, 'Bitte geben Sie Ihren Benutzernamen oder E-Mail-Adresse ein.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722070617373776F726420746F20636F6E6669726D2064656C6574696F6E3A, 'Bitte geben Sie Ihr Passwort ein, um den Löschvorgang zu bestätigen:', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722070617373776F726420746F20636F6E6669726D2064656C6574696F6E3A, 'Por favor escribe tu contraseña para confirmar la eliminación:', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722070617373776F726420746F20636F6E6669726D2064656C6574696F6E3A, 'Renseignez votre mot de passe, pour confirmer la suppression:', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722070617373776F726420746F20636F6E6669726D2064656C6574696F6E3A, 'Si prega di inserire la password per confermare l\'eliminazione:', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722070617373776F726420746F20636F6E6669726D2064656C6574696F6E3A, 'ProszÄ™ wprowadÅº swoje hasÅ‚o w celu potwierdzenia usuwania:', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722075736572206E616D65206F7220656D61696C20616464726573732E, 'Bitte geben Sie Ihren Benutzernamen oder E-mail Adresse ein', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722075736572206E616D65206F7220656D61696C20616464726573732E, 'Renseignez votre nom d utilisateur ou votre adresse e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722075736572206E616D65206F7220656D61696C20616464726573732E, 'Inserisci il tuo nome utente o indirizzo e-mail', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C656173652066696C6C206F75742074686520666F6C6C6F77696E6720666F726D207769746820796F7572206C6F67696E2063726564656E7469616C733A, 'Bitte geben Sie ihre Login-Daten ein:', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C656173652066696C6C206F75742074686520666F6C6C6F77696E6720666F726D207769746820796F7572206C6F67696E2063726564656E7469616C733A, 'Por favor llena el formulario con tu información de inicio de sesión:', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C656173652066696C6C206F75742074686520666F6C6C6F77696E6720666F726D207769746820796F7572206C6F67696E2063726564656E7469616C733A, 'Entrez dans le champ vos donnÃ©es de connection:', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C656173652066696C6C206F75742074686520666F6C6C6F77696E6720666F726D207769746820796F7572206C6F67696E2063726564656E7469616C733A, 'Perfavore inserisci le tue credenziali d\'accesso:', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C656173652066696C6C206F75742074686520666F6C6C6F77696E6720666F726D207769746820796F7572206C6F67696E2063726564656E7469616C733A, 'Bitte geben Sie ihre Login-Daten ein:', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x506C656173652066696C6C206F75742074686520666F6C6C6F77696E6720666F726D207769746820796F7572206C6F67696E2063726564656E7469616C733A, 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð·Ð°Ð¿Ð¾Ð»Ð½Ð¸Ñ‚Ðµ ÑÐ»ÐµÐ´ÑƒÑŽÑ‰ÑƒÑŽ Ñ„Ð¾Ñ€Ð¼Ñƒ Ñ Ð²Ð°ÑˆÐ¸Ð¼Ð¸ Ð›Ð¾Ð³Ð¸Ð½ Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÐµÐ¼:', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x506C65617365206C6F6720696E20696E746F20746865206170706C69636174696F6E2E, 'Por favor, entra a la aplicación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C656173652076657269667920796F757220452D4D61696C2061646472657373, 'Por favor verifica tu dirección de correo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506F736974696F6E, 'Position', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506F736974696F6E, 'Posición', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506F736974696F6E, 'Position', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506F736974696F6E, 'Posizioe', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506F736974696F6E, 'ÐŸÐ¾Ð·Ð¸Ñ†Ð¸Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x507265646566696E65642076616C75657320286578616D706C653A20312C20322C20332C20342C20353B292E, 'Vordefinierter Bereich (z.B. 1, 2, 3, 4, 5),', 'de', 'yum');
INSERT INTO `translation` VALUES (0x507265646566696E65642076616C75657320286578616D706C653A20312C20322C20332C20342C20353B292E, 'Valores predefinidos (ejemplo: 1,2,3,4,5;).', 'es', 'yum');
INSERT INTO `translation` VALUES (0x507265646566696E65642076616C75657320286578616D706C653A20312C20322C20332C20342C20353B292E, 'Valeur prÃ©dÃ©finie (z.B. 1, 2, 3, 4, 5),', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x507265646566696E65642076616C75657320286578616D706C653A20312C20322C20332C20342C20353B292E, 'Valori predefiniti (es. 1, 2, 3, 4, 5),', 'it', 'yum');
INSERT INTO `translation` VALUES (0x507265646566696E65642076616C75657320286578616D706C653A20312C20322C20332C20342C20353B292E, 'ÐŸÑ€ÐµÐ´Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð½Ñ‹Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ñ (Ð¿Ñ€Ð¸Ð¼ÐµÑ€: 1;2;3;4;5;).', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x507265736576652050726F66696C6573, 'Profile aufbewahren', 'de', 'yum');
INSERT INTO `translation` VALUES (0x507265736576652050726F66696C6573, 'Preservar Perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x507265736576652050726F66696C6573, 'Profile aufbewahren ???', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x507265736576652050726F66696C6573, 'Mantieni profili', 'it', 'yum');
INSERT INTO `translation` VALUES (0x507265736576652050726F66696C6573, 'Zachowaj profil', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5072696365, 'Preis', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5072696365, 'Prix', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5072696365, 'Prezzo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726976616379, 'Privatsphäre', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726976616379, 'Privacidad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726976616379, 'DonnÃ©es privÃ©es', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726976616379, 'Privacy', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726976616379, 'PrivatsphÃ¤re', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E6773, 'Privatsphäre', 'de', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E6773, 'Configuración de Privacidad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E6773, 'Vos donnÃ©es personnelles', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E6773, 'Privacy', 'it', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E677320666F72207B757365726E616D657D, 'Privatsphäreneinstellungen für {username}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E677320666F72207B757365726E616D657D, 'Configuración de Privacidad para {username}', 'es', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E677320666F72207B757365726E616D657D, 'Configuration des donnÃ©es privÃ©es pour {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E677320666F72207B757365726E616D657D, 'Opzioni Privacy per {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5072697661637973657474696E6773, 'Privatsphäre', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5072697661637973657474696E6773, 'Configuración de Privacidad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5072697661637973657474696E6773, 'DonnÃ©es privÃ©es', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5072697661637973657474696E6773, 'Opzioni privacy', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65, 'Profil', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65, 'Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65, 'Profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65, 'Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65, 'Profil', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65, 'ÐŸÑ€Ð¾Ñ„Ð¸Ð»ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520436F6D6D656E7473, 'Pinnwand', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520436F6D6D656E7473, 'COmentarios de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520436F6D6D656E7473, 'Pinnwand', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520436F6D6D656E7473, 'Commenti profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65204669656C6473, 'Profilfelder', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65204669656C6473, 'Campos de Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65204669656C6473, 'Champs des profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65204669656C6473, 'Campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65204669656C6473, 'Pola profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65204669656C6473, 'ÐŸÐ¾Ð»Ñ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C642067726F757073, 'Profilfeldgruppen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C642067726F757073, 'Grupos de campos de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C642067726F757073, 'Champs des profils de groupes.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C642067726F757073, 'Campo profilo gruppi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207075626C6963206F7074696F6E73, 'Einstellungen der Profilfelder', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207075626C6963206F7074696F6E73, 'Configuration des champs publique du profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207075626C6963206F7074696F6E73, 'Opzioni pubbliche campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207B6669656C646E616D657D, 'Profilfeld {fieldname}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207B6669656C646E616D657D, 'Campo de perfil {fieldname}', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207B6669656C646E616D657D, 'Camp de profil {fieldname}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207B6669656C646E616D657D, '{fieldname} campo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207B6669656C646E616D657D, 'Pole profilu {fieldname}', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C6473, 'Profilfeldverwaltung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C6473, 'Campos de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C6473, 'Gestion des champs de profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C6473, 'Campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C6473, 'Pole profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64732067726F757073, 'Profilfeldgruppen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64732067726F757073, 'Grupos de campos de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64732067726F757073, 'Champ des profils de groupes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64732067726F757073, 'Campi profilo gruppi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64732067726F757073, 'Grupy pÃ³l w profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520686973746F7279, 'Profilverlauf', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520686973746F7279, 'Historial del perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520686973746F7279, 'Chronique du profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520686973746F7279, 'Storico profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520686973746F7279, 'Historia profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206E756D626572, 'Profilnummer: ', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206E756D626572, 'Número de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206E756D626572, 'NumÃ©ro du profil: ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206E756D626572, 'Numero profilo: ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206E756D626572, 'Numer profilu: ', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206F6620, 'Profil von ', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206F6620, 'Perfil de', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206F6620, 'Profil de ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206F6620, 'Profilo di ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520766973697473, 'Profilbesuche', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520766973697473, 'Visiteurs de mon profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520766973697473, 'Visite profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6573, 'Profile', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6573, 'Perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6573, 'Profiles', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6573, 'Profili', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6573, 'Profile', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x52616E6765, 'Bereich', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52616E6765, 'Rango', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52616E6765, 'Intervallo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52616E6765, 'Ð ÑÐ´ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ð¹', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x52656164204F6E6C792050726F66696C6573, 'Nur-Lese Profile', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656164204F6E6C792050726F66696C6573, 'Perfiles de Sólo Lectura', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656164204F6E6C792050726F66696C6573, 'Lecture seule des profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656164204F6E6C792050726F66696C6573, 'Profilo sola lettura', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656164204F6E6C792050726F66696C6573, 'Profile tylko do odczytu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C20666F72206E657720467269656E64736869702072657175657374, 'E-Mail Benachrichtigung bei neuer Kontaktanfrage', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C20666F72206E657720467269656E64736869702072657175657374, 'Recibir un correo cuando recibas una nueva solicitud de amistad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C20666F72206E657720467269656E64736869702072657175657374, 'Informez moi par e-mail pour les nouvelles demandes de contact.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C20666F72206E657720467269656E64736869702072657175657374, 'Email di notifica per nuovo contatto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E2061206E65772070726F66696C6520636F6D6D656E7420776173206D616465, 'E-Mail Benachrichtigung bei Profilkommentar', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E2061206E65772070726F66696C6520636F6D6D656E7420776173206D616465, 'Recibir un correo cuando comenten en tu perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E2061206E65772070726F66696C6520636F6D6D656E7420776173206D616465, 'Informez moi par e-mail e-mail pour les nouveaux commentaire de mon profil ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E2061206E65772070726F66696C6520636F6D6D656E7420776173206D616465, 'Email di notifica per nuovo commento al profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E206E6577204D6573736167652061727269766573, 'E-Mail Benachrichtigung bei neuer interner Nachricht', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E206E6577204D6573736167652061727269766573, 'Recibir un correo cuanto te llegue un nuevo mensaje', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E206E6577204D6573736167652061727269766573, 'Informez moi par e-mail pour les nouveaux messages. ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E206E6577204D6573736167652061727269766573, 'Email di notifica per i nuovi messaggi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656769737465726564207573657273, 'Registrierte Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656769737465726564207573657273, 'Usuarios registrados', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656769737465726564207573657273, 'Membre enregistrÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656769737465726564207573657273, 'Utenti registrati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656769737465726564207573657273, 'Ð—Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E, 'Registrierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E, 'Registro', 'es', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E, 'Inscription', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E, 'Reistrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E, 'Rejestracja', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E, 'Ð ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E2064617465, 'Anmeldedatum', 'de', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E2064617465, 'Fecha de registro', 'es', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E2064617465, 'Date d inscription', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E2064617465, 'Data registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E2064617465, 'Anmeldedatum', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E2064617465, 'Ð”Ð°Ñ‚Ð° Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x526567756C61722065787072657373696F6E20286578616D706C653A20272F5E5B412D5A612D7A302D39732C5D2B242F7527292E, 'Regulärer Ausdruck (z. B.: \'/^[A-Za-z0-9s,]+$/u\')', 'de', 'yum');
INSERT INTO `translation` VALUES (0x526567756C61722065787072657373696F6E20286578616D706C653A20272F5E5B412D5A612D7A302D39732C5D2B242F7527292E, 'Expresión regular (ejemplo: \'/^[A-Za-z0-9s,]+$/u\')', 'es', 'yum');
INSERT INTO `translation` VALUES (0x526567756C61722065787072657373696F6E20286578616D706C653A20272F5E5B412D5A612D7A302D39732C5D2B242F7527292E, 'Expression regulaire (exemple.: \'/^[A-Za-z0-9s,]+$/u\')', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x526567756C61722065787072657373696F6E20286578616D706C653A20272F5E5B412D5A612D7A302D39732C5D2B242F7527292E, 'Espressione regolare (esempio: \'/^[A-Za-z0-9s,]+$/u\')', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526567756C61722065787072657373696F6E20286578616D706C653A20272F5E5B412D5A612D7A302D39732C5D2B242F7527292E, 'Ð ÐµÐ³ÑƒÐ»ÑÑ€Ð½Ñ‹Ðµ Ð²Ñ‹Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ (Ð¿Ñ€Ð¸Ð¼ÐµÑ€: \'/^[A-Za-z0-9s,]+$/u\')', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x52656D656D626572206D65206E65742074696D65, 'ZapamiÄ™taj mnie nastÄ™pnym razem', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x52656D656D626572206D65206E6578742074696D65, 'Angemeldet bleiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656D656D626572206D65206E6578742074696D65, 'Recordarme la próxima vez', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656D656D626572206D65206E6578742074696D65, 'Rester connectÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656D656D626572206D65206E6578742074696D65, 'Ricordami', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656D656D626572206D65206E6578742074696D65, 'Ð—Ð°Ð¿Ð¾Ð¼Ð½Ð¸Ñ‚ÑŒ Ð¼ÐµÐ½Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F7665, 'Entfernen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F7665, 'Supprimer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F7665, 'Rimuovi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520417661746172, 'Profilbild entfernen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520417661746172, 'Borrar este Avatar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520417661746172, 'Supprimer l image de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520417661746172, 'Rimuovi avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520636F6D6D656E74, 'Kommentar entfernen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520636F6D6D656E74, 'Borrar comentario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520636F6D6D656E74, 'Supprimer ce commentaire', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520636F6D6D656E74, 'Rimuovi commento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520667269656E64, 'Freundschaft kündigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520667269656E64, 'Borrar amigo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520667269656E64, 'Supprimer ce contact de ma liste', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520667269656E64, 'Rimuovi contatto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265706C79, 'Antwort', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5265706C79, 'Responder', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5265706C79, 'RÃ©pondre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5265706C79, 'Rispondi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265706C79, 'Odpowiedz', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5265706C7920746F204D657373616765, 'auf diese Nachricht antworten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5265706C7920746F204D657373616765, 'Responder al Mensaje', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5265706C7920746F204D657373616765, 'RÃ©pondre Ã  ce message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5265706C7920746F204D657373616765, 'Rispondi al messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265706C7920746F204D657373616765, 'Odpowiedz', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5265706C7920746F206D657373616765, 'Responder al mensaje', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5265706C7920746F206D657373616765, 'Rispondi al messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265717565737420667269656E647368697020666F722075736572207B757365726E616D657D, 'Kontaktanfrage für {username}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5265717565737420667269656E647368697020666F722075736572207B757365726E616D657D, 'Solicitar amistar al usuario {username}', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5265717565737420667269656E647368697020666F722075736572207B757365726E616D657D, 'Demande de contact pour {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5265717565737420667269656E647368697020666F722075736572207B757365726E616D657D, 'Richiesta contatto per {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265717569726564, 'Benötigt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5265717569726564, 'Requerido', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5265717569726564, 'Recquis', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5265717569726564, 'Obbligatorio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265717569726564, 'ÐžÐ±ÑÐ·Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾ÑÑ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5265717569726564206669656C642028666F726D2076616C696461746F72292E, 'Campo obbligatorio (validazione form).', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265717569726564206669656C642028666F726D2076616C696461746F72292E, 'ÐžÐ±ÑÐ·Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ðµ Ð¿Ð¾Ð»Ðµ (Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐ° Ñ„Ð¾Ñ€Ð¼Ñ‹).', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x526573746F7265, 'Wiederherstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x526573746F7265, 'Recuperar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x526573746F7265, 'Restaurer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x526573746F7265, 'Ripristino', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526573746F7265, 'Wiederherstellen', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x526573746F7265, 'Ð’Ð¾ÑÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652050617373776F7264, 'ÐŸÐ¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652050617373776F726420697320696E636F72726563742E, 'ÐŸÐ°Ñ€Ð¾Ð»Ð¸ Ð½Ðµ ÑÐ¾Ð²Ð¿Ð°Ð´Ð°ÑŽÑ‚.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F7264, 'Passwort wiederholen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F7264, 'Repite la contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F7264, 'Redonnez votre mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F7264, 'Conferma password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F7264, 'Passwort wiederholen', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F726420697320696E636F72726563742E, 'Wiederholtes Passwort ist falsch.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F726420697320696E636F72726563742E, 'Contraseña repetida incorrecta', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F726420697320696E636F72726563742E, 'Le mot de passe est a nouveau incorrect.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F726420697320696E636F72726563742E, 'Conferma password Ã¨ errata.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F726420697320696E636F72726563742E, 'Wiederholtes Passwort ist falsch.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x52657479706520796F7572206E65772070617373776F7264, 'Wiederholen Sie Ihr neues Passwort', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52657479706520796F7572206E65772070617373776F7264, 'Confirmez votre nouveau mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52657479706520796F7572206E65772070617373776F7264, 'Confermare la nuova password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526574797065642070617373776F726420697320696E636F7272656374, 'Wiederholtes Passwort ist nicht identisch', 'de', 'yum');
INSERT INTO `translation` VALUES (0x526574797065642070617373776F726420697320696E636F7272656374, 'Le mot de passe renseignÃ© n est pas identique au prÃ©cÃ©dent', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x526574797065642070617373776F726420697320696E636F7272656374, 'Password di conferma non identica', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526F6C652041646D696E697374726174696F6E, 'Rollenverwaltung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x526F6C652041646D696E697374726174696F6E, 'Administración de rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x526F6C652041646D696E697374726174696F6E, 'Gestion des rÃ´les', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x526F6C652041646D696E697374726174696F6E, 'Gestione dei ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526F6C652041646D696E697374726174696F6E, 'ZarzÄ…dzanie rolami', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x526F6C6573, 'Rollen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x526F6C6573, 'Roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x526F6C6573, 'RÃ´les', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x526F6C6573, 'Ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526F6C6573, 'Role', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x526F6C6573202F2041636365737320636F6E74726F6C, 'Rollen / Zugangskontrolle', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53617665, 'Sichern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53617665, 'Guardar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53617665, 'MÃ©moriser', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53617665, 'Salva', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53617665, 'Sichern', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53617665, 'Ð¡Ð¾Ñ…Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x53617665207061796D656E742074797065, 'Zahlungsart speichern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53617665207061796D656E742074797065, 'Salva tipo pagamento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x536176652070726F66696C65206368616E676573, 'Profiländerungen speichern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x536176652070726F66696C65206368616E676573, 'Salva modifiche profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5361766520726F6C65, 'Rolle speichern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5361766520726F6C65, 'MÃ©moriser ce rÃ´le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5361766520726F6C65, 'Salva ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656172636820666F7220757365726E616D65, 'Suche nach Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656172636820666F7220757365726E616D65, 'Recherche par nom d\'utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656172636820666F7220757365726E616D65, 'Cerca per username', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656172636861626C65, 'Suchbar', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656172636861626C65, 'visible', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656172636861626C65, 'Ricercabile', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656C6563742061206D6F6E7468, 'Monatsauswahl', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656C6563742061206D6F6E7468, 'Seleziona un mese', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656C656374206D756C7469706C6520726563697069656E747320627920686F6C64696E6720746865204354524C206B6579, 'Wählen Sie mehrere Empfänger mit der STRG-Taste aus', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656C656374206D756C7469706C6520726563697069656E747320627920686F6C64696E6720746865204354524C206B6579, 'Selecciona varios destinatarios manteniendo presionada la tecla CTRL', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53656C656374206D756C7469706C6520726563697069656E747320627920686F6C64696E6720746865204354524C206B6579, 'Choix multiple en laissant la touche STRG de votre clavier enfoncÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656C656374206D756C7469706C6520726563697069656E747320627920686F6C64696E6720746865204354524C206B6579, 'Seleziona destinatari multipli con il tasto CTRL', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656C65637420746865206669656C647320746861742073686F756C64206265207075626C6963, 'Diese Felder sind öffentlich einsehbar', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656C65637420746865206669656C647320746861742073686F756C64206265207075626C6963, 'Ces champs sont publiques et seront visibles', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656C65637420746865206669656C647320746861742073686F756C64206265207075626C6963, 'Scegli i campi da rendere publici', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656C65637461626C65206F6E20726567697374726174696F6E, 'Während der Registrierung wählbar', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656C65637461626C65206F6E20726567697374726174696F6E, 'Option Ã  selectionner au cours de l inscription', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656C65637461626C65206F6E20726567697374726174696F6E, 'Selezionabile durante la registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656E64, 'Senden', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656E64, 'Enviar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53656E64, 'Envoyer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656E64, 'Invia', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656E64, 'Senden', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53656E642061206D65737361676520746F20746869732055736572, 'Diesem Benutzer eine Nachricht senden', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656E642061206D65737361676520746F20746869732055736572, 'Enviar un mensaje a este Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53656E642061206D65737361676520746F20746869732055736572, 'Faire parvenir un message Ã  ce membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656E642061206D65737361676520746F20746869732055736572, 'Invia messaggio all\'utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656E6420696E7669746174696F6E, 'Kontaktanfrage senden', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656E6420696E7669746174696F6E, 'Enviar invitación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53656E6420696E7669746174696F6E, 'Envoyer la demande de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656E6420696E7669746174696F6E, 'Kontaktanfrage senden', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656E64206D657373616765206E6F74696669657220656D61696C73, 'Benachrichtigungen schicken', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656E64206D657373616765206E6F74696669657220656D61696C73, 'Enviar mensaje de e-mail de notificación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53656E64206D657373616765206E6F74696669657220656D61696C73, 'Envoie d une notification', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656E64206D657373616765206E6F74696669657220656D61696C73, 'Notifiche e-mail', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206174, 'Gesendet am', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206174, 'Enviado al', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206174, 'ENvoyÃ© le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206174, 'Pubblicato il', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206174, 'WysÅ‚ano', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206D65737361676573, 'Gesendete Nachrichten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206D65737361676573, 'Mensajes enviados', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206D65737361676573, 'Message envoyÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206D65737361676573, 'Messaggi inviati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206D65737361676573, 'WysÅ‚ane wiadomoÅ›ci', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x536570617261746520757365726E616D6573207769746820636F6D6D6120746F2069676E6F726520737065636966696564207573657273, 'Benutzernamen mit Komma trennen, um sie zu ignorieren', 'de', 'yum');
INSERT INTO `translation` VALUES (0x536570617261746520757365726E616D6573207769746820636F6D6D6120746F2069676E6F726520737065636966696564207573657273, 'Separa con coma los nombres de los usuarios que deseas ignorar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x536570617261746520757365726E616D6573207769746820636F6D6D6120746F2069676E6F726520737065636966696564207573657273, 'Ma liste noire, pour introduire plusieurs membres en une seule fois, sÃ©parer les noms d utilisateur avec une virgule', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x536570617261746520757365726E616D6573207769746820636F6D6D6120746F2069676E6F726520737065636966696564207573657273, 'Separa gli username con una virgola, per ignorare gli utenti specificati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x536574207061796D656E74206461746520746F20746F646179, 'Zahlungseingang bestätigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x536574207061796D656E74206461746520746F20746F646179, 'Imposta data pagamento ad oggi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E6773, 'Einstellungen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E6773, 'Ajustes', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E6773, 'RÃ©glage', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E6773, 'Impostazioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E6773, 'Ustawienia', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E67732070726F66696C6573, 'Einstellungsprofile', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E67732070726F66696C6573, 'Ajustes de perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E67732070726F66696C6573, 'RÃ©glages des profiles', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E67732070726F66696C6573, 'Impostazioni profili', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E67732070726F66696C6573, 'Ustawienia profili', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061637469766974696573, 'Zeige Aktivitäten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061637469766974696573, 'Voir la chronique des activitÃ©s', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061637469766974696573, 'Mostra attivitÃ ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061646D696E697374726174696F6E20486965726172636879, 'Hierarchie', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061646D696E697374726174696F6E20486965726172636879, 'Mostrar jerarquía de administración', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061646D696E697374726174696F6E20486965726172636879, 'Hierarchie', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061646D696E697374726174696F6E20486965726172636879, 'Gerarchia', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061646D696E697374726174696F6E20486965726172636879, 'PokaÅ¼ hierarchiÄ™ administrowania', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720616C6C, 'Mostra tutti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720667269656E6473, 'Kontaktliste veröffentlichen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720667269656E6473, 'Mostrar amigos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720667269656E6473, 'REndre ma liste de contacts visible', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720667269656E6473, 'Mostra contatti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F77206D79206F6E6C696E652073746174757320746F2065766572796F6E65, 'Meinen Online-Status veröffentlichen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F77206D79206F6E6C696E652073746174757320746F2065766572796F6E65, 'Montrer lorsque je suis en ligne', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F77206D79206F6E6C696E652073746174757320746F2065766572796F6E65, 'Mostra il mio stato a tutti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F77206F6E6C696E6520737461747573, 'Online-Status anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F77206F6E6C696E6520737461747573, 'Status en ligne visible', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F77206F6E6C696E6520737461747573, 'Mostra lo stato online', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207065726D697373696F6E73, 'Berechtigungen anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207065726D697373696F6E73, 'Mostrar permisos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207065726D697373696F6E73, 'Montrer les permissions', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207065726D697373696F6E73, 'Mostra autorizzazioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F772070726F66696C6520766973697473, 'Profilbesuche anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F772070726F66696C6520766973697473, 'Mostrar perfil de visitas', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53686F772070726F66696C6520766973697473, 'Montrer les visites de profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F772070726F66696C6520766973697473, 'Visualizza visite profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720726F6C6573, 'Rollen anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720726F6C6573, 'Mostrar roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720726F6C6573, 'Voir les rÃ´les', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720726F6C6573, 'Mostra ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720726F6C6573, 'PokaÅ¼ role', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720746865206F776E6572207768656E2069207669736974206869732070726F66696C65, 'Dem Profileigentümer erkenntlich machen, wenn ich sein Profil besuche', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720746865206F776E6572207768656E2069207669736974206869732070726F66696C65, 'Montrer aux propriÃ©taires des profils lorsque je consulte leur profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720746865206F776E6572207768656E2069207669736974206869732070726F66696C65, 'Mostra al proprietario quando visito il suo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207573657273, 'Benutzer anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207573657273, 'Mostrar usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207573657273, 'Voir les membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207573657273, 'Mostra utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207573657273, 'PokaÅ¼ uÅ¼ytkownikow', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53746174697374696373, 'Benutzerstatistik', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53746174697374696373, 'Estadísticas', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53746174697374696373, 'Statistiques des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53746174697374696373, 'Statistiche', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53746174697374696373, 'Statystyki', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x537461747573, 'Status', 'de', 'yum');
INSERT INTO `translation` VALUES (0x537461747573, 'Estado', 'es', 'yum');
INSERT INTO `translation` VALUES (0x537461747573, 'Status', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x537461747573, 'Stato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x537461747573, 'Status', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x537461747573, 'Ð¡Ñ‚Ð°Ñ‚ÑƒÑ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x537472656574, 'Straße', 'de', 'yum');
INSERT INTO `translation` VALUES (0x537472656574, 'Calle', 'es', 'yum');
INSERT INTO `translation` VALUES (0x537472656574, 'Rue', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x537472656574, 'Indirizzo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x537472656574, 'Ulica', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5375626A656374, 'Titel', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5375626A656374, 'Sujet', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5375626A656374, 'Oggetto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53756363657373, 'Erfolgreich', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53756363657373, 'Exitoso', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53756363657373, 'RÃ©ussi', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53756363657373, 'Successo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x537570657275736572, 'Superuser', 'de', 'yum');
INSERT INTO `translation` VALUES (0x537570657275736572, 'Superusuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x537570657275736572, 'Superuser', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x537570657275736572, 'Superuser', 'it', 'yum');
INSERT INTO `translation` VALUES (0x537570657275736572, 'Superuser', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x537570657275736572, 'Ð¡ÑƒÐ¿ÐµÑ€ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C2041637469766174696F6E, 'Text Email Konto-Aktivierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C2041637469766174696F6E, 'Texto de activación por correo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C2041637469766174696F6E, 'Texte contenu dans l e-mail d activation de compte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C2041637469766174696F6E, 'Testo email d\'attivazione account', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C205265636F76657279, 'Text E-Mail Passwort wiederherstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C205265636F76657279, 'Texto de recuperación de contraseña por correo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C205265636F76657279, 'Texte contenu dans l e-Mail de renouvellement de mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C205265636F76657279, 'Testo email recupero password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C20526567697374726174696F6E, 'Text E-Mail Registrierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C20526567697374726174696F6E, 'Texto de registro por correo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C20526567697374726174696F6E, 'Texte contenu dans l e-Mail d enregistrement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C20526567697374726174696F6E, 'Testo email di registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20466F6F746572, 'Text im Login-footer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20466F6F746572, 'Text im Login-footer', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20466F6F746572, 'Text im Login-footer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20466F6F746572, 'Testo nel piepagina del login', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20486561646572, 'Text im Login-header', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20486561646572, 'Text im Login-header', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20486561646572, 'Texte de connection-header', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20486561646572, 'Testo nell\'intestazione del login', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20466F6F746572, 'Text im Registrierung-footer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20466F6F746572, 'Text im Registrierung-footer', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20466F6F746572, 'Texte d enregistrement-footer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20466F6F746572, 'Testo nel piepagina della registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20486561646572, 'Text im Registrierung-header', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20486561646572, 'Text im Registrierung-header', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20486561646572, 'Texte d enregistrement-header', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20486561646572, 'Testo nell\'intestazione della registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E657720667269656E64736869702072657175657374, 'Text für eine neue Kontaktanfrage', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E657720667269656E64736869702072657175657374, 'Text für eine neue Kontaktanfrage', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E657720667269656E64736869702072657175657374, 'Texte pour une nouvelle demande de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E657720667269656E64736869702072657175657374, 'Testo per una nuova richiesta di contatto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E65772070726F66696C6520636F6D6D656E74, 'Text für neuen Profilkommentar', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E65772070726F66696C6520636F6D6D656E74, 'Text für neuen Profilkommentar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E65772070726F66696C6520636F6D6D656E74, 'Texte pour un nouveau commentaire dans un profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E65772070726F66696C6520636F6D6D656E74, 'Testo per un nuovo commento al profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54657874207472616E736C6174696F6E73, 'Übersetzungstexte', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20436F6E746163742041646D696E20746F20616374697661746520796F7572206163636F756E742E, 'Grazie per la tua registrazione. Contatta l\'ammnistratore per attivare l\'account', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C206F72206C6F67696E2E, 'Vielen Dank für Ihre Anmeldung. Bitte überprüfen Sie Ihre E-Mails oder loggen Sie sich ein.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C206F72206C6F67696E2E, 'Merci pour votre inscription.Controlez votre boite e-mail, le code d activation de votre compte vous a Ã©tÃ© envoyÃ© par e-mail.Attention! Par mesure de sÃ©curitÃ©, le lien contenu dans ce mail, n est valable que 48h *IMPORTANT:pour le cas ou notre e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C206F72206C6F67696E2E, 'Grazie per la tua registrazione, controlla la tua email o effettua il login,', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C206F72206C6F67696E2E, 'Vielen Dank fÃ¼r Ihre Anmeldung. Bitte Ã¼berprÃ¼fen Sie Ihre E-Mails oder loggen Sie sich ein.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C206F72206C6F67696E2E, 'Ð ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ Ð·Ð°Ð²ÐµÑ€ÑˆÐµÐ½Ð°. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð° Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ ÑÐ²Ð¾Ð¹ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ñ‹Ð¹ ÑÑ‰Ð¸Ðº Ð¸Ð»Ð¸ Ð²Ñ‹Ð¿Ð¾Ð»Ð½Ð¸Ñ‚Ðµ Ð²Ñ…Ð¾Ð´.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C2E, 'Vielen Dank für Ihre Anmeldung. Bitte überprüfen Sie Ihre E-Mails.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C2E, 'Gracias por su registro. Por favor revise su email.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C2E, 'Merci pour votre inscription.Controlez votre boite e-mail, le code d activation de votre compte vous a Ã©tÃ© envoyÃ© par e-mail. *IMPORTANT:pour le cas ou notre e-mail ne vous serais pas parvenu, il est possible que notre e-mail ai Ã©tÃ© filtrÃ© par votre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C2E, 'Grazie per la tua registrazione, controlla la tua email,', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C2E, 'Vielen Dank fÃ¼r Ihre Anmeldung. Bitte Ã¼berprÃ¼fen Sie Ihre E-Mails.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C2E, 'Ð ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ Ð·Ð°Ð²ÐµÑ€ÑˆÐµÐ½Ð°. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð° Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ ÑÐ²Ð¾Ð¹ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ñ‹Ð¹ ÑÑ‰Ð¸Ðº.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C65617365207B7B6C6F67696E7D7D2E, 'Grazie per la tua registrazone. Effettua il {{login}}.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686520636F6D6D656E7420686173206265656E207361766564, 'Der Kommentar wurde gespeichert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686520636F6D6D656E7420686173206265656E207361766564, 'Der Kommentar wurde gespeichert', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54686520636F6D6D656E7420686173206265656E207361766564, 'Le commentaire a bien Ã©tÃ© mÃ©morisÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686520636F6D6D656E7420686173206265656E207361766564, 'Il commento Ã¨ stato salvato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468652066696C6520227B66696C657D22206973206E6F7420616E20696D6167652E, 'Die Datei {file} ist kein Bild.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468652066696C6520227B66696C657D22206973206E6F7420616E20696D6167652E, 'Este archivo {file} no es una imagen.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468652066696C6520227B66696C657D22206973206E6F7420616E20696D6167652E, 'DLe fichier {file} n est pas un fichier image.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468652066696C6520227B66696C657D22206973206E6F7420616E20696D6167652E, 'Il file {file} non Ã¨ un\'immagine.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686520667269656E6473686970207265717565737420686173206265656E2073656E74, 'Die Kontaktanfrage wurde gesendet', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686520667269656E6473686970207265717565737420686173206265656E2073656E74, 'Votre demande de contact Ã  bien Ã©tÃ© envoyÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686520667269656E6473686970207265717565737420686173206265656E2073656E74, 'La richiesta di contatto Ã¨ stata inviata', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D22206865696768742073686F756C6420626520227B6865696768747D7078222E, 'Die Datei {file} muss genau {height}px hoch sein.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D22206865696768742073686F756C6420626520227B6865696768747D7078222E, 'La imagen {file} debe tener {height}px de largo.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D22206865696768742073686F756C6420626520227B6865696768747D7078222E, 'La photo {file} doit avoir une hauteur maximum de {height}px .', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D22206865696768742073686F756C6420626520227B6865696768747D7078222E, 'L\'immagine {file} deve essere {height}px.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D222077696474682073686F756C6420626520227B77696474687D7078222E, 'Die Datei {file} muss genau {width}px breit sein.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D222077696474682073686F756C6420626520227B77696474687D7078222E, 'La imagen {file} debe tener {width}px de ancho.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D222077696474682073686F756C6420626520227B77696474687D7078222E, 'La photo {file} doit avoir une largeur maximum de {width}px .', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D222077696474682073686F756C6420626520227B77696474687D7078222E, 'L\'immagine {file} deve essere larga {width}px.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520686173206265656E20726573697A656420746F207B6D61785F706978656C7D7078207769647468207375636365737366756C6C79, 'Das Bild wurde beim hochladen automatisch auf eine Breite von {max_pixel} skaliert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520686173206265656E20726573697A656420746F207B6D61785F706978656C7D7078207769647468207375636365737366756C6C79, 'Votre photo de profil a Ã©tÃ© retaillÃ©e automatiquement Ã  une taille de{max_pixel}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520686173206265656E20726573697A656420746F207B6D61785F706978656C7D7078207769647468207375636365737366756C6C79, 'Immagine ridimensionata a {max_pixel}px con successo.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D6167652073686F756C642068617665206174206C65617374203530707820616E642061206D6178696D756D206F6620323030707820696E20776964746820616E64206865696768742E20537570706F727465642066696C65747970657320617265202E6A70672C202E67696620616E64202E706E67, 'das Bild sollte mindestens 50px und maximal 200px in der Höhe und Breite betragen. Mögliche Dateitypen sind .jpg, .gif und .png', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D6167652073686F756C642068617665206174206C65617374203530707820616E642061206D6178696D756D206F6620323030707820696E20776964746820616E64206865696768742E20537570706F727465642066696C65747970657320617265202E6A70672C202E67696620616E64202E706E67, 'La imagen debe tener un mínimo de 50px y un máximo de 200px de ancho y largo. Los tipos de archivo soportados son .jpg, .gif y .png', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D6167652073686F756C642068617665206174206C65617374203530707820616E642061206D6178696D756D206F6620323030707820696E20776964746820616E64206865696768742E20537570706F727465642066696C65747970657320617265202E6A70672C202E67696620616E64202E706E67, 'La foto chargÃ©e doit avoir une largeur maximum de 50px  et une hauteur maximale de 200px. Les fichiers acceptÃ©s sont; .jpg, .gif und .png', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D6167652073686F756C642068617665206174206C65617374203530707820616E642061206D6178696D756D206F6620323030707820696E20776964746820616E64206865696768742E20537570706F727465642066696C65747970657320617265202E6A70672C202E67696620616E64202E706E67, 'L\'immagine deve essere almeno 50px e massimo 200px in larghezza e altezza. Tipi di file supportati .jpg, .gif e .png', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D616765207761732075706C6F61646564207375636365737366756C6C79, 'Das Bild wurde erfolgreich hochgeladen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D616765207761732075706C6F61646564207375636365737366756C6C79, 'L image a Ã©tÃ© chargÃ©e avec succÃ¨s', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D616765207761732075706C6F61646564207375636365737366756C6C79, 'Immagine caricata con successo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546865206D6573736167657320666F7220796F7572206170706C69636174696F6E206C616E677561676520617265206E6F7420646566696E65642E, 'Los mensajes para el idioma de tu aplicación no están definidos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546865206D696E696D756D2076616C7565206F6620746865206669656C642028666F726D2076616C696461746F72292E, 'Minimalwert des Feldes (Form-Validierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546865206D696E696D756D2076616C7565206F6620746865206669656C642028666F726D2076616C696461746F72292E, 'El valor mínimo del campo (validador de formulario)', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546865206D696E696D756D2076616C7565206F6620746865206669656C642028666F726D2076616C696461746F72292E, 'Valeur minimum du champ (Validation du formulaire)', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546865206D696E696D756D2076616C7565206F6620746865206669656C642028666F726D2076616C696461746F72292E, 'Valore minimo del campo (validazione form).', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546865206D696E696D756D2076616C7565206F6620746865206669656C642028666F726D2076616C696461746F72292E, 'ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»Ñ (Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐ° Ñ„Ð¾Ñ€Ð¼Ñ‹).', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x546865206E65772070617373776F726420686173206265656E207361766564, 'Das neue Passwort wurde gespeichert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546865206E65772070617373776F726420686173206265656E207361766564, 'Votre nouveau mot de passe a bien Ã©tÃ© mÃ©morisÃ©.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546865206E65772070617373776F726420686173206265656E207361766564, 'La nuova password Ã¨ stata salvata.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546865206E65772070617373776F726420686173206265656E2073617665642E, 'La nueva contraseña ha sido guardada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468652076616C7565206F66207468652064656661756C74206669656C6420286461746162617365292E, 'Standard-Wert für die Datenbank', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468652076616C7565206F66207468652064656661756C74206669656C6420286461746162617365292E, 'El valor predeterminado del campo (base de datos).', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468652076616C7565206F66207468652064656661756C74206669656C6420286461746162617365292E, 'Valeur standard pour la banque de donnÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468652076616C7565206F66207468652064656661756C74206669656C6420286461746162617365292E, 'Valore del campo predefnito (database).', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468652076616C7565206F66207468652064656661756C74206669656C6420286461746162617365292E, 'DomyÅ›lna wartoÅ›Ä‡ pola (bazodanowego).', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5468652076616C7565206F66207468652064656661756C74206669656C6420286461746162617365292E, 'Ð—Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»Ñ Ð¿Ð¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ (Ð±Ð°Ð·Ð° Ð´Ð°Ð½Ð½Ñ‹Ñ…).', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265206120746F74616C206F66207B6D657373616765737D206D6573736167657320696E20796F75722053797374656D2E, 'Es gibt in ihrem System insgesamt {messages} Nachrichten.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265206120746F74616C206F66207B6D657373616765737D206D6573736167657320696E20796F75722053797374656D2E, 'Hay un total de {messages} mensajes en su sistema.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265206120746F74616C206F66207B6D657373616765737D206D6573736167657320696E20796F75722053797374656D2E, 'Il existe dans votre systÃ¨me {messages} messages.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265206120746F74616C206F66207B6D657373616765737D206D6573736167657320696E20796F75722053797374656D2E, 'Ci sno un totale di {messages} messaggi nel Sistema.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265206120746F74616C206F66207B6D657373616765737D206D6573736167657320696E20796F75722053797374656D2E, 'Istnieje {messages} wiadomoÅ›ci w Twoim systemie.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B6163746976655F75736572737D2061637469766520616E64207B696E6163746976655F75736572737D20696E61637469766520757365727320696E20796F75722053797374656D2C2066726F6D207768696368207B61646D696E5F75736572737D206172652041646D696E6973747261746F72732E, ' Es gibt {active_users} aktive und {inactive_users} inaktive Benutzer in ihrem System, von denen {admin_users} Benutzer Administratoren sind.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B6163746976655F75736572737D2061637469766520616E64207B696E6163746976655F75736572737D20696E61637469766520757365727320696E20796F75722053797374656D2C2066726F6D207768696368207B61646D696E5F75736572737D206172652041646D696E6973747261746F72732E, 'Hay {active_users} usuarios activos y {inactive_users} usuarios inactivos en su sistema, de los cuales {admin_users} son Administradores.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B6163746976655F75736572737D2061637469766520616E64207B696E6163746976655F75736572737D20696E61637469766520757365727320696E20796F75722053797374656D2C2066726F6D207768696368207B61646D696E5F75736572737D206172652041646D696E6973747261746F72732E, ' Il existe {active_users}  membres actifs et {inactive_users} membres inactifs dans votre systÃ©me, pour lesquels {admin_users} membres sont dÃ©signÃ©s en tant qu administrateurs.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B6163746976655F75736572737D2061637469766520616E64207B696E6163746976655F75736572737D20696E61637469766520757365727320696E20796F75722053797374656D2C2066726F6D207768696368207B61646D696E5F75736572737D206172652041646D696E6973747261746F72732E, ' Ci sono {active_users} utenti attivi e {inactive_users} utenti inattivi nel Sistema, di cui {admin_users} sono amministratori.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B6163746976655F75736572737D2061637469766520616E64207B696E6163746976655F75736572737D20696E61637469766520757365727320696E20796F75722053797374656D2C2066726F6D207768696368207B61646D696E5F75736572737D206172652041646D696E6973747261746F72732E, 'IstniejÄ… {active_users} aktywni i {inactive_users} nieaktywni uÅ¼ytkownicy w Twoim systemie, w tym {admin_users} administratorzy.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B70726F66696C65737D2070726F66696C657320696E20796F75722053797374656D2E20546865736520636F6E73697374206F66207B70726F66696C655F6669656C64737D2070726F66696C65206669656C647320696E207B70726F66696C655F6669656C645F67726F7570737D2070726F66696C65206669656C642067726F757073, 'Es gibt {profiles} Profile in ihren System. Diese bestehen aus {profile_fields} Profilfeldern, die sich in {profile_field_groups} Profilfeldgruppen aufteilen.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B70726F66696C65737D2070726F66696C657320696E20796F75722053797374656D2E20546865736520636F6E73697374206F66207B70726F66696C655F6669656C64737D2070726F66696C65206669656C647320696E207B70726F66696C655F6669656C645F67726F7570737D2070726F66696C65206669656C642067726F757073, 'Hay {profiles} perfiles en su sistema. Estos consisten de {profile_fields} campos de perfiles en {profile_field_groups} grupos de campos de perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B70726F66696C65737D2070726F66696C657320696E20796F75722053797374656D2E20546865736520636F6E73697374206F66207B70726F66696C655F6669656C64737D2070726F66696C65206669656C647320696E207B70726F66696C655F6669656C645F67726F7570737D2070726F66696C65206669656C642067726F757073, 'Il existe {profiles} profils dans votre systÃ¨me. Ils se composent de {profile_fields} champs de profils, qui se dÃ©composent {profile_field_groups} en grouppe de champs de profils.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B70726F66696C65737D2070726F66696C657320696E20796F75722053797374656D2E20546865736520636F6E73697374206F66207B70726F66696C655F6669656C64737D2070726F66696C65206669656C647320696E207B70726F66696C655F6669656C645F67726F7570737D2070726F66696C65206669656C642067726F757073, 'Ci sono {profiles} profili nel Sistema. sono costituiti da {profile_fields} campi profili, in {profile_field_groups} campo profili gruppi.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B70726F66696C65737D2070726F66696C657320696E20796F75722053797374656D2E20546865736520636F6E73697374206F66207B70726F66696C655F6669656C64737D2070726F66696C65206669656C647320696E207B70726F66696C655F6669656C645F67726F7570737D2070726F66696C65206669656C642067726F757073, 'IstniejÄ… {profiles} profile w Twoim systemie, ktÃ³re zawierajÄ… pola {profile_fields} w grupach {profile_field_groups}', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B726F6C65737D20726F6C657320696E20796F75722053797374656D2E, 'Es gibt {roles} Rollen in ihrem System', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B726F6C65737D20726F6C657320696E20796F75722053797374656D2E, 'Hay {roles} roles en su sistema.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B726F6C65737D20726F6C657320696E20796F75722053797374656D2E, 'Il existe les {roles} rÃ´les suivant dans votre systÃ¨me', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B726F6C65737D20726F6C657320696E20796F75722053797374656D2E, 'Ci sono {roles} ruoli nel Sistema', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B726F6C65737D20726F6C657320696E20796F75722053797374656D2E, 'Istnieje {roles} rÃ³l w Twoim systemie', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x54686572652077617320616E206572726F7220736176696E67207468652070617373776F7264, 'Fehler beim speichern des Passwortes', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686572652077617320616E206572726F7220736176696E67207468652070617373776F7264, 'Erreur produite lors de la mÃ©morisation de votre mot de passe.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686572652077617320616E206572726F7220736176696E67207468652070617373776F7264, 'Impossibile salvare la password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E7420697320626C6F636B65642E, 'Ihr Konto wurde blockiert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E7420697320626C6F636B65642E, 'Esta cuenta está bloqueada.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E7420697320626C6F636B65642E, 'Votre compte a Ã©tÃ© bloquÃ©. Contactez nous.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E7420697320626C6F636B65642E, 'Il tuo account Ã¨ stato bloccato.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E7420697320626C6F636B65642E, 'To konto jest zablokowane.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E74206973206E6F74206163746976617465642E, 'Ihr Konto wurde nicht aktiviert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E74206973206E6F74206163746976617465642E, 'Esta cuenta no está activada.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E74206973206E6F74206163746976617465642E, 'Votre compte n a pas Ã©tÃ© activÃ©.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E74206973206E6F74206163746976617465642E, 'Il tuo account non Ã¨ attivato.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E74206973206E6F74206163746976617465642E, 'To konto nie zostaÅ‚o jeszcze aktywowane.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x54686973206D656D62657273686970206973207374696C6C207B646179737D206461797320616374697665, 'Die Mitgliedschaft ist noch {days} Tage aktiv', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686973206D656D62657273686970206973207374696C6C207B646179737D206461797320616374697665, 'L\'iscrizione Ã¨ ancora attiva per {days} giorni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686973206D6573736167652077696C6C2062652073656E7420746F207B757365726E616D657D, 'Diese Nachricht wird an {username} versandt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686973206D6573736167652077696C6C2062652073656E7420746F207B757365726E616D657D, 'Este mensaje será enviado a {username}', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54686973206D6573736167652077696C6C2062652073656E7420746F207B757365726E616D657D, 'Ce message sera envoyÃ© Ã  {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686973206D6573736167652077696C6C2062652073656E7420746F207B757365726E616D657D, 'Questo messaggio verrÃ  inviato a {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468697320726F6C652063616E2061646D696E6973746572207573657273206F66207468697320726F6C6573, 'Este rol puede administrar usuarios de estos roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468697320726F6C652063616E2061646D696E6973746572207573657273206F66207468697320726F6C6573, 'Membres ayant ce rÃ´le peuvent administrer ces utilisateurs', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468697320726F6C652063616E2061646D696E6973746572207573657273206F66207468697320726F6C6573, 'Questo ruolo puÃ² amministrare utenti di questo ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722062656C6F6E677320746F20746865736520726F6C65733A, 'Benutzer gehört diesen Rollen an:', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722062656C6F6E677320746F20746865736520726F6C65733A, 'Este usuario pertenece a estos roles:', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722062656C6F6E677320746F20746865736520726F6C65733A, 'A ce membre a Ã©tÃ© attribuÃ© ces rÃ´les:', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722062656C6F6E677320746F20746865736520726F6C65733A, 'L\'Utente appartiene a questi ruoli:', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722062656C6F6E677320746F20746865736520726F6C65733A, 'UÅ¼ytkownik posiada role:', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E69737465722074686973207573657273, 'Dieser Benutzer kann diese Nutzer administrieren', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E69737465722074686973207573657273, 'Este usuario puede administrar estos usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E69737465722074686973207573657273, 'Ce membre peut gÃ©rer ces utilisateurs.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E69737465722074686973207573657273, 'Gli utenti possono gestire questi utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E697374657220746869732075736572733A, 'Benutzer kann diese Benutzer verwalten:', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E697374657220746869732075736572733A, 'Este usuario puede administrar estos usuarios:', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E697374657220746869732075736572733A, 'Ce membre peut administrer ces membres:', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E697374657220746869732075736572733A, 'Gli utenti possono gestire questi utenti:', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E697374657220746869732075736572733A, 'UÅ¼ytkownik moÅ¼e zarzÄ…dzaj nastÄ™pujÄ…cymi uÅ¼ytkownikami:', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E697374726174652074686973207573657273, 'UÅ¼ytkownik moÅ¼e administrowaÄ‡ podanymi uÅ¼ytkownikami', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572277320656D61696C206164647265737320616C7265616479206578697374732E, 'Indirizzo email esistente.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572277320656D61696C2061647265737320616C7265616479206578697374732E, 'Der Benutzer E-Mail-Adresse existiert bereits.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572277320656D61696C2061647265737320616C7265616479206578697374732E, 'La dirección de e-mail de este usuario ya existe.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572277320656D61696C2061647265737320616C7265616479206578697374732E, 'Cette adresse e-mail existe dÃ©jÃ  dans notre banque de donnÃ©e.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572277320656D61696C2061647265737320616C7265616479206578697374732E, 'Indirizzo e-mail giÃ  esistente.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572277320656D61696C2061647265737320616C7265616479206578697374732E, 'Podany adres melopwy jest w uÅ¼yciu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572277320656D61696C2061647265737320616C7265616479206578697374732E, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ñ Ñ‚Ð°ÐºÐ¸Ð¼ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ñ‹Ð¼ Ð°Ð´Ñ€ÐµÑÐ¾Ð¼ ÑƒÐ¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722773206E616D6520616C7265616479206578697374732E, 'Der Benutzer Name existiert bereits.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722773206E616D6520616C7265616479206578697374732E, 'Este nombre de usuario ya existe.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722773206E616D6520616C7265616479206578697374732E, 'Ce nom d utilisateur existe dÃ©jÃ  dans notre banque de donnÃ©e.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722773206E616D6520616C7265616479206578697374732E, 'Nome esistenze', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722773206E616D6520616C7265616479206578697374732E, 'Podana nazwa uÅ¼ytkownika jest w uÅ¼yciu.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722773206E616D6520616C7265616479206578697374732E, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ñ Ñ‚Ð°ÐºÐ¸Ð¼ Ð¸Ð¼ÐµÐ½ÐµÐ¼ ÑƒÐ¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365727320686176652061206F726465726564206D656D6265727368697073206F66207468697320726F6C65, 'Diese Benutzer haben eine Mitgliedschaft in dieser Rolle', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365727320686176652061206F726465726564206D656D6265727368697073206F66207468697320726F6C65, 'Ces membres sont assignÃ©s Ã  ce rÃ´le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365727320686176652061206F726465726564206D656D6265727368697073206F66207468697320726F6C65, 'Questi utenti hanno ordinato l\'iscrizione a questo ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320526F6C65, 'Diese Nutzer gehören dieser Rolle an: ', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320526F6C65, 'Este usuario ha sido asignado a este Rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320526F6C65, 'A ces membres ont Ã©tÃ© attribuÃ©s ce rÃ´le: ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320526F6C65, 'Questi utenti sono assegnati al ruolo: ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320526F6C65, 'UÅ¼ytkownik zostaÅ‚ przypisany do rÃ³l: ', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320726F6C65, 'Dieser Rolle gehören diese Benutzer an', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320726F6C65, 'Este usuario ha sido asignado a este rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320726F6C65, 'Ce rÃ´le a bien Ã©tÃ© attribuÃ© Ã  ces membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320726F6C65, 'Questo ruolo Ã¨ assegnato  a questo utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320726F6C65, 'Uzytkownik zostaÅ‚ przypisany do rÃ³l', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x54686973207573657273206861766520636F6D6D656E74656420796F75722070726F66696C6520726563656E746C79, 'Diese Benutzer haben mein Profil kürzlich kommentiert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686973207573657273206861766520636F6D6D656E74656420796F75722070726F66696C6520726563656E746C79, 'Cet utilisateur Ã  commentÃ© rÃ©cemment votre profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686973207573657273206861766520636F6D6D656E74656420796F75722070726F66696C6520726563656E746C79, 'Questo utente ha recentemente commentato sul tuo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365727320686176652076697369746564206D792070726F66696C65, 'Diese Benutzer haben mein Profil besucht', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365727320686176652076697369746564206D792070726F66696C65, 'Estos usuarios han visitado mi perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365727320686176652076697369746564206D792070726F66696C65, 'Les membres ayant visitÃ© mon profil.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365727320686176652076697369746564206D792070726F66696C65, 'Questi utenti hanno visitato il tuo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665207669736974656420796F75722070726F66696C6520726563656E746C79, 'Diese Benutzer haben kürzlich mein Profil besucht', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665207669736974656420796F75722070726F66696C6520726563656E746C79, 'Cet utilisateur a visitÃ© votre profil rÃ©cemment', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665207669736974656420796F75722070726F66696C6520726563656E746C79, 'Questi utenti hanno recentemente visitato il tuo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54696D652073656E74, 'Gesendet am', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54696D652073656E74, 'Hora de envío', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54696D652073656E74, 'EnvoyÃ© le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54696D652073656E74, 'Pubblicato su', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54696D652073656E74, 'WysÅ‚ano', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5469746C65, 'Titel', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5469746C65, 'Título', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5469746C65, 'Titre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5469746C65, 'Titolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5469746C65, 'ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x546F, 'An', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546F, 'Para', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546F, 'A', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546F, 'A', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5472616E736C6174696F6E, 'Übersetzung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5472616E736C6174696F6E732068617665206265656E207361766564, 'Die Übersetzungen wurden gespeichert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54727920616761696E, 'Erneut versuchen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54727920616761696E, 'Intenta de nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54727920616761696E, 'Essayer Ã  nouveau', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54727920616761696E, 'Prova di nuovo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54727920616761696E, 'SprÃ³buj jeszcze raz', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557064617465, 'Bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557064617465, 'Actualizar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557064617465, 'Modifier', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557064617465, 'Aggiorna', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557064617465, 'ZmieÅ„', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652050726F66696C65204669656C64, 'Profilfeld bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652050726F66696C65204669656C64, 'Actualizar Campo del Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652050726F66696C65204669656C64, 'Modifier le champ du profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652050726F66696C65204669656C64, 'Aggiorna campo Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652050726F66696C65204669656C64, 'ZmieÅ„ pole w profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652050726F66696C65204669656C64, 'ÐŸÑ€Ð°Ð²Ð¸Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652055736572, 'Benutzer bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652055736572, 'Actualizar Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652055736572, 'GÃ©rer les membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652055736572, 'Aggiorna utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652055736572, 'ÐŸÑ€Ð°Ð²Ð¸Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x557064617465206D792070726F66696C65, 'Mein Profil bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557064617465206D792070726F66696C65, 'Aggiorna profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557064617465207061796D656E74, 'Zahlungsart bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557064617465207061796D656E74, 'Aggiorna pagamento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55706461746520726F6C65, 'Rolle bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55706461746520726F6C65, 'Actualizar rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55706461746520726F6C65, 'Modifier les rÃ´les', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55706461746520726F6C65, 'Aggiorna ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55706461746520726F6C65, 'Edytuj rolÄ™', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652075736572, 'Benutzer bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652075736572, 'Actualizar usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652075736572, 'Modifier un membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652075736572, 'Aggiorna utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652075736572, 'ZmieÅ„ uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F616420417661746172, 'Subir un Avatar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F616420417661746172, 'Charger une image de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F616420417661746172, 'Carica avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F616420617661746172, 'Profilbild hochladen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F616420617661746172, 'Subir un avatar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F616420617661746172, 'Charger une image de profil maintenant', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F616420617661746172, 'Carica avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F61642061766174617220496D616765, 'Carica avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F61642061766174617220696D616765, 'Profilbild hochladen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F61642061766174617220696D616765, 'Cargar imagen de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F61642061766174617220696D616765, 'Charger une image pour votre profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F61642061766174617220696D616765, 'Carica immagine avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55736572, 'Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55736572, 'Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55736572, 'Utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55736572, 'Utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722041646D696E697374726174696F6E, 'Benutzerverwaltung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722041646D696E697374726174696F6E, 'Administración de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722041646D696E697374726174696F6E, 'Gestion des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722041646D696E697374726174696F6E, 'Gestione utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722041646D696E697374726174696F6E, 'ZarzÄ…dzanie uÅ¼ytkownikami', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E7420486F6D65, 'Benutzerverwaltung Startseite', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E7420486F6D65, 'Administración de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E7420486F6D65, 'Page de gestion des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E7420486F6D65, 'Home gestione utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E7420486F6D65, 'Strona startowa profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E742073657474696E677320636F6E66696775726174696F6E, 'Einstellungen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E742073657474696E677320636F6E66696775726174696F6E, 'Ajustes de configuración de la Administración de usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E742073657474696E677320636F6E66696775726174696F6E, 'Options de configuration des profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E742073657474696E677320636F6E66696775726174696F6E, 'Configurazione impostazioni gestione utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55736572204F7065726174696F6E73, 'Benutzeraktionen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55736572204F7065726174696F6E73, 'Operaciones de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55736572204F7065726174696F6E73, 'Action de l utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55736572204F7065726174696F6E73, 'Azioni utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55736572204F7065726174696F6E73, 'CzynnoÅ›ci uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365722061637469766174696F6E, 'User-Aktivierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722061637469766174696F6E, 'Activación de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722061637469766174696F6E, 'Activation du compte utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722061637469766174696F6E, 'Attivazione utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722061637469766174696F6E, 'User-Aktivierung', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365722061637469766174696F6E, 'ÐÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2050616E656C, 'Benutzerkontrollzentrum', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2050616E656C, 'Panel de administración de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2050616E656C, 'Centre de controle des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2050616E656C, 'Pannello di controllo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2050616E656C, 'Panel zarzÄ…dzania uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2070616E656C, 'Kontrollzentrum', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2070616E656C, 'Panel de administración de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2070616E656C, 'Centre de controle user', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2070616E656C, 'Pannello di controllo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2070616E656C, 'Panel zarzÄ…dzania uÅ¼ytkownikiem', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20526F6C6573, 'Benutzer gehört diesen Rollen an', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20526F6C6573, 'El usuario pertenece al los Roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20526F6C6573, 'Attribuer des rÃ´les Ã  un membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20526F6C6573, 'Utente appartiene a questi ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20526F6C6573, 'UÅ¼ytkownik posiada role', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20746865736520726F6C6573, 'Benutzer gehört diesen Rollen an', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20746865736520726F6C6573, 'El usuario pertenece a estos roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20746865736520726F6C6573, 'Attribuer ce rÃ´le Ã  un membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20746865736520726F6C6573, 'Utente appartiene a questi ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20746865736520726F6C6573, 'UÅ¼ytkownik posiada role', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273, 'Kann keine Benutzer verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273, 'El usuario no puede administrar ningún usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273, 'Ne peut pas gÃ©rer les utilisateurs', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273, 'Impossibile gestire gli utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273, 'UÅ¼ytkownik nie moÅ¼e zarzÄ…dzaÄ‡ Å¼adnymi uÅ¼ytkownikami', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273206F6620616E7920726F6C65, 'Kann keine Rollen verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273206F6620616E7920726F6C65, 'El usuario no puede administrar ningún usuario o ningún rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273206F6620616E7920726F6C65, 'Ne peut pas gÃ©rer les rolles', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273206F6620616E7920726F6C65, 'Impossibile gestire i ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273206F6620616E7920726F6C65, 'UÅ¼ytkownik nie moÅ¼e zarzÄ…dzaÄ‡ Å¼adnymi rolami uÅ¼ytkownikÃ³w', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x55736572206973204F6E6C696E6521, 'Benutzer ist Online!', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55736572206973204F6E6C696E6521, 'Utilisateur en ligne!', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55736572206973204F6E6C696E6521, 'Utente online!', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55736572206D6F64756C652073657474696E6773, 'Moduleinstellungen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55736572206D6F64756C652073657474696E6773, 'Ajustes del módulo de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55736572206D6F64756C652073657474696E6773, 'RÃ©glages du module user', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55736572206D6F64756C652073657474696E6773, 'Modulo impostazioni utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55736572206D6F64756C652073657474696E6773, 'Ustawienia moduÅ‚u uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5573657267726F757073, 'Benutzergruppen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5573657267726F757073, 'Grupos del usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5573657267726F757073, 'Utilisateur des grouppes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5573657267726F757073, 'Gruppi utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65, 'Benutzername', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65, 'Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65, 'Benutzername', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65, 'Username', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65, 'UÅ¼ytkownik', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D6520697320696E636F72726563742E, 'Benutzername ist falsch.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D6520697320696E636F72726563742E, 'Nombre de usuario incorrecto', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D6520697320696E636F72726563742E, 'Le nom d utilisateur est incorrect.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D6520697320696E636F72726563742E, 'Username non corretto.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D6520697320696E636F72726563742E, 'Nazwa uÅ¼ytkownika jest niepoprawna.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D6520697320696E636F72726563742E, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ñ Ñ‚Ð°ÐºÐ¸Ð¼ Ð¸Ð¼ÐµÐ½ÐµÐ¼ Ð½Ðµ Ð·Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ð½.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F7220456D61696C, 'Benutzername oder E-mail', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F7220456D61696C, 'Nombre de usuario o Email', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F7220456D61696C, 'Nom d utilisateur ou adresse e-mail.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F7220456D61696C, 'Username o email', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F722050617373776F726420697320696E636F7272656374, 'Benutzername oder Passwort ist falsch', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F722050617373776F726420697320696E636F7272656374, 'Usuario o contraseña incorrectos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F722050617373776F726420697320696E636F7272656374, 'Nom d utilisateur ou mot passe incorrect', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F722050617373776F726420697320696E636F7272656374, 'Username o password errato/a', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F7220656D61696C, 'Benutzername oder E-Mail', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F7220656D61696C, 'Nom d utilisateur ou adresse e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F7220656D61696C, 'Username o email', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5573657273, 'Usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5573657273, 'Utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5573657273, 'Utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5573657273, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x55736572733A20, 'Benutzer: ', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55736572733A20, 'Usuarios:', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55736572733A20, 'Membres: ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55736572733A20, 'Utenti: ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55736572733A20, 'UÅ¼ytkownicy: ', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5661726961626C65206E616D65, 'Variablen name', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5661726961626C65206E616D65, 'Nombre de variable', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5661726961626C65206E616D65, 'Nom de la variable', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5661726961626C65206E616D65, 'Nome variabile', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5661726961626C65206E616D65, 'Ð˜Ð¼Ñ Ð¿ÐµÑ€ÐµÐ¼ÐµÐ½Ð½Ð¾Ð¹', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x566572696669636174696F6E20436F6465, 'Codice verifica', 'it', 'yum');
INSERT INTO `translation` VALUES (0x566572696669636174696F6E20436F6465, 'Kod weryfikujÄ…cy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x566572696669636174696F6E20436F6465, 'ÐŸÑ€Ð¾Ð²ÐµÑ€Ð¾Ñ‡Ð½Ñ‹Ð¹ ÐºÐ¾Ð´', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x566572696669636174696F6E20636F6465, 'Verifizierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x566572696669636174696F6E20636F6465, 'Código de verificación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x566572696669636174696F6E20636F6465, 'Code de verification', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x566572696669636174696F6E20636F6465, 'Codice verifica', 'it', 'yum');
INSERT INTO `translation` VALUES (0x56696577, 'Anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x56696577, 'Ver', 'es', 'yum');
INSERT INTO `translation` VALUES (0x56696577, 'Editer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x56696577, 'Visualizza', 'it', 'yum');
INSERT INTO `translation` VALUES (0x56696577, 'PolaÅ¼', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x566965772044657461696C73, 'Zur Gruppe', 'de', 'yum');
INSERT INTO `translation` VALUES (0x566965772044657461696C73, 'Mostra dettagli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x566965772050726F66696C65204669656C64, 'Mostra campo Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x566965772050726F66696C65204669656C64, 'ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x566965772050726F66696C65204669656C642023, 'Mostra # campo Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x566965772050726F66696C65204669656C642023, 'ÐŸÐ¾Ð»Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ #', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x566965772055736572, 'Benutzer anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x566965772055736572, 'Ver Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x566965772055736572, 'Consulter le profil du membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x566965772055736572, 'Mostra utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x566965772055736572, 'ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x566965772061646D696E206D65737361676573, 'Administratornachrichten anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x566965772061646D696E206D65737361676573, 'Ver mensajes de admin', 'es', 'yum');
INSERT INTO `translation` VALUES (0x566965772061646D696E206D65737361676573, 'Voir les messages de l administateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x566965772061646D696E206D65737361676573, 'Visualizza messaggi amministratore', 'it', 'yum');
INSERT INTO `translation` VALUES (0x566965772061646D696E206D65737361676573, 'PokaÅ¼ wiadomoÅ›ci administratora', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x56696577206D79206D65737361676573, 'Meine Nachrichten ansehen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x56696577206D79206D65737361676573, 'Ver mis mensajes', 'es', 'yum');
INSERT INTO `translation` VALUES (0x56696577206D79206D65737361676573, 'Voir mes messages', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x56696577206D79206D65737361676573, 'Visualizza messaggi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x56696577206D79206D65737361676573, 'WyÅ›wietl moje wiadomoÅ›ci', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657220227B757365726E616D657D22, 'Benutzer \"{username}\"', 'de', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657220227B757365726E616D657D22, 'Ver usuario \"{username}\"', 'es', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657220227B757365726E616D657D22, 'Membre \"{username}\"', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657220227B757365726E616D657D22, 'Visualizza utente \"{username}\"', 'it', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657220227B757365726E616D657D22, 'UÅ¼ytkownik \"{username}\"', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657273, 'Benutzer anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657273, 'Ver usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657273, 'Montrer les utilisateurs', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657273, 'Visualizza utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657273, 'PokaÅ¼ uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x56697369626C65, 'Sichtbar', 'de', 'yum');
INSERT INTO `translation` VALUES (0x56697369626C65, 'Visible', 'es', 'yum');
INSERT INTO `translation` VALUES (0x56697369626C65, 'Visible', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x56697369626C65, 'Visibile', 'it', 'yum');
INSERT INTO `translation` VALUES (0x56697369626C65, 'Ð’Ð¸Ð´Ð¸Ð¼Ð¾ÑÑ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x56697369742070726F66696C65, 'Profil besuchen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x56697369742070726F66696C65, 'Visiter le profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x56697369742070726F66696C65, 'Visita profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5768656E2073656C656374696E672073656172636861626C652C207573657273206F66207468697320726F6C652063616E20626520736561726368656420696E207468652022757365722042726F777365222066756E6374696F6E, 'Wenn \"suchbar\" ausgewählt wird, kann man Nutzer dieser Rolle in der \"Benutzer durchsuchen\"-Funktion suchen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5768656E2073656C656374696E672073656172636861626C652C207573657273206F66207468697320726F6C652063616E20626520736561726368656420696E207468652022757365722042726F777365222066756E6374696F6E, 'Si le status de \"visible\" est choisi, un membre de ce rÃ´le pourra apparaitre dans les rÃ©sultats d une recherche', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5768656E2073656C656374696E672073656172636861626C652C207573657273206F66207468697320726F6C652063616E20626520736561726368656420696E207468652022757365722042726F777365222066756E6374696F6E, 'Quando selezioni \"Ricercabile\", gli utenti di questo ruolo sono ricercabili nella funzione \"Browser utenti\" ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5772697465206120636F6D6D656E74, 'Kommentar hinterlassen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5772697465206120636F6D6D656E74, 'Escribir un comentario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5772697465206120636F6D6D656E74, 'Laisser un commentaire', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5772697465206120636F6D6D656E74, 'Scrivi commento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D657373616765, 'Nachricht schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D657373616765, 'Escribir un mensaje', 'es', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D657373616765, 'Ecrire un message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D657373616765, 'Scrivi messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D657373616765, 'Napisz wiadomoÅ›Ä‡', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D65737361676520746F20746869732055736572, 'Diesem Benutzer eine Nachricht schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D65737361676520746F20746869732055736572, 'Escribir un mensaje a este Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D65737361676520746F20746869732055736572, 'Ecrire un message Ã  ce membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D65737361676520746F20746869732055736572, 'Scrivi messaggio a questo utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D65737361676520746F207B757365726E616D657D, 'Nachricht an {username} schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D65737361676520746F207B757365726E616D657D, 'Message Ã©crire Ã  {username} ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D65737361676520746F207B757365726E616D657D, 'Scrivi messaggio a {username} ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x577269746520616E6F74686572206D657373616765, 'Eine weitere Nachricht schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x577269746520616E6F74686572206D657373616765, 'Escribir otro mensaje', 'es', 'yum');
INSERT INTO `translation` VALUES (0x577269746520616E6F74686572206D657373616765, 'Ecrire un autre message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x577269746520616E6F74686572206D657373616765, 'Scrivi un\'altro messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x577269746520616E6F74686572206D657373616765, 'Eine weitere Nachricht schreiben', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x577269746520636F6D6D656E74, 'Kommentar schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x577269746520636F6D6D656E74, 'Escribir comentario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x577269746520636F6D6D656E74, 'Ecrire un commentaire', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x577269746520636F6D6D656E74, 'Scrivi commento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5772697465206D657373616765, 'Nachricht schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E206174, 'Geschrieben am', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E206174, 'Escrito el', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E206174, 'Ecrit le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E206174, 'Scritto a ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E2066726F6D, 'Geschrieben von', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E2066726F6D, 'Escrito por', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E2066726F6D, 'Ecrit par', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E2066726F6D, 'Scritto da ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x57726F6E672070617373776F726420636F6E6669726D6174696F6E21204163636F756E7420776173206E6F742064656C65746564, 'Falsches Bestätigugspasswort! Zugang wurde nicht gelöscht', 'de', 'yum');
INSERT INTO `translation` VALUES (0x57726F6E672070617373776F726420636F6E6669726D6174696F6E21204163636F756E7420776173206E6F742064656C65746564, '¡Contraseña para confirmación incorrecta! Lacuenta no ha sido eliminada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x57726F6E672070617373776F726420636F6E6669726D6174696F6E21204163636F756E7420776173206E6F742064656C65746564, 'Confirmation incorrecte! Le compte n a pas Ã©tÃ© supprimÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x57726F6E672070617373776F726420636F6E6669726D6174696F6E21204163636F756E7420776173206E6F742064656C65746564, 'Password id oconferma errata! Account non cancellato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x57726F6E672070617373776F726420636F6E6669726D6174696F6E21204163636F756E7420776173206E6F742064656C65746564, 'Niepoprawne hasÅ‚o! Konto nie zostaÅ‚o usuniÄ™te', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596573, 'Ja', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596573, 'Sí', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596573, 'Oui', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596573, 'Si', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596573, 'Ja', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596573, 'Ð”Ð°', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x59657320616E642073686F77206F6E20726567697374726174696F6E20666F726D, 'Ja, und auf Registrierungsseite anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x59657320616E642073686F77206F6E20726567697374726174696F6E20666F726D, 'Si y mostrar en formulario de registro', 'es', 'yum');
INSERT INTO `translation` VALUES (0x59657320616E642073686F77206F6E20726567697374726174696F6E20666F726D, 'oui et charger le formulaire d inscription', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x59657320616E642073686F77206F6E20726567697374726174696F6E20666F726D, 'Si e mostra nel form di registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x59657320616E642073686F77206F6E20726567697374726174696F6E20666F726D, 'Tak i pokaÅ¼ w formularzu rejestracji', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x59657320616E642073686F77206F6E20726567697374726174696F6E20666F726D, 'Ð”Ð° Ð¸ Ð¿Ð¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð¿Ñ€Ð¸ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976617465642E, 'Ihr Konto wurde aktiviert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976617465642E, 'Su cuenta está activada.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976617465642E, 'Votre compte a bien Ã©tÃ© activÃ©.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976617465642E, 'Account attivato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976617465642E, 'Ihr Konto wurde aktiviert.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976617465642E, 'Ð’Ð°ÑˆÐ° ÑƒÑ‡ÐµÑ‚Ð½Ð°Ñ Ð·Ð°Ð¿Ð¸ÑÑŒ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð°.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976652E, 'Ihr Konto ist aktiv.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976652E, 'Su cuenta está activa.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976652E, 'Votre compte est actif.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976652E, 'Account attivo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976652E, 'Ihr Konto ist aktiv.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976652E, 'Ð’Ð°ÑˆÐ° ÑƒÑ‡ÐµÑ‚Ð½Ð°Ñ Ð·Ð°Ð¿Ð¸ÑÑŒ ÑƒÐ¶Ðµ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð°.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E7420697320626C6F636B65642E, 'Account bloccato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E7420697320626C6F636B65642E, 'Ð’Ð°Ñˆ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚ Ð·Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ð½.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206E6F74206163746976617465642E, 'Account non attivo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206E6F74206163746976617465642E, 'Ð’Ð°Ñˆ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚ Ð½Ðµ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x596F7520616C72656164792061726520667269656E6473, 'Ihr seid bereits Freunde', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7520616C72656164792061726520667269656E6473, 'Ya son amigos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7520616C72656164792061726520667269656E6473, 'Ce membre figure dÃ©jÃ  dans votre liste de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7520616C72656164792061726520667269656E6473, 'Siete giÃ  in contatto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7520617265206E6F7420616C6C6F77656420746F207669657720746869732070726F66696C652E, 'Sie dürfen dieses Profil nicht ansehen.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7520617265206E6F7420616C6C6F77656420746F207669657720746869732070726F66696C652E, 'No tiene permiso para ver este perfil.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7520617265206E6F7420616C6C6F77656420746F207669657720746869732070726F66696C652E, 'VOus ne pouvez pas consulter ce profil.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7520617265206E6F7420616C6C6F77656420746F207669657720746869732070726F66696C652E, 'Non puoi vedere questo profilo.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7520617265206E6F7420616C6C6F77656420746F207669657720746869732070726F66696C652E, 'Nie masz uprawnie do przeglÄ…dania tego profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F75206172652072756E6E696E6720746865205969692055736572204D616E6167656D656E74204D6F64756C65207B76657273696F6E7D20696E204465627567204D6F646521, 'Dies ist das Yii-User-Management Modul in Version {version} im Debug Modus!', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75206172652072756E6E696E6720746865205969692055736572204D616E6167656D656E74204D6F64756C65207B76657273696F6E7D20696E204465627567204D6F646521, '¡Está ejecutando el Módulo de Administración de Usuarios Yii {version} en modo de depuración!', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F75206172652072756E6E696E6720746865205969692055736572204D616E6167656D656E74204D6F64756C65207B76657273696F6E7D20696E204465627567204D6F646521, 'Dies ist das Yii-User-Management Modul in Version {version} im Debug Modus!', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75206172652072756E6E696E6720746865205969692055736572204D616E6167656D656E74204D6F64756C65207B76657273696F6E7D20696E204465627567204D6F646521, 'Questo Ã¨ il modulo di YUM versione {version} in modalitÃ  debug!', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75206172652072756E6E696E6720746865205969692055736572204D616E6167656D656E74204D6F64756C65207B76657273696F6E7D20696E204465627567204D6F646521, 'Uruchamiasz moduÅ‚ Yii User Management Modul, wersja {version}, w trybie DEBUG!', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F74206861766520616E7920667269656E647320796574, 'Ihre Kontaktliste ist leer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F74206861766520616E7920667269656E647320796574, 'No tienes ningún amigo todavía', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F74206861766520616E7920667269656E647320796574, 'Votre liste de contact est vide', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F74206861766520616E7920667269656E647320796574, 'Lista contatti vuota', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F7420686176652073657420616E2061766174617220696D61676520796574, 'Es wurde noch kein Profilbild hochgeladen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F7420686176652073657420616E2061766174617220696D61676520796574, 'Aún no has subido tu imágen de Avatar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F7420686176652073657420616E2061766174617220696D61676520796574, 'Aucune photo de votre profil disponible', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F7420686176652073657420616E2061766174617220696D61676520796574, 'Non hai settato un\'avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206A6F696E656420746869732067726F7570, 'Sie sind dieser Gruppe beigetreten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577204D657373616765732021, 'Sie haben neue Nachrichten !', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577204D657373616765732021, '¡Tienes Mensajes nuevos!', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577204D657373616765732021, 'Vous avez de nouveaux messages !', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577204D657373616765732021, 'Hai un nuovo messaggio!', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577206D6573736167657321, 'Sie haben neue Nachrichten!', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577206D6573736167657321, '¡Tienes mensajes nuevos!', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577206D6573736167657321, 'Vous n avez pas de messages!', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577206D6573736167657321, 'Hai un nuovo messaggio!', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577206D6573736167657321, 'Masz nowÄ… wiadomoÅ›Ä‡!', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6F206D6573736167657320796574, 'Sie haben bisher noch keine Nachrichten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6F206D6573736167657320796574, 'Aucun message rÃ©cent', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6F206D6573736167657320796574, 'Non hai messaggi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665207B636F756E747D206E6577204D657373616765732021, 'Sie haben {count} neue Nachricht(en)!', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665207B636F756E747D206E6577204D657373616765732021, '¡Tienes {count} mensajes nuevos!', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665207B636F756E747D206E6577204D657373616765732021, 'Vous avez {count} nouveau(x) message(s)!', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665207B636F756E747D206E6577204D657373616765732021, 'Hai {count} nuovi messaggi!', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665207B636F756E747D206E6577204D657373616765732021, 'Masz {count} nowych wiadomoÅ›ci !', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F7520726567697374657265642066726F6D207B736974655F6E616D657D, 'Sei registrato su {site_name}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572204163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E, 'Ihr Zugang wurde aktiviert. Danke für die Registierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7572204163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E, 'Votre compte a bien Ã©tÃ© activÃ©. Merci pour votre inscription.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7572204163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E, 'Il tuo account Ã¨ stato attivato. Grazie per la tua registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75722041766174617220696D616765, 'Ihr Avatar-Bild', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75722041766174617220696D616765, 'Tu imagen de Avatar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F75722041766174617220696D616765, 'Votre image de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75722041766174617220696D616765, 'Il tuo avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572204D65737361676520686173206265656E2073656E742E, 'El Mensaje ha sido enviado.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7572204D65737361676520686173206265656E2073656E742E, 'Votre mÃ©ssage a Ã©tÃ© envoyÃ©.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7572204D65737361676520686173206265656E2073656E742E, 'Messaggio inviato.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E206163746976617465642E, 'Tu cuenta ha sido activada.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E, 'Ihr Zugang wurde aktiviert. Danke für ihre Registrierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E, 'VOtre compte est maintenant actif. Merci de vous Ãªtre enregistrÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E, 'Il tuo account Ã¨ stato attivato. Grazie per esserti registrato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E, 'Tu cuenta ha sido activada. Gracias por registrarte.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E, 'Twoje konto zostaÅ‚o aktywowane. DziÄ™kujemy za rejestracjÄ™.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E2064656C657465642E, 'Ihr Zugang wurde gelöscht', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E2064656C657465642E, 'Votre compte a bien Ã©tÃ© supprimÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E2064656C657465642E, 'Il tuo account Ã¨ stato cancellato.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75722061637469766174696F6E20737563636565646564, 'Ihre Aktivierung war erfolgreich', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75722061637469766174696F6E20737563636565646564, 'Votre compte a Ã©tÃ© activÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75722061637469766174696F6E20737563636565646564, 'Attivazione riuscita', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206368616E6765732068617665206265656E207361766564, 'Ihre Änderungen wurden gespeichert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206368616E6765732068617665206265656E207361766564, 'Los cambios han sido guardados', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206368616E6765732068617665206265656E207361766564, 'Vos modification ont Ã©tÃ© mÃ©morisÃ©es', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206368616E6765732068617665206265656E207361766564, 'Le modifiche sono state salvate', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206368616E6765732068617665206265656E207361766564, 'Twoje zmiany zostaÅ‚y zapisane', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F75722063757272656E742070617373776F7264, 'Ihr aktuelles Passwort', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75722063757272656E742070617373776F7264, 'Votre mot de passe actuel', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75722063757272656E742070617373776F7264, 'La tua password corrente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75722063757272656E742070617373776F7264206973206E6F7420636F7272656374, 'Ihr aktuelles Passwort ist nicht korrekt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75722063757272656E742070617373776F7264206973206E6F7420636F7272656374, 'Votre mot de passe actuel n est pas correct', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75722063757272656E742070617373776F7264206973206E6F7420636F7272656374, 'La tua password corrente non Ã¨ corretta', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F757220667269656E6473686970207265717565737420686173206265656E206163636570746564, 'Ihre Freundschaftsanfrage wurde akzeptiert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F757220667269656E6473686970207265717565737420686173206265656E206163636570746564, 'Votre demande de contact a bien Ã©tÃ© acceptÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F757220667269656E6473686970207265717565737420686173206265656E206163636570746564, 'La richiesta di contatto Ã¨ stata accettata', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206D65737361676520686173206265656E2073656E74, 'Ihre Nachricht wurde gesendet', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206D65737361676520686173206265656E2073656E74, 'El mensaje ha sido enviado', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206D65737361676520686173206265656E2073656E74, 'Votre mÃ©ssage a bien Ã©tÃ© envoyÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206D65737361676520686173206265656E2073656E74, 'Il tuo messaggio Ã¨ stato inviato.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206D65737361676520686173206265656E2073656E74, 'Twoja wiadomoÅ›Ä‡ zostaÅ‚a wysÅ‚ana', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206E65772070617373776F726420686173206265656E2073617665642E, 'Ihr Passwort wurde gespeichert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206E65772070617373776F726420686173206265656E2073617665642E, 'La nueva contraseña ha sido guardada.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206E65772070617373776F726420686173206265656E2073617665642E, 'La modification de votre mot de passe a bien Ã©tÃ© mÃ©morisÃ©.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206E65772070617373776F726420686173206265656E2073617665642E, 'La nuova password Ã¨ stata salvata.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206E65772070617373776F726420686173206265656E2073617665642E, 'Twoje nowe hasÅ‚o zostaÅ‚o zapisane.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070617373776F72642068617320657870697265642E20506C6561736520656E74657220796F7572206E65772050617373776F72642062656C6F773A, 'Ihr Passwort ist abgelaufen. Bitte geben Sie ein neues Passwort an:', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070617373776F72642068617320657870697265642E20506C6561736520656E74657220796F7572206E65772050617373776F72642062656C6F773A, 'La contraseña ha expirado. Por favor escribe una contraseña nueva abajo:', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070617373776F72642068617320657870697265642E20506C6561736520656E74657220796F7572206E65772050617373776F72642062656C6F773A, 'La durÃ©e de vie de votre mot de passe est arrivÃ©e Ã  Ã©chÃ©ance. Veuillez en definir un nouveau:', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070617373776F72642068617320657870697265642E20506C6561736520656E74657220796F7572206E65772050617373776F72642062656C6F773A, 'La password Ã¨ scaduta. Si prega di inserire una nuova password:', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F757220707269766163792073657474696E67732068617665206265656E207361766564, 'Ihre Privatsphären-einstellungen wurden gespeichert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F757220707269766163792073657474696E67732068617665206265656E207361766564, 'La configuration de vos donnÃ©es privÃ©es a bien Ã©tÃ© enregistrÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F757220707269766163792073657474696E67732068617665206265656E207361766564, 'Le tue opzioni Privacy sono state salvate', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070726F66696C65, 'Ihr Profil', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070726F66696C65, 'Tu perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070726F66696C65, 'Ihr Profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070726F66696C65, 'Il tuo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070726F66696C65, 'Ihr Profil', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070726F66696C65, 'Ð’Ð°Ñˆ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x596F757220726567697374726174696F6E206469646E277420776F726B2E20506C656173652074727920616E6F7468657220452D4D61696C20616464726573732E20496620746869732070726F626C656D2070657273697374732C20706C6561736520636F6E74616374206F75722053797374656D2041646D696E6973747261746F722E20, 'Tu proceso de registro falló. Por favor intenta con otra cuenta de correo. Si el problema persiste por favor contáctanos.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F75722072657175657374207375636365656465642E20506C6561736520656E7465722062656C6F7720796F7572206E65772070617373776F72643A, 'Tu solicitud fué exitosa. Por favor, escribe a continuación tu nueva contraseña:', 'es', 'yum');
INSERT INTO `translation` VALUES (0x61626F7574, 'information me concernant', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x61626F7574, 'Informazioni su', 'it', 'yum');
INSERT INTO `translation` VALUES (0x61637469766174696F6E206B6579, 'Aktivierungsschlüssel', 'de', 'yum');
INSERT INTO `translation` VALUES (0x61637469766174696F6E206B6579, 'clave de activación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x61637469766174696F6E206B6579, 'ClÃ© d activation de votre compte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x61637469766174696F6E206B6579, 'chiave di attivazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x61637469766174696F6E206B6579, 'AktivierungsschlÃ¼ssel', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x61637469766174696F6E206B6579, 'ÐšÐ»ÑŽÑ‡ Ð°ÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x626972746864617465, 'Geburtstag', 'de', 'yum');
INSERT INTO `translation` VALUES (0x626972746864617465, 'anniversaire', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x626972746864617465, 'Compleanno', 'it', 'yum');
INSERT INTO `translation` VALUES (0x6269727468646179, 'Geburtstag', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6269727468646179, 'date de naissance', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6269727468646179, 'Compleanno', 'it', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652050617373776F7264, 'Passwort ändern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652050617373776F7264, 'cambiar Contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652050617373776F7264, 'Changer le mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652050617373776F7264, 'ZmieÅ„ hasÅ‚o', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652070617373776F7264, 'Passwort ändern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652070617373776F7264, 'cambiar contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652070617373776F7264, 'Modifier le mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652070617373776F7264, 'Cambia password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x646F206E6F74206D616B65206D7920667269656E6473207075626C6963, 'Meine Kontakte nicht veröffentlichen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x646F206E6F74206D616B65206D7920667269656E6473207075626C6963, 'Ne pas rendre publique la liste de mes contacts', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x646F206E6F74206D616B65206D7920667269656E6473207075626C6963, 'Non mostrare i miei contatti pubblicamente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x656D61696C, 'E-Mail', 'de', 'yum');
INSERT INTO `translation` VALUES (0x656D61696C, 'correo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x656D61696C, 'e-Mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x656D61696C, 'email', 'it', 'yum');
INSERT INTO `translation` VALUES (0x656D61696C, 'mejl', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x656D61696C2061646472657373, 'correo electrónico', 'es', 'yum');
INSERT INTO `translation` VALUES (0x656D61696C2061646472657373, 'Adres mejlowy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x66697273746E616D65, 'Vorname', 'de', 'yum');
INSERT INTO `translation` VALUES (0x66697273746E616D65, 'prÃ©nom', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x66697273746E616D65, 'Cognome', 'it', 'yum');
INSERT INTO `translation` VALUES (0x667269656E6473206F6E6C79, 'Nur Freunde', 'de', 'yum');
INSERT INTO `translation` VALUES (0x667269656E6473206F6E6C79, 'sólo amigos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x667269656E6473206F6E6C79, 'A mes contacts seulement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x667269656E6473206F6E6C79, 'Solo contatti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x6C6173746E616D65, 'Nachname', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6C6173746E616D65, 'nom de famille', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6C6173746E616D65, 'Nome', 'it', 'yum');
INSERT INTO `translation` VALUES (0x6D616B65206D7920667269656E6473207075626C6963, 'Meine Kontakte veröffentlichen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6D616B65206D7920667269656E6473207075626C6963, 'Rendre visibles mes contacts', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6D616B65206D7920667269656E6473207075626C6963, 'Rendi pubblici i miei contatti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x6E6F, 'Nein', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6E6F, 'Non', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6E6F, 'No', 'it', 'yum');
INSERT INTO `translation` VALUES (0x6F662075736572, 'von Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6F662075736572, 'de l utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6F662075736572, 'dell\'utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x6F6E6C7920746F206D7920667269656E6473, 'Nur an meine Freunde veröffentlichen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6F6E6C7920746F206D7920667269656E6473, 'Visible seulement pour mes contacts', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6F6E6C7920746F206D7920667269656E6473, 'solamente ai miei contatti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x70617373776F7264, 'Passwort', 'de', 'yum');
INSERT INTO `translation` VALUES (0x70617373776F7264, 'contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x70617373776F7264, 'mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x70617373776F7264, 'password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x70617373776F7264, 'hadÅ‚o', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x70617373776F7264, 'ÐŸÐ°Ñ€Ð¾Ð»ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x70726976617465, 'Privat', 'de', 'yum');
INSERT INTO `translation` VALUES (0x70726976617465, 'privado', 'es', 'yum');
INSERT INTO `translation` VALUES (0x70726976617465, 'PrivÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x70726976617465, 'Privato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x70726976617465, 'prywatny', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x70726F746563746564, 'Geschützt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x70726F746563746564, 'protegido', 'es', 'yum');
INSERT INTO `translation` VALUES (0x70726F746563746564, 'ProtÃ¨gÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x70726F746563746564, 'Protetto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x70726F746563746564, 'chroniony', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7075626C6963, 'Öffentlich', 'de', 'yum');
INSERT INTO `translation` VALUES (0x7075626C6963, 'público', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7075626C6963, 'Publique', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x7075626C6963, 'Pubblico', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7075626C6963, 'publiczny', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x737472656574, 'rue', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x737472656574, 'Indirizzo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x74696D657374616D70, 'Zeitstempel', 'de', 'yum');
INSERT INTO `translation` VALUES (0x74696D657374616D70, 'marca de tiempo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x74696D657374616D70, 'tempon de date et heure', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x74696D657374616D70, 'timestamp', 'it', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65, 'Benutzername', 'de', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65, 'usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65, 'nom d utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65, 'username', 'it', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65, 'nazwa uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65, 'Ð›Ð¾Ð³Ð¸Ð½', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65206F7220656D61696C, 'Benutzername oder E-Mail Adresse', 'de', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65206F7220656D61696C, 'nombre de usuario o email', 'es', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65206F7220656D61696C, 'nom d utilisateur ou adresse e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65206F7220656D61696C, 'username or email', 'it', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65206F7220656D61696C, 'nazwa uÅ¼ytkowniak lub mejl', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65206F7220656D61696C, 'Ð›Ð¾Ð³Ð¸Ð½ Ð¸Ð»Ð¸ email', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x796573, 'Ja, diese Daten veröffentlichen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x796573, 'Oui, rendre publique ces donnÃ©es', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x796573, 'Si', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7A6970636F6465, 'Postleitzahl', 'de', 'yum');
INSERT INTO `translation` VALUES (0x7A6970636F6465, 'code postal', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x7A6970636F6465, 'CAP', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D20697320746F6F206C6F6E6720286D61782E207B6E756D7D2063686172616374657273292E, '{attribute} es muy larga (max. {num} caracteres).', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D20697320746F6F206C6F6E6720286D61782E207B6E756D7D2063686172616374657273292E, '{attribute} troppo lungo (max. {num} caratteri).', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D20697320746F6F206C6F6E6720286D61782E207B6E756D7D2063686172616374657273292E, '{attribute} jest zbyt dÅ‚ugi (max. {num} znakÃ³w).', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D20697320746F6F2073686F727420286D696E2E207B6E756D7D2063686172616374657273292E, '{attribute} es muy corta (min. {num} caracteres).', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D20697320746F6F2073686F727420286D696E2E207B6E756D7D2063686172616374657273292E, '{attribute} troppo corto (min. {num} caratteri).', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D20697320746F6F2073686F727420286D696E2E207B6E756D7D2063686172616374657273292E, '{attribute} jest zbyt krÃ³tki (min. {num} znakÃ³w).', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D206469676974732E, '{attribute} debe tener al menos {num} dígitos.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D206469676974732E, '{attribute}deve includere almeno {num} numeri.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D206469676974732E, '{attribute} musi zawieraÄ‡ co najmniej {num} cyfr.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D206C6F7765722063617365206C6574746572732E, '{attribute} debe tener al menos {num} caracteres en minúscula.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D206C6F7765722063617365206C6574746572732E, '{attribute} deve includere almeno {num} lettere minuscole.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D206C6F7765722063617365206C6574746572732E, '{attribute} musi zawieraÄ‡ co najmniej {num} maÅ‚ych liter.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D2073796D626F6C732E, '{attribute} debe tener al menos {num} símbolos.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D2073796D626F6C732E, '{attribute} deve includere almeno {num} simboli.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D2073796D626F6C732E, '{attribute} musi zawieraÄ‡ co najmniej {num} symboli.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D2075707065722063617365206C6574746572732E, '{attribute} debe tener al menos {num} caracteres en mayúscula.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D2075707065722063617365206C6574746572732E, '{attribute} deve includere almeno {num} lettere maiuscole.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D2075707065722063617365206C6574746572732E, '{attribute} musi zawieraÄ‡ co najmniej {num} duÅ¼ych liter.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D757374206E6F7420636F6E7461696E206D6F7265207468616E207B6E756D7D2073657175656E7469616C6C7920726570656174656420636861726163746572732E, '{attribute} no debe tener más de {num} caracteres repetidos secuencialmente.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D757374206E6F7420636F6E7461696E206D6F7265207468616E207B6E756D7D2073657175656E7469616C6C7920726570656174656420636861726163746572732E, '{attribute} non deve contenere {num} caratteri ripetuti sequenzialmente.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D757374206E6F7420636F6E7461696E206D6F7265207468616E207B6E756D7D2073657175656E7469616C6C7920726570656174656420636861726163746572732E, '{attribute} nie moÅ¼e zawieraÄ‡ wiÄ™cej niÅ¼ {num} sekwencji znakÃ³w.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D757374206E6F7420636F6E7461696E20776869746573706163652E, '{attribute} no debe contener espacios.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D757374206E6F7420636F6E7461696E20776869746573706163652E, '{attribute} non deve contenere spazi.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D757374206E6F7420636F6E7461696E20776869746573706163652E, '{attribute} nie moÅ¼e zawieraÄ‡ biaÅ‚ych znakÃ³w.', 'pl', 'yum');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `activationKey` varchar(128) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT '0',
  `lastvisit` int(10) NOT NULL DEFAULT '0',
  `lastaction` int(10) NOT NULL DEFAULT '0',
  `lastpasswordchange` int(10) NOT NULL DEFAULT '0',
  `superuser` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `notifyType` enum('None','Digest','Instant','Threshold') DEFAULT 'Instant',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `status` (`status`),
  KEY `superuser` (`superuser`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '1353000304', '1457343492', '0', '0', '1', '1', null, 'Instant');
INSERT INTO `user` VALUES ('2', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', '', '1353000304', '0', '0', '0', '0', '1', null, 'Instant');
