-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2019 at 07:03 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fffbdcom_tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'abc@gmail.com', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `admin_hotel`
--

CREATE TABLE `admin_hotel` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `hotel_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_hotel`
--

INSERT INTO `admin_hotel` (`id`, `email`, `password`, `hotel_name`) VALUES
(1, 'royal_tulip@gmail.com', '1234', 'Royal Tulip Sea Pearl Beach Resort'),
(2, 'Longbeach@gmail.com', '1234', 'Long beach hotel');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `place_name` text NOT NULL,
  `image_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `place_name`, `image_name`) VALUES
(1, 'Coxsbazar', 'image/cox4.jpg'),
(2, 'Coxsbazar', 'image/nilgiri.jpg'),
(3, 'Coxsbazar', 'image/coxs3.jpg\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `place_name` text NOT NULL,
  `hospital_name` text NOT NULL,
  `address` text NOT NULL,
  `contact_no` text NOT NULL,
  `lat` text NOT NULL,
  `lon` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `place_name`, `hospital_name`, `address`, `contact_no`, `lat`, `lon`) VALUES
(1, 'Coxsbazar', 'Fouad Al-Khateeb Hospital', 'Sea Side Hospital Rd, Cox\'s Bazar', ' 01790342233', '21.441739', '91.976016'),
(2, 'Coxsbazar', 'General Hospital Cox\'s Bazar', 'Cox\'s Bazar', '01736301274', '21.442387', '91.977147'),
(3, 'Coxsbazar', 'Cox\'s Bazar Baitush Sharaf Hospital', 'Baitush saraf Road Behind Burmees Maket, Cox\'s Bazar 4700', '0341-63911', '', ''),
(4, 'Coxsbazar', 'Central Hospital Cox\'s Bazar', 'the Boys\' School, On the side of the girls \'school, near, Hospital Rd, Cox\'s Bazar 4700', ' 0341-63344', '', ''),
(5, 'Coxsbazar', '250 Bed District Hospital Cox\'s Bazar', ' sadar cox\'sbazar, Cox\'s Bazar', '0341-63884', '', ''),
(12, 'Khagrachari', 'Khagrachari District Sadar Hospital', ' New-Zealand Rd, Changrachhari', '', '', ''),
(7, 'Cox\'s Bazar', 'Digital Hospital', ' 1-5 Floor, Opposite sadar Hospital, Mabud Complex, Hospital Rd, Cox\'s Bazar 4700', '01756-847466', '', ''),
(13, 'Khagrachari', 'Khagrachari Army Hospital', ' Khagrachhari-Dighinala Road, Khagrachari', '', '', ''),
(14, 'Khagrachari', 'MDS, Khagrachari Cantonment', 'MDS, Khagrachari Cantonment', '', '', ''),
(10, 'Saint Martin Island', 'Upazila Health Complex,Teknaf.', 'Cox\'s Bazar - Teknaf Hwy, Teknaf', '01714-575551', '', ''),
(11, 'Saint Martin Island', 'Nhila Shorkare Hospital', 'Dakshin Nhila, Bangladesh', ' 01815-720116', '', ''),
(15, 'Rangamati', 'Rangamati Police Hospital', 'police hospital road, sador, Rangamati 4500', '01627-771187', '', ''),
(16, 'Rangamati', 'Rangamati Government Hospital', 'Rangamati, Bangladesh', '01930-541300', '', ''),
(17, 'Rangamati', 'Lake Site Hospital', 'North Kalindipur,, North 106, Rangamati', '0351-63464', '', ''),
(18, 'Kaptai', 'Rangamati Police Hospital', 'police hospital road, sador, Rangamati 4500', ' 01627-771187', '', ''),
(19, 'Kaptai', 'Rangamati Diabetic Hospital', 'Rangamati, Bangladesh', '', '', ''),
(20, 'Kaptai', 'Lake Site Hospital', ' North Kalindipur,, North 106, Rangamati', '0351-63464', '', ''),
(21, 'Chittagong', 'Red Crescent Maternity Hospital', ' Chittagong Development Authority Buildings, Station Road, Chittagong', ' 031-612359', '', ''),
(22, 'Chittagong', 'Chittagong Medical College', '57, K.B. Fazlul Kader road, P.S. Panchlaish, P.O, Chittagong 4203', '01819-637685', '', ''),
(23, 'Chittagong', 'Chattogram Metropolitan Hospital Limited', '698/452 O.R. Nizam Road, Chittagong 4001', ' 01814-651077', '', ''),
(24, 'Foy\'s Lake', 'Chittagong Eye Infirmary and Training Complex\r\n', 'Foy\'s Lake Approach Rd, Chittagong', '031-659017', '', ''),
(25, 'Naval Beach', 'KEPZ Medical Centre', 'Anwara Upazila, Bangladesh', '01811939541', '', ''),
(26, 'Naval Beach', 'Holy Care Maa O Shishu General Hospital', ' Naval HQ Rd, Chittagong', '01973-007500', '', ''),
(27, 'Vatiyari', 'TB Hospital', 'Salimpur, Bangladesh', '', '', ''),
(28, 'Vatiyari', 'Chittagong Medical College', ' 57, K.B. Fazlul Kader road, P.S. Panchlaish, P.O, Chittagong 4203', '01819-637685', '', ''),
(29, 'Shalban Buddhist Vihara', 'Comilla Medical College', 'Kuchaitoli, Dr Akhtar Hameed Khan Rd, Comilla 3500', '0816-5562', '', ''),
(30, 'Shalban Buddhist Vihara', 'Popular Hospital', 'Laksham Rd, Comilla', ' 01711-785442', '', ''),
(31, 'Shalban Buddhist Vihara', 'Midland Hospital (Pvt) Ltd', 'Laksham Rd, Comilla', '0816-8118', '', ''),
(32, 'Sreemangal', 'Sreemangal Govt Hospital', ' Sreemangal, Bangladesh', '0821-713667', '', ''),
(33, 'Jaflong', 'Women Medical College', 'Noyashorok Road, Mirboxtola, Sylhet 3100', ' 0821-720123', '', ''),
(34, 'Jaflong', 'Ibn Sina Hospital Sylhet Ltd', 'Subhani Ghat Point, Sylhet', '01938-865257', '', ''),
(35, 'Jaflong', 'Al Haramain Hospital Private Limited', 'N206, Sylhet, Sylhet Division, Sylhet 3100', '01931-225555', '', ''),
(36, 'Bisnakandi', 'Women Medical College', 'Noyashorok Road, Mirboxtola, Sylhet 3100', ' 0821-720123', '', ''),
(37, 'Bisnakandi', 'Ibn Sina Hospital Sylhet Ltd', 'Subhani Ghat Point, Sylhet', '01938-865257', '', ''),
(38, 'Bisnakandi', 'Al Haramain Hospital Private Limited', 'N206, Sylhet, Sylhet Division, Sylhet 3100', '01931-225555', '', ''),
(39, 'Bisnakandi', 'Sylhet Diabetic Hospital', 'Puranlane Road, Sylhet', '0821-713632', '', ''),
(40, 'Ratargul Swamp Forest', 'Women Medical College', 'Noyashorok Road, Mirboxtola, Sylhet 3100', ' 0821-720123', '', ''),
(41, 'Ratargul Swamp Forest', 'Ibn Sina Hospital Sylhet Ltd', 'Subhani Ghat Point, Sylhet', '01938-865257', '', ''),
(42, 'Ratargul Swamp Forest', 'Al Haramain Hospital Private Limited', 'N206, Sylhet, Sylhet Division, Sylhet 3100', '01931-225555', '', ''),
(43, 'Ratargul Swamp Forest', 'Sylhet Diabetic Hospital', 'Puranlane Road, Sylhet', '0821-713632', '', ''),
(44, 'Jatiyo Sriti Shoudho', 'Savar Central Hospital', 'Dhaka - Aricha Hwy, Savar Union', '01977-603261', '', ''),
(45, 'Jatiyo Sriti Shoudho', 'Savar Central Eye Hospital', 'Dagarmora, Shimultala, Dhaka - Aricha Hwy, Savar Union 1340', '01718-867489', '', ''),
(46, 'Jatiyo Sriti Shoudho', 'CRP Hospital and Physio Therapy', 'Savar Union', '01730-059555', '', ''),
(47, 'Shaheed Minar', 'Dhaka Medical College Hospital', 'Secretariat Rd, Dhaka 1000', ' 02-55165001', '', ''),
(48, 'Shaheed Minar', 'BIRDEM', '122 Kazi Nazrul Islam Ave, Dhaka 1000', '02-9661551', '', ''),
(49, 'Nandan Park', 'Dr. Mustafa Medical Centre', 'Baroipara Road\r\n', '01766-555943', '', ''),
(50, 'Nandan Park', 'Dr. Farida-Ibrahim genaral hospital', 'Chandra kaliakair', '01743-400904', '', ''),
(51, 'Fantasy Kingdom', 'Shariatpur Homeopathic Medical College & Hospital', 'Modern Fantasy Kingdom Rd', '01779-184998', '', ''),
(52, 'Ramna Park', 'Dhaka Medical College and Hospital', ' Dhaka 1000', '02-55165088', '', ''),
(53, 'Ramna park', 'Saaol Heart Center (BD) Ltd.', 'H.No 26, Eskaton Garden Road Behind Navi Head Quaters, 1000', '01744-251222', '', ''),
(54, 'Jatiya Sangsad Bhaban', 'Oncology Centre and Hospital Limited', '2/8A, road -3, Block-A, Lalmatia Mirpur Road, Dhaka 1207', '01914-331934', '', ''),
(55, 'Jatiya Sangsad Bhaban', 'Royal Care And Surgical Hospital', '2/8-A, Road-3, Block-A, Lalmatia, Dhaka 1205', '01783-199990', '', ''),
(56, 'Hatirjheel', 'National Institute of Ear, Nose and Throat (ENT), Bangladesh\r\n', ' Tejgaon Health complex, Love Road, Begunbari, Tejgaon, C/A, Dhaka 1208', '02-8878155', '', ''),
(57, 'Hatirjheel', 'Tejgaon Thana Health Complex', 'Tejgaon Shilpo Elaka, Dhaka 1208', '', '', ''),
(58, 'Hatirjheel', 'Jahanara Sulaiman Medical Care (JSMC)', ' West Rampura, Dhaka 1219', '01678-538847', '', ''),
(59, 'Mahasthangarh', 'Rajshahi Medical College', ' Medical College Road, Rajshahi 6000', '0721-775651', '', ''),
(60, 'Mahasthangarh', 'CDM HOSPITAL, Chowdhury Tower, LAXMIPUR, RAJSHAHI\r\n', 'Chowdhury Tower LAXMIPUR, Rajshahi', '01715-841330', '', ''),
(61, 'Mahasthangarh', 'Rajshahi Diabetic Hospital', 'Ct Station Rd, Rajshahi 6000', '0721-774237', '', ''),
(62, 'Puthia Rajbari', 'Puthia Upazila Health Complex', 'N6, Rajshahi 6260', '01730-324707', '', ''),
(63, 'Choto sona mosque', 'Kansat General Hospital', 'Shibganj - Kansat Rd, Kansat', '01716-727348', '', ''),
(64, 'Shundarban', 'Koyra Hospital & Diagonastic Center', ' Koyra, khulna', '', '', ''),
(65, 'Shundarban', 'Pratapnagar Community Hospital\r\n', 'Pratapnagar, Assasuni, Satkhira', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `place_name` text NOT NULL,
  `hotel_name` text NOT NULL,
  `hotel_image` text NOT NULL,
  `hotel_lat` text NOT NULL,
  `hotel_lon` text NOT NULL,
  `price` int(11) NOT NULL,
  `hotel_address` text NOT NULL,
  `hotel_contact` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `place_name`, `hotel_name`, `hotel_image`, `hotel_lat`, `hotel_lon`, `price`, `hotel_address`, `hotel_contact`) VALUES
(1, 'Coxsbazar', 'Royal Tulip Sea Pearl Beach Resort', 'image/royal_tulip.jpg', '21.215636', '92.04889', 8090, 'Jaliapalong, Inani, Ukhia, Coxs Bazar 4750', '01844-016001'),
(265, 'Coxsbazar', 'Long beach hotel', 'image/long_beach.jpg', '', '', 4600, '14, Kalatoli, Hotel-Motel Zone, 4700', '01755-660051'),
(3, 'Coxsbazar', 'Hotel The Cox Today', 'image/hotel_cox.jpg', '21.426151', '91.976151', 6300, 'Plot - 07, Road - 02, Hotel Motel Zone, Kolatoly Road, 4700', '034-152410'),
(4, 'Coxsbazar', 'Hotel Prime Park', 'image/prime_park.jpg', '21.421081', '91.982859', 3800, ' Plot 58, Block C Hotel Motel Zone, Cox\'s Bazar 4700', '01775-609915'),
(5, 'Coxsbazar', 'Hotel Sea Crown', 'image/sea_crown.jpg', '21.414942', '91.983455', 2500, 'New Beach, Marine Drive, Cox\'s Bazar 4700', '01550-68951'),
(6, 'Coxsbazar', 'The sea princess hotel ', 'image/sea_princes.jpg', '21.420823', '91.979266', 3800, 'Sughandha Beach Road (ROAD NO.1 Hotel Motel zone, Cox\'sBazar 4700', '01613-822522'),
(7, 'Coxsbazar', 'Sayeman Beach Resort', 'image/Sayeman.jpg', '21.414254', '91.984198', 10500, 'Marine Drive Road, Kolatali, Cox\'s Bazar 4700', '09610-777888'),
(8, 'Coxsbazar', 'Hotel Mishuk', 'image/mishuk.jpg', '21.428764', '91.974131', 1300, 'Main Laboni Point Road Laboni Point, Cox\'s Bazar 4700', '01715-946471'),
(9, 'Coxsbazar', 'Praasad Paradise', 'image/praasad-paradise.jpg', '21.423537', '91.976608', 3300, 'Hotel- Motel Zone, Plot 9 New Beach Rd, Cox\'s Bazar 4700', '01556-347711'),
(10, 'Coxsbazar', 'Iqra Beach Hotel', 'image/iqra_beach.jpg', '21.425752', '91.978604', 2000, 'Main Road, Cox\'s Bazar 4700', '01917-949387'),
(11, 'Bandarban', 'Hotel Night Heaven', 'image/heaven.jpg', '22.177272', '92.187927', 2100, 'Meghla Porjoton area, Bandarban 4600, Bangladesh', '01988-330000'),
(12, 'Bandarban', 'Hotel Plaza', 'image/plaza.jpg', '22.194554', '92.218215', 1600, 'Bandarban sadar, bandarban', '01678-060107'),
(13, 'Bandarban', 'Hotel Hilton Residance', 'image/hillton.jpg', '22.190638', '92.215005', 1300, 'Officers Club, Islampur Rd, Bandarban 4600', '01966-110000'),
(14, 'Bandarban', 'Hotel Hill Queen', 'image/queen.jpg', '22.193569', '92.21591', 4100, 'Sadar Rd, Bandarban', '01912-782393'),
(15, 'Bandarban', 'Hotel Hill View', 'image/hillview.jpg', '22.189666', '92.214693', 1500, 'N108, Bandarban 4600', '01828-866000'),
(16, 'Bandarban', 'Fanush Resort', 'image/fanush.jpg', '22.175952', '92.202977', 3500, 'Nilachal Rd', '01845-779999'),
(17, 'Bandarban', 'Bono Nibas Hill Resort', 'image/BonoNibasHillResort.jpg', '22.057736', '92.272744', 4000, 'Chimbuk Road, Bandarban', '01845-937463'),
(18, 'Bandarban', 'Sairu Hill Resort', 'image/HotelSairu.jpg', '22.095187', '92.249818', 11000, 'Baro mile, Chimbuk Road, Bandarban - Thanchi Road, Y Junction, Shualock', '01531-411111'),
(19, 'Sajek Valley', 'Fodang Thang Resort', 'image/fodangthang.jpg', '23.382546', '92.294421', 1500, 'Sajek', '01820-180750'),
(20, 'Sajek Valley', 'Megh Machang Sajek', 'image/meghmachang.jpg', '23.381537', '92.294692', 3500, 'Sajek', '01822-168877'),
(21, 'Sajek Valley', 'Meghpunji', 'image/meghpunji.jpg', '23.385795', '92.292472', 2500, 'Sajek', '01815-761065'),
(22, 'Sajek Valley', 'Sajek Hill ViewResort', 'image/sajekhillview.jpg', '23.38674', '92.290803', 3000, 'Sajek', '01823-1874218'),
(23, 'Sajek Valley', 'Sajek Resort', 'image/sajekresort.jpg', '23.382906', '92.293572', 4000, 'Sajek', '01822-168877'),
(24, 'Nandan Park', 'Resort Atlantis', 'image/atlantis.jpg', '23.933312', '90.292976', 4500, 'Fantasy Kingdom Complex, Jamgora, Ashulia, Savar, Bailpail, Dhaka 1344', '01937-402959'),
(26, 'Nandan Park', 'Best Western Plus Maple Leaf', 'image/samplehotel.jpg', '23.855193', '90.404152', 11800, 'Plot 1B, Rd No 1, Dhaka 1230', '01966-667675'),
(27, 'Nandan Park', 'Platinum Grand Hotel', 'image/samplehotel1.jpg', '23.790798', '90.40344', 8500, '52 Rd No. 11, Dhaka 1213', '02-9870913'),
(28, 'Nandan Park', 'Green View Resort & Convention Center Ltd', 'image/samplehotel2.jpg', '23.880978', '90.445953', 6500, 'Moinartek, Uttarkhan, Dhaka 1230', '01762-682703'),
(29, 'Fantasy Kingdom', 'Resort Atlantis', 'image/atlantis.jpg', '23.933312', '90.292976', 4500, 'Fantasy Kingdom Complex, Jamgora, Ashulia, Savar, Bailpail, Dhaka 1344', '01937-402959'),
(30, 'Fantasy Kingdom', 'Hotel Air Inn', 'image/air.jpg', '23.859837', '90.398678', 3000, 'Sector-1, Uttara, Dhaka', '01975-559255'),
(31, 'Fantasy Kingdom', 'Best Western Plus Maple Leaf', 'image/samplehotel1.jpg', '23.855193', '90.404152', 11800, 'Plot 1B, Rd No 1, Dhaka 1230', '01966-667675'),
(32, 'Fantasy Kingdom', 'Platinum Grand Hotel', 'image/samplehotel2.jpg', '23.790798', '90.40344', 8500, '52 Rd No. 11, Dhaka 1213', '02-9870913'),
(33, 'Fantasy Kingdom', 'Green View Resort & Convention Center Ltd', 'image/samplehotel.jpg', '23.880978', '90.445953', 6500, 'Moinartek, Uttarkhan, Dhaka 1230', '01762-682703'),
(34, 'Jatiyo Sriti Shoudho', 'Resort Atlantis', 'image/atlantis.jpg', '23.933312', '90.292976', 4500, 'Fantasy Kingdom Complex, Jamgora, Ashulia, Savar, Bailpail, Dhaka 1344', '01937-402959'),
(35, 'Jatiyo Sriti Shoudho', 'Hotel Air Inn', 'image/air.jpg', '23.859837', '90.398678', 3000, 'Sector-1, Uttara, Dhaka', '01975-559255'),
(36, 'Jatiyo Sriti Shoudho', 'Best Western Plus Maple Leaf', 'image/samplehotel.jpg', '23.855193', '90.404152', 11800, 'Plot 1B, Rd No 1, Dhaka 1230', '01966-667675'),
(37, 'Jatiyo Sriti Shoudho', 'Platinum Grand Hotel', 'image/samplehotel1.jpg', '23.790798', '90.40344', 8500, '52 Rd No. 11, Dhaka 1213', '02-9870913'),
(38, 'Jatiyo Sriti Shoudho', 'Green View Resort & Convention Center Ltd', 'image/samplehotel2.jpg', '23.880978', '90.445953', 6500, 'Moinartek, Uttarkhan, Dhaka 1230', '01762-682703'),
(39, 'Bangladesh National Museum', 'Pan Pacific Sonargaon Dhaka Hotel', 'image/PanPacificSonargaonDhakaHotel.jpg', '23.749612', '90.394764', 16500, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '02-9128008'),
(40, 'Bangladesh National Museum', 'Best Western La Vinci Hotel', 'image/BestWesternLaVinciHotel.jpg', '23.754062', '90.392243', 8000, '54, Kawran Bazar Road No 1, Dhaka 1215', '02-9119352'),
(41, 'Bangladesh National Museum', 'Hotel Ornate', 'image/HotelOrnate.jpg', '23.735346', '90.410914', 3000, '30 Bijoy Nagar Road, Dhaka 1000', '01811-408402'),
(42, 'Bangladesh National Museum', 'Hotel Shuktara Pvt. Ltd.', 'image/HotelShuktaraPvt.Ltd..jpg', '23.758141', '90.38787', 3500, 'Holding 20/A, Indira Rd, Dhaka 1215', '01998-888777'),
(43, 'Bangladesh National Museum', 'FARS Hotel & Resorts', 'image/FARSHotel&Resorts.jpg', '23.731763', '90.409856', 6500, 'Akram Center, 212 Shahid Syed Nazrul Islam Sharani, Dhaka 1000', '01798-418363'),
(44, 'Ramna Park', 'Pan Pacific Sonargaon Dhaka Hotel', 'image/PanPacificSonargaonDhakaHotel.jpg', '23.749612', '90.394764', 16500, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '02-9128008'),
(45, 'Ramna Park', 'White House Hotel', 'image/WhiteHouseHotel.jpg', '23.738905', '90.416465', 3500, '155 Shanti Nagar Rd, Dhaka 1217', '01777-744320'),
(46, 'Ramna Park', 'Grand Prince Dhaka', 'image/GrandPrinceDhaka.jpg', '23.798577', '90.353933', 6000, 'Paradise Plaza, Com. Plot # 6 and 11, Dhaka 1216', '01718-962156'),
(47, 'Ramna Park', 'Hotel 71', 'image/Hotel71.jpg', '23.735083', '90.410624', 4500, '176, Shaheed Syed Nazrul Islam Sarani Old, 47 Bijoy Nagar Road, Dhaka 1000', '01750-076933'),
(48, 'Ramna Park', 'Best Western La Vinci Hotel', 'image/BestWesternLaVinciHotel.jpg', '23.754062', '90.392243', 8000, '54, Kawran Bazar Road No 1, Dhaka 1215', '02-9119352'),
(49, 'Bangabandhu Novo Theatre', 'Pan Pacific Sonargaon Dhaka Hotel', 'image/PanPacificSonargaonDhakaHotel.jpg', '23.749612', '90.394764', 16500, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '02-9128008'),
(50, 'Bangabandhu Novo Theatre', 'Hotel 71', 'image/Hotel71.jpg', '23.735083', '90.410624', 4500, '176, Shaheed Syed Nazrul Islam Sarani Old, 47 Bijoy Nagar Road, Dhaka 1000', '01750-076933'),
(51, 'Bangabandhu Novo Theatre', 'Best Western La Vinci Hotel', 'image/BestWesternLaVinciHotel.jpg', '23.754062', '90.392243', 8000, '54, Kawran Bazar Road No 1, Dhaka 1215', '02-9119352'),
(52, 'Bangabandhu Novo Theatre', 'Hotel Shuktara Pvt. Ltd.', 'image/HotelShuktaraPvt.Ltd..jpg', '23.758141', '90.38787', 3500, 'Holding 20/A, Indira Rd, Dhaka 1215', '01998-888777'),
(53, 'Bangabandhu Novo Theatre', 'Grand Prince Dhaka', 'image/GrandPrinceDhaka.jpg', '23.798577', '90.353933', 6000, 'Paradise Plaza, Com. Plot # 6 and 11, Dhaka 1216', '01718-962156'),
(54, 'Jatiya Sangsad Bhaban', 'Pan Pacific Sonargaon Dhaka Hotel', 'image/PanPacificSonargaonDhakaHotel.jpg', '23.749612', '90.394764', 16500, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '02-9128008'),
(55, 'Jatiya Sangsad Bhaban', 'FARS Hotel & Resorts', 'image/FARSHotel&Resorts.jpg', '23.731763', '90.409856', 6500, 'Akram Center, 212 Shahid Syed Nazrul Islam Sharani, Dhaka 1000', '01798-418363'),
(56, 'Jatiya Sangsad Bhaban', 'Hotel 71', 'image/Hotel71.jpg', '23.735083', '90.410624', 4500, '176, Shaheed Syed Nazrul Islam Sarani Old, 47 Bijoy Nagar Road, Dhaka 1000', '01750-076933'),
(57, 'Jatiya Sangsad Bhaban', 'Hotel Ornate', 'image/HotelOrnate.jpg', '23.735346', '90.410914', 3000, '30 Bijoy Nagar Road, Dhaka 1000', '01811-408402'),
(58, 'Jatiya Sangsad Bhaban', 'Bengal Inn', 'image/BengalInn.jpg', '23.781717', '90.414687', 7500, 'House # 07 Rd 16, Dhaka 1212', '02-9880236'),
(59, 'National Zoo', 'Pan Pacific Sonargaon Dhaka Hotel', 'image/pan.jpg', '23.749612', '90.394764', 16500, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '02-9128008'),
(60, 'National Zoo', 'Grand Prince Dhaka', 'image/prince.jpg', '23.798577', '90.353933', 6000, 'Paradise Plaza, Com. Plot # 6 and 11, Dhaka 1216', '01718-962156'),
(61, 'National Zoo', 'Hotel Tropical Daisy', 'image/daisy.jpg', '23.789069', '90.413369', 4000, 'House 31-B, Road 35-A, Dhaka 1212', '01675-434731'),
(62, 'National Zoo', 'Nordic Hotels Ltd.', 'image/samplehotel.jpg', '23.793054', '90.404193', 8000, 'House No 59, Block-C, Rd No 17, Dhaka 1213', '01713-435358'),
(63, 'National Zoo', 'Nagar Valley Hotel', 'image/samplehotel1.jpg', '23.858695', '90.404998', 3500, '27 Shayesta Khan Ave, Dhaka 1230', '01710-912276'),
(64, 'National Botanical Garden of Bangladesh', 'Pan Pacific Sonargaon Dhaka Hotel', 'image/PanPacificSonargaonDhakaHotel.jpg', '23.749612', '90.394764', 16500, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '02-9128008'),
(65, 'National Botanical Garden of Bangladesh', 'Grand Prince Dhaka', 'image/GrandPrinceDhaka.jpg', '23.798577', '90.353933', 6000, 'Paradise Plaza, Com. Plot # 6 and 11, Dhaka 1216', '01718-962156'),
(66, 'National Botanical Garden of Bangladesh', 'Hotel Tropical Daisy', 'image/HotelTropicalDaisy.jpg', '23.789069', '90.413369', 4000, 'House 31-B, Road 35-A, Dhaka 1212', '01675-434731'),
(67, 'National Botanical Garden of Bangladesh', 'Nagar Valley Hotel', 'image/NagarValleyHotel.jpg', '23.858695', '90.404998', 3500, '27 Shayesta Khan Ave, Dhaka 1230', '01710-912276'),
(68, 'National Botanical Garden of Bangladesh', 'Nordic Hotels Ltd.', 'image/NordicHotelsLtd..jpg', '23.793054', '90.404193', 8000, 'House No 59, Block-C, Rd No 17, Dhaka 1213', '01713-435358'),
(69, 'Shaheed Minar', 'Pan Pacific Sonargaon Dhaka Hotel', 'image/PanPacificSonargaonDhakaHotel.jpg', '23.749612', '90.394764', 16500, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '02-9128008'),
(70, 'Shaheed Minar', 'FARS Hotel & Resorts', 'image/FARSHotel&Resorts.jpg', '23.731763', '90.409856', 6600, 'Akram Center, 212 Shahid Syed Nazrul Islam Sharani, Dhaka 1000', '01798-418363'),
(71, 'Shaheed Minar', 'Hotel 71', 'image/Hotel71.jpg', '23.735083', '90.410624', 4500, '176, Shaheed Syed Nazrul Islam Sarani Old, 47 Bijoy Nagar Road, Dhaka 1000', '01750-076933'),
(72, 'Shaheed Minar', 'Hotel Ornate', 'image/HotelOrnate.jpg', '23.735346', '90.410914', 3000, '30 Bijoy Nagar Road, Dhaka 1000', '01811-408402'),
(73, 'Shaheed Minar', 'Best Western La Vinci Hotel', 'image/BestWesternLaVinciHotel.jpg', '23.754062', '90.392243', 8000, '54, Kawran Bazar Road No 1, Dhaka 1215', '02-9119352'),
(74, 'Hatirjheel', 'Pan Pacific Sonargaon Dhaka Hotel', 'image/PanPacificSonargaonDhakaHotel.jpg', '23.749612', '90.394764', 16500, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '02-9128008'),
(75, 'Hatirjheel', 'Hotel Tropical Daisy', 'image/HotelTropicalDaisy.jpg', '23.789069', '90.413369', 4000, 'House 31-B, Road 35-A, Dhaka 1212', '01675-434731'),
(76, 'Hatirjheel', 'Grand Prince Dhaka', 'image/GrandPrinceDhaka.jpg', '23.798577', '90.353933', 6000, 'Paradise Plaza, Com. Plot # 6 and 11, Dhaka 1216', '01718-962156'),
(77, 'Hatirjheel', 'Nordic Hotels Ltd.', 'image/NordicHotelsLtd..jpg', '23.793054', '90.404193', 8000, 'House No 59, Block-C, Rd No 17, Dhaka 1213', '01713-435358'),
(78, 'Hatirjheel', 'Hotel Eastern Residence', 'image/HotelEasternResidence.jpg', '23.79718', '90.407177', 4200, 'House # 14, Road # 27, Block # J, Dhaka 1213', '02-9890337'),
(79, 'Dhanmondi Lake', 'Pan Pacific Sonargaon Dhaka Hotel', 'image/PanPacificSonargaonDhakaHotel.jpg', '23.749612', '90.394764', 16500, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '02-9128008'),
(80, 'Dhanmondi Lake', 'Best Western la Vinci Hotel', 'image/BestWesternlaVinciHotel.jpg', '23.754062', '90.392243', 8000, '54, Kawran Bazar Road No 1, Dhaka 1215', '02-9119352'),
(81, 'Dhanmondi Lake', 'FARS Hotel & Resorts', 'image/FARSHotel&Resorts.jpg', '23.731763', '90.409856', 6500, 'Akram Center, 212 Shahid Syed Nazrul Islam Sharani, Dhaka 1000', '01798-418363'),
(82, 'Dhanmondi Lake', 'Hotel Ornate', 'image/HotelOrnate.jpg', '23.735346', '90.410914', 3000, '30 Bijoy Nagar Road, Dhaka 1000', '01811-408402'),
(83, 'Dhanmondi Lake', 'White House Hotel', 'image/WhiteHouseHotel.jpg', '23.738905', '90.416465', 3500, '155 Shanti Nagar Rd, Dhaka 1217', '01777-744320'),
(84, 'Curzon Hall', 'Pan Pacific Sonargaon Dhaka Hotel', 'image/PanPacificSonargaonDhakaHotel.jpg', '23.749612', '90.394764', 16500, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '02-9128008'),
(85, 'Curzon Hall', 'FARS Hotel & Resorts', 'image/FARSHotel&Resorts.jpg', '23.731763', '90.409856', 6500, 'Akram Center, 212 Shahid Syed Nazrul Islam Sharani, Dhaka 1000', '01798-418363'),
(86, 'Curzon Hall', 'Hotel 71', 'image/Hotel71.jpg', '23.735083', '90.410624', 4500, '176, Shaheed Syed Nazrul Islam Sarani Old, 47 Bijoy Nagar Road, Dhaka 1000', '01750-076933'),
(87, 'Curzon Hall', 'Hotel Ornate', 'image/HotelOrnate.jpg', '23.735346', '90.410914', 3000, '30 Bijoy Nagar Road, Dhaka 1000', '01811-408402'),
(88, 'Curzon Hall', 'Best Western La Vinci Hotel', 'image/BestWesternLaVinciHotel.jpg', '23.754062', '90.392243', 8000, '54, Kawran Bazar Road No 1, Dhaka 1215', '02-9119352'),
(89, 'Rose Garden', 'Pan Pacific Sonargaon Dhaka Hotel', 'image/PanPacificSonargaonDhakaHotel.jpg', '23.749612', '90.394764', 16500, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '02-9128008'),
(90, 'Rose Garden', 'Best Western La Vinci Hotel', 'image/BestWesternLaVinciHotel.jpg', '23.754062', '90.392243', 8000, '54, Kawran Bazar Road No 1, Dhaka 1215', '02-9119352'),
(91, 'Rose Garden', 'FARS Hotel & Resorts', 'image/FARSHotel&Resorts.jpg', '23.731763', '90.409856', 6500, 'Akram Center, 212 Shahid Syed Nazrul Islam Sharani, Dhaka 1000', '01798-418363'),
(92, 'Rose Garden', 'Hotel 71', 'image/Hotel71.jpg', '23.735083', '90.410624', 4500, '176, Shaheed Syed Nazrul Islam Sarani Old, 47 Bijoy Nagar Road, Dhaka 1000', '01750-076933'),
(93, 'Rose Garden', 'Hotel Ornate', 'image/HotelOrnate.jpg', '23.735346', '90.410914', 3000, '30 Bijoy Nagar Road, Dhaka 1000', '01811-408402'),
(94, 'Sat Gambuj Mosque', 'Pan Pacific Sonargaon Dhaka Hotel', 'image/PanPacificSonargaonDhakaHotel.jpg', '23.749612', '90.394764', 16500, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '02-9128008'),
(95, 'Sat Gambuj Mosque', 'Grand Prince Dhaka', 'image/GrandPrinceDhaka.jpg', '23.798577', '90.353933', 6000, 'Paradise Plaza, Com. Plot # 6 and 11, Dhaka 1216', '01718-962156'),
(96, 'Sat Gambuj Mosque', 'Hotel Shuktara Pvt. Ltd.', 'image/HotelShuktaraPvt.Ltd..jpg', '23.758141', '90.38787', 3500, 'Holding 20/A, Indira Rd, Dhaka 1215', '01998-888777'),
(97, 'Sat Gambuj Mosque', 'Hotel Tropical Daisy', 'image/HotelTropicalDaisy.jpg', '23.789069', '90.413369', 4000, 'House 31-B, Road 35-A, Dhaka 1212', '01675-434731'),
(98, 'Sat Gambuj Mosque', 'Best Western La Vinci Hotel', 'image/BestWesternLaVinciHotel.jpg', '23.754062', '90.392243', 8000, '54, Kawran Bazar Road No 1, Dhaka 1215', '02-9119352'),
(99, 'Lalbagh Fort', 'Pan Pacific Sonargaon Dhaka Hotel', 'image/PanPacificSonargaonDhakaHotel.jpg', '23.749612', '90.394764', 16500, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '02-9128008'),
(100, 'Lalbagh Fort', 'Grand Prince Dhaka', 'image/GrandPrinceDhaka.jpg', '23.798577', '90.353933', 6000, 'Paradise Plaza, Com. Plot # 6 and 11, Dhaka 1216', '01718-962156'),
(101, 'Lalbagh Fort', 'FARS Hotel & Resorts', 'image/FARSHotel&Resorts.jpg', '23.731763', '90.409856', 6500, 'Akram Center, 212 Shahid Syed Nazrul Islam Sharani, Dhaka 1000', '01798-418363'),
(102, 'Lalbagh Fort', 'Hotel 71', 'image/Hotel71.jpg', '23.735083', '90.410624', 4500, '176, Shaheed Syed Nazrul Islam Sarani Old, 47 Bijoy Nagar Road, Dhaka 1000', '01750-076933'),
(103, 'Lalbagh Fort', 'Hotel Ornate', 'image/HotelOrnate.jpg', '23.735346', '90.410914', 3000, '30 Bijoy Nagar Road, Dhaka 1000', '01811-408402'),
(104, 'Nuhash Polli', 'Resort Atlantis', 'image/ResortAtlantis.jpg', '23.933312', '90.292976', 4500, 'Fantasy Kingdom Complex, Jamgora, Ashulia, Savar, Bailpail, Dhaka 1344', '01937-402959'),
(105, 'Nuhash Polli', 'BRAC CDM (Rajendrapur)', 'image/BRACCDM(Rajendrapur).jpg', '24.096439', '90.390497', 8000, 'Gazipur,Bangladesh', '01787-680928'),
(106, 'Nuhash Polli', 'Nandan Village', 'image/NandanVillage.jpg', '24.030384', '90.241025', 5000, 'Baroipara, Nabinagar - Chandra Highway, Ashulia, Savar Dhaka, Savar 1702', '01955-330000'),
(107, 'Nuhash Polli', 'Sabrina Dream Resort', 'image/SabrinaDreamResort.jpg', '23.936278', '90.434593', 7000, 'Pubail - Gazipur Road, Dhaka City Bypass, Meghdubi, Gazipur 1721', '01765-827043'),
(108, 'Rangamati', 'Hotel Green Castle', 'image/HotelGreenCastle.jpg', '22.650577', '92.195418', 1250, 'Reserve Bazar,Rangamati', '01705-373730'),
(109, 'Rangamati', 'Hotel Prince', 'image/HotelPrince.jpg', '22.645817', '92.192604', 1600, 'Reserve Bazar,Rangamati', '01705-373731'),
(110, 'Rangamati', 'Hotel Shanghai International', 'image/Shanghai.jpg', '22.649615', '92.183825', 1500, 'Reserve Bazar,Rangamati', '01705-373732'),
(111, 'Rangamati', 'Moti Mahal', 'image/motimohol.jpg', '22.651204', '92.196344', 1350, 'Reserve Bazar,Rangamati', '01705-373733'),
(112, 'Rangamati', 'Hotel Nadisa international', 'image/HotelNadisainternational.jpg', '22.650498', '92.195932', 1000, 'Reserve Bazar,Rangamati', '01705-373734'),
(113, 'Khagrachhari', 'Hotel Ecochari Inn', 'image/HotelEcochariInn.jpg', '23.122938', '91.991505', 1500, 'Khagrachhari,Chittagong-4400', '01828-874014'),
(114, 'Khagrachhari', 'Hotel Gairing', 'image/HotelGairing.jpg', '23.107719', '91.987197', 1500, 'Khagrachhari,Chittagong-4400', '01828-874015'),
(115, 'Khagrachhari', 'Hotel Noor (Residential)', 'image/HotelNoor(Residential).jpg', '23.107782', '91.984338', 1500, 'Khagrachhari,Chittagong-4400', '01828-874016'),
(116, 'Khagrachhari', 'Hotel Aronnyo Bilas', 'image/HotelAronnyoBilas.jpg', '23.110302', '91.981383', 1500, 'Khagrachhari,Chittagong-4400', '01828-874017'),
(117, 'Khagrachhari', 'Hotel Mount Inn', 'image/HotelMountInn.jpg', '23.110195', '91.981003', 1500, 'Khagrachhari,Chittagong-4400', '01828-874018'),
(118, 'Kaptai', 'Hotel Lord\'s Inn', 'image/lords.jpg', '22.3627', '91.820779', 4800, 'Hosna Kalam Complex, CDA Ave, Chittagong 4000', '031-2552671'),
(119, 'Kaptai', 'Hotel Diamond Park', 'image/diamond.jpg', '22.367354', '91.84287', 1300, 'Khwaja Super Market, Bahaddarhat More, Chittagong 4000', '01988-330000'),
(120, 'Kaptai', 'Hotel Star Park', 'image/star park.jpg', '22.358977', '91.839876', 1200, '14, Sha Alam Tower, Kapasgola Road, Telpotti More, Chawkbazar', '01830-221175'),
(121, 'Kaptai', 'Meridian Hotel & Restaurant', 'image/meridian.jpg', '22.359892', '91.82199', 7500, '1367 CDA Ave, Chittagong 4000', '031-652050'),
(122, 'Kaptai', 'Ambassador Residency', 'image/ambasador.jpg', '22.359593', '91.822684', 3500, 'House No 23, Road No 2, O.R. Nizam Road, Chittagong 4100', '01825-923989'),
(123, 'Shaheed Zia Smriti Complex', 'Hotel Lord\'s Inn', 'image/lords.jpg', '22.3627', '91.820779', 4800, 'Hosna Kalam Complex, CDA Ave, Chittagong 4000', '031-2552671'),
(124, 'Shaheed Zia Smriti Complex', 'Hotel Diamond Park', 'image/diamond.jpg', '22.367354', '91.84287', 1300, 'Khwaja Super Market, Bahaddarhat More, Chittagong 4000', '01988-330000'),
(125, 'Shaheed Zia Smriti Complex', 'Hotel Star Park', 'image/star park.jpg', '22.358977', '91.839876', 1200, '14, Sha Alam Tower, Kapasgola Road, Telpotti More, Chawkbazar', '01830-221175'),
(126, 'Shaheed Zia Smriti Complex', 'Meridian Hotel & Restaurant', 'image/meridian.jpg', '22.359892', '91.82199', 7500, '1367 CDA Ave, Chittagong 4000', '031-652050'),
(127, 'Shaheed Zia Smriti Complex', 'Ambassador Residency', 'image/ambasador.jpg', '22.359593', '91.822684', 3500, 'House No 23, Road No 2, O.R. Nizam Road, Chittagong 4100', '01825-923989'),
(128, 'Foy\'s Lake', 'Hotel Lord\'s Inn', 'image/lords.jpg', '22.3627', '91.820779', 3500, 'Hosna Kalam Complex, CDA Ave, Chittagong 4000', '031-2552671'),
(129, 'Foy\'s Lake', 'Meridian Hotel & Restaurant', 'image/meridian.jpg', '22.359892', '91.82199', 4800, '1367 CDA Ave, Chittagong 4000', '031-652050'),
(130, 'Foy\'s Lake', 'Ambassador Residency', 'image/ambasador.jpg', '22.359593', '91.822684', 3500, 'House No 23, Road No 2, O.R. Nizam Road, Chittagong 4100', '01825-923989'),
(131, 'Foy\'s Lake', 'Foys Lake Resort', 'image/FoysLakeResort.jpg', '22.375854', '91.788267', 6000, 'Zakir Hossain Rd, Chittagong 4201', '01988-330000'),
(132, 'Avoymitra Ghat', 'Golden Inn Chattogram Ltd', 'image/GoldenInnChattogramLtd.jpg', '22.33629', '91.825182', 2500, '336, Station Road, Chittagong 4100', '01825-923989'),
(133, 'Avoymitra Ghat', 'Hotel Saikat', 'image/HotelSaikat.jpg', '22.335141', '91.829235', 3300, 'Station Road, Chittagong 4000', '01991-139143'),
(134, 'Avoymitra Ghat', 'Hotel Favour Inn International', 'image/HotelFavourInnInternational.jpg', '22.335827', '91.827472', 3500, '659/A, Station Road, Chittagong 4300', '01811-446506'),
(135, 'Chittagong War Cemetery', 'Hotel Lord\'s Inn', 'image/lords.jpg', '22.3627', '91.820779', 3500, 'Hosna Kalam Complex, CDA Ave, Chittagong 4000', '031-2552671'),
(136, 'Chittagong War Cemetery', 'Meridian Hotel & Restaurant', 'image/meridian.jpg', '22.359892', '91.82199', 4800, '1367 CDA Ave, Chittagong 4000', '031-652050'),
(137, 'Chittagong War Cemetery', 'Golden Inn Chattogram Ltd', 'image/GoldenInnChattogramLtd.jpg', '22.33629', '91.825182', 2500, '336, Station Road, Chittagong 4100', '01825-923989'),
(138, 'Chittagong War Cemetery', 'Ambassador Residency', 'image/ambasador.jpg', '22.359593', '91.822684', 3500, 'House No 23, Road No 2, O.R. Nizam Road, Chittagong 4100', '01825-923989'),
(139, 'Chittagong War Cemetery', 'The Peninsula Chittagong', 'image/ThePeninsulaChittagong.jpg', '22.357767', '91.821926', 7000, '486/B, CDA Avenue, O.R. Nizam Road, Bulbul Center, Chittagong 4100', '01755-554555'),
(140, 'Patenga Sea Beach', 'Radisson Blu Chittagong Bay View', 'image/RadissonBluChittagongBayView.jpg', '22.348292', '91.822932', 11500, 'S. S. Khaled Road, Chittagong 4000', '031-619800'),
(141, 'Patenga Sea Beach', 'Hotel Agrabad', 'image/HotelAgrabad.jpg', '22.326938', '91.816244', 8000, 'Sabder Ali Road, Agrabad C/A, Chittagong 4000', '031-713311'),
(142, 'Patenga Sea Beach', 'Chittagong Boat Club', 'image/ChittagongBoatClub.jpg', '22.264812', '91.828679', 8500, 'Ghat No-11, East Patenga, Holding no.2502334, Chittagong 4204', '01844-135500'),
(143, 'Patenga Sea Beach', 'Golden Inn Chattogram Ltd', 'image/GoldenInnChattogramLtd.jpg', '22.33629', '91.825182', 2500, '336, Station Road, Chittagong 4100', '01825-923989'),
(144, 'Patenga Sea Beach', 'Hotel Saint Martin Limited', 'image/HotelSaintMartinLimited.jpg', '22.326546', '91.812612', 4000, '25-33, Sheikh Mujib Road, Chittagong 4100', '031-712109'),
(145, 'Neval Beach', 'Radisson Blu Chittagong Bay View', 'image/RadissonBluChittagongBayView.jpg', '22.348292', '91.822932', 11500, 'S. S. Khaled Road, Chittagong 4000', '031-619800'),
(146, 'Neval Beach', 'Hotel Agrabad', 'image/HotelAgrabad.jpg', '22.326938', '91.816244', 8000, 'Sabder Ali Road, Agrabad C/A, Chittagong 4000', '031-713311'),
(147, 'Neval Beach', 'Chittagong Boat Club', 'image/ChittagongBoatClub.jpg', '22.264812', '91.828679', 8500, 'Ghat No-11, East Patenga, Holding no.2502334, Chittagong 4204', '01844-135500'),
(148, 'Neval Beach', 'Golden Inn Chattogram Ltd', 'image/GoldenInnChattogramLtd.jpg', '22.33629', '91.825182', 2500, '336, Station Road, Chittagong 4100', '01825-923989'),
(149, 'Neval Beach', 'Hotel Saint Martin Limited', 'image/HotelSaintMartinLimited.jpg', '22.326546', '91.812612', 4000, '25-33, Sheikh Mujib Road, Chittagong 4100', '031-712109'),
(150, 'Vatiyari', 'Well Park Residence', 'image/WellParkResidence.jpg', '22.25968', '91.823175', 5500, 'Road # 01, Plot # 02, O.R. Nizam Road, Chittagong 4200', '031-657035'),
(151, 'Vatiyari', 'Hotel Lord\'s Inn', 'image/HotelLordsInn.jpg', '22.3627', '91.820779', 3500, 'Hosna Kalam Complex, CDA Ave, Chittagong 4000', '031-2552671'),
(152, 'Vatiyari', 'Meridian Hotel & Restaurant', 'image/MeridianHotel&Restaurant.jpg', '22.359892', '91.82199', 4800, '1367 CDA Ave, Chittagong 4000', '031-652050'),
(153, 'Vatiyari', 'Asian SR Hotel', 'image/AsianSRHotel.jpg', '22.335676', '91.828899', 2000, '291 Station Road, Chittagong 4000', '01711-889555'),
(154, 'Vatiyari', 'The Peninsula Chittagong', 'image/ThePeninsulaChittagong.jpg', '22.357767', '91.821926', 7000, '486/B, CDA Avenue, O.R. Nizam Road, Bulbul Center, Chittagong 4100', '01755-554555'),
(155, 'Lalakhal', 'Britannia Hotel', 'image/BritanniaHotel.jpg', '24.904456', '91.869493', 2300, 'B-95 Shah Jalal Road, Sylhet 3100', '01762-225807'),
(156, 'Lalakhal', 'Hotel Holy Gate', 'image/HotelHolyGate.jpg', '24.902077', '91.869345', 3000, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(157, 'Lalakhal', 'Hotel Star Pacific', 'image/HotelStarPacific.jpg', '24.901859', '91.868732', 8000, '982, East Dargah Gate, Sylhet', '01821-727945'),
(158, 'Lalakhal', 'Hotel Noorjahan Grand', 'image/HotelNoorjahanGrand.jpg', '24.901974', '91.869776', 4500, 'Waves 1, Dargah Gate, Sylhet 3100', '01930-111666'),
(159, 'Lalakhal', 'Bottomhill Palace Hotel', 'image/BottomhillPalaceHotel.jpg', '24.901683', '91.870301', 1500, 'Waves 1/E, Dargah Gate, Sylhet 3100', '01700-763512'),
(160, 'Hazrat Shahjalal Mazar Sharif', 'Britannia Hotel', 'image/BritanniaHotel.jpg', '24.904456', '91.869493', 2300, 'B-95 Shah Jalal Road, Sylhet 3100', '01762-225807'),
(161, 'Hazrat Shahjalal Mazar Sharif', 'Hotel Holy Gate', 'image/HotelHolyGate.jpg', '24.902077', '91.869345', 3000, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(162, 'Hazrat Shahjalal Mazar Sharif', 'Hotel Star Pacific', 'image/HotelStarPacific.jpg', '24.901859', '91.868732', 8000, '982, East Dargah Gate, Sylhet', '01821-727945'),
(163, 'Hazrat Shahjalal Mazar Sharif', 'Hotel Noorjahan Grand', 'image/HotelNoorjahanGrand.jpg', '24.901974', '91.869776', 4500, 'Waves 1, Dargah Gate, Sylhet 3100', '01930-111666'),
(164, 'Hazrat Shahjalal Mazar Sharif', 'Bottomhill Palace Hotel', 'image/BottomhillPalaceHotel.jpg', '24.901683', '91.870301', 1500, 'Waves 1/E, Dargah Gate, Sylhet 3100', '01700-763512'),
(165, 'Pangthumai Waterfall', 'Britannia Hotel', 'image/BritanniaHotel.jpg', '24.904456', '91.869493', 2300, 'B-95 Shah Jalal Road, Sylhet 3100', '01762-225807'),
(166, 'Pangthumai Waterfall', 'Hotel Holy Gate', 'image/HotelHolyGate.jpg', '24.902077', '91.869345', 3000, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(167, 'Pangthumai Waterfall', 'Hotel Star Pacific', 'image/HotelStarPacific.jpg', '24.901859', '91.868732', 8000, '982, East Dargah Gate, Sylhet', '01821-727945'),
(168, 'Pangthumai Waterfall', 'Hotel Noorjahan Grand', 'image/HotelNoorjahanGrand.jpg', '24.901974', '91.869776', 4500, 'Waves 1, Dargah Gate, Sylhet 3100', '01930-111666'),
(169, 'Pangthumai Waterfall', 'Bottomhill Palace Hotel', 'image/BottomhillPalaceHotel.jpg', '24.901683', '91.870301', 1500, 'Waves 1/E, Dargah Gate, Sylhet 3100', '01700-763512'),
(170, 'Khadimanagar National Park', 'Britannia Hotel', 'image/BritanniaHotel.jpg', '24.904456', '91.869493', 2300, 'B-95 Shah Jalal Road, Sylhet 3100', '01762-225807'),
(171, 'Khadimanagar National Park', 'Hotel Holy Gate', 'image/HotelHolyGate.jpg', '24.902077', '91.869345', 3000, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(172, 'Khadimanagar National Park', 'Hotel Star Pacific', 'image/HotelStarPacific.jpg', '24.901859', '91.868732', 8000, '982, East Dargah Gate, Sylhet', '01821-727945'),
(173, 'Khadimanagar National Park', 'Hotel Noorjahan Grand', 'image/HotelNoorjahanGrand.jpg', '24.901974', '91.869776', 4500, 'Waves 1, Dargah Gate, Sylhet 3100', '01930-111666'),
(174, 'Khadimanagar National Park', 'Bottomhill Palace Hotel', 'image/BottomhillPalaceHotel.jpg', '24.901683', '91.870301', 1500, 'Waves 1/E, Dargah Gate, Sylhet 3100', '01700-763512'),
(175, 'Dreamland Amusement Park', 'Britannia Hotel', 'image/BritanniaHotel.jpg', '24.904456', '91.869493', 2300, 'B-95 Shah Jalal Road, Sylhet 3100', '01762-225807'),
(176, 'Dreamland Amusement Park', 'Hotel Holy Gate', 'image/HotelHolyGate.jpg', '24.902077', '91.869345', 3000, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(177, 'Dreamland Amusement Park', 'Hotel Star Pacific', 'image/HotelStarPacific.jpg', '24.901859', '91.868732', 8000, '982, East Dargah Gate, Sylhet', '01821-727945'),
(178, 'Dreamland Amusement Park', 'Hotel Noorjahan Grand', 'image/HotelNoorjahanGrand.jpg', '24.901974', '91.869776', 4500, 'Waves 1, Dargah Gate, Sylhet 3100', '01930-111666'),
(179, 'Dreamland Amusement Park', 'Bottomhill Palace Hotel', 'image/BottomhillPalaceHotel.jpg', '24.901683', '91.870301', 1500, 'Waves 1/E, Dargah Gate, Sylhet 3100', '01700-763512'),
(180, 'MAG Osmany Museum', 'Britannia Hotel', 'image/BritanniaHotel.jpg', '24.904456', '91.869493', 2300, 'B-95 Shah Jalal Road, Sylhet 3100', '01762-225807'),
(181, 'MAG Osmany Museum', 'Hotel Holy Gate', 'image/HotelHolyGate.jpg', '24.902077', '91.869345', 3000, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(182, 'MAG Osmany Museum', 'Hotel Star Pacific', 'image/HotelStarPacific.jpg', '24.901859', '91.868732', 8000, '982, East Dargah Gate, Sylhet', '01821-727945'),
(183, 'MAG Osmany Museum', 'Hotel Noorjahan Grand', 'image/HotelNoorjahanGrand.jpg', '24.901974', '91.869776', 4500, 'Waves 1, Dargah Gate, Sylhet 3100', '01930-111666'),
(184, 'MAG Osmany Museum', 'Bottomhill Palace Hotel', 'image/BottomhillPalaceHotel.jpg', '24.901683', '91.870301', 1500, 'Waves 1/E, Dargah Gate, Sylhet 3100', '01700-763512'),
(185, 'Surma Bridge', 'Hotel Mizan residential', 'image/HotelMizanresidential.jpg', '25.072692', '91.399658', 2000, 'Sunamganj', '01765-308848'),
(186, 'Surma Bridge', 'Nur Hotel', 'image/NurHotel.jpg', '25.071819', '91.399064', 2500, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(187, 'Surma Bridge', 'Surmavalley Residential Resort', 'image/SurmavalleyResidentialResort.jpg', '25.070073', '91.412683', 3000, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(188, 'Surma Bridge', 'Hotel Ayaan Baba ( Residents ) ', 'image/HotelAyaanBaba(Residents).jpg', '25.072417', '91.398612', 2200, 'Waves 1, Dargah Gate, Sylhet 3100', '01930-111666'),
(189, 'Jaflong', 'Jainta Hill\'s Resort', 'image/jainta_hill.jpg', '25.166218', '92.021125', 3000, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(190, 'Jaflong', 'Britannia Hotel', 'image/britania.jpg', '24.904456', '91.869493', 2300, 'B-95 Shah Jalal Road, Sylhet 3100', '01762-225807'),
(191, 'Jaflong', 'Hotel Star Pacific', 'image/star_pacific.jpg', '24.901859', '91.868732', 8000, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(192, 'Jaflong', 'Hotel Noorjahan Grand', 'image/noorjahan.jpg', '24.901974', '91.869776', 4500, '982, East Dargah Gate, Sylhet', '01821-727945'),
(193, 'Jaflong', 'Bottomhill Palace Hotel', 'image/bottomhill.jpg', '24.901683', '91.870301', 1500, 'Waves 1, Dargah Gate, Sylhet 3100', '01930-111666'),
(194, 'Bisnakandi', 'Britannia Hotel', 'image/BritanniaHotel.jpg', '24.904456', '91.869493', 2300, 'Waves 1/E, Dargah Gate, Sylhet 3100', '01700-763512'),
(195, 'Bisnakandi', 'Hotel Holy Gate', 'image/HotelHolyGate.jpg', '24.902077', '91.869345', 3000, 'Waves 1, Dargah Gate, Sylhet 3100', '01930-111666'),
(196, 'Bisnakandi', 'Hotel Star Pacific', 'image/HotelStarPacific.jpg', '24.901859', '91.868732', 8000, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(197, 'Bisnakandi', 'Hotel Noorjahan Grand', 'image/HotelNoorjahanGrand.jpg', '24.901974', '91.869776', 4500, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(198, 'Bisnakandi', 'Bottomhill Palace Hotel', 'image/BottomhillPalaceHotel.jpg', '24.901683', '91.870301', 1500, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(199, 'Sreemangal', 'Grand Sultan Tea Resort', 'image/GrandSultanTeaResort.jpg', '24.301757', '91.764339', 15000, 'Sreemangal - Bhanugach Rd, Sreemangal 3210', '01730-793501'),
(200, 'Sreemangal', 'Hotel Merina', 'image/HotelMerina.jpg', '24.306895', '91.724355', 4000, 'Waves 1, Dargah Gate, Sylhet 3100', '01930-111666'),
(201, 'Sreemangal', 'Hotel Mohsin Plaza', 'image/HotelMohsinPlaza.jpg', '24.309752', '91.732281', 2500, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(202, 'Sreemangal', 'Hotel Skypark', 'image/HotelSkypark.jpg', '24.309562', '91.731409', 3200, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(203, 'Sreemangal', 'Grand Selim Resort & Tour', 'image/GrandSelimResort&Tour.jpg', '24.301757', '91.764339', 3700, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(204, 'Ratargul Swamp Forest', 'Britannia Hotel', 'image/BritanniaHotel.jpg', '24.904456', '91.869493', 2300, 'B-95 Shah Jalal Road, Sylhet 3100', '01762-225807'),
(205, 'Ratargul Swamp Forest', 'Hotel Holy Gate', 'image/HotelHolyGate.jpg', '24.902077', '91.869345', 3000, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(206, 'Ratargul Swamp Forest', 'Hotel Star Pacific', 'image/HotelStarPacific.jpg', '24.901859', '91.868732', 8000, '982, East Dargah Gate, Sylhet', '01821-727945'),
(207, 'Ratargul Swamp Forest', 'Hotel Noorjahan Grand', 'image/HotelNoorjahanGrand.jpg', '24.901974', '91.869776', 4500, 'Waves 1, Dargah Gate, Sylhet 3100', '01930-111666'),
(208, 'Ratargul Swamp Forest', 'Bottomhill Palace Hotel', 'image/BottomhillPalaceHotel.jpg', '24.901683', '91.870301', 1500, 'Waves 1/E, Dargah Gate, Sylhet 3100', '01700-763512'),
(209, 'Hum Hum Waterfall', 'Grand Sultan Tea Resort', 'image/GrandSultanTeaResort.jpg', '24.301757', '91.764339', 15000, 'Sreemangal - Bhanugach Rd, Sreemangal 3210', '01730-793501'),
(210, 'Hum Hum Waterfall', 'Brishti Bilash Guest House & Restaurant', 'image/BrishtiBilashGuestHouse&Restaurant.jpg', '24.293939', '91.766136', 2500, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(211, 'Hum Hum Waterfall', 'Sreemangal Tea Resort and Museum', 'image/SreemangalTeaResortandMuseum.jpg', '24.301919', '91.760111', 3000, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(212, 'Hum Hum Waterfall', 'Green Palace Tea Resort', 'image/GreenPalaceTeaResort.jpg', '24.302509', '91.781285', 2300, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(213, 'Hum Hum Waterfall', 'Shantibari', 'image/Shantibari.jpg', '24.289278', '91.768838', 3800, 'Waves 1, Dargah Gate, Sylhet 3100', '01930-111666'),
(214, 'Madhabpur Lake', 'Grand Sultan Tea Resort', 'image/GrandSultanTeaResort.jpg', '24.301757', '91.764339', 15000, 'Sreemangal - Bhanugach Rd, Sreemangal 3210', '01730-793501'),
(215, 'Madhabpur Lake', 'Hotel Merina', 'image/HotelMerina.jpg', '24.306895', '91.724355', 4000, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(216, 'Madhabpur Lake', 'Hotel Mohsin Plaza', 'image/HotelMohsinPlaza.jpg', '24.309752', '91.732281', 2500, 'Sreemangal - Bhanugach Rd, Sreemangal 3210', '01730-793501'),
(217, 'Madhabpur Lake', 'Hotel Skypark', 'image/HotelSkypark.jpg', '24.309562', '91.731409', 3200, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(218, 'Madhabpur Lake', 'DuSai Resort & Spa', 'image/DuSaiResort&Spa.jpg', '24.430432', '91.760534', 10000, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(219, 'Baikka Beel', 'Grand Sultan Tea Resort', 'image/GrandSultanTeaResort.jpg', '24.301757', '91.764339', 15000, 'Sreemangal - Bhanugach Rd, Sreemangal 3210', '01730-793501'),
(220, 'Baikka Beel', 'DuSai Resort & Spa', 'image/DuSaiResort&Spa.jpg', '24.430432', '91.760534', 10000, 'Waves 1, Dargah Gate, Sylhet 3100', '01930-111666'),
(221, 'Baikka Beel', 'Hotel Merina', 'image/HotelMerina.jpg', '24.306895', '91.724355', 4000, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(222, 'Baikka Beel', 'Hotel Mohsin Plaza', 'image/HotelMohsinPlaza.jpg', '24.309752', '91.732281', 2500, 'Waves 1, Dargah Gate, Sylhet 3100', '01930-111666'),
(223, 'Baikka Beel', 'Hotel Skypark', 'image/HotelSkypark.jpg', '24.309562', '91.731409', 3200, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01972-552233'),
(224, 'Shalban Buddhist Vihara', 'Hotel Sky Vision', 'image/HotelSkyVision.jpg', '', '', 1500, 'Saiba Trade Center, (7th Floor), Comilla', '01716-806000'),
(225, 'Shalban Buddhist Vihara', 'Q Palace', 'image/QPalace.jpg', '', '', 1500, 'Dhaka, Chittagong Bypass Road, Comilla 3500', '01998-800900'),
(226, 'Dharma shagar', 'Hotel Sky Vision', 'image/HotelSkyVision.jpg', '', '', 1500, 'Saiba Trade Center, (7th Floor), Comilla', '01716-806000'),
(227, 'Dharma shagar', 'Q Palace', 'image/QPalace.jpg', '', '', 1500, 'Dhaka, Chittagong Bypass Road, Comilla 3500', '01998-800900'),
(228, 'Baitul Azgar Jami Mosque', 'Hotel Sky Vision', 'image/HotelSkyVision.jpg', '', '', 1500, 'Saiba Trade Center, (7th Floor), Comilla', '01716-806000'),
(229, 'Baitul Azgar Jami Mosque', 'Q Palace', 'image/QPalace.jpg', '', '', 1500, 'Dhaka, Chittagong Bypass Road, Comilla 3500', '01998-800900'),
(230, 'Lalmai Hills', 'Hotel Sky Vision', 'image/HotelSkyVision.jpg', '', '', 1500, 'Saiba Trade Center, (7th Floor), Comilla', '01716-806000'),
(231, 'Lalmai Hills', 'Q Palace', 'image/QPalace.jpg', '', '', 1500, 'Dhaka, Chittagong Bypass Road, Comilla 3500', '01998-800900'),
(232, 'Shundarban', 'Hotel Castle Salam', 'image/HotelCastleSalam.jpg', '', '', 3900, 'G-8 Taltola Lane, K.D.A Avenue, Khulna 9000', '041-720160'),
(233, 'Shundarban', 'City Inn Ltd.', 'image/CityInnLtd.jpg', '', '', 3000, 'B, 1 Majid Sarani, Khulna 9100', '04128-34067'),
(234, 'Shundarban', 'Arunima Resort Golf Club', 'image/ArunimaResortGolfClub.jpg', '', '', 1800, 'Naragati PS, Narail Dist., Panipara 7514', '01711-422203'),
(235, 'Kuakata Sea Beach', 'Hotel Castle Salam', 'image/HotelCastleSalam.jpg', '', '', 3900, 'G-8 Taltola Lane, K.D.A Avenue, Khulna 9000', '041-720160'),
(236, 'Kuakata Sea Beach', 'City Inn Ltd.', 'image/CityInnLtd.jpg', '', '', 3000, 'B, 1 Majid Sarani, Khulna 9100', '04128-34067'),
(237, 'Kuakata Sea Beach', 'Arunima Resort Golf Club', 'image/ArunimaResortGolfClub.jpg', '', '', 1800, 'Naragati PS, Narail Dist., Panipara 7514', '01711-422203'),
(238, 'Shat Gombuj Mosque', 'Hotel Castle Salam', 'image/HotelCastleSalam.jpg', '', '', 3900, 'G-8 Taltola Lane, K.D.A Avenue, Khulna 9000', '041-720160'),
(239, 'Shat Gombuj Mosque', 'City Inn Ltd.', 'image/CityInnLtd.jpg', '', '', 3000, 'B, 1 Majid Sarani, Khulna 9100', '04128-34067'),
(240, 'Shat Gombuj Mosque', 'Arunima Resort Golf Club', 'image/ArunimaResortGolfClub.jpg', '', '', 1800, 'Naragati PS, Narail Dist., Panipara 7514', '01711-422203'),
(241, 'Khulna divisional museum', 'Hotel Castle Salam', 'image/HotelCastleSalam.jpg', '', '', 3900, 'G-8 Taltola Lane, K.D.A Avenue, Khulna 9000', '041-720160'),
(242, 'Khulna divisional museum', 'City Inn Ltd.', 'image/CityInnLtd.jpg', '', '', 3000, 'B, 1 Majid Sarani, Khulna 9100', '04128-34067'),
(243, 'Khulna divisional museum', 'Arunima Resort Golf Club', 'image/ArunimaResortGolfClub.jpg', '', '', 1800, 'Naragati PS, Narail Dist., Panipara 7514', '01711-422203'),
(244, 'Paharpur Buddhist Bihar', 'Hotel Green City International', 'image/HotelGreenCityInternational.jpg', '', '', 700, 'Ct Station Rd, Rajshahi', '01791-711133'),
(245, 'Paharpur Buddhist Bihar', 'Hotel Star International', 'image/HotelStarInternational.jpg', '', '', 3700, 'Aamchattar, Bypass, 6203', '0721-761263\r\n'),
(246, 'Mahasthangarh', 'Hotel Green City International', 'image/HotelGreenCityInternational.jpg', '', '', 700, 'Ct Station Rd, Rajshahi', '01791-711133'),
(247, 'Mahasthangarh', 'Hotel Star International', 'image/HotelStarInternational.jpg', '', '', 3700, 'Aamchattar, Bypass, 6203', '0721-761263\r\n'),
(248, 'Puthia Rajbari', 'Hotel Green City International', 'image/HotelGreenCityInternational.jpg', '', '', 700, 'Ct Station Rd, Rajshahi', '01791-711133'),
(249, 'Puthia Rajbari', 'Hotel Star International', 'image/HotelStarInternational.jpg', '', '', 3700, 'Aamchattar, Bypass, 6203', '0721-761263\r\n'),
(250, 'Bagha Mosque', 'Hotel Green City International', 'image/HotelGreenCityInternational.jpg', '', '', 700, 'Ct Station Rd, Rajshahi', '01791-711133'),
(251, 'Bagha Mosque', 'Hotel Star International', 'image/HotelStarInternational.jpg', '', '', 3700, 'Aamchattar, Bypass, 6203', '0721-761263\r\n'),
(252, 'Uttara Ganobhaban', 'Hotel Green City International', 'image/HotelGreenCityInternational.jpg', '', '', 700, 'Ct Station Rd, Rajshahi', '01791-711133'),
(253, 'Uttara Ganobhaban', 'Hotel Star International', 'image/HotelStarInternational.jpg', '', '', 3700, 'Aamchattar, Bypass, 6203', '0721-761263\r\n'),
(254, 'Choto Shona Mosque', 'Hotel Green City International', 'image/HotelGreenCityInternational.jpg', '', '', 700, 'Ct Station Rd, Rajshahi', '01791-711133'),
(255, 'Choto Shona Mosque', 'Hotel Star International', 'image/HotelStarInternational.jpg', '', '', 3700, 'Aamchattar, Bypass, 6203', '0721-761263\r\n'),
(256, 'Bhinnojogot', 'Grand Palace', 'image/GrandPalace.jpg', '', '', 14227, 'House 5, Road, 4 G L Roy Rd, Rangpur 5400', '01713-558844'),
(257, 'Bhinnojogot', 'Hotel GM Suites', 'image/HotelGMSuites.jpg', '', '', 1500, 'G L Roy Rd, Rangpur', '01785-666111'),
(258, 'Tajhat zamindar house', 'Grand Palace', 'image/GrandPalace.jpg', '', '', 14227, 'House 5, Road, 4 G L Roy Rd, Rangpur 5400', '01713-558844'),
(259, 'Tajhat zamindar house', 'Hotel GM Suites', 'image/HotelGMSuites.jpg', '', '', 1500, 'G L Roy Rd, Rangpur', '01785-666111'),
(260, 'uttara gonovobon', 'Grand Palace', 'image/GrandPalace.jpg', '', '', 14227, 'House 5, Road, 4 G L Roy Rd, Rangpur 5400', '01713-558844'),
(261, 'uttara gonovobon', 'Hotel GM Suites', 'image/HotelGMSuites.jpg', '', '', 1500, 'G L Roy Rd, Rangpur', '01785-666111'),
(262, 'Kutubdia', 'Hotel Samudra Bilash', 'image/Hotel_Samudra_Bilash.jpg', '21.816314', '91.849175', 500, 'Kutubdia', '01789-357888'),
(263, 'Boddho', 'Warisan Residential Hotel', 'image/warisanresidentialhotel.jpg', '', '', 3000, 'Rajshahi', '01978459623'),
(264, 'Nilgiri', 'Nilgiri Resort', 'image/nilgiri_resort.jpg', '', '', 3000, 'Nilgiri Resort, Nilgiri, Bandarban, Chittagong, Bangladesh.', '+88 01856699910');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_gallery`
--

