-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: TuVanLuat
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

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
-- Table structure for table `DichVu`
--

DROP TABLE IF EXISTS `DichVu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DichVu` (
  `id_DichVu` int NOT NULL AUTO_INCREMENT,
  `Ten` varchar(100) DEFAULT NULL,
  `ChiTiet` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_DichVu`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DichVu`
--

LOCK TABLES `DichVu` WRITE;
/*!40000 ALTER TABLE `DichVu` DISABLE KEYS */;
INSERT INTO `DichVu` VALUES (1,'Luật doanh nghiệp','quy định về việc thành lập, tổ chức quản lý và hoạt động của các loại hình doanh nghiệp gồm công ty trách nhiệm hữu hạn, công ty cổ phần, công ty hợp danh và doanh nghiệp tư nhân'),(2,'Luật dân sự','giải quyết các tranh chấp giữa các cá nhân và/hoặc các cơ quan tổ chức, theo đó bên bị thiệt hại có thể được đền bù cho những thiệt hại đó. Ví dụ, nếu một nạn nhân bị ôtô đâm đòi người lái xe bồi thường thiệt hại hoặc chấn thương do tai nạn gây ra'),(3,'Tư vấn hợp đồng','tư vấn, xử lý những vấn đề hợp đồng, quyền lợi, sự thoả thuận giữa các bên liên quan'),(4,'Tư vấn đất đai','quy định về chế độ sở hữu, chế độ quản lí, chế độ sử dụng, về quyền và nghĩa vụ của tổ chức, hộ gia đình và cá nhân sử dụng đất đai'),(5,'Luật lao động','quan hệ lao động giữa người lao động làm công ăn lương với người sử dụng lao động hình thành trên cơ sở hợp đồng lao động và các quan hệ xã hội liên quan trực tiếp với quan hệ lao động'),(6,'Tranh tụng','các hoạt động tố tụng được thực hiện bởi các bên tham gia tố tụng (bên buộc tội và bên bị buộc tội) có quyển bình đẳng với nhau trong việc thu thập, đưa ra chứng cứ để bảo vệ các quan điểm và lợi ích của mình, phản bác lại các quan điểm và lợi ích của phía đối lập');
/*!40000 ALTER TABLE `DichVu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LuatSu`
--

DROP TABLE IF EXISTS `LuatSu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LuatSu` (
  `id_LuatSu` int NOT NULL AUTO_INCREMENT,
  `Ten` varchar(50) DEFAULT NULL,
  `TaiKhoan` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `NgaySinh` date NOT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_LuatSu`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LuatSu`
--

LOCK TABLES `LuatSu` WRITE;
/*!40000 ALTER TABLE `LuatSu` DISABLE KEYS */;
INSERT INTO `LuatSu` VALUES (1,'Nguyễn Thị Anh','luatsu0','2','1963-11-01','0222223358','uploads/luatsu1.png'),(2,'Lê Đức Đức','luatsu1','6','1973-04-20','0425463836','uploads/luatsu1.png'),(3,'Đinh Đình Hà','luatsu2','2','1991-07-04','0949315343','uploads/luatsu1.png'),(4,'Nguyễn Anh Đức','luatsu3','8','1994-10-20','0976572992','uploads/luatsu1.png'),(5,'Đinh Đức Tuyên','luatsu4','5','1962-10-19','0214728461','uploads/luatsu1.png'),(6,'Hoàng Anh Tuyên','luatsu5','6','1962-05-05','0169928932','uploads/luatsu1.png'),(7,'Đinh Thị Nga','luatsu6','1','1992-08-28','0479284942','uploads/luatsu1.png'),(8,'Phạm Đức Hà','luatsu7','5','1975-02-10','0855153347','uploads/luatsu1.png'),(9,'Lê Văn Quỳnh','luatsu8','5','1997-06-23','0365113529','uploads/luatsu2.jpg'),(10,'Lê Văn Quỳnh','luatsu9','7','1972-09-10','0135135218','uploads/luatsu2.jpg'),(11,'Hoàng Văn Quỳnh','luatsu10','2','1974-09-14','0933353942','uploads/luatsu2.jpg'),(12,'Nguyễn Đình Thắng','luatsu11','9','1979-08-07','0746532655','uploads/luatsu2.jpg'),(13,'Phạm Đức Tuấn','luatsu12','6','1967-03-05','0661188479','uploads/luatsu2.jpg'),(14,'Lê Thị Quỳnh','luatsu13','8','1975-05-09','0234793419','uploads/luatsu2.jpg'),(15,'Phạm Anh Tá','luatsu14','1','1964-06-16','0379835283','uploads/luatsu2.jpg'),(16,'Dương Văn Thắng','luatsu15','6','1970-06-16','0136845362','uploads/luatsu2.jpg'),(17,'Nguyễn Đình Anh','luatsu16','1','1986-10-12','0743561864','uploads/team1.jpg'),(18,'Dương Đức Quỳnh','luatsu17','7','1998-01-29','0567622925','uploads/team1.jpg'),(19,'Lê Đức Đức','luatsu18','8','1981-01-07','0524755527','uploads/team1.jpg'),(20,'Đinh Đức Thuỳ','luatsu19','8','1997-07-12','0525352576','uploads/team1.jpg'),(21,'Hoàng Đình Nga','luatsu20','6','1996-07-16','0138422318','uploads/team1.jpg'),(22,'Hoàng Thị Việt','luatsu21','6','1998-08-01','0234119439','uploads/team1.jpg'),(23,'Nguyễn Đình Tú','luatsu22','1','1990-03-09','0727885238','uploads/team1.jpg'),(24,'Trần Văn Anh','luatsu23','6','1984-06-20','0781848387','uploads/team1.jpg'),(25,'Nguyễn Thị Thuỳ','luatsu24','8','1977-06-01','0133979769','uploads/team1.jpg'),(26,'Trần Anh Đức','luatsu25','4','1996-10-03','0972757535','uploads/team1.jpg'),(27,'Dương Đình Tuấn','luatsu26','5','1979-08-19','0676837814','uploads/team1.jpg'),(28,'Phạm Văn Hà','luatsu27','8','1969-10-24','0867993389','uploads/team1.jpg'),(29,'Nguyễn Thị Tá','luatsu28','9','1961-10-16','0163857152','uploads/team1.jpg'),(30,'Lê Anh Thuỳ','luatsu29','7','1969-10-21','0713236558','uploads/team1.jpg'),(31,'Dương Đình Đức','luatsu30','6','1985-09-25','0518541139','uploads/team1.jpg'),(32,'Trần Anh Khánh','luatsu31','3','1974-02-05','0919475775','uploads/team1.jpg'),(33,'Phan Anh Tuấn','luatsu32','1','1995-03-02','0368498641','uploads/team1.jpg'),(34,'Trần Văn Tuấn','luatsu33','7','1963-01-30','0876337232','uploads/team1.jpg'),(35,'Lê Đức Tú','luatsu34','1','1990-10-24','0351329593','uploads/team2.jpg'),(36,'Đinh Văn Khánh','luatsu35','4','1981-08-14','0957881212','uploads/team2.jpg'),(37,'Hoàng Thị Hà','luatsu36','6','1961-03-03','0511415453','uploads/team2.jpg'),(38,'Lê Anh Tuyên','luatsu37','4','1977-11-05','0831845745','uploads/team2.jpg'),(39,'Lê Thị Thắng','luatsu38','1','1960-05-10','0694273158','uploads/team2.jpg'),(40,'Phan Đình Quỳnh','luatsu39','7','1986-02-22','0945623398','uploads/team2.jpg'),(41,'Trần Đức Nga','luatsu40','7','1989-05-23','0963669586','uploads/team2.jpg'),(42,'Trần Đình Hà','luatsu41','1','1996-01-09','0687147236','uploads/team2.jpg'),(43,'Hoàng Đức Dũng','luatsu42','6','1969-10-01','0975497353','uploads/team2.jpg'),(44,'Phạm Đình Nga','luatsu43','9','1970-01-15','0663338189','uploads/team2.jpg'),(45,'Trần Văn Tuấn','luatsu44','6','1974-05-04','0477935789','uploads/team2.jpg'),(46,'Nguyễn Đình Quỳnh','luatsu45','2','1996-05-28','0118477247','uploads/team2.jpg'),(47,'Nguyễn Đình Tá','luatsu46','9','1968-06-25','0284747931','uploads/team2.jpg'),(48,'Nguyễn Văn Linh','luatsu47','1','1985-10-22','0923764422','uploads/team2.jpg'),(49,'Dương Thị Nga','luatsu48','6','1978-08-18','0546583481','uploads/team2.jpg'),(50,'Phan Đức Tuyên','luatsu49','7','1999-02-21','0219858593','uploads/team2.jpg'),(51,'Dương Đức Linh','luatsu50','9','1993-07-14','0296121969','uploads/team2.jpg'),(52,'Hoàng Anh Quỳnh','luatsu51','1','1966-07-01','0185121426','uploads/team2.jpg'),(53,'Nguyễn Văn Nga','luatsu52','1','1988-01-17','0723711484','uploads/team2.jpg'),(54,'Lê Anh Tuấn','luatsu53','8','1970-11-03','0885652319','uploads/team2.jpg'),(55,'Đinh Đức Nga','luatsu54','6','1997-08-05','0723399276','uploads/team2.jpg'),(56,'Phan Anh Đức','luatsu55','5','1963-08-02','0798759297','uploads/team2.jpg'),(57,'Hoàng Đình Tuấn','luatsu56','4','1980-04-10','0559628983','uploads/team2.jpg'),(58,'Trần Đình Thuỳ','luatsu57','8','1993-04-05','0642581842','uploads/team2.jpg'),(59,'Phan Thị Tú','luatsu58','3','1964-11-06','0265385648','uploads/team2.jpg'),(60,'Phan Đức Linh','luatsu59','3','1991-10-25','0738221546','uploads/team2.jpg'),(61,'Lê Văn Tuyên','luatsu60','7','1990-11-30','0923532266','uploads/team2.jpg'),(62,'Trần Anh Dũng','luatsu61','6','1984-04-14','0832121154','uploads/team2.jpg'),(63,'Đinh Thị Tá','luatsu62','4','1998-04-30','0797176442','uploads/team2.jpg'),(64,'Dương Thị Tá','luatsu63','3','1979-09-30','0331434656','uploads/team2.jpg'),(65,'Lê Anh Tú','luatsu64','6','1969-04-11','0316996865','uploads/team3.jpeg'),(66,'Đinh Đức Quỳnh','luatsu65','6','1968-07-16','0655351631','uploads/team3.jpeg'),(67,'Trần Văn Tuyên','luatsu66','7','1968-10-02','0977977651','uploads/team3.jpeg'),(68,'Dương Đức Linh','luatsu67','6','1978-01-09','0433417516','uploads/team3.jpeg'),(69,'Lê Đức Tuyên','luatsu68','9','1995-07-17','0485955789','uploads/team3.jpeg'),(70,'Phan Đình Nga','luatsu69','6','1960-09-19','0956185765','uploads/team3.jpeg'),(71,'Dương Đức Tuấn','luatsu70','2','1983-06-15','0168395329','uploads/team3.jpeg'),(72,'Phan Anh Quỳnh','luatsu71','8','1972-01-23','0497827623','uploads/team3.jpeg'),(73,'Nguyễn Thị Tá','luatsu72','5','1971-03-08','0221944917','uploads/team3.jpeg'),(74,'Lê Văn Thuỳ','luatsu73','6','1975-10-04','0254553977','uploads/team3.jpeg'),(75,'Phan Anh Thắng','luatsu74','4','1970-10-30','0857925559','uploads/team3.jpeg'),(76,'Đinh Văn Nga','luatsu75','4','1979-11-27','0448784327','uploads/team3.jpeg'),(77,'Hoàng Đình Thắng','luatsu76','1','1994-08-21','0149653132','uploads/team3.jpeg'),(78,'Nguyễn Đình Đức','luatsu77','3','1993-08-08','0949498613','uploads/team3.jpeg'),(79,'Phan Thị Khánh','luatsu78','4','1979-03-13','0195227188','uploads/team3.jpeg'),(80,'Phạm Thị Linh','luatsu79','3','1999-01-15','0425995228','uploads/team3.jpeg'),(81,'Phạm Anh Linh','luatsu80','8','1964-05-15','0885949856','uploads/team3.jpeg'),(82,'Lê Thị Khánh','luatsu81','2','1969-01-19','0915482648','uploads/team3.jpeg'),(83,'Phạm Văn Tuấn','luatsu82','8','1985-11-20','0997726228','uploads/team3.jpeg'),(84,'Đinh Anh Quỳnh','luatsu83','8','1976-11-02','0434352853','uploads/team3.jpeg'),(85,'Phạm Văn Khánh','luatsu84','7','1996-11-22','0169792632','uploads/team3.jpeg'),(86,'Phan Đình Nga','luatsu85','5','1968-09-03','0159197465','uploads/team3.jpeg'),(87,'Lê Anh Nga','luatsu86','4','1961-08-24','0671345672','uploads/team3.jpeg'),(88,'Lê Văn Tuyên','luatsu87','7','1965-05-24','0893914127','uploads/team3.jpeg'),(89,'Đinh Văn Quỳnh','luatsu88','2','1999-05-14','0416987944','uploads/team3.jpeg'),(90,'Nguyễn Đình Hà','luatsu89','1','1963-05-24','0911567126','uploads/team3.jpeg'),(91,'Hoàng Thị Tú','luatsu90','8','1994-09-13','0395855985','uploads/team3.jpeg'),(92,'Lê Văn Anh','luatsu91','7','1963-04-26','0977556763','uploads/team3.jpeg'),(93,'Phan Văn Hà','luatsu92','7','1965-04-07','0761833539','uploads/team3.jpeg'),(94,'Nguyễn Đình Đức','luatsu93','8','1961-10-08','0587372238','uploads/team3.jpeg'),(95,'Dương Đức Thắng','luatsu94','8','1965-05-03','0744445261','uploads/team3.jpeg'),(96,'Trần Đình Thuỳ','luatsu95','7','1961-09-21','0658145236','uploads/team4.jpeg'),(97,'Nguyễn Thị Quỳnh','luatsu96','4','1962-05-12','0635298278','uploads/team4.jpeg'),(98,'Đinh Thị Hà','luatsu97','6','1981-10-14','0755123139','uploads/team4.jpeg'),(99,'Lê Văn Quỳnh','luatsu98','4','1960-10-04','0215967924','uploads/team4.jpeg'),(100,'Phan Đình Đức','luatsu99','4','1998-05-26','0462522849','uploads/team4.jpeg');
/*!40000 ALTER TABLE `LuatSu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LuatSu_DichVu`
--

DROP TABLE IF EXISTS `LuatSu_DichVu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LuatSu_DichVu` (
  `id_LS_DV` int NOT NULL AUTO_INCREMENT,
  `id_LuatSu` int NOT NULL,
  `id_DichVu` int NOT NULL,
  PRIMARY KEY (`id_LS_DV`),
  KEY `id_LuatSu` (`id_LuatSu`),
  KEY `id_DichVu` (`id_DichVu`),
  CONSTRAINT `LuatSu_DichVu_ibfk_1` FOREIGN KEY (`id_LuatSu`) REFERENCES `LuatSu` (`id_LuatSu`),
  CONSTRAINT `LuatSu_DichVu_ibfk_2` FOREIGN KEY (`id_DichVu`) REFERENCES `DichVu` (`id_DichVu`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LuatSu_DichVu`
--

LOCK TABLES `LuatSu_DichVu` WRITE;
/*!40000 ALTER TABLE `LuatSu_DichVu` DISABLE KEYS */;
INSERT INTO `LuatSu_DichVu` VALUES (1,88,1),(2,30,4),(3,50,2),(4,53,3),(5,8,6),(6,87,2),(7,67,3),(8,91,2),(9,29,5),(10,54,6),(11,43,1),(12,75,2),(13,99,5),(14,12,3),(15,74,1),(16,86,5),(17,71,3),(18,44,6),(19,14,2),(20,92,3),(21,95,3),(22,74,4),(23,74,1),(24,71,1),(25,8,3),(26,40,1),(27,23,4),(28,82,5),(29,93,6),(30,81,2),(31,88,5),(32,69,2),(33,52,3),(34,53,3),(35,61,5),(36,30,3),(37,59,2),(38,67,1),(39,28,3),(40,65,3),(41,24,5),(42,6,4),(43,42,2),(44,2,2),(45,94,4),(46,72,4),(47,29,3),(48,83,4),(49,68,4),(50,80,3),(51,40,6),(52,80,3),(53,7,2),(54,97,1),(55,65,6),(56,25,1),(57,67,3),(58,59,2),(59,92,4),(60,76,5),(61,47,1),(62,8,1),(63,48,2),(64,29,1),(65,58,3),(66,67,1),(67,55,6),(68,79,1),(69,82,2),(70,33,4),(71,17,4),(72,27,5),(73,66,2),(74,20,4),(75,1,2),(76,51,5),(77,50,1),(78,59,6),(79,52,4),(80,80,1),(81,66,1),(82,64,3),(83,3,4),(84,29,3),(85,16,1),(86,24,5),(87,62,1),(88,32,6),(89,35,1),(90,33,5),(91,42,2),(92,61,3),(93,82,4),(94,3,6),(95,41,6),(96,4,5),(97,71,6),(98,75,2),(99,73,2),(100,4,3),(101,60,3),(102,11,6),(103,67,4),(104,78,2),(105,69,4),(106,66,5),(107,13,4),(108,68,2),(109,51,1),(110,2,4),(111,75,1),(112,87,2),(113,30,2),(114,25,4),(115,63,2),(116,92,5),(117,83,3),(118,29,5),(119,59,4),(120,61,3),(121,18,6),(122,9,5),(123,43,5),(124,31,2),(125,32,5),(126,90,1),(127,98,5),(128,79,4),(129,46,5),(130,53,6),(131,75,2),(132,8,5),(133,74,4),(134,78,3),(135,64,3),(136,35,2),(137,95,6),(138,81,5),(139,7,5),(140,96,1),(141,43,4),(142,53,6),(143,15,3),(144,81,6),(145,74,1),(146,67,3),(147,5,6),(148,34,5),(149,21,3),(150,59,6),(151,77,2),(152,99,2),(153,9,3),(154,32,3),(155,75,2),(156,95,6),(157,100,5),(158,7,2),(159,45,4),(160,92,3),(161,14,5),(162,23,5),(163,19,3),(164,25,1),(165,1,1),(166,65,2),(167,29,2),(168,36,3),(169,25,2),(170,100,5),(171,57,1),(172,30,1),(173,62,5),(174,77,6),(175,41,3),(176,32,4),(177,70,3),(178,24,6),(179,55,5),(180,60,1),(181,63,6),(182,9,6),(183,68,5),(184,34,6),(185,59,3),(186,91,3),(187,89,6),(188,100,5),(189,10,3),(190,73,3),(191,38,4),(192,14,2),(193,78,4),(194,2,1),(195,75,3),(196,14,4),(197,64,2),(198,68,1),(199,92,2),(200,3,1),(201,72,2),(202,84,6),(203,29,4),(204,21,1),(205,78,3),(206,75,4),(207,30,3),(208,29,5),(209,51,2),(210,42,2),(211,60,1),(212,41,1),(213,17,1),(214,75,4),(215,10,2),(216,69,4),(217,34,2),(218,56,5),(219,12,1),(220,62,4),(221,90,5),(222,22,5),(223,62,1),(224,53,4),(225,65,2),(226,87,3),(227,13,5),(228,66,4),(229,32,3),(230,4,1),(231,75,4),(232,14,6),(233,29,1),(234,66,4),(235,20,3),(236,65,2),(237,22,5),(238,78,2),(239,34,2),(240,28,6),(241,17,3),(242,93,1),(243,51,1),(244,20,6),(245,90,3),(246,85,3),(247,67,3),(248,20,5),(249,55,4),(250,49,4),(251,86,3),(252,22,1),(253,45,4),(254,59,1),(255,81,1),(256,97,4),(257,28,1),(258,61,2),(259,77,4),(260,23,6),(261,50,1),(262,88,6),(263,24,4),(264,15,2),(265,93,3),(266,77,3),(267,21,3),(268,99,3),(269,13,3),(270,55,6),(271,48,4),(272,54,5),(273,92,3),(274,61,1),(275,25,6),(276,67,2),(277,44,4),(278,25,6),(279,28,2),(280,52,1),(281,10,1),(282,76,3),(283,57,4),(284,60,2),(285,64,1),(286,63,4),(287,56,6),(288,46,5),(289,39,4),(290,53,6),(291,74,4),(292,44,4),(293,15,2),(294,80,5),(295,3,6),(296,63,1),(297,63,6),(298,55,1),(299,90,2),(300,73,5);
/*!40000 ALTER TABLE `LuatSu_DichVu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TinNhan`
--

DROP TABLE IF EXISTS `TinNhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TinNhan` (
  `id_TinNhan` int NOT NULL AUTO_INCREMENT,
  `NoiDung` varchar(500) NOT NULL,
  `id_TuVan` int DEFAULT NULL,
  `ThoiGian` datetime DEFAULT CURRENT_TIMESTAMP,
  `userSend` bit(1) NOT NULL,
  PRIMARY KEY (`id_TinNhan`),
  KEY `fk_TuVanTN` (`id_TuVan`),
  CONSTRAINT `fk_TuVanTN` FOREIGN KEY (`id_TuVan`) REFERENCES `TuVan` (`id_TuVan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TinNhan`
--

LOCK TABLES `TinNhan` WRITE;
/*!40000 ALTER TABLE `TinNhan` DISABLE KEYS */;
/*!40000 ALTER TABLE `TinNhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TuVan`
--

DROP TABLE IF EXISTS `TuVan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TuVan` (
  `id_TuVan` int NOT NULL AUTO_INCREMENT,
  `id_User` int DEFAULT NULL,
  `id_LuatSu` int DEFAULT NULL,
  `TrangThai` int DEFAULT '0',
  `ThoiGian` datetime DEFAULT CURRENT_TIMESTAMP,
  `ThoiLuong` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_TuVan`),
  KEY `fk_UserTV` (`id_User`),
  KEY `fk_LuatSuTV` (`id_LuatSu`),
  CONSTRAINT `fk_LuatSuTV` FOREIGN KEY (`id_LuatSu`) REFERENCES `LuatSu` (`id_LuatSu`),
  CONSTRAINT `fk_UserTV` FOREIGN KEY (`id_User`) REFERENCES `User` (`id_User`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TuVan`
--

LOCK TABLES `TuVan` WRITE;
/*!40000 ALTER TABLE `TuVan` DISABLE KEYS */;
INSERT INTO `TuVan` VALUES (1,1,30,0,'2021-06-12 23:37:49',15),(2,2,88,1,'2021-06-12 23:37:49',30),(3,1,53,0,'2021-06-13 08:35:52',30);
/*!40000 ALTER TABLE `TuVan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id_User` int NOT NULL AUTO_INCREMENT,
  `Ten` varchar(50) NOT NULL,
  `TaiKhoan` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `NgaySinh` date NOT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_User`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Lê Đình Quỳnh','taikhoan0','8','1987-10-26','0845966656',NULL),(2,'Hoàng Đình Anh','taikhoan1','1','1992-10-15','0756194575',NULL),(3,'Trần Đức Thuỳ','taikhoan2','9','1975-10-04','0624299393',NULL),(4,'Hoàng Văn Hà','taikhoan3','7','1960-10-24','0941183434',NULL),(5,'Phan Thị Tuyên','taikhoan4','2','1997-10-26','0914628698',NULL),(6,'Trần Thị Khánh','taikhoan5','4','1980-09-29','0612416439',NULL),(7,'Nguyễn Đình Tú','taikhoan6','9','1969-07-29','0686315596',NULL),(8,'Trần Anh Linh','taikhoan7','1','1961-09-04','0693117561',NULL),(9,'Dương Anh Linh','taikhoan8','9','1994-02-02','0261643568',NULL),(10,'Dương Đình Anh','taikhoan9','9','1996-08-01','0553722375',NULL),(11,'Nguyễn Đức Tú','taikhoan10','5','1983-04-23','0624423174',NULL),(12,'Trần Thị Tú','taikhoan11','6','1978-07-24','0379967129',NULL),(13,'Dương Văn Tú','taikhoan12','5','1977-02-18','0399686965',NULL),(14,'Lê Văn Thắng','taikhoan13','8','1997-06-22','0523949467',NULL),(15,'Trần Thị Tú','taikhoan14','6','1964-04-13','0624759956',NULL),(16,'Nguyễn Văn Hà','taikhoan15','6','1988-06-11','0323638767',NULL),(17,'Đinh Anh Đức','taikhoan16','3','1993-05-09','0528192946',NULL),(18,'Hoàng Văn Hà','taikhoan17','8','1984-09-28','0935876277',NULL),(19,'Lê Văn Nga','taikhoan18','1','1978-10-12','0575683633',NULL),(20,'Trần Văn Dũng','taikhoan19','1','1969-02-17','0454611819',NULL),(21,'Đinh Thị Quỳnh','taikhoan20','5','1999-02-03','0214626214',NULL),(22,'Phạm Văn Tuấn','taikhoan21','3','1969-07-06','0866752819',NULL),(23,'Phan Văn Tú','taikhoan22','4','1997-01-21','0252637135',NULL),(24,'Phan Đình Anh','taikhoan23','9','1992-03-23','0357615153',NULL),(25,'Nguyễn Đình Linh','taikhoan24','2','1970-05-14','0618384825',NULL),(26,'Phan Anh Việt','taikhoan25','5','1978-09-25','0787167513',NULL),(27,'Trần Thị Anh','taikhoan26','3','1994-01-14','0516527527',NULL),(28,'Hoàng Đức Hà','taikhoan27','6','1963-09-28','0623635237',NULL),(29,'Lê Đình Anh','taikhoan28','1','1968-04-22','0564925221',NULL),(30,'Trần Đình Khánh','taikhoan29','6','1969-09-01','0136764833',NULL),(31,'Nguyễn Đình Tá','taikhoan30','9','1961-01-13','0753822925',NULL),(32,'Dương Anh Khánh','taikhoan31','3','1967-05-02','0585624489',NULL),(33,'Trần Văn Linh','taikhoan32','9','1966-07-20','0159896148',NULL),(34,'Phan Đức Hà','taikhoan33','9','1974-09-22','0668934453',NULL),(35,'Nguyễn Đình Tú','taikhoan34','2','1960-09-12','0943325384',NULL),(36,'Nguyễn Đức Hà','taikhoan35','4','1999-06-19','0361197582',NULL),(37,'Đinh Anh Thắng','taikhoan36','8','1985-10-23','0431735377',NULL),(38,'Nguyễn Đức Tá','taikhoan37','5','1994-02-13','0824168716',NULL),(39,'Trần Thị Việt','taikhoan38','1','1969-01-09','0686114736',NULL),(40,'Hoàng Thị Khánh','taikhoan39','6','1981-06-04','0416396491',NULL),(41,'Dương Anh Thắng','taikhoan40','6','1980-08-16','0553438636',NULL),(42,'Phạm Văn Linh','taikhoan41','4','1967-01-30','0262119115',NULL),(43,'Lê Anh Linh','taikhoan42','2','1994-11-04','0176679676',NULL),(44,'Dương Anh Tú','taikhoan43','6','1968-05-07','0329486362',NULL),(45,'Phan Văn Đức','taikhoan44','9','1983-02-07','0213285648',NULL),(46,'Trần Văn Khánh','taikhoan45','4','1990-10-30','0952929572',NULL),(47,'Đinh Đức Tuyên','taikhoan46','6','1970-11-22','0793829156',NULL),(48,'Trần Thị Hà','taikhoan47','9','1995-06-17','0531348856',NULL),(49,'Phạm Văn Dũng','taikhoan48','1','1982-01-07','0597987985',NULL),(50,'Nguyễn Anh Linh','taikhoan49','9','1996-05-20','0129853479',NULL),(51,'Phan Đức Hà','taikhoan50','5','1988-11-18','0822616379',NULL),(52,'Hoàng Văn Đức','taikhoan51','9','1993-02-19','0488734977',NULL),(53,'Đinh Đình Đức','taikhoan52','3','1989-01-10','0616232649',NULL),(54,'Dương Anh Khánh','taikhoan53','3','1992-05-10','0125397192',NULL),(55,'Đinh Đức Hà','taikhoan54','7','1972-08-27','0545333931',NULL),(56,'Dương Thị Thắng','taikhoan55','6','1996-03-29','0836411535',NULL),(57,'Đinh Đức Quỳnh','taikhoan56','6','1960-10-03','0897855996',NULL),(58,'Hoàng Đình Anh','taikhoan57','3','1969-08-17','0764752336',NULL),(59,'Hoàng Anh Quỳnh','taikhoan58','9','1983-04-25','0358991334',NULL),(60,'Nguyễn Thị Anh','taikhoan59','6','1983-04-02','0851632974',NULL),(61,'Nguyễn Đức Quỳnh','taikhoan60','8','1997-06-24','0484437659',NULL),(62,'Trần Anh Khánh','taikhoan61','4','1966-10-16','0255636728',NULL),(63,'Lê Văn Tuấn','taikhoan62','9','1971-01-24','0916298485',NULL),(64,'Hoàng Đình Thắng','taikhoan63','7','1977-10-04','0899362783',NULL),(65,'Đinh Đình Tuyên','taikhoan64','3','1960-03-16','0568183611',NULL),(66,'Phạm Đức Dũng','taikhoan65','5','1976-05-03','0253853157',NULL),(67,'Trần Văn Tú','taikhoan66','5','1992-10-21','0892136153',NULL),(68,'Phạm Đức Thuỳ','taikhoan67','5','1974-02-06','0131868131',NULL),(69,'Trần Anh Anh','taikhoan68','4','1969-08-01','0473114567',NULL),(70,'Đinh Thị Tá','taikhoan69','1','1989-01-10','0295551619',NULL),(71,'Phạm Văn Việt','taikhoan70','1','1986-10-27','0925157896',NULL),(72,'Đinh Anh Nga','taikhoan71','2','1986-07-09','0786279546',NULL),(73,'Hoàng Đức Tuấn','taikhoan72','5','1986-02-14','0992111447',NULL),(74,'Đinh Thị Dũng','taikhoan73','4','1982-05-25','0523794755',NULL),(75,'Lê Đình Hà','taikhoan74','5','1969-03-07','0417854977',NULL),(76,'Phan Thị Linh','taikhoan75','4','1982-10-07','0789355716',NULL),(77,'Hoàng Thị Thuỳ','taikhoan76','7','1986-10-08','0564528834',NULL),(78,'Hoàng Anh Việt','taikhoan77','3','1975-06-03','0677951929',NULL),(79,'Đinh Đức Nga','taikhoan78','7','1987-04-14','0578544695',NULL),(80,'Trần Văn Dũng','taikhoan79','3','1975-01-26','0137345397',NULL),(81,'Trần Văn Tá','taikhoan80','5','1986-07-16','0615273897',NULL),(82,'Trần Anh Tuấn','taikhoan81','9','1995-01-27','0324241776',NULL),(83,'Dương Anh Anh','taikhoan82','8','1973-01-23','0656461966',NULL),(84,'Phạm Đình Việt','taikhoan83','5','1968-03-02','0138346862',NULL),(85,'Phạm Văn Đức','taikhoan84','6','1961-01-13','0745317346',NULL),(86,'Phan Đình Tuyên','taikhoan85','6','1984-05-07','0224611769',NULL),(87,'Hoàng Văn Thuỳ','taikhoan86','5','1996-07-18','0711149917',NULL),(88,'Lê Đức Thắng','taikhoan87','6','1984-01-22','0793388957',NULL),(89,'Nguyễn Văn Quỳnh','taikhoan88','9','1994-04-08','0884928856',NULL),(90,'Lê Đức Hà','taikhoan89','5','1994-11-17','0638864694',NULL),(91,'Dương Đức Tuấn','taikhoan90','2','1994-01-13','0949321932',NULL),(92,'Nguyễn Văn Tá','taikhoan91','3','1985-11-17','0153727347',NULL),(93,'Nguyễn Anh Thắng','taikhoan92','4','1965-08-24','0869768839',NULL),(94,'Hoàng Văn Hà','taikhoan93','1','1962-11-08','0978347667',NULL),(95,'Đinh Đức Thuỳ','taikhoan94','2','1974-01-21','0497892586',NULL),(96,'Lê Thị Dũng','taikhoan95','9','1987-04-22','0693546225',NULL),(97,'Hoàng Anh Linh','taikhoan96','7','1992-08-26','0763883499',NULL),(98,'Trần Đình Khánh','taikhoan97','9','1984-10-23','0978977561',NULL),(99,'Trần Đình Anh','taikhoan98','4','1977-08-08','0899223574',NULL),(100,'Phan Văn Việt','taikhoan99','3','1973-06-13','0387939868',NULL);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-13  8:52:09
