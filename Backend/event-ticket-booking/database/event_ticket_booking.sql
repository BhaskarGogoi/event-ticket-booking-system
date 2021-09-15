-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2021 at 06:06 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_ticket_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `firstname`, `lastname`, `email`, `password`) VALUES
(5, 'Admin', 'Master', 'admin@admin.com', '$2y$10$YnNljNKbu30DgMxKiaWqJOvs2jXuKL.vp.yWrMq4nn1tUYe6bd5MS');

-- --------------------------------------------------------

--
-- Table structure for table `api_access_token`
--

CREATE TABLE `api_access_token` (
  `id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `token` varchar(100) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `expiry_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_access_token`
--

INSERT INTO `api_access_token` (`id`, `user_id`, `token`, `created_date`, `expiry_date`) VALUES
(102, 3, '*YsTezHY0kzZEDpSRk*P7u0o$HN2Bt1#yU2CvZUip*mzawd3z0', '2021-08-12 18:30:00', '23-08-2021'),
(103, 3, 'zEnC5csGwjdZbFqBxB6F0VSSjoJOZa0gFMJLUOXLKCsSS1F#wn', '2021-08-12 18:30:00', '09-02-2022'),
(104, 3, 'L1PdOogs6Vdi7VOkoQUYZhrAObhj#OoK26dBBdno7QrcXKaxEl', '2021-08-12 18:30:00', '09-02-2022'),
(105, 3, '7d7guISH8V4f#3s2KLD7PBswWjgIlUTUXM#mZTiTZf#J4Gnzf2', '2021-08-12 18:30:00', '09-02-2022'),
(106, 3, 'Z6vAydO$cs9Jee1VbTy8XEM$lIxk33Gf0PzC3aZhtDH7VCYwB2', '2021-08-12 18:30:00', '09-02-2022'),
(107, 3, 'aGy2UhUgrE8tAXQc*bbD8IYVQufYuy1mEf5JonRkjIjLNNsiRz', '2021-08-12 18:30:00', '09-02-2022'),
(108, 3, 'sti7M937dqFfaGqpdcjPkK#mOwWaf5736CcGlhg2htz*JkEASL', '2021-08-12 18:30:00', '09-02-2022'),
(109, 3, 'TzW4mxojGM3N$HAVLrhGZOuPDXDwF81LazIZnrwxsEXXO#1#Hk', '2021-08-12 18:30:00', '09-02-2022'),
(110, 3, 'Mxi*Cdst5ZGqN0XWqPVo7N0C80jPr3QiaHiSQV$NagznlCmDoY', '2021-08-12 18:30:00', '09-02-2022'),
(111, 3, 'obfOdj7uCCLPvcUlpAwPketzG1ZaZUUljzygAV7VmJKlB*XSj#', '2021-08-12 18:30:00', '09-02-2022'),
(112, 3, 'Xdk7bQw4puhJ1vKDsXLIw#6RvYMJ22wzROrkX4xDFlFctbHL0l', '2021-08-12 18:30:00', '09-02-2022'),
(113, 3, 'gu1b06gX7emctiGF3qs4CE3lO23gzY$kA#$ga6#v9JLTO6Oi20', '2021-08-16 18:30:00', '13-02-2022');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `no_of_tickets` int(11) NOT NULL,
  `total_price` varchar(11) NOT NULL,
  `payment_reference_id` varchar(50) NOT NULL,
  `booking_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `event_id`, `user_id`, `no_of_tickets`, `total_price`, `payment_reference_id`, `booking_date`) VALUES
(567806, 41, 24, 3, '633', 'pay_Hjdhfjddfdfdf', '05/08/2021'),
(567807, 45, 24, 1, '299', 'pay_HhZXJSi9MPAnW1', '05/08/2021'),
(567808, 59, 24, 1, '799', 'pay_HjyhVbkDVRoltz', '11/08/2021'),
(567809, 60, 24, 1, '500', 'pay_HjyssokO7tVLKB', '11/08/2021'),
(567810, 60, 3, 5, '500', 'pay_HkJBqq9frra6si', '12/08/2021'),
(567811, 59, 3, 1, '799', 'pay_HkJDbkIntNY4td', '12/08/2021'),
(567812, 51, 3, 3, '600', 'pay_HkJEFQhT59vmjq', '12/08/2021');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_type` varchar(20) NOT NULL,
  `event_mode` varchar(10) NOT NULL,
  `hosted_by` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `duration` varchar(10) NOT NULL,
  `price` double NOT NULL,
  `max_tickets` int(5) NOT NULL,
  `about` text NOT NULL,
  `address_area` varchar(50) DEFAULT NULL,
  `address_locality` varchar(50) DEFAULT NULL,
  `address_city` varchar(50) DEFAULT NULL,
  `address_state` varchar(50) DEFAULT NULL,
  `address_pin` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_type`, `event_mode`, `hosted_by`, `date`, `time`, `duration`, `price`, `max_tickets`, `about`, `address_area`, `address_locality`, `address_city`, `address_state`, `address_pin`) VALUES
