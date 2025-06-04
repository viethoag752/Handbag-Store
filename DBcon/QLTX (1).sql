-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 05, 2024 lúc 05:02 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qltx`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(9) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price_at_time` decimal(10,2) DEFAULT NULL,
  `added_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`, `price_at_time`, `added_at`) VALUES
(111111142, 111111140, 123456791, 1, 2900000.00, '2024-10-27 17:55:56'),
(111111143, 111111140, 123456789, 3, 1242422.00, '2024-10-27 17:56:03'),
(111111150, 111111160, 123456790, 1, 2500000.00, '2024-11-01 13:25:16'),
(111111152, 111111160, 123456791, 1, 2900000.00, '2024-11-02 15:01:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet`
--

CREATE TABLE `chitiet` (
  `id_sp` int(11) NOT NULL,
  `thuonghieu` varchar(50) DEFAULT NULL,
  `xuatxu` varchar(50) DEFAULT NULL,
  `mausac` varchar(50) DEFAULT NULL,
  `kichthuoc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet`
--

INSERT INTO `chitiet` (`id_sp`, `thuonghieu`, `xuatxu`, `mausac`, `kichthuoc`) VALUES
(123456789, 'Chanel', 'Pháp', 'xanh lá', '19 x 14 x 7.5cm'),
(123456790, 'Chanel', 'Pháp', 'Nâu', '16 x 9 x 26cm'),
(123456791, 'Louis Vuitton', 'Pháp', 'Đen', '17 x 11 x 25 cm'),
(123456792, 'Gucci', 'Ý', 'Nâu', '18 x 14.5 x 6cm'),
(123456793, 'Prada', 'Ý', 'Đen', '11 x 11.5 x 20cm'),
(123456794, 'Chanel', 'Pháp', 'Đen', '14 × 8 × 25cm'),
(123456795, 'Louis Vuitton', 'Pháp', 'Nâu đen', '10 x 16 x 12.5cm'),
(123456796, 'Gucci', 'Ý', 'Đen', '43 x 28 x 8cm'),
(123456797, 'Prada', 'Ý', 'Đen', '9 x 17 x 3cm'),
(123456798, 'Chanel', 'Pháp', 'Phối màu', '12 x 6.5 x 20 cm'),
(123456799, 'Louis Vuitton', 'Pháp', 'Trắng', '23 x 11 x 18cm'),
(123456800, 'Gucci', 'Ý', 'Nâu be', '16 x 7 x 12cm'),
(123456801, 'Prada', 'Ý', 'Đen', '20 x 12 x 4 (cm)'),
(123456802, 'Chanel', 'Pháp', 'Xanh navy', '21 x 16 x 7.5 cm'),
(123456803, 'Louis Vuitton', 'Pháp', 'Trắng kem', '19 x 11 x 13 cm'),
(123456804, 'Prada', 'Ý', 'Đen', '22 x 6 x 17mm'),
(231543758, 'Gucci', 'Ý', 'Canvas, da', '21.5cm x 12.5cm x 3cm'),
(231543765, 'Gucci', 'Ý', 'Đỏ đô', '22 x 13 x 6cm'),
(231543766, 'Chanel', 'Pháp', 'Đỏ', '17 x 4 x 26cm'),
(231543767, 'Louis Vuitton', 'Pháp', 'Nâu đen', '16 x 10 x 7.5cm'),
(231543768, 'Gucci', 'Ý', 'Canvas, da', '25 x 27cm'),
(231543769, 'Prada', 'Ý', 'Hồng', '22 x 6 x 17mm'),
(231543770, 'Chanel', 'Pháp', 'Trắng', '12 x 4 x 19cm'),
(231543771, 'Louis Vuitton', 'Pháp', 'Nâu', '20 x 20 x 13 cm'),
(231543772, 'Gucci', 'Ý', 'Da, denim', '18 x12 x 6cm'),
(231543773, 'Prada', 'Ý', 'Be', '20.5x 12 x 27(cm)'),
(231543774, 'Chanel', 'Pháp', 'Xám', '12 x 4 x 19cm'),
(231543775, 'Louis Vuitton', 'Pháp', 'Nâu đỏ', '17.5 x 12 x 23cm'),
(231543777, 'Prada', 'Ý', 'Nâu', '36 x 31 x 15cm'),
(231543778, 'Chanel', 'Pháp', 'Đen', '12 x 4 x 19cm'),
(231543779, 'Louis Vuitton', 'Pháp', 'Nâu', '25 x 19 x 11.5cm'),
(231543780, 'Prada', 'Ý', 'Trắng, đen', '28 x 11 x 31cm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reasons` varchar(255) DEFAULT NULL,
  `messagee` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id`, `user_id`, `reasons`, `messagee`, `created_at`) VALUES
(1, 111111140, NULL, 'hdz', '2024-10-27 14:14:38'),
(2, 111111140, NULL, 'hdz', '2024-10-27 14:16:09'),
(3, 111111140, NULL, 'hdz', '2024-10-27 14:16:25'),
(4, 111111160, NULL, 'hehe', '2024-10-31 13:21:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mota`
--

CREATE TABLE `mota` (
  `id_sp` int(11) NOT NULL,
  `detail1` varchar(500) DEFAULT NULL,
  `detail2` varchar(500) DEFAULT NULL,
  `detail3` varchar(500) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `pic2` varchar(100) DEFAULT NULL,
  `pic3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `mota`
--

INSERT INTO `mota` (`id_sp`, `detail1`, `detail2`, `detail3`, `pic1`, `pic2`, `pic3`) VALUES
(123456789, 'Chanel Coco Mark Top Handle 2way Camera Shoulder Bag Leather Green được trang bị tay cầm chắc chắn giúp bạn có thể dễ dàng xách tay khi đi ra ngoài. Túi có kích thước vừa phải, có thể đựng được các đồ dùng cần thiết như điện thoại, ví tiền...khi đi chơi với bạn bè. ', 'Túi Chanel  Coco Mark Top Handle 2way Camera Shoulder Bag Leather Green mang tone màu xanh lá trẻ trung và dễ dàng kết hợp với các trang phục khác nhau theo sở thích bản thân. Đây là một mẫu túi dành cho các cô nàng yêu thích sự đơn giản nhưng không kém phần sang trọng và cuốn hút.', 'Túi xách Chanel Coco Mark Top Handle 2way Camera Shoulder Bag Leather Green sở hữu kiểu dáng thiết kế vô cùng hiện đại và sang trọng, nổi bật với phong cách da vân nổi khá tinh tế, đầy cuốn hút. Mẫu túi được làm từ chất liệu da cao cấp, form túi thời trang các đường chỉ khâu vô cùng tỉ mỉ nên dù là khách hàng khó tính cũng cảm thấy hài lòng về sản phẩm.', 'product_pic\\chanel\\chanel11.webp', 'product_pic\\chanel\\chanel12.webp', 'product_pic\\chanel\\chanel13.webp'),
(123456790, 'Túi đeo chéo Chanel C19 Large Caramel Leather Way Flap Bag được làm từ chất liệu da cao cấp mềm mại, dễ dàng vệ sinh mà không làm bong tróc lớp da. Thiết kế form dáng chuẩn đẹp, hợp xu hướng thời trang của giới trẻ, các đường chỉ khâu vô cùng tỉ mỉ nên dù bạn có là khách hàng khó tính cũng sẽ cảm thấy hài lòng về sản phẩm này.', 'Túi với kiểu dáng hình gọn gàng và sành điệu, bên trong có các ngăn lớn nhỏ đủ để bạn có thể đựng được các đồ dùng cần thiết như điện thoại, ví tiền...khi đi chơi với bạn bè. Chanel C19 với dây đeo bằng kim loại phối da chắc chắn, giúp bạn vừa có thể đeo vai hoặc đeo chéo tùy theo sở thích của mỗi người.', 'Chiếc túi sang trọng với tone màu nâu cùng điểm nhấn khóa logo ở phía trước vô cùng đặc trưng, dễ dàng kết hợp với các trang phục khác nhau theo sở thích bản thân. Đây là một mẫu túi dành cho các cô nàng yêu thích sự đơn giản nhưng không kém phần cuốn hút.', 'product_pic\\chanel\\chanel21.webp', 'product_pic\\chanel\\chanel22.webp', 'product_pic\\chanel\\chanel23.webp'),
(123456791, 'Túi xách tay Louis Vuitton LV Twist One Handle PM M57093 được hoàn thiện từ chất liệu da cao cấp mềm mại, dễ lau chùi, độ bền cao trong suốt quá trình sử dụng. Form túi chuẩn đẹp, chắc chắn với đường may vô cùng tinh tế và tỉ mỉ từng chi tiết. ', 'Thiết kế kiểu dáng hình dáng quen thuộc với tay cầm chắc chắn, dây đeo có tháo rời tiện lợi. Nhưng điểm nhấn của phiên bản LV lần này chính là khóa logo LV bằng kim loại màu vàng sang bóng, nổi bật mang nét đặc trưng chỉ có ở hãng Louis Vuitton.', 'LV Twist One Handle PM M57093 sở hữu phong cách hợp thời trang và không kém phần sành điệu, gam màu đen đơn giản nhưng lại dễ dàng kết hợp với các trang phục khác nhau phù hợp mọi dịp: hàng ngày, đi chơi, dự sự kiện,...để tạo phong cách riêng cho bản thân', 'product_pic\\louis\\louis11.webp', 'product_pic\\louis\\louis12.webp', 'product_pic\\louis\\louis13.webp'),
(123456792, 'Túi Đeo Chéo Gucci GG Ophidia Shoulder Bag Màu Nâu được làm từ chất liệu canvas và da cao cấp mềm mịn, lớp lót bằng vải cotton bền đẹp lâu dài trong quá trình sử dụng. Form túi thời trang thuôn nhỏ với các đường chỉ sắc nét và vô cùngchắc chắn. ', 'Thiết kế túi với họa tiết trang trí, logo đặc trưng Gucci và sọc web xanh đỏ đặc trưng nổi bật tạo điểm nhấn, dây đeo bằng da có thể điều chỉnh với khóa cũng như logo thương hiệu bằng kom loại mạ tone màu vàng hài hòa mà vô cùng nổi bật. nhựa đóng mở.', 'Túi gồm Hệ thống ngăn đựng bên trong túi cũng được thiết kế khoa học nhằm tối ưu hóa mọi tính năng sử dụng cho người dùng. ', 'product_pic\\gucci\\gucci11.webp', 'product_pic\\gucci\\gucci12.webp', 'product_pic\\gucci\\gucci13.webp'),
(123456793, 'Túi Đeo Chéo Prada Re-Edition 2005 Nylon Bag 1BB846_064_F0002_V_W11 Màu Đen được làm từ chất liệu da cao cấp kết hợp vải kèm lớp lót nylon bền đẹp trong suốt quá trình sử dụng. Logo thương hiệu dạng tam giác kim loại tráng men ở mặt trước Form túi thời trang, hợp xu hướng, các đường chỉ khâu vô cùng', 'Túi Đeo Chéo Prada Re-Edition 2005 Nylon Bag 1BB846_064_F0002_V_W11 Màu Đen thiết kế tay cầm bằng da. Hơn hết, kích thước phần dây đeo này không quá dài, không quá ngắn và vừa đủ để có thể cầm tay, đeo khuỷu tay, đeo vai hay thậm chí là đeo chéo đều được. ', 'Túi có khóa kéo rất tiện lợi khi sử dụng. Ngăn bên trong túi rộng rãi tiện lợi để những đồ cá nhân nhỏ khi đi ra ngoài như: ví tiền, điện thoại....', 'product_pic\\prada\\prada11.webp', 'product_pic\\prada\\prada12.webp', 'product_pic\\prada\\prada13.webp'),
(123456794, 'Túi đeo chéo Chanel Boy Medium Black Carvia Leather Antique Gold Metal thu hút người nhìn không chỉ bởi kiểu dáng hiện đại mà còn từ chất liệu da sần cao cấp vô cùng xịn sò, đẳng cấp. Bạn sẽ cảm nhận được sự mềm mại và bền đẹp của chất da khi chạm tay trên bề mặt. ', 'Ngăn bên trong túi có thể chứa đựng được nhiều đồ cá nhân cần thiết như: ví tiền, điện thoại... khi bạn đi ra ngoài. Nổi bật với tone màu đen sang trọng, chiếc túi giúp các nàng dễ phối đồ hơn với nhiều trang phục khác nhau và phù hợp khi đi làm, đi chơi hoặc sự kiện cùng bạn bè.', 'Chanel Boy Medium Black Carvia Leather Antique Gold Metal được tạo điểm nhấn với khóa kim loại màu vàng sáng bóng, tạo độ chắc chắn và nhờ đó giúp bảo quản tư trang cho người dùng khi đến chốn đông người. Dây đeo linh hoạt nên các nàng có thể đeo chéo, đeo vai hoặc xách tay tùy sở thích.', 'product_pic\\chanel\\chanel31.webp', 'product_pic\\chanel\\chanel32.webp', 'product_pic\\chanel\\chanel33.webp'),
(123456795, 'Túi Xách LV Nano Speedy Bag M83688 được hoàn thiện từ chất liệu canvas monogram kết hợp viền da cao cấp mềm mại, dễ lau chùi và có độ bền cao. Form túi chuẩn đẹp, chắc chắn với đường may vô cùng tinh tế và tỉ mỉ từng chi tiết.  ', 'Phiên bản LV này đã cho thấy được sự phá cách và khiến các tín đồ thực sự thích thú đó chính là chú chó trắng được in nổi bật và tinh tế trên nền vải canvas. Đây là thành quả hợp tác giữa Giám đốc nghệ thuật Nicolas Ghesquière và Sun Yitian - nghệ sĩ người Trung Quốc nổi tiếng với những bức tranh đầy màu sắc mô phỏng các món đồ chơi trẻ em.', 'Túi LV Nano Speedy Bag M83688 sở hữu gam màu sang trọng và hiện đại cùng kiểu đáng trẻ trung, giúp người dùng dễ dàng kết hợp với các trang phục khác nhau phù hợp mọi dịp: hàng ngày, đi chơi, dự sự kiện,...để tạo phong cách riêng cho bản thân. ', 'product_pic\\louis\\louis21.webp', 'product_pic\\louis\\louis22.webp', 'product_pic\\louis\\louis23.webp'),
(123456796, 'Túi xách tay Gucci Deco Medium Bag Black 746210-DAAAN-1000 được thiết kế với kiểu dáng hiện đại và có chút cá tính với lớp da chần bông vô cùng tinh tế, đẹp mắt. Bạn có thể mang chiếc túi đi làm, đi dạo phố hay sự kiện cùng bạn bè, làm nổi bật lên vẻ ngoài đẳng cấp cho phái đẹp.', 'Gucci Deco Medium với gam màu đen sang chảnh và cũng dễ dàng phối đồ với nhiều trang phục khác nhau. Trên mặt túi được trang trí với logo GG, mặt trên có thiết kế khóa kéo chắc chắn. Bên trọng có ngăn lớn rộng rãi và hai ngăn nhỏ bằng vải cao cấp giúp bạn có thể đựng các vật dụng các nhân.', 'Ngoài ra, chiếc túi xách Gucci Deco Medium Bag Black 746210-DAAAN-1000 được trang bị tay cầm chắc chắn và có thể điều chỉnh linh hoạt độ dài ngắn cho bạn thay đổi kiểu đeo, chiếc túi sẽ là món quà tuyệt vời cho các quý cô xinh đẹp', 'product_pic\\gucci\\gucci21.webp', 'product_pic\\gucci\\gucci22.webp', 'product_pic\\gucci\\gucci23.webp'),
(123456797, 'Túi Đeo Chéo Nữ Prada Brushed Leather Shoulder Bag Màu Đen được làm từ chất liệu da cao cấp bền đẹp trong suốt quá trình sử dụng. Logo thương hiệu ở mặt trước tạo điểm nhấn. Form túi thời trang, hợp xu hướng, các đường chỉ khâu vô cùng chắc chắn và tinh tế. ', 'Đây là một mẫu túi dành cho cô nàng yêu thích sự nhẹ nhàng nhưng không kém phần tinh tế và cuốn hút. Sản phẩm cao cấp của Prada bạn cũng có thể làm quà tặng cho người thân, hoặc bạn bè vào một dịp đặc biệt.', 'Ngăn bên trong túi rộng rãi tiện lợi để những đồ cá nhân khi đi ra ngoài như: ví tiền, điện thoại, giấy tờ....', 'product_pic\\prada\\prada21.webp', 'product_pic\\prada\\prada22.webp', 'product_pic\\prada\\prada23.webp'),
(123456798, 'Túi đeo chéo Chanel Tweed & Leather Shoulder Bag với ý tưởng thiết kế vô cùng độc đáo và ấn tượng khi đã kết hợp giữa hai chất liệu da và vải cao cấp, tạo nên một sản phẩm tuyệt vời dành tặng cho các chị em.', 'Phía bên ngoài bắt mắt với lớp da màu đỏ sang trọng, mềm mại và bóng mịn, ở trung tâm chiếc túi là lớp vải được thiết kế tỉ mỉ và sinh động. Ngăn bên trong túi có thể chứa đựng được nhiều đồ cá nhân cần thiết như: ví tiền, điện thoại... khi bạn đi ra ngoài.', 'Phía dưới là lớp khóa kim loại màu bạc khá đặc trưng và rất chắc chắn giúp bảo quản tư trang cho các nàng khi đi làm, đi chơi....Ngoài ra, mẫu túi xách Chanel Tweed & Leather Shoulder Bag còn được trang bị dây đeo chắc chắn, vì thế các nàng có thể tận dụng để đeo vai, đeo chéo tùy sở thích.', 'product_pic\\chanel\\chanel41.webp', 'product_pic\\chanel\\chanel42.webp', 'product_pic\\chanel\\chanel43.webp'),
(123456799, 'Túi xách Louis Vuitton LV Epi Alma BB Lovelock Shoulder Bag White Bron M52885 được làm từ chất liệu da cao cấp mềm mại và bền đẹp trong thời gian sử dụng. Thiết kế form túi với các đường may vô cùng tỉ mỉ và chắc chắn.', 'Ngăn trong túi rộng rãi đựng được nhiều đồ cần thiết khi đi ra ngoài. Túi có tay xách và dây đeo tiện lợi, bạn có thể đeo vai hoặc đeo chéo tùy theo sở thích.', 'Màu trắng trẻ trung, thanh lịch cùng điểm nhấn họa tiết bắt mắt trên mặt túi, bạn sẽ dễ phối đồ với nhiều trang phục khác nhau để trở nên nổi bật hơn khi xuống phố. Đây là một mẫu túi dành cho các cô nàng yêu thích sự đơn giản nhưng không kém phần sang trọng và cuốn hút.', 'product_pic\\louis\\louis31.webp', 'product_pic\\louis\\louis32.webp', 'product_pic\\louis\\louis33.webp'),
(123456800, 'Túi đeo chéo Gucci Neo Vintage Mini Bag Monogram ‎658556-K9GOT-8861 được làm từ chất liệu canvas kết hợp da cao cấp mềm mại và bền đẹp theo thời gian. Sở hữu form dáng chữ nhật đứng chuẩn đẹp với các đường nét vô cùng tỉ mỉ và sắc sảo.', 'Ngăn trong túi tiện lợi và dể dàng chứa đựng những vật dụng cần thiết. Họa tiết cổ điển của Gucci mang đến một màu sắc rất riêng của hãng không thể lẫn đi đâu được. Màu nâu be bật dễ dàng kết hợp với các trang phục khác nhau để thay đổi phong cách theo sở thích của bản thân.', 'Chiếc túi có tay cầm vải và dây đeo chéo bằng da chắc chắn, có thể linh hoạt thay đổi độ dài ngắn để đeo vai, đeo chéo khi cần. Đây sẽ là mẫu túi sang chảnh và sành điệu cho các chàng trai, cô gái mỗi khi đi làm, đi dạo hay sự kiện cùng bạn bè.', 'product_pic\\gucci\\gucci31.webp', 'product_pic\\gucci\\gucci32.webp', 'product_pic\\gucci\\gucci33.webp'),
(123456801, 'Túi Đeo Vai Prada Saffiano Leather Mini Envelope Bag 1BP020_2EVU_F0002_V_N2O Màu Đen được làm từ chất liệu da và vải nylon cao cấp, bền đẹp trong suốt quá trình sử dụng. Form túi thời trang, hợp xu hướng, các đường chỉ khâu vô cùng chắc chắn và tinh tế.', 'Logo chữ Prada mang tính biểu tượng trang trí mặt trước của chiếc túi bao thư mini có nắp trước này. Phụ kiện có khóa nam châm có dây đeo vai cho phép đeo như túi đeo chéo hoặc túi đeo vai. Lớp lót nappa có một túi nhỏ với gương có thể tháo rời.', 'Túi Đeo Vai Prada Saffiano Leather Mini Envelope Bag 1BP020_2EVU_F0002_V_N2O Màu Đen sở hữu gam màu đen sang trọng có thể dễ dàng kết hợp với nhiều loại trang phục khác nhau để tạo nên một set đồ thời trang và thu hút. ', 'product_pic\\prada\\prada31.webp', 'product_pic\\prada\\prada32.webp', 'product_pic\\prada\\prada33.webp'),
(123456802, 'Túi xách Chanel Vanity Case Blue Black Caviar thiết kế kiểu dáng vô cùng độc đáo và ấn tượng với hình dáng vuông vắn, cứng form và đẹp mắt, mang tới một phong cách sành điệu và hiện đại cho phái đẹp.', 'Chiếc túi nổi bật với tone màu xanh navy thanh lịch và quanh viền được phối thêm màu đen sang trọng, giúp người dùng dễ phối đồ hơn khi đi ra ngoài. Ngăn bên trong túi có thể chứa đựng được nhiều đồ cá nhân cần thiết như: ví tiền, điện thoại... khi bạn đi ra ngoài.', 'Điểm nhấn trên chiếc túi chính là logo CC cỡ lớn khá bắt mắt và đây cũng chính là nét đặc trưng của hãng mà bất cứ tín đồ nào nhìn thấy cũng nhanh chóng nhận ra. Ngoài ra, mẫu túi xách Chanel Vanity Case Blue Black Caviar còn được trang bị tay cầm và dây đeo chắc chắn, vì thế các nàng có thể tận dụng để cầm tay, đeo chéo tùy sở thích.', 'product_pic\\chanel\\chanel51.webp', 'pproduct_pic\\chanel\\chanel52.webp', 'product_pic\\chanel\\chanel53.webp'),
(123456803, 'Túi xách Louis Vuitton LV Vanity PM được hoàn thiện từ chất liệu da cao cấp mềm mại, dễ lau chùi và có độ bền cao trong thời gian sử dụng. Form túi chuẩn đẹp, chắc chắn với đường may vô cùng tinh tế và tỉ mỉ từng chi tiết. ', 'Thiết kế túi kiểu dáng hợp thời trang khi được biến tấu hình hộp trông khá sành điệu và cá tính, tay cầm và dây đeo chắc chắn giúp người dùng linh hoạt khi đeo chéo, đeo vai hoặc xách tay. Điểm nhấn chữ ký Louis Vuitton và họa tiết hoa Monogram đặc trưng mang phong cách trẻ trung và hiện đại.', 'LV Vanity PM sở hữu gam màu hiện đại, trẻ trung nên dễ dàng kết hợp với các trang phục khác nhau phù hợp mọi dịp: hàng ngày, đi chơi, dự sự kiện,...để tạo phong cách riêng cho bản thân. ', 'product_pic\\louis\\louis41.webp', 'product_pic\\louis\\louis42.webp', 'product_pic\\louis\\louis43.webp'),
(123456804, 'Túi đeo vai Prada Re-Nylon Re-Edition 2000 Mini-Bag 1NE515_RDH0_F0002 được làm từ chất liệu Nylon cao cấp, bền đẹp trong suốt quá trình sử dụng. Form túi thời trang và hợp xu hướng, các đường chỉ khâu vô cùng chắc chắn và tinh tế.', 'Prada Re-Nylon Re-Edition 2000 Mini-Bag 1NE515_RDH0_F0002 thiết kế tay cầm bằng vải chắc chắn. Ngăn bên trong túi rộng rãi tiện lợi để những đồ cá nhân nhỏ khi đi ra ngoài như: ví tiền, điện thoại...', 'Mẫu túi nữ sở hữu gam màu hiện đại, sang trọng và bạn có thể dễ dàng kết hợp với nhiều trang phục khác nhau tạo nên sét đồ nổi bật. Mẫu túi này thích hợp cho bạn diện trong nhiều dịp khác nhau.', 'product_pic\\prada\\prada41.webp', 'product_pic\\prada\\prada42.webp', 'product_pic\\prada\\prada43.webp'),
(231543758, 'Túi Đeo Chéo Nữ Gucci Horsebit 1955 Mini Bag 752002 92TCG 8563 Màu Nâu Be mang phong cách thiết kế cổ điển với họa tiết logo GG in hoa trên nền vải canvas monogram, phần khóa cài mạ vàng bằng kim loại được gắn kết với phần viền da của túi rất chắc chắn và tinh tế. Nhìn vào chiếc túi thấy được sự kết hợp giữa phong cách cá tính và đôi chút nữ tính tạo nên vẻ đẹp hoàn hảo.', '', 'Chiếc túi Gucci Horsebit 1955 Mini Bag 752002 92TCG 8563 với gam màu sang trọng giúp bạn dễ dàng kết hợp với các trang phục khác nhau để thay đổi phong cách theo sở thích của bản thân.', 'product_pic\\gucci\\gucci71.webp', 'product_pic\\gucci\\gucci72.webp', 'product_pic\\gucci\\gucci73.webp'),
(231543765, 'Túi Đeo Chéo Gucci GG Marmont Mini Shoulder Bag ‎446744 AADPJ 6207 Màu Đỏ Đô được làm từ chất liệu da cao cấp đem đến sự bền đẹp trong suốt thời gian sử dụng. Mỗi chi tiết đều được làm một cách chỉnh chu, nhờ vậy Gucci luôn có sức hút bền bỉ đối với các tín đồ hàng hiệu. ', 'Điểm nhấn thu hút mọi cô gái của chiếc Gucci GG Marmont Mini Shoulder Bag này là phần đường khâu một cách tỉ mỉ, chi tiết và hoàn hảo. Túi có nắp gập, khóa cài vật lý. Dây đeo đồng thời là quai cầm, có thể biến hóa ngắn dài nhờ hai lỗ nhỏ trên nắp túi. Thiết kế bên trong túi gồm một ngăn lớn và một ', 'Túi Đeo Chéo Gucci GG Marmont Mini Shoulder Bag ‎446744 AADPJ 6207 Màu Đỏ Đô xứng đáng là  một mảnh ghép hoàn hảo cho \"bộ cánh\" của các cô nàng khi đi dạo phố, hẹn hò hay dự tiệc. Bản thân màu sắc của mẫu túi Gucci mini này vốn đã chinh phục mọi tín đồ yêu thích hàng hiệu.', 'product_pic\\gucci\\gucci41.webp', 'product_pic\\gucci\\gucci42.webp', 'product_pic\\gucci\\gucci43.webp'),
(231543766, 'Túi đeo chéo Chanel Red Leather Quilted Trendy CC Flap Shoulder Bag được làm từ chất liệu da cao cấp mềm mại, dễ dàng vệ sinh mà không làm bong tróc lớp da. Thiết kế form dáng chuẩn đẹp, hợp xu hướng thời trang của giới trẻ, các đường chỉ khâu vô cùng tỉ mỉ nên dù bạn có là khách hàng khó tính cũng ', 'Túi với kiểu dáng hình chữ nhật khá gọn gàng, bên trong có các ngăn lớn nhỏ đủ để bạn có thể đựng được các đồ dùng cần thiết như điện thoại, ví tiền...khi đi chơi với bạn bè. Túi Chanel Red Leather Quilted Trendy CC Flap Shoulder Bag với dây đeo bằng kim loại phối da chắc chắn, giúp bạn vừa có thể đ', 'Chiếc túi sang trong và sành điệu với tone màu đỏ cùng điểm nhấn khóa logo kim loại màu vàng ở phía trước vô cùng đặc trưng, dễ dàng kết hợp với các trang phục khác nhau theo sở thích bản thân. Đây là một mẫu túi dành cho các cô nàng yêu thích sự đơn giản nhưng không kém phần cuốn hút.', 'product_pic\\chanel\\chanel61.webp', 'product_pic\\chanel\\chanel62.webp', 'product_pic\\chanel\\chanel63.webp'),
(231543767, 'Túi xách Louis Vuitton LV Nano Speedy Handbag Strap In Brown Canvas M81085 được làm từ chất liệu canvas tráng monogram và viền da cao cấp. Form túi chuẩn đẹp, chắc chắn với đường may vô cùng tinh tế và tỉ mỉ từng chi tiết.  ', 'Thiết kế túi với quai xách bằng da chắc chắn kèm dây đeo chéo bằng vải bản to có thể điều chỉnh và tháo rời  tiện lợi. Điểm nhấn chữ ký Louis Vuitton và họa tiết hoa Monogram đặc trưng mang phong cách trẻ trung và hiện đại.', 'LV Nano Speedy Handbag Strap In Brown Canvas M81085 sở hữu gam màu nâu đen sang trọng và giúp người dùng dễ dàng kết hợp với các trang phục khác nhau để tạo phong cách riêng cho bản thân. ', 'product_pic\\louis\\louis51.webp', 'product_pic\\louis\\louis52.webp', 'product_pic\\louis\\louis53.webp'),
(231543768, 'Túi Đeo Chéo Gucci Web Messenger Bag Techno Canvas Màu Đen được làm từ chất liệu da cao cấp, nhẹ nhàng, bền bỉ, dễ dàng vệ sinh, form túi rộng rãi với phần quay xách chắc chắn mang lại sự thoải mái khi sử dụng, các chi tiết tinh tế, cơ bản. Điểm nhấn là logo Gucci được thêu ở giữa túi vô cùng nổi bậ', 'Tông màu đen cơ bản nhưng không kém phần hiện đại, thời thượng, sang trọng dễ dàng kết hợp với nhiều item và phụ kiện khác nhau, đóng mở khóa zip, dây đeo điều chỉnh, bạn có thể đeo chéo hoặc đeo qua vai, bên trong túi có 1 túi có khóa kéo và 2 túi trượt, diện tích túi khá lớn cho phép bạn đựng nhiề', 'Túi Đeo Chéo Gucci Web Messenger Bag Techno Canvas Màu Đen là gợi ý tuyệt vời dành cho những người theo đuổi phong cách thanh lịch, đơn giản nhưng không kém phần thời trang, nữ tính. Chiếc túi mang vẻ đẹp tinh tế, tiện dụng và phù hợp cho nhiều dịp khác nhau từ đi làm, đi chơi đến dự tiệc, đi du lịc', 'product_pic\\gucci\\gucci51.webp', 'product_pic\\gucci\\gucci52.webp', 'product_pic\\gucci\\gucci53.webp'),
(231543769, 'Túi đeo vai Prada Re-Nylon Re-Edition 2000 Mini-Bag 1NE515_RDH0_F0E182 được làm từ chất liệu Nylon cao cấp, bền đẹp trong suốt quá trình sử dụng. Form túi thời trang và hợp xu hướng, các đường chỉ khâu vô cùng chắc chắn và tinh tế.', 'Thiết kế ngăn túi thoải mái có thể chứa được một số đồ dùng cần thiết như điện thoại, son, ví,... Đây là một mẫu túi dành cho các cô nàng yêu thích sự đơn giản nhưng không kém phần sang trọng và cuốn hút.', 'Mẫu túi nữ sở hữu gam màu hiện đại, sang trọng và bạn có thể dễ dàng kết hợp với nhiều trang phục khác nhau tạo nên sét đồ nổi bật. Mẫu túi này thích hợp cho bạn diện trong nhiều dịp khác nhau.', 'product_pic\\prada\\prada51.webp', 'product_pic\\prada\\prada52.webp', 'product_pic\\prada\\prada53.webp'),
(231543770, 'Túi đeo chéo Chanel White Quilted Leather Boy Woc Bag được làm từ chất liệu da cao cấp mềm mại, dễ dàng vệ sinh mà không làm bong tróc lớp da. Thiết kế form dáng chuẩn đẹp, hợp xu hướng thời trang của giới trẻ, các đường chỉ khâu vô cùng tỉ mỉ nên dù bạn có là khách hàng khó tính cũng sẽ cảm thấy hà', 'Túi với kiểu dáng hình chữ nhật khá gọn gàng, bên trong có các ngăn lớn nhỏ đủ để bạn có thể đựng được các đồ dùng cần thiết như điện thoại, ví tiền...khi đi chơi với bạn bè. Túi Chanel White Quilted Leather Boy Woc Bag với dây đeo bằng kim loại phối da chắc chắn, giúp bạn vừa có thể đeo vai hoặc đe', 'Chiếc túi trang nhã và thanh lịch với tone màu trắng cùng điểm nhấn logo thương hiệu ở phía trước vô cùng đặc trưng, dễ dàng kết hợp với các trang phục khác nhau theo sở thích bản thân. Đây là một mẫu túi dành cho các cô nàng yêu thích sự đơn giản nhưng không kém phần cuốn hút.', 'product_pic\\chanel\\chanel71.webp', 'product_pic\\chanel\\chanel72.webp', 'product_pic\\chanel\\chanel73.webp'),
(231543771, 'Túi Xách Tay Nữ Louis Vuitton LV Néonoé BB M46581 Màu Nâu được coi là một trong những thiết kế tinh hoa của thương hiệu Louis Vuitton, chính vì thế mà chiếc túi này vừa có vẻ đẹp vừa cổ điển vừa pha trộn thêm nét hiện đại. Mẫu túi được trang bị một tay cầm bằng da chắc chắn cùng dây đeo.', 'Bên trong túi có không gian chứa khá thoải mái, mang linh hoạt hàng ngày lẫn dạo phố khiến người đeo trở lên cá tính hơn. Dù cho các thiết kế của LV khá đơn giản, tuy nhiên mỗi một họa tiết, hoa văn trên túi - ví đều vô cùng đắt giá.', 'Với Túi Xách Tay Nữ Louis Vuitton LV Néonoé BB M46581 Màu Nâu, nàng có thể đa dạng hóa phong cách từ style quý cô công sở sành điệu đến style hot girl đường phố năng động. Kích thước 20 x 20 x 13cm vừa phải để bạn chứa đựng những vật dụng cần thiết. Bạn cũng không cần phải vất vả tìm kiếm khi cần đế', 'product_pic\\louis\\louis61.webp', 'product_pic\\louis\\louis62.webp', 'product_pic\\louis\\louis63.webp'),
(231543772, 'Túi Đeo Chéo Gucci Ophidia Denim Supreme Bag 517350-2KQGG-8375 Xanh - Nâu có thiết kế hình chữ nhật được làm từ chất liệu denim phối da quen thuộc cùng những đường nét lấy từ cảm hứng cổ điển pha lẫn xu hướng thời trang hiện đại.', 'Nổi bật trên nền hoạt tiết GG đặc trưng là khóa zip kim loại vô cùng tinh tế. Túi dễ dàng sử dụng với thiết kế đóng mở dễ dàng, thêm một nét lai vào đường nét lấy cảm hứng từ cổ điển. Chiếc túi da nữ chuyển từ sự sang trọng tinh tế với dây đeo bằng da tạo cảm giác sang trọng. ', 'Gucci Ophidia Denim Supreme Bag 517350-2KQGG-8375 được đánh giá rất cao về sự đa dạng phong cách. Sở hữu vẻ đẹp cổ điển pha lẫn chút hiện đại, item này có thể dễ dàng phối hợp với nhiều loại trang phục để tạo nên phong cách khác nhau cho phái đẹp. ', 'product_pic\\gucci\\gucci61.webp', 'product_pic\\gucci\\gucci62.webp', 'product_pic\\gucci\\gucci63.webp'),
(231543773, 'Túi Prada Re-Nylon Shoulder Bag được làm từ chất liệu vải nylon cao cấp, bền đẹp trong suốt quá trình sử dụng. Form túi thời trang, hợp xu hướng, các đường chỉ khâu vô cùng chắc chắn và tinh tế.', 'Logo chữ Prada mang tính biểu tượng trang trí mặt trước của chiếc túi. Chiếc túi có khóa cài chắc chắn giúp bảo quản đồ dùng cẩn thận mỗi khi đi ra ngoài.', 'Túi đeo chéo Prada Re-Nylon Shoulder Bag sở hữu gam màu be sang trọng có thể dễ dàng kết hợp với nhiều loại trang phục khác nhau để tạo nên một set đồ thời trang và thu hút. ', 'product_pic\\prada\\prada61.webp', 'product_pic\\prada\\prada62.webp', 'product_pic\\prada\\prada63.webp'),
(231543774, 'Túi đeo chéo Chanel Caviar Quilted Wallet On Chain Woc Grey được làm từ chất liệu da cao cấp, bền đẹp trong suốt thời gian sử dụng. Form dáng chữ nhật chuẩn đẹp, các đường may rất tinh tế và chắc chắn làm hài lòng những khách hàng khó tính.', 'Ngăn bên trong túi có thể chứa đựng được nhiều đồ cá nhân cần thiết như: ví tiền, điện thoại... khi bạn đi ra ngoài. Màu xám sành điệu nhưng cũng dễ dàng giúp bạn kết hợp với nhiều trang phục khác nhau theo sở thích của bản thân.', 'Chiếc túi Chanel Caviar Quilted Wallet On Chain Woc Grey có dây đeo kết hợp da và kim loại khá chắc chẳn nên các nàng có thể đeo chéo, đeo vai dễ dàng. Nhờ đó bạn sẽ trở nên nổi bật và cuốn hút hơn khi mang bên mình chiếc túi xách thời trang, phong cách của thương hiệu Chanel nổi tiếng.', 'product_pic\\chanel\\chanel83.webp', 'product_pic\\chanel\\chanel82.webp', 'product_pic\\chanel\\chanel81.webp'),
(231543775, 'Túi xách Louis VuittonLV Monogram Alma BB W/ Strap sở hữu thiết kế form dáng chuẩn đẹp với các đường may vô cùng tỉ mỉ và chắc chắn nên dù là khách hàng khó tính cũng cảm thấy hài lòng. Điểm nhấn họa tiết Monogram nổi bật trên túi tạo nét đặc trưng quen thuộc của hãng.', 'Điểm cộng của chiếc túi này là có ngăn trong túi rộng rãi giúp các chị em có tể đựng được nhiều đồ cần thiết khi đi ra ngoài như ví tiền, điện thoại, đồ trang điểm... Túi có tay xách và dây đeo tiện lợi, bạn có thể đeo vai hoặc đeo chéo tùy theo sở thích.', 'Sự kết hợp của màu nâu đen từ chất liệu vải canvas và tone đỏ của lớp da cao cấp đã tạo nên sự tinh tế, ấn tượng cũng như giúp các nàng dễ phối đồ với nhiều trang phục khác nhau, với chiếc túi xách xinh xắn này bạn sẽ trở nên nổi bật hơn khi xuống phố. Đây là một mẫu túi dành cho các cô nàng yêu thí', 'product_pic\\louis\\louis71.webp', 'product_pic\\louis\\louis72.webp', 'product_pic\\louis\\louis73.webp'),
(231543777, 'Túi Đeo Chéo Prada 1BG865_2E8K_F0401 thiết kế tay cầm bằng da. Hơn hết, kích thước phần dây đeo của túi có thể điều chỉnh tiện lợi. Ngăn bên trong túi rộng rãi tiện lợi để những đồ cá nhân khi đi ra ngoài như: ví tiền, điện thoại, giấy tờ....', 'Túi Đeo Chéo Prada 1BG865_2E8K_F0401 Màu Nâu được làm từ chất liệu da cao cấp bền đẹp trong suốt quá trình sử dụng. Logo thương hiệu tông màu vàng kim loại tráng men ở mặt trước tạo điểm nhấn. Form túi thời trang, hợp xu hướng, các đường chỉ khâu vô cùng chắc chắn và tinh tế. ', 'Đây là một mẫu túi dành cho cô nàng yêu thích sự nhẹ nhàng nhưng không kém phần tinh tế và cuốn hút. Sản phẩm cao cấp của Prada bạn cũng có thể làm quà tặng cho người thân, hoặc bạn bè vào một dịp đặc biệt.', 'product_pic\\prada\\prada71.webp', 'product_pic\\prada\\prada72.webp', 'product_pic\\prada\\prada73.webp'),
(231543778, 'Túi đeo chéo Chanel Caviar Quilted Wallet On Chain Woc Black được làm từ chất liệu da cao cấp, bền đẹp trong suốt thời gian sử dụng. Form dáng chữ nhật chuẩn đẹp, các đường may rất tinh tế và chắc chắn làm hài lòng những khách hàng khó tính.', 'Ngăn bên trong túi có thể chứa đựng được nhiều đồ cá nhân cần thiết như: ví tiền, điện thoại... khi bạn đi ra ngoài. Màu đen đơn giản nhưng lại dễ dàng giúp bạn kết hợp với nhiều trang phục khác nhau theo sở thích của bản thân.', 'Chiếc túi Chanel Caviar Quilted Wallet On Chain Woc Black có dây đeo kết hợp da và kim loại khá chắc chẳn nên các nàng có thể đeo chéo, đeo vai dễ dàng. Nhờ đó bạn sẽ trở nên nổi bật và cuốn hút hơn khi mang bên mình chiếc túi xách thời trang, phong cách của thương hiệu Chanel nổi tiếng.', 'product_pic\\chanel\\chanel91.webp', 'pproduct_pic\\chanel\\chanel92.webp', 'product_pic\\chanel\\chanel93.webp'),
(231543779, 'Túi Xách Tay Nữ Louis Vuitton LV On The Go được hoàn thiện từ chất liệu canvas monogram kết hợp da cao cấp mềm mại, dễ lau chùi, độ bền cao. Form túi chuẩn đẹp, chắc chắn với đường may vô cùng tinh tế và tỉ mỉ từng chi tiết.  ', 'Thiết kế túi kiểu dáng thời trang khi được biến tấu thành hình dáng chiếc túi tote nhỏ nhắn với hai mặt màu nâu đậm và nhạt có quai xách bằng da chắc chắn kèm dây đeo chéo bằng vải bản to có thể điều chỉnh độ dài và tháo rời tiện lợi. Điểm nhấn chữ ký Louis Vuitton và họa tiết hoa Monogram đặc trưng', 'Túi Đeo Chéo Louis Vuitton LV On The Go sở hữu gam màu hiện đại, kiểu đáng trẻ trung và sành điệu, dễ dàng kết hợp với các trang phục khác nhau phù hợp mọi dịp: hàng ngày, đi chơi, dự sự kiện,...để tạo phong cách riêng cho bản thân. ', 'product_pic\\louis\\louis81.webp', 'product_pic\\louis\\louis82.webp', 'product_pic\\louis\\louis83.webp'),
(231543780, 'Túi tote Prada Saffiano Trimmed Tela Tweed được làm từ chất liệu vải Tweed phối da cao cấp, bền đẹp trong suốt quá trình sử dụng. Form túi thời trang và hợp xu hướng, các đường chỉ khâu vô cùng chắc chắn và tinh tế nên dù là khách hàng khó tính cũng cảm thấy hài lòng về sản phẩm.', 'Tote Prada Saffiano Trimmed Tela Tweed thiết kế tay cầm chắc chắn, kích thước phần dây đeo này không quá dài, không quá ngắn và vừa đủ để có thể cầm tay, đeo vai hay đeo chéo tùy ý.\r\n\r\n', 'Chiếc túi thiết kế logo tam giác Prada bằng kim loại hiện lên một cách bắt mắt bên trong hình tam giác nhỏ xinh. Ngăn bên trong túi rộng rãi tiện lợi để những đồ cá nhân nhỏ khi đi ra ngoài như: ví tiền, điện thoại...', 'product_pic\\prada\\prada81.webp', 'product_pic\\prada\\prada82.webp', 'product_pic\\prada\\prada83.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int(11) NOT NULL,
  `pic_path` varchar(60) NOT NULL,
  `hang` varchar(100) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `giasp` decimal(11,0) NOT NULL,
  `giagiam` decimal(11,0) DEFAULT NULL,
  `soluong` smallint(11) NOT NULL,
  `soluongban` bigint(11) DEFAULT NULL,
  `detail` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `pic_path`, `hang`, `tensp`, `giasp`, `giagiam`, `soluong`, `soluongban`, `detail`) VALUES
(123456789, 'product_pic\\chanel\\chanel1.webp', 'Chanel', 'Túi Xách Nữ Chanel Coco Mark Top Handle 2way Camera Shoulder Bag Leather Green', 2000000, 1242422, 23, 20, 'Túi Xách Nữ Chanel Coco Mark Top Handle 2way Camera Shoulder Bag Leather Green Màu Xanh Lá là chiếc túi xách cao cấp đến từ thương hiệu Chanel nổi tiếng. Sở hữu tông màu sang trọng cùng thiết kế hiện đại, Chanel Coco Mark Top mang đến cho người dùng trở nên hiện đại và đẳng cấp hơn.'),
(123456790, 'product_pic\\chanel\\chanel2.png', 'Chanel', 'Túi Đeo Chéo Nữ Chanel C19 Large Caramel Leather Way Flap Bag Màu Nâu', 3000000, 2500000, 30, 10, 'Túi Đeo Chéo Nữ Chanel C19 Large Caramel Leather Way Flap Bag Màu Nâu là chiếc túi xách cao cấp đến từ thương hiệu Chanel nổi tiếng. Với gam màu thời thượng cùng chất liệu bền đẹp, chiếc túi Chanel mang tới cho người dùng một phong cách trẻ trung, sang trọng khi xuống phố.'),
(123456791, 'product_pic\\louis\\louis1.webp', 'Louis Vuitt', 'Túi Xách Tay Nữ Louis Vuitton LV Twist One Handle PM M57093 Màu Đen', 3500000, 2900000, 25, 12, 'Túi Xách Tay Nữ Louis Vuitton LV Twist One Handle PM M57093 Màu Đen là chiếc túi thời trang đến từ thương hiệu Louis Vuitton nổi tiếng. Túi sở hữu kiểu dáng hiện đại, sang trọng cùng gam màu thời thượng nên được nhiều tín đồ yêu thích và săn đón.'),
(123456792, 'product_pic\\gucci\\gucci1.webp', 'Gucci', 'Túi Đeo Chéo Gucci GG Ophidia Shoulder Bag Màu Nâu', 4500000, 4000000, 15, 5, 'Túi Đeo Chéo Gucci GG Ophidia Shoulder Bag Màu Nâu là chiếc túi thời trang đến từ thương hiệu Gucci nổi tiếng. Mẫu túi với form dáng đẹp mắt cùng gam màu hiện đại dễ mix đồ.'),
(123456793, 'product_pic\\prada\\prada1.webp', 'Prada', 'Túi Đeo Chéo Prada Re-Edition 2005 Nylon Bag 1BB846_064_F0002_V_W11 Màu Đen', 3800000, 3300000, 20, 18, 'Túi Đeo Chéo Prada Re-Edition 2005 Nylon Bag 1BB846_064_F0002_V_W11 Màu Đen là chiếc túi xách cao cấp đến từ thương hiệu Prada nổi tiếng. Túi được làm từ chất liệu cao cấp bền đẹp trong suốt quá trình sử dụng.\r\n\r\n'),
(123456794, 'product_pic\\chanel\\chanel3.png', 'Chanel', 'Túi Đeo Chéo Nữ Chanel Boy Medium Black Carvia Leather Antique Gold Metal ', 2200000, 2000000, 50, 30, 'Túi Đeo Chéo Nữ Chanel Boy Medium Black Carvia Leather Antique Gold Metal Màu Đen là chiếc túi xách thời trang đến từ thương hiệu Chanel nổi tiếng. Chiếc túi với phong cách trẻ trung, đẹp mắt và được thiết kế tỉ mỉ đem tới một vẻ ngoài thanh lịch nhưng cũng thời thượng.'),
(123456795, 'product_pic\\louis\\louis2.webp', 'Louis Vuitt', 'Túi Xách Nữ Louis Vuitton LV Nano Speedy Bag M83688 Màu Nâu Đen', 3200000, 2800000, 40, 22, 'Túi Xách Nữ Louis Vuitton LV Nano Speedy Bag M83688 Màu Nâu Đen là chiếc túi thời trang đến từ thương hiệu Louis Vuitton nổi tiếng. Túi sở hữu kiểu dáng đơn giản, tinh tế, hiện đại - thời thượng được nhiều tín đồ yêu thích và săn đón.'),
(123456796, 'product_pic\\gucci\\gucci2.webp', 'Gucci', 'Túi Xách Tay Nữ Gucci Deco Medium Bag Black 746210-DAAAN-1000 Màu Đen', 2700000, 2300000, 33, 15, 'Túi Xách Tay Nữ Gucci Deco Medium Bag Black 746210-DAAAN-1000 Màu Đen là mẫu túi thời trang  dành cho nữ đến từ thương hiệu Gucci nổi tiếng. Chiếc túi Deco Medium Bag được thiết kế sành điệu và sang trọng, mang tới một phong cách mới lạ, thời thượng cho các chị em phụ nữ.'),
(123456797, 'product_pic\\prada\\prada2.webp', 'Prada', 'Túi Đeo Chéo Nữ Prada Brushed Leather Shoulder Bag Màu Đen', 5000000, 4700000, 18, 9, 'Túi Đeo Chéo Nữ Prada Brushed Leather Shoulder Bag Màu Đen là chiếc túi xách cao cấp đến từ thương hiệu Prada nổi tiếng. Túi được làm từ chất liệu cao cấp bền đẹp trong suốt quá trình sử dụng.'),
(123456798, 'product_pic\\chanel\\chanel4.png', 'Chanel', 'Túi Đeo Chéo Nữ Chanel Tweed & Leather Shoulder Bag Phối Màu', 6000000, 5500000, 22, 11, 'Túi Đeo Chéo Nữ Chanel Tweed & Leather Shoulder Bag Phối Màu là chiếc túi xách thời trang đến từ thương hiệu Chanel nổi tiếng. Với thiết kế trẻ trung, sành điệu cùng chất liệu bền đẹp, chiếc túi mang lại sự sang trọng, tiện dụng cho người dùng khi đi ra ngoài.'),
(123456799, 'product_pic\\louis\\louis3.webp', 'Louis Vuitt', 'úi Xách Nữ Louis Vuitton LV Epi Alma BB Lovelock Shoulder Bag White Bron M52885 Màu Trắng ', 4000000, 3600000, 28, 19, 'Túi Xách Nữ Louis Vuitton LV Epi Alma BB Lovelock Shoulder Bag White Bron M52885 Màu Trắng là chiếc túi xách dành cho nữ đến từ thương hiệu Louis Vuitton nổi tiếng. Túi được thiết kế đẹp mắt cùng gam màu thời thượng, trẻ trung cho người dùng thêm sành điệu và sang trọng khi mang bên mình.'),
(123456800, 'product_pic\\gucci\\gucci3.webp', 'Gucci', 'Túi Đeo Chéo Gucci Neo Vintage Mini Bag Monogram ‎658556-K9GOT-8861 Màu Nâu Be N-HM', 5200000, 4800000, 12, 7, 'Túi Đeo Chéo Gucci Neo Vintage Mini Bag Monogram ‎658556-K9GOT-8861 Màu Nâu Be là chiếc túi xách dành cho cả nam và nữ đến từ thương hiệu Gucci nổi tiếng. Với gam màu thanh lịch cùng thiết kế hiện đại, chiếc túi Gucci ‎658556-K9GOT-8861 cho người dùng sự đẳng cấp thời thượng.'),
(123456801, 'product_pic\\prada\\prada3.webp', 'Prada', 'Túi Đeo Vai Prada Saffiano Leather Mini Envelope Bag', 4600000, 4300000, 17, 10, 'Túi Prada Saffiano Leather Mini Envelope Bag 1BP020_2EVU_F0002_V_N2O Màu Đen là chiếc túi xách cao cấp đến từ thương hiệu Prada nổi tiếng. Túi thiết kế nhỏ nhắn, thời trang và được làm từ chất liệu cao cấp bền đẹp trong suốt quá trình sử dụng.'),
(123456802, 'product_pic\\chanel\\chanel5.webp', 'Chanel', 'Túi Đeo Chéo Nữ Chanel Tweed & Leather Shoulder Bag Phối Màu', 3300000, 3000000, 20, 16, 'Túi Đeo Chéo Nữ Chanel Tweed & Leather Shoulder Bag Phối Màu là chiếc túi xách thời trang đến từ thương hiệu Chanel nổi tiếng. Với thiết kế trẻ trung, sành điệu cùng chất liệu bền đẹp, chiếc túi mang lại sự sang trọng, tiện dụng cho người dùng khi đi ra ngoài.'),
(123456803, 'product_pic\\louis\\louis4.webp', 'Louis Vuitt', 'Túi Xách Nữ Louis Vuitton LV Vanity PM Màu Trắng Kem ', 2800000, 2500000, 35, 20, 'Túi Xách Nữ Louis Vuitton LV Vanity PM Màu Trắng Kem là chiếc túi thời trang đến từ thương hiệu Louis Vuitton nổi tiếng. Túi sở hữu kiểu dáng đơn giản, tinh tế và không kém phần hiện đại cùng gam màu thời thượng được nhiều tín đồ yêu thích và săn đón.'),
(123456804, 'product_pic\\prada\\prada4.webp', 'Prada', 'Túi Đeo Vai Nữ Prada Re-Nylon Re-Edition 2000 Mini-Bag', 3900000, 3500000, 14, 8, 'Túi Đeo Vai Nữ Prada Re-Nylon Re-Edition 2000 Mini-Bag 1NE515_RDH0_F0002 Màu Đen là thiết kế túi cao cấp đến từ thương hiệu Prada nổi tiếng. Mẫu túi rất lý tưởng dành cho những cô nàng thích sự năng động, cá tính trong phong cách thường ngày.'),
(231543758, 'product_pic\\gucci\\gucci7.webp', 'Gucci', 'Túi Đeo Chéo Nữ Gucci Horsebit 1955 Mini Bag 752002 92TCG 8563 Màu Nâu Be ', 1800000, NULL, 28, 9, 'Túi Đeo Chéo Nữ Gucci Horsebit 1955 Mini Bag 752002 92TCG 8563 Màu Nâu Be là chiếc túi xách thời trang dành cho nữ đến từ thương hiệu Gucci nổi tiếng. Túi Gucci 752002 92TCG 8563 thiết kế tinh tế trong từng chi tiết, cùng chất liệu cao cấp có độ bền cao. '),
(231543765, 'product_pic\\gucci\\gucci4.webp', 'Gucci', 'Túi Đeo Chéo Nữ Gucci GG Marmont Small Shoulder Bag Màu Đỏ Đô', 750000, NULL, 23, 0, 'Túi Đeo Chéo Gucci GG Marmont Small Shoulder Bag ‎443497 AADPJ 6207 Màu Đỏ Đô là chiếc túi cao cấp đến từ thương hiệu Gucci nổi tiếng. Thiết kế của túi là sự giao thoa giữa nét cổ điển mềm mại kết hợp với nét lãng mạn hiện đại khiến bao cô gái phải say mê. '),
(231543766, 'product_pic\\chanel\\chanel6.webp', 'Chanel', 'Túi Đeo Chéo Nữ Chanel Red Leather Quilted Trendy CC Flap Shoulder Bag', 3000000, NULL, 15, 5, 'Túi Đeo Chéo Nữ Chanel Red Leather Quilted Trendy CC Flap Shoulder Bag Màu Đỏ là chiếc túi xách cao cấp đến từ thương hiệu Chanel nổi tiếng. Với gam màu thời thượng cùng chất liệu bền đẹp, chiếc túi Chanel mang tới cho người dùng một phong cách trẻ trung, sang trọng khi xuống phố.'),
(231543767, 'product_pic\\louis\\louis5.webp', 'Louis Vuitt', 'Túi Xách Nữ Louis Vuitton LV Nano Speedy Handbag Strap In Brown Canvas M81085 Màu Nâu Đen', 5000000, NULL, 10, 3, 'úi Xách Nữ Louis Vuitton LV Nano Speedy Handbag Strap In Brown Canvas M81085 Màu Nâu Đen là chiếc túi thời trang đến từ thương hiệu Louis Vuitton nổi tiếng. Mẫu túi với gam màu sang trọng cùng chất liệu cao cấp, bền đẹp, mang tới một phong cách tự tin và đẳng cấp cho các nàng.'),
(231543768, 'product_pic\\gucci\\gucci5.webp', 'Gucci', 'Túi Đeo Chéo Gucci Web Messenger Bag Techno Canvas Màu Đen', 2500000, NULL, 20, 7, 'Túi Đeo Chéo Gucci Web Messenger Bag Techno Canvas Màu Đen đến từ thương hiệu thời trang nổi tiếng Gucci. Thiết kế dày dặn, chắc chắn, tông màu sang trọng, đây là món phụ kiện hoàn hảo dành cho những người yêu thích sự thanh lịch, đơn giản nhưng không kém phần thời trang. '),
(231543769, 'product_pic\\prada\\prada5.webp', 'Prada', 'Túi Đeo Vai Nữ Prada Re-Nylon Re-Edition 2000 Mini-Bag', 3200000, NULL, 12, 0, 'Túi Đeo Vai Nữ Prada Re-Nylon Re-Edition 2000 Mini-Bag 1NE515_RDH0_F0E182 Màu Hồng là thiết kế túi cao cấp đến từ thương hiệu Prada nổi tiếng. Mẫu túi rất lý tưởng đồng thời toát ra như một ma lực thu hút đến mãnh liệt, khó có thể mà không quay đầu lại ngoái nhìn. '),
(231543770, 'product_pic\\chanel\\chanel7.webp', 'Chanel', 'Túi Đeo Chéo Nữ Chanel White Quilted Leather Boy Woc Bag Màu Trắng', 4300000, NULL, 18, 6, 'Túi Đeo Chéo Nữ Chanel White Quilted Leather Boy Woc Bag Màu Trắng là chiếc túi xách cao cấp đến từ thương hiệu Chanel nổi tiếng. Với gam màu thời thượng cùng chất liệu bền đẹp, chiếc túi Chanel mang tới cho người dùng một phong cách trẻ trung, sang trọng khi xuống phố'),
(231543771, 'product_pic\\louis\\louis6.webp', 'Louis Vuitt', 'Túi Xách Tay Nữ Louis Vuitton LV Néonoé BB M46581 Màu Nâu', 2900000, NULL, 25, 8, 'Túi Xách Tay Louis Vuitton LV Néonoé BB M46581 Màu Nâu là chiếc túi dành cho nữ đến từ thương hiệu Louis Vuitton nổi tiếng. Mẫu túi rất lý tưởng dành cho những cô nàng công sở thích sự năng động nhưng cũng phải thật nhẹ nhàng, thanh lịch.'),
(231543772, 'product_pic\\gucci\\gucci6.webp', 'Gucci', 'Túi Đeo Chéo Gucci Ophidia Denim Supreme Bag 517350-2KQGG-8375 Xanh', 2700000, NULL, 30, 0, 'Túi Đeo Chéo Gucci Ophidia Denim Supreme Bag 517350-2KQGG-8375 Xanh - Nâu là chiếc túi cao cấp đến từ thương hiệu Gucci nổi tiếng. Đây là một thiết kế năm trong bộ sưu tập phụ kiện Gucci rất được các tín đồ thời trang ưa chuộng.'),
(231543773, 'product_pic\\prada\\prada6.webp', 'Prada', 'Túi Đeo Chéo Nữ Prada Re-Nylon Shoulder Bag Màu Be', 4000000, NULL, 22, 14, 'Túi Đeo Chéo Nữ Prada Re-Nylon Shoulder Bag Màu Be là chiếc túi xách cao cấp đến từ thương hiệu Prada nổi tiếng. Túi thiết kế nhỏ nhắn, thời trang và được làm từ chất liệu cao cấp bền đẹp trong suốt quá trình sử dụng.'),
(231543774, 'product_pic\\chanel\\chanel8.webp', 'Chanel', 'Túi Đeo Chéo Nữ Chanel Caviar Quilted Wallet On Chain Woc Grey Màu Xám', 5200000, NULL, 16, 2, 'Túi Đeo Chéo Nữ Chanel Caviar Quilted Wallet On Chain Woc Grey Màu Xám là chiếc túi xách thời trang đến từ thương hiệu Chanel nổi tiếng. Với thiết kế trẻ trung, hiện đại cùng gam màu sang trọng, chiếc túi Chanel Woc mang lại cho phái nữ một phong cách thời thượng, tinh tế.'),
(231543775, 'product_pic\\louis\\louis7.webp', 'Louis Vuitt', 'Túi Xách Nữ Louis Vuitton LV Monogram Alma BB W/ Strap Màu Nâu Đỏ', 3900000, NULL, 14, 4, 'Túi Xách Nữ Louis Vuitton LV Monogram Alma BB W/ Strap Màu Nâu Đỏ là chiếc túi xách dành cho nữ đến từ thương hiệu Louis Vuitton nổi tiếng. Túi được thiết kế đẹp mắt cùng gam màu thời thượng, trẻ trung cho người dùng thêm sành điệu và sang trọng khi mang bên mình.'),
(231543777, 'product_pic\\prada\\prada7.webp', 'Prada', 'Túi Đeo Chéo Prada 1BG865_2E8K_F0401 Màu Nâu', 4500000, NULL, 21, 11, 'Túi Đeo Chéo Prada 1BG865_2E8K_F0401 Màu Nâu là chiếc túi xách cao cấp đến từ thương hiệu Prada nổi tiếng. Túi được làm từ chất liệu cao cấp bền đẹp trong suốt quá trình sử dụng.'),
(231543778, 'product_pic\\chanel\\chanel9.webp', 'Chanel', 'Túi Đeo Chéo Nữ Chanel Caviar Quilted Wallet On Chain Woc Black Màu Đen', 2400000, NULL, 32, 13, 'Túi Đeo Chéo Nữ Chanel Caviar Quilted Wallet On Chain Woc Black Màu Đen là chiếc túi xách thời trang đến từ thương hiệu Chanel nổi tiếng. Với thiết kế trẻ trung, hiện đại cùng gam màu sang trọng, chiếc túi Chanel Woc mang lại cho phái nữ một phong cách thời thượng, tinh tế.'),
(231543779, 'product_pic\\louis\\louis8.webp', 'Louis Vuitt', 'Túi Xách Tay Nữ Louis Vuitton LV On The Go M46373 Màu Nâu', 3500000, NULL, 27, 10, 'Túi Xách Tay Nữ Louis Vuitton LV On The Go Màu Nâu là chiếc túi thời trang đến từ thương hiệu Louis Vuitton nổi tiếng. Túi sở hữu kiểu dáng đơn giản, tinh tế, hiện đại - thời thượng được nhiều tín đồ yêu thích và săn đón.'),
(231543780, 'product_pic\\prada\\prada8.webp', 'Prada', 'Túi Tote Nữ Prada Saffiano Trimmed Tela Tweed Màu Trắng Đen', 3000000, NULL, 19, 5, 'Túi Tote Nữ Prada Saffiano Trimmed Tela Tweed Màu Trắng Đen là mẫu túi thời trang cao cấp đến từ thương hiệu Prada nổi tiếng. Mẫu túi xách này được làm từ chất liệu vải bền đẹp trong suốt quá trình sử dụng, thu hút người nhìn bởi kiểu dáng sành điệu cùng gam màu thời thượng nên được nhiều tín đồ yêu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `address`, `phone`, `email`, `password`, `created_at`) VALUES
(111111111, 'Hoangznzn', 'Tran Viet Hoang', 'Hà Nội', '0393475216', 'Hoang@gmail.com', '1234567', '2024-10-22 08:17:55'),
(111111140, 'HoangAnh', 'Tran Hoang Anh', 'Hà Nội', '0123456789', 'b@gmail.com', '1234567', '2024-10-22 08:23:24'),
(111111141, 'NHAnh', 'Nguyen Hoang Anh', 'Hà Nội', '0987654321', 'c@gmail.com', '1234567', '2024-10-22 08:23:24'),
(111111142, 'test', 'test', 'Thai Binh', '0321321312', 'd@gmail.com', '1234567', '2024-10-22 08:23:24'),
(111111143, 'tes1', 'test1', 'Bắc Ninh', '0897654321', 'e@gmail.com', '1234567', '2024-10-22 08:23:24'),
(111111159, 'Hoangznzzn', 'Tran Viet Hoang', 'Haà Nội', '0393475216', 'a@gmail.com', '1234567', '2024-10-28 12:26:27'),
(111111160, 'anhznzzn', 'tran hoang anh', 'thái bình', '0393475234', 'f@gmail.com', '1234567', '2024-10-29 06:26:44'),
(111111179, 'anhznzz', 'tran hoang anh', 'f@gmail.com', '0393475234', 'v@gmail.com', '1234567', '2024-11-01 14:50:32');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `chitiet`
--
ALTER TABLE `chitiet`
  ADD PRIMARY KEY (`id_sp`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `mota`
--
ALTER TABLE `mota`
  ADD PRIMARY KEY (`id_sp`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111111153;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111111180;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `sanpham` (`id_sp`);

--
-- Các ràng buộc cho bảng `chitiet`
--
ALTER TABLE `chitiet`
  ADD CONSTRAINT `chitiet_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`);

--
-- Các ràng buộc cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD CONSTRAINT `lienhe_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `mota`
--
ALTER TABLE `mota`
  ADD CONSTRAINT `mota_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
