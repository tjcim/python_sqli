-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: python_sqli
-- ------------------------------------------------------
-- Server version 5.7.29-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MOCK_DATA`
--
DROP TABLE IF EXISTS `MOCK_DATA`;
create table MOCK_DATA (
  id INT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  gender VARCHAR(50),
  ip_address VARCHAR(20),
  social_security VARCHAR(50),
  pw VARCHAR(50)
);

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user`, `password`) VALUES ('admin','mysecurepassword'),('user1','user1password'),('user2','user2password');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--
-- Dumping data for table `users`
--

LOCK TABLES `MOCK_DATA` WRITE;
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (1, 'Piotr', 'Durkin', 'pdurkin0@wikimedia.org', 'Male', '31.132.170.121', '518-89-9103', 'bb092d11fa0845b7d99481222c0af76e96243c025f1fc0f31d6ed9d36211ab87');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (2, 'Beverlie', 'Allport', 'ballport1@sourceforge.net', 'Female', '115.210.33.52', '807-99-2416', 'dea270982bb5bad13deb66c7996ca3d71451671e9f0e4b3231c972a763720b89');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (3, 'Nicolle', 'Dennant', 'ndennant2@unc.edu', 'Female', '117.254.206.151', '541-65-6104', '1a336c19f3ef27d5a06cb57a41c2ab590b928d9373c0dbb1bfb75a9088443d2d');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (4, 'Earl', 'Colten', 'ecolten3@usgs.gov', 'Male', '109.18.172.190', '708-61-6430', 'bf54ee79da7d5c01b322d5eb48e89cf7c84c205e28942e271a6ce93f4094a1ce');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (5, 'Court', 'Belchamp', 'cbelchamp4@deliciousdays.com', 'Male', '22.222.242.190', '932-22-1557', '6c207feabb0c10f57f06ed3096cca7d452e1b2f0e63824fc8469395432579ca7');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (6, 'Rees', 'Bygate', 'rbygate5@un.org', 'Male', '118.218.192.129', '053-94-5694', '67cd24814187fc76f697315a6e033344126300f6a6b28b4010d35d9d5f6e1fb3');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (7, 'Chrotoem', 'Belliard', 'cbelliard6@theglobeandmail.com', 'Male', '27.108.233.34', '325-97-9863', '607edd174c3f71d38c7bdaf935fdb3ebe50ad4e1bf18a92ce5882a6f68b28856');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (8, 'Zonnya', 'Swash', 'zswash7@friendfeed.com', 'Female', '190.198.180.92', '924-62-3282', '9da9ab9d12453a1b946deafda6f50543532007b1ec82bdca7f71b16f2e629bb7');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (9, 'Shoshanna', 'Joreau', 'sjoreau8@mail.ru', 'Female', '21.129.204.67', '691-27-1426', 'c6272b0fa90ebb075dc12f6f866282c598e51b10825749ada567f7c6818b8b0b');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (10, 'Quent', 'Sagg', 'qsagg9@woothemes.com', 'Male', '237.231.138.236', '115-54-4911', 'a4d4188d767d55634d436e0407dc7201df2d0ab60ec0fae6bd9a50f26d98496c');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (11, 'Bidget', 'Moodie', 'bmoodiea@columbia.edu', 'Female', '182.104.171.88', '526-83-3833', '6ebc360e4800d9ebd9382e637907f9cff035e54fab8fad29a9a4f03acdeb2503');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (12, 'Trudy', 'Hellicar', 'thellicarb@npr.org', 'Female', '172.196.174.157', '241-61-9653', '26981a5fa602b2a2a715c6d488ea218776a5ff11b7f88af331e575919676aac9');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (13, 'Arthur', 'Flaubert', 'aflaubertc@ca.gov', 'Male', '206.77.144.14', '317-99-6725', 'a204776a7d20a49781684c88abb008162eb83fd01b37631db7308f4178782274');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (14, 'Tommi', 'Hamshere', 'thamshered@go.com', 'Female', '171.212.246.230', '760-19-6804', '3a7a51997bd53603a953ce6b74b3a086e1255d11665479ca5b9659e9ca716762');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (15, 'Erminia', 'Rawcliffe', 'erawcliffee@google.de', 'Female', '93.189.201.76', '564-43-9224', '156de4772868053f9ea70ac7ee5c6f97c7f92c4ee3e3ab5f4b403e47550089fd');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (16, 'Townie', 'Feben', 'tfebenf@hubpages.com', 'Male', '149.122.213.255', '629-20-9141', 'bc61963e5e31e3e44aa96c00c6649818837684594a8b2deb6d4d91a144120a16');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (17, 'Lotty', 'Mussen', 'lmusseng@youtube.com', 'Female', '68.79.156.27', '165-88-5176', '0cd43a101c0cc29a2f17693f0551c1c254f8e3c5663fd22eb9b43843066c7bd1');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (18, 'Hillie', 'Greensmith', 'hgreensmithh@google.com.hk', 'Male', '253.232.85.9', '360-29-3104', '64182717ae3aa30352e3213d48dd7a0772806708d70c58ed36404f93a0610aab');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (19, 'Booth', 'Chesworth', 'bchesworthi@usda.gov', 'Male', '43.70.134.42', '427-99-7525', '1357063c4a4bef8b641bb4b03dfb6b7fe75236fd696319440a6bb72a0f4dd1ae');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (20, 'Stearne', 'Ondricek', 'sondricekj@state.gov', 'Male', '186.2.206.40', '281-31-3141', '40f3e08195b4e52a6630f7595c63d3dffc0be7536e80ce41d0bd15668179312a');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (21, 'Erasmus', 'Fraczkiewicz', 'efraczkiewiczk@ibm.com', 'Male', '19.95.229.250', '966-75-4187', '2f3fc59ac642a82a93c341452bc85370052b7b77b50ff06e8976e7d567c064c4');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (22, 'Melvin', 'Ramshaw', 'mramshawl@hp.com', 'Male', '59.212.128.195', '987-14-8709', 'e63983f273f795a0e6e002f0566fd68079fa9abb5f435722a4696dd15f132680');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (23, 'Nicolina', 'Rekes', 'nrekesm@wikispaces.com', 'Female', '58.132.115.31', '724-98-9756', '70c6c707396d8b0c0125f836b30343c36cfe1db96f0b6d5d541803d41a6c6b44');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (24, 'Kelsi', 'Loughlin', 'kloughlinn@marriott.com', 'Female', '130.177.135.140', '480-16-5451', '8aa8eebeb43ef738b9cf94c4ae7e9ef2c1a1deac5ec650e02587682158a553df');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (25, 'Enrico', 'Dukesbury', 'edukesburyo@cbsnews.com', 'Male', '23.58.20.251', '196-03-3525', 'a8c7b8524e930cb5cbd0e7a9ff4ae234a7494137de098d4752419da3d1932d28');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (26, 'Olia', 'Lowings', 'olowingsp@boston.com', 'Female', '96.150.54.8', '325-78-6935', 'a585a5990ead4fd96bae9a262720b023cda256f844ce240552c062f8641823ba');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (27, 'Romola', 'Batalle', 'rbatalleq@zdnet.com', 'Female', '124.225.79.89', '830-74-0593', '4eea66f7be10e778de7f6c88c21c656c1ca7284b9f2b026db9c08178e0768dcb');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (28, 'Jordan', 'Kipling', 'jkiplingr@istockphoto.com', 'Male', '5.83.184.115', '763-84-5990', 'fea3d74177975f18676d43cd4ed74d3c3a4c90af9af9bb9b5a371cfac16e7aac');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (29, 'Seka', 'Pennoni', 'spennonis@soup.io', 'Female', '4.88.192.154', '884-97-3478', 'ce2c00bc2145079b731a4fceb23fe3cc6a7810a494e1f453aa2896ff6029ef02');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (30, 'Hermione', 'Durtnal', 'hdurtnalt@squidoo.com', 'Female', '223.124.216.153', '905-51-7149', 'abeccf3ebe0d821e7f6695160ae71d43daf106a8d12c0a3ff44dd65a26b728f1');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (31, 'Peyter', 'Going', 'pgoingu@berkeley.edu', 'Male', '169.30.182.87', '846-65-2728', 'f77af18b8bc90b2bb85df4cac7d18e6153d4979c3b6ad101b96f08dd50db8172');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (32, 'Fey', 'Fruish', 'ffruishv@prlog.org', 'Female', '96.78.188.47', '459-49-9550', '2555ae66eafde50e51301ba7f8d6e5b2337a91bef16cfe7807dda7aa9585dcdb');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (33, 'Murdock', 'Menpes', 'mmenpesw@fotki.com', 'Male', '25.236.74.215', '749-30-8470', 'a6698da7f1c5c0cdb96fe61ee6c9cb90b96f49e486d2ab5e154f3e0adfac7ecd');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (34, 'Camala', 'MacGarvey', 'cmacgarveyx@i2i.jp', 'Female', '158.104.131.217', '504-67-8004', 'b4325b63beb01ab1761be506f302552c3e83e10624321ccab14f12b93baa9373');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (35, 'Lucias', 'Youll', 'lyoully@cbc.ca', 'Male', '229.168.52.246', '508-15-6732', 'b8d0af5c6456cd82644a6dc32748d456a10b671c751665a47f73ab717b084b47');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (36, 'Oswald', 'Ottley', 'oottleyz@patch.com', 'Male', '27.169.11.3', '744-52-9692', '4fdbacf560af51d5ce4d3b33b30f6b56c8efda66247e17172fbed80d48b0e3eb');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (37, 'Sibeal', 'Tattershall', 'stattershall10@sakura.ne.jp', 'Female', '249.219.253.158', '947-97-0217', '1b519d55f4427392d3fa31785f006ab29ac2e19ff3e0fed7f7176a12ac9542f9');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (38, 'Merry', 'Hackly', 'mhackly11@blinklist.com', 'Female', '217.151.133.219', '860-47-5028', '15d5f240184c97b7a29235ab24bd0d1f0ddc36276550c0f1831bae6370724daf');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (39, 'Ros', 'Crowch', 'rcrowch12@hibu.com', 'Female', '160.222.42.135', '684-02-3954', '5e9fc678f0c9d750a6f2bfb5d41b705288c4d3b96fe38aac6c92196ddaf0f6a4');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (40, 'Lilith', 'Woolfall', 'lwoolfall13@nature.com', 'Female', '223.23.239.202', '137-20-9241', '95c7fc6c5a66d3796007253275805a8f9cf5189f7f6243bef4da0b919b845377');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (41, 'Jamie', 'Buglass', 'jbuglass14@blog.com', 'Male', '150.223.175.183', '490-81-0276', 'b39cb854a6bf1b8631a09fdb188967fa3988b85f70b17ba1d84389967b7e849d');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (42, 'Gustavus', 'Scown', 'gscown15@nasa.gov', 'Male', '94.234.75.72', '058-92-9178', 'eb4d4c7bd9cec943031f18798473e65b4d7e72fc7879409680a32423ee93f73b');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (43, 'Kayley', 'Mathwin', 'kmathwin16@ox.ac.uk', 'Female', '92.83.53.163', '025-16-6558', 'a28ddb1afbdbd9523aebe468b59365b91db66f7150d5eb70b6e7eff964c857e0');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (44, 'Yorke', 'Meneely', 'ymeneely17@slate.com', 'Male', '11.76.227.85', '520-90-0828', '310dd36911b8fd6280e292638aaa971616a0d2d3839df605e620e85efb8bc296');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (45, 'Xylia', 'Anthes', 'xanthes18@wufoo.com', 'Female', '169.56.222.245', '822-21-7951', '7ef5ac095872af5f14899bb45d537fdc5b9d525e1cf03672d1e3979e8561c8da');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (46, 'Ash', 'Trowel', 'atrowel19@sakura.ne.jp', 'Male', '147.19.23.125', '623-79-1832', 'd978e15dce6964eefb10ed0d32ae107c6f7814919f025ee8e29a30de6b6e702b');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (47, 'Cornelle', 'Gambles', 'cgambles1a@skyrock.com', 'Female', '220.249.116.3', '287-05-5325', '0119ac1034943634f44278b825d0198ea79cc39d419bfafbbbfb19c1f12f4979');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (48, 'Blake', 'Matei', 'bmatei1b@twitter.com', 'Male', '129.236.71.37', '148-95-1840', '1d8d0d455d496e9211c920a30094f9310e97ea85e8d1c8c90e11d61b98c3d88b');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (49, 'Gusella', 'McCreedy', 'gmccreedy1c@indiegogo.com', 'Female', '58.63.189.205', '702-32-8228', '8f283bbac0575a264e375fc576258425ef4ed3c2e00d15e71f70905c8a5b8166');
insert into MOCK_DATA (id, first_name, last_name, email, gender, ip_address, social_security, pw) values (50, 'Rachelle', 'Fantonetti', 'rfantonetti1d@boston.com', 'Female', '194.248.171.52', '914-27-1016', 'c44813ea85d73e7675b2376136b6bbec4bbc8dfe8140ba060bb6775d7ebdf5b3');

UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-08  0:21:38
