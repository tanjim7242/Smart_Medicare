# Host: localhost  (Version 5.5.5-10.1.35-MariaDB)
# Date: 2018-12-07 10:21:36
# Generator: MySQL-Front 6.0  (Build 3.3)


#
# Structure for table "category"
#

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `CategoryNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(45) NOT NULL DEFAULT '',
  `Description` varchar(150) NOT NULL DEFAULT '',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `catstatus` varchar(255) DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CategoryNo`),
  UNIQUE KEY `CategoryName` (`CategoryName`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "category"
#

INSERT INTO `category` VALUES (1,'Bags','All bags will belong to this category',1,'Active',NULL,NULL,NULL),(2,'table','sdfjhds',1,'Active',NULL,NULL,NULL),(3,'shdfkjsdhf','sdfsdf sdfsdf',1,'Active',NULL,NULL,NULL),(4,'dfdff','dfsdfsdfsdf',1,'0','a','2016-04-17',NULL),(5,'sdjlfsldjf','sdlkfsdkfl',1,'1','a','2016-04-17',NULL),(6,'dsf','sdlkfsdkfl',1,'1','a','2016-04-17',NULL),(8,'asff','dsfsdf',1,'1','a','2016-04-17',NULL),(10,'','',1,'1','a','2016-04-17',NULL);

#
# Structure for table "es_advice"
#

DROP TABLE IF EXISTS `es_advice`;
CREATE TABLE `es_advice` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorid` varchar(255) DEFAULT NULL,
  `advice` varchar(255) DEFAULT NULL,
  `appromentid` varchar(255) DEFAULT NULL,
  `patientid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

#
# Data for table "es_advice"
#

INSERT INTO `es_advice` VALUES (1,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','tttt','11','Nabila01'),(2,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','tttt','11','Nabila01'),(3,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','tttt','11','Nabila01'),(4,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','ttttuuu','11','Nabila01'),(5,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','ttttuuu','11','Nabila01'),(6,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','ttttuuu6666','11','Nabila01'),(7,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','ttttuuu6666','11','Nabila01'),(8,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','ttttuuu6666','11','Nabila01'),(9,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','7777','10','das1234555789'),(10,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','7777','10','das1234555789'),(11,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','7777','10','das1234555789'),(12,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','uuuu','10','das1234555789'),(13,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','6777','11','Nabila01'),(14,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','rrrrr','11','Nabila01'),(15,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','rrr','11','Nabila01'),(16,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','12','11','Nabila01'),(17,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','rrr','11','Nabila01'),(18,'6c3b0fc2-6552-40e3-9584-d7ee2101ff8e','tettt','12','Tawkir'),(19,'6c3b0fc2-6552-40e3-9584-d7ee2101ff8e','trtyty','12','Tawkir');

#
# Structure for table "es_approiment"
#

DROP TABLE IF EXISTS `es_approiment`;
CREATE TABLE `es_approiment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorid` varchar(255) DEFAULT NULL,
  `prisentid` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

#
# Data for table "es_approiment"
#

INSERT INTO `es_approiment` VALUES (1,NULL,NULL,'12','12',NULL,'Friday','chekeek',NULL),(2,NULL,NULL,'22','222',NULL,' Wednesday','2222',NULL),(3,NULL,NULL,'12','12',NULL,' Wednesday','2222',NULL),(4,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9',NULL,'12','222',NULL,' Trusday','233',NULL),(5,'ee7a99b4-0d47-4f06-8e0c-431b4c506700',NULL,'22','222',NULL,' Wednesday','chekeek','a'),(6,'ee7a99b4-0d47-4f06-8e0c-431b4c506700',NULL,'22','12',NULL,' Trusday','45','suman'),(7,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9',NULL,'12','222',NULL,'Friday','chekeek','Suman123'),(8,'d1f450d8-27be-4bee-a1ec-d5dc2b8b9495',NULL,'12','222',NULL,' Saturday','','paroma01'),(9,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9',NULL,'12','222',NULL,' Trusday','chekeek','Sarah011'),(10,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9',NULL,'22','222',NULL,' Monday','2222','das1234555789'),(11,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9',NULL,'12','12',NULL,'Friday','chekeek','Nabila01'),(12,'6c3b0fc2-6552-40e3-9584-d7ee2101ff8e',NULL,'12:00','2018-12-02',NULL,' Trusday','divorce','Tawkir');

#
# Structure for table "es_clinic"
#

DROP TABLE IF EXISTS `es_clinic`;
CREATE TABLE `es_clinic` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `homeadressone` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `cliRegNo` varchar(255) DEFAULT NULL,
  `thana` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `customerid` varchar(255) DEFAULT NULL,
  `actionuser` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

#
# Data for table "es_clinic"
#

INSERT INTO `es_clinic` VALUES (1,NULL,NULL,'Dhaka','Naogaon','Potnitoala','0177889',NULL,'1','a',NULL,'chakmuli',NULL),(2,NULL,NULL,'Dhaka','Naogaon','Potnitoala','0178888888',NULL,'1','a',NULL,'chakmuli',NULL),(3,NULL,'Naogaon','Potnitoala','chakmuli','1233','0177889',NULL,'1','a',NULL,NULL,NULL),(4,NULL,'Naogaon','Potnitoala',NULL,'chakmuli','0178888888',NULL,'1','a',NULL,'5444',NULL),(5,NULL,'Naogaon','Potnitoala',NULL,'chakmuli','0177889',NULL,'1','a',NULL,'1233',NULL),(6,NULL,'Naogaon','Potnitoala',NULL,'chakmuli','0178888888',NULL,'1','a',NULL,'123333','4'),(7,NULL,'Naogaon','Potnitoala',NULL,'chakmuli','0178888888',NULL,'1','a',NULL,'123333','4'),(8,NULL,'Naogaon','Potnitoala',NULL,'chakmuli','0177889',NULL,NULL,'1','a','123333','4'),(9,NULL,'Dhaka','Naogaon','1233','Potnitoala','0178888888',NULL,NULL,'1','a','chakmuli','4');

#
# Structure for table "es_customer"
#

DROP TABLE IF EXISTS `es_customer`;
CREATE TABLE `es_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `editedby` varchar(45) DEFAULT NULL,
  `createdate` varchar(45) DEFAULT NULL,
  `lasteditdate` varchar(45) DEFAULT NULL,
  `customer_identificationumber` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `bat_name` (`customer_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "es_customer"
#


#
# Structure for table "es_doctor"
#

DROP TABLE IF EXISTS `es_doctor`;
CREATE TABLE `es_doctor` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `BMDCRegNo` varchar(255) DEFAULT NULL,
  `descriptionprofessionalStatement` varchar(255) DEFAULT NULL,
  `degreeothespecification` varchar(255) DEFAULT NULL,
  `othertranning` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `doctorrid` varchar(255) DEFAULT NULL,
  `actionuser` varchar(255) DEFAULT NULL,
  `customerid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

#
# Data for table "es_doctor"
#

INSERT INTO `es_doctor` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,'Shekhar,Shekhar,Shekhar,Shekhar','das',' Male','das','1000:5b42403433323762623266:65b0e729c95e713bffe5d86ae0e78cefccc1f2ed3cd1bc46e00e290441ae126fbdf84267eb10e8643f5137553e6e33c9ccd0542a9b35887e921a44319537b7a0','sk@gmail.com','0177889','3',' Infertility','das','12345','esfrrr','ghttt','ttrrrr',NULL,NULL,NULL,'a','1'),(3,NULL,NULL,NULL,NULL,NULL,NULL,'sk@gmail.com','0177889','3',' Infertility','das','12345','esfrrr','ghttt','ttrrrr',NULL,NULL,NULL,'a','1'),(4,NULL,NULL,NULL,NULL,NULL,NULL,'sk@gmail.com','0177889','3',' Cardiology (Heart, Cardiac Surgery, Cardiovascular, Hypertension, Blood Pressure)','Test','123333','esfrrr','ghttt','ttrrrr',NULL,NULL,NULL,'a','1'),(5,NULL,NULL,NULL,NULL,NULL,NULL,'sk@gmail.com','0177889','3',' ENT (Ear, Nose &amp; Throat, Otorhinolaryngology)','dasssss','123333','esfrrr','ghttt','ttrrrr',NULL,NULL,NULL,'a','1'),(6,NULL,NULL,NULL,NULL,NULL,NULL,'sk@gmail.com','0178888888','3',' Gynaecologic Oncology (Cancer of Female Reproductive System)','doctor1','12345','esfrrr','ghttt','ttrrrr',NULL,NULL,NULL,'a','1'),(7,NULL,NULL,NULL,NULL,NULL,NULL,'sk@gmail.com','0178888888','3',' ENT (Ear, Nose &amp; Throat, Otorhinolaryngology)','MBBS','12334','ENT ','dhaka medical','oTher more taring',NULL,NULL,NULL,'a','1'),(8,NULL,NULL,NULL,NULL,NULL,NULL,'sk@gmail.com','0178888888','3',' Gynaecologic Oncology (Cancer of Female Reproductive System)','MBBS , FCPS','12345','I have been 5 years ','FCPS, JAPAN','Card',NULL,NULL,'b970477b-12c7-420e-bc4f-c536a4b58cb9','a','1'),(9,NULL,NULL,NULL,NULL,NULL,NULL,'sk@gmail.com','0178888888','3',' Gynaecologic Oncology (Cancer of Female Reproductive System)','MBBS , FCPS','12345','I have been 5 years ','FCPS, JAPAN','Card',NULL,NULL,'405010c2-0de1-4539-95b8-dca3d637e9d5','a','1'),(10,'Dr','S N Shekhar ','Das',NULL,NULL,NULL,'sk@gmail.com','0178888888','3',' Gynaecologic Oncology (Cancer of Female Reproductive System)','MBBS , FCPS','12345','I have been 5 years ','FCPS, JAPAN','Card',NULL,NULL,'ebd08b3c-4281-4f10-a917-a1277bdfe0cd','a','1'),(11,'Dr','S N Shekhar ','Das',NULL,NULL,NULL,'sk@gmail.com','0178888888','3',' Gynaecologic Oncology (Cancer of Female Reproductive System)','MBBS , FCPS','12345','I have been 5 years ','FCPS, JAPAN','Card',NULL,NULL,'ee7a99b4-0d47-4f06-8e0c-431b4c506700','a','1'),(12,'Dr','Suman','Kumar PK',NULL,NULL,NULL,'sn@gmail.com','0178888888','3',' nfectious Diseases','MBBS , FCPS','12345','I have been 5 years','dhaka medical','ttrrrr',NULL,NULL,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','e9d9e1b8-fd88-44df-b09d-db01450b7538','1'),(13,'Dr','Suman','Kumar PK',NULL,NULL,NULL,'sn@gmail.com','0178888888','3',' nfectious Diseases','MBBS , FCPS','12345','I have been 5 years','dhaka medical','ttrrrr',NULL,NULL,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','a','1'),(14,'Dr','Suman','Kumar PK',NULL,NULL,NULL,'sn@gmail.com','0178888888','3',' nfectious Diseases','MBBS , FCPS','12345','I have been 5 years','dhaka medical','ttrrrr',NULL,NULL,'ea9519f4-9e52-4fa8-aa4f-4bed170401ef','a','1'),(15,'Dr','Suman','Kumar PK',NULL,NULL,NULL,'sn@gmail.com','0178888888','3',' nfectious Diseases','MBBS , FCPS','12345','I have been 5 years','dhaka medical','ttrrrr',NULL,NULL,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','a','1'),(16,'Rasel','','Shikder',NULL,NULL,NULL,'raselshikder11@gmail.com','01857539420','3',' Medicine (All Diseases of Adults)','divorce','123','uttara','mbbs','fight',NULL,NULL,'6c3b0fc2-6552-40e3-9584-d7ee2101ff8e',NULL,'1');

#
# Structure for table "es_medicine"
#

DROP TABLE IF EXISTS `es_medicine`;
CREATE TABLE `es_medicine` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `medicine_type` varchar(255) DEFAULT NULL,
  `medicine_name` varchar(255) DEFAULT NULL,
  `medicine_mg` varchar(255) DEFAULT NULL,
  `medicine_dose` varchar(255) DEFAULT NULL,
  `medi_duration` varchar(255) DEFAULT NULL,
  `medi_comments` varchar(255) DEFAULT NULL,
  `doctorid` varchar(255) DEFAULT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `appromentid` varchar(255) DEFAULT NULL,
  `patientid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

#
# Data for table "es_medicine"
#

INSERT INTO `es_medicine` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'tab','napa','120gm','3','14','aftwr meal','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(3,'asd','asd','asd','asd','asdasd asd','asdasd asdasdasd asdasd','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(4,'sddd','dddd','rtt','tert','ytt','tttyy','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(5,'sddd','dddd','rtt','tert','ytt','tttyy','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(6,'tt','ttt','tttt','ttt','ttt','tt','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(7,'tt','ttt','tttt','ttt','ttt','tt','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(8,'tt','ttt','tttt','ttt','ttt','tt','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(9,'Tab','Napa','120gm','3time','7days','no comt','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(10,'Tab','Napa','120gm','3time','7days','no comt','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(11,'Tab','Napa','120gm','3time','7days','no comt','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(12,'Tab','Napa','120gm','3time','7days','no comt','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(13,'Tab','Napa','120gm','3time','7days','no comt','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(14,'Tab','Napauu','120gm','3time','7days','no comt','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(15,'Tab','Napauuuu','120gm','3time','7days','no comt','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(16,'tab','napa','120mg','3','7days','777','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(17,'tab','napa','120mg','3','7days','777','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(18,'tab','tab','44','444','44','444','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(19,'tab','tab','44','444','44','444','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(20,'tab','tab','44','444','44','444','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(21,'www','www','wwww','wwww','tttyyy','yyyy','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(22,'tab','ttt','ttt','uy','67','89','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(23,'Tab','Napa','560mg','2','12','555','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(24,'1111','444','4444','444','4','44444','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(25,'rr','rrr','rrr','rr','rr','rr','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(26,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,'ac0c6074-3622-4121-96fc-1aaf3c7746d1'),(27,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,'bbf4274c-0f90-4037-87c8-494f7e3e63b9'),(28,'tab','mmm','tt','uu','uu','uuu','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(29,NULL,NULL,NULL,NULL,'12','567',NULL,NULL,NULL,'585e25de-329f-4a8e-b771-4cf4d5e30b15'),(30,'Tab','Napa','12','12','12','12','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(31,'rr','rrr','rr','rr','r','rr','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','Nabila01','11',NULL),(32,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,'3dc430fd-0355-4938-85b4-19e728840b51'),(33,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,'6154320c-391e-4100-9137-da4f66bf28ad'),(34,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,'28ca263f-df5b-424c-92b7-0da5b27e33e1'),(35,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,'537e7a3b-6132-4b93-ae8b-ebad4449a21e'),(36,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,'9d1a8100-3f4b-4f3b-bef5-bd5736f63f02'),(37,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,'5162fe1d-a413-47b1-8f2e-ca1bafea840f'),(38,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,'7778936b-a148-421d-8d2f-99f7fa2ac14d'),(39,'rrr','ttt','ee','tt','ttt','ttt','6c3b0fc2-6552-40e3-9584-d7ee2101ff8e','Tawkir','12',NULL);

#
# Structure for table "es_patientother"
#

DROP TABLE IF EXISTS `es_patientother`;
CREATE TABLE `es_patientother` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_cc` varchar(255) DEFAULT NULL,
  `patient_wegit` varchar(255) DEFAULT NULL,
  `patient_bp` varchar(255) DEFAULT NULL,
  `patient_ex` varchar(255) DEFAULT NULL,
  `patient_pd` varchar(255) DEFAULT NULL,
  `patientid` varchar(255) DEFAULT NULL,
  `appromentid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

#
# Data for table "es_patientother"
#

INSERT INTO `es_patientother` VALUES (1,'120','50kg','120/180',NULL,NULL,'8a331cd4-dac2-41f8-991d-c032cb40d499',NULL),(2,'120','50kg','120/180',NULL,NULL,'650e4be2-813e-49d2-89b2-347c91d97682',NULL),(3,'120','50kg','120/180','1233','567','e07b1dce-5063-4133-ad8c-83e04dd8dfa3',NULL),(4,'120','50kg','120/180','1233','567','6781ef06-b6d7-410e-a828-04ec4b4fc5d3',NULL),(5,'120','50kg','120/180','1233','567','29ebbeb9-6e12-45f6-8134-8aec1f816c16',NULL),(6,'120','50kg','120/180','1233','567','6ed691cf-5aba-43b0-894d-a7b42334c082',NULL),(7,'120','50kg','120/180','1233','567','b839e8fd-9aa1-4c5d-9cfc-7170f2e707d7',NULL),(8,'','','','','','9ff106da-0e9a-4663-888f-3d8f6ad86a19',NULL),(9,'180','50KG','180/80','100','56','8f50b6da-4712-4b0b-b93a-bfea3a1794a1',NULL),(10,'122','22','222','222','222','d7eaf24f-6713-42dc-a1f1-82a76fd49f50',NULL),(11,'12','12','12','12','12','2bdaf42e-6604-4aa5-afc5-4df32cfda15d','11'),(12,'','','','','','ac0c6074-3622-4121-96fc-1aaf3c7746d1','11'),(13,'','','','','','bbf4274c-0f90-4037-87c8-494f7e3e63b9','11'),(14,'122','50kg','12','12','567','585e25de-329f-4a8e-b771-4cf4d5e30b15','11'),(15,'','','','','','3dc430fd-0355-4938-85b4-19e728840b51','11'),(16,'','','','','','6154320c-391e-4100-9137-da4f66bf28ad','11'),(17,'','','','','','28ca263f-df5b-424c-92b7-0da5b27e33e1','11'),(18,'','','','','','537e7a3b-6132-4b93-ae8b-ebad4449a21e','11'),(19,'','','','','','9d1a8100-3f4b-4f3b-bef5-bd5736f63f02','11'),(20,'','','','','','5162fe1d-a413-47b1-8f2e-ca1bafea840f','11'),(21,'','','','','','7778936b-a148-421d-8d2f-99f7fa2ac14d','11');

#
# Structure for table "es_pharmacy"
#

DROP TABLE IF EXISTS `es_pharmacy`;
CREATE TABLE `es_pharmacy` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `homeadressone` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `thana` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `customerid` varchar(255) DEFAULT NULL,
  `actionuser` varchar(255) DEFAULT NULL,
  `phyRegNo` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Data for table "es_pharmacy"
#

INSERT INTO `es_pharmacy` VALUES (1,NULL,NULL,'Dhaka','Potnitoala','chakmuli',NULL,'1','a',NULL,'Naogaon','0177889'),(2,NULL,'Dhaka','Naogaon','Potnitoala','chakmuli',NULL,NULL,'1','a','1234','0177889');

#
# Structure for table "es_sales_customer"
#

DROP TABLE IF EXISTS `es_sales_customer`;
CREATE TABLE `es_sales_customer` (
  `customer_id` varchar(11) NOT NULL DEFAULT '0',
  `customer_name` varchar(255) NOT NULL DEFAULT '',
  `customer_identificationumber` varchar(255) DEFAULT '',
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) NOT NULL DEFAULT '',
  `status` varchar(45) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `editedby` varchar(45) DEFAULT NULL,
  `createdate` varchar(45) DEFAULT NULL,
  `lasteditdate` varchar(45) DEFAULT NULL,
  `customertype` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "es_sales_customer"
#

INSERT INTO `es_sales_customer` VALUES ('1','Suman','01123','sumanpk@gmail.com','01711081630','01711081630','active',NULL,NULL,NULL,NULL,NULL,NULL,1),('1','sjkhkjsdfhskjdfhsjd','fhkhdf sjfhdsjkfhjdskfhjdskhf ','sjfdsfjs',NULL,'1243254345','active','suman',NULL,'2016-04-25 13:03:25',NULL,'Select','sdsjkjfhdsjfj sdfkj',2),('1','sdjf sjfkjsjl jsdfjsldf','lskdjf sdlfkjdslkf sldkfjlsdf','kdgjjlsfs',NULL,'017q3434','active','suman',NULL,'2016-04-25 13:14:54',NULL,'2','skjfjs sidjfsdkl',3),('1','kjshf dsfjkdfhjadkj','kdshfjakhdkjasd ','akjsdhaskdj',NULL,'1123234234','active','suman',NULL,'2016-04-25 13:32:56',NULL,'1','akjdhkjasd',8),('1','fdsfdsf','sdkfjhsjfdkh','s,dfnsdl,jf',NULL,'SDFSDF','active','suman',NULL,'2016-04-25 13:55:18',NULL,'1','dksjfhkdjsf',9),('1','adasd','asdds','asdasd',NULL,'asd','active','suman',NULL,'2016-04-25 13:59:56',NULL,'1','asdasd',10),('1','skdhsdkf','ksdfhdksjfh','sdkjfjdslf',NULL,'sfsdf','active','suman',NULL,'2016-04-25 14:02:59',NULL,'1','kjdsjnfljsdf',11),('1','skdhsdkf','ksdfhdksjfh','sdkjfjdslf',NULL,'sfsdf','active','suman',NULL,'2016-04-25 14:03:29',NULL,'1','kjdsjnfljsdf',12),('1','sldkfms;kdf','sldkfms;kdf','',NULL,'1234','active','suman',NULL,'2016-04-25 14:04:15',NULL,'none','s,dfnsdlfskdlfnsd',13),('1','sldkfms;kdf','sldkfms;kdf','',NULL,'1234','active','suman',NULL,'2016-04-25 14:05:15',NULL,'none','s,dfnsdlfskdlfnsd',14),('1','sjkdhfkjsdfhjdf','sdkjfklsdfjlksdf','slkfjsldfjsdklf',NULL,'kljsdhfkjsdhfkjsdfjkdsfjk','active','suman',NULL,'2016-04-25 14:08:19',NULL,'1','sdklfjklsdfj',15),('1','sjkdhfkjsdfhjdf','sdkjfklsdfjlksdf','slkfjsldfjsdklf',NULL,'kljsdhfkjsdhfkjsdfjkdsfjk','active','suman',NULL,'2016-04-25 14:10:06',NULL,'1','sdklfjklsdfj',16),('1','sjkdhfkjsdfhjdf','sdkjfklsdfjlksdf','slkfjsldfjsdklf',NULL,'kljsdhfkjsdhfkjsdfjkdsfjk','active','suman',NULL,'2016-04-25 14:10:42',NULL,'1','sdklfjklsdfj',17),('1','sjkdhfkjsdfhjdf','sdkjfklsdfjlksdf','slkfjsldfjsdklf',NULL,'kljsdhfkjsdhfkjsdfjkdsfjk','active','suman',NULL,'2016-04-25 14:12:57',NULL,'1','sdklfjklsdfj',18),('1','sjkdhfkjsdfhjdf','sdkjfklsdfjlksdf','slkfjsldfjsdklf',NULL,'kljsdhfkjsdhfkjsdfjkdsfjk','active','suman',NULL,'2016-04-25 14:14:16',NULL,'1','sdklfjklsdfj',19),('1','sjkdhfkjsdfhjdf','sdkjfklsdfjlksdf','slkfjsldfjsdklf',NULL,'kljsdhfkjsdhfkjsdfjkdsfjk','active','suman',NULL,'2016-04-25 14:18:10',NULL,'1','sdklfjklsdfj',20),('1','sjkdhfkjsdfhjdf','sdkjfklsdfjlksdf','slkfjsldfjsdklf',NULL,'kljsdhfkjsdhfkjsdfjkdsfjk','active','suman',NULL,'2016-04-25 14:21:51',NULL,'1','sdklfjklsdfj',21),('1','sjkdhfkjsdfhjdf','sdkjfklsdfjlksdf','slkfjsldfjsdklf',NULL,'kljsdhfkjsdhfkjsdfjkdsfjk','active','suman',NULL,'2016-04-25 14:22:29',NULL,'1','sdklfjklsdfj',22),('1','sjkdhfkjsdfhjdf','sdkjfklsdfjlksdf','slkfjsldfjsdklf',NULL,'kljsdhfkjsdhfkjsdfjkdsfjk','active','suman',NULL,'2016-04-25 14:24:09',NULL,'1','sdklfjklsdfj',23),('1','lkjklj jlmkljk kl\'lk','lknkl nklk klnkl','klmkk',NULL,'0123','active','suman',NULL,'2016-04-25 14:34:53',NULL,'1','lknklnk lnk',24),('1','lkjklj jlmkljk kl\'lk','lknkl nklk klnkl','klmkk',NULL,'0123','active','suman',NULL,'2016-04-25 14:44:07',NULL,'1','lknklnk lnk',25),('1','lkjklj jlmkljk kl\'lk','lknkl nklk klnkl','klmkk',NULL,'0123','active','suman',NULL,'2016-04-25 14:45:50',NULL,'1','lknklnk lnk',26),('1','lkjklj jlmkljk kl\'lk','lknkl nklk klnkl','klmkk',NULL,'0123','active','suman',NULL,'2016-04-25 14:46:59',NULL,'1','lknklnk lnk',27),('1','asfdfdsf','sdfsdfsdf','fdafdf',NULL,'adfaf','active','suman',NULL,'2016-04-25 14:49:24',NULL,'1','dfssdf',28),('1','skhf sfjhs fjhs dfjh dsfjsdhf jdsfhjds','hsf sdfjhds fjdshf jjsd fdsjfh dsjsfdkjfkj jksdhfjkdsf','jshf sdfjdhf jsdhf',NULL,'987654','active','suman',NULL,'2016-04-25 14:54:26',NULL,'2','jsdfhds fjdshfds djskhfds',29);

#
# Structure for table "es_test"
#

DROP TABLE IF EXISTS `es_test`;
CREATE TABLE `es_test` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorid` varchar(255) DEFAULT NULL,
  `test` varchar(255) DEFAULT NULL,
  `testdis` varchar(255) DEFAULT NULL,
  `appromentid` varchar(255) DEFAULT NULL,
  `patientid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

#
# Data for table "es_test"
#

INSERT INTO `es_test` VALUES (1,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','rr','rr','11','Nabila01'),(2,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','rr','rr','11','Nabila01'),(3,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','rr','rr','11','Nabila01'),(4,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','tttt','tt','11','Nabila01'),(5,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','tttt666','tt666','11','Nabila01'),(6,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','tttt666','tt666','11','Nabila01'),(7,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','dass','tesrr','10','das1234555789'),(8,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','imr','rrr','11','Nabila01'),(9,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','drr','rrr','11','Nabila01'),(10,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','imr','rrrr','11','Nabila01'),(11,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','12','12','11','Nabila01'),(12,'da1eb7d2-a16f-4a83-92e0-0bbef6f412d9','rrr','rrr','11','Nabila01'),(13,'6c3b0fc2-6552-40e3-9584-d7ee2101ff8e','rtt','ttt','12','Tawkir');

#
# Structure for table "es_users"
#

DROP TABLE IF EXISTS `es_users`;
CREATE TABLE `es_users` (
  `uuid` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `bat_id` varchar(45) DEFAULT NULL,
  `phoneno` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `comp_no` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `lasteditby` varchar(255) DEFAULT NULL,
  `lasteditdate` varchar(255) DEFAULT NULL,
  `homeadressone` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `thana` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `qrcode` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `actionuser` varchar(255) DEFAULT NULL,
  `customerid` varchar(255) DEFAULT NULL,
  `doctorrid` varchar(255) DEFAULT NULL,
  `patientuid` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "es_users"
#

INSERT INTO `es_users` VALUES (3,'sa','as','as','admin','1000:5b424066613665353934:812a6c6aea3ce9a678e','14','015454','1',NULL,NULL,NULL,NULL,'admin','2016-02-06 12:16:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'ds','','','hquser','1234','1','ds','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'ashik','tes','tets','batuser','1000:5b424066313966303664:a79c94bfd91e04271c1','1','017421005454','2',NULL,'bat',NULL,NULL,'admin','2016-02-26 18:01:26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'swefrwe','sdfsd','sdfsd','sdfsdf','1000:5b42403233356566356161:c41752518802c024b','10','34534656','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'test1345','test1345','test1345','test1345','test1345','9','','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'test1235','test1235','test1235','test1235','1000:5b42403731353335636336:18ab7bb4f4f3f19c1','17','test1235','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'administrator','admin','admin','administrator','1000:5b42403138656339393034:29b4f2973077a75c7','17','','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'sljfnhsdjfjkdsfhsdf','klsdjfklsdfj','skdlfjldsjldafjkl','jayauditor','1000:5b42403431336364626466:aeedbb0dcf035841c','61','3565656','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'test1_update1','test2_update','test3_update','test3_Update','1000:5b42403535626464666533:2abc637cba537bae3','14','3565654654_update','3',NULL,NULL,NULL,NULL,'admin','2016-02-26 18:02:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Das','Shekhar','S N','das','jhasdfkjsdf',NULL,'0177888144','2','sndasnsu@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'Dhaka','Dhaka','Dhaka',NULL,'12','Dhaka',NULL,NULL,'a','1',NULL,NULL,NULL),(13,'Das','Shekhar','S N','das12','@53620779tapuDas',NULL,'0177888144','2','sndasnsu@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'Dhaka','Dhaka','Dhaka',NULL,'12','Dhaka',NULL,NULL,'a','1',NULL,NULL,NULL),(14,'Das','Shekhar','S N','das1234','1000:5b42403462323561633161:1bcf57b81298f6a0f',NULL,'0177888144','2','sndasnsu@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'Dhaka','Dhaka','Dhaka',NULL,'12','Dhaka',NULL,NULL,'a','1',NULL,NULL,NULL),(16,'Das','Shekhar','S N','das45','1000:5b42403336633365316334:a7f3e1ea11f044b48',NULL,'0177888144','2','sndasnsu@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'Dhaka','Dhaka','Dhaka',NULL,'12','Dhaka',NULL,NULL,'a','1',NULL,NULL,NULL),(18,'S N','Shekhar','Das','tapu','1000:5b42403434653534396639:fb8166088fc7af36e',NULL,'01788881844','2','sndas730@gmail.com',NULL,NULL,NULL,NULL,NULL,'naogaon','potitola','chakmuli',NULL,NULL,'12',NULL,NULL,NULL,'a','1',NULL,NULL,NULL),(19,'S N','Shekhar','das','das12345','1000:5b42403363623864383961:594badf9244d27f3c',NULL,'0177889','2','sn@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'Dhaka','Naogaon','Potnitoala',NULL,'12','chakmuli',NULL,'1',NULL,'a',NULL,NULL,NULL),(21,NULL,'Shekha,Das','Tapu','das1','1000:5b42403330653733613363:5e98a4eabc76a9928',NULL,'0177889','3','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' Male',NULL,NULL,NULL,NULL,'a','1',NULL,NULL,NULL),(22,NULL,'Shekhar,Shekhar','das','tapu1','1000:5b42403236326137396164:e35438b2ec3edf778',NULL,'0177889','3','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' Male',NULL,NULL,NULL,NULL,'a','1',NULL,NULL,NULL),(23,'S N','Shekhar','das','phy1234','1000:5b42403738383834633533:3c6dc653aa2a6139d',NULL,'0177889','2','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'Dhaka','Naogaon','Potnitoala',NULL,NULL,'chakmuli',NULL,'1',NULL,'a',NULL,NULL,NULL),(24,'S N','Shekhar','das','phy2','1000:5b42403732643032636465:d6696b3124c681036',NULL,'0178888888','2','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'Dhaka','Naogaon','Potnitoala',NULL,NULL,'chakmuli',NULL,'1',NULL,'a',NULL,NULL,NULL),(25,'S N','Shekhar','das','das9','1000:5b42403663343335376137:cab7b3de3d36815a9',NULL,'0177889','4','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'a',NULL,NULL,NULL),(27,'S N','Shekhar','das','phy13','1000:5b42403539303538616635:d35fdeaa9c5f47ed7',NULL,'0177889','4','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'a',NULL,NULL,NULL),(28,'S N','Shekhar','das','phy134','1000:5b42403761343134643361:15a409f75112c7db3',NULL,'0177889','4','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'a',NULL,NULL,NULL),(29,'S N','Shekhar','das','phy1345','1000:5b424034313836643666:5ba99d3739e15d8c994',NULL,'0177889','4','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'a',NULL,NULL,NULL),(30,'S N','Das','das','cli1','1000:5b42403465366561613932:25a4edae42ff6195e',NULL,'0177889','4','sn@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'a',NULL,NULL,NULL),(31,'S N','Shekhar','das','cli2','1000:5b42403531313964373763:0cd023d51d242b604',NULL,'0177889','4','sn@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'a',NULL,NULL,NULL),(32,'S N','Das','Tapu','cli223','1000:5b42403531643537396363:af5a2557aa925bc2f',NULL,'0178888888','4','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'a',NULL,NULL,NULL),(33,'S N','Shekhar','Tapu','das123456','1000:5b42403539353137613265:15e9f10cc8b6ecb41',NULL,'0177889','4','sn@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'a',NULL,NULL,NULL),(34,'S N','Das','das','das1234567','1000:5b42403331356563616366:dd7ab905628dc2353',NULL,'0178888888','4','sn@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'a',NULL,NULL,NULL),(35,'S N','Shekhar','das','das12345u','1000:5b42403438303339393536:2eb8055b623f280f5',NULL,'0177889','4','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'a',NULL,NULL,NULL),(36,'S N','Shekhar','Tapu','das1234588','1000:5b42403563333735373038:1e429181767dbe6df',NULL,'0177889','3','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' Others',NULL,NULL,NULL,NULL,'a','1',NULL,NULL,NULL),(37,'S N','Shekhar','das','das123458','1000:5b424038626539366639:763cd58433c15060529',NULL,'0178888888','4','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'a',NULL,NULL,NULL),(38,'S N','Shekhar','das','cli228','1000:5b42403763326562383039:4700ca74f41965042',NULL,'0178888888','4','s.n.shekhardastapu@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'a',NULL,NULL,NULL),(39,'S N','Das','das','das1234555','1000:5b4240656439303034:2ee52dd74bcd26432ee8f',NULL,'0178888888','4','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'a',NULL,NULL,NULL),(40,'S N','Shekhar','Tapu','das123459','1000:5b42403239393161356633:66b2d543fbb1f89e1',NULL,'0178888888','4','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'a',NULL,NULL,NULL),(41,'S N','Shekhar','das','das123454','1000:5b42403336626230653030:91957f76d3862601b',NULL,'0177889','4','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a','1',NULL,NULL,NULL),(42,'S N','Shekhar','das','das1234501','1000:5b42403430383865643536:f846da86127bd5409',NULL,'0178888888','4','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a','1',NULL,NULL,NULL),(43,'S N','Shekhar','Tapu','das1234556','1000:5b42403337616536393237:e44122c1a733c1088',NULL,'0177889','4','s.n.shekhardastapu@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a','1',NULL,NULL,NULL),(44,'S N','Shekhar','das','doctor1','1000:5b42403665306164666633:c7aa0940859ccd5a7',NULL,'0178888888','3','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' female',NULL,NULL,NULL,NULL,'a','1',NULL,NULL,NULL),(45,'S N','Shekhar ','Das','sndasnsu','1000:5b42403231303866346266:122eeeb8f98ce00b2',NULL,'01778881844','2','snnsu@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala',NULL,'12/1/1995','Chakmuli',NULL,'1',NULL,'a',NULL,NULL,NULL),(46,'S N','Shekhar','das','das1234590','1000:5b42403265666266623032:cd8f1c87dcfdca275',NULL,'0178888888','2','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala',NULL,'12/1/1995','chakmuli',NULL,'1',NULL,'a',NULL,NULL,NULL),(47,'S N','Shekhar','das','das12345909','1000:5b42403436386131383633:b6bd30f1d40af0751',NULL,'0178888888','2','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',NULL,'12/1/1995',NULL,'1',NULL,NULL,'a',NULL,NULL,NULL),(48,'S N','Shekhar','das','das123459090','1000:5b42403766306639346264:a904f461dc2aed739',NULL,'0178888888','2','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',NULL,'12/1/1995',NULL,'1',NULL,NULL,'a',NULL,NULL,NULL),(49,'S N','Shekhar','das','das1234590901','1000:5b42403366323464313038:5562691b7052c1375',NULL,'0178888888','2','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',NULL,'12/1/1995',NULL,'1',NULL,NULL,'a',NULL,NULL,NULL),(50,'S N','Shekhar','das','das12345909012','1000:5b42403164336430656265:7bcfae43d73da293c',NULL,'0178888888','2','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',NULL,'12/1/1995',NULL,'1',NULL,NULL,'a',NULL,NULL,NULL),(51,'S N','Shekhar','das','das123459090125','1000:5b42403234383932656566:dee3007535cc084af',NULL,'0178888888','2','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',' female','12/1/1995',NULL,'1',NULL,NULL,'a',NULL,NULL,NULL),(52,'S N','Shekhar','das','das1234590901257','1000:5b424032666230623462:9fb818ef94b0801dc31',NULL,'0178888888','2','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',' Male','12/1/1995',NULL,'1',NULL,NULL,'a',NULL,NULL,NULL),(53,'S N ','Shekhar ','Das','doctor2','1000:5b424035663263613662:0ee29011f95fee2990f',NULL,'0178888888','3','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' Male',NULL,NULL,NULL,NULL,'a','1',NULL,NULL,NULL),(54,'Dr','Das','Shekhar','dr12345','1000:5b42403235653761393633:b763daa48dcf49c22',NULL,'0178888888','3','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' Male',NULL,NULL,NULL,NULL,'a','1',NULL,NULL,NULL),(55,'Dr','Das','Shekhar','dr123455','1000:5b42403330343737633230:ffa61bf7e73b712f8',NULL,'0178888888','3','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' Male',NULL,NULL,NULL,NULL,'a','1','405010c2-0de1-4539-95b8-dca3d637e9d5',NULL,NULL),(56,'Dr','S N Shekhar ','Das','dr1234555','1000:5b42403531373663393762:396cb77b0306b98f6',NULL,'0178888888','3','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' Male',NULL,NULL,NULL,NULL,'a','1','ebd08b3c-4281-4f10-a917-a1277bdfe0cd',NULL,NULL),(57,'Dr','S N Shekhar ','Das','dr12345556','1000:5b424038396533303639:a815fc85bed1205fc9f',NULL,'0178888888','3','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' Male',NULL,NULL,NULL,NULL,'a','1','ee7a99b4-0d47-4f06-8e0c-431b4c506700',NULL,NULL),(58,'S N','Shekhar','Tapu','das109','1000:5b42403237623936633061:d886130d0635c10f5',NULL,'0177889','2','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',' female','12/1/1995',NULL,'1',NULL,NULL,'a',NULL,NULL,NULL),(59,'S N','Shekhar','Das','das12345674','1000:5b42403437326465353338:60d530c7303828cce',NULL,'01778881844','2','sn@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',' Male','12/1/1995',NULL,'1',NULL,NULL,'26707b6d-d011-44f0-a1b6-45b4fb6ab16a',NULL,NULL,NULL),(60,'tapu','Shekhar','Das','das123456748','1000:5b42403364633835666137:d120ea92f2e2dde7e',NULL,'01778881844','2','sn@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',' Male','12/1/1995',NULL,'1',NULL,NULL,'ba3be41b-3a21-4031-8683-36e0654c1809',NULL,NULL,NULL),(61,'S N','Shekhar','Tapu','das12345098','1000:5b42403536653162303931:834833e1273c5ac6b',NULL,'0178888888','2','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',' Male','12/1/1995',NULL,'1',NULL,NULL,'6355ff37-d84d-4703-a1d8-573364addedf',NULL,NULL,NULL),(62,'Dr','Suman','Kumar PK','Suman123','1000:5b42403766646238343065:0488747cbcea62083',NULL,'0178888888','3','sn@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' Male',NULL,NULL,NULL,NULL,'e9d9e1b8-fd88-44df-b09d-db01450b7538','1','a',NULL,NULL),(63,'Dr','Suman','Kumar PK','Suman1234','1000:5b42403439643334343435:6cc8a4f52587cac75',NULL,'0178888888','3','sn@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' Male',NULL,NULL,NULL,NULL,'a','1','d1f450d8-27be-4bee-a1ec-d5dc2b8b9495',NULL,NULL),(65,'Dr','Suman','Kumar PK','suman123456','1000:5b42403433613266333862:4430a43a844ff0cad',NULL,'01778881844','2','sn@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',' Male','12/1/1995',NULL,'1',NULL,NULL,'e058a11b-ce1b-40f6-a682-e625b0c4546f',NULL,NULL,NULL),(66,'Dr','Suman','Kumar PK','Suman1234uii','1000:5b42403432646665633331:10e5d9ec0afda40c4',NULL,'0178888888','3','sn@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' Male',NULL,NULL,NULL,NULL,'a','1','ea9519f4-9e52-4fa8-aa4f-4bed170401ef',NULL,NULL),(67,'Dr','Suman','Kumar PK','Suman0900','1000:5b42403262616666326334:ef4d76a18ed1af6d1',NULL,'0178888888','3','sn@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' Male',NULL,NULL,NULL,NULL,'a','1','da1eb7d2-a16f-4a83-92e0-0bbef6f412d9',NULL,NULL),(68,'Dr','Paroma','Mondal','paroma01','1000:5b42403533363563346439:c97fef1ca7227d73e',NULL,'01778881844','2','s.n.shekhardastapu@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',' female','12/1/1996',NULL,'1',NULL,NULL,'9bfa377d-b7e1-4ab8-a93b-26281dbc1a7b',NULL,NULL,NULL),(69,'Dr','Paroma','Mondal','paroma001','1000:5b424037323563643466:ff708361d28dc5bb2b0',NULL,'01778881844','2','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',' female','12/1/1996',NULL,'1',NULL,NULL,'89d03c73-7577-4ddb-ae6f-74b41ef511a0',NULL,NULL,NULL),(70,'Dr','Paroma','Mondal','paroma0011','1000:5b42403236386536373732:715060baaab5311d2',NULL,'01778881844','2','sk@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',' female','12/1/1996',NULL,'1',NULL,NULL,'9e1c3977-dbc2-4368-9ff9-2a03b1b13466',NULL,NULL,NULL),(71,'Dr','Sarah ','Abdullah ','Sarah011','1000:5b42403263336533373039:ef624d952c1dfabb8',NULL,'01778881844','2','s.n.shekhardastapu@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','Chakmuli',' female','12/1/1996',NULL,'1',NULL,NULL,'a9bd7034-785b-4e13-9b0c-cf3688228f11',NULL,NULL,NULL),(73,'S N','Shekhar','Das','das1234555789','1000:5b42403133386332396336:2ab29a7b30564fa91',NULL,'01778881844','2','snnsu@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',' Male','12/1/1996',NULL,'1',NULL,NULL,'ee188446-869e-4c81-9721-311bccd1d6b2',NULL,NULL,NULL),(74,'Dr','Nabila','Nitu','Nabila01','1000:5b42403366316438623838:88cf8f143cb3ff95a',NULL,'0178888888','2','s.n.shekhardastapu@gmail.com',NULL,NULL,NULL,NULL,NULL,'Bashundhara R/A , Dhaka','Naogaon','Potnitoala','chakmuli',' female','12/1/1996',NULL,'1',NULL,NULL,'5e20d596-566f-457b-a7d6-3c432673e8eb',NULL,NULL,'18'),(76,'Rasel','','Shikder','rasel','1000:5b42403332323534373663:73496c61e29bd2197',NULL,'01857539420','3','raselshikder11@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' Male',NULL,NULL,NULL,NULL,NULL,'1','6c3b0fc2-6552-40e3-9584-d7ee2101ff8e',NULL,NULL),(77,'Shah','Tawkir','Nesar','Tawkir','1000:5b42403137316266386462:a3d95fd8dbc4a0289',NULL,'01763725322','2','tawkir.nesar@gmail.com',NULL,NULL,NULL,NULL,NULL,'23/4 Mirpur','Dhaka','Mirpur','1216',' Male','1994-06-06',NULL,'1',NULL,NULL,'713546cc-1dfb-4da1-9200-778cd63c365a',NULL,NULL,'24');

#
# Structure for table "product"
#

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `ProductNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProductCode` varchar(45) NOT NULL DEFAULT '',
  `Description` varchar(200) NOT NULL DEFAULT '',
  `Barcode` varchar(50) NOT NULL DEFAULT '',
  `UnitPrice` double NOT NULL DEFAULT '0',
  `StocksOnHand` int(10) unsigned NOT NULL DEFAULT '0',
  `CategoryNo` int(10) unsigned NOT NULL DEFAULT '0',
  `supplieruid` varchar(255) DEFAULT '',
  `warrenty` varchar(255) DEFAULT NULL,
  `createby` varchar(255) DEFAULT NULL,
  `createdate` varchar(255) DEFAULT NULL,
  `customerid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProductNo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "product"
#

INSERT INTO `product` VALUES (1,'PBag','Pack Bag Jansport Large','110',1500,20,1,'',NULL,NULL,NULL,NULL),(2,'','','',0,10,1,'',NULL,NULL,NULL,NULL),(3,'','','',0,0,1,'',NULL,NULL,NULL,NULL),(4,'SDDF','sd','adsfd',12334,20,1,'',NULL,NULL,NULL,NULL),(5,'dcad','asdasd,asdasd','qc',0,0,0,NULL,'asdasd','a','2016-04-17 17:52:52','1'),(6,'s;f',';fg,df;gfld;',';sfg',0,10,5,NULL,'dflgdf;l','a','2016-04-17 17:54:23','1'),(7,'dsad','asa,13434','sdd',34,175,5,NULL,'czxczxc','a','2016-04-17 17:55:56','1'),(8,'sjfgjldsf','lsdjldsf,ldgjdslfk','sdjfjlsd',0,0,5,NULL,'sdkjfdsjlf','a','2016-04-17 17:58:53','1');

#
# Structure for table "stockin"
#

DROP TABLE IF EXISTS `stockin`;
CREATE TABLE `stockin` (
  `StockInNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProductNo` int(10) unsigned NOT NULL DEFAULT '0',
  `Quantity` double NOT NULL DEFAULT '0',
  `DateIn` varchar(45) NOT NULL DEFAULT '',
  `createdby` varchar(255) DEFAULT NULL,
  `productcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`StockInNo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "stockin"
#

INSERT INTO `stockin` VALUES (1,1,20,'12/31/2013',NULL,NULL),(2,2,10,'04/12/2016',NULL,NULL),(3,3,0,'04/13/2016',NULL,NULL),(4,4,10,'04/13/2016',NULL,NULL),(5,4,10,'04/13/2016',NULL,NULL),(6,7,10,'2016-04-18 17:20:32','suman','dsad'),(7,7,100,'2016-04-18 17:20:46','suman','dsad'),(8,6,10,'2016-04-18 17:22:27','suman','s;f'),(9,7,10,'2016-04-18 19:15:53','suman','dsad'),(10,7,10,'2016-04-21 10:41:11','suman','dsad');

#
# Structure for table "transactiondetails"
#

DROP TABLE IF EXISTS `transactiondetails`;
CREATE TABLE `transactiondetails` (
  `TDetailNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `InvoiceNo` varchar(50) NOT NULL DEFAULT '',
  `ProductNo` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemPrice` double NOT NULL DEFAULT '0',
  `Quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `Discount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`TDetailNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "transactiondetails"
#


#
# Structure for table "userrole"
#

DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_id` (`role_id`,`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "userrole"
#

INSERT INTO `userrole` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_PATIENT'),(3,'ROLE_DOCTOR'),(4,'ROLE_PHARMACY'),(5,'ROLE_CLINIC');

#
# Structure for table "vatsetting"
#

DROP TABLE IF EXISTS `vatsetting`;
CREATE TABLE `vatsetting` (
  `VatNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `VatPercent` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`VatNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "vatsetting"
#


#
# Procedure "Create_Advice_Registation"
#

DROP PROCEDURE IF EXISTS `Create_Advice_Registation`;
CREATE PROCEDURE `Create_Advice_Registation`(

adviceval varchar(255),
appromentidval varchar(255),
doctoridval varchar(255),
patientidval varchar(255))
BEGIN

INSERT INTO es_advice( advice,appromentid,doctorid,patientid) 
values(adviceval,appromentidval,doctoridval,patientidval);
   
    
END;

#
# Procedure "Create_Clinic_Registation"
#

DROP PROCEDURE IF EXISTS `Create_Clinic_Registation`;
CREATE PROCEDURE `Create_Clinic_Registation`( 
firstNameval varchar(255), 
middleNameval varchar(255),
lastNameval varchar(255),
genderval varchar(255),
userNameval varchar(255),
passwordval varchar(255),
emailval varchar(255),
phoneval varchar(255),
homeadressoneval varchar(255),
districtval varchar(255),
thanaval varchar(255),
postval varchar(255),
phyRegNoval varchar(255),


qrcodeval varchar(255),
created_byval  varchar(255),
create_dateval varchar(255),
customeridval varchar(255),

actionuserval varchar(255))
BEGIN

 
  INSERT INTO es_users (first_name,middle_name,last_name,gender,username,password,email,phoneno,type,
created_by,create_date,customerid,actionuser) 


values(firstNameval,middleNameval,lastNameval,genderval,userNameval,passwordval,emailval,phoneval,'4',
created_byval,create_dateval,customeridval,actionuserval);
    
 
 
INSERT INTO es_clinic (homeadressone,district,thana,post,cliRegNo,phoneno,type,created_by,create_date,customerid,actionuser) 


values(homeadressoneval,districtval,thanaval,postval,phyRegNoval,phoneval,'4',created_byval,create_dateval,customeridval,actionuserval);
    
END;

#
# Procedure "Create_Customer"
#

DROP PROCEDURE IF EXISTS `Create_Customer`;
CREATE PROCEDURE `Create_Customer`( mobilenoval varchar(255), customernameval varchar(100),
customeridentificationno varchar(500),
customeraddressval varchar(500),
customeremail varchar(100),
customertypeval varchar(100),
cid varchar(255),actionuser varchar(255))
BEGIN

INSERT INTO es_sales_customer (customer_name,customer_identificationumber,email,mobile,status,createdby,createdate,customertype,address,customer_id) 
values(customernameval,customeridentificationno,customeremail,mobilenoval,'active',actionuser,now(),customertypeval,customeraddressval,cid);
    
END;

#
# Procedure "Create_Doctor_Registation"
#

DROP PROCEDURE IF EXISTS `Create_Doctor_Registation`;
CREATE PROCEDURE `Create_Doctor_Registation`( 
firstNameval varchar(255), 
middleNameval varchar(255),
lastNameval varchar(255),
genderval varchar(255),
userNameval varchar(255),
passwordval varchar(255),
titleval varchar(255),
specialtyval varchar(255),
BMDCRegNoval varchar(255),
emailval varchar(255),
phoneval varchar(255),
typeval varchar(255),
descriptionprofessionalStatementval varchar(255),
degreeothespecificationval varchar(255),
othertranningval varchar(255),
created_byval  varchar(255),
create_dateval varchar(255),
customeridval varchar(255),

actionuserval varchar(255),
attachmentuuidval varchar(255))
BEGIN

 
  INSERT INTO es_users (first_name,middle_name,last_name,gender,username,password,email,phoneno,type,
created_by,create_date,customerid,actionuser,doctorrid) 


values(firstNameval,middleNameval,lastNameval,genderval,userNameval,passwordval,emailval,phoneval,'3',
created_byval,create_dateval,customeridval,actionuserval,attachmentuuidval);
    
 
INSERT INTO es_doctor (first_name,middle_name,last_name,title,specialty,BMDCRegNo,email,phoneno,type,
descriptionprofessionalStatement,degreeothespecification,othertranning,created_by,create_date,customerid,actionuser,doctorrid) 


values(firstNameval,middleNameval,lastNameval,titleval,specialtyval,BMDCRegNoval,emailval,phoneval,'3',descriptionprofessionalStatementval,
degreeothespecificationval ,othertranningval,created_byval,create_dateval,customeridval,actionuserval,attachmentuuidval);
    
END;

#
# Procedure "Create_Medicine_Registation"
#

DROP PROCEDURE IF EXISTS `Create_Medicine_Registation`;
CREATE PROCEDURE `Create_Medicine_Registation`(
meditypeval varchar(255),
medicinnameval varchar(255),
medicinmgval varchar(255),
medicindoseval varchar(255),
medicindurationval varchar(255),
medicincommetsval varchar(255),
appromentidval varchar(255),
doctoridval varchar(255),
patientidval varchar(255))
BEGIN



INSERT INTO es_medicine( medicine_type,medicine_name,medicine_mg,medicine_dose,medi_duration,medi_comments,appromentid,doctorid,patient_id) 
values(meditypeval,medicinnameval,medicinmgval,medicindoseval,medicindurationval,medicincommetsval,appromentidval,doctoridval,patientidval);
   

    
END;

#
# Procedure "Create_Patient_Comfirm_approment"
#

DROP PROCEDURE IF EXISTS `Create_Patient_Comfirm_approment`;
CREATE PROCEDURE `Create_Patient_Comfirm_approment`( 

dayval varchar(255),
dateval varchar(255),
timeval varchar(255),
reasonval varchar(255),
doctornameval varchar(255),
actionuserval varchar(255))
BEGIN

INSERT INTO es_approiment (day,date,time,reason,doctorid,username)

values(dayval,dateval,timeval,reasonval,doctornameval,actionuserval);
    
 
END;

#
# Procedure "Create_Patient_Registation"
#

DROP PROCEDURE IF EXISTS `Create_Patient_Registation`;
CREATE PROCEDURE `Create_Patient_Registation`( 
firstNameval varchar(255), 
middleNameval varchar(255),
lastNameval varchar(255),
genderval varchar(255),
userNameval varchar(255),
passwordval varchar(255),
birthdayval varchar(255),
emailval varchar(255),
phoneval varchar(255),
homeadressoneval varchar(255),
districtval varchar(255),
thanaval varchar(255),
postval varchar(255),
qrcodeval varchar(255),
created_byval  varchar(255),
create_dateval varchar(255),
customeridval varchar(255),
actionuserval varchar(255),
ageval varchar(255))
BEGIN

 
  
 
INSERT INTO es_users (first_name,middle_name,last_name,gender,username,password,birthday,email,phoneno,type,
homeadressone,district,thana,post,qrcode,created_by,create_date,customerid,actionuser,age) 


values(firstNameval,middleNameval,lastNameval,genderval,userNameval,passwordval,birthdayval,emailval,phoneval,'2',homeadressoneval,
districtval ,thanaval,postval,qrcodeval ,created_byval,create_dateval,customeridval,actionuserval,ageval);


END;

#
# Procedure "Create_Pharmcy_Registation"
#

DROP PROCEDURE IF EXISTS `Create_Pharmcy_Registation`;
CREATE PROCEDURE `Create_Pharmcy_Registation`( 
firstNameval varchar(255), 
middleNameval varchar(255),
lastNameval varchar(255),

genderval varchar(255),
userNameval varchar(255),
passwordval varchar(255),

emailval varchar(255),
phoneval varchar(255),
homeadressoneval varchar(255),

districtval varchar(255),
thanaval varchar(255),
postval varchar(255),

phyRegNoval varchar(255),
qrcodeval varchar(255),
created_byval  varchar(255),

create_dateval varchar(255),
customeridval varchar(255),

actionuserval varchar(255))
BEGIN

 
  INSERT INTO es_users (first_name,middle_name,last_name,gender,username,password,email,phoneno,type,
created_by,create_date,customerid,actionuser) 


values(firstNameval,middleNameval,lastNameval,genderval,userNameval,passwordval,emailval,phoneval,'4',
created_byval,create_dateval,customeridval,actionuserval);
    
 
INSERT INTO es_pharmacy (homeadressone,district,phyRegNo,thana,phoneno,post,created_by,create_date,customerid,actionuser) 


values(homeadressoneval,districtval,phyRegNoval,thanaval,phoneval,postval,created_byval,create_dateval,customeridval,actionuserval);
    
END;

#
# Procedure "Create_Prescrition"
#

DROP PROCEDURE IF EXISTS `Create_Prescrition`;
CREATE PROCEDURE `Create_Prescrition`(

  patient_ccval varchar(255), patient_wegitval varchar(255),patient_bpval varchar(255),
patient_exval varchar(255),patient_pdval varchar(255),patientval varchar(255),
meditypeval varchar(255),medicinnameval varchar(255),medicinmgval varchar(255),medicindoseval varchar(255),
medicindurationval varchar(255),medicincommetsval varchar(255),appromentidval varchar(255)
)
BEGIN

INSERT INTO es_patientother ( patient_cc,patient_wegit,patient_bp,patient_ex,patient_pd,patientid,appromentid) 
values(patient_ccval,patient_wegitval,patient_bpval,patient_exval,patient_pdval,patientval,appromentidval);


INSERT INTO es_medicine( medicine_type,medicine_name,medicine_mg,medicine_dose,medi_duration,medi_comments,patientid) 
values(meditypeval,medicinnameval,medicinmgval,medicindoseval,medicindurationval,medicincommetsval,patientval);
    
    
END;

#
# Procedure "Create_Test_Registation"
#

DROP PROCEDURE IF EXISTS `Create_Test_Registation`;
CREATE PROCEDURE `Create_Test_Registation`(

testval varchar(255),
testdisval varchar(255),

appromentidval varchar(255),
doctoridval varchar(255),
patientidval varchar(255))
BEGIN

INSERT INTO es_test( test,testdis,appromentid,doctorid,patientid) 
values(testval,testdisval,appromentidval,doctoridval,patientidval);
   
    
END;

#
# Procedure "CreateCategory"
#

DROP PROCEDURE IF EXISTS `CreateCategory`;
CREATE PROCEDURE `CreateCategory`( catname varchar(255), catstatus varchar(100),catdescription varchar(500),
cid varchar(255),actionuser varchar(255))
BEGIN

INSERT INTO category (CategoryName,Description,customer_id,catstatus,createdby,createdate) 
values(catname,catdescription,cid,catstatus,actionuser,now());
    
END;

#
# Procedure "CreateProduct"
#

DROP PROCEDURE IF EXISTS `CreateProduct`;
CREATE PROCEDURE `CreateProduct`(catno varchar(255), 
barcodevalue varchar(255),
productcodevalue varchar(255),
productname varchar(255),
productdesc varchar(255),
productunitprice varchar(255),
stock varchar(255),
suplieruid varchar(255),
pwarrenty varchar(255),
cid varchar(255),
actionuser varchar(255))
BEGIN

INSERT INTO product (ProductCode,Description,Barcode,UnitPrice,StocksOnHand,CategoryNo,supplieruid,warrenty,customerid,createby,createdate) 
values(productcodevalue,productdesc,barcodevalue,productunitprice,stock,catno,suplieruid,pwarrenty,cid,actionuser,now());
    
END;

#
# Procedure "Get_Advice_Registation"
#

DROP PROCEDURE IF EXISTS `Get_Advice_Registation`;
CREATE PROCEDURE `Get_Advice_Registation`(
appromentidval varchar(255),
doctoridval varchar(255),
patientidval varchar(255))
BEGIN

	 
	 select * FROM es_advice
where appromentid = appromentidval;
	
    
END;

#
# Procedure "get_apprometlistbydortorid"
#

DROP PROCEDURE IF EXISTS `get_apprometlistbydortorid`;
CREATE PROCEDURE `get_apprometlistbydortorid`(
doctorridval varchar(255))
BEGIN
select  es_users.*,es_approiment.*
 from es_users,es_approiment
where 
 es_users.username=es_approiment.username
 and
 es_approiment.doctorid=doctorridval ;
END;

#
# Procedure "get_CustomerbyMobile_ID"
#

DROP PROCEDURE IF EXISTS `get_CustomerbyMobile_ID`;
CREATE PROCEDURE `get_CustomerbyMobile_ID`(customeridval varchar(255), mobile_number varchar(255),cidval varchar(255))
BEGIN

    select * from es_sales_customer where customer_id=customeridval and (customer_identificationumber=cidval or mobile=mobile_number);

END;

#
# Procedure "get_CustomerList"
#

DROP PROCEDURE IF EXISTS `get_CustomerList`;
CREATE PROCEDURE `get_CustomerList`(customeridval varchar(255))
BEGIN

    select * from es_sales_customer where customer_id=customeridval;

END;

#
# Procedure "Get_DoctorDetails"
#

DROP PROCEDURE IF EXISTS `Get_DoctorDetails`;
CREATE PROCEDURE `Get_DoctorDetails`(
doctorridval varchar(255))
BEGIN
select * from es_doctor  where doctorrid=doctorridval ;
END;

#
# Procedure "get_doctorlist"
#

DROP PROCEDURE IF EXISTS `get_doctorlist`;
CREATE PROCEDURE `get_doctorlist`( )
BEGIN

    select * from es_users where type='3';

END;

#
# Procedure "get_Micine_Registation"
#

DROP PROCEDURE IF EXISTS `get_Micine_Registation`;
CREATE PROCEDURE `get_Micine_Registation`(
appromentidval varchar(255),
doctoridval varchar(255),
patientidval varchar(255))
BEGIN

	 
	 select * FROM es_medicine 
where appromentid = appromentidval;
	
    
END;

#
# Procedure "get_password"
#

DROP PROCEDURE IF EXISTS `get_password`;
CREATE PROCEDURE `get_password`(`nameV` varchar(255))
BEGIN
 select  password from es_users where username=nameV;
END;

#
# Procedure "get_productcategory"
#

DROP PROCEDURE IF EXISTS `get_productcategory`;
CREATE PROCEDURE `get_productcategory`(customeridval varchar(255))
BEGIN
     select * from category where customer_id=customeridval;
END;

#
# Procedure "get_productlist"
#

DROP PROCEDURE IF EXISTS `get_productlist`;
CREATE PROCEDURE `get_productlist`(customeridval varchar(255))
BEGIN
    select product.*,category.CategoryNo,category.CategoryName from product,category where category.CategoryNo=product.CategoryNo and customerid=customeridval;

END;

#
# Procedure "get_role"
#

DROP PROCEDURE IF EXISTS `get_role`;
CREATE PROCEDURE `get_role`()
BEGIN
select role_id,role_name from userrole;
END;

#
# Procedure "Get_Test_Registation"
#

DROP PROCEDURE IF EXISTS `Get_Test_Registation`;
CREATE PROCEDURE `Get_Test_Registation`(
appromentidval varchar(255),
doctoridval varchar(255),
patientidval varchar(255))
BEGIN

	 
	 select * FROM es_test
where appromentid = appromentidval;
	
    
END;

#
# Procedure "get_user_by_name"
#

DROP PROCEDURE IF EXISTS `get_user_by_name`;
CREATE PROCEDURE `get_user_by_name`(nameV varchar(255))
BEGIN
SELECT *,
 (SELECT customer_name FROM es_customer WHERE es_customer.customer_id=es_users.bat_id) AS 'batName'
,phoneno,
COALESCE((SELECT role_name FROM userrole WHERE role_id=
TYPE ) ) AS 'role_name' FROM es_users WHERE username=nameV
;
 
END;

#
# Procedure "Update_User_Password"
#

DROP PROCEDURE IF EXISTS `Update_User_Password`;
CREATE PROCEDURE `Update_User_Password`(uuidV varchar(255),usernameV varchar(255),editbyval varchar(255), passwordval varchar(255))
BEGIN
 Update es_users
 SET
 password= passwordval,
 lasteditby=editbyval,
 lasteditdate=Now()
  where uuid=uuidV;
END;

#
# Procedure "UpdateStockIn_Product"
#

DROP PROCEDURE IF EXISTS `UpdateStockIn_Product`;
CREATE PROCEDURE `UpdateStockIn_Product`(productnoval varchar (255), 
productcodeval varchar(255), 
newquanty varchar (255), stockinhandval varchar (255),customeridval varchar(255), actionuser varchar(255))
BEGIN

UPDATE  product 
SET StocksOnHand=stockinhandval where ProductNo=productnoval and ProductCode=productcodeval and customerid=customeridval;

INSERT INTO stockin  (ProductNo,productcode,Quantity,DateIn,createdby) Values(productnoval,productcodeval,newquanty,now(),actionuser);

END;

#
# Procedure "validate_user_login"
#

DROP PROCEDURE IF EXISTS `validate_user_login`;
CREATE PROCEDURE `validate_user_login`(username varchar(255),password varchar(255))
BEGIN
select 

username,
password,
first_name,
middle_name,
last_name,
bat_id,
comp_no,
department,
designation,
email

from es_users 

where username=username and password=password;

END;