CREATE TABLE `hotel_gallery` (
  `id` int(11) NOT NULL,
  `hotel_name` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_gallery`
--

INSERT INTO `hotel_gallery` (`id`, `hotel_name`, `image`) VALUES
(1, 'Fodang Thang Resort', 'image/Meghpunji.jpg'),
(2, 'Britannia Hotel', 'image/1.jpg'),
(3, 'Sairu Hill Resort', 'image/restaurant-with-a-view.jpg'),
(4, 'Royal Tulip Sea Pearl Beach Resort', 'image/'),
(5, 'Long beach hotel ', 'image/'),
(6, 'Hotel The Cox Today', 'image/'),
(7, 'Hotel Prime Park', 'image/'),
(8, 'Hotel Sea Crown', 'image/'),
(9, 'The sea princess hotel ', 'image/'),
(10, 'Radisson Blu Chittagong Bay View', 'image/'),
(11, 'Hotel Agrabad', 'image/'),
(12, 'Royal Tulip Sea Pearl Beach Resort', 'image/'),
(13, 'Royal Tulip Sea Pearl Beach Resort', 'image/'),
(14, 'Royal Tulip Sea Pearl Beach Resort', 'image/'),
(15, 'Royal Tulip Sea Pearl Beach Resort', 'image/');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_review`
--

CREATE TABLE `hotel_review` (
  `review_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_review`
--

INSERT INTO `hotel_review` (`review_id`, `hotel_id`, `user_id`, `review`, `rating`, `image`) VALUES
(1, 19, 4, 'Good place.', 4, 'image/Meghpunji.jpg'),
(2, 155, 5, 'Overall Good.', 5, 'image/1.jpg'),
(3, 18, 4, 'Too expensive but interior is good..', 4, 'image/restaurant-with-a-view.jpg'),
(4, 1, 8, 'good ', 5, 'image/'),
(5, 2, 8, 'very good ', 5, 'image/'),
(6, 3, 8, 'good', 4, 'image/'),
(7, 4, 8, 'very good', 4, 'image/'),
(8, 5, 8, 'very good', 4, 'image/'),
(9, 6, 8, 'very good', 5, 'image/'),
(10, 145, 8, 'very good. but price to much high.', 5, 'image/'),
(11, 146, 8, 'very good', 4, 'image/'),
(12, 1, 8, 'good ', 4, 'image/'),
(13, 1, 4, 'too expensive...', 3, 'image/'),
(15, 1, 5, 'Its really good.', 5, 'image/');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `district` mediumtext NOT NULL,
  `place_category` text NOT NULL,
  `place_name` mediumtext NOT NULL,
  `place_image` mediumtext NOT NULL,
  `res_type` mediumtext NOT NULL,
  `travel_path` text NOT NULL,
  `place_des` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id`, `district`, `place_category`, `place_name`, `place_image`, `res_type`, `travel_path`, `place_des`) VALUES
(1, 'Chittagong', 'Sea', 'Coxsbazar', 'image/cox_bazar.jpg\r\n', 'lux', 'চট্টগ্রাম থেকে প্রতি ঘন্টায় কক্সবাজারের গাড়ী পাওয়া যায় বহদ্দার হাট থেকে। অধিকাংশ গাড়ীও অত্যন্ত লোকাল। ভালো সার্ভিস দেয় এস আলম ও সৈাদিয়া, ছাড়ে গরীবুল্লাহ শাহ মাজার, দামপাড়া থেকে। লোকাল বাস সমুহ ভাড়া ১৫০-২০০ টাকা আর ডিরেক্ট বাস গুলো ৩৫০-৪০০ টাকা। এছাড়া বিমানেও যেতে পারবেন। রিটার্ণ ভাড়া ৮,০০০ থেকে শুরু করে ১২,০০০ টাকা । ওয়ান ওয়ের ভাড়া ৫০০০ থেকে শুরু। ইউএস বাংলা, নোভো এয়ার, বাংলাদেশ বিমান যায় কক্স বাজার। ইউনাইটেড এয়ারের অবস্থা ভালোনা, এতে ভ্রমণ না করায় শ্রেয়। কম খরচে যেতে চাইলে বিমান সবচেয়ে ভালো মাধ্যম, কিন্তু টিকেট কিনতে হবে আগে।', 'কক্সবাজারের প্রধান আকর্ষন হচ্ছে সমুদ্র সৈকত। সবচেয়ে জাঁকজমক হচ্ছে লাবনী সমুদ্র সৈকত। পরিস্কার ঝকঝকে পরিবেশ আর নানা সুযোগ-সুবিধা রয়েছে এখানে। সমুদ্র সৈকতের তীর ঘেষে রয়েছে ইজি চেয়ারে শোবার ব্যাবস্থা। চা-কফি-ডাব-মুড়ি-বাদাম সবই পাওয়া যায়। এছাড়া স্পীডবোট, বিচকার, ঘোড়ায় চড়ার ব্যাবস্হা এসব তো রয়েছেই।\r\n\r\nএছাড়া একটু দূরে ইনানী সমুদ্র সৈকতের সৌন্দর্যও অবশ্যই প্রশংসনীয়। এখানে পানির মধ্যে রয়েছে বড় বড় সব পাথর। ইনানী যাবার পথে দীর্ঘ সি-ড্রাইভ অবশ্যই মুগ্ধ করবে আপনাকে। রাস্তার একদিকে পাহাড় আর অন্যদিকে সুদীর্ঘ সমুদ্র সৈকত পুরোটা পথ সঙ্গ দিবে আপনাকে।\r\n\r\nইনানী সমুদ্র সৈকতে যাবার পথেই দেখা মেলে হিমছড়ির, এখানে রয়েছে মনোমুগ্ধকর এক ঝর্না। সিড়ি বেয়ে অনেক উঁচু পাহাড়ে উঠে কক্সবাজারের দৃশ্য দেখার সুযোগ রয়েছে । এছাড়াও এখানে ছোট মার্কেট ও সুন্দর করে সাজানো সমুদ্র সৈকত রয়েছে যা পর্যটকদের অন্যতম আকর্ষন।\r\n\r\nএই পথেই রয়েছে সামুদ্রিক জীব-জন্তুর জাদুঘর। বেশ কিছু জানা-অজানা জীবিত-মৃত প্রানী রয়েছে তাদের সংরক্ষণে। টিকিট জনপ্রতি ৩০০/-টাকা।'),
(2, 'Chittagong', 'Hill', 'Nilgiri', 'image/nilgiri.jpg', 'no_lux', ' বান্দরবান সিটি হতে চাঁদের গাড়ি ভাড়া করে নীলগিরির উদ্দেশে রওনা দিতে পারেন।  ', ' নীলগিরিতে স্থাপিত বান্দরবান জেলার মানচিত্র নীলগিরি পর্যটন কেন্দ্র বাংলাদেশের বান্দরবান জেলায় নীলগিরি পাহাড়চূড়ায় অবস্থিত একটি জনপ্রিয় পর্যটন কেন্দ্র। এটি বাংলাদেশের সর্বোচ্চ পর্যটন কেন্দ্র।'),
(3, 'Chittagong', 'Hill', 'Sajek Valley', 'image/sajek.jpg', 'lux', 'খাগড়াছড়ি শহর অথবা দীঘিনালা হতে স্থানীয় গাড়িতে ( জিপ গাড়ি , সি.এন.জি , মটরসাইকেল ) করে সাজেকে যাওয়াই হচ্ছে বর্তমানে সবচেয়ে সহজ ও জনপ্রিয় মাধ্যম । এক্ষেত্রে পথে পরবে ১০ নং বাঘাইহাট পুলিশ ও আর্মি ক্যাম্প । সেখান থেকে ভ্রমণরত সদস্যদের তথ্য দিয়ে সাজেক যাবার মূল অনুমতি নিতে হবে । দিনের দুইটি নির্দিষ্ট সময় (সকাল ১০:৩০ এবং বিকাল ৩:৩০) ব্যতীত আর্মি ক্যাম্পের পক্ষ হতে সাজেক যাওয়ার অনুমতি দেয়া হয় না । পর্যটকদের সর্বাধিক নিরাপত্তা নিশ্চিত করার জন্যই এই নিয়ম অনুসরণ করা হয় । সাজেকগামী জিপ গাড়িগুলো স্থানীয়ভাবে চান্দের গাড়ি নামে পরিচিত ।', ' মেঘে আচ্ছন্ন সাজেকের প্রকৃতি সাম্প্রতিক সময়ে ভ্রমণ পিপাসু মানুষদের কাছে যে কয়টি ভ্রমণ গন্তব্য সবচেয়ে জনপ্রিয় হয়ে উঠেছে তার মধ্যে অন্যতম হল রাঙামাটি জেলার বাঘাইছড়ি উপজেলায় অবস্থিত সাজেক ভ্যালি ।'),
(4, 'Chittagong', 'Hill', 'Rangamati', 'image/rangamati.jpg', 'lux', 'চট্টগ্রাম থেকে রাঙ্গামাটিতে বাস যোগে আসা যায়। রাঙ্গামাটিতে যাওয়ার সরাসরি দুইটি বাস আছে। একটি হলো পাহাড়িকা যা চট্টগ্রাম থেকে সকাল ৮.০০টা থেকে রাত ৮.০০টা পর্যন্ত এবং রাঙ্গামাটি হতে সকাল ৮.০০টা থেকে রাত ৮.৩০মিনিট পর্যন্ত চলাচল করে। এই বাস সার্ভিসটি প্রতি ১ ঘন্টা অন্তর অন্তর স্টেশন থেকে ছেড়ে যায় এবং গন্তব্যে পৌঁছাতে প্রায় ৩ ঘন্টা সময় নেয়। পাহাড়িকা বাস সার্ভিসের টিকিটের মূল্য ১৫০ টাকা এবং টিকিট মুরাদপুর ও অক্সিজেন মোড় থেকে সংগ্রহ করা যায়। আরেকটি বাস সার্ভিস হচ্ছে বিআরটিসি বাস সার্ভিস, যা রাঙামাটির একমাত্র শীতাতপ নিয়ন্ত্রিত বাস সার্ভিস। এই বাসের টিকিটের ভাড়া ১৫০ টাকা এবং টিকিট চট্টগ্রামস্থ বটতলী রেলওয়ে স্টেশনের বিআরটিসি কাউন্টার থেকে সংগ্রহ করা যাবে। এছাড়া অনেক ধরনের লোকাল বাস সার্ভিসের ব্যবস্থা রয়েছে, তবে সেসব বাস সার্ভিস রাস্তার যেকোন জায়গা থেকে যাত্রী উঠানামা করায়, ফলে বাসে সবসময় যাত্রীদের ভীড় লেগে থাকে এবং গন্তব্যে ৪-৫ ঘন্টা সময় ব্যয় হয়। রাজধানী ঢাকা থেকেও রাঙ্গামাটি যাওয়ার কিছু বাস সার্ভিস রয়েছে। এই বাস সার্ভিসগুলো শীতাতপ নিয়ন্ত্রিত নয়। এছাড়াও আশেপাশের জেলাগুলোতেও কিছু লোকাল বাস সার্ভিসের ব্যবস্থা রয়েছে রাঙ্গামাটিতে আসা যাওয়ার জন্য।', 'রাঙ্গামাটি জেলা ঝুলন্ত সেতু ঝুলন্ত সেতু বাংলাদেশে রাঙ্গামাটি জেলার অবস্থান বাংলাদেশে রাঙ্গামাটি জেলার অবস্থান স্থানাঙ্ক: ২২°৩৮′ উত্তর ৯২°১২′ পূর্বস্থানাঙ্ক: ২২°৩৮′ উত্তর ৯২°১২′ পূর্ব | OSM মানচিত্র উইকিউপাত্তে এটি সম্পাদনা করুন দেশ	 বাংলাদেশ বিভাগ	চট্টগ্রাম বিভাগ প্রতিষ্ঠাকাল	২০ জুন, ১৮৬০ সংসদীয় আসন	২৯৯ পার্বত্য রাঙ্গামাটি সরকার  • সংসদ সদস্য	ঊষাতন তালুকদার (স্বতন্ত্র) আয়তন  • মোট	৬১১৬.১৩ কিমি২ (২৩৬১.৪৫ বর্গমাইল) জনসংখ্যা (২০১১)[১]  • মোট	৬,২০,২১৪  • ঘনত্ব	১০০/কিমি২ (২৬০/বর্গমাইল) স্বাক্ষরতার হার  • মোট	৪৩.৬০% সময় অঞ্চল	বিএসটি (ইউটিসি+৬) পোস্ট কোড	৪৫০০ উইকিউপাত্তে এটি সম্পাদনা করুন প্রশাসনিক বিভাগের কোড	২০ ৮৪ ওয়েবসাইট	প্রাতিষ্ঠানিক ওয়েবসাইট Edit this at Wikidata রাঙ্গামাটি জেলা বাংলাদেশের দক্ষিণ-পূর্বাঞ্চলে অবস্থিত চট্টগ্রাম বিভাগের একটি প্রশাসনিক অঞ্চল। এটি একটি পার্বত্য জেলা।  '),
(92, 'Chittagong', 'Lake', 'Kaptai', 'image/kaptai.jpg', 'lux', 'চট্টগ্রাম বহদ্দারহাট বাসস্ট্যান্ড থেকে প্রতি ৩০ মিনিট অন্তর অন্তর কাপ্তায়ের উদ্দেশ্যে বাস ছেড়ে যায়, ভাড়া ৮০-১২০ টাকা। সময় লাগবে ২ ঘন্টার মত। ঢাকা থেকে ট্রেনে চট্রগ্রাম এসে বদ্দারহাট বাস টার্মিনাল থেকে কাপ্তাই যাওয়া যায়।  বান্দরবান থেকে কাপ্তাই যেতে চাইলে রোয়াংছড়ি বাস স্ট্যান্ড থেকে রাঙ্গামাটি গামী বাসে করে গিয়ে বড়ইছড়ি নেমে সিএনজি দিয়ে কাপ্তাই যেতে হবে। রাঙ্গামাটি থেকে সড়ক পথে বাসে কিংবা সিএনজিতে অথবা ট্রলার নৌকায় কাপ্তাই হ্রদ হয়ে কাপ্তাই বাজার যাওয়া যায়।', 'কাপ্তাই হ্রদ বাংলাদেশের পার্বত্য চট্টগ্রাম অঞ্চলের রাঙামাটি জেলার একটি কৃত্রিম হ্রদ। কর্ণফুলি পানি বিদ্যুৎ কেন্দ্রের জন্য ১৯৫৬ সালে কর্ণফুলি নদীর উপর কাপ্তাই বাঁধ নির্মাণ করা হলে রাঙামাটি জেলার ৫৪ হাজার একর কৃষি জমি ডুবে যায় এবং এ হ্রদের সৃষ্টি হয়। '),
(6, 'Sylhet', 'Nature', 'Jaflong', 'image/jaflong.jpg', 'lux', 'জাফলং যেতে হলে প্রথমে আসতে হবে চায়ের দেশ সিলেটে। দেশের নানা প্রান্ত থেকে বিভিন্ন মাধ্যমে সিলেট আসা যায়। বাস, ট্রেন কিংবা আকাশপথে যে কোন উপায়েই সিলেট আসতে পারবেন।সিলেটে থেকে প্রায় সকল প্রকার যানবাহনেই জাফলং যাওয়া যায়। লোকাল বাসে যেতে শহরের শিবগঞ্জে যেতে হবে। সিএনজি বা অটোরিকশায় জাফলং যাওয়া যাবে তবে খরচ তুলনামূলক বেশি পড়বে। সারাদিনের জন্য মাইক্রোবাস রিজার্ভ নেওয়া যায়। সিলেট নগরীর যেকোন অটোরিকশা বা সিএনজি স্ট্যান্ড থেকেই জাফলং যাতে পারবেন। দলগত ভাবে গেলে মাইক্রোবাস রিজার্ভ করে গেলেই ভালো, তাহলে আশেপাশের অন্যান্য যায়গা নেমে ঘুরে দেখা যাবে। ঠিক করার আগে ভাল মত দরদাম ও কি কি দেখতে চান তা ভালো করে কথা বলে নিতে হবে।', 'জাফলং সিলেট জেলার দর্শনীয় স্থান যা গোয়াইনঘাট উপজেলার ভারতের মেঘালয় সীমান্ত ঘেঁষে অবস্থিত। সিলেট থেকে জাফলং এর দুরত্ব মাত্র ৬২ কিলোমিটার। পিয়াইন নদীর স্বচ্ছ পানির ধারা, ঝুলন্ত ডাউকি ব্রিজ, উঁচু উঁচু পাহাড়ে সাদা মেঘের খেলা জাফলংকে করেছে অনন্য। ঋতুভেদে জাফলং একেক রকম রুপ প্রকাশ করে।'),
(7, 'Sylhet', 'Nature', 'Bisnakandi', 'image/bisnakandi.jpg', 'lux', 'সড়কযান বিছনাকান্দি যাওয়ার একাধিক পথ রয়েছে। তবে সুবিধাজনক পথ মূলত একটিই। বিমানবন্দরের দিকে এগিয়ে ডানে মোড় নিয়ে সিলেট- কোম্পানীগঞ্জ রোডে সালুটিকর, সালুটিকর থেকে এগিয়ে ডানে মোড় নিয়ে বঙ্গবীর, বঙ্গবীর থেকে কিছুদূর গিয়ে বামে মোড় নিয়ে হাদারপাড় বাজার। হাদারপাড় বিছনাকান্দির একেবারেই পাশে। এখান থেকে স্থানীয় নৌকা নিয়ে বিছনাকান্দি যাওয়ার ব্যবস্থা রয়েছে। বিছনাকান্দি পর্যন্ত গাড়ী পৌছায় না। সিলেট এর যেকোন স্থান থেকে বিশেষত আম্বরখানা থেকে হাদারপাড় পর্যন্ত ভাড়ায় সিএনজি পাওয়া যায়।', 'বিছানাকান্দি বাংলাদেশের সিলেট জেলার গোয়াইনঘাট উপজেলায় অবস্থিত রুস্তমপুর ইউনিয়নের একটি গ্রামের মধ্যে অবস্থিত।  এটি সিলেটের পর্যটন স্বর্গ। দেশের সীমান্তঘেরা পাথরের বিছানা ও মেঘালয় পাহাড় থেকে আসে ঠাণ্ডা পানি। পাশেই পাহাড়ি সবুজের সমারোহ। ছোট বড় পাথরের ওপর দিয়ে ছুটে আসা স্বচ্ছ পানির স্রোতধারা বিছানাকান্দিতে সৃষ্টি করেছে এক মনোরম পরিবেশ।'),
(8, 'Sylhet', 'Lake', 'Ratargul Swamp Forest', 'image/ratargul.jpg', 'lux', 'সিলেট থেকে দুই ভাবে রাতারগুল আসা যায়। সিলেট শহরের পাশের খাদিম চা বাগান ও খাদিমনগর জাতীয় উদ্যানের ভেতরের রাস্তা দিয়ে খুব অল্প সময়ে রাতারগুল পৌঁছানো যায়। এই পথে সিএনজি অটোরিকশা কিংবা জিপ নিয়ে শ্রীঙ্গি ব্রিজ যেতে হয়। সিলেট থেকে সকালে রাতারগুল গিয়ে বিকেলের মধ্যেই ফিরে আসা যায়। তাই সারাদিনের জন্য সিএনজি কিংবা অটোরিকশার ভাড়া ১২০০ থেকে ১৫০০ টাকা লাগবে। আর যদি সিলেটের আম্বরখানা থেকে লোকাল সিএনজি চড়ে যেতে চান তবে শ্রীঙ্গি ব্রিজ পর্যন্ত আসতে জনপ্রতি ১০০ টাকা ভাড়া। শ্রীঙ্গি ব্রিজ থেকে রাতারগুল জঙ্গলে ঢুকার জন্য জেলেদের ছোট ছোট নৌকা পাবেন। একটি ছোট নৌকায় ৪-৬ জন চড়া যায়। এমন একটি নৌকার ভাড়া ৪০০ থেকে ৮০০ টাকা। রাতারগুল যাওয়ার দ্বিতীয় পথটি হচ্ছে সিলেট হতে জাফলং গামী গাড়িতে গিয়ে সারিঘাট নামতে হবে। সিলেট থেকে সারিঘাট আসার ভাড়া নেবে ৪০ থেকে ৫০ টাকা। সারিঘাট হতে বেবিটেক্সিতে করে গোয়াইনঘাট বাজারে এসে নৌকা দিয়ে রাতারগুল যেতে হবে। আর ১০-১২ জনের জন্য একটি নৌকার সারাদিনের ভাড়া লাগবে ৮০০ থেকে ১২০০ টাকা, তবে এপথে খরচ এবং সময় বেশি লাগে। এছাড়া সিলেটের বন্দর বাজার পয়েন্ট থেকে সিএনজি যোগে সাহেব বাজার হয়ে মটরঘাট পৌঁছে ডিঙ্গি নৌকা ভাড়া করে রাতারগুল জলাবনে চলে যেতে পারবেন।', 'বাংলাদেশের একমাত্র মিঠাপানির জলাবন বা সোয়াম্প ফরেস্ট এবং বন্যপ্রাণী অভয়ারণ্য, যা সিলেটের গোয়াইনঘাটে অবস্থিত। বনের আয়তন ৩,৩২৫.৬১ একর, আর এর মধ্যে ৫০৪ একর বনকে ১৯৭৩ সালে বন্যপ্রাণী অভয়ারণ্য হিসেবে ঘোষণা করা হয়। এটি পৃথিবীর মাত্র কয়েকটি জলাবনের মধ্যে অন্যতম একটি। এই বনকে বাংলাদেশ সরকারের বনবিভাগের অধীনে সংরক্ষণ করা হয়েছে।  চিরসবুজ এই বন গুয়াইন নদীর তীরে অবস্থিত এবং চেঙ্গির খালের সাথে একে সংযুক্ত করেছে। এখানে সবচেয়ে বেশি জন্মায় করচ গাছ (বৈজ্ঞানিক নাম- Millettia pinnata)। বর্ষাকালে এই বন ২০–৩০ ফুট পানির নিচে নিমজ্জিত থাকে। বাকি সারা বছর, পানির উচ্চতা ১০ ফুটের মতো থাকে। বর্ষাকালে এই বনে অথৈ জল থাকে চার মাস। তারপর ছোট ছোট খালগুলো হয়ে যায় পায়ে-চলা পথ। আর তখন পানির আশ্রয় হয় বন বিভাগের খোঁড়া বিলগুলোতে। সেখানেই আশ্রয় নেয় জলজ প্রাণীকুল।'),
(9, 'Sylhet', 'Waterfall', 'Hum Hum Waterfall', 'image/humhum.jpg', 'lux', 'শ্রীমঙ্গল থেকে সকাল সকাল হামহামে জন্য রওনা দিলে ভাল হয়। প্রথমে আপনাকে কলাবন পাড়ায় যেতে হবে। শ্রীমঙ্গল থেকে কলাবন পাড়া আপ ডাউন সিএনজি ভাড়া ১০০০-১২০০ টাকার মতো লাগবে, এক গাড়িতে ৩-৫ যেতে পারবেন। এছাড়া যাওয়ার জন্যে আছে জীপ গাড়ি। কলাবন পাড়া পৌছে ২০০/৩০০ টাকার মধ্যে একজন ভাল গাইড ঠিক করে নিন। ভ্রমণ সঙ্গীর প্রত্যেকে বাঁশের লাঠি নিতে ভুল করবেন না, আর অবশ্যই জোঁকের কথা মাথায় রাখবেন। কলাবন পাড়া থেকে হামহাম যাবার দুটো ট্রেইল আছে আছে, ঝিরি পথ ও পাহাড়ি পথ। ঝিরি পথে একটু সময় বেশি লাগলেও এই পথের সৌন্দর্য পাহাড়ি পথের চেয়ে অনেক বেশি। তবে বর্ষাকালে ঝিরি পথে অনেক জোঁক থাকে। কলাবন পাড়া থেকে হামহাম যেতে ২-৩ ঘন্টা লাগবে। তবে পাহাড়ি রাস্তায় হাঁটার অভ্যাস না থাকলে সময় আরও একটু বেশি লাগতে পারে।', 'মৌলভীবাজার জেলার কমলগঞ্জ উপজেলার রাজকান্দি সংরক্ষিত বনাঞ্চলের গভীরে ২০১০ সালের শেষের দিকে পর্যটন গাইড শ্যামল দেববর্মাকে সাথে নিয় একদল পর্যটক হাম হামের এই অনিন্দ্য জলপ্রপাতটি আবিষ্কার করেন। স্থানীয়দের কাছে এই ঝর্ণা চিতা ঝর্ণা হিসাবে পরিচিত, তাদের মতে এই জঙ্গলে আগে চিতা পাওয়া যেত। প্রায় ১৪০ফিট উঁচু এই ঝর্ণার বুনো সৌন্দর্য দেখার জন্যে অনেক কষ্ট স্বীকার করে সমগ্র বাংলাদেশ থেকে মানুষ ছুটে আসে। শীতকালে তুলনামূলক পানি অনেক কম থাকে তাই বর্ষা কাল হাম হামের বুনো সৌন্দর্য্য দেখার উপযুক্ত সময়।'),
(10, 'Sylhet', 'Lake', 'Lalakhal', 'image/lalakhal.jpg', 'lux', 'সিলেট থেকে লালাখালে যেতে হলে নগরীর ধোপাদিধীর ওসমানী শিশু উদ্যানের বা শিশু পার্কের সামনে থেকে লেগুনা, মাইক্রবাস অথবা জাফলংগামী বাসে চড়ে সারিঘাট আসতে পারেন। সারিঘাট সিলেট এবং জাফলং এর মধ্যবর্তী স্থানে অবস্থিত। সারিঘাট থেকে লালাখালে যাওয়ার সিএনজিচালিত অটোরিকশা পাবেন। যদি নদীপথে লালাখালে যেতে চান তবে এখানে ইঞ্জিন চালিত বিভিন্ন ট্রলার ও নৌকা ভাড়ায় পাবেন। লালাখাল থেকে সিলেট ফিরতে রাত ৮ টা পর্যন্ত বাস ও লেগুনা পাবেন। সিলেট থেকে লালাখাল যেতে মাইক্রোবাসে ভাড়া লাগবে ২০০০ থেকে ৩০০০ টাকা। বাস কিংবা লেগুনায় সারিঘাট যেতে ৪০ থেকে ৬০ টাকা খরচ হবে। সারিঘাট থেকে ইঞ্জিনচালিত নৌকায় লালাখালে যেতে ১২০০ থেকে ১৫০০ টাকা এবং স্পিডবোটে যেতে ১৫০০ থেকে ২০০০ টাকা লাগবে। কম খরচে লালাখাল যেতে চাইলে সারিঘাট ব্রিজ পার হয়ে উত্তর দিকে মসজিদ থেকে একটু এগিয়ে ডান দিকে লালাখালের রাস্তায় সারি সারি অটো দাঁড়িয়ে থাকতে দেখবেন। সিরিয়ালের ভিত্তিতে চলা এসব অটোতে জনপ্রতি ভাড়া লাগে ১৫ টাকা। অটো থেকে নেমে লালাখাল ঘাটে গেলেই সবুজ পানির অপার্থিব দৃশ্য দেখতে পারবেন। এখানে ছাউনি দেয়া রঙিন নৌকায় ঘুরতে চাইলে ৫০০ থেকে ৭০০ টাকা লাগবে আর আরো কম টাকায় নৌকা ভাড়া করতে খেয়া পার হয়ে নদীর অপর পাড়ে ছাউনি ছাড়া নৌকা গুলোর কাছে চলে যান। এখানে নৌকাগুলোর সিরিয়াল আছে একটু দরদাম করে ৩০০ থেকে ৪০০ টাকায় ইচ্ছেমত সময়ের জন্য ভাড়া করতে পারবেন।', 'লালাখাল (Lalakhal) বিভাগীয় শহর সিলেট জৈন্তাপুর উপজেলায় অবস্থিত। সিলেট থেকে প্রায় ৩৫ কিলোমিটার দূরত্বে অবস্থিত এই লালাখাল নদী ভারতের চেরাপুঞ্জি পাহাড় থেকে উৎপন্ন হয়ে বাংলাদেশে প্রবেশ করেছে। নদী, পাহাড়ি বন, চা-বাগান এবং নানা প্রজাতির বৃক্ষরাজি লালাখালের ভূপ্রকৃতিকে দিয়েছে অনন্য বৈশিষ্ট্য। ভরা পূর্ণিমায় জ্যোৎস্না ধোয়া নদী কিংবা মেঘ পাহাড় আর নদীর মিতালী দেখতে আপনাকে লালাখাল ঘুরে আসতে হবে। বর্ষাকালে লালাখালের পানি খুব ঘোলা থাকে তাই নভেম্বর থেকে মার্চ অর্থাৎ শীতকাল হচ্ছে লালাখাল ভ্রমণের উপযুক্ত সময়।'),
(11, 'Khulna', 'Nature', 'Shundarban', 'image/shundarban.jpg', 'lux', 'খুলনা বা মংলা বন্দর থেকে সুন্দরবনের পরিদর্শন করার জন্য পানি পরিবহন যোগাযোগের একমাত্র মাধ্যম। বেসরকারি মোটর লঞ্চ, স্পিডবোট, দেশ নৌকা এবং মংলা বন্দর কর্তৃপক্ষের যান্ত্রিক জাহাজ উদ্দেশ্যে ভাড়া নেওয়া যেতে পারে। সুন্দরবন পরিদর্শন করার জন্য সর্বোত্তম সময় নভেম্বর থেকে মার্চ পর্যন্ত। ', 'সুন্দরবন হলো বঙ্গোপসাগর উপকূলবর্তী অঞ্চলে অবস্থিত একটি প্রশস্ত বনভূমি যা বিশ্বের প্রাকৃতিক বিস্ময়াবলীর অন্যতম। সমুদ্র উপকূলবর্তী নোনা পরিবেশের সবচেয়ে বড় ম্যানগ্রোভ বন হিসেবে সুন্দরবন বিশ্বের সর্ববৃহৎ অখণ্ড বনভূমি। বনভূমিটি, স্বনামে বিখ্যাত রয়েল বেঙ্গল টাইগার ছাড়াও নানান ধরণের পাখি, চিত্রা হরিণ, কুমির ও সাপসহ অসংখ্য প্রজাতির প্রাণীর আবাসস্থল হিসেবে পরিচিত।'),
(12, 'Khulna', 'Historical', 'Shat Gombuj Mosque', 'image/shat_gombuj.jpg', 'no_lux', 'বাগেরহাট বাসস্ট্যান্ড থেকে ষাট গম্বুজ মসজিদ সাত কিলোমিটার। রিকশাভাড়া ৩০ টাকা। অটো ভাড়া ৫০-৭০ টাকা এবং মাজার গেট থেকে ১৫-২০ টাকা। মসজিদ ও জাদুঘর কমপ্লেক্সে প্রবেশ ফী ২০ টাকা । তবে, সময় স্বল্পতা না থাকলে বাসস্ট্যান্ড থেকে পায়ে হেঁটেই এই মসজিদে পৌছাতে পারবেন। বাসস্ট্যান্ড থেকে মাত্র ৫ কিলোমিটার পশ্চিমে হাঁটলেই আপনি দরগার দেখা পাবেন। দরগা থেকে ষাটগম্বুজ মসজিদ ২ কিলোমিটার পশ্চিমে অবস্থিত।', 'ষাট গম্বুজ মসজিদ বাংলাদেশের বাগেরহাট জেলার দক্ষিণ-পশ্চিমে অবস্থিত একটি প্রাচীন মসজিদ।মসজিদটির স্থাপত্যশৈলী দেখলে এটি যে খান জাহান আলী নির্মাণ করেছিলেন সে সম্বন্ধে কোনো সন্দেহ থাকে না। মসজিদটির নাম ষাট গম্বুজ (৬০ গম্বুজ) মসজিদ হলেও এখানে গম্বুজ মোটেও ৬০টি নয়,বরং গম্বুজ সংখ্যা ৭৭টি।'),
(13, 'Chittagong', 'Hill', 'Bandarban', 'image/bandarban.jpg', 'lux', 'বান্দরবান যাওয়ার সবচেয়ে সহজ উপায় হলো বাস।চট্টগ্রাম বহদ্দারহাট টার্মিনাল থেকে পূরবী এবং পূর্বাণী নামক দুটি নন এসি বাস আছে ১ ঘন্টা পর পর সরাসরি বান্দরবানের উদ্দ্যেশে ছেড়ে যায়। ভাড়া জনপ্রতি ৯০ টাকা। প্রতিদিন ভোর ৬ টা থেকে শুরু করে সন্ধ্যা ৬ টা পর্যন্ত প্রতি ১ ঘন্টা পর পর এই পরিবহনের বাসগুলো চট্টগ্রাম-বান্দরবান-চট্টগ্রাম রুটে যাতায়াত করে।  এখানকার সড়কপথে সংযোগগুলো হচ্ছে চিম্বুক - রুমা, বান্দরবান - রোয়াংছড়ি - রুমা, আজিজনগর - গজালিয়া - লামা, খানহাট - ধোপাছড়ি - বান্দরবান, বান্দরবান - চিম্বুক - থানচি - আলীকদম - বাইশারী - ঘুনধুম এবং চিম্বুক - টঙ্কাবতী - বারো আউলিয়া।', 'বান্দরবান জেলা বাংলাদেশের দক্ষিণ-পূর্বাঞ্চলে অবস্থিত চট্টগ্রাম বিভাগের একটি প্রশাসনিক অঞ্চল। এটি একটি পার্বত্য জেলা।'),
(14, 'Chittagong', 'Hill', 'Khagrachhari', 'image/khagrachori.jpg', 'lux', ' চট্টগ্রাম থেকে বিভিন্ন পরিবহনের অসংখ্য বাস রয়েছে সরাসরি খাগড়াছড়ি যাওয়ার।', 'খাগড়াছড়ি জেলা রিছাং ঝর্ণা রিছাং ঝর্ণা বাংলাদেশে খাগড়াছড়ি জেলার অবস্থান বাংলাদেশে খাগড়াছড়ি জেলার অবস্থান স্থানাঙ্ক: ২৩°২′৩০″ উত্তর ৯১°৫৯′৪০″ পূর্বস্থানাঙ্ক: ২৩°২′৩০″ উত্তর ৯১°৫৯′৪০″ পূর্ব | OSM মানচিত্র উইকিউপাত্তে এটি সম্পাদনা করুন দেশ	 বাংলাদেশ বিভাগ	চট্টগ্রাম বিভাগ প্রতিষ্ঠাকাল	৭ নভেম্বর, ১৯৮৩ সংসদীয় আসন	২৯৮ পার্বত্য খাগড়াছড়ি সরকার  • সংসদ সদস্য	কুজেন্দ্র লাল ত্রিপুরা (বাংলাদেশ আওয়ামী লীগ) আয়তন  • মোট	২৬৯৯.৫৬ কিমি২ (১০৪২.৩১ বর্গমাইল) জনসংখ্যা (২০১১)  • মোট	৫,২৫,৬৬৪  • ঘনত্ব	১৯০/কিমি২ (৫০০/বর্গমাইল) স্বাক্ষরতার হার  • মোট	৪৪.০৭% সময় অঞ্চল	বিএসটি (ইউটিসি+৬) পোস্ট কোড	৪৪০০ উইকিউপাত্তে এটি সম্পাদনা করুন প্রশাসনিক বিভাগের কোড	২০ ৪৬ ওয়েবসাইট	প্রাতিষ্ঠানিক ওয়েবসাইট Edit this at Wikidata খাগড়াছড়ি জেলা বাংলাদেশের দক্ষিণ-পূর্বাঞ্চলে অবস্থিত চট্টগ্রাম বিভাগের একটি প্রশাসনিক অঞ্চল। এটি একটি পার্বত্য জেলা।'),
(15, 'Chittagong', 'Lake', 'Bogalake', 'image/bogalake.jpg', 'no_lux', 'বান্দরবান শহর থেকে বগাহ্রদ যেতে হলে প্রথমে যেতে হবে রুমা বাজার। বান্দরবান থেকে রুমা বাজার এর দূরত্ব ৪৮ কিলোমিটার। লোকাল বাস কিংবা চাঁন্দের গাড়ি/জীপে করে রুমা বাজার যাওয়া যায়। বাসে যেতে হলে বান্দরবানের রুমা বাস স্ট্যান্ডে যেতে হবে। সেখান থেকে ১ ঘন্টা পর পর বাস রুমার উদ্দেশ্যে ছেড়ে যায়। জনপ্রতি ভাড়া ১২০ টাকা, সময় লাগবে ৩ ঘন্টার মত। দলগত ভাবে গেলে রুমা বাজার যেতে পারেন জীপ/চান্দের গাড়িতে করে। এক গাড়ীতে ১০-১৫ যাওয়া যায়। বান্দরবান শহরের জীপ স্টেশন থেকে ৩০০০-৪০০০ টাকা ভাড়ায় গাড়ি নিতে হবে। জীপে করে গেলে সময় লাগবে ২ ঘন্টার মত।রুমাবাজার থেকে বগাহ্রদের দূরত্ব ১৭ কিলোমিটার। অনুমতি নেবার পর রুমাবাজার থেকে জীপ/চান্দের গাড়ী ভাড়া করতে হবে। আপনাদের সদস্য সংখ্যা কম থাকলে অন্য কোন গ্রুপ পেলে তাদের সাথে কথা বলে একসাথে একটা গাড়ি ঠিক করে নিতে পারেন। রুমাবাজার থেকে বগাহ্রদের আগমহুর্তে কমলাবাজার পর্যন্ত যেতে পারবেন। ভাড়া লাগবে ২২০০-২৫০০ টাকা। কমলা বাজার নেমে, বাগাহ্রদ যেতে একটা পাহাড় উঠতে হবে। প্রায় ২৫ মিনিট পায়ে হেঁটে পাহাড়ে উঠার পরেই আপনি বগাহ্রদের দেখা পাবেন। বগাহ্রদ পৌঁছে সেখানের আর্মি ক্যাম্পে রিপোর্ট করতে হবে।', 'বগাকাইন হ্রদ বা বগা হ্রদ বা স্থানীয় নামে বগা হ্রদ বাংলাদেশের সর্বোচ্চ উচ্চতার স্বাদু পানির একটি হ্রদ। বান্দরবান শহর থেকে প্রায় ৭০ কিলোমিটার দূরে বগাকাইন হ্রদের অবস্থান কেওকারাডং পর্বতের গা ঘেষে, রুমা উপজেলায়। সমুদ্রপৃষ্ঠ থেকে এর উচ্চতা প্রায় ২,৪০০ ফুট (কিওক্রাডাং-এর উচ্চতা ৩,১৭২ ফুট)। ফানেল বা চোঙা আকৃতির আরেকটি ছোট পাহাড়ের চুড়ায় বগা হ্রদের অদ্ভুত গঠন অনেকটা আগ্নেয়গিরির জ্বালামুখের মতো।'),
(16, 'Chittagong', 'Hill', 'Keokradong', 'image/keokradong.jpg', 'no_lux', 'প্রথমে বান্দরবন আসতে হবে। চট্রগ্রামের বিআরটিসি টার্মিনাল বা দামপাড়া বাস স্ট্যান্ড থেকে ১০০-৩০০ টাকায় বাস ভাড়ায় বান্দরবন আসা যায়। চট্রগ্রাম থেকে প্রাইভেট কারে ২৫০০-৩৫০০ টাকায় বান্দরবন যাওয়া যায়।বান্দরবান থেকে বাস করে রুমা সদর উপজেলা যাওয়া যায়। প্রতি এক ঘণ্টা পরপর একটি করে বাস বান্দরবান থেকে রুমা বাজারের উদ্দেশ্যে ছেড়ে যায়। সেখান থেকে পরবর্তী গন্তব্য বগা হ্রদ। বগা হ্রদে দুইভাবে পৌঁছানো যায়। ঝিরিপথে হেঁটে বা চান্দের গাড়িযোগে।বগা লেক থেকে বাকীপথ ট্রেক করে এগিয়ে যেয়ে, দার্জিলিংপাড়া হয়ে বাংলাদেশের অন্যতম উচ্চতম শৃঙ্গ কেওক্রাডংয়ে যাওয়া যায়।', 'কেওক্রাডং (ইংরেজী: Keokradong) নামে সুপরিচিত, বাংলাদেশের তৃতীয় সর্বোচ্চ পর্বতশৃঙ্গ। এটি বাংলাদেশের দক্ষিণ-পূর্বাঞ্চলীয় জেলা বান্দরবানে অবস্থিত। এক সময় এটিকে বাংলাদেশের সর্বোচ্চ পর্বতশৃঙ্গ ধরা হত। তবে আধুনিক গবেষণায় এই তথ্য ভুল প্রমাণিত হয়েছে। বর্তমানে বাংলাদেশের সর্বোচ্চ শৃঙ্গ সাকা হাফং।'),
(17, 'Chittagong', 'Waterfall', 'Nafa khum Waterfalls', 'image/nafakhum.jpg', 'no_lux', 'বান্দরবান শহর থেকে থানচি উপজেলা সদরের দূরত্ব ৭৯ কিঃমিঃ। রিজার্ভ চাঁদের গাড়ীতে বান্দরবান থেকে থানচি যেতে সময় লাগে ৩ ঘন্টা। বর্ষায় ইঞ্জিনবোটে থানচি থেকে তিন্দু যেতে সময় লাগে আড়াই ঘন্টা। তিন্দু থেকে রেমাক্রি যেতে লাগবে আরও আড়াই ঘন্টা। শীতের সময় ইঞ্জিন বোট চলার মত নদীতে যথেষ্ট গভীরতা থাকেনা। তখন ঠ্যালা নৌকাই একমাত্র বাহন। রেমাক্রি বাজার থেকে দুইভাবে নাফাখুম-এ যাওয়া পথ আছে। এক ঘন্টা উঁচু-নীচু পাহাড়ী পথ মাড়িয়ে (পাহাড় ডিঙিয়ে) তারপর রেমাক্রি খালের পাড় ধরে বাকিটা হেঁটে এই পথে চার ঘন্টা লাগে নাফাখুমে পৌঁছাতে। এতে রেমাক্রি খাল ক্রস করতে হয় তিন বার এবং শেষের দিকে সাঁতার পানি পেরুতে হয়। অপরদিকে আবার পাহাড় না ডিঙিয়ে গোটা পথই রেমাক্রি খালের পাশ দিয়েও যাওয়া যায়।', 'বান্দরবান জেলার থানচি উপজেলার রেমাক্রি ইউনিয়নে এই জলপ্রপাতটি অবস্থিত। বান্দরবান জেলার থানচি উপজেলার রেমাক্রি একটি মারমা অধু্যসিত এলাকা। বান্দরবন হতে ৭৯ কিঃমিঃ দুরে অবস্থিত থানচি। সাঙ্গু নদীর পাড়ে অবস্থিত থানচি বাজার। এই সাঙ্গু নদী ধরে রেমাক্রীর দিকে ধীরে ধীরে উপরে উঠতে হয় নৌকা বেঁয়ে। কারণ নদীটি রেমাক্রী হতে থানচির দিকে ধীরে ধীরে ঢালু হয়ে এসেছে এবং এই জন্য এখানে অনেক স্রোত থাকে। নদীর কিছুদূর পর পর ১-২ ফুট এমন কি কোথাও কোথাও ৪/৫ ফুট পর্যন্ত ঢালু হয়ে নিচে নেমেছে। নদীর দুপাশে সবুজে মোড়ানো উচু উচু পাহাড় রয়েছে। কোন কোন পাহাড় এতই উচু যে তার চূড়া ঢেকে থাকে মেঘের আস্তরে। সবুজে ঘেরা সে পাহাড়ে মাঝে মাঝে দু একটি উপজাতী বসতঘর দেখা যায়। পাহাড়ের ঢালুতে টিন আর বেড়ার ঘর গুলো মারমা ভাষায় বলে ‘খুম’ মানে হচ্ছে জলপ্রপাত। রেমাক্রি থেকে তিন ঘন্টার হাঁটা পথ দূরত্বে এই জলপ্রপাত।'),
(18, 'Chittagong', 'Sea', 'Saint Martin Island', 'image/saint.jpg', 'no_lux', 'কক্সবাজার থেকে গেলে প্যাকেজ নিয়ে যাওয়াই ভালো। কক্সবাজারে যে হোটেলে থাকবেন, তাদের কাছে বললে তারা ব্যবস্থা করে দিবে। তবে তাদের কাছে শুধু ট্রান্সপোর্ট এর সুবিধা ও আলাদা করে নেয়া যায়। এর সুবিধা হল খুব ভোরে উঠে টেকনাফ যাওয়ার জন্য বা শিপের টিকেটের জন্য আলাদা করে দৌড় ঝাঁপ করতে হবে না। কক্সবাজার থেকে টেকনাফ, শিপের রিটার্ন টিকেট(সেন্ট মার্টিন যাওয়া এবং আসা) এবং আবার টেকনাফ থেকে কক্সবাজার নিয়ে আসা সব মিলিয়ে খরচ হয় ১০০০-২০০০ টাকা (শিপের ক্লাস ভেদে খরচ বাড়ে-কমে)।', 'প্রবাল দ্বীপ ‘সেন্ট মার্টিন’ এর অবস্থান বাংলাদেশের সর্ব দক্ষিণের জেলা কক্সবাজারের টেকনাফ উপজেলায়। টেকনাফের সর্ব শেষ অংশ অর্থাৎ শাহ্‌পরীর দ্বীপ হতে প্রায় ১৩ কিলোমিটার ও টেকনাফ হতে প্রায় ৩৫ কিলোমিটার দক্ষিণে বঙ্গোপসাগর এর বুকে এই দ্বীপ এর অবস্থান।'),
(19, 'Chittagong', 'Sea', 'Neval Beach', 'image/nevalbeach.jpg', 'lux', 'চট্টগ্রাম শহর হতে এয়ারপোর্ট যাওয়ার পথে নেভাল বিচ ', 'চট্টগ্রাম নেভাল একাডেমি সংলগ্ন চট্টগ্রাম বন্দর তীরবর্তী এলাকা। একাডেমির রাস্তা ঘেঁসে রয়েছে পতেঙ্গা সমুদ্র তীর।'),
(20, 'Sylhet', 'Any', 'Hazrat Shahjalal Mazar Sharif', 'image/shajalaldorga.jpg', 'no_lux', 'সিলেট রেল স্টেশন অথবা কদমতলী বাস স্ট্যান্ড হতে সিএনজি, রিকশা বা অটোরিকশা দিয়ে সহজেই মাজারে যাওয়া যায়। রিকশায় গেলে সাধারণত ভাড়া লাগে ২০-২৫ টাকা আর সিএনজিতে গেলে ৮০-১০০ টাকা ভাড়া লাগবে।', '৩৬০ আউলিয়ার সিলেট নগরী পূন্যভূমি হিসাবে খ্যাত। সিলেটের মাটিতে যেসব পীর, দরবেশ শায়িত আছেন এদের মধ্যে হযরত শাহজালাল (রঃ) অন্যতম, এজন্য তাঁকে ওলিকুল শিরোমণি বলা হয়। হযরত শাহ জালাল (রঃ) সকল ধর্মের মানুষের কাছে সমাদৃত ছিলেন। তাই প্রতি বছর হযরত শাহজালাল (রঃ) মাজার জিয়ারতে ধর্ম-বর্ণ নির্বিশেষে মানুষের ঢল দেখা করা যায়।'),
(21, 'Sylhet', 'Any', 'Jadukata River', 'image/jadukatariver.jpg', 'no_lux', 'সুনামগঞ্জ বাস স্ট্যান্ড থেকে সিএনজি কিংবা মোটরসাইকেল ভাড়া করে চলে যান লাউড়ের গড় হয়ে যাদুকাটা নদী দেখতে। মোটরসাইকেল ভাড়া নিবে ২০০-২৫০ টাকার মত। এক মোটরসাইকেলে দুইজন উঠা যাবে। যাদুকাটা নদীর সবচেয়ে সুন্দর দৃশ্য দেখতে বারিক্কা টিলায় উঠে পড়ুন। যা দেখবেন আপনার চোখ জুড়িয়ে যাবে।', 'যাদুকাটা নদী বা জাদুকাটা নদী (Jadukata River) সুনামগঞ্জ জেলায় বাংলাদেশ ভারতের উত্তর পূর্ব সীমান্তের কোল ঘেসে বয়ে চলেছে। রেণুকা হচ্ছে যাদুকাটা নদীর আদি নাম। জনশ্রুতি আছে, নদী তীরবর্তী কোন এক গাঁয়ের বধু তার শিশুপুত্র যাদুকে কো‌লে নি‌য়ে এই নদীর মাছ কাট‌ছি‌লেন এক পর্যায়ে অন্যমনষ্ক হ‌য়ে মা‌ছের জায়গায় তার কোলের শিশুকে কেটে ফেলেন। পরবর্তীতে সেই প্রচলিত কাহিনী থেকেই নদীটির নাম হয় যাদুকাটা নদী। মেঘালয়ের খাসিয়া পাহাড় হতে বয়ে চলে যাদুকাটা নদীটি প্রায় বিশ মাইল পর্যন্ত গিয়ে ‘রক্তি’ নামে সুরমা নদীতে এসে মিলিত হয়েছে। নদীর এক পাড়ে দেখা যায় সবুজ বৃক্ষরাজিময় বারেক টিলা ও অন্য দিকে খাসিয়া পাহাড়।'),
(22, 'Sylhet', 'Waterfall', 'Pangthumai Waterfall', 'image/pangthumaiwaterfall.jpg', 'no_lux', 'সিলেট নগরীর আম্বরখানাপয়েন্ট থেকে সি এন জি ট্যাক্সি নিয়ে গোয়াইনঘাট বাজারে থানা সংলগ্ন বাজারে যাবেন। ভাড়া পড়বে আনুমানিক ৪০০-৫০০ টাকা । সেখান থেকে আবার ট্যাক্সি নিয়ে পশ্চিম জাফলং ইউনিয়ন এর পাংথুমাই গ্রামে যাওয়া যায় । ভাড়া পড়বে আনুমানিক ১৫০-২০০ টাকা ।', 'সিলেটের সীমন্তাবর্তী উপজেলা গোয়াইনঘাটের পশ্চিম জাফলং ইউপির একটি গ্রাম পান্তুমাই। গ্রামের পাশ দিয়ে বয়ে চলেছে খড়স্রোতা পিয়াইন নদী। পাশের দেশ ভারতের মেঘালয় রাজ্যের সু-উচ্চ পাহাড় যেনো পান্তুমাই গ্রামের উপর দাড়িয়ে আছে। পিয়াইন নদীর মূল জলধারা এই মেঘালয়ের ঝর্ণাগুলো থেকেই সৃষ্ট। মেঘালয় রাজ্যের ইস্ট খাসিয়া হিল জেলার পাইনেচুলা থানার অন্তগর্ত পাহাড়ী ঝর্ণা বপহিল। এই বপহিল ঝর্ণাটাই আমাদের পান্তুমাই গ্রামে থেকে দেখা যায় বলে আমরা একে বলে থাকি পান্তুমাইয়ের ঝর্ণা বা পান্তুমাই ঝর্ণা। মূলত আমরা এই ঝর্ণার পানি পাই আর সৌন্দর্য্য দেখতে পারি, ওকে হাতে ছুয়ে দেখতে হলে ভিসা পাসপোর্ট ইত্যাদি ঝামেলাটা থেকেই যায়। গত ১৫ আগষ্ট মুসলধারে বৃষ্টি মাথায় নিয়ে গিয়েছিলাম পান্তুমাই ঝর্ণা দেখতে ।'),
(23, 'Sylhet', 'Nature', 'Khadimnagar National Park', 'image/khadimnagarnationalpark.jpg', 'no_lux', 'সিলেটে থেকে বাস, মাইক্রোবাস, সিএনজি অটোরিকশা বা লেগুনায় যাওয়া যায় খাদিমনগর ন্যাশনাল পার্কে। সিলেট শহর থেকে জাফলং রোড ধরে ১০ কিমি এর মতো এগুলেই শাহপরান মাজার গেট পেরুনোর পর পরই খাদিম চৌমুহনা।', 'খাদিমনগর জাতীয় উদ্যান বাংলাদেশের সিলেট জেলায় অবস্থিত একটি জাতীয় উদ্যান। ২০০৬ সালের ১৩ এপ্রিল এটি প্রতিষ্ঠিত হয়। ৬৭৮.৮০ হেক্টর (১৬৭৭ একর) জমি নিয়ে এই জাতীয় উদ্যানটি গঠিত।খাদিমনগর জাতীয় উদ্যানে প্রায় ২১৭ প্রজাতির গাছ এবং ৮৩ প্রজাতির প্রাণী রয়েছে।উদ্যানে আছে প্রচুর সেগুন গাছ। এছাড়াও দেখা যায় ঢাকি জাম, গর্জন, চম্পা ফুল, চিকরাশি, চাপালিশ, মেহগনি, শিমুল, চন্দন, জারুল, আম, জাম, কাউ, লটকন, বন বড়ই, জাওয়া, কাইমূলা, গুল্লি, পিতরাজ, বট, আমলকি, হরিতকি, বহেড়া, মান্দা, পারুয়া, মিনজিরি, অর্জুন, একাশিয়া প্রভৃতি।পাখির মধ্যে রয়েছে দোয়েল, ময়না, শ্যামা, কাক, কোকিল, টিয়া, কাঠ ঠোকরা, মাছরাঙ্গা, চিল, ঘুঘু, বক, টুনটুনি, চড়ুই, বুলবুলি, বনমোরগ, মথুরা, শালিক। স্তন্যপায়ীর মধ্যে রয়েছে বানর, হনুমান, শিয়াল, বনবিড়াল, বেজি, কাঠবিড়াল, ইঁদুর, খরগোশ, মেছো বাঘ। সাপের মধ্যে আছে অজগর, দারাইশ, উলুপুড়া, চন্দ বুড়াসহ নানা বিষধর সাপ।'),
(24, 'Sylhet', 'Nature', 'Keane Bridge', 'image/surmabridge.jpg', 'no_lux', 'সিলেট রেলওয়ে স্টেশন থেকে এই ব্রীজটি মাত্র আধা কিলোমিটার দূরে অবস্থিত।প্রাইভেট কার, সিএনজি বা অটোরিকশা ভাড়া বা রিজার্ভ নিয়ে সজজেই আসতে পারবেন।', 'ক্বীন ব্রীজ হলো বাংলাদেশের সিলেট শহরের মধ্য দিয়ে প্রবাহিত সুরমা নদীর উপর স্থাপিত একটি লৌহ নির্মিত সেতু। এটি সিলেটের অন্যতম দর্শনীয় এবং ঐতিহ্যবাহী স্থান হিসাবে সবার কাছে পরিচিত। সুরমা নদীর ওপর নির্মিত এই স্থাপনাটি একটি ঐতিহাসিক নিদর্শন হিসাবেও বিশেষভাবে গুরুত্বপূর্ণ। এই ব্রীজটিকে সিলেট শহরের \"প্রবেশদ্বার\" বলা হয়।'),
(25, 'Sylhet', 'Museum', 'MAG Osmani museum', 'image/osmanymeseum.jpg', 'no_lux', 'ওসমানী জাদুঘর সিলেট ওসমানী আন্তর্জাতিক বিমানবন্দর থেকে ১২ কিলোমিটার দূরে এবং সিলেট রেলওয়ে স্টেশন থেকে ৩ কিলোমিটার দূরে অবস্থিত। প্রাইভেট কার, সিএনজি বা অটোরিকশা ভাড়া বা রিজার্ভ নিয়ে সজজেই আসতে পারবেন।', 'ওসমানী জাদুঘর হচ্ছে বাংলাদেশের সিলেট জেলার কোতোয়ালী থানায় অবস্থিত একটি জাদুঘর। বাংলাদেশ সামরিক বাহিনীর সর্বাধিনায়ক (১২ এপ্রিল ১৯৭১– ৭ এপ্রিল ১৯৭২) বঙ্গবীর জেনারেল মুহাম্মদ আতাউল গনি ওসমানীর পৈতৃক নিবাস থেকে পরিবর্তন করে বর্তমান \"ওসমানী জাদুঘরে\" স্থানান্তর করা হয়। এটি বাংলাদেশের সুপরিচিত সিলেট বিভাগের প্রাণ কেন্দ্র (ধোপা দিঘীর পাড়) সিলেট সিটি কর্পোরেশন এলাকায় অবস্থিত।'),
(26, 'Sylhet', 'Park', 'Dreamland Amusement Park', 'image/dreamlandpark.jpg', 'no_lux', 'সিলেট শহর থেকে প্রাইভেট কার, সিএনজি বা অটোরিকশা ভাড়া বা রিজার্ভ নিয়ে সজজেই ড্রিমল্যান্ড পার্কে আসতে পারবেন। এছাড়া সিলেটের জকিগঞ্জ রুটে চলাচলকারি বাসে করে সহজে ড্রিমল্যান্ড পার্কে পৌঁছাতে পারবেন। আর সিলেটের কদমতলী পয়েন্ট থেকে লকাল বাসে চড়েও পার্কে আসতে পারবেন। সিলেট থেকে ড্রিমল্যান্ড পার্কে যেতে জনপ্রতি বাস ভাড়া লাগে ১২ টাকা, আর লেগুনা ও সিএনজি ভাড়া যথাক্রমে ১০ ও ১৫ টাকা।', 'ড্রিমল্যান্ড পার্ক (Dreamland Amusement and Water Park) সিলেট থেকে মাত্র ১০ কিলোমিটার দূরে সিলেট-জকিগঞ্জ সড়কের গোলাপগঞ্জের হিলালপুর গ্রামে অবস্থিত। প্রায় ১০০ একর জায়গা জুড়ে গড়ে উঠা এই পার্কে বিভিন্ন আকর্ষনীয় আধুনিক সব রাইডের পাশাপাশি রয়েছে ওয়াটার পার্কের সমস্ত আয়োজন। ড্রিমল্যান্ড পার্কটিতে প্রাকৃতিক সৌন্দর্য্যের সাথে আধুনিক বিনোদনের সমন্বয় করা হয়েছে যা এই ড্রিমল্যান্ড পার্কটিতে আগত দর্শনার্থীদের মুগ্ধ করে। সপ্তাহের সাত দিনই ড্রিমল্যান্ড পার্কটি খোলা থাকে এবং ড্রিমল্যান্ড পার্কে প্রবেশ করতে ১০০ টাকা দিয়ে প্রবেশ টিকেট সংগ্রহ করতে হয়। সপ্তাহের ৭ দিন সকাল ১১টা থেকে সন্ধ্যা ৮টা পর্যন্ত ড্রিমল্যান্ড পার্ক সবার জন্য উন্মুক্ত থাকে। আর ওয়াটার পার্ক খোলা থাকে সকাল ১১.৩০ থেকে সন্ধ্যা ৭টা পর্যন্ত।'),
(27, 'Sylhet', 'Lake', 'Madhabpur Lake', 'image/madhabpurlake.jpg', 'no_lux', 'সিলেট থেকে মাধবকুন্ড যেতে চাইলে কদমতলী বাস স্ট্যান্ড থেকে বড়লেখা হয়ে যে বাস কুলাউড়া যায় সেই বাসে উঠে যেতে পারেন অথবা বড়লেখা চলে আসবেন। বড়লেখা থেকে রিসার্ভ সিএনজি দিয়ে মাধবকুন্ড যেতে পারবেন অথবা বড়লেখা থেকে লোকাল সিএনজি দিয়ে কাঠালতলী বাজার এসে সেখানে থেকে রিসার্ভ/লোকাল সিএনজি তে করে মাধবকুণ্ড যেতে পারবেন।শ্রীমঙ্গল থেকে মাধবকুন্ড যেতে চাইলে সরাসরি সিএনজি/জীপ রিসার্ভ করে যেতে পারবেন। অথবা বড়লেখা গামী কোন লোকাল বাসে করে বড়লেখার আগে কাঁঠালতলী বাজারে নেমে যেতে হবে। সেখান থেকে রিসার্ভ/লোকাল সিএনজি দিয়ে মাধবকুন্ড যাওয়া যায়।মাধবকুন্ড থেকে প্রায় অর্ধ কিলোমিটার পথ হেটে গেলেই মাধবকুন্ড ঝর্নার দেখা মিলবে। তার আগে অবশ্য ১০ টাকা টিকেট মূল্য দিয়ে পর্যটন এলাকায় প্রবেশ করতে হবে। আর মাধবকুন্ড ঝর্ণার কাছেই পরিকুন্ড নামে আরও একটি ঝর্না আছে। ঝিরি ধরে ১০-১৫ মিনিট হেঁটে গেলেই সেই ঝর্ণার দেখা পাওয়া যাবে। এছাড়া মাধবকুন্ড ইকোপার্ক এর চারপাশে ঘুরে দেখতে খারাপ লাগবেনা। চাইলে দিনের পুরোটা সময় এইখানে ব্যয় করতে পারবেন।', 'মাধবকুন্ড জলপ্রপাত (Madhabkunda Waterfall) মৌলভীবাজার জেলার বড়লেখা উপজেলায় অবস্থিত। কিছু বছর আগেও মাধবকুন্ড ছিল বাংলাদেশের জলপ্রপাত প্রেমী পর্যটকদের কাছে একমাত্র আকর্ষন। বর্তমানে বাংলাদেশে আরো বেশ কিছু ঝর্ণা আবিষ্কৃত হয়েছে। তবু পর্যটকদের কাছে মাধবকুন্ড ঝর্ণার আবেদন একটুও কমেনি তাই সরকারী উদ্যোগে এখানে গড়ে উঠেছে বাংলাদেশ পর্যটন কর্পোরেশনের রেস্টহাউজ ও রেস্টুরেন্ট আর সম্পূর্ন এলাকাকে নিয়ে গড়ে তোলা হয়েছে মাধবকুন্ড ইকোপার্ক। অনিন্দ্য সুন্দর এ জলপ্রপাত প্রায় ১৬২ ফুট উঁচু আর মাধবকুন্ড ঝর্ণা থেকে ১৫-২০ মিনিট হাটলে পরিকুন্ড ঝর্ণা নামে আরেকটি ঝর্ণা চোখে পড়ে। এছাড়া এখানে আছে দিগন্তজোড়া চা বাগান, খাসিয়া পল্লী, কমলা, লেবু, সুপারী ও পানের বাগান আবার কোথাও কোথাও জুম চাষেরও দেখা মিলবে।'),
(28, 'Sylhet', 'Lake', 'Baikka Beel', 'image/baikkabeel.jpg', 'no_lux', '', ''),
(29, 'Dhaka', 'Park', 'Nandan Park', 'image/nandanpark.jpg', 'no_lux', 'ঢাকার মতিঝিল থেকে এখানে বাসযোগে পৌঁছতে সময় লাগে প্রায় দুই ঘন্টা। হানিফ, সুপার ও আজমেরী বাস সার্ভিস যোগে নন্দনে যাতায়াত করা যায়। এছাড়া ব্যক্তিগত গাড়ি নিয়েও এখানে আসা যায়। ', 'সাভারের নবীনগর-চন্দ্রা হাইওয়ের বাড়ইপাড়া এলাকায় প্রায় ৩৩ একর জমির উপর ২০০৩ সালের অক্টোবর মাস থেকে নন্দন থিম পার্কের যাত্রা শুরু। নন্দন থিম পার্কটির বিশেষত্ব হচ্ছে সবুজের সমারোহ। হাটতে হাটতে ক্লান্ত হলে/জিরিয়ে নিতে বসতে পারেন ঘাসের সবুজ গালিচাতে। আন্তর্জাতিক মানের রাইড, মানসম্পন্ন খাবারের দোকান ও প্রাকৃতিক পরিবেশ সত্যিই ভ্রমনকারীদের বারংবার নন্দন পার্কে আসার ইচ্ছা জাগায়। সাথে রয়েছে সুনিশ্চিত নিরাপত্তা ব্যবস্থা ও হকার মুক্ত পরিবেশ।'),
(30, 'Dhaka', 'Park', 'Fantasy Kingdom', 'image/fantasykingdom.jpg', 'no_lux', 'ঢাকা থেকে সাভার যাওয়ার পথেই পড়বে বাংলাদেশের সর্বপ্রথম থিম পার্ক ফ্যান্টাসি কিংডম। বাস সার্ভিস যোগে যাতায়াত করা যায়। এছাড়া ব্যক্তিগত গাড়ি নিয়েও এখানে আসা যায়। ', 'ফ্যান্টাসি কিংডম থিম পার্ক, মূলত ফ্যান্টাসি কিংডম নামেই পরিচিত। বাংলাদেশের ঢাকার অদূরে আশুলিয়া থানার জামগড়া এলাকায় অবস্থিত একটি বিনোদন পার্ক। ফ্যান্টাসি কিংডম ২০০২ সালের ১৯ ফেব্রুয়ারী ইং তারিখে প্রতিষ্ঠিত হয়। এই পার্কটির রক্ষণাবেক্ষণা ও পরিচালনা কনকর্ড এন্টারটেইনমেন্ট কোম্পানি লিমিটেড; যা কনকর্ড গ্রুপের একটি সহযোগী প্রতিষ্ঠান।  থিম পার্কটি প্রায় ৮০ একর জায়গা জুড়ে অবস্থিত, যার মধ্যে একটি থিম পার্ক, একটি ওয়াটার পার্ক, শুষ্ক পার্ক এবং হেরিটেজ কর্নার রয়েছে।  বর্তমান সময়ে, ফ্যান্টাসি কিংডম বাংলাদেশে সর্বাধিক পরিদর্শিত থিম পার্ক, যার গড় বার্ষিক উপস্থিতি ৬ কোটি।'),
(31, 'Dhaka', 'Historical', 'Jatiyo Sriti Shoudho', 'image/jatiyosritishoudho.jpg', 'no_lux', 'আকাশ পথে পৃথিবীর যেকোন স্থান থেকে আকাশ পথে ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।  স্থলপথে বাস বা ট্রেনে ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।', 'জাতীয় স্মৃতিসৌধ বাংলাদেশের স্বাধীনতা যুদ্ধের শহীদদের স্মৃতির উদ্দেশ্যে নিবেদিত একটি স্মারক স্থাপনা। এখানে মুক্তিযুদ্ধে নিহতদের দশটি গণকবর রয়েছে। বিদেশী রাষ্ট্রনায়কগণ সরকারীভাবে বাংলাদেশ সফরে আগমন করলে এই স্মৃতিসৌধে শ্রদ্ধা নিবেদন রাষ্ট্রাচারের অন্তর্ভুক্ত। ১৯৭২ খ্রিস্টাব্দের ১৬ ডিসেম্বর বিজয় দিবসে বাংলাদেশের রাষ্ট্রপতি শেখ মুজিবুর রহমান ঢাকা শহর থেকে ২৫ কিলোমিটার দূরে ঢাকা-আরিচা মহাসড়কের পাশে নবীনগরে এই স্মৃতিসৌধের শিলান্যাস করেন। ১৯৭৮ খ্রিস্টাব্দে রাষ্ট্রপতি জিয়াউর রহমান স্মৃতিসৌধটি নির্মাণের উদ্যাগ গ্রহণ করেন এবং নক্‌শা আহবান করা হয়। ১৯৭৮-এর জুন মাসে প্রাপ্ত ৫৭টি নকশার মধ্যে সৈয়দ মাইনুল হোসেন প্রণীত নকশাটি গৃহীত হয়। ১৯৭৯ খ্রিস্টাব্দে মূল স্মৃতিসৌধের নির্মাণ কাজ শুরু হয় এবং ১৯৮২ খ্রিস্টাব্দে বিজয় দিবসের অল্প পূর্বে সমাপ্ত হয়। র্তমানে সৌধটির নির্মাণ কাজ তিন পর্যায়ে মোট ১৩.০০ কোটি টাকা ব্যয়ে সম্পন্ন হয়।'),
(32, 'Dhaka', 'Museum', 'Bangladesh National Meseum', 'image/nationalmeseum.jpg', 'no_lux', 'আকাশ পথে পৃথিবীর যেকোন স্থান থেকে আকাশ পথে ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।  স্থলপথে বাস বা ট্রেনে ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।', 'এখানে নৃতত্ব, চারুকলা, ইতিহাস, প্রকৃতি এবং আধুনিক ও বিশ্ব-সভ্যতা, বাংলাদেশের মুক্তিযুদ্ধ ইত্যাদি বিষয়ে আলাদা ৪৪টি প্রদর্শনীকক্ষ (গ্যালারি) রয়েছে। এছাড়া এখানে একটি সংরক্ষণাগার, গ্রন্থাগার, মিলনায়তন, আরকাইভ, সিনেস্কেইপ এবং চলচ্চিত্র প্রদর্শনালয় রয়েছে।  জাতীয় জাদুঘরের নিদর্শনাদির বিভাগগুলো হচ্ছেঃ-  ইতিহাস ও ধ্রুপদী শিল্পকলা জাতিতত্ত্ব ও অলঙ্করণ শিল্পকলা সমকালীন শিল্পকলা ও বিশ্বসভ্যতা প্রাকৃতিক ইতিহাস বিভাগ সংরক্ষণ গবেষণাগার এছাড়া রয়েছে জনশিক্ষা বিভাগ।'),
(33, 'Dhaka', 'Park', 'Ramna Park', 'image/ramnapark.jpg', 'no_lux', 'আকাশ পথে পৃথিবীর যেকোন স্থান থেকে আকাশ পথে ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।  স্থলপথে বাস বা ট্রেনে ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।', 'এই উদ্যানটি ১৬১০ সালে মোঘল আমলে প্রতিষ্ঠা করা হয়। সেই সময়ে রমনার পরিসীমা ছিল বিশাল এলাকা জুড়ে। মোঘলরাই রমনার নামকরণ করেন। পুরানো হাইকোর্ট ভবন থেকে পূর্বের সড়ক ভবন পর্যন্ত মোঘলরা বাগান তৈরী করেছিলেন। কিন্তু পরবর্তীতে কোম্পানী আমলে এ এলাকা জঙ্গলে পরিণত হয়। ১৯ শতকে ব্রিটিশ শাসক এবং ঢাকার নবাবদের সহায়তায় এটির উন্নয়ন সাধন করা হয়। ঢাকা শহরের নিসর্গ পরিকল্পনার কাজ শুরু হয়েছিল ১৯০৮ সালে লন্ডনের কিউই গার্ডেনের অন্যতম কর্মী আর. এল প্রাউডলকের তত্ত্বাবধায়নে। শহরের সেই নিসর্গ পরিকল্পনার ফল ছিল রমনা পার্কের উন্নয়ন। ২০ বছর লেগেছিল সে কাজ শেষ হতে। [১]  বর্তমানে রমনা পার্কে প্রতি বছর পহেলা বৈশাখে বর্ষবরণ অনুষ্ঠান হয়। রমনার বটমুলে ছায়ানটের আয়োজনে বর্ষবরণ অনুষ্ঠান এখন অনেক জনপ্রিয়।'),
(34, 'Dhaka', 'Any', 'Bangabandhu Novo Theatre', 'image/bangabandhunovotheatre.jpg', 'no_lux', 'আকাশ পথে পৃথিবীর যেকোন স্থান থেকে আকাশ পথে ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।  স্থলপথে বাস বা ট্রেনে ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে। নভোটিয়েটার প্রতিদিন সকাল ১০.০০ থেকে সন্ধ্যা ৭.০০ পর্যন্ত খোলা থাকে। বুধবার এবং সকল সরকারী ছুটির দিনে থিয়েটার বন্ধ থাকে।', 'বঙ্গবন্ধু শেখ মুজিবুর রহমান নভোথিয়েটার  দেশের মানুষ বিশেষ করে নতুন প্রজন্মকে বিজ্ঞানমনস্ক করে গড়ে তোলা এবং বিনোদনের মাধ্যমে মহাকাশের গ্রহ-নক্ষত্র সম্পর্কে ধারণা প্রদানের লক্ষ্যে ১৯৯৫ সালে বঙ্গবন্ধু শেখ মুজিবুর রহমানের নামে প্রথম একটি নভোথিয়েটার স্থাপনের পরিকল্পনা নেওয়া হয়।নভোথিয়েটারে অ্যাক্রোবেটিক এ্যারোপ্লেন, রেসিং কার, স্পেস ক্র্যাপ্ট, মনোরেল, এয়ারক্র্যাপ্ট ফাইবার এবং প্রাচীন পিরামিডের কোস্টারে চড়ে ভ্রমণের শিহরণ লাভের জন্য অনুভূমিক ও উল্লম্বভাবে গতিবিশিষ্ট স্পেস রাইড সিমুলেটর রয়েছে। আসন সংখ্যা ৩০। জনপ্রতি টিকিটের মূল্য ২০ টাকা।  নভোথিয়েটারে প্রদর্শনী ছাড়াও রয়েছে সৌরজগতের গ্রহসমূহের মডেল, তারকাসমূহের মডেল, চাঁদ, সূর্য ও পৃথিবীর মডেল, ট্রান্সপারেন্ট সেলেসিয়াল গ্লোব ইত্যাদি এবং বিশ্ববিখ্যাত বিজ্ঞানীদের ছবি।'),
(35, 'Dhaka', 'Historical', 'Jatiya Sangsad Bhaban', 'image/jatiyosritishoudho.jpg', 'no_lux', 'ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।', 'বাংলাদেশে এখন পর্যন্ত অনুষ্ঠিত আটটি সংসদ নির্বাচনের মধ্যে প্রথম ও দ্বিতীয় নির্বাচনের পর গঠিত সংসদের অধিবেশনগুলি অনুষ্ঠিত হয় পুরনো সংসদ ভবনে, যা বর্তমানে প্রধানমন্ত্রীর কার্যালয় হিসাবে ব্যবহৃত হচ্ছে।  তৎকালীন পাকিস্তান সরকার পূর্ব পাকিস্তান (বর্তমান বাংলাদেশ) ও পশ্চিম পাকিস্তানের (বর্তমান পাকিস্তান) জন্য আইনসভার জন্য জাতীয় সংসদ ভবনের নির্মাণ শুরু হয় ১৯৬১ সালে। ১৯৮২ সালের ২৮শে জানুয়ারি নির্মাণ কাজ সম্পন্ন হওয়ার পর একই বছরের ১৫ই ফেব্রুয়ারি বাংলাদেশের দ্বিতীয় সংসদের অষ্টম (এবং শেষ) অধিবেশনে প্রথম সংসদ ভবন ব্যবহৃত হয়। তখন থেকেই আইন প্রণয়ন এবং সরকারি কর্মকাণ্ড পরিচালনার মূল কেন্দ্র হিসাবে এই ভবন ব্যবহার হয়ে আসছে।'),
(36, 'Dhaka', 'Nature', 'National Zoo', 'image/nationalzoo.jpg', 'no_lux', 'ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।', 'বাংলাদেশের জাতীয় চিড়িয়াখানা (ইংরেজি: Bangladesh National Zoo) ঢাকার মিরপুরে স্থাপিত। এটি বাংলাদেশ সরকারের মৎস্য ও পশুসম্পদ মন্ত্রণালয়ের অধীনস্থ একটি প্রতিষ্ঠান। ১৯৫০ সালে হাইকোর্ট চত্বরে জীবজন্তুর প্রদর্শনশালা হিসেবে প্রতিষ্ঠিত হয় চিড়িয়াখানাটি। পরবর্তীকালে ১৯৭৪ সালে বর্তমান অবস্থানে স্থানান্তরিত হয় এটি। চিড়িয়াখানাটি উদ্বোধন ও সর্বসাধারণের জন্য উন্মুক্ত হয় ১৯৭৪ সালের ২৩ জুন। বছরে প্রায় ৩০ লক্ষ দর্শনার্থী ঢাকা চিড়িয়াখানা পরিদর্শন করে থাকেন। ২০১৫ সালের ৫ ফেব্রুয়ারি নাম পরিবর্তন করে ঢাকা চিড়িয়াখানা থেকে বাংলাদেশ জাতীয় চিড়িয়াখানা নামকরণ করা হয়।'),
(37, 'Dhaka', 'Historical', 'National Botanical Garden of Bangladesh', 'image/nationalbotanicalgarden.jpg', 'no_lux', 'ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।', 'জাতীয় উদ্ভিদ উদ্যান বা বাংলাদেশ ন্যাশনাল হার্বেরিয়াম বাংলাদেশে উদ্ভিদ প্রজাতি সংরক্ষণ, গবেষণা ও প্রদর্শনের সবচেয়ে বড় কেন্দ্র হিসেবে বিবেচিত। কেন্দ্রটি ন্যাশনাল বোটানিক্যাল গার্ডেন নামেও পরিচিত। উদ্যানটি ঢাকার মিরপুরে ঢাকা চিড়িয়াখানার পাশে অবস্থিত। ১৯৬১ সালে প্রায় ২০৮ একর (৮৪ হেক্টর) জায়গা জুড়ে উদ্যানটি প্রতিষ্ঠিত হয়। ঢাকার আরেকটি উদ্যান বলধা গার্ডেন প্রশাসনিক দিক দিয়ে এই উদ্যানেরই অংশ। জাতীয় উদ্ভিদ উদ্যান বাংলাদেশের অন্যতম বৃহৎ উদ্ভিদ উদ্যান। প্রতিবছর প্রায় ১৫ লক্ষ দর্শনার্থী উদ্যানটিতে বেড়াতে আসেন।'),
(38, 'Dhaka', 'Historical', 'Shaheed Minar', 'image/shaheedminar.jpg', 'no_lux', 'বাস বা ট্রেনে ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।', 'কেন্দ্রীয় শহীদ মিনার ১৯৫২ খ্রিস্টাব্দের ভাষা আন্দোলনের স্মৃতিসৌধ।প্রতি বছর ২১শে ফেব্রুয়ারি তারিখে এখানে হাজার হাজার মানুষ উপস্থিত হয়ে ভাষা আন্দোলনের শহীদদের প্রতি শ্রদ্ধার্ঘ্য নিবেদন করে। এটি ঢাকার কেন্দ্রস্থলে অবস্থিত অন্যতম পর্যটন বিন্দু। ঢাকা মেডিকেল কলেজের ছাত্ররা ১৯৫২ খ্রিস্টাব্দের ২৩ ফেব্রুয়ারি বিকেলে স্মৃতিস্তম্ভ নির্মাণ শুরু করে রাত্রির মধ্যে তা’ সম্পন্ন করে। শহীদ মিনারের খবর কাগজে পাঠানো হয় ঐ দিনই। শহীদ বীরের স্মৃতিতে - এই শিরোনামে দৈনিক আজাদ পত্রিকায় ছাপা হয় শহীদ মিনারের খবর।'),
(39, 'Dhaka', 'Nature', 'Hatirjheel', 'image/hatirjheel.jpg', 'no_lux', 'ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।', 'হাতিরঝিল বাংলাদেশের রাজধানী ঢাকার একটি এলাকা যা জনসাধারণের চলাচলের জন্য তৈরী করা হয়েছে। এ প্রকল্প এলাকাটি উদ্ধোধন ও জনসাধারণের জন্য উন্মুক্ত হয় ২০১৩ সালের ২ জানুয়ারি। এ প্রকল্প চালুর ফলে ঢাকার তেজগাঁও, গুলশান, বাড্ডা, রামপুরা, মৌচাক ও মগবাজারের এলাকার বাসিন্দাসহ এ পথ দিয়ে চলাচলকারী যাত্রীরা বিশেষ সুবিধা পাচ্ছেন। হাতিরঝিল প্রকল্পটি বাস্তবায়ন ও তদারকি করছে বাংলাদেশ সেনাবাহিনীর \'স্পেশাল ওয়ার্কস অরগানাইজেশন\' (এসডব্লিউও)। এ প্রকল্পের অন্যতম মূল লক্ষ্য হচ্ছে বৃষ্টির পানি সংরক্ষণ, জলাবদ্ধতা ও বন্যা প্রতিরোধ, ময়লা পানি নিষ্কাশন ব্যবস্থার উন্নয়ন, রাজধানীর যানজট নিরসন এবং শ্রীবৃদ্ধি করা।'),
(40, 'Dhaka', 'Lake', 'Dhanmondi Lake', 'image/dhanmondilake.jpg', 'no_lux', 'ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।', 'ধানমন্ডি লেক ঢাকার ধানমন্ডি আবাসিক এলাকায় অবস্থিত একটি লেক। লেকটি প্রাথমদিকে কাওরান বাজার নদীর একটি পরিত্যক্ত খাল ছিল যা তুরাগ নদীর সাথে মিলিত হয়েছিল। লেকটি আংশিকভাবে বেগুনবাড়ি খালের সাথে মিলিত হয়েছে। ১৯৫৬ সালে ২৪০.৭৪ হেক্টর জমিতে ধানমন্ডি লেকের আশেপাশের এলাকাকে আবাসিক এলাকা হিসেবে উন্নীত করা হয়। এই উন্নয়ন প্রকল্পে ধানমন্ডি আবাসিক এলাকার ১৬% লেকের জন্য বরাদ্ধ রাখা হয়েছিল।[১]  সময়ের পরিক্রমায় লেকটি একটি দর্শনীয় সাথে পরিনত হয় এবং এর আশেপাশে বিভিন্ন সাংস্কৃতিক কেন্দ্র গড়ে উঠে যার মধ্যে অন্যতম হল, রবীন্দ্র সরোবর যা লেকের পাশেই অবস্থিত।'),
(41, 'Dhaka', 'Historical', 'Curzon Hall', 'image/curzonhall.jpg', 'no_lux', 'রাজধানী ঢাকা যেকোন জায়গা থেকে ঢাকা বিশ্ববিদ্যালয়ের এই কার্জন হল দেখতে আসতে পারবেন। আর নিজস্ব গাড়ি থাকলে তো কথাই নেই। অথবা বাসে করে শাহবাগ এসে, সেখান থেকে ১৫ থেকে ২০ টাকা রিক্সা ভাড়ায় চলে যেতে পারেন কার্জন হলে।', 'কার্জন হল বাংলাদেশের রাজধানী ঢাকাতে অবস্থিত একটি ঐতিহাসিক ভবন, যা পুরাকীর্তি হিসেবে স্বীকৃত।[১][২] এটি বর্তমানে ঢাকা বিশ্ববিদ্যালয়ের বিজ্ঞান ও জীব বিজ্ঞান অণুষদের কিছু শ্রেনীকক্ষ ও পরীক্ষার হল হিসেবে ব্যবহৃত হচ্ছে ।'),
(42, 'Dhaka', 'Nature', 'Rose Garden palace', 'image/rosegarden.jpg', 'no_lux', 'ঢাকার যেকোন স্থান থেকে গুলিস্থান বা যাত্রাবাড়ী এসে রিক্সায় দিয়ে সরাসরি টিকাটুলির কেএম দাস লেনের রোজ গার্ডেন আসতে পারবেন। তবে রিকশাওয়ালাকে চেনানোর জন্য হুমায়ূন সাহেবের বাড়ির কথা বলতে হবে।', 'রোজ গার্ডেন প্যালেস, যা সংক্ষেপে রোজ গার্ডেন নামে সমধিক পরিচিত, বিংশ শতা্বদীর বাংলাদেশের একটি ঐতিহাসিক প্রাচীন ভবন। এটি বাংলাদেশের রাজধানী ঢাকা শহরের টিকাটুলি এলাকায় অবস্থিত একটি অন্যতম স্থাবর ঐতিহ্য। এ প্রাচীন ভবনটি বাংলাদেশের ঐতিহাসিক পুরাকীর্তি হিসাবে বাংলাদেশ সরকার কর্তৃক সংরক্ষিত। বাংলাদেশের প্রত্নতত্ত্ব বিভাগ ১৯৮৯ সালে রোজ গার্ডেনকে সংরক্ষিত ভবন ঘোষণা করে। দেশী-বিদেশী পর্যদেশী-বিদেশী পর্যটকদের নিকট এটি ঢাকার অন্যতম একটি দর্শনীয় স্থান। রোজ গার্ডেন ১৯৭০ থেকে নাটক ও টেলিফিল্ম শুটিং স্পট হিসেবে ব্যবহৃত হয়ে এসেছে।'),
(43, 'Dhaka', 'Historical', 'Lalbagh Mosque', 'image/lalbaghmosque.jpg', 'no_lux', 'বাস বা ট্রেনে ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।', 'লালবাগ কেল্লা (কেল্লা আওরঙ্গবাদ নামেও পরিচিত ছিল) ১৭ শ শতকে নির্মিত একটি অসমাপ্ত মুঘল দুর্গ স্থাপনা। এটির নির্মাণকাজ শুরু হয়েছিল ১৬৭৮ সালে, মুঘল সুবাদার মুহাম্মদ আজম শাহ কতৃক, যিনি ছিলেন সম্রাট আওরঙগজেবের পুত্র এবং পরবর্তীতে নিজেও সম্রাট পদপ্রাপ্ত হয়েছিলেন। তার উত্তরসুরী, মুঘল সুবাদার শায়েস্তা খাঁ ১৬৮০ সালে নির্মাণকাজ পুনরায় শুরু করেন, কিন্তু শেষ করেননি।'),
(44, 'Dhaka', 'Nature', 'Nuhash Polli', 'image/nuhashpolli.jpg', 'no_lux', 'ঢাকা-ময়মনসিংহ মহাসড়কের গাজীপুর চান্দনা চৌরাস্তা থেকে ১২ কিলোমিটার দূরে হোতাপাড়া বাজার। হোতাপারা হতে ট্যাক্সি বা যান্ত্রিক রিকশায় করে নুহাশ পল্লী যাওয়ার পথ পাওয়া যায়।', 'নুহাশ পল্লী (Nuhash Polli) নন্দন কাননটি গাজীপুর জেলা সদর থেকে ২৫ কিলোমিটার দূরত্বে পিরুজালী গ্রামে অবস্থিত। নুহাশ পল্লীর বর্তমান আয়তন প্রায় ৪০ বিঘা। ১৯৮৭ সালে ২২ বিঘা জমিতে হুমায়ূন আহমেদ তাঁর স্বপ্ন বাস্তবায়ন শুরু করেন। হুমায়ূন পুত্র নুহাশের নামানুসারে নুহাশ পল্লী নামকরণ করা হয়। '),
(45, 'Chittagong', 'Lake', 'Foy\'s Lake', 'image/foyslake.jpg', 'lux', 'ফয়েস লেকে যাওয়ার জন্য বাস বা অটোরিক্সা ব্যবহার করা যেতে পারে।', 'ফয়েজ লেক (ইংরেজি: Foy\'s Lake) চট্টগ্রামের পাহাড়তলী এলাকায় অবস্থিত একটি কৃত্রিম হ্রদ।'),
(46, 'Chittagong', 'Waterfall', 'Khoiya Chora Waterfalls', 'image/khoiyachora.jpg', 'no_lux', ' ঢাকা-চট্রগ্রাম মহাসড়ক পাশ থেকে পায়ে হেঁটে কিংবা স্থানীয় যানবাহন (যেমনঃ সিএনজি) ব্যবহার করে ঝর্ণাটির কাছাকাছি গ্রামে পৌছানো সম্ভব। কিন্তু পাহাড়ের পাদদেশের গ্রামের ভিতর দিয়ে ঝর্ণার মূল ধারা পর্যন্ত পৌছানোর বাকি পথের জন্য কোন যানবাহনের ব্যবস্থা নেই, শুধুমাত্র পায়ে হেটে পৌছানো সম্ভব।', 'খৈয়াছড়া ঝর্ণা বাংলাদেশের চট্টগ্রামের মিরসরাইয়ের পাহাড়ে অবস্থিত একটি জলপ্রপাত। মীরসরাই উপজেলায় অবস্থিত অন্যান্য জলপ্রপাত যেমন কমলদহ ঝর্ণা, নাপিত্তাছড়া ঝর্ণা, সহস্রধারা ঝর্ণা, ঝরঝরি ঝর্ণা প্রভৃতির তুলনায় খৈয়াছড়া ঝর্ণা ও এর ঝিরিপথ অন্যতম বৃহৎ।'),
(47, 'Chittagong', 'Waterfall', 'Napittachora Waterfalls', 'image/napittachora.jpg', 'no_lux', 'চট্টগ্রামের অলংকার থেকে বাসে নয়দুয়ারীবাজার যেতে পারবেন। নয়দুয়ারী বাজারে নেমে সেখান থেকে স্থানীয় গাইড নিয়ে অথবা নিজেই নাপিত্তাছড়া ঝর্ণায় চলে যেতে পারেন। নয়দুয়ারী থেকে হেঁটে যেতে ৩০/৪০ মিনিট লাগবে।', 'নাপিত্তাছড়া ঝর্ণা বাংলাদেশের চট্টগ্রামের মিরসরাইয়ের পাহাড়ে অবস্থিত একটি জলপ্রপাত।'),
(48, 'Chittagong', 'Waterfall', 'Rijuk Jhorna', 'image/rijukjhorna.jpg', 'no_lux', 'ঋজুক জলপ্রপাত দেখার জন্য বান্দরবান থেকে রুমায় আসতে হবে। রুমা বাজার থেকে নদীপথে থানছি যাবার পথে ঋজুক ঝর্ণা দৃশ্যমান। রুমা বাজার থেকে এর দূরত্ব প্রায় ৭ কিলোমিটার ও বান্দরবান সদর থেকে ৬৬ কিলোমিটার দূরে অবস্থিত পান্তলা মৌজায় অবস্থিত। ঋজুক ঝর্ণায় যেতে রুমাবাজার থেকে নৌকা পাওয়া যায়। নৌকা ভাড়া ৫০০ টাকা। তবে ইচ্ছে করলে পায়ে হেঁটে খুব সকালে উঠে রওয়ানা দিতে হবে।', 'ঋজুক জলপ্রপাত বাংলাদেশের পার্বত্য চট্টগ্রামের অন্তর্গত বান্দরবনের রুমা উপজেলায় অবস্থিত একটি প্রাকৃতিক জলপ্রপাত'),
(49, 'Chittagong', 'Lake', 'Vatiyari', 'image/vatiyari.jpg', 'lux', 'চট্টগ্রাম-ঢাকা মহাসরকে সীতাকুণ্ডগামী বাসে করে ভাটিয়ারী যাওয়া যায়।', 'ভাটিয়ারি চট্টগ্রামের সীতাকুন্ডে ইউনিয়নে অবস্থিত একটি স্থান। এটি চট্টগ্রামে পর্যটক স্পটের জন্য বিখ্যাত। জায়গাটি  বিভিন্ন হ্রদ এবং পাহাড় দ্বারা বেষ্টিত । ভিয়টিয়ারি পাহাড়ি এলাকাযটি বাংলাদেশ সেনাবাহিনীর নিয়ন্ত্রণাধীন এলাকা।'),
(50, 'Chittagong', 'Park', 'Shaheed Zia Smriti Complex', 'image/shaheedziacomplex.jpg', 'lux', 'চট্টগ্রাম শহরে ট্যাক্সি যোগে কালুরঘাট বাস টারমিনাল পৌঁছুতে হবে।', 'চট্টগ্রামের কালুরঘাটে বাংলাদেশ বেতার ট্রান্সমিশন সেন্টার \'শহীদ জিয়া স্মৃতি কমপ্লেক্স\' শিরোনামের অধীনে একটি \'মিনি বাংলাদেশ\' রূপে পরিণত হয়েছে। বাংলাদেশের ঐতিহাসিক পটভূমি ও ঐতিহ্যের একটি ঝলক দেওয়া হয়েছে, মানুষের জীবন এবং তাদের বিভিন্ন সংস্কৃতি, বাংলাদেশের উদ্ভিদ ও প্রাণি জগত সম্পর্কিত সকল ধারনা সংরক্ষিত রাখা আছে বলে একে  \'মিনি বাংলাদেশ\' নামেও পরিচিত করা হয়।'),
(51, 'Chittagong', 'Sea', 'Parki Sea Beach', 'image/parkiseabeach.jpg', 'no_lux', 'চট্টগ্রাম শহর থেকে “পারকি বীচের” দূরত্ব প্রায় ২৫ কিঃমিঃ। যেতে সময় লাগবে ১ ঘন্টা। এটা মূলত কর্ণফুলী নদীর মোহনায় অবস্থিত। অর্থাৎ কর্ণফুলী নদীর মোহনার পশ্চিম তীরে পতেঙ্গা সমুদ্র সৈকত এবং পূর্ব-দক্ষিণ তীরে পারকী সমুদ্র সৈকত। চট্টগ্রাম সার কারখানা ও কাফকো যাওয়ার পথ ধরে এই সৈকতে যেতে হয়।', 'পারকি সমুদ্র সৈকত বাংলাদেশের চট্টগ্রাম শহর থেকে ২০ কিলোমিটার দক্ষিণে আনোয়ারা থানায় অবস্থিত ১৩ কিলোমিটার দীর্ঘ সমুদ্র সৈকত। চট্টগ্রামের নেভাল একাডেমি কিংবা বিমানবন্দর এলাকা থেকে কর্ণফুলী নদী পেরোলেই পারকি চর।'),
(52, 'Chittagong', 'Historical', 'Chittagong War Cemetery', 'image/warcemetry.jpg', 'lux', 'কমনওয়েলথ ওয়ার সিমেট্রি চট্টগ্রামের দামপাড়া এলাকায়, ১৯ নং বাদশা মিয়া চৌধুরী সড়কে অবস্থিত। এটি মেডিকেল কলেজের দক্ষিণ-পশ্চিম কোণে, চট্টেশ্বরী সড়কের চারুকলা ইনস্টিটিউটের কাছাকাছি এবং ফিনলে গেস্ট হাউসের নিকটবর্তী পাহাড়ি ঢালু আর সমতল ভূমিতে গড়ে উঠেছে।', ' কমনওয়েলথ ওয়ার গ্রেভস কমিশনের একটি সৌধ যেটি সাধারণভাবে চট্টগ্রাম ওয়ার সিমেট্রি নামে পরিচিত।'),
(53, 'Chittagong', 'Sea', 'Avoymitra Ghat', 'image/ovoimitroghat.jpg', 'lux', 'চট্টগ্রামের ফিরিঙ্গিবাজার পথ ধরে নতুন ব্রিজ যাওয়ার পথে এই ঘাট।ট্যাক্সি/রিকশা যোগে যাতায়াত সম্ভব।', 'চট্রগ্রাম জেলার কর্ণফূলী সেতু বাংলাদেশের অন্যতম সৌন্দর্যময় সেতু,যা মাথা উচু করে দাড়িয়ে আছে সাদা বকের মতো,যেনো সৌন্দর্যবর্ধন এক নগরীর দ্বারপ্রান্ত,সেতুটি নতুন যোগাযোগব্যবস্থার  দ্বার উন্মুক্ত করেছে দক্ষিণ জেলার কক্সবাজার,বান্দরবন টু ঢাকার সেতুবন্ধন।ঠিক কর্ণফূলী সেতুর দক্ষিণে ফিরিঙ্গিবাজারের ৩৩নং সিটি ওয়ার্ডের পাশ দিয়ে গড়ে ওঠছে অভয়মিত্র ঘাট।তৈরি হচ্ছে সাগরের নিচ দিয়ে কর্নফুলী টানেল,টানেলের পাশে নির্মিত হচ্ছে হাতিরঝিলের মতো সাদা কয়েকটি উড়াল সেতু।'),
(54, 'Sylhet', 'Nature', 'Sreemangal', 'image/sreemangal.jpg', 'lux', 'শনিবার ছাড়া রাত ৯টায় সিলেটের জন্য ছাড়ে উদয়ন এক্সপ্রেস। শ্রেণী ভেদে জনপ্রতি ভাড়া ১৪০ টাকা থেকে ৯৪৩ টাকা পর্যন্ত।', 'চা-বাগানের জন্য বিখ্যাত মৌলভীবাজার জেলার শ্রীমঙ্গলকে বাংলাদেশের চায়ের রাজধানী বলা যেতে পারে। মৌলভীবাজার জেলায় ৯২ টির মত চা বাগান রয়েছে। ৪৫০ বর্গ কিলোমিটার আয়তনের শ্রীমঙ্গলের চা বাগানের নজরকাড়া সৌন্দর্য দেখতে প্রতিদিন অনেক পর্যটক আসেন। মাইলের পর মাইল পর্যন্ত চা বাগান দেখে পাহাড়ের ঢালে সবুজ গালিচা বলে মনে হয়। বাংলাদেশের সবচেয়ে উন্নত মানের চা শ্রীমঙ্গলেই উৎপন্ন হয়ে। শ্রীমঙ্গলের প্রবেশ পথে ‘চা-কন্যা’ ভাস্কর্য দৃষ্টি কেড়ে নেবে। মৌলভীবাজার জেলা প্রশাসণের তৈরি এ ভাস্কর্য নির্মিত হয়েছে সাতগাঁও চা-বাগানের সহায়তায়। ‘চা-কন্যা’ ভাস্কর্যের সামনে থেকেই বিস্তীর্ণ এলাকাজুড়ে শুরু হয়েছে সাতগাঁও চা-বাগান। ইংরেজদের শাসনকালের স্মৃতি বহনকারী সিলেটের চা বাগানগুলোতে সেই সময়ের মতো কাঠের তৈরি সাদা রঙের ভবনে ম্যানেজারেরা বাস করেন। আর তাই চা বাগানের জীবন যাত্রাতেও ইংরেজ আমলের অনেক ছাপ লক্ষ করা যায়।'),
(55, 'Chittagong', 'Waterfall', 'Ruposhi Waterfall', 'image/Ruposhiwaterfall.jpg', 'no_lux', 'বাসযোগে ঢাকা-চট্টগ্রাম মহাসড়কের মিরসরাইয়ের বড়দারোগাহাট বাজারে নামতে হবে প্রথমে। মিরসরাইয়ের বড় দারোগারহাট বাজারের সামান্য উত্তরে ব্রিকফিল্ড সড়ক ধরে পূর্ব দিকে আধা কিলোমিটার পথ পাড়ি দিলেই রেললাইন। রেললাইন পেরুলেই পথ, দু’পাশে সবুজ ফসলের মাঠ পেরিয়ে সামনে গেলে পাহাড়ের বিশালতা। সেই পথ ধরে একটু এগিয়ে গেলে পাহাড়ের পাদদেশ। বাঁ দিকে ৫০ গজ হাঁটলেই বিশাল ছড়া। যেটি রূপসীর প্রবেশপথ। তা ধরে মাইল খানেক হাঁটার পর রূপসীর প্রথম ধাপটা বড় একটি ঝর্ণার মতো। অনেকটা খাড়া তবে ঢালু।', 'মিরসরাই (চট্টগ্রাম) থেকে ফিরে পাহাড়ের গাঁ বেয়ে জলের ধারা মনমুগ্ধকর সৌন্দর্য তৈরি করে নেমে আসে নিচুতে। কয়েক কিলোমিটার পাহাড়ি ঝিরিপথ পাড়ি দেওয়ার পর সেই ঠাণ্ডা জল জুড়িয়ে দেয় প্রাণ।   প্রকৃতির রুক্ষতাকে কাটিয়ে ঝুম বর্ষায় পাহাড়ের রূপে অন্যরকম আবহ। চারপাশজুড়ে সবুজে সাজানো। ঝিরিপথ ধরে হাঁটতে হাঁটতে কানে ভেসে আসে পাখির কিচির মিচির, রং বাহারি প্রজাপতির আনাগোনা।'),
(56, 'Chittagong', 'Waterfall', 'Amiakum WaterFall', 'image/amiakumwaterFall.jpg', 'no_lux', 'বান্দরবান থেকে বাস বা জীপে সোজা চলে যাবেন থানচিতে। থানচি যেতে প্রায় ৪/৫ ঘণ্টার মতো লাগে। থানচি নেমে প্রধান কাজ হলো একজন গাইড ঠিক করা। এবার থানচি থেকে নৌকা নিয়ে রেমাক্রি বাজারে চলে যান, থানচি থেকে রেমাক্রি প্রতিজন ২০০ টাকা করে তবে টুরিষ্টদের দেখলে রিজার্ভ ৩০০০/৪০০০ হয়ে যায়। যদি থানচি থেকে সকাল সকাল রওয়ানা দেন তাহলে রেমাক্রি নেমে হাঁটা ধরুন নাফাখুম ঝর্ণার উদ্দেশ্য। প্রায় আড়াই থেকে তিন ঘণ্টা হাঁটলে আপনারা পেয়ে যাবেন নাফাখুম এর দেখা। এখানে কিছুক্ষণ ছবি তুলে, বিশ্রাম নিয়ে এবার সাজাই পাড়ার দিকে রওয়ানা হয়ে যান।  নাফাখুম ঝর্ণা থেকে হাঁটা শুরু করলে ৩/৪ টা ঘণ্টার মধ্যেই আপনারা পৌঁছে যাবেন সাজিয়াপাড়া। সাজিয়াপাড়াতে রাতটুকু কাটিয়ে পরদিন সকাল সকাল উঠে পড়ুন এবং সাজিয়াপাড়া থেকে একজন গাইড নিয়ে রওয়ানা হয়ে যান আমিয়াখুমের উদ্দেশ্যে। এক্ষেত্রে গাইডকে ৫০০ টাকার মত দিতে হবে।  প্রায় তিন থেকে সাড়ে তিন ঘণ্টা অসাধারণ সব রাস্তা দিয়ে হাঁটলেই পেয়ে যাবেন আমিয়াখুম ঝর্ণা। আমিয়াখুম দেখে আবার ফিরে চলুন সাজিয়াপাড়া, রাতটুকু সাজিয়াপাড়া কাটিয়ে সকালে আবার আগের রাস্তায় ফিরে আসতে পারেন থানচিতে।', 'বান্দরবানের থাঞ্চি উপজেলার গহীনে অবস্থিত আমিয়াখুম ঝর্ণা। দুর্গম রাস্তা পাড়ি দিয়ে যেতে হয় এখানে। থাঞ্চি থেকে রেমাক্রি হয়ে জিনাপাড়া। সেখান থেকে অতিরামপাড়া হয়ে আসতে হয় আমিয়াখুমে।বাংলাদেশ-মায়ানমার সীমান্তের পাশে অবস্থিত আমিয়াখুম জলপ্রপাতকে দেখা হচ্ছে বাংলার ভূস্বর্গ হিসেবে। কারো কারো মতে, এটা বাংলাদেশের সবচেয়ে সুন্দর জলপ্রপাত। '),
(57, 'Chittagong', 'Sea', 'Patenga Sea Beach', 'image/patengaseabeach.jpg', 'lux', 'শহর থেকে অর্থাৎ জিইসি, আগ্রাবাদ খেকে বাসে যেতে পারেন। স্থানীয় বাস সাধারণত সব সময় পাওয়া যায়। এছাড়া সিএনজি চালিত অটোরিকশায় যাওয়া সম্ভব।', 'পতেঙ্গা বাংলাদেশের চট্টগ্রাম শহরের সমুদ্র সৈকত যা কর্ণফুলী নদীর মোহনায় অবস্থিত বন্দর নগরী চট্টগ্রাম থেকে প্রায় ১৪ কিলোমিটার দক্ষিণে অবস্থিত। পতেঙ্গা চট্টগ্রাম শহরের একটি জনপ্রিয় পর্যটন কেন্দ্র।  ১৯৯১ সালের ঘূর্ণিঝড়ে এই সৈকতটি ভয়াবহ ভাবে ক্ষতিগ্রস্থ হয়। বর্তমানে সমুদ্র সৈকতে সিমেন্ট দিয়ে তৈরি করা বেড়ি বাঁধ দেয়া হয়েছে।  শাহ আমানত আন্তর্জাতিক বিমানবন্দর এবং বাংলাদেশ নৌ বাহিনীর ঘাঁটি বিএনএস ঈসা খান পতেঙ্গার সন্নিকটে অবস্থিত। এছাড়া চট্টগ্রাম বন্দরের অনেক জেটি এইখানে অবস্থিত। এছাড়া জনপ্রিয় পতেঙ্গা সমুদ্র সৈকত ও বাংলাদেশ নেভাল একাডেমি এইখানে অবস্থিত');
INSERT INTO `place` (`id`, `district`, `place_category`, `place_name`, `place_image`, `res_type`, `travel_path`, `place_des`) VALUES
(58, 'Chittagong', 'Waterfall', 'Sat Vai Khum', 'image/satvaikhum.jpg', 'no_lux', 'বান্দরবান থেকে থানচি রাস্তা সবচেয়ে নাটুকে এবং বিপদ জনক সড়ক বিবেচনা করা হয় থানচি দেখার জন্য সবচেয়ে ভালো উপায় হলো \'চান্দের গাড়ী\' ভাড়া করা ৷ অমিয়াখুম থেকে একটু ওপরের দিকে বাঁশের ভেলায় চড়ে যেতে হয় \'সাত ভাই খুম\'। ', 'মারমা ভাষায় \'খুম\' মানে জলপ্রপাত ৷ তাই সাত ভাই খুম মানে সাত ভাই জলপ্রপাত ৷এটা বান্দরবানের থানচি, বাংলাদেশের চট্টগ্রামে অবস্থিত ৷ থানচি থেকে বান্দরবান মধ্যে দূরত্ব 79 কিমি. ৷ \'সাত ভাই খুম\' যেতে প্রথমে জঙ্গল থেকে বাঁশ কেটে ভেলা বানাতে হয়  এরপর মাত্র ১০ মিনিটের এই পানির রাস্তার কাছে নস্যি দুনিয়ার সপ্তাশ্চর্যও! জীবনের সবচেয়ে রোমাঞ্চকর ভ্রমণের অভিজ্ঞতাও হয়ে যাবে আপনার। মনেহবে একটা পাথরের দুর্গে ঢুকলেন, কিছুক্ষনের জন্য নিজেকে বোবা মনে হবে। পুরো বান্দরবান যেন এখানে একসঙ্গে ধরা দিয়েছে, এখানে তিন্দুর মতো বড় বড় পাথরও আছে, আছে অমিয়াখুমের মতো সিঁড়ি সিঁড়ি ঝরনা, আছে বগা লেকের মতো স্বচ্ছ পানির হ্রদও।'),
(59, 'Khulna', 'sea', 'Kuakata Sea Beach', 'image/kuakataseabeach.jpg', '', ' খুলনা থেকে কুয়াকাটার উদ্দেশ্যে সকাল ৭ টায় একটি বিআরটিসি বাস ছাড়ে। খুলনা থেকে যেতে সময় লাগে প্রায় ৭/৮ ঘন্টা।', 'বেলাভূমি থেকে সূর্যাস্ত-সূর্যোদয় দেখাটা নিশ্চয়ই রোমাঞ্চকর! আর এই রোমাঞ্চের জন্যই বিখ্যাত কুয়াকাটা সমুদ্রসৈকত।মূল সৈকতের পূর্ব পাশে দুই কিলোমিটার দূরে গড়ে উঠেছে ইকো পার্ক। সঙ্গেই বিশাল ঝাউবাগান।'),
(60, 'Khulna', 'Historical', 'Khulna divisional museum', 'image/Khulnamuseum.jpg', '', 'খুলনার সোনাডাঙ্গা বাস টার্মিনালের খুব নিকটেই বিভাগীয় জাদুঘর। বাস টার্মিনাল থেকে মাত্র রিকশা অথবা ইজিবাইকে করে শিববাড়ি মোড়ে আসতে হবে। শিববাড়ী মোড়ে অবস্থিত জিয়া হলের পাশেই খুলনা বিভাগীয় জাদুঘরের অবস্থান।জাদুঘরের প্রবেশ করার জন্য প্রতিজন ১০ টাকা পবেশমূল্য দিয়ে টিকেট সংগ্রহ করতে হবে। তবে বিদেশি দর্শনাথীদের জন্য প্রবেশমূল্য ১০০ টাকা। প্রতিদিন সকাল ১১টা থেকে বিকাল ৬টা প্রর্যন্ত জাদুঘর খোলাথাকে। রবিরার পূর্ণদিন ও সোমবার অর্ধদিন জাদুঘরের সাপ্তাহিক বন্ধ। ', 'খুলনা জেলার শিববাড়ী ট্রাফিক মোড়ের জিয়া পাবলিক হলের পাশেই প্রতিষ্ঠিত খুলনা জাদুঘর। খুলনা বিভাগীয় জাদুঘর ১৯৯৮ সালে প্রতিষ্ঠিত হয়। জাতীয় জাদুঘরের আওতায় ও প্রত্নতত্ত অধিদপ্তরের তত্তাবধানে জাদুঘরটি পরিচালিত। আয়তনের দিক থেকে এটি দেশের দিত্বীয় বৃহত্তম জাদুঘর। দেশের বিভিন্ন স্থানে প্রাপ্ত নানান প্রত্নতাত্তিক নিদর্শন বিশেষ করে ঝিনাইদহের বারবাজার, যশোরের ভরত ভায়ানা এবং বাগেরহাটের খানজাহান আলী সমাধিসৌধ খননের ফলে প্রাপ্ত নানান দুর্লভ নিদর্শন প্রদর্শিত হচ্ছে এ জাদুঘরে।'),
(61, 'Comilla', 'historical', 'Shalban Buddhist Vihara', 'image/shalbon.jpg', '', 'ক্যান্টমেন্টের গেটের ভিতর থেকে বাস ছাড়ে বার্ড এ যাওয়ার, উঠে পরুন টিকিট নিবে ২০ টাকা। নেমে আবার ব্যাটারী চালিত অটো বা সিএনজি পাবেন ময়নামতি যাওয়ার জন্য, জনপ্রতি ১০ টাকা নিবে।', 'শালবন বৌদ্ধ বিহার বাংলাদেশের প্রাচীন সভ্যতার নিদর্শনগুলোর মধ্যে অন্যতম। কুমিল্লা জেলার লালমাই-ময়নামতি প্রত্নস্থলের অসংখ্য প্রাচীন স্থাপনাগুলোর একটি এই বৌদ্ধ বিহার । এটি ১২শ প্রত্নতাত্ত্বিক এলাকা হিসেবে চিহ্নিত।'),
(62, 'Comilla', 'historical', 'Dharma shagar', 'image/Dharmashagor.jpg', '', 'ময়নামতি হতে অটো বা রিক্সায় কুমিল্লা শহর এ অবস্থিত ধৰ্ম সাগর এ আসা যায়।', 'বড় পুকুরকে দীঘি বা সাগর বলা হয়। ধর্ম সাগর সেই রকম একটি দীঘি। এটি কুমিল্লা শহরের মধ্যস্থলে অবস্থিত। দীঘির পাশেই একটি পার্ক আছে। ত্রিপুরার রাজা ধর্ম মাণিক্য এই দীঘিটি খনন করিয়েছিলেন। এই দীঘির বাম পাশে প্রতিবছর এই দীঘির পাশে মেলা বসে এবং পহেলা বৈশাখে নৌকা বাইচ হয়।'),
(63, 'Comilla', 'historical', 'Baitul Azgar Jami Mosque', 'image/Mosque.jpg', '', 'দেবিদ্বার বাসস্ট্যান্ড থেকে রিক্সা বা সিএনজি যোগে যাওয়া যায়।', 'দেবীদ্বারের ঐতিহ্য ‘গুনাইঘর বায়তুল আজগর সাত গম্বুজ জামে মসজিদ’ এটি নির্মাণশৈলির দিক থেকে দেশের বিখ্যাত মসজিদগুলোর অন্যতম মসজিদ হিসাবে দাবী করা হচ্ছে। ‘গুনাইঘর বায়তুল আজগর সাত গম্বুজ জামে মসজিদ’টি কুমিল্লা জেলা সদর থেকে কুমিল্লা-সিলেট মহাসড়ক হয়ে উত্তর-পশ্চিম কোনে দেবীদ্বার পৌর এলাকায় এবং দেবীদ্বার সদর থেকে দু’কিলোমিটার পশ্চিম দক্ষিণে গুনাইঘর গ্রামে অবস্থিত।'),
(64, 'Comilla', 'hill', 'Lalmai Hills', 'image/Lalmaihills.jpg', '', 'ক্যান্টমেন্টের গেটের ভিতর থেকে বাস ছাড়ে বার্ড এ যাওয়ার, উঠে পরুন টিকিট নিবে ২০ টাকা। নেমে আবার ব্যাটারী চালিত অটো বা সিএনজি পাবেন ময়নামতি যাওয়ার জন্য, জনপ্রতি ১০ টাকা নিবে।', 'লালমাই পাহাড় বাংলাদেশের কুমিল্লা জেলার লালমাই উপজেলায় অবস্থিত একটি বিচ্ছিন্ন পর্বতশ্রেণী। প্রায় পঁচিশ লক্ষ বছর আগে প্লাইস্টোসিন যুগে এই পাহাড় গঠিত হয়েছিল বলে অনুমান করা হয়। সে হিসেবে এটি বাংলাদেশের বরেন্দ্রভূমি এবং মধুপুর ও ভাওয়াল গড়ের সমকালীন। লালমাই পাহাড় এর দৈর্ঘ্য ৮ কিলোমিটার এবং এর সবচেয়ে চওড়া অংশ ৪.৮ কিলোমিটার। এটির সর্বোচ্চ উচ্চতা ৪৬ মিটার। পাহাড়টির উত্তর অংশ ময়নামতি পাহাড় এবং দক্ষিণ অংশ লালমাই পাহাড় নামে পরিচিত।'),
(65, 'Comilla', 'river', 'Gumti River', 'image/riiver.jpg', '', '', 'গোমতী নদী বাংলাদেশ-ভারতের একটি আন্তঃসীমান্ত নদী। নদীটি বাংলাদেশের দক্ষিণ-পূর্বাঞ্চলের কুমিল্লা জেলার একটি নদী। নদীটির দৈর্ঘ্য ৯৫ কিলোমিটার, গড় প্রস্থ ৬৫ মিটার এবং নদীটির প্রকৃতি সর্পিলাকার।'),
(66, 'Rangpur', 'park', 'Bhinnojogot', 'image/Bhinnojogot.jpg', '', ' রংপুর মেডিকেল মোড় থেকে খুব সহজেই বাস অথবা অটোতে করে যাওয়া যায় ভিন্ন জগৎ। বাসে গেলে পাগলা পীর এলাকায় নেমে আবার অটো নিতে হবে ভিন্ন জগতের উদ্দেশে।ভিন্ন জগৎ বছরজুড়েই সকাল ৮টা থেকে সন্ধ্যা সাড়ে ৭টা পর্যন্ত খোলা থাকে। পার্কে প্রবেশের মূল্য ৫০ টাকা। প্রতিটি রাইডের টিকেট মিলবে জনপ্রতি ৫ থেকে ৩০ টাকায়।', 'রংপুরের ভ্রমণ স্পটগুলোর মধ্যে ভিন্ন জগৎ অন্যতম। এটি রংপুরের সবচেয়ে বড় পিকনিক স্পট ও পর্যটনকেন্দ্র। রংপুর জেলার গঙ্গাচড়া উপজেলার গঙ্গীপুরে এর অবস্থান। টিকেট কেটে পার্কে প্রবেশের পর লোহার ব্রিজ, তা পেরোলেই জগৎটা ভিন্ন হয়ে যায়।'),
(67, 'Rangpur', 'historical', 'Tajhat zamindar house', 'image/house.jpg', '', ' রংপুর বাসষ্ট্যান্ড থেকে রিকশাযোগে তাজহাট জমিদার বাড়ি যেতে মাত্র ২০ টাকা ভাড়া লাগে। তবে ঢাকা থেকে কুড়িগ্রামগামী বাসে চড়লে সরাসরি তাজহাট জমিদার বাড়ির সামনে নামা যায়।', 'তাজহাট রাজবাড়ি বা তাজহাট জমিদারবাড়ি বাংলাদেশের রংপুর শহরের অদূরে তাজহাটে অবস্থিত একটি ঐতিহাসিক প্রাসাদ যা এখন একটি জাদুঘর হিসেবে ব্যবহৃত হচ্ছে। রংপুরের পর্যটকদের কাছে এটি একটি আকর্ষণীয় স্থান। রাজবাড়িটি রংপুর শহর থেকে দক্ষিণ-পূর্ব দিকে ৩ কিলোমিটার দূরে অবস্থিত।'),
(68, 'Dinajpur', 'Historical', 'Kantanagar Temple', 'image/Temple.jpg', '', '', 'কান্তনগর মন্দির বাংলাদেশের দিনাজপুরে অবস্থিত একটি প্রাচীন মন্দির। এটি নবরত্ন মন্দির নামেও পরিচিত কারণ তিনতলাবিশিষ্ট এই মন্দিরের নয়টি চূড়া বা রত্ন ছিলো। কান্তজীউ মন্দির ১৮ শতকে নির্মিত একটি চমৎকার ধর্মীয় স্থাপনা। মন্দিরটি হিন্দু ধর্মের কান্ত বা কৃষ্ণের মন্দির হিসেবে পরিচিত যা লৌকিক রাধা-কৃষ্ণের ধর্মীয় প্রথা হিসেবে বাংলায় প্রচলিত।'),
(69, 'Dhaka', 'historical', 'Ahasan manjil', 'image/Ahasan.jpg', '', 'বাস বা ট্রেনে ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।', 'আহসান মঞ্জিল ছিল ঢাকার নবাবদের প্রাসাদ। বর্তমানে এটি জাদুঘর হিসাবে ব্যবহৃত হচ্ছে। এর প্রতিষ্ঠাতা নওয়াব আবদুল গণি। তিনি তার পুত্র খাজা আহসানুল্লাহ-র নামানুসারে এর নামকরণ করেন।১৮৫৯ খ্রিস্টাব্দে আহসান মঞ্জিলের নির্মাণ কাজ শুরু হয়ে ১৮৭২ খ্রিস্টাব্দে সমাপ্ত হয়। ১৯০৬ খ্রিস্টাব্দে এখানে এক অনুষ্ঠিত বৈঠকে মুসলিম লীগ প্রতিষ্ঠার সিদ্ধান্ত হয়।'),
(70, 'Dhaka', 'mosque', 'Tara mosque', 'image/star.jpg', '', 'বাস বা ট্রেনে ঢাকাতে আসার পর বাস, সিএনজি, ট্যাক্সি ইত্যাদিতে মাধ্যমে এখানে আসা যাবে।', 'তারা মসজিদ সাদা মার্বেলের গম্বুজের ওপর নীলরঙা তারায় খচিত একটি প্রাচীন মসজিদ। এটি নির্মিত হয় আঠারো শতকের প্রথম দিকে। মসজিদের গায়ে এর নির্মাণ-তারিখ খোদাই করা ছিল না। জানা যায়, আঠারো শতকে ঢাকার \'মহল্লা আলে আবু সাঈয়ীদ\'-এ (পরে যার নাম আরমানিটোলা হয়) আসেন জমিদার মির্জা গোলাম পীর (মির্জা আহমদ জান) ঢাকার ধণাঢ্য ব্যক্তি মীর আবু সাঈয়ীদের নাতি ছিলেন তিনি। মির্জা গোলাম পীর এ মসজিদ নির্মাণ করেন। ‌মির্জা সাহেবের মসজিদ হিসেবে এটি তখন বেশ পরিচিতি পায়। ১৮৬০ সালে মারা যান মির্জা গোলাম পীর। পরে ১৯২৬ সালে ঢাকার তৎকালীন স্থানীয় ব্যবসায়ী, আলী জান বেপারী মসজিদটির সংস্কার করেন। সে সময় জাপানের রঙিন চিনি-টিকরি পদার্থ ব্যবহৃত হয় মসজিদটির মোজাইক কারুকাজে।'),
(71, 'Rangpur', 'historical', 'uttara gonovobon', 'image/uttara.jpg', '', 'নাটোর বাস স্টপ কিংবা রেলস্টেশন থেকে সিএনজি চালিত অটোরিকশায় উত্তরা গণভবন যেতে মাত্র ১৫ মিনিট সময় লাগে। অথবা নাটোরের যে কোন জায়গা থেকেই উত্তরা গণভবনে যাওয়ার পর্যাপ্ত রিক্সা বা অটোরিক্সা পাবেন। নাটোরের মাদ্রাসা মোড় থেকে উত্তরা গণভবন যেতে ৩০ টাকা রিকশা ভাড়া লাগে।', 'নাটোরের বিখ্যাত দিঘাপতিয়া রাজবাড়ি বর্তমানে উত্তরা গণভবন (Uttara Gonovobon) নামে পরিচিত। নাটোরের রানী ভবানী তাঁর নায়েব দয়ারাম রায়কে দিঘাপতিয়া পরগনা উপহার দেন। পরবর্তীতে নায়েব সেখানে কয়েকটি প্রাসাদ গড়ে তোলেন। প্রায় ৪৩ একর আয়তনের লেক ও প্রাচীর বেষ্টিত রাজবাড়িটিতে মোট ১২ টি ভবন রয়েছে। উত্তরা গণভবনের পিরামিড আকৃতির চারতলা প্রবেশদ্বারের চূড়ায় বিখ্যাত কোক অ্যান্ড টেলভি কোম্পানির তৈরি একটি ঘণ্টা ঘড়ি স্থাপন করা হয়েছে। আর মূল প্রাসাদ ভবনে প্রবেশ করলে রাজার সিংহাসন, আক্রমণ ঠেকানোর বর্ম এবং তলোয়ার দেখতে পাওয়া যায়। রাজ প্রাসাদের প্রাঙ্গণে ইতালি থেকে সংগৃহীত ভাস্কর্যে সুসজ্জিত বাগান রয়েছে। মনোমুগ্ধকর এই বাগানে স্থান পেয়েছে হাপরমালি, নীলমণিলতা, রাজ-অশোক, পারিজাত, কর্পূর, সৌরভী, হৈমন্তী, যষ্টিমধু, বনপুলক, পেয়ালি, সেঁউতি, তারাঝরা, সাইকাস, মাধবী ইত্যাদি বিভিন্ন প্রজাতির গাছ। এছাড়া আছে রাজা প্রসন্ননাথের অবক্ষমূর্তি, জমিদার দয়ারামের ভাস্কর্য, চারটি কামান, কুমার ভবন, তহশিল অফিস ও অতিথিশালা।'),
(72, 'Rajshahi', 'historical', 'Paharpur Buddhist Bihar', 'image/Bihar.jpg', '', 'পাহাড়পুর যেতে হলে প্রথমে যেতে হবে নওগাঁ। নওগাঁ থেকে এর দূরত্ব প্রায় ৩৫ কিঃমিঃ। নওগাঁ বালুডাংগা বাস টার্মিনাল হতে সরাসরি বাস যোগে পাহাড়পুর যাওয়া যায়। এছাড়া জয়পুরহাট থেকে বাস অথবা অটোরিক্সা যোগেও যাওয়া যায়। জয়পুরহাট শহর থেকে এর দূরত্ব প্রায় ১৫ কিঃমিঃ।', 'পাহাড়পুর বৌদ্ধবিহার বা সোমপুর বিহার বা সোমপুর মহাবিহার নওগাঁ জেলার বদলগাছি উপজেলার পাহাড়পুর গ্রামে অবস্থিত।\r\nপালবংশের দ্বিতীয় রাজা শ্রী ধর্মপাল দেব (৭৮১-৮২১) অষ্টম শতকের শেষের দিকে বা নবম শতকে এই বিহার তৈরি করছিলেন। ১৮৭৯ খ্রিস্টাব্দে স্যার আলেকজান্ডার কানিংহাম এই বিশাল স্থাপনা আবিষ্কার করেন। পাহাড়পুরকে পৃথিবীর সবচেয়ে বড় বৌদ্ধবিহার বলা হয়।\r\nএটি ৩০০ বছর ধরে বৌদ্ধদের অতি বিখ্যাত ধর্ম শিক্ষাদান কেন্দ্র ছিল। শুধু উপমহাদেশের বিভিন্ন স্থান থেকেই শুধু নয়, চীন, তিব্বত, মায়ানমার (তদানীন্তন ব্রহ্মদেশ), মালয়েশিয়া, ইন্দোনেশিয়া প্রভৃতি দেশের বৌদ্ধরা এখানে ধর্মজ্ঞান অর্জন করতে আসতেন। খ্রিস্টীয় দশম শতকে বিহারের আচার্য ছিলে অতীশ দীপঙ্কর শ্রীজ্ঞান।\r\n\r\n১৯৮৫ খ্রিস্টাব্দে ইউনেস্কো এটিকে বিশ্ব ঐতিহ্যবাহী স্থানের স্বীকৃতি প্রদান করে।'),
(73, 'Rajshahi', 'historical', 'Mahasthangarh', 'image/maha.jpg', '', 'মহাস্থানগড় যেতে হলে শুরুতেই আপনাকে যেতে হবে বগুড়ায়। ঢাকা থেকে বগুড়ার দূরত্ব প্রায় ২১৪ কিঃ মিঃ এবং বগুড়া থেকে মহাস্থানগড়ের দূরত্ব প্রায় ৯ কিঃ মিঃ। বগুড়া থেকে মহাস্থানগড়ে বাস বা সিএনজি অটোরিকশা যোগে যাওয়া যায়। বগুড়া চারমাথা ও হাড্ডি পট্টি থেকে সেখানে মহাস্থানগড় যাওয়ার বাস পাওয়া যায় এবং সিএনজি অটোরিকশা চারমাথা, দত্তবাড়ি ও মাটিডালি থেকে পাওয়া যায়।', 'মহাস্থানগড় বাংলাদেশের একটি অন্যতম প্রাচীন পুরাকীর্তি। প্রসিদ্ধ এই নগরী ইতিহাসে পুণ্ড্রবর্ধন বা পুণ্ড্রনগর নামেও পরিচিত ছিল। ২০১৬ সালে এটি সার্কের সাংস্কৃতিক রাজধানী হিসেবে ঘোষণা হয়।'),
(74, 'Rajshahi', 'historical', 'Puthia Rajbari', 'image/Palace.jpg', '', 'রাজশাহী বা নাটোর শহর থেকে পুঠিয়ায় প্রতিনিয়ত বাস চলাচল করে। কার, মাইক্রো ইত্যাদি গাড়ী ভাড়া করেও যাওয়া যায়।', 'বাংলাদেশের প্রত্নতাত্ত্বিক স্থাপনার মধ্যে পুঠিয়ার রাজবাড়ি অন্যতম। মহারানী হেমন্ত কুমারীর এই বাসভবন পাঁচআনি জমিদারবাড়ী নামেও পরিচিত।\r\n\r\nঅবস্থান:\r\nপুঠিয়া জমিদারবাড়ী রাজশাহী জেলার পুঠিয়া উপজেলায় অবস্থিত। রাজশাহী শহর থেকে ৩২ কিঃমিঃ উত্তর- পূর্বে নাটোর মহাসড়ক অভিমুখে পুঠিয়া অবস্থিত।\r\nরাজবাড়ীর স্থাপত্যশৈলী খুব সহজেই পর্যটকদের আকর্ষিত করে। এখানে বেশ কিছু মন্দির, সুপারি বাগান, রাজ পরিবারের বাসভবন, উন্মুক্ত উদ্যান ইত্যাদি রয়েছে, যা একে এই অঞ্চলের একটি জনপ্রিয় পিকনিক স্পটে পরিণত করেছে। প্রতিবছর এখানে হাজার হাজার দর্শনার্থী ভ্রমণে আসে।'),
(75, 'Rajshahi', 'mosque', 'Bagha Mosque', 'image/BaghaMosque.jpg', '', 'বাঘা মসজিদে যাওয়ার জন্য প্রথমে আকাশ পথে রাজশাহীতে আসতে হবে। তারপর রাজশাহী থেকে স্থলপথে এখানে যাওয়া যাবে।রাজশাহী বা নাটোর শহর থেকে বাঘায় বাস আসা যাবে। তবে কার, মাইক্রো ইত্যাদি গাড়ী ভাড়া করেও যাওয়া যায়।', 'সুলতান নাসিরউদ্দিন নসরাত শাহ নির্মিত বাঘা মসজিদ বাংলাদেশের প্রাচীনতম মসজিদের মধ্যে একটি। ১৫২৩ খ্রিষ্টাব্দে মসজিদটি প্রতিষ্ঠা করা হয়।\r\n\r\nঅবস্থান\r\nরাজশাহী জেলা সদর থেকে ৪১ কিলোমিটার দক্ষিণ-পূর্বে বাঘা উপজেলায় এই মসজিদ অবস্থিত।\r\n\r\nপর্যটন\r\nমসজিদটি ২৫৬ বিঘা জমির ওপর অবস্থিত। মসজিদটিতে ১০টি গম্বুজ, ৪টি মেহরাব আছে। মসজিদটির গাঁথুনি চুন এবং সুরকি দিয়ে। এছাড়া মসজিদ প্রাঙ্গণের উত্তর পাশেই রয়েছে হজরত শাহদৌলা ও তার পাঁচ সঙ্গীর মাজার। মূলত ধর্মীয় ও ঐতিহাসিক কারণেই এর পর্যটনাকর্ষক খ্যাতি সৃষ্টি হয়েছে। তবে এর স্থাপত্যশৈলী সবাইকে মুগদ্ধ করে। এখানে প্রতি বছর প্রচুর লোক সমাগম হয়। বিশেষতঃ সপ্তাহের প্রতি শুক্রবার অনেক পূন্যার্থী এখজানে আসেন।'),
(76, 'Rajshahi', 'historical', 'Uttara Ganobhaban', 'image/Uttara.jpg', '', 'রাজশাহীগামী যেকোন বাসে অথবা ট্রেনে নাটোর যাওয়া যাবে। নাটোর বাসস্ট্যান্ড বা রেলস্টেশন থেকে সিএনজি অটোরিকশায় মাত্র ১৫ মিনিটে যাওয়া যায় উত্তরা গণভবন।', 'দিঘাপাতিয়া রাজবাড়ি বা উত্তরা গণভবন বাংলাদেশের নাটোর শহর থেকে প্রায় আড়াই কিলোমিটার দূরে এককালের দিঘাপাতিয়া মহারাজাদের বাসস্থান এবং বর্তমান উত্তরা গণভবন বা উত্তরাঞ্চলের গভর্মেন্ট হাউস।\r\n\r\nপ্রতিষ্ঠার ইতিহাস\r\nপ্রাসাদের মূল অংশ এবং সংলগ্ন কিছু ভবন নির্মাণ করেছিলেন রাজা দয়ারাম রায়। রাজবংশের ষষ্ঠ রাজা প্রমদানাথ রায়ের আমলে ১৮৯৭ সালের ১০ জুন নাটোরের ডোমপাড়া মাঠে তিনদিনব্যাপী বঙ্গীয় প্রাদেশিক কংগ্রেসের এক অধিবেশন আয়োজন করেন। বিশ্বকবি রবীন্দ্রনাথ ঠাকুরসহ অনেক বরেণ্য ব্যক্তি এ অধিবেশনে আমন্ত্রিত অতিথি হিসেবে যোগ দেন। অধিবেশনের শেষ দিন ১২ জুন প্রায় ১৮ মিনিটব্যাপী এক প্রলয়ংকরি ভূমিকম্পে রাজপ্রাসাদটি ধ্বংসস্তুপে পরিণত হয়। পরে রাজা প্রমদা নাথ রায় ১৮৯৭ সাল থেকে ১৯০৮ সাল পর্যন্ত ১১ বছর সময় ধরে বিদেশী বিশেষজ্ঞ, প্রকৌশলী ও চিত্রকর্ম শিল্পী আর দেশী মিস্ত্রিদের সহায়তায় সাড়ে ৪১ একর জমির উপর এই রাজবাড়ীটি পুনঃ নির্মাণ করেন।'),
(77, 'Rajshahi', 'mosque', 'Choto Shona Mosque', 'image/choto.jpg', '', ' রাজশাহীতে আসার পর বাস বা ট্রেনে করে চাঁপাইনবাবগঞ্জ যাওয়া যাবে। চাঁপাইনবাবগঞ্জ যাওয়ার পর বাস, সিএনজি বা স্থানীয় যানবহনে এই মসজিদে আসা যায়।', 'সুলতান আলা-উদ-দীন শাহ এর শাসনামলে (১৪৯৩-১৫১৯ খ্রিষ্টাব্দে) ওয়ালি মোহাম্মদ নামে এক ব্যক্তি ছোট সোনা মসজিদ নির্মাণ করেছিলেন। এটি বাংলাদেশের অন্যতম প্রাচীন মসজিদ। এই মসজিদটিকে বলা হতো \'গৌড়ের রত্ন\'। এর বাইরের দিকে সোনালি রং এর আস্তরণ ছিল, সূর্যের আলো পড়লে এ রং সোনার মতো ঝলমল করত। তাই এর নাম সোনা মসজিদ বলা হয়ে থাকে।\r\n\r\nঅবস্থান\r\nএটি বাংলাদেশের রাজশাহী বিভাগের চাঁপাইনবাবগঞ্জ জেলার শিবগঞ্জ থানায় অবস্থিত।'),
(78, 'Bagura', 'Historical', 'Gokul Medh', 'image/gokul.jpg', '', 'বগুড়া শহর থেকে সিএনজি অটোরিকশা বা চার মাথা বাস টার্মিনাল থেকে বাস যোগে যাওয়া যায়। ', 'গোকুল মেধ বগুড়া সদর থানার অন্তর্গত গোকুল গ্রামে খননকৃত একটি প্রত্নস্থল। স্থানীয়ভাবে এটি বেহুলার বাসর ঘর নামে পরিচিত। বাংলাদেশ প্রত্নতত্ত্ব অধিদপ্তররের মতে আনুমানিক খৃস্টাব্দ ৭ম শতাব্দি থেকে ১২শ শতাব্দির মধ্যে এটা নির্মিত হয়। বলা হয়ে থাকে এখানে বেহুলার বাসর হয়েছিল। যা সেন যুগের অনেক পূর্বেকার ঘটনা। তবে বর্তমান গবেষকদের মতে এমনুমেন্ট ৮০৯ থেকে ৮৪৭ খৃস্টাব্দে দেবপাল নির্মিত একটি বৈদ্যমঠ। এখানে বহু গর্তযুক্ত একটি ছোট প্রস্তর খন্ডের সঙ্গে ষাঁড়ের প্রতিকৃতি একটি স্বর্ণ পত্র পাওয়া গিয়েছিল। এ থেকে ধারণা করা হয়, এটি একটি বর্গাকৃতির শীব মন্দির ছিলো।'),
(79, 'Bagura', 'historical', 'Bhashu bihar', 'image/bashu.jpg', '', 'এটি বগুড়া জেলার শিবগঞ্জ উপজেলায়, মহাস্থানগড় থেকে ৬ কিলোমিটার পশ্চিমে বিহার ইউনিয়নের বিহার নামক গ্রামে অবস্থিত। বগুড়া শহর থেকে সিএনজি অটো রিকশা নিয়ে সহজেই ভাসুবিহার যাওয়া যায়।', 'ভাসু বিহার বাংলাদেশের অন্যতম প্রাচীন প্রত্ন নিদর্শন। স্থানীয়রা একে নরপতির ধাপ হিসেবেও অভিহিত করে।\r\n\r\nপটভূমি\r\nএখানে ১৯৭৩-৭৪ সালে প্রথমবারের মতো প্রত্নতাত্ত্বিক খনন শুরু হয় এবং তা পরবর্তী দুই মৌসুম অব্যাহত থাকে। ধারণা করা হয়, এটি একটি বৌদ্ধ সংঘারামের ধ্বংসাবশেষ। খননকার্যের ফলে সেখানে ব্রোঞ্জের বৌদ্ধমুর্তি, পোড়ামাটির ফলকসহ বিভিন্ন মূল্যবান প্রত্নতাত্ত্বিক বস্তু আবিষ্কৃত হয়েছে। চীনা পরিব্রাজক হিউয়েন সাঙ ৬৩৮ খ্রিষ্টাব্দে এখানে এসেছিলেন। তার ভ্রমণবিবরণীতে তিনি এটাকে \'পো-শি-পো\' বা বিশ্ববিহার নামে উল্লেখ করেছেন। খুব সম্ভবত এটি বৌদ্ধদের ধর্মীয় বিদ্যাপীঠ হিসেবে গুরুত্বপূর্ণ ছিল। ব্রিটিশ আমলে ভাসুবিহারকে স্থানীয় মানুষরা \'ভুশ্বুবিহার\' নামে আখ্যায়িত করেছে।\r\n\r\nঅবকাঠামো\r\nখননের ফলে দুটি মধ্যম আকৃতির সংঘারাম এবং একটি মন্দিরের স্থাপত্তিক কাঠামো সহ প্রচুর প্রত্নবস্তু পাওয়া যায়। ছোট সংঘারামটির আয়তন উত্তর-দক্ষিণে ৪৯ মিটার এবং পূর্ব-পশ্চিমে ৪৬ মিটার। এর চার বাহুতে ভিক্ষুদের ২৬টি কক্ষ রয়েছে। কক্ষগুলির সামনে চারদিকে ঘোরানো বারান্দা এবং পূর্ব বাহুর মাঝখানে প্রবেশ পথ আছে। বড় সংঘারামটি ছোটটির মতই দেখতে তবে এর আয়তন ও কক্ষ সংখ্যা বেশি। বড় আকারের একটি খোলা অংশকে ঘিরে এসব ছোট আকারের বৌদ্ধভিক্ষুদের আবাসকক্ষ। দেখে মনে হয় খোলা বড় অংশটি ছিল মিলনায়তন। যে মন্দিরের কাঠামো পাওয়া গেছে তার মাঝখানে বর্গাকার মণ্ডপ এবং চারপাশে ধাপে ধাপে উন্নিত প্রদক্ষিণ পথ আছে। এখানে প্রায় ৮০০ প্রত্নবস্তু পাওয়া গেছে। তার মধ্যে ছিল ক্ষুদ্রাকৃতির মূর্তি, পোড়ামাটির ফলক ও সিলমোহর, মূল্যবান পাথরের গুটিকা, অলংকৃত ইট ও ফলক, মাটির প্রদীপ, পাত্রের টুকরা সহ অসংখ্য প্রত্নবস্তু।'),
(93, 'Chittagong', 'Sea', 'Kutubdia', 'image/kutubdia.jpg', '', 'সদরঘাট থেকে লঞ্চে করে কুতুবদিয়া যাওয়া যায়। অথবা সড়ক পথে বহদ্দারহাট বাস স্টেশন থেকে গাড়িতে করে মগনামা পর্যন্ত যেতে হবে। ওখান থেকে নৌকা করে কুতুবদিয়া যেতে হবে।সদরঘাট থেকে লঞ্চে গেলে ১০০টাকা করে নিবে৷ গাড়িতে গেলে মগনামা পর্যন্ত ১৯০ টাকা ভাড়া। ওখান থেকে নৌকা ভাড়া ৩০টাকা', 'দীর্ঘদিন ধরে কুতুবদিয়া দ্বীপের গঠন প্রক্রিয়া শুরু হলেও এ দ্বীপ সমুদ্র বক্ষ থেকে জেগে উঠে চতুর্দশ শতাব্দীর শেষের দিকে। ধারণা করা হয়, পঞ্চদশ শতাব্দীর শেষের দিকে এ দ্বীপে মানুষের পদচারণা। হযরত কুতুবুদ্দীন নামে এক কামেল ব্যক্তি আলী আকবর, আলী ফকির, এক হাতিয়া সহ কিছু সঙ্গী নিয়ে মগ পর্তুগীজ বিতাড়িত করে এ দ্বীপে আস্তানা স্থাপন করেন। অন্যদিকে আরাকান থেকে পলায়নরত মুসলমানেরা চট্টগ্রামের আশেপাশের অঞ্চল থেকে ভাগ্যান্বেষণে উক্ত দ্বীপে আসতে থাকে। জরিপ করে দেখা যায়, আনোয়ারা, বাঁশখালী, সাতকানিয়া, পটিয়া, চকরিয়া অঞ্চল থেকে অধিকাংশ আদিপুরুষের আগমন। নির্যাতিত মুসলমানেরা কুতুবুদ্দীনের প্রতি শ্রদ্ধান্তরে কুতুবুদ্দীনের নামানুসারে এ দ্বীপের নামকরণ করেন কুতুবুদ্দীনের দিয়া, যা পরবর্তীতে কুতুবদিয়া নামে স্বীকৃতি লাভ করে।[৫] দ্বীপকে স্থানীয়ভাবে দিয়া বা ডিয়া বলা হয়। পরবর্তীতে বিভিন্ন এলাকা থেকে লোকজন এসে এই দ্বীপে বসবাস শুরু করে। বর্তমানে (২০১৭) এই দ্বীপের বয়স ৬০০ বছর পেরিয়ে গেছে। এই দ্বীপের আয়তন প্রায় দুই-তৃতীয়াংশ কমে গেছে এবং এখনও সাগরের ঢেউয়ের প্রভাবে ভেঙ্গে সমুদ্রে পরিণত হচ্ছে সৌন্দর্যের লীলাভূমি সাগরকন্যা কুতুবদিয়া দ্বীপটি।'),
(100, 'Rajshahi', 'Lake', 'Boddho', 'image/boddho.jpg', '', 'zxczx', 'sadsadas');

-- --------------------------------------------------------

--
-- Table structure for table `place_gallery`
--

CREATE TABLE `place_gallery` (
  `id` int(11) NOT NULL,
  `place_name` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `place_gallery`
--

INSERT INTO `place_gallery` (`id`, `place_name`, `image`) VALUES
(1, 'Coxsbazar', 'image/coxs.jpg'),
(2, 'Coxsbazar', 'image/coxs2.jpg'),
(3, 'Coxsbazar', 'image/coxs3.jpg'),
(4, 'Coxsbazar', 'image/coxs4.jpg'),
(5, 'Coxsbazar', 'image/coxs5.jpg'),
(6, 'Coxsbazar', 'image/coxs6.jpg'),
(7, 'Coxsbazar', 'image/coxs7.jpg'),
(8, 'Coxsbazar', 'image/coxs8.jpg'),
(9, 'Coxsbazar', 'image/coxs9.jpg'),
(13, 'Coxsbazar', 'image/coxs10.JPG'),
(14, 'Nilgiri', 'image/n1.jpg'),
(15, 'Coxsbazar', 'image/coxs11.jpg'),
(16, 'Nilgiri', 'image/n2.jpg'),
(17, 'Sajek Valley', 'image/nilgiri.jpg'),
(18, 'Curzon Hall', 'image/curzon_hall.jpg'),
(19, 'Coxsbazar', 'image/coxs14.jpg'),
(20, 'Jaflong', 'image/jaff1.jpg'),
(21, 'Jaflong', 'image/jaff2.jpg'),
(22, 'Rangamati', 'image/rangamti1.jpg'),
(23, 'Shundarban', 'image/v7tvhqblhouaq0aqzib8.jpg'),
(24, 'Shundarban', 'image/'),
(25, 'Bisnakandi', 'image/IMG_20180920_121030_564.jpg'),
(26, 'Nafa khum Waterfalls', 'image/IMAG8221.jpg'),
(27, 'Fantasy Kingdom', 'image/2.jpg'),
(28, 'Ratargul Swamp Forest', 'image/Ratargul-Swamp-Forest.jpg'),
(29, 'Ratargul Swamp Forest', 'image/Ratargul-Swamp-Forest.jpg'),
(30, 'Hum Hum Waterfall', 'image/images (1).jpeg'),
(31, 'Ratargul Swamp Forest', 'image/images.jpeg'),
(32, 'Ratargul Swamp Forest', 'image/images (1).jpeg'),
(33, 'Ratargul Swamp Forest', 'image/'),
(34, 'Ratargul Swamp Forest', 'image/Ratargul-Swamp-Forest.jpg'),
(35, 'Ratargul Swamp Forest', 'image/images (2).jpeg'),
(36, 'Lalakhal', 'image/boat_riding_lalakhal.jpg'),
(37, 'Bandarban', 'image/b1.jpg'),
(38, 'Bandarban', 'image/b2.jpg'),
(39, 'Bandarban', 'image/b3.jpg'),
(40, 'Coxsbazar', 'image/coxs12.jpg'),
(41, 'Coxsbazar', 'image/coxs13.jpg'),
(42, 'Bandarban', 'image/b4.jpg'),
(43, 'Nafa khum Waterfalls', 'image/'),
(44, 'Rangamati', 'image/'),
(45, 'Rangamati', 'image/');

-- --------------------------------------------------------

--
-- Table structure for table `place_review`
--

CREATE TABLE `place_review` (
  `review_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `place_review`
--

INSERT INTO `place_review` (`review_id`, `place_id`, `user_id`, `review`, `rating`, `image`) VALUES
(1, 1, 4, 'Relaxing place.', 5, 'image/Sajek-Valley.jpg'),
(2, 2, 4, 'Good place.', 4, 'image/Sajek-Valley.jpg'),
(3, 3, 4, 'Nice place.', 5, 'image/nilgiri.jpg'),
(4, 41, 6, 'Nice Place.', 4, 'image/curzon_hall.jpg'),
(5, 1, 3, 'Cc', 5, 'image/IMG-20181209-WA0007.jpg'),
(6, 6, 5, 'Good', 5, 'image/IMG_20180919_171509.jpg'),
(7, 6, 5, 'Good', 5, 'image/Zedze_wallpaper-a8743118-60ce-4ba1-a813-51d5d0e6ea3a.jpg'),
(8, 4, 6, 'nice place', 5, 'image/'),
(9, 11, 4, 'Too amazing place...', 5, 'image/v7tvhqblhouaq0aqzib8.jpg'),
(10, 11, 4, 'Too amazing place.', 5, 'image/'),
(11, 7, 5, 'Nice', 5, 'image/IMG_20180920_121030_564.jpg'),
(12, 17, 4, 'Amazing place\r\n..', 4, 'image/IMAG8221.jpg'),
(13, 30, 4, 'Very exciting place\r\n...', 5, 'image/2.jpg'),
(14, 9, 4, 'Nice waterfall....', 4, 'image/images (1).jpeg'),
(15, 8, 5, 'Not good. ', 2, 'image/images.jpeg'),
(16, 8, 5, 'Very nice place.. ', 5, 'image/images (1).jpeg'),
(17, 8, 6, 'very good Place\r\n  ', 4, 'image/'),
(18, 10, 4, 'Medium Place.', 4, 'image/boat_riding_lalakhal.jpg'),
(19, 13, 5, 'Not very good. ', 2, 'image/tea-garden-at-Sylhet.jpg'),
(20, 13, 4, 'Not bad.', 3, 'image/Nilachol,_Bandarban,_Bangladesh_(02).jpg'),
(21, 13, 8, 'Nice place.', 4, 'image/Hanging_bridge,_meghla,_Bandarban.jpg'),
(22, 1, 5, 'Nice place. ', 4, 'image/IMG_20180622_165125.jpg'),
(23, 1, 5, 'Refreshing place. ', 5, 'image/IMG_20190117_133749_557.jpg'),
(24, 13, 1, 'very good', 5, 'image/'),
(25, 17, 1, 'good', 3, 'image/'),
(26, 4, 1, 'not so good', 2, 'image/'),
(27, 4, 1, 'bad', 1, 'image/');

-- --------------------------------------------------------

--
-- Table structure for table `police_station`
--

CREATE TABLE `police_station` (
  `id` int(11) NOT NULL,
  `place_name` text NOT NULL,
  `police_station_name` text NOT NULL,
  `address` text NOT NULL,
  `contact_no` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police_station`
--

INSERT INTO `police_station` (`id`, `place_name`, `police_station_name`, `address`, `contact_no`) VALUES
(1, 'Coxsbazar', 'Tourist Police Coxsbazar Region Office', 'Laboni Beach point, Laboni Beach Rd, Cox\'s Bazar 4700', '01769690732'),
(2, 'Coxsbazar', 'Cox\'s Bazar New Police Line', 'Cox\'s Bazar, Bangladesh', ''),
(3, 'Coxsbazar', 'Cox\'s Bazar Sadar Model Police Station', ' Police Station Rd, Cox\'s Bazar 4700', ' 0341-64023'),
(4, 'Coxsbazar', 'Police Station (Traffic Branch)', 'Main Road, 4700 Police Station Rd, Cox\'s Bazar 4700', ''),
(5, 'St. Martin Island', 'St. Martin Police Station', 'St. Martin Island', '01850-914836'),
(6, 'Bandarban', 'Bandarban Sadar Thana', 'Main Road,Bandarban Shador,Bandarban, Bandarban', ' 0361-62233'),
(7, 'Bandarban', 'Rowangchori Police Station, Bandarban', 'Z1813, Roangchari', ''),
(8, 'Rangamati', 'Betbunia Police Station', 'Betbunitya, Chittagong - Rangamati Road, Ranir Haat', '01769-690007'),
(9, 'Rangamati', 'Police Officer\'s Mess, Rangamati', 'Forest Colony - Pourosova Road, Rangamati', '0351-63018'),
(10, 'Kaptai', 'Kaptai Police Station', 'Chittagong - Kaptai Rd, Kaptai 4530', ''),
(11, 'Khagrachhari', 'Khagrachhari Police Line', 'Khagrachari-Dighinala Road, 4400', ''),
(12, 'Khagrachhari', 'Police Box', 'Ramgarh, Bangladesh', '01554-303526'),
(13, 'Shalban Buddhist Vihara', 'Police Line\'s Comilla', '3500, 12 Police Lines Rd, Comilla 3500', ''),
(14, 'Shalban Buddhist Vihara', 'Police Super Office', ' Dhirendranath Datta Rd, Comilla', ' 0817-6392'),
(15, 'Shalban Buddhist Vihara', 'Comilla Kotwali Police Station', ' Comilla', '01713-373685'),
(16, 'Sreemangal', 'Sreemangal Police Station', 'N207, Sreemangal 3210', '01713-374440'),
(17, 'Jaflong', 'Gowainghat Police Station', ' Gowainghat - Radhanagar Rd, Gowainghat', '01713-374378'),
(18, 'Bisnakandi', 'Gowainghat Police Station', ' Gowainghat - Radhanagar Rd, Gowainghat', '01713-374378'),
(19, 'Ratargul Swamp Forest', 'Deputy Police Commissioner (North) Office, SMP, Sylhet.', 'House No-Urmi-35, Sonar Para, Shibgonj, Sylhet., Tamabil Road, Sylhet', '01713-374509'),
(20, 'Ratargul Swamp Forest', 'South Surma Police Station', ' Sylhet City Bypass, Sylhet', ' 01713-374518'),
(21, 'Ratargul Swamp Forest', 'Bishwanath Police Station', 'Z2016, Bishwanath 3130', '01713-374384'),
(22, 'Hum Hum Waterfall', 'South Surma Police Station', ' Sylhet City Bypass, Sylhet', ' 01713-374518'),
(23, 'Hum Hum Waterfall', 'Bishwanath Police Station', 'Z2016, Bishwanath 3130', '01713-374384'),
(24, 'Lalakhal', 'South Surma Police Station', ' Sylhet City Bypass, Sylhet', ' 01713-374518'),
(25, 'Lalakhal', 'Bishwanath Police Station', 'Z2016, Bishwanath 3130', '01713-374384'),
(26, 'Hazrat Shahjalal Mazar Sharif', 'South Surma Police Station', ' Sylhet City Bypass, Sylhet', ' 01713-374518'),
(27, 'Hazrat Shahjalal Mazar Sharif', 'Bishwanath Police Station', 'Z2016, Bishwanath 3130', '01713-374384'),
(28, 'Nandan Park', 'Mouchak Police Fari', 'Mouchak - Fulbaria Rd', '01681-974655'),
(29, 'Jatiyo Sriti Shoudho', 'Savar Model Police Station', 'Thana Rd, Savar Union', '01713-373327'),
(30, 'Shaheed Minar', 'Sadar Circle Office, Bagerhat', 'Shaheed Minar Rd, Bagerhat', ' 0468-62735'),
(31, 'Hatirjheel', 'Hatirjheel Traffic Police Box', 'Bir Uttam Rafiqul Islam Ave, Dhaka', ''),
(32, 'HatirJheel', 'HatirJheel Water Taxi Terminal Police Plaza', 'Hatir Jheel Link Rd, Dhaka 1212', ''),
(33, 'Mahasthangarh', 'DB Office Rajshahi', 'Ct Station Rd, Rajshahi 6000', '0721-774134'),
(34, 'Mahasthangarh', 'Gouranga Traffic Police Box', 'Rajshahi - Naogaon Hwy, Rajshahi', ''),
(35, 'Paharpur Buddhist Bihar', 'DB Office Rajshahi', 'Ct Station Rd, Rajshahi 6000', '0721-774134'),
(36, 'Paharpur Buddhist Bihar', 'Gouranga Traffic Police Box', 'Rajshahi - Naogaon Hwy, Rajshahi', ''),
(37, 'Choto Shona Mosque', 'DB Office Rajshahi', 'Ct Station Rd, Rajshahi 6000', '0721-774134'),
(38, 'Choto Shona Mosque', 'Gouranga Traffic Police Box', 'Rajshahi - Naogaon Hwy, Rajshahi', ''),
(39, 'Bhinnojogot', 'Kotwali Police Station', 'Kotwali Thana Rd, Rangpur 5400', ' 0521-63090'),
(40, 'nilgiri', 'Bandarban Sadar Thana', 'Main Road,Bandarban Shador,Bandarban, Bandarban', ' 0361-62233'),
(41, 'Nilgiri', 'Rowangchori Police Station, Bandarban', 'Z1813, Roangchari', ''),
(42, 'Sajek Valley', 'Bandarban Sadar Thana', 'Main Road,Bandarban Shador,Bandarban, Bandarban', ' 0361-62233'),
(43, 'Sajek Valley', 'Rowangchori Police Station, Bandarban', 'Z1813, Roangchari', ''),
(44, 'Shundarban', 'Horintana Thana', 'Khulna City Bypass, Khulna\r\n', '01711-211904'),
(45, 'Shundarban', 'Daulatpur Thana', ' Khulna', '01713-373293'),
(46, 'Shat Gombuj Mosque', 'Horintana Thana', 'Khulna City Bypass, Khulna\r\n', '01711-211904'),
(47, 'Shat Gombuj Mosque', 'Daulatpur Thana', ' Khulna', '01713-373293'),
(48, 'Boga lake', 'Bandarban Sadar Thana', 'Main Road,Bandarban Shador,Bandarban, Bandarban', ' 0361-62233'),
(49, 'Keokradong', 'Bandarban Sadar Thana', 'Main Road,Bandarban Shador,Bandarban, Bandarban', ' 0361-62233'),
(50, 'Nafa khum Waterfalls', 'Bandarban Sadar Thana', 'Main Road,Bandarban Shador,Bandarban, Bandarban', ' 0361-62233'),
(51, 'Neval Beach', 'Chittagong Railway Police Station', ' Chittagong Rail Station Platform, Chittagong', ''),
(52, 'Neval Beach', 'Bandar Police Station', 'Chittagong', ' 031-722240'),
(53, 'Foy\'s Lake', 'Chittagong Railway Police Station', ' Chittagong Rail Station Platform, Chittagong', ''),
(54, 'Foy\'s Lake', 'Bandar Police Station', 'Chittagong', ' 031-722240'),
(55, 'Khoiya Chora Waterfalls', 'Chittagong Railway Police Station', ' Chittagong Rail Station Platform, Chittagong', ''),
(56, 'Khoiya Chora Waterfalls', 'Bandar Police Station', 'Chittagong', ' 031-722240'),
(57, 'Napittachora Waterfalls', 'Chittagong Railway Police Station', ' Chittagong Rail Station Platform, Chittagong', ''),
(58, 'Napittachora Waterfalls', 'Bandar Police Station', 'Chittagong', ' 031-722240'),
(59, 'bhatiyari', 'Baraowlia Highway Police Station', 'Dhaka-Chittagong Hwy, Baraowlia, Sonaichari, Sitakunda, N1', '01733-231912'),
(60, 'bhatiyari', 'Faujdarhat Police Outpost', 'Dhaka - Chittagong Hwy, Salimpur', ''),
(61, 'Shaheed Zia Smriti Complex', 'Bahaddarhat Police Box', ' N1, Chittagong 4212', ' 031-654879'),
(62, 'Shaheed Zia Smriti Complex', 'Bayazid Bostami Police Station', 'Baizid Thana road, Chittagong 4210\r\n', '01713-373262'),
(63, 'Chittagong War Cemetery', 'Panchlaish Model Police Station', 'O.R. Nizam Rd, Chittagong 4203', '031-652797'),
(64, 'Avoymitra Ghat', 'Kotwali Police Station\r\n', ' Abdur Rahman Road, Chittagong 4300\r\n', '031-619922');

-- --------------------------------------------------------

--
-- Table structure for table `res`
--

CREATE TABLE `res` (
  `id` int(11) NOT NULL,
  `place_name` mediumtext NOT NULL,
  `res_name` mediumtext NOT NULL,
  `res_des` text NOT NULL,
  `res_image` mediumtext NOT NULL,
  `res_lat` mediumtext NOT NULL,
  `res_lon` mediumtext NOT NULL,
  `Snacks` int(11) NOT NULL,
  `Lunch` int(11) NOT NULL,
  `Dinner` int(11) NOT NULL,
  `res_address` text NOT NULL,
  `res_contact` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `res`
--

INSERT INTO `res` (`id`, `place_name`, `res_name`, `res_des`, `res_image`, `res_lat`, `res_lon`, `Snacks`, `Lunch`, `Dinner`, `res_address`, `res_contact`) VALUES
(1, 'Coxsbazar', 'Mermaid Cafe', '', 'image/mermaid.jpg', '21.421296', '91.978326', 200, 300, 300, 'Near Dragon mart, Kolatoli Road, Sugandha Beach Sea In point, Hotel motel Zone, Cox\'s Bazar 4700', '+880 1841-416461'),
(2, 'Coxsbazar', 'Niribili Orchid Club & Restaurant', '', 'image/niribili.jpg', '21.427445', '91.97763', 100, 300, 300, 'Hotel Motel Zone, Cox\'s Bazar, Bangladesh', ' +880 341-64334'),
(3, 'Coxsbazar', 'Poushee Restaurant', '', 'image/poushee.jpg', '21.442607', '91.970522', 200, 300, 300, 'Hotel Saymon Road | Jhawtala, Cox\'s Bazar 4700, Bangladesh', '+880 1881-222666'),
(4, 'Coxsbazar', 'EFC - A Live Fish Restaurant', '', 'image/EFC.jpg', '21.434499', '91.971576', 100, 200, 200, 'Motel Road, Cox\'s Bazar, Bangladesh', ' +880 1914-133108'),
(5, 'Rangamati', 'Peda Ting Ting Restaurant', '', 'image/peda.png', '22.652814', '92.229598', 60, 100, 100, 'Kaptai Lake | Hire/ Take a Boat From Reserve Bazar and Peda Ting Is the First Stopage Towards Shuvolong, Rangamati, Bangladesh  ', '+880 351-62052'),
(6, 'Rangamati', 'Chang Pang Restaurant', '', 'image/chang.jpg', '22.664034', '92.231477', 50, 100, 100, 'Rangamati,Lake, Kaptai, Chittagong', '01820-549703'),
(7, 'Rangamati', 'Mermaid Cafe, Rangamati', '', 'image/mermaid_ranga.jpg', '22.658229', '92.23594', 50, 100, 100, 'Rangamati, Chittagong', ''),
(8, 'Rangamati', 'Dhansiri Restaurant', '', 'image/dhansiri.jpg', '22.654093', '92.197209', 50, 100, 100, 'Taxi Stand,Rangamati,, Reserve Bazar', ' 01851-213253'),
(9, 'Kaptai', 'Berannye Lake Shore Cafe', '', 'image/berinne.jpg', '22.57157', '92.180527', 50, 200, 200, 'Boradam Bazar, Mogban Union, Rangamati - Kaptai Link Rd, 4500', '01732-332819'),
(10, 'Kaptai', 'Borgang Restaurant', '', 'image/Borgang.jpg', '22.573446', '92.178252', 100, 200, 200, 'Kaptai Lake, Kaptai Link Road, Asham Bosti', '01821-827938'),
(11, 'Kaptai', 'Joom Restora', '', 'image/joom.jpg', '22.507619', '92.1458', 50, 100, 100, 'Chittagong - Kaptai Road, Kaptai, Rangamati, Chittagong', '01811-460460'),
(12, 'Kaptai', 'Jumghor Lakeview Cafe & Restaurant', '', 'image/jumghor.jpg', '22.578068', '92.174541', 60, 100, 100, 'Kaptai Road, Rangamati, Morgona, Morgona 4500', ' 01557-833777'),
(13, 'Bisnakandi', 'Panshi Restaurant', '', 'image/panshi.jpg', '24.89508', '91.867479', 60, 100, 100, 'Jallarpar Road Zindabazar, Sylhet 3100', '01761-152939'),
(14, 'Bisnakandi', 'Pach Bhai Restaurant', '', 'image/pachvai.jpg', '24.894972', '91.866409', 60, 100, 100, ' Dariapara Road, Sylhet 3100', '01710-459607'),
(15, 'Bisnakandi', 'Palki Restaurant', '', 'image/palki.jpg', '24.89465', '91.869565', 60, 100, 100, 'Shohir Plaza, Sylhet 3100', '01715-396467'),
(16, 'Bisnakandi', 'Bhujon Bari Restaurant', '', 'image/bhojonbari.jpg', '24.894695', '91.867515', 60, 100, 100, 'Jallarpar Road, Zindabazar, Sylhet 3100', '01793-670000'),
(17, 'Jaflong', 'Panshi Restaurant', '', 'image/panshi.jpg', '24.89508', '91.867479', 60, 100, 100, 'Jallarpar Road Zindabazar, Sylhet 3100', '01761-152939'),
(18, 'Jaflong', 'Pach Bhai Restaurant', '', 'image/pachvai.jpg', '24.894972', '91.866409', 60, 100, 100, ' Dariapara Road, Sylhet 3100', '01710-459607'),
(19, 'Jaflong', 'Palki Restaurant', '', 'image/palki.jpg', '24.89465', '91.869565', 60, 100, 100, 'Shohir Plaza, Sylhet 3100', '01715-396467'),
(20, 'Jaflong', 'Bhujon Bari Restaurant', '', 'image/bhojonbari.jpg', '24.894695', '91.867515', 60, 100, 100, 'Jallarpar Road, Zindabazar, Sylhet 3100', '01793-670000'),
(222, 'sundarban', 'Citylight Cafe & Restaurant', '', 'image/CitylightCafe&Restaurant.jpg', '', '', 200, 400, 400, '22 Sir Iqbal Road | Sibl Bank Tower, 9th & 10th Floor, Picture Palace Mor, Khulna City 9100', '+880 1685-968902\r\n'),
(221, 'sundarban', 'Sureswar Hotel and Restaurant', '', 'image/sureswar-hotel-and-restaurant.jpg', '', '', 100, 200, 200, 'Main Road, Mongla, Bangladesh', ''),
(25, 'Hum Hum Waterfall', 'Panshi Restaurant', '', 'image/panshi.jpg', '24.89508', '91.867479', 60, 100, 100, 'Jallarpar Road Zindabazar, Sylhet 3100', '01761-152939'),
(26, 'Hum Hum Waterfall', 'Pach Bhai Restaurant', '', 'image/pachvai.jpg', '24.894972', '91.866409', 60, 100, 100, ' Dariapara Road, Sylhet 3100', '01710-459607'),
(27, 'Hum Hum Waterfall', 'Palki Restaurant', '', 'image/palki.jpg', '24.89465', '91.869565', 60, 100, 100, 'Shohir Plaza, Sylhet 3100', '01715-396467'),
(28, 'Hum Hum Waterfall', 'Bhujon Bari Restaurant', '', 'image/bhojonbari.jpg', '24.894695', '91.867515', 60, 100, 100, 'Jallarpar Road, Zindabazar, Sylhet 3100', '01793-670000'),
(29, 'Lalakhal', 'Panshi Restaurant', '', 'image/panshi.jpg', '24.89508', '91.867479', 60, 100, 100, 'Jallarpar Road Zindabazar, Sylhet 3100', '01761-152939'),
(30, 'Lalakhal', 'Pach Bhai Restaurant', '', 'image/pachvai.jpg', '24.894972', '91.866409', 60, 100, 100, ' Dariapara Road, Sylhet 3100', '01710-459607'),
(31, 'Lalakhal', 'Palki Restaurant', '', 'image/palki.jpg', '24.89465', '91.869565', 60, 100, 100, 'Shohir Plaza, Sylhet 3100', '01715-396467'),
(32, 'Lalakhal', 'Bhujon Bari Restaurant', '', 'image/bhojonbari.jpg', '24.894695', '91.867515', 60, 100, 100, 'Jallarpar Road, Zindabazar, Sylhet 3100', '01793-670000'),
(33, 'Shundarban', 'Mejban bari', '', 'image/mejban.jpg', '22.7996', '89.535371', 50, 150, 150, 'Gollamari - Sonadanga Bypass Rd, Khulna 9208', '01711-071110'),
(34, 'Shundarban', 'Mughal\'s Dine', '', 'image/mughal.jpg', '22.815916', '89.562527', 60, 150, 150, '69,Cemetery Road, Dak Bangla, Khulna City, Khulna 9100', '01712-672297'),
(35, 'Shundarban', 'Firefly Restaurant', '', 'image/firefly.jpg', '22.784663', '89.540022', 60, 150, 150, 'Khulna', '01959-457377'),
(36, 'Nilgiri', 'Nilgiri Hill Resort', '', 'image/nilgiri_hill.jpg', '', '', 100, 200, 200, 'Bandarban-Thanchi Road, Nilgiri, Bandarban', ' 01769-299999'),
(37, 'Nandan Park', 'Nayori Hotel and Restaurant', '', 'image/nayori.jpg', '23.995416', '90.25499', 50, 150, 150, 'Fantasy Kingdom Complex, Jamgora, Ashulia, Savar, Bailpail, Dhaka 1344', '01681-005444'),
(38, 'Nandan Park', 'Radhuni Hotel and Restaurant', '', 'image/radhuni1.jpg', '24.075987', '90.2089.82', 100, 150, 150, 'Sector-1, Uttara, Dhaka', '01812-956158'),
(39, 'Nandan Park', 'Dhaka Hotel  And Restaurant', '', 'image/all.jpg', '24.02732', '90.242504', 50, 150, 150, 'Plot 1B, Rd No 1, Dhaka 1230', '01834-457292'),
(40, 'Nandan Park', 'Cave Restaurant', '', 'image/sample2.jpg', '24.029886', '90.241212', 100, 150, 150, '52 Rd No. 11, Dhaka 1213', '01911-144408'),
(41, 'Nandan Park', 'Lasania Restaruant', '', 'image/lasania.jpg', '23.991957', '90.256145', 100, 150, 150, 'Moinartek, Uttarkhan, Dhaka 1230', '01970-104607'),
(42, 'Bangladesh National Museum', 'Pafin Chinese Restaurant', '', 'image/PafinChineseRestaurant.jpg', '23.719887', '90.390196', 50, 150, 150, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '01714-648484'),
(43, 'Bangladesh National Museum', 'Star Hotel & Kabab', '', 'image/StarHotel&Kabab.jpg', '23.739391', '90.381233', 100, 150, 150, '54, Kawran Bazar Road No 1, Dhaka 1215', '02-9676847'),
(44, 'Bangladesh National Museum', 'Fish & Co', '', 'image/Fish&Co.jpg', '23.752852', '90.369807', 50, 150, 150, '30 Bijoy Nagar Road, Dhaka 1000', '01777-794181'),
(45, 'Bangladesh National Museum', 'Cloud Bistro', '', 'image/CloudBistro.jpg', '23.751183', '90.386397', 100, 150, 150, 'Holding 20/A, Indira Rd, Dhaka 1215', '01956-200300'),
(46, 'Bangladesh National Museum', 'Sultan\'s Dine', '', 'image/SultansDine.jpg', '23.738891', '90.375443', 100, 150, 150, 'Akram Center, 212 Shahid Syed Nazrul Islam Sharani, Dhaka 1000', '01903-598625'),
(47, 'Ramna Park', 'Pafin Chinese Restaurant', '', 'image/PafinChineseRestaurant.jpg', '23.719887', '90.390196', 50, 150, 150, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '01714-648484'),
(48, 'Ramna Park', 'Star Hotel & Kabab', '', 'image/StarHotel&Kabab.jpg', '23.739391', '90.381233', 100, 150, 150, '54, Kawran Bazar Road No 1, Dhaka 1215', '02-9676847'),
(49, 'Ramna Park', 'Fish & Co', '', 'image/Fish&Co.jpg', '23.752852', '90.369807', 50, 150, 150, '30 Bijoy Nagar Road, Dhaka 1000', '01777-794181'),
(50, 'Ramna Park', 'Cloud Bistro', '', 'image/CloudBistro.jpg', '23.751183', '90.386397', 100, 150, 150, 'Holding 20/A, Indira Rd, Dhaka 1215', '01956-200300'),
(51, 'Ramna Park', 'Sultan\'s Dine', '', 'image/SultansDine.jpg', '23.738891', '90.375443', 100, 150, 150, 'Akram Center, 212 Shahid Syed Nazrul Islam Sharani, Dhaka 1000', '01903-598625'),
(52, 'Bangabandhu Novo Theatre', 'Bijoy shoroni Restarant', '', 'image/BijoyshoroniRestarant.jpg', '23.763111', '90.389359', 100, 150, 150, '176, Shaheed Syed Nazrul Islam Sarani Old, 47 Bijoy Nagar Road, Dhaka 1000', '01818-044152'),
(53, 'Bangabandhu Novo Theatre', 'Yummy Yummy', '', 'image/YummyYummy.jpg', '23.763507', '90.388909', 50, 150, 150, '54, Kawran Bazar Road No 1, Dhaka 1215', '01613-222167'),
(54, 'Bangabandhu Novo Theatre', 'Hungry Deals Restarant', '', 'image/HungryDealsRestarant.jpg', '23.763233', '90.383593', 100, 150, 150, 'Paradise Plaza, Com. Plot # 6 and 11, Dhaka 1216', '01619-006700'),
(55, 'Jatiya Sangsad Bhaban', 'Boishakhi Hotel and Restaurant', '', 'image/BoishakhiHotelandRestaurant.jpg', '23.750858', '90.386896', 100, 150, 150, 'Akram Center, 212 Shahid Syed Nazrul Islam Sharani, Dhaka 1000', '01919-181194'),
(56, 'Jatiya Sangsad Bhaban', 'Santoor Restauant', '', 'image/SantoorRestauant.jpg', '23.75188', '90.3775315', 50, 150, 150, '176, Shaheed Syed Nazrul Islam Sarani Old, 47 Bijoy Nagar Road, Dhaka 1000', '02-9128737'),
(57, 'Jatiya Sangsad Bhaban', 'Al-Amar', '', 'image/Al-Amar.jpg', '23.753048', '90.369462', 100, 150, 150, '30 Bijoy Nagar Road, Dhaka 1000', '01745-563819'),
(58, 'Jatiya Sangsad Bhaban', 'Cloud Bistro', '', 'image/CloudBistro.jpg', '23.751183', '90.386397', 100, 150, 150, 'House # 07 Rd 16, Dhaka 1212', '01956-200300'),
(59, 'National  Zoo', 'Six Seasons Restaurant', '', 'image/SixSeasonsRestaurant.jpg', '23.817112', '90.356097', 200, 250, 250, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '01972-654898'),
(60, 'National Zoo', 'Shakib\'s 75 Restaurant ', '', 'image/shakib75.jpg', '23.798423', '90.352167', 200, 300, 300, 'Paradise Plaza, Com. Plot # 6 and 11, Dhaka 1216', '01746-390077'),
(61, 'National Zoo', 'VIP\'S Restauant', '', 'image/vipres.jpg', '23.800558', '90.355213', 100, 200, 200, 'House 31-B, Road 35-A, Dhaka 1212', '01746-390078'),
(62, 'National Zoo', 'PERI PASTA', '', 'image/pasta.jpg', '23.803405', '90.354746', 100, 150, 150, 'House No 59, Block-C, Rd No 17, Dhaka 1213', '01746-390079'),
(63, 'National Zoo', 'Grand Prince Restaurent', '', 'image/all.jpg', '23.798573', '23.798573', 80, 120, 120, '27 Shayesta Khan Ave, Dhaka 1230', '01746-390080'),
(64, 'Shaheed Minar', 'Sultan\'s Dine', '', 'image/SultansDine.jpg', '23.738891', '90.375443', 50, 150, 150, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '01903-598625'),
(65, 'Shaheed Minar', 'Cloud Bistro', '', 'image/CloudBistro.jpg', '23.751183', '90.386397', 100, 150, 150, '54, Kawran Bazar Road No 1, Dhaka 1215', '01956-200300'),
(66, 'Shaheed Minar', 'Fish & Co', '', 'image/Fish&Co.jpg', '23.752852', '90.369807', 50, 150, 150, '30 Bijoy Nagar Road, Dhaka 1000', '01777-794181'),
(67, 'Shaheed Minar', 'Star Hotel & Kabab', '', 'image/StarHotel&Kabab.jpg', '23.739391', '90.381233', 100, 150, 150, 'Holding 20/A, Indira Rd, Dhaka 1215', '02-9676847'),
(68, 'Shaheed Minar', 'Pafin Chinese Restaurant', '', 'image/PafinChineseRestaurant.jpg', '23.719887', '90.390196', 100, 150, 150, 'Akram Center, 212 Shahid Syed Nazrul Islam Sharani, Dhaka 1000', '01714-648484'),
(69, 'Hatirjheel', 'Hatir Jheel Restaurant', '', 'image/HatirJheelRestaurant.jpg', '23.768558', '90.411661', 100, 150, 150, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '01971-543219'),
(70, 'Hatirjheel', 'Krua Thai', '', 'image/KruaThai.jpg', '23.771774', '90.413304', 100, 160, 160, 'House 31-B, Road 35-A, Dhaka 1212', '01992-417865'),
(71, 'Hatirjheel', 'Syllhet Hotel and Restaurant', '', 'image/SyllhetHotelandRestaurant.jpg', '23.767164', '90.4089', 50, 100, 100, 'Paradise Plaza, Com. Plot # 6 and 11, Dhaka 1216', '01792-475839'),
(72, 'Hatirjheel', 'Cafe Sufia Restaurant', '', 'image/CafeSufiaRestaurant.jpg', '23.769091', '90.408089', 100, 150, 150, 'House No 59, Block-C, Rd No 17, Dhaka 1213', '01792-475840'),
(73, 'Hatirjheel', 'Koyla', '', 'image/Koyla.jpg', '23.771168', '90.411203', 150, 200, 200, 'House # 14, Road # 27, Block # J, Dhaka 1213', '01715-260609'),
(74, 'Dhanmondi Lake', 'Takeout Dhanmondi', '', 'image/TakeoutDhanmondi.jpg', '23.744699', '90.372152', 100, 150, 150, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '01847-290010'),
(75, 'Dhanmondi Lake', 'Bbq Bangladesh Dhanmondi', '', 'image/BbqBangladeshDhanmondi.jpg', '23.749827', '90.368669', 100, 160, 160, '54, Kawran Bazar Road No 1, Dhaka 1215', '01729-273227'),
(76, 'Dhanmondi Lake', 'KFC Restaurant', '', 'image/KFCRestaurant.jpg', '23.743462', '90.373519', 100, 140, 140, 'Akram Center, 212 Shahid Syed Nazrul Islam Sharani, Dhaka 1000', '01779-435467'),
(77, 'Dhanmondi Lake', 'Sultan\'s Dine', '', 'image/SultansDine.jpg', '23.738891', '90.375443', 50, 150, 150, '155 Shanti Nagar Rd, Dhaka 1217', '01903-598625'),
(78, 'Rose Garden', 'China Hut', '', 'image/ChinaHut.jpg', '23.72013', '90.425299', 100, 150, 150, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '01903-598625'),
(79, 'Rose Garden', 'Crazy Chicken', '', 'image/CrazyChicken.jpg', '23.71928', '90.421457', 100, 150, 150, '54, Kawran Bazar Road No 1, Dhaka 1215', '01903-598626'),
(80, 'Rose Garden', 'Cafe 18', '', 'image/Cafe18.jpg', '23.719227', '90.421217', 100, 150, 150, 'Akram Center, 212 Shahid Syed Nazrul Islam Sharani, Dhaka 1000', '01903-598627'),
(81, 'Rose Garden', 'Biyebari Restaurant', '', 'image/BiyebariRestaurant.jpg', '23.71919', '90.42044', 100, 150, 150, '176, Shaheed Syed Nazrul Islam Sarani Old, 47 Bijoy Nagar Road, Dhaka 1000', '01903-598628'),
(82, 'Rose Garden', 'Grand Darbar Restaurant', '', 'image/GrandDarbarRestaurant.jpg', '23.719893', '90.420031', 100, 150, 150, '30 Bijoy Nagar Road, Dhaka 1000', '01903-598629'),
(83, 'Sat Gambuj Mosque', 'Kutum Bari', '', 'image/KutumBari.jpg', '23.755857', '90.366648', 100, 150, 150, 'Paradise Plaza, Com. Plot # 6 and 11, Dhaka 1216', '01903-598631'),
(84, 'Sat Gambuj Mosque', 'Nawabi Voj', '', 'image/NawabiVoj.jpg', '23.762514', '90.358681', 100, 150, 150, 'Holding 20/A, Indira Rd, Dhaka 1215', '01903-598632'),
(85, 'Sat Gambuj Mosque', 'OnFire Restaurant', '', 'image/OnFireRestaurant.jpg', '23.764489', '90.358992', 100, 150, 150, 'House 31-B, Road 35-A, Dhaka 1212', '01903-598633'),
(86, 'Sat Gambuj Mosque', 'Arabian Nights Restaurant', '', 'image/ArabianNightsRestaurant.jpg', '23.763174', '90.361354', 100, 150, 150, '54, Kawran Bazar Road No 1, Dhaka 1215', '01903-598634'),
(87, 'Lalbagh Fort', 'Plate 21', '', 'image/Plate21.jpg', '23.718643', '90.390028', 100, 150, 150, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '01611-538888'),
(88, 'Lalbagh Fort', 'Royal Restaurant', '', 'image/RoyalRestaurant.jpg', '23.719558', '90.390559', 100, 150, 150, 'Paradise Plaza, Com. Plot # 6 and 11, Dhaka 1216', '02-8627168'),
(89, 'Lalbagh Fort', 'Pizza King', '', 'image/PizzaKing.jpg', '23.719834', '90.388871', 100, 150, 150, 'Akram Center, 212 Shahid Syed Nazrul Islam Sharani, Dhaka 1000', '01758-333745'),
(90, 'Lalbagh Fort', 'Bhooter Bari Restaurent', '', 'image/BhooterBariRestaurent.jpg', '23.719878', '90.388342', 100, 150, 150, '176, Shaheed Syed Nazrul Islam Sarani Old, 47 Bijoy Nagar Road, Dhaka 1000', '01954-321059'),
(91, 'Lalbagh Fort', 'ARABIAN MASTER', '', 'image/ARABIANMASTER.jpg', '23.719844', '90.389653', 100, 150, 150, '30 Bijoy Nagar Road, Dhaka 1000', '01954-321060'),
(92, 'Nuhash Polli', 'Netrokona Hotel & Restarant', '', 'image/NetrokonaHotel&Restarant.jpg', '24.119765', '90.407469', 50, 100, 100, 'Fantasy Kingdom Complex, Jamgora, Ashulia, Savar, Bailpail, Dhaka 1344', '01954-321061'),
(93, 'Nuhash Polli', 'Shantona Hotel & Restaurant', '', 'image/ShantonaHotel&Restaurant.jpg', '24.121269', '90.408794', 50, 100, 100, 'Gazipur,Bangladesh', '01954-321062'),
(94, 'Nuhash Polli', 'Bhajon Bilash Restaurant', '', 'image/BhajonBilashRestaurant.jpg', '24.123555', '90.409279', 80, 120, 120, 'Baroipara, Nabinagar - Chandra Highway, Ashulia, Savar Dhaka, Savar 1702', '01954-321063'),
(95, 'Nuhash Polli', 'Mohammadia Restarant', '', 'image/MohammadiaRestarant.jpg', '24.1227', '90.408844', 80, 120, 120, 'Pubail - Gazipur Road, Dhaka City Bypass, Meghdubi, Gazipur 1721', '01954-321064'),
(96, 'National Botanical Garden of Bangladesh', 'Six Seasons Restaurant', '', 'image/SixSeasonsRestaurant.jpg', '23.817112', '90.356097', 200, 250, 250, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '01972-654898'),
(97, 'Nationa Botanical Garden of Bangaladeh', 'Shakib\'s 75 Restaurant ', '', 'image/Shakibs75Restaurant.jpg', '23.798423', '90.352167', 200, 300, 300, 'Paradise Plaza, Com. Plot # 6 and 11, Dhaka 1216', '01746-390077'),
(98, 'Nationa Botanical Garden of Bangaladeh', 'VIP\'S Restauant', '', 'image/VIPSRestauant.jpg', '23.800558', '90.355213', 100, 200, 200, 'House 31-B, Road 35-A, Dhaka 1212', '01746-390078'),
(99, 'Nationa Botanical Garden of Bangaladeh', 'PERI PASTA', '', 'image/PERIPASTA.jpg', '23.803405', '90.354746', 100, 150, 150, 'House No 59, Block-C, Rd No 17, Dhaka 1213', '01746-390079'),
(100, 'Nationa Botanical Garden of Bangaladeh', 'Grand Prince Restaurant', '', 'image/GrandPrinceRestaurent.jpg', '23.798573', '23.798573', 80, 120, 120, '27 Shayesta Khan Ave, Dhaka 1230', '01746-390080'),
(101, 'Fantasy Kingdom', 'Nayori Hotel and Restaurant', '', 'image/nayori.jpg', '23.995416', '90.25499', 50, 150, 150, 'Fantasy Kingdom Complex, Jamgora, Ashulia, Savar, Bailpail, Dhaka 1344', '01903-598625'),
(102, 'Fantasy Kingdom', 'Radhuni Hotel and Restaurant', '', 'image/sample2.jpg', '24.075987', '90.2089.82', 100, 150, 150, 'Sector-1, Uttara, Dhaka', '01972-654898'),
(103, 'Fantasy Kingdom', 'Dhaka Hotel  And Restaurant', '', 'image/sample3.jpg', '24.02732', '90.242504', 50, 150, 150, 'Plot 1B, Rd No 1, Dhaka 1230', '01746-390077'),
(104, 'Fantasy Kingdom', 'Cave Restaurant', '', 'image/sample4.jpg', '24.029886', '90.241212', 100, 150, 150, '52 Rd No. 11, Dhaka 1213', '01746-390078'),
(105, 'Fantasy Kingdom', 'Lasania Restaruant', '', 'image/lasania.jpg', '23.991957', '90.256145', 100, 150, 150, 'Moinartek, Uttarkhan, Dhaka 1230', '01746-390079'),
(106, 'Jatiyo Sriti Shoudho', 'Nayori Hotel and Restaurant', '', 'image/nayori.jpg', '23.995416', '90.25499', 50, 150, 150, 'Fantasy Kingdom Complex, Jamgora, Ashulia, Savar, Bailpail, Dhaka 1344', '01746-390080'),
(107, 'Jatiyo Sriti Shoudho', 'Radhuni Hotel and Restaurant', '', 'image/sample2.jpg', '24.075987', '90.2089.82', 100, 150, 150, 'Sector-1, Uttara, Dhaka', '01903-598625'),
(108, 'Jatiyo Sriti Shoudho', 'Dhaka Hotel  And Restaurant', '', 'image/sample3.jpg', '24.02732', '90.242504', 50, 150, 150, 'Plot 1B, Rd No 1, Dhaka 1230', '01777-794181'),
(109, 'Jatiyo Sriti Shoudho', 'Cave Restaurant', '', 'image/sample4.jpg', '24.029886', '90.241212', 100, 150, 150, '52 Rd No. 11, Dhaka 1213', '02-9676847'),
(110, 'Jatiyo Sriti Shoudho', 'Lasania Restaruant', '', 'image/lasania.jpg', '23.991957', '90.256145', 100, 150, 150, 'Moinartek, Uttarkhan, Dhaka 1230', '01714-648484'),
(111, 'Rangamati', 'Mermaid Cafe Rangamati', '', 'image/maermaid_rangamati.jpg', '22.658234', '92.235956', 200, 400, 400, 'Reserve Bazar,Rangamati', '01841-416474'),
(112, 'Rangamati', 'Hotel Red Chilli Restaurant & Biriani House', '', 'image/redchillirangamati.jpg', '22.654502', '92.19681', 100, 160, 160, 'Reserve Bazar,Rangamati', '01818-182000'),
(113, 'Rangamati', 'Peda Ting Ting', '', 'image/pedatingting.jpg', '22.652891', '92.229603', 100, 160, 160, 'Reserve Bazar,Rangamati', '0351-62082'),
(114, 'Rangamati', 'Crispy Food Gallery', '', 'image/CrispyFoodGallery.jpg', '22.652699', '92.179376', 80, 150, 159, 'Reserve Bazar,Rangamati', '01613-009003'),
(115, 'Rangamati', 'Hotel Hill Zaman', '', 'image/HotelHillZaman.jpg', '22.649272', '92.184011', 80, 130, 130, 'Reserve Bazar,Rangamati', '01613-009004'),
(116, 'Khagrachhari', 'System Restaurant', '', 'image/SystemRestaurant.jpg', '23.104925', '91.990869', 50, 100, 100, 'Khagrachhari,Chittagong-4400', '0371-62634'),
(117, 'Khagrachhari', 'E-ZOR', '', 'image/E-ZOR.jpg', '23.112348', '91.981024', 50, 120, 120, 'Khagrachhari,Chittagong-4400', '01616-561600'),
(118, 'Khagrachhari', 'Khang Moy', '', 'image/KhangMoy.jpg', '23.106793', '91.99159', 50, 100, 100, 'Khagrachhari,Chittagong-4400', '01714-648484'),
(119, 'Khagrachhari', 'khagrachari Resort -Residential & Restaurant', '', 'image/khagrachariResort-Residential&Restaurant.jpg', '23.109013', '91.980831', 80, 120, 120, 'Khagrachhari,Chittagong-4400', '01841-416474'),
(120, 'Khagrachhari', 'A K Jilani (roh.) Hotel & Restaurant', '', 'image/AKJilani(roh.)Hotel&Restaurant.jpg', '23.108391', '91.981045', 60, 100, 100, 'Khagrachhari,Chittagong-4400', '01818-182000'),
(121, 'Kaptai', 'Ma Mini Chinese', '', 'image/chowdhury.jpg', '22.502196', '92.212408', 80, 100, 100, 'Hosna Kalam Complex, CDA Ave, Chittagong 4000', '0351-62082'),
(122, 'Kaptai', 'Shaad Hotel And Restaurant', '', 'image/shaad.jpg', '22.503164', '92.211036', 60, 120, 120, 'Khwaja Super Market, Bahaddarhat More, Chittagong 4000', '01714-648484'),
(223, 'sundarban', 'Shawarma House', '', 'image/ShawarmaHouse.jpg', '', '', 200, 300, 300, '12 KDA Avenue, Khulna., Khulna City 9100', '+880 1730-628150'),
(228, 'Khulna', 'castle Salam', '', 'image/castleSalam.jpg', '', '', 200, 400, 400, 'G-8 Taltola Ln, Khulna 9000, Khulna City', '+880 41-720160\r\n'),
(124, 'Kaptai', 'Master er Hotel', '', 'image/master.jpg', '22.499685', '92.21528', 50, 120, 120, '1367 CDA Ave, Chittagong 4000', '01818-182000'),
(125, 'Kaptai', 'Chowdhury Hotel', '', 'image/chowdhury.jpg', '22.50633', '92.213161', 60, 100, 100, 'House No 23, Road No 2, O.R. Nizam Road, Chittagong 4100', '0351-62082'),
(126, 'Shaheed Zia Smriti Complex', 'Ghorua Fast Foods', '', 'image/GhoruaFastFoods.jpg', '22.376133', '91.851316', 50, 80, 80, 'Hosna Kalam Complex, CDA Ave, Chittagong 4000', '0351-62083'),
(127, 'Shaheed Zia Smriti Complex', 'City View Revolving Restaurant', '', 'image/CityViewRevolvingRestaurant.jpg', '22.374405', '91.848775', 200, 400, 400, 'Khwaja Super Market, Bahaddarhat More, Chittagong 4000', '01713-124688'),
(128, 'Shaheed Zia Smriti Complex', 'Goribe Neowaz Hotel & Restaurant', '', 'image/GoribeNeowazHotel&Restaurant.jpg', '22.374652', '91.850605', 50, 100, 100, '14, Sha Alam Tower, Kapasgola Road, Telpotti More, Chawkbazar', '01818-182000'),
(129, 'Shaheed Zia Smriti Complex', 'Kashbon Restaurant', '', 'image/KashbonRestaurant.jpg', '22.368203', '91.844214', 80, 160, 160, '1367 CDA Ave, Chittagong 4000', '0351-62082'),
(130, 'Shaheed Zia Smriti Complex', 'Zaman Hotel & Birani House Restaurent', '', 'image/ZamanHotel&BiraniHouseRestaurent.jpg', '22.368341', '91.844793', 60, 120, 120, 'House No 23, Road No 2, O.R. Nizam Road, Chittagong 4100', '01714-648484'),
(131, 'Foy\'s Lake', 'Tava Restaurant and Lounge', '', 'image/TavaRestaurantandLounge.jpg', '22.361625', '91.812114', 80, 100, 100, 'Hosna Kalam Complex, CDA Ave, Chittagong 4000', '01729-298282'),
(132, 'Foy\'s Lake', 'Kutumbobari Restora And Biryani House', '', 'image/KutumbobariRestoraAndBiryaniHouse.jpg', '22.362637', '91.782503', 60, 120, 120, '1367 CDA Ave, Chittagong 4000', '01970-104607'),
(133, 'Foy\'s Lake', 'Panshi Restaurant', '', 'image/PanshiRestaurant.jpg', '22.364469', '91.79734', 60, 120, 120, '1367 CDA Ave, Chittagong 4000', '01714-648484'),
(134, 'Foy\'s Lake', 'Sharnali Restaurant And Biriani House', '', 'image/SharnaliRestaurantAndBirianiHouse.jpg', '22.364106', '91.797355', 50, 120, 120, 'House No 23, Road No 2, O.R. Nizam Road, Chittagong 4100', '02-9676847'),
(135, 'Foy\'s Lake', 'Bismillah Hotel & Restaurant', '', 'image/BismillahHotel&Restaurant.jpg', '22.362148', '91.79774', 60, 100, 100, 'Zakir Hossain Rd, Chittagong 4201', '01777-794181'),
(136, 'Avoymitra Ghat', 'Momtaj Hotel Restaurant And Biryani House', '', 'image/MomtajHotelRestaurantAndBiryaniHouse.jpg', '22.327466', '91.837813', 80, 100, 100, '336, Station Road, Chittagong 4100', '01956-200300'),
(137, 'Avoymitra Ghat', 'Cafe Hotel And Restaurant', '', 'image/CafeHotelAndRestaurant.jpg', '22.328475', '91.837473', 60, 120, 120, 'Station Road, Chittagong 4000', '01903-598625'),
(138, 'Avoymitra Ghat', 'La Gondola', '', 'image/LaGondola.jpg', '22.329415', '91.836448', 50, 100, 100, '659/A, Station Road, Chittagong 4300', '01714-648484'),
(139, 'Avoymitra Ghat', 'Mohammadia Restaurant & Confectionary', '', 'image/MohammadiaRestaurant&Confectionary.jpg', '22.329421', '91.836224', 50, 120, 120, '659/A, Station Road, Chittagong 4301', '02-9676847'),
(140, 'Avoymitra Ghat', 'Madina Hotel & Birani House', '', 'image/MadinaHotel&BiraniHouse.jpg', '22.329589', '91.836328', 60, 100, 100, '659/A, Station Road, Chittagong 4302', '01777-794181'),
(141, 'Chittagong War Cemetery', 'Avalon Restaurant', '', 'image/AvalonRestaurant.jpg', '22.354315', '91.830875', 100, 130, 130, 'Hosna Kalam Complex, CDA Ave, Chittagong 4000', '01956-200300'),
(142, 'Chittagong War Cemetery', 'Muno Cafe Bistro', '', 'image/MunoCafeBistro.jpg', '22.354382', '91.830953', 60, 120, 120, '1367 CDA Ave, Chittagong 4000', '01903-598625'),
(143, 'Chittagong War Cemetery', 'Cafe Milano', '', 'image/CafeMilano.jpg', '22.359812', '91.82795', 100, 130, 130, '336, Station Road, Chittagong 4100', '01711-901034'),
(144, 'Chittagong War Cemetery', 'Coffee Inn', '', 'image/CoffeeInn.jpg', '22.359194', '91.826481', 80, 120, 120, 'House No 23, Road No 2, O.R. Nizam Road, Chittagong 4100', '01818-044152'),
(145, 'Chittagong War Cemetery', 'Amigos Cafe and Bistro', '', 'image/AmigosCafeandBistro.jpg', '22.353795', '91.826881', 60, 100, 100, '486/B, CDA Avenue, O.R. Nizam Road, Bulbul Center, Chittagong 4100', '01613-222167'),
(147, 'Patenga  Sea Beach', 'Bismillah Hotel', '', 'image/BismillahHotel.jpg', '22.235258', '91.792837', 60, 120, 120, 'Sabder Ali Road, Agrabad C/A, Chittagong 4000', '01619-006700'),
(148, 'Patenga  Sea Beach', 'PFC Restaurant', '', 'image/PFCRestaurant.jpg', '22.235629', '91.793897', 50, 120, 120, '336, Station Road, Chittagong 4100', '01919-181194'),
(149, 'Patenga  Sea Beach', 'BEACH PARTY RESTAURANT', '', 'image/BEACHPARTYRESTAURANT.jpg', '22.238174', '91.793146', 60, 100, 100, '25-33, Sheikh Mujib Road, Chittagong 4100', '02-9676847'),
(150, 'Neval Beach', 'Riverine Restaurant', '', 'image/RiverineRestaurant.jpg', '22.237558', '91.814195', 80, 100, 100, 'S. S. Khaled Road, Chittagong 4000', '01777-794181'),
(152, 'Neval Beach', 'Butterfly Restaurant', '', 'image/ButterflyRestaurant.jpg', '22.240163', '91.816622', 50, 100, 100, 'Ghat No-11, East Patenga, Holding no.2502334, Chittagong 4204', '01903-598625'),
(153, 'Neval Beach', 'Dawat Hotel & Biryani House', '', 'image/DawatHotel&BiryaniHouse.jpg', '22.239269', '91.816944', 50, 120, 120, '336, Station Road, Chittagong 4100', '01714-648484'),
(154, 'Neval Beach', 'Patenga Kabab House', '', 'image/PatengaKababHouse.jpg', '22.237249', '91.813996', 60, 100, 100, '25-33, Sheikh Mujib Road, Chittagong 4100', '02-9676847'),
(155, 'Vatiyari', 'Cafe 24', '', 'image/Cafe24.jpg', '22.423208', '91.797037', 200, 400, 400, 'Hosna Kalam Complex, CDA Ave, Chittagong 4000', '01769-244516'),
(156, 'Jaflong', 'JAFFLONG INN', '', 'image/jafflong_inn.jpg', '25.170704', '92.017978', 80, 100, 100, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01765-686363'),
(157, 'Jaflong', 'Jaflong View ', '', 'image/jaflong_view.jpg', '25.17754', '92.025814', 60, 120, 120, 'B-95 Shah Jalal Road, Sylhet 3100', '01765-686364'),
(158, 'Jaflong', 'Picnic Center restaurant', '', 'image/picnic_center.jpg', '25.17422', '92.012689', 50, 100, 100, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01765-686365'),
(159, 'Jaflong', 'Zero Point Restaurant', '', 'image/zeropoint.jpg', '25.180646', '92.017154', 50, 120, 120, '982, East Dargah Gate, Sylhet', '01765-686366'),
(160, 'Jaflong', 'Jaflong View Restaurant', '', 'image/view.jpg', '25.180058', '92.02081', 60, 100, 100, 'Waves 1, Dargah Gate, Sylhet 3100', '01765-686367'),
(161, 'Bisnakandi', 'Jolpori Restaurant', '', 'image/JolporiRestaurant.jpg', '25.170506', '91.887361', 80, 100, 100, 'Waves 1/E, Dargah Gate, Sylhet 3100', '01736-277044'),
(162, 'Bisnakandi', 'Pakshi Restaurant', '', 'image/PakshiRestaurant.jpg', '25.148338', '91.889124', 60, 120, 120, 'Waves 1, Dargah Gate, Sylhet 3100', '01710-459607'),
(241, 'kutubdia', 'Jasmin Tea Stall', '', 'image/Jasmin_Tea_Stall.jpg', '', '', 50, 100, 100, 'Z1076, Kutubdia', '01791464859'),
(242, 'Boddho', 'Master Chef', '', 'image/MasterChef.jpg', '', '', 50, 130, 130, 'Rajshahi', ''),
(164, 'Bisnakandi', 'Al amin Restaurant', '', 'image/AlaminRestaurant.jpg', '25.174626', '91.885336', 50, 120, 120, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01710-459607'),
(165, 'Bisnakandi', 'Pakshi Restaurant', '', 'image/PakshiRestaurant.jpg', '25.148338', '91.889124', 60, 100, 100, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01819-008081'),
(166, 'Sreemangal', 'Kutum Bari Restaurant', '', 'image/KutumBariRestaurant.jpg', '24.308821', '91.731674', 80, 100, 100, 'Sreemangal - Bhanugach Rd, Sreemangal 3210', '01710-459607'),
(167, 'Sreemangal', 'Naiori', '', 'image/Naiori.jpg', '24.308776', '91.72802', 60, 120, 120, 'Waves 1, Dargah Gate, Sylhet 3100', '01819-008081'),
(168, 'Sreemangal', 'Shah Restaurant', '', 'image/ShahRestaurant.jpg', '24.3092', '91.731791', 50, 100, 100, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01710-459607'),
(169, 'Sreemangal', 'Shatkora Restaurant', '', 'image/ShatkoraRestaurant.jpg', '24.308923', '91.732025', 50, 120, 120, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01819-008081'),
(170, 'Sreemangal', 'Sreemangal Inn Hotel and Restaurant', '', 'image/SreemangalInnHotelandRestaurant.jpg', '24.305854', '91.722411', 60, 100, 100, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01736-277044'),
(171, 'Ratargul Swamp Forest', 'Pach Bhai Restaurant', '', 'image/PachBhaiRestaurant.jpg', '24.894972', '91.866409', 80, 170, 170, 'B-95 Shah Jalal Road, Sylhet 3100', '01710-459607'),
(172, 'Ratargul Swamp Forest', 'Panshi Restaurant', '', 'image/PanshiRestaurant.jpg', '24.894972', '91.867479', 70, 160, 160, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01819-008081'),
(173, 'Ratargul Swamp Forest', 'Palki Restaurant', '', 'image/PalkiRestaurant.jpg', '24.894972', '91.869565', 80, 150, 150, '982, East Dargah Gate, Sylhet', '01710-459607'),
(174, 'Ratargul Swamp Forest', 'Bhujon Bari Restaurant', '', 'image/BhujonBariRestaurant.jpg', '24.894972', '91.867515', 70, 180, 180, 'Waves 1, Dargah Gate, Sylhet 3100', '01819-008081'),
(239, 'Shat Gombuj Mosque', 'Bismillah Hotel & Resturent', '', 'image/BismillahHotelResturent.jpg', '', '', 100, 200, 200, 'Khan Jahan Ali Mazar, Bagerhat', '01830-600704'),
(176, 'Lalakhal', 'River Queen Restaurant', '', 'image/RiverQueenRestaurant.jpg', '25.105676', '92.175238', 80, 100, 100, 'B-95 Shah Jalal Road, Sylhet 3100', '01710-459607'),
(177, 'Lalakhal', 'Saif And Shamir Restaurant', '', 'image/SaifAndShamirRestaurant.jpg', '25.088949', '92.117532', 60, 120, 120, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01819-008081'),
(178, 'Lalakhal', 'Roshmela', '', 'image/Roshmela.jpg', '25.134287', '92.122258', 50, 100, 100, '982, East Dargah Gate, Sylhet', '01710-459607'),
(179, 'Lalakhal', 'Jainta Restaurant', '', 'image/JaintaRestaurant.jpg', '25.134447', '92.12214', 50, 120, 120, 'Waves 1, Dargah Gate, Sylhet 3100', '01819-008081'),
(180, 'Lalakhal', 'CFC (chittagong Food Corner)', '', 'image/CFC(chittagongFoodCorner).jpg', '25.13468', '92.122286', 60, 100, 100, 'Waves 1/E, Dargah Gate, Sylhet 3100', '01710-459607'),
(181, 'Shahjalal Dorgha', 'Pach Bhai Restaurant', '', 'image/PachBhaiRestaurant.jpg', '24.894972', '91.866409', 80, 170, 170, 'B-95 Shah Jalal Road, Sylhet 3100', '01819-008081'),
(182, 'Shahjalal Dorgha', 'Panshi Restaurant', '', 'image/PanshiRestaurant.jpg', '24.894972', '91.867479', 70, 160, 160, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01710-459607'),
(183, 'Shahjalal Dorgha', 'Palki Restaurant', '', 'image/PalkiRestaurant.jpg', '24.894972', '91.869565', 80, 150, 150, '982, East Dargah Gate, Sylhet', '01819-008081'),
(184, 'Shahjalal Dorgha', 'Bhujon Bari Restaurant', '', 'image/BhujonBariRestaurant.jpg', '24.894972', '91.867515', 70, 180, 180, 'Waves 1, Dargah Gate, Sylhet 3100', '01710-459607'),
(185, 'Shahjalal Dorgha', 'Palki Restaurant', '', 'image/PalkiRestaurant.jpg', '24.894972', '91.869565', 80, 150, 150, 'Waves 1/E, Dargah Gate, Sylhet 3100', '01819-008081'),
(186, 'Khadimnagar National Park', 'Pach Bhai Restaurant', '', 'image/PachBhaiRestaurant.jpg', '24.894972', '91.866409', 80, 170, 170, 'B-95 Shah Jalal Road, Sylhet 3100', '01710-459607'),
(187, 'Khadimnagar National Park', 'Panshi Restaurant', '', 'image/PanshiRestaurant.jpg', '24.894972', '91.867479', 70, 160, 160, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01819-008081'),
(188, 'Khadimnagar National Park', 'Palki Restaurant', '', 'image/PalkiRestaurant.jpg', '24.894972', '91.869565', 80, 150, 150, '982, East Dargah Gate, Sylhet', '01710-459607'),
(189, 'Khadimnagar National Park', 'Bhujon Bari Restaurant', '', 'image/BhujonBariRestaurant.jpg', '24.894972', '91.867515', 70, 180, 180, 'Waves 1, Dargah Gate, Sylhet 3100', '01819-008081'),
(190, 'Khadimnagar National Park', 'Pach Bhai Restaurant', '', 'image/PachBhaiRestaurant.jpg', '24.894972', '91.866409', 80, 150, 150, 'Waves 1/E, Dargah Gate, Sylhet 3100', '01819-008082'),
(191, 'Surma Bridge', 'Dawat Grill & Restaurant', '', 'image/DawatGrill&Restaurant.jpg', '25.058869', '91.390435', 80, 100, 100, 'Sunamganj', '01710-459608'),
(192, 'Surma Bridge', 'Kichukkhon', '', 'image/Kichukkhon.jpg', '25.06091', '91.391031', 60, 120, 120, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01819-008082'),
(193, 'Surma Bridge', 'Arib Spicy Grill', '', 'image/AribSpicyGrill.jpg', '25.069858', '91.397628', 50, 100, 100, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01710-459608'),
(194, 'Surma Bridge', 'Rose Garden Restaurant', '', 'image/RoseGardenRestaurant.jpg', '25.069036', '91.396834', 50, 120, 120, 'Waves 1, Dargah Gate, Sylhet 3100', '01819-008083'),
(195, 'Surma Bridge', 'Niribili Restaurant & Fast Food', '', 'image/NiribiliRestaurant&FastFood.jpg', '25.045277', '91.388121', 60, 100, 100, 'Waves 1, Dargah Gate, Sylhet 3101', '01819-008084'),
(196, 'MAG Osmany Meseum', 'Pach Bhai Restaurant', '', 'image/PachBhaiRestaurant.jpg', '24.894972', '91.866409', 80, 170, 170, 'Waves 1/E, Dargah Gate, Sylhet 3100', '01710-459609'),
(197, 'MAG Osmany Meseum', 'Panshi Restaurant', '', 'image/PanshiRestaurant.jpg', '24.894972', '91.867479', 70, 160, 160, 'Waves 1, Dargah Gate, Sylhet 3100', '01819-008083'),
(198, 'MAG Osmany Meseum', 'Palki Restaurant', '', 'image/PalkiRestaurant.jpg', '24.894972', '91.869565', 80, 150, 150, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01710-459609'),
(199, 'MAG Osmany Meseum', 'Bhujon Bari Restaurant', '', 'image/BhujonBariRestaurant.jpg', '24.894972', '91.867515', 70, 180, 180, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01710-459610'),
(200, 'MAG Osmany Meseum', 'Palki Restaurant', '', 'image/PalkiRestaurant.jpg', '24.894972', '91.869565', 80, 150, 150, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01710-459611'),
(201, 'Dreamland Amusement Park', 'Pach Bhai Restaurant', '', 'image/PachBhaiRestaurant.jpg', '24.894972', '91.866409', 80, 170, 170, 'Waves 1/E, Dargah Gate, Sylhet 3100', '01819-008082'),
(202, 'Dreamland Amusement Park', 'Panshi Restaurant', '', 'image/PanshiRestaurant.jpg', '24.894972', '91.867479', 70, 160, 160, 'Waves 1, Dargah Gate, Sylhet 3100', '01710-459608'),
(203, 'Dreamland Amusement Park', 'Palki Restaurant', '', 'image/PalkiRestaurant.jpg', '24.894972', '91.869565', 80, 150, 150, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01819-008082'),
(204, 'Dreamland Amusement Park', 'Bhujon Bari Restaurant', '', 'image/BhujonBariRestaurant.jpg', '24.894972', '91.867515', 70, 180, 180, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01710-459608'),
(205, 'Dreamland Amusement Park', 'Palki Restaurant', '', 'image/PalkiRestaurant.jpg', '24.894972', '91.869565', 80, 150, 150, 'Holy Complex, East Dargah Gate, Sylhet 3100', '01819-008083'),
(206, 'Coxsbazar', 'Jhawbon Resturant', '', 'image/jhawbon.jpg', '21.442094', '91.970981', 80, 120, 120, 'Jaliapalong, Inani, Ukhia, Coxs Bazar 4750', '01856-699910'),
(207, 'Coxsbazar', 'Ruposhi Bangla Restaurant', '', 'image/ruposhi bangla.jpg', '21.424756', '91.980024', 60, 120, 120, ' 14, Kalatoli, Hotel-Motel Zone, 4700', '01856-699911'),
(208, 'Coxsbazar', 'Shawarma King Restaurant', '', 'image/shawrma king.jpg', '21.4272', '91.978177', 60, 100, 100, 'Plot - 07, Road - 02, Hotel Motel Zone, Kolatoly Road, 4700', '01616-441617'),
(209, 'Coxsbazar', 'KFC Restaurant', '', 'image/kfc.jpg', '21.426756', '91.978544', 80, 120, 120, ' Plot 58, Block C Hotel Motel Zone, Cox\'s Bazar 4700', '0341-52448'),
(210, 'Coxsbazar', 'Handi Restaurant', '', 'image/handi.jpg', '21.427479', '91.974289', 60, 120, 120, 'New Beach, Marine Drive, Cox\'s Bazar 4700', '01919-142634'),
(211, 'Coxsbazar', 'Marine Restaurant', '', 'image/marine1.jpg', '21.42279', '91.980754', 100, 150, 150, 'Sughandha Beach Road (ROAD NO.1 Hotel Motel zone, Cox\'sBazar 4700', '01919-142635'),
(212, 'Bandarban', 'Bandarban Biriyani House', '', 'image/biriani.jpg', '22.197263', '92.218055', 80, 100, 100, 'Meghla Porjoton area, Bandarban 4600, Bangladesh', '01815-577275'),
(213, 'Bandarban', 'feast restaurant', '', 'image/feast.jpg', '22.190407', '92.215044', 60, 120, 120, 'Bandarban sadar, bandarban', '01815-577276'),
(214, 'Bandarban', 'Green Prairie restaurant', '', 'image/green.jpg', '22.189178', '92.218966', 50, 100, 100, 'Officers Club, Islampur Rd, Bandarban 4600', '01815-577277'),
(215, 'Bandarban', 'Ruapshi Bangla Restaurant', '', 'image/ruposhi.jpg', '22.189764', '92.214841', 50, 120, 120, 'Sadar Rd, Bandarban', '01815-577278'),
(216, 'Bandarban', 'Kalapata Restaurant', '', 'image/kolapata.jpg', '22.189823', '92.215185', 60, 100, 100, 'N108, Bandarban 4600', '01882-907000'),
(217, 'Sajek Valley', 'C-V Fast Foods And Confectionary', '', 'image/sajekr1.jpg', '23.384651', '92.29249', 80, 150, 150, 'Sajek', '01839-897976'),
(218, 'Sajek Valley', 'Meghaloy Resort & Restaurant', '', 'image/sajekr2.jpg', '23.386217', '92.291187', 60, 150, 150, 'Sajek', '01710-459608'),
(219, 'Sajek Valley', 'Sajek Bilas Hotel & Restaurant', '', 'image/sajekr3.jpg', '23.38628', '92.291445', 50, 200, 200, 'Sajek', '01819-008083'),
(220, 'Sajek Valley', 'Kashbon Restaurant', '', 'image/sajekr4.jpg', '23.385752', '92.291808', 50, 150, 150, 'Sajek', '01856-699910'),
(229, 'Comilla', 'Bangla restora', '', 'image/Banglarestora.jpg', '', '', 100, 200, 200, 'Shahid Munshi Kabir Uddin Rd, Comilla 3500', '0816-1340'),
(230, 'Comilla', 'Silver Spoon Fast Food & Cake House', '', 'image/SilverSpoonFastFood&CakeHouse.jpg', '', '', 200, 300, 300, 'Mia Bazar, Chauddagram. Dhaka- Chittagong Highway. Comilla', '01819-115310'),
(231, 'Rangpur', 'Mouban Resturent', '', 'image/MoubanResturent.jgg', '', '', 100, 200, 200, 'Kachari Bazaar Road, Rangpur, Bangladesh', ''),
(232, 'Rangpur', 'Cicily Thai Chinese Restaurant', '', 'image/CicilyThaiChineseRestaurant.jpg', '', '', 100, 300, 300, 'Raja Rammohan Market, Rangpur 5400, Bangladesh\r\n\r\n', '+880 521-63076'),
(233, 'Rangpur', 'Caspia Thai-Chinese Restaurant', '', 'CaspiaThai-ChineseRestaurant', '', '', 200, 400, 400, 'Cantonment Rd, Rangpur 5400, Bangladesh\r\n', ''),
(234, 'Rajshahi', 'Espresso', '', 'image/Espresso.jpg', '', '', 200, 400, 400, 'Aloker More, New Market Road | 110, Habib Tower, Rajshahi City 6000, Bangladesh\r\n', '+8801798-141198'),
(235, 'Rajshahi', 'Nanking Chinese Restaurant', '', 'image/NankingChineseRestaurant.jpg', '', '', 100, 200, 200, 'C & B More, Rajshahi City, Bangladesh\r\n', '+880721-774120'),
(236, 'rajshahi', 'Twist & Taste', '', 'image/Twist&Taste.jpg', '', '', 100, 200, 200, 'Shaheb Bazar Rd. | Jamal Super Market, 1st Floor., Rajshahi City 6100, Bangladesh\r\n', '+8801710-058947'),
(237, 'Rajshahi', 'Chili\'s Fast Food', '', 'image/ChilisFastFood.jpg', '', '', 100, 300, 300, 'Zero Point, Saheb Bazar Rd, Rajshahi City 6100, Bangladesh\r\n', '+880721-774513\r\n'),
(238, 'Comilla', 'Coffee Buzz', '', 'image/CoffeeBuzz.jpg', '', '', 100, 200, 200, 'S. A. Bari Market, Station Rd, Comilla', '01700-500600');

-- --------------------------------------------------------

--
-- Table structure for table `res_gallery`
--

CREATE TABLE `res_gallery` (
  `id` int(11) NOT NULL,
  `res_name` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `res_gallery`
--

INSERT INTO `res_gallery` (`id`, `res_name`, `image`) VALUES
(1, 'Mermaid Cafe', 'image/icon.png'),
(2, 'Mermaid Cafe', 'image/face5.jpg'),
(3, 'Mermaid Cafe', 'image/face5.jpg'),
(4, 'Mermaid Cafe', 'image/icon.png'),
(5, 'Mermaid Cafe', 'image/face5.jpg'),
(6, 'Mermaid Cafe', 'image/Picture1.png'),
(7, 'Peda Ting Ting Restaurant', 'image/face5.jpg'),
(8, 'Mermaid Cafe', 'image/IMG-20181209-WA0007.jpg'),
(9, 'Mermaid Cafe', 'image/IMG-20181210-WA0001.jpg'),
(10, 'Nilgiri Hill Resort', 'image/Sajek-Valley.jpg'),
(11, 'Poushee Restaurant', 'image/images (3).jpeg'),
(12, 'Chang Pang Restaurant', 'image/images (4).jpeg'),
(13, 'Niribili Orchid Club & Restaurant', 'image/'),
(14, 'EFC - A Live Fish Restaurant', 'image/'),
(15, 'Jhawbon Resturant', 'image/'),
(16, 'Ruposhi Bangla Restaurant', 'image/'),
(17, 'Shawarma King Restaurant', 'image/'),
(18, 'KFC Restaurant', 'image/'),
(19, 'Handi Restaurant', 'image/'),
(20, 'Marine Restaurant', 'image/'),
(21, 'Marine Restaurant', 'image/'),
(22, 'Riverine Restaurant', 'image/'),
(23, 'Butterfly Restaurant', 'image/'),
(24, 'La Gondola', 'image/'),
(25, 'Momtaj Hotel Restaurant And Biryani House', 'image/'),
(26, 'Mermaid Cafe', 'image/images (3).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `res_review`
--

CREATE TABLE `res_review` (
  `review_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `res_review`
--

INSERT INTO `res_review` (`review_id`, `res_id`, `user_id`, `review`, `rating`, `image`) VALUES
(7, 2, 8, 'good', 4, 'image/'),
(2, 1, 3, 'Aaa', 5, 'image/IMG-20181209-WA0007.jpg'),
(3, 1, 3, 'Ff', 5, 'image/IMG-20181210-WA0001.jpg'),
(4, 36, 4, 'Good food.', 4, 'image/Sajek-Valley.jpg'),
(5, 3, 5, 'Good taste.. ', 5, 'image/images (3).jpeg'),
(6, 6, 5, 'Nice. ', 4, 'image/images (4).jpeg'),
(8, 4, 8, 'very good', 5, 'image/'),
(9, 206, 8, 'good', 5, 'image/'),
(10, 207, 8, 'yammy', 5, 'image/'),
(11, 208, 8, 'good', 4, 'image/'),
(12, 209, 8, 'good', 4, 'image/'),
(13, 210, 8, 'good ', 4, 'image/'),
(14, 211, 8, 'very good', 5, 'image/'),
(15, 211, 8, 'very good', 5, 'image/'),
(16, 150, 8, 'good', 3, 'image/'),
(17, 152, 8, 'good', 4, 'image/'),
(18, 138, 8, 'good ', 4, 'image/'),
(19, 136, 8, 'good', 4, 'image/'),
(20, 1, 5, 'Very high price ', 3, 'image/images (3).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `transport_cost`
--

CREATE TABLE `transport_cost` (
  `id` int(11) NOT NULL,
  `source` text NOT NULL,
  `destination` text NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transport_cost`
--

INSERT INTO `transport_cost` (`id`, `source`, `destination`, `cost`) VALUES
(67, 'Dhaka', 'Coxsbazar', 2000),
(69, 'Dhaka', 'Bandarban', 1000),
(70, 'Dhaka', 'Rangamati', 1000),
(71, 'Dhaka', 'Khagrachori', 900),
(72, 'Dhaka', 'Kaptai', 1000),
(74, 'Dhaka', 'Srimongol', 1200),
(75, 'Dhaka', 'Kuakata', 800),
(76, 'Dhaka', 'Rangpur', 1200),
(77, 'Dhaka', 'Nilgiri', 2000),
(78, 'Dhaka', 'Sajek Valley', 2000),
(80, 'Dhaka', 'Kaptai', 2000),
(81, 'Dhaka', 'Jaflong', 2000),
(82, 'Dhaka', 'Bisnakandi', 2000),
(83, 'Dhaka', 'Ratargul Swamp Forest', 2000),
(84, 'Dhaka', 'Hum Hum Waterfall', 2000),
(85, 'Dhaka', 'Lalakhal', 2000),
(86, 'Dhaka', 'Shundarban', 1500),
(87, 'Dhaka', 'Saint Martin Island', 3000),
(88, 'Chittagong', 'Coxsbazar', 400),
(89, 'Chittagong', 'Bandarban', 300),
(90, 'Chittagong', 'Rangamati', 300),
(91, 'Chittagong', 'Khagrachori', 300),
(92, 'Chittagong', 'Kaptai', 300),
(93, 'Chittagong', 'Saint Martin Island', 600),
(94, 'Chittagong', 'Srimongol', 2000),
(95, 'Chittagong', 'Kuakata', 1000),
(96, 'Chittagong', 'Nilgiri', 1800),
(97, 'Chittagong', 'Jaflong', 1800),
(98, 'Chittagong', 'Bisnakandi', 1800),
(99, 'Chittagong', 'Ratargul Swamp Forest', 1800),
(100, 'Chittagong', 'Lalakhal', 1800),
(101, 'Chittagong', 'Shundarban', 1600),
(102, 'Chittagong', 'Fantasy Kingdom', 1400),
(103, 'Chittagong', 'Jatiyo Sriti Shoudho', 1400),
(104, 'Chittagong', 'Ramna Park', 1400),
(105, 'Chittagong', 'Jatiya Sangsad Bhaban', 1400),
(106, 'Chittagong', 'National Zoo', 1400),
(107, 'Chittagong', 'Shaheed Minar', 1500),
(108, 'Chittagong', 'Hatirjheel', 1300),
(109, 'Chittagong', 'Curzon Hall', 1500),
(110, 'Chittagong', 'Nuhash Polli', 1000),
(111, 'Chittagong', 'Lalbagh Mosque', 1200),
(112, 'Chittagong', 'Khoiya Chora Waterfalls', 300),
(113, 'Chittagong', 'Napittachora Waterfalls', 300),
(114, 'Chittagong', 'Vatiyari', 200),
(115, 'Chittagong', 'Shaheed Zia Smriti Complex', 100),
(116, 'Chittagong', 'Parki Sea Beach', 300),
(117, 'Chittagong', 'Shalban Buddhist Vihara', 800),
(118, 'Sylhet', 'Cox\'s Bazar', 2000),
(119, 'Sylhet', 'Nilgiri', 2000),
(120, 'Sylhet', 'Sajek Valley', 2000),
(121, 'Sylhet', 'Rangamati', 2000),
(122, 'Sylhet', 'Kaptai', 2000),
(123, 'Sylhet', 'Jaflong', 300),
(124, 'Sylhet', 'Bisnakandi', 300),
(125, 'Sylhet', 'Ratargul Swamp Forest', 300),
(126, 'Sylhet', 'Hum Hum Waterfall', 300),
(127, 'Sylhet', 'Lalakhal', 300),
(128, 'Sylhet', 'Shundarban', 1200),
(129, 'Sylhet', 'Shat Gombuj Mosque', 1200),
(130, 'Sylhet', 'Bandarban', 2000),
(131, 'Sylhet', 'Khagrachhari', 2000),
(132, 'Sylhet', 'Bogalake', 2000),
(133, 'Sylhet', 'Keokradong', 2000),
(134, 'Sylhet', 'Saint Martin Island', 2500),
(135, 'Sylhet', 'Hazrat Shahjalal Mazar Sharif', 100),
(136, 'Sylhet', 'Jadukata River', 250),
(137, 'Sylhet', 'Pangthumai Waterfall', 250),
(138, 'Sylhet', 'Khadimnagar National Park', 200),
(139, 'Sylhet', 'Surma Bridge', 200),
(140, 'Sylhet', 'Dreamland Amusement Park', 200),
(141, 'Sylhet', 'Madhabpur Lake', 250),
(142, 'Sylhet', 'Jatiyo Sriti Shoudho', 1300),
(143, 'Sylhet', 'Jatiya Sangsad Bhaban', 1300),
(144, 'Sylhet', 'Curzon Hall', 1300),
(145, 'Sylhet', 'Hatirjheel', 1300),
(146, 'Sylhet', 'Lalbagh Mosque', 1300),
(147, 'Sylhet', 'Shalban Buddhist Vihara', 600),
(148, 'Khulna', 'Cox\'s Bazar', 1800),
(149, 'Khulna', 'Nilgiri', 1600),
(150, 'Khulna', 'Sajek Valley', 1600),
(151, 'Khulna', 'Rangamati', 1600),
(152, 'Khulna', 'Bisnakandi', 1300),
(153, 'Khulna', 'Ratargul Swamp Forest', 1300),
(154, 'Khulna', 'Shundarban', 200),
(155, 'Khulna', 'Shat Gombuj Mosque', 200),
(156, 'Khulna', 'Kuakata Sea Beach', 200),
(157, 'Khulna', 'Khulna divisional museum', 100),
(158, 'Khulna', 'Fantasy Kingdom', 1300),
(159, 'Khulna', 'Jatiyo Sriti Shoudho', 1300),
(160, 'Khulna', 'Jatiya Sangsad Bhaban', 1300),
(161, 'Khulna', 'Hatirjheel', 1300),
(162, 'Khulna', 'Shaheed Minar', 1300),
(163, 'Khulna', 'Curzon Hall', 1300),
(164, 'Rajshahi', 'Cox\'s Bazar', 1800),
(165, 'Rajshahi', 'Saint Martin Island', 2000),
(166, 'Rajshahi', 'Rangamati', 1500),
(167, 'rajshahi', 'Bandarban', 1500),
(168, 'Rajshahi', 'Nilgiri', 1500),
(169, 'Rajshahi', 'Kaptai', 1500),
(170, 'Rajshahi', 'Bisnakandi', 1200),
(171, 'Rajshahi', 'Jaflong', 1200),
(172, 'Rajshahi', 'Shundarban', 1000),
(173, 'Rajshahi', 'Shat Gombuj Mosque', 1000),
(174, 'Rajshahi', 'Jatiyo Sriti Shoudho', 1000),
(175, 'Rajshahi', 'Lalbagh Mosque', 1000),
(176, 'Rajshahi', 'Hatirjheel', 1000),
(177, 'Rajshahi', 'Curzon Hall', 1000),
(178, 'Rajshahi', 'Shaheed Minar', 1000),
(179, 'Rajshahi', 'Paharpur Buddhist Bihar', 200),
(180, 'Rajshahi', 'Mahasthangarh', 200),
(181, 'Rajshahi', 'Puthia Rajbari', 100),
(182, 'Rajshahi', 'Bagha Mosque', 100),
(183, 'Rajshahi', 'Uttara Ganobhaban', 100),
(184, 'Rajshahi', 'Choto Shona Mosque', 200),
(185, 'Comilla', 'Shalban Buddhist Vihara', 200),
(186, 'Comilla', 'Dharma shagar', 200),
(187, 'Comilla', 'Baitul Azgar Jami Mosque', 100),
(188, 'Comilla', 'Lalmai Hills', 200),
(189, 'Comilla', 'Cox\'s Bazar', 600),
(190, 'Comilla', 'Saint Martin Island', 1000),
(191, 'Comilla', 'Bandarban', 600),
(192, 'Comilla', 'Nilgiri', 600),
(193, 'Comilla', 'Shundarban', 650),
(194, 'Comilla', 'Shat Gombuj Mosque', 650),
(195, 'Comilla', 'Jaflong', 1000),
(196, 'Comilla', 'Bisnakandi', 1000),
(197, 'Comilla', 'Ratargul Swamp Forest', 1000),
(198, 'Comilla', 'Jatiyo Sriti Shoudho', 400),
(199, 'Comilla', 'Bangladesh National Meseum', 400),
(200, 'Comilla', 'Hatirjheel', 400),
(201, 'Comilla', 'Lalbagh Mosque', 400),
(202, 'Comilla', 'Shaheed Minar', 400);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `user_email` text NOT NULL,
  `user_password` text NOT NULL,
  `user_mobile` text NOT NULL,
  `mail_confirm` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `user_email`, `user_password`, `user_mobile`, `mail_confirm`) VALUES
(1, 'Fariha', 'farihaiffath23@gmail.com', '1234', '01917008370', 1),
(2, 'Maliha', 'maliha@gmail.com', '1304052', '01835203433', 1),
(3, 'Mahi', 'mahi@gmail.com', '1304108', '01813211541', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_hotel`
--
ALTER TABLE `admin_hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_gallery`
--
ALTER TABLE `hotel_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_review`
--
ALTER TABLE `hotel_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place_gallery`
--
ALTER TABLE `place_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place_review`
--
ALTER TABLE `place_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `police_station`
--
ALTER TABLE `police_station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res`
--
ALTER TABLE `res`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_gallery`
--
ALTER TABLE `res_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_review`
--
ALTER TABLE `res_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `transport_cost`
--
ALTER TABLE `transport_cost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_hotel`
--
ALTER TABLE `admin_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `hotel_gallery`
--
ALTER TABLE `hotel_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hotel_review`
--
ALTER TABLE `hotel_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `place_gallery`
--
ALTER TABLE `place_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `place_review`
--
ALTER TABLE `place_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `police_station`
--
ALTER TABLE `police_station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `res`
--
ALTER TABLE `res`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `res_gallery`
--
ALTER TABLE `res_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `res_review`
--
ALTER TABLE `res_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transport_cost`
--
ALTER TABLE `transport_cost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
