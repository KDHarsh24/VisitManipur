-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: hackathon
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.23.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `mobile1` bigint NOT NULL,
  `mobile2` bigint DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `village` varchar(100) DEFAULT NULL,
  `pinCode` int DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  `District` varchar(300) DEFAULT NULL,
  `state` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DocumentId`
--

DROP TABLE IF EXISTS `DocumentId`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DocumentId` (
  `aadharno` int DEFAULT NULL,
  `aadharimg` varchar(1000) DEFAULT NULL,
  `votercardno` int DEFAULT NULL,
  `votercardimg` varchar(1000) DEFAULT NULL,
  `mobile1` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DocumentId`
--

LOCK TABLES `DocumentId` WRITE;
/*!40000 ALTER TABLE `DocumentId` DISABLE KEYS */;
/*!40000 ALTER TABLE `DocumentId` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RoomDetail`
--

DROP TABLE IF EXISTS `RoomDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RoomDetail` (
  `Charge` varchar(300) DEFAULT NULL,
  `no` int DEFAULT NULL,
  `img1` varchar(1000) DEFAULT NULL,
  `img2` varchar(1000) DEFAULT NULL,
  `img3` varchar(1000) DEFAULT NULL,
  `img4` varchar(1000) DEFAULT NULL,
  `img5` varchar(1000) DEFAULT NULL,
  `mobile1` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RoomDetail`
--

LOCK TABLES `RoomDetail` WRITE;
/*!40000 ALTER TABLE `RoomDetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `RoomDetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `festives`
--

DROP TABLE IF EXISTS `festives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `festives` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `month` varchar(200) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festives`
--

LOCK TABLES `festives` WRITE;
/*!40000 ALTER TABLE `festives` DISABLE KEYS */;
INSERT INTO `festives` VALUES (1,'Cheiraoba Festival','Cheiraoba is celebrated on the 1st day of Sajibu month (March-April). This is also known as Spring Festival in Manipur. The regional goddess Sanamahi is also worshipped during Cheiraoba festival of Manipur.','March-April','https://i0.wp.com/www.eastmojo.com/wp-content/uploads/2021/04/cheiraoba-1.jpg?fit=1200%2C800&ssl=1'),(2,'Pineapple Festival','firstly celebrated on July 2008 and every year celerbrated in the months between June-July. Main motive is to support farmers Its a chance for pineapple growers to connect with buyers and advocate for their products.','June-July','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6VxvtcQVokWqZ8eHzs_DWVelKsSu5KxWmXchGDj6E7Q&s'),(3,'Imoinu Iratpa','Imoinu Iratapa is celebrated on the 12th of lunar day of the Wakching month of the Meitei calendar','December-January','https://qph.cf2.quoracdn.net/main-qimg-840aa77c23134f1bd30cd4a95e57cb28-lq');
/*!40000 ALTER TABLE `festives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `id` text,
  `price` int DEFAULT NULL,
  `Address` text,
  `Rank` double DEFAULT NULL,
  `Rating` double DEFAULT NULL,
  `Name` text,
  `Near` text,
  `Image 1` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES ('SL1',900,'Namdulong, Khuman Lampak Stadium Rd, near ISBT, Imphal',698.4,4,'Hotel Majestic','Thangal','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOx_kJ-zjDAIQm1b1-JH_junKELEimPF-LPKm5x0RrN-PvHL4pBM4ORvbIssBZK3gOJP4&usqp=CAU'),('SL2',1000,'Near airport',756.08,4.4,'Eco heritage Villas and  resort','Thangal','https://gos3.ibcdn.com/4dae91af-9869-4d89-b527-8a6dbcda91e7.jpeg'),('SL3',1000,'Thangal bazar',800.74,3.7,'Hotel anand continental','Thangal','https://cf.bstatic.com/xdata/images/hotel/max1024x768/275581388.jpg?k=5a429ff5422a17a8cb38eb07456095da0c5db28f78e2ba6bb88e783feb773901&o=&hp=1'),('SL4',1000,'Bir Tikendrajit International Airport, Road, above Jio Mart store, makha leikai, Changangei,',820.8,4,'Hotel alpha','Thangal','https://q-xx.bstatic.com/xdata/images/hotel/max500/345780010.jpg?k=c97f4e3ae173f80b5332d60653dbd5498db7b46d7f69abb5003e4dc582cef9cd&o='),('SM1',1300,'The Thangal Hotel, Dharamshala road,MG avenue 1m hal west,lm hal',1008.72,3.6,'OYO Flagship The thangal hotel','Thangal','https://images.oyoroomscdn.com/uploads/hotel_image/220554/medium/fclvghkvuliy.jpg'),('SM2',1300,'RWGW+8RV, Inter State Bus Terminal, Khuman Lampak, Khongnang Ani Karak, Kabo Leika,',1048.68,3.4,'Shirui lily hotel','Thangal','https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_258,q_auto,w_258/hotelier-images/af/71/d3dbe416beab54728cad1f73806cb7645374bef108f189ce51bf401b4334.jpeg'),('SM3',1500,'Pi Hotel  	1510	4.8(58)	NORTH AOC, opp. KEKRUPAT, Minuthong Rd',1208.96,4.8,'Pi Hotel','Thangal','https://static.readytotrip.com/upload/information_system_24/4/8/8/item_4889334/information_items_4889334.jpg'),('SM4',1900,'ALOO GALI POINT, West, Thangal Bazar',1506.36,3.8,'HOTEL MILLENNIUM','Thangal','https://static.readytotrip.com/upload/information_system_24/4/8/8/item_4889334/information_items_4889334.jpg'),('SH1',2600,'RW9V+3W2 North AOC, Ragailong, Imphal, Kairang Meitei,',1821.26,4.2,'Hotel imphal by the classic','Thangal','https://www.theclassichotel.in/wp-content/uploads/2021/08/Rita-Cafe-CLASSIC.jpg'),('SH2',2900,'RW6P+79W M.G. Avenue, Unnamed Road, Than al Bazar',2031.29,4.3,'Sangai Hotel','Thangal','https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/ea/e5/29/closed-front-view.jpg?w=700&h=-1&s=1'),('SH3',5400,'QWJ7+FWJ Airport Road, Lane 2, Sangaiprou Mamang, ',3781.26,4.2,'Hillwild Living','Thangal','https://images.trvl-media.com/lodging/20000000/19740000/19734500/19734423/66b6fc58_z.jpg'),('SH4',6000,'Mamang Leikai, Chingmeirong',4201.29,4.3,'Classic Grande','Thangal','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF7PNozFYxjWY0Oeowh035wz7ZhPADjcYgwm6cEkbDcTN4JVN5wKJ5lHaJFll1iNZU-m8&usqp=CAU'),('OL1',1000,'Tera Bazaar-Nouramthong Road, Tera Loukrakpam Leikai, Sagolband, Imphal',801.78,8.9,'Manipur House','Thangal','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb391etAJzrxT_kZQ1grA__VT3E150gEPYtYlobQj03huqKBzJDBS2jIDfTY6CCymRg5c&usqp=CAU'),('OL2',1300,'Machu Collection, Assembly Road Chingmeirong Maning Leikai. Landmark, Imphal',655,10,'Hearth Of Imphal','Thangal','https://content3.jdmagicbox.com/comp/imphal/s6/9999p3852.3852.140515184909.x1s6/catalogue/hotel-new-airlines-imphal-ho-imphal-hotels-1jczy21.jpg'),('OL3',1300,'NORTH AOC, opp. KEKRUPAT, Minuthong Rd, Imphal,',654.45,8.9,'Pi Hotel Imphal','Thangal','https://cf.bstatic.com/xdata/images/hotel/max1024x768/541056146.jpg?k=aceb1f2790fc061a42ece80e528e4c0d42b8628cde7188b3458a6f5b3090d3fb&o=&hp=1'),('OL4',1200,'Chingmeirong Rd, Khongnang Ani Karak, Bazar board, Imphal ',604,8,'Oyo Decent Inn','Thangal','https://images.oyoroomscdn.com/uploads/hotel_image/225817/medium/ijryyxwhnofk.jpg'),('OM1',1800,'Keishampat keisham leikai Near yummyland fast food, 795001 Imphal',1441.8,9,'Yummly Land Guest House','Thangal','https://content.jdmagicbox.com/comp/imphal/z9/9999p3852.3852.171128212015.z2z9/catalogue/yummy-land-restaurant-imphal-restaurants-hrcgkxdiqr.jpg'),('OM2',2300,'Block C, Nagaram Village, Imphal',1841.82,9.1,'Joy\'s BNB','Thangal','https://cf.bstatic.com/xdata/images/hotel/max1024x768/333116444.jpg?k=fd56af2610782efe716ffd08f1a5f36ba3b02196dd6f8ac2a06c28291f359772&o=&hp=1'),('OM3',2200,'Maibakhul, Imphal',1761.8,9,'Radiant Club and Resort','Thangal','https://cf.bstatic.com/xdata/images/hotel/max1024x768/524749894.jpg?k=8edd7a5f950a944a23380522a74cbf7368252981e74497f4d67bc7889b96a5d8&o=&hp=1'),('OM4',2700,'Nagamapal Rd, AG Staffs Colony, Brahmapur Nahabam, Thangmeiband, Imphal',2162,10,'City View HomeStay','Thangal','https://cf.bstatic.com/xdata/images/hotel/max1024x768/516708301.jpg?k=cb2deb771823abbadc9bbe5d6db6cb220f8c42e4afc745bae6148f7f3030cc8b&o=&hp=1'),('OH1',3300,' M.G. Avenue, Unnamed Road, Thangal Bazar, Imphal',2312.58,8.6,'Sangai Continental','Thangal','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK_dEGhknwvTvCithAS8oQ4YpUdiByc2hXeISmGf49jymxemC_Tqw5zMoLrPVPLwJIjlw&usqp=CAU'),('OH2',3500,'Polo Ground Road, Paona Bazar, Imphal',2452.25,7.5,'Aurora Boutique Hotel Type','Thangal','https://pix7.agoda.net/hotelImages/35299691/-1/caa46652eeb5f27362fc0acfe2e85cb2.png?ce=0&s=414x232&ar=16x9'),('OH3',4000,'Thangmeiband, Imphal',2802.46,8.2,'Hotel Daani Contental','Thangal','https://cf.bstatic.com/xdata/images/hotel/max1024x768/296683822.jpg?k=f6c9b092dcf327587d883141d295f160687e36a81035cb20e78b8fc512c2552d&o=&hp=1'),('OH4',6500,'Mamang Leikai, Chingmeirong, Imphal',4552.43,8.1,'Classic Grande','Thangal','https://cf.bstatic.com/xdata/images/hotel/max1024x768/296683822.jpg?k=f6c9b092dcf327587d883141d295f160687e36a81035cb20e78b8fc512c2552d&o=&hp=1'),('OH5',3000,'Loktak Lake',2102.94,9.8,'Laisoi Farm Homestay','Loktak','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_yX1-qqlf3yL1RdrTVNmKXvPZvJlwEDTQGoIgnJhybomDeXdnBmJNEG7CtX4PWJmX-8k&usqp=CAU'),('OH6',3300,'Loktak Lake',2312.46,8.2,'Hotel Elegance Resort','Loktak','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRZxCqf1IY_cSVVrPlfudh9kEbjJCUJ6vXrZxCLcgGaeIihRE9kFePzOgAbjLi6Thr5Ss&usqp=CAU'),('OH7',2100,'Meizailung, Near leishiphung hospital, Ukhrul, 795142 ',1473,10,'Chengjel Home','Ukhrul','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4PTgiPEaCbP3RgTL3yd4XvXoFGEEyaIOpme0VQNdD8K1XGcwk905VVh3m6kiVqEIx9do&usqp=CAU'),('OH8',3500,'The Wolorim Manor. Dungrei, Imphal-Jessami Rd, 795142 Ukhrul, India',2452.4,8,'The Wolorim Manor','Ukhrul','https://cf.bstatic.com/xdata/images/hotel/max500/532214885.jpg?k=89936b860169f3246ad4a83fa1a782a9347bb8e6bafac03ee78712d7d82f19f8&o=&hp=1'),('OH9',3600,'Ukhrul Town, 795142 Ukhrul, India',2522.67,8.9,'Megan Hills','Ukhrul','https://cf.bstatic.com/xdata/images/hotel/max1024x768/330545600.jpg?k=5a260b31722047fc7e5d67db551833f4d8699ccfc3bd187d59f8f70992f4a402&o=&hp=1');
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `ID` text,
  `Feed URL` text,
  `Feed Link` text,
  `Feed Title` text,
  `Feed Description` text,
  `Feed Icon` text,
  `Title` text,
  `Link` text,
  `Description` text,
  `Plain Description` text,
  `Author` text,
  `Date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES ('4TIMePj9B8c3s3W6','https://news.google.com/topics/CAAqBwgKMOTXjQswsP-fAw?hl=en-IN&gl=IN&ceid=IN%3Aen','https://rss.app/feeds/4TIMePj9B8c3s3W6.xml','Google News - Manipur - Manipur','Read full articles, watch videos, browse thousands of titles and more on the \'Manipur\' topic with Google News.','https://ssl.gstatic.com/gnews/logo/google_news_192.png','Amit Shah likely to visit Manipur on April 14 for election campaign','https://www.deccanherald.com/india/manipur/amit-shah-likely-to-visit-manipur-on-april-14-for-election-campaign-2973141','Imphal, Apr 10 (PTI) Union Home Minister Amit Shah is likely to visit Manipur on April 14 to campaign for Lok Sabha elections, state BJP leaders said on Wednesday.','Imphal, Apr 10 (PTI) Union Home Minister Amit Shah is likely to visit Manipur on April 14 to campaign for Lok Sabha elections, state BJP leaders said on Wednesday.','PTI','2024-04-10T19:30:24.000Z'),('4TIMePj9B8c3s3W6','https://news.google.com/topics/CAAqBwgKMOTXjQswsP-fAw?hl=en-IN&gl=IN&ceid=IN%3Aen','https://rss.app/feeds/4TIMePj9B8c3s3W6.xml','Google News - Manipur - Manipur','Read full articles, watch videos, browse thousands of titles and more on the \'Manipur\' topic with Google News.','https://ssl.gstatic.com/gnews/logo/google_news_192.png','What happens in closed-door meetings at Manipur CM\'s house & how he\'s hard at work to show \'PM cares\'','https://theprint.in/politics/what-happens-in-closed-door-meetings-at-manipur-cms-house-how-hes-hard-at-work-to-show-pm-cares/2032219/','CM has been holding meetings to address voters\' concerns over Modi\'s absence from Manipur at time of crisis. Congress has filed complaint saying the meetings violate Model Code of Conduct.','CM has been holding meetings to address voters\' concerns over Modi\'s absence from Manipur at time of crisis. Congress has filed complaint saying the meetings violate Model Code of Conduct.','Sourav Roy Barman','2024-04-08T08:58:58.000Z'),('4TIMePj9B8c3s3W6','https://news.google.com/topics/CAAqBwgKMOTXjQswsP-fAw?hl=en-IN&gl=IN&ceid=IN%3Aen','https://rss.app/feeds/4TIMePj9B8c3s3W6.xml','Google News - Manipur - Manipur','Read full articles, watch videos, browse thousands of titles and more on the \'Manipur\' topic with Google News.','https://ssl.gstatic.com/gnews/logo/google_news_192.png','Video of Kuki Women\'s Sexual Assault: Manipur CM Claims Congress Hand in \'Insult to PM Modi\'','https://m.thewire.in/article/politics/biren-singh-video-kuki-women-paraded-naked-modi-congress','Biren Singh claimed that the video was \'made viral\' by the opposition party, Congress, in order to \'insult\' Prime Minister Narendra Modi. Modi has been widely criticised for his silence on Manipur.','Biren Singh claimed that the video was \'made viral\' by the opposition party, Congress, in order to \'insult\' Prime Minister Narendra Modi. Modi has been widely criticised for his silence on Manipur.','The Wire Staff','2024-04-08T07:30:06.000Z'),('4TIMePj9B8c3s3W6','https://news.google.com/topics/CAAqBwgKMOTXjQswsP-fAw?hl=en-IN&gl=IN&ceid=IN%3Aen','https://rss.app/feeds/4TIMePj9B8c3s3W6.xml','Google News - Manipur - Manipur','Read full articles, watch videos, browse thousands of titles and more on the \'Manipur\' topic with Google News.','https://ssl.gstatic.com/gnews/logo/google_news_192.png','Independent candidate from Inner Manipur Lok Sabha seat threatens CM Biren Singh, ECI asks police to take action','https://indianexpress.com/article/india/independent-candidate-inner-manipur-lok-sabha-cm-biren-singh-eci-9249610/','The DEO, Khumanthem Daina Devi, in the written complaint, pointed out that Totomsana has violated the Model Code of Conduct by using derogatory remarks against the Chief Minister during a live telecast of a \'Mega Discussion\' hosted by local TV channel SK TV on April 2.','The DEO, Khumanthem Daina Devi, in the written complaint, pointed out that Totomsana has violated the Model Code of Conduct by using derogatory remarks against the Chief Minister during a live telecast of a \'Mega Discussion\' hosted by local TV channel SK TV on April 2.','The Indian Express','2024-04-03T14:44:14.000Z'),('4TIMePj9B8c3s3W6','https://news.google.com/topics/CAAqBwgKMOTXjQswsP-fAw?hl=en-IN&gl=IN&ceid=IN%3Aen','https://rss.app/feeds/4TIMePj9B8c3s3W6.xml','Google News - Manipur - Manipur','Read full articles, watch videos, browse thousands of titles and more on the \'Manipur\' topic with Google News.','https://ssl.gstatic.com/gnews/logo/google_news_192.png','BJP to support NPF candidate in Outer Manipur Lok Sabha seat: CM N Biren Singh','https://www.deccanherald.com/india/manipur/bjp-to-support-npf-candidate-in-outer-manipur-lok-sabha-seat-cm-n-biren-singh-2949522','Imphal, Mar 23 (PTI) Manipur Chief Minister N Biren Singh has said that his party BJP will support the Naga People\'s Front (NPF) candidate in Outer Manipur Lok Sabha seat in the upcoming general elections.','Imphal, Mar 23 (PTI) Manipur Chief Minister N Biren Singh has said that his party BJP will support the Naga People\'s Front (NPF) candidate in Outer Manipur Lok Sabha seat in the upcoming general elections.','PTI','2024-03-23T04:34:11.000Z'),('4TIMePj9B8c3s3W6','https://news.google.com/topics/CAAqBwgKMOTXjQswsP-fAw?hl=en-IN&gl=IN&ceid=IN%3Aen','https://rss.app/feeds/4TIMePj9B8c3s3W6.xml','Google News - Manipur - Manipur','Read full articles, watch videos, browse thousands of titles and more on the \'Manipur\' topic with Google News.','https://ssl.gstatic.com/gnews/logo/google_news_192.png','N Biren Singh demands release of 3 members of Manipur armed outfit','https://www.indiatoday.in/india/story/n-biren-singh-demands-release-of-3-members-of-manipur-armed-outfit-2514998-2024-03-15','Manipur Chief Minister has requested the Union government for the release of three members of the Pambei-led United National Liberation Front (UNLF) who were arrested by the National Investigation Agency (NIA) on Wednesday.','Manipur Chief Minister has requested the Union government for the release of three members of the Pambei-led United National Liberation Front (UNLF) who were arrested by the National Investigation Agency (NIA) on Wednesday.','Babie Shirin','2024-03-15T00:40:37.000Z'),('4TIMePj9B8c3s3W6','https://news.google.com/topics/CAAqBwgKMOTXjQswsP-fAw?hl=en-IN&gl=IN&ceid=IN%3Aen','https://rss.app/feeds/4TIMePj9B8c3s3W6.xml','Google News - Manipur - Manipur','Read full articles, watch videos, browse thousands of titles and more on the \'Manipur\' topic with Google News.','https://ssl.gstatic.com/gnews/logo/google_news_192.png','Meitei, Kuki MLAs have met twice, hope peace will return soon: Manipur CM N Biren Singh','https://www.deccanherald.com/india/manipur/meitei-kuki-mlas-have-met-twice-hope-peace-will-return-soon-manipur-cm-n-biren-singh-2936629','Imphal, Mar 14 (PTI) Manipur Chief Minister N Biren Singh on Thursday said talks have been initiated to resolve the conflict between the Meitei and Kuki communities in the state.','Imphal, Mar 14 (PTI) Manipur Chief Minister N Biren Singh on Thursday said talks have been initiated to resolve the conflict between the Meitei and Kuki communities in the state.','PTI','2024-03-14T12:21:03.000Z');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `MyUnknownColumn` text,
  `Place` text,
  `Opening  time` text,
  `Closingtime` text,
  `Mintime` double DEFAULT NULL,
  `Maxtime` int DEFAULT NULL,
  `Distance` text,
  `primetime` text,
  `description` text,
  `Near` text,
  `Image link` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES ('','Kangla Fort','9:00am','5:00pm',2,3,'2.9 km','11:00am to 4:00pm','Kangla Fort, also known as Kangla Palace,Symbol of Manipuri history and culture Religious importance for Meiteis , Lungs of Imphal due to its forested area .','Thangal','https://nenow.in/wp-content/uploads/2023/01/Manipur-CM-inside-Kangla-fort.jpg'),('','Ema Market','9:30am','6:00pm',1,2,'1.6 km','11:00am to 5:00pm','The Ema Market, also known as the Ima Keithel , world\'s largest all-women run market .','Thangal','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeAwG1M56QR_9ula1vG8m_qiA7oisIpg9hvo3d0h3CXg&s'),('','Loktak Lake','6:00am','5:00pm',1.5,3,'30.4 km','sunriseand sunset','Loktak Lake is a beautiful freshwater lake located in Moirang , largest freshwater lake in all of South Asia, The lake is famous for its unique floating islands called phumdis','Loktak','https://miro.medium.com/v2/resize:fit:1400/1*mtDJfxsmKsdnZE2XQLibJw@2x.jpeg'),('','Keibul Lamjao Park','9:00am','6:00am',1,2,'47.2 km','10:00am to 4:00pm','The park is a haven for the endangered Sangai deer, also known as the brow-antlered deer, which is Manipur\'s state animal. ','Loktak','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcxdEnuuIMTnUVQTGbpapCswf5HkbfyUW6E_s53HiKtfw4C52hwltqsuxd6ahOgpw3NLY&usqp=CAU'),('','INA Museum','10:00am','4:00pm',0.5,2,'44.7 km ','anytime','dedicated to the Indian National Army (INA) and its leader, Subhas Chandra Bose .','Loktak','https://media.tripinvites.com/places/manipur/ina-memorial/ina-memorial-manipur-featured.jpg'),('','War memorial complex','9:00am','4:00pm',1,2,'3.1 km','10:00am to 4:00pm','A complex dedicated to the soldiers of the Indian National Army (INA) who fought for India\'s independence during World War II .','Khongjom','https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/4d/55/1a/khongjom-war-memorial.jpg?w=1200&h=1200&s=1'),('','Ukhrul','6:00am','6:00pm',12,24,'80 km','sunrise and sunset ','It contains rolling hills, lush forests, and stunning mountain views. The highest peak in Manipur, Shirui Kashung, is located in Ukhrul district. This peak is famous for the rare Shirui Lily, the state flower of Manipur. The lily blooms only in the monthsofMayandJune','Ukhrul','https://i0.wp.com/www.scaleindigo.com/wp-content/uploads/2022/12/Manipur-Terraced-Rice-Paddies-via-the_oo_morok_trails-NorthEast-India-by-Scale-Indigo.jpg?resize=1232%2C816&ssl=1'),('','Mao','6:00am','6:00pm',12,12,'100 km','sunrise and sunset ','Mao is beautiful hill town in Senapati district , it contains enchanting waterfalls and dreamylandscapes,','Mao','https://travelsetu.com/apps/uploads/new_destinations_photos/destination/2024/01/18/e723ba19ab9d3e6f17897b44f0ed114d_1000x1000.jpg'),('','Iskcon','4:30am','9:30pm',0.5,2,'5.5 km','4:30 to 8:00am & 4:30 to 8:30pm','Also known as Sri Sri Radha Krishnacandra Temple, is a Hindu temple dedicated to Lord Krishna and Radha in Imphal . ','Thangal','https://lh3.googleusercontent.com/proxy/wJ-S-IVN17Pw679Z_-ItDnzHFUnH8KC_9hmSglDzA_UZZmmEwU6nBcPEDwHe_5cF9m5K45BPTYlAvbb3QJoWHbsJvFGTjml4rrxXn5QM3aG5aEVrIisOceyhbfcNKg');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rest`
--

DROP TABLE IF EXISTS `rest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rest` (
  `id` text,
  `Address` text,
  `Name` text,
  `Near` text,
  `Image link` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rest`
--

LOCK TABLES `rest` WRITE;
/*!40000 ALTER TABLE `rest` DISABLE KEYS */;
INSERT INTO `rest` VALUES ('M1','MG Avenue, Majorkhul, Thangal Bazar, Imphal, Manipur 795001','OK Restaurent','Thangal','https://content.jdmagicbox.com/comp/mumbai/j2/9999p3852.3852.200627215713.h9j2/catalogue/ok-hotel-thangal-bazar-imphal-hotels-a9jfit3jzz.jpg'),('M2','Khoyathong Road, parking, near senapati, Imphal, Manipur 795001','Punjabi Tikka','Thangal','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYFSNmsFaaqD9LKNICdUUBdwBpJQlPf6yU96Vc04cdeByWTB7tJJFjtycgwzA0D6hz8k&usqp=CAU'),('M3','Wahengbam Leikai, Sagolband, Imphal, Manipur 795001','Luxmi Kitchen','Thangal','https://bsmedia.business-standard.com/_media/bs/vdo/video-gallery/general/luxmi-kitchen-new-eatery-for-complete-manipuri-cuisine/thumb/luxmi-kitchen-new-eatery-for-complete-manipuri-cuisine-14615175225873_34777.png'),('H1','North AOC, Kabo Leika, Imphal, Manipur 795001','Classic Hotel','Thangal','https://media-cdn.tripadvisor.com/media/photo-s/1a/8a/26/1f/classic-cafe-multi-cuisine.jpg'),('H2','Mg Avenue, Thangal Bazar Inside Sangai Continental, Thangal Bazar, Imphal - 795001','The Wild Rice','Thangal','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnTKXiqfFaHqKVnw-Gr2LJrEtwHfQxpYQ4Q3I_AUGpFsSUYlQS-6onQMiLrRpKgM_YcYI&usqp=CAU'),('H3','2nd Floor, KokSamLai Tower (oppt. Thau Ground), DM College Road, Thangmeiband, Imphal West, Manipur 795004','Forage','Thangal','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsJn_MhM4lidOH_V-sg8Gprf3c7T8DB6JY_kkMxMATqA&s'),('H4','Ground floor, state co-operative bank Ltd, near manipur, Ukhrul, Manipur 795142','The Undercroft ','Ukhrul','https://www.warwick-castle.com/media/jp1dq0nt/undercroft-1.jpg'),('H5','Phungreitang, 2nd Floor, Shoppers Hub, Gandhi circle lane, Behind Viewland church gate, Ukhrul, Manipur 795142','25 Degree North Hotel','Ukhrul','https://media-cdn.tripadvisor.com/media/photo-s/1c/d2/8a/a7/img-20210403-120646-largejpg.jpg'),('H6','Mini Secretariat, North Block, Ukhrul, Manipur 795142','Downtown Cafe','Ukhrul','https://img.restaurantguru.com/r50a-DownTown-Cafe-Ukhrul-exterior-2022-12.jpg');
/*!40000 ALTER TABLE `rest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-12 11:09:18