(40, 'Masterclass: Evolution of Digital Supply Chains Bu', 'Talks', 'Online', 'Frederic Gomer', '2021-05-21', '12:30:00', '2', 450, 500, 'Your supply chain is disrupted. Your team is working heroically to source materials in a challenging ecosystem. But your existing supply chain technologies aren’t flexible enough to support you. You need to make your legacy ERP and SCM solutions adapt and extend fast.', NULL, NULL, NULL, NULL, NULL),
(41, 'Kenny Sebastian : Explain Yourself', 'Stand Up', 'Offline', 'Kenny Sebastian', '2021-05-27', '17:45:00', '1', 200, 700, 'A one hour show where Kenny takes you through a process of explaining a lot of things. Including himself. With anecdotes, definitions and jokes, A humorous intimate live experience.', 'The Habitat', 'Khar West', 'Mumbai', 'Maharashtra', 400052),
(42, 'Good Vibes-Music', 'Music', 'Online', 'Zoom', '2021-04-30', '08:00:00', '2', 450, 500, 'Experience the power of elegant voices as they come together to light up your day with pop, indie pop, rap and various other genres!', NULL, NULL, NULL, NULL, NULL),
(43, 'Music Unfiltered Open Mic and Jam Session', 'Music', 'Offline', 'Lewis', '2021-06-17', '16:00:00', '2', 300, 1000, 'Hooted1ce is going to its new venue for the singer-songwriters and musicians and singers who do covers,and for the people who love music.So, if you are a singer-songwriter or want to experience the music of the people which comes from their heart and which has never been heard and the music which is there already and people sing as there own, the music which is unfiltered and raw, the music which has emotions, dedication and efforts, then this is the right place. Come and witness the unheard.Come and Join for some jam session along with our open mic.To register whatsapp on 7045011032 with your name.', 'Funkaar Dance Studio', 'Andheri', 'Mumbai', 'Maharashtra', 400053),
(44, 'Music Unfiltered Open Mic ft. Viraj', 'Music', 'Offline', 'Viraj', '2021-09-15', '12:30:00', '3', 499, 500, 'Hooted1ce is coming to Funkaar for the singer- songwriters and musicians and singers who do covers, and for the people who love music. So, if you are a singer- songwriter or want to experience the music of the people which comes from their heart and which has never been heard and the music which is there already and people sing as there own, the music which is unfiltered and raw, the music which has emotions, dedication and efforts, then this is the right place. Come and witness the unheard. Come and Join for some jam session along with our open mic. To register whatsapp on 7045011032 with your name', 'Funkaar Dance Studio', 'Andheri', 'Mumbai', 'Maharashtra', 400053),
(45, 'DiGi Open Mic-Music', 'Music', 'Online', 'DiGi', '2021-10-03', '13:00:00', '2', 299, 300, 'To be bedazzled to the elegant voice is what attracts the masses. When words have the power to come together and brighten our day we feel blessed. Therefore The Mental Talkies presents to you DiGi Open Mic Music. Come join us and freshen up your mind!', NULL, NULL, NULL, NULL, NULL),
(46, 'Gaurav Kapoor Live- Online Sitdown Comedy', 'Stand Up', 'Online', 'Gaurav Kapoor', '2021-09-04', '13:00:00', '1', 450, 300, 'Gaurav Kapoor, the funny one from Delhi is back in action with his first ever online comedy show. His razor-sharp wit and candid humour lead him to win almost every open-mic he has ever participated in. Gaurav is a regular featured act at comedy clubs across the country and has performed on the biggest of stages including opening for Vir Das and Russell Brand on his India tour. Since then, he has done numerous live shows, released videos on YouTube and have also released a stand up special, HahaKaar (IMDB Rating – 8.2), on Amazon Prime. His shows are a mix of observational humour and anecdotes where he narrates stories from corporate offices, festivals, 90’s era, food, travel and his marriage. The stories could be 100% true or could be 100% made up. You can only guess. The best thing is, his friends say that the stories he narrates off stage are even funnier but we may never know.', NULL, NULL, NULL, NULL, NULL),
(47, 'Himalayan River Painting Workshop', 'Workshop', 'Offline', 'Bombay Drawing Room', '2021-08-28', '10:00:00', '5+', 1199, 200, 'Bombay Drawing Room brings you OFFLINE workshops!! Yay!\r\n\r\nFinally the wait is over! Explore your creativity and express yourself through art in our offline workshops. The workshops will be hosted in the café and we will be providing you all the material which is required for the event. Our experienced artist will be guiding you throughout the workshop with step by step instructions! No need to have any experience in painting or sketching. Limited seats are available.', 'Episode One', 'Powai', 'Mumbai', 'Maharashtra', 400076),
(48, 'Learn the Art of Storytelling', 'Workshop', 'Online', 'Jay Kumar', '2021-10-06', '11:30:00', '2', 799, 600, 'Storytelling to influence is a hot topic today. However, telling stories to influence your team and other people around you is one of those “easier said than done” things in life, right? \r\n\r\n\r\n\r\nAnyone can tell a story for fun, but a story to influence is a little different and with a different intended outcome. How would you develop your inner library of stories that can be put to use to build your personality and circle of influence? That\'s what this course is all about.\r\n\r\n\r\n\r\nJay Kumar Hariharan is one of the most influential Story-Tellers of our times and has helped top management (including CEOs) of huge multi-national conglomerates, create amazing presence for themselves. The kind of presence that inspires, leads, and motivates.\r\n\r\n\r\n\r\nJoin him as he takes us on this beautiful journey of stories - right from the first story ever to the stories that have merged into our thoughts and impacted the consciousness of the world we live in today.', NULL, NULL, NULL, NULL, NULL),
(49, 'Art & Drawing - Junior Kids', 'Workshop', 'Offline', 'Hobbystation', '2021-09-22', '10:00:00', '2', 599, 100, 'Give your child a chance to embrace their artistic side.\r\n\r\n\r\n\r\nIn this course, we teach the child the fundamentals of drawing and colouring like drawing objects of different shapes perfectly, simple memory drawing and landscapes, colouring (using crayons, colour pencils and brush pens)including shading and knowledge of primary and secondary colours. With each class, you will see your child getting more and more confident with his/her drawing and colouring skills.', 'Paltan Bazar', 'Paltan Bazar', 'Guwahati', 'Assam', 78001),
(50, 'Stop Motion Animation 2-Day Workshop', 'Workshop', 'Offline', 'Toiing', '2021-09-16', '10:00:00', '1', 599, 250, 'Introduce your kids to the awesome world of Stop Motion Animation where they learn to make their very first video using the stop motion animation technique.\r\n\r\nLed by a live instructor, this workshop features a masterclass by the legendary Cyrus Broacha and stop motion expert Rucha Dhayarkar.\r\n\r\nDay 1: Kids learn the Stop Motion Animation technique and make their first stop motion video using household things\r\n\r\nDay 2: Kids learn the art of storytelling and create a storyboard for their project\r\n\r\nPost Class Assignment: Make your first Stop Motion Animation Short Film\r\n\r\nWorkshop Details:\r\n\r\nAge: 7 to 14 years\r\n\r\nNo. of Session: 2\r\n\r\nSession Duration: 60 Minutes Session/Day\r\n\r\nFormat: Live Online\r\n\r\nDate & Time: Select batch while adding to cart\r\n\r\nSkills Developed:\r\n\r\nStorytelling and Creative Expression\r\nCollaboration & Team Work\r\nPlanning & Execution\r\nPatience and Attention To Details', 'Chiring Chapori', 'Chowkidingee', 'Dibrugarh', 'Assam', 786003),
(51, 'One Slight Hitch', 'Play', 'Offline', 'Jeff Goldberg Studio', '2021-10-20', '12:00:00', '2', 200, 300, 'It’s Courtney’s wedding day, and her mom, Delia, is making sure that everything is perfect. The groom is perfect, the dress is perfect, and the decorations (assuming they arrive) will be perfect. Then, like in any good farce the doorbell rings. And all hell breaks loose. So much for perfect.', 'XYZ Complex', 'Baruah Chariali', 'Jorhat', 'Assam', 785001),
(52, 'Karwan Theatre Group Mumbai DHAPPA', 'Play', 'Offline', 'Karwan Theatre Group', '2021-08-20', '16:00:00', '2', 499, 250, 'Writer & Director: Akshay Mishra\r\n\r\nCast: Puneet Issar, Sharon Chandra, Pavitra Sarkar & Anuradha Athlekar\r\n\r\nShyam, a film director, is intrigued by Iravati, a Kathak dancer, and intends to cast her in his next film. But her brother Kumar, a failed actor, is adamant about keeping Shyam away from Iravati. Instead of it being an act of jealousy, Kumar harbours a deep dark secret. Set against the 1950s era, \'Dhappa\' is submerged in mystique and drama.', 'Prithvi Theatre', 'Juhu', 'Mumbai', 'Maharashtra', 400049),
(53, 'Marche`s Pop Up Bazar - Summer Flea', 'Exhibition', 'Offline', 'Marches', '2021-09-30', '11:00:00', '5+', 1500, 250, 'We bring you the hottest Flea market in town, with a little something for all you beautiful people out there. Come be a part of this magical event with us. With a specially curated selection of displays, brands, labels, and artists, we promise you a fun-packed weekend with us. Also, we have a curated line-up of live music, an over-flowing bar, and a food truck. All of this in the middle of a golf course! We can\'t wait to have you over!', 'Boulder Hills', 'Khajaguda', 'Hyderabad', 'Telengana', 500032),
(54, 'The Dineout SteppinOut Night Market', 'Exhibition', 'Offline', 'Dineout', '2021-10-16', '09:00:00', '5+', 799, 500, 'The SteppinOut Night Market brings together the best of shopping, lifestyle, food and fun! This year SteppinOut by Dineout is celebrating 5 years of Night Market, and their anniversary edition is going to be bigger, better and full of exciting elements. \r\n\r\n\r\n\r\nWith over 70+ shopping stalls, 20+ food stalls, paint bar, kids zone, pet zone, spa, live music, games, comedy shows, pottery workshops - there is something for everyone. It is a flea and shopping experience redefined-- all in a new socially distanced avatar at the magnificent Jayamahal Palace in the heart of Bengaluru. \r\n\r\n\r\n\r\nFind the country`s most loved brands, hand-picked & curated specially for you. Shop from a wide collection of clothes, footwear, accessories & home decor among many other things! Indulge yourself in the variety that Bangalore`s best restaurants have to offer along with your furry friends. ', 'Jayamahal Palace Hotel', 'Nandi Durga Road', 'Bengaluru', 'Telengana', 560046),
(55, 'RAELL PADAMSEE`S - Young Actors Club', 'Workshop', 'Online', 'Actors', '2021-11-12', '09:00:00', '3', 300, 500, 'Your one stop shop for all things drama!\r\n\r\nThe Ideal workshop for young adults who’re ready to get into the drama mode with Raell Padamsee’s Ace Young Actors Club, where we believe in enhancing your children’s imagination building, confidence and personality and perfecting their communication skills.. exactly what our young adults need as they venture out and are exposed to a whole new world. With lots of new and exciting activities like Theatre games, Debates, Working on your own scripts and making your own plays, Improvising and coming up with your own props and costumes.\r\n\r\nSign up now and get creative with our age-appropriate activities that are both fun and highly developmental.', NULL, NULL, NULL, NULL, NULL),
(56, 'Soup', 'Stand Up', 'Offline', 'Soup', '2021-09-30', '12:00:00', '5+', 650, 300, 'It\'s just Tuesday, and after that long day of meetings, calls, and pretending to work, time to unwind with Tacos. This is a comedy show with a crunch outside (the host), but also a delicious filling inside (2 handpicked comedians who will be veg or non-veg depending on their choice). Real tacos have cheese, but this show will make you smile like you were saying cheese. \r\n\r\nDisclaimer\r\n\r\n1. Line up is subject to change depending on artist availability\r\n2. Each artist represents their own opinions. Please be prepared that they may not align with your views.\r\n3. Recording of any part of the show would be a violation of intellectual property agreements of the artist', 'Hawra', 'Kolkata', 'Kolkata', 'West Bengal', 895621),
(57, 'Monali Thakur Teaches Singing', 'Music', 'Online', 'Monali Thakur', '2021-09-25', '16:30:00', '4', 799, 500, 'Learning from your favourite singer is no longer a dream! Learn music from award-winning playback singer Monali Thakur. In this course, Monali shares her experiences and techniques to become a singer. She focuses on crucial topics like breathing, pitching and taking care of your voice, etc.', NULL, NULL, NULL, NULL, NULL),
(58, 'Teen Prahar - Online', 'Music', 'Online', 'Ruhaniyat', '2021-11-19', '18:00:00', '3', 200, 300, 'Teen Prahar an extended evening concert completes a decade of its existence this year. This festival that aims to give a treat of ragas that are not heard in the regular night concerts also feature artists that are from three different stages in creative life (young talent, maestro-in-the-making & great masters).', NULL, NULL, NULL, NULL, NULL),
(59, 'Good Vibes-Music', 'Music', 'Offline', 'A R Rahman', '2021-12-02', '16:00:00', '3 Hour Hou', 999, 500, 'Experience the power of elegant voices as they come together to light up your day with pop, indie pop, rap and various other genres! The Mental Talkies presents to you a Musical event that will freshen up your mind! Hurry up and book your tickets now to grab yourself a free voucher!', 'Powai', 'Powai', 'Mumbai', 'Maharashtra', 400052),
(60, 'NCPA - CITI (Aadi Anant)', 'Music', 'Online', 'Aadi Tiwari', '2021-11-05', '17:30:00', '3 Hour Hou', 399, 300, 'Featuring Hariprasad Chaurasia (Bansuri) with Bhawani Shankar (Pakhavaj), Vijay Ghate (Tabla) & Jayanti Gosher (Guitar) India is one of the most musical & musically diverse countries in the world. Apart from some pan-Indian forms, each region has its own distinctly rich legacy of music traditions Having originated in the Vedic period (1500-900 BC), historically, with Lord Krishna, the cowherd of Brindavan. Hariprasad Chaurasia, the legendary King of bansuri, will take the listeners on a musical discovery encompassing the broad canvas of Indian music. Starting with folk tunes, moving on to semi-classical & classical genres, the exploration will conclude with a fusion presentation. This event was staged at the Tata Theatre on 8th December 2013 A free webcast on the NCPA Facebook page & YouTube channel. Please note: The videos will be available for a week post the streaming.', '', '', '', '', 0),
(83, 'Bhaskarjyoti Gogoi', 'Talks', 'Online', 'Soup', '2021-08-22', '11:54:00', '1', 699, 333, '<p>This weekly session focuses on:</p>\r\n<ul>\r\n	<li>Reading and chanting the verses of Bhagwad Gita.&nbsp;</li>\r\n	<li>Followed by English translation of the verses.</li>\r\n	<li>Explanation of the verses.</li>\r\n</ul>', '', '', 'DIBRUGARH', 'ASSAM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` int(11) NOT NULL,
  `otp` int(4) NOT NULL,
  `ref_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`id`, `otp`, `ref_no`) VALUES
(130, 5834, '15OcZt8$xfJk'),
(131, 7294, '46yTmm9X1J3F'),
(132, 9521, 'HZaE2Dc6RgCG'),
(133, 4976, 'I89rrIfnVK6F'),
(134, 5589, 'qo4A2skQL7A2'),
(135, 1718, 'kRyTa3**BTyp'),
(136, 7193, '*k7oSxy8JAjV'),
(137, 1514, 'yRBqI1eaxmfC'),
(138, 5245, 'Qb#kmFdHfvSl'),
(139, 6780, '1mpI#lC#h*q8'),
(140, 3691, 'aS8L6MxvS4hM'),
(141, 2231, '3uxoNLOqRJLZ'),
(142, 9656, 'Wzg#OT7W9y9q'),
(143, 8597, 'Cba2fGk$c$Zg'),
(144, 9626, 'gqwCRF3GZRc#'),
(145, 1429, 'rxFhyZwSQwTc');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `firstname`, `lastname`, `email`, `phone`, `status`) VALUES
(3, 'Bhaskar', 'Gogoi', 'thebhaskargogoi@gmail.com', '1202072619', 'active'),
(4, 'Test', 'User', 'testuser@test.com', '1234567890', 'active'),
(24, 'test', 'again', 'testagain@gmail.com', '8404029978', 'active'),
(35, 'diku', 'gogoi', 'diku@jk.com', '9435576083', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `api_access_token`
--
ALTER TABLE `api_access_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `api_access_token`
--
ALTER TABLE `api_access_token`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=568927;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
