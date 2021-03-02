CREATE DATABASE  IF NOT EXISTS `sistema_de_notas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sistema_de_notas`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sistema_de_notas
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `street` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `neighborhood` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES ('09bc7860-751d-11eb-b9dc-5bda7d5ca2f3','Avenida Leonardo da Vinci','383','Vila Guarani (Z Sul)','São Paulo','SP','04313000','e29e6ea0-751c-11eb-b9dc-5bda7d5ca2f3','2021-02-22 14:48:34','2021-02-22 14:48:34'),('09e546d0-7501-11eb-b9dc-5bda7d5ca2f3','Rua Adonias Carlos de Souza ','711','Parque dos Pioneiros','Rancharia','SP','19600000','c7aa2b00-7500-11eb-b9dc-5bda7d5ca2f3','2021-02-22 11:28:08','2021-02-22 11:28:08'),('0a7e7e00-5bf1-11eb-86a2-db4046fd5ae1','Rua Prefeito Artur de Carvalho','2088','Vila Martins II','Avaré','SP','18701520','ddfd5d60-5bf0-11eb-86a2-db4046fd5ae1','2021-01-21 14:00:38','2021-01-21 14:00:38'),('12237e50-5be0-11eb-86a2-db4046fd5ae1','Rua Goiás','2002','Braz II','Avaré','SP','18701-210','fbd72e30-5bdf-11eb-86a2-db4046fd5ae1','2021-01-21 11:59:10','2021-01-21 11:59:10'),('18fc7180-5bce-11eb-86a2-db4046fd5ae1','Rua Quinze de Novembro','44','Vila Jussara Maria','Avaré','SP','18706080','fa4fd010-5bcd-11eb-86a2-db4046fd5ae1','2021-01-21 09:50:30','2021-01-21 09:50:30'),('1a1a6e60-5bff-11eb-86a2-db4046fd5ae1','Rua José Bonifácio de Andrada e Silva','75','Jardim Meny','São Roque','SP','18130005','05865590-5bff-11eb-86a2-db4046fd5ae1','2021-01-21 15:41:17','2021-01-21 15:41:17'),('1ce5f3d0-5be6-11eb-86a2-db4046fd5ae1','Rua Goiás','2002','Braz II','Avaré','SP','18701210','05124060-5be6-11eb-86a2-db4046fd5ae1','2021-01-21 12:42:25','2021-01-21 12:42:25'),('1d590f00-5cf9-11eb-86a2-db4046fd5ae1','Rua Albino Klocker','618','Vila Cruzeiro','Itararé','SP','18460534','0c9007f0-5cf9-11eb-86a2-db4046fd5ae1','2021-01-22 21:30:57','2021-01-22 21:30:57'),('2394f160-6fcb-11eb-ab89-2b7bf2bb7717','Rua Escócia','217','Jardim Europa','São Paulo','SP','01450000','045e1150-6fcb-11eb-ab89-2b7bf2bb7717','2021-02-15 20:19:43','2021-02-15 20:19:43'),('24e6fc60-5c0d-11eb-86a2-db4046fd5ae1','rodovia marechal rondon km 163, s/nº - caixa postal 49','0','Agua de pedra','Jumirim','SP - São Paulo','18535-000','db427260-5c0c-11eb-86a2-db4046fd5ae1','2021-01-21 17:21:48','2021-01-21 17:21:48'),('27e8ea80-5cf9-11eb-86a2-db4046fd5ae1','Rua Albino Klocker','618','Vila Cruzeiro','Itararé','SP','18460534','0c9007f0-5cf9-11eb-86a2-db4046fd5ae1','2021-01-22 21:31:15','2021-01-22 21:31:15'),('3e12a800-7522-11eb-b9dc-5bda7d5ca2f3','Rua Calógero Calia','150','Vila Santo Estéfano','São Paulo','SP','04152100','02669ff0-7522-11eb-b9dc-5bda7d5ca2f3','2021-02-22 15:25:49','2021-02-22 15:25:49'),('3e26da00-72b6-11eb-ab89-2b7bf2bb7717','Rua Doutor James Ferraz Alvim','Rua Dr James Ferraz Alvim 195, apt 201','Vila Suzana','São Paulo','SP','05641021','0a4aca20-72b6-11eb-ab89-2b7bf2bb7717','2021-02-19 13:27:41','2021-02-19 13:27:41'),('4782e810-5ccb-11eb-86a2-db4046fd5ae1','Rua Quinze de Novembro','44 casa 16','Vila Jussara Maria','Avaré','SP','18706080','f90dea40-5cca-11eb-86a2-db4046fd5ae1','2021-01-22 16:02:51','2021-01-22 16:02:51'),('4a8f8440-7513-11eb-b9dc-5bda7d5ca2f3','Rodovia João Cereser km66 , Condominio Quinta das Paineiras','km 66','Cidade Santos Dumont','Jundiaí','SP','13214470','d7c221d0-7511-11eb-b9dc-5bda7d5ca2f3','2021-02-22 13:38:48','2021-02-22 13:38:48'),('53c9ade0-5c74-11eb-86a2-db4046fd5ae1','Avenida General Luiz de França Albuquerque','9383 Quadra L Lote 02','Jacarecica','Maceió','AL','57038-640','2bf52560-5c74-11eb-86a2-db4046fd5ae1','2021-01-22 05:40:25','2021-01-22 05:40:25'),('590f4be0-7545-11eb-bc90-1b7eb9d62624','Rodovia eng João Baptista Cabral Renno ','Km 2,5','Recanto Mariana','Ipaussu','SP','18950000','0611b8b0-7545-11eb-bc90-1b7eb9d62624','2021-02-22 19:37:07','2021-02-22 19:37:07'),('5a908c90-5c4a-11eb-86a2-db4046fd5ae1','Rua Itapecoca','103','Vila Andrade','São Paulo','SP','05715030','482cc140-5c4a-11eb-86a2-db4046fd5ae1','2021-01-22 00:39:58','2021-01-22 00:39:58'),('611561f0-5c5c-11eb-86a2-db4046fd5ae1','Rua Braz Camillo de Souza','101','Parque Residencial Gilberto Filgueiras II','Avaré','SP','18703-480','eaabd220-5bfb-11eb-86a2-db4046fd5ae1','2021-01-22 02:49:00','2021-01-22 02:49:00'),('7566c0b0-6fc9-11eb-ab89-2b7bf2bb7717','Rua Escócia','217','Jardim Europa','São Paulo','SP','01450-000','58f67ab0-6fc9-11eb-ab89-2b7bf2bb7717','2021-02-15 20:07:41','2021-02-15 20:07:41'),('7635c790-5be0-11eb-86a2-db4046fd5ae1','Praça Heitor Boccato 40','Caixa postal 266','Centro','São Roque','SP','18130970','58e47060-5be0-11eb-86a2-db4046fd5ae1','2021-01-21 12:01:57','2021-01-21 12:01:57'),('77265ac0-6fb8-11eb-ab89-2b7bf2bb7717','Rua Boa Vista 315','Cx p 38','Centro','Reginópolis','SP','17190970','5daac3b0-6fb8-11eb-ab89-2b7bf2bb7717','2021-02-15 18:06:02','2021-02-15 18:06:02'),('7d0fd810-5cd2-11eb-86a2-db4046fd5ae1','rodovia marechal rondon km 163, s/nº - caixa postal 49','s/n','Agua de pedra','Jumirim','SP - São Paulo','18535-000','4751b730-5cd1-11eb-86a2-db4046fd5ae1','2021-01-22 16:54:27','2021-01-22 16:54:27'),('7d318360-5c2e-11eb-86a2-db4046fd5ae1','Rua Braz Camillo de Souza','1100','Parque Residencial Gilberto Filgueiras II','Avaré','SP','18703-480','eaabd220-5bfb-11eb-86a2-db4046fd5ae1','2021-01-21 21:20:30','2021-01-21 21:20:30'),('7f408eb0-5ba9-11eb-86a2-db4046fd5ae1','Rua Maneco Dionísio','353','Vila Martins II','Avaré','SP','18701480','bd290420-5ba7-11eb-85d3-41d12161e99f','2021-01-21 05:28:30','2021-01-21 05:28:30'),('8ba89850-6eff-11eb-ab89-2b7bf2bb7717','Rua Honório Maestrello','200','Village Moutonnée','Salto','SP','13324509','199827d0-6eff-11eb-ab89-2b7bf2bb7717','2021-02-14 20:02:20','2021-02-14 20:02:20'),('932f9df0-7510-11eb-b9dc-5bda7d5ca2f3','Rua Avanhandava','779','Garcia','Lins','SP','16400220','b3576f30-73c7-11eb-ab89-2b7bf2bb7717','2021-02-22 13:19:21','2021-02-22 13:19:21'),('9b6138c0-74fd-11eb-b9dc-5bda7d5ca2f3','ESTRADA MUNICIPAL CX POSTAL 40','40','ENGENHEIRO HERMILO','Campina do Monte Alegre','SP','18245000','5eda3a00-74fd-11eb-b9dc-5bda7d5ca2f3','2021-02-22 11:03:34','2021-02-22 11:03:34'),('a1ccd160-714c-11eb-ab89-2b7bf2bb7717','Avenida Presidente Humberto de Alencar Castelo Branco','606','Vila Leonor','Guarulhos','SP','07024170','601d9d90-706a-11eb-ab89-2b7bf2bb7717','2021-02-17 18:19:11','2021-02-17 18:19:11'),('ab378260-5c46-11eb-86a2-db4046fd5ae1','estrada vicinal avaré à arandu km 03','km 03','Zona rural ','Avaré ','SP','187009770','1ac6bbb0-5c46-11eb-86a2-db4046fd5ae1','2021-01-22 00:13:35','2021-01-22 00:13:35'),('bb930c20-7464-11eb-ab89-2b7bf2bb7717','Rua Bela Cintra - 2365','2365','Consolação','São Paulo','SP','01415002','a0540fa0-7463-11eb-ab89-2b7bf2bb7717','2021-02-21 16:49:15','2021-02-21 16:49:15'),('c4b03700-72b2-11eb-ab89-2b7bf2bb7717','Rua Goiás','2002','Braz II','Avaré','SP','18701-210','95a5d370-72b2-11eb-ab89-2b7bf2bb7717','2021-02-19 13:02:49','2021-02-19 13:02:49'),('ceecf240-5c31-11eb-86a2-db4046fd5ae1','Rua Braz Camillo de Souza','14998038697','Parque Residencial Gilberto Filgueiras II','Avaré','SP','18703-480','ba05b060-5c31-11eb-86a2-db4046fd5ae1','2021-01-21 21:44:15','2021-01-21 21:44:15'),('d0376de0-5bd4-11eb-86a2-db4046fd5ae1','Av das posses','224','Holambra II','Paranapanema','SP','18725000','bc1529b0-5bd4-11eb-86a2-db4046fd5ae1','2021-01-21 10:38:34','2021-01-21 10:38:34'),('d1bd84c0-5bec-11eb-86a2-db4046fd5ae1','Rod João Melão SP255 km266, Caixa Postal 199','SN','Braz I','Avaré','SP','18701971','7717a5a0-5bec-11eb-86a2-db4046fd5ae1','2021-01-21 13:30:25','2021-01-21 13:30:25'),('d5e16730-72dd-11eb-ab89-2b7bf2bb7717','Rodovia João Melão Km 266,4','0','Braz I','Avaré','SP','18701971','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','2021-02-19 18:11:06','2021-02-19 18:11:06'),('e0c15e80-72dd-11eb-ab89-2b7bf2bb7717','Rodovia João Melão Km 266,4 - Haras Sacramento - Caixa Postal 286','0','Braz I','Avaré','SP','18701971','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','2021-02-19 18:11:24','2021-02-19 18:11:24'),('e1e210c0-72dd-11eb-ab89-2b7bf2bb7717','Rua Luiz Spiandorelli Neto','60','Loteamento Paiquerê','Valinhos','SP','13271-570','770fb8b0-72dd-11eb-ab89-2b7bf2bb7717','2021-02-19 18:11:26','2021-02-19 18:11:26'),('ee07e480-5bf2-11eb-86a2-db4046fd5ae1','Rua Itapecoca','103','Vila Andrade','São Paulo','SP','05715030','122d6430-5bf2-11eb-86a2-db4046fd5ae1','2021-01-21 14:14:09','2021-01-21 14:14:09'),('f1f96490-750d-11eb-b9dc-5bda7d5ca2f3','rua maria jose bueno wolf','100','largo sao joao','espirito santo do pinhal','SP','13990000','cf8e0d70-750d-11eb-b9dc-5bda7d5ca2f3','2021-02-22 13:00:31','2021-02-22 13:00:31'),('f7bc4f40-709a-11eb-ab89-2b7bf2bb7717','Rua Hélio','767','Vale das Serras','Suzano','SP','08633270 ','e087ea10-708f-11eb-ab89-2b7bf2bb7717','2021-02-16 21:07:24','2021-02-16 21:07:24');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animals`
--

DROP TABLE IF EXISTS `animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animals` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `breed` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `registration_number` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `breeder` varchar(255) NOT NULL,
  `coat` varchar(255) NOT NULL,
  `birth_date` varchar(255) NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `animals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals`
--

LOCK TABLES `animals` WRITE;
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` VALUES ('022acb10-7504-11eb-b9dc-5bda7d5ca2f3','Colonel Blue Eye','Quarto de Milha','Macho','P225082','Jefferson Butti Abbud ','Thiago Marcon','Castanho','2014-07-15T11:47:00.000Z','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','2021-02-22 11:49:24','2021-02-22 11:49:24'),('043ecdc0-7171-11eb-ab89-2b7bf2bb7717','Cat Bodee Boon YM ','Quarto de Milha','Macho','P138263','Claudia Sayuri Muramoto Fontes','Yasmin Maria Schilling ','Castanho','2010-07-17T22:35:00.000Z','5daac3b0-6fb8-11eb-ab89-2b7bf2bb7717','2021-02-17 22:39:38','2021-02-17 22:39:38'),('09d18700-751d-11eb-b9dc-5bda7d5ca2f3','SUGAR POP WHIZ','QUARTO DE MILHA','Macho','EM ANDAMENTO','ISABEL ALBENAZ','LAERCIO CASALECCHI FILHO','Alazão','2017-09-29T03:00:00.000Z','cf8e0d70-750d-11eb-b9dc-5bda7d5ca2f3','2021-02-22 14:48:34','2021-02-22 14:48:34'),('12af0150-754e-11eb-bc90-1b7eb9d62624','HELLUVA COUNTRY PINE','QM','Macho',' P200363','THOMAZ LUIZ CABRAL MENEZES','THOMAZ LUIZ CABRAL MENEZES','Zaino','2013-09-20T03:00:00.000Z','f024f410-754c-11eb-bc90-1b7eb9d62624','2021-02-22 20:39:34','2021-02-22 20:39:34'),('13e6edd0-70a8-11eb-ab89-2b7bf2bb7717','THUNDERBIRD DUNIT','QM','Femea','P239919','MARCUS ANTÔNIO PEREIRA JÚNIOR','ANDRÉ TRIPOLONI','Castanho','2016-11-18T21:38:00.000Z','482cc140-5c4a-11eb-86a2-db4046fd5ae1','2021-02-16 22:41:15','2021-02-16 22:41:15'),('16170960-6f99-11eb-ab89-2b7bf2bb7717','Ayasha Badger Gunner','Quarto de milha','Macho','P225223','Letícia Farina Cândido de Oliveira ','Antônio Cândido de Oliveira ','Baio Amarilho','2015-08-17T14:20:00.000Z','f90dea40-5cca-11eb-86a2-db4046fd5ae1','2021-02-15 14:21:25','2021-02-15 14:21:25'),('17a991d0-5c75-11eb-86a2-db4046fd5ae1','Tag Little Step','Quarto de Milha','Macho','P212359','Marcus Vinicius Tenorio Guimaraes','Andre Tripoloni','Alazão','2014-08-06T05:42:00.000Z','2bf52560-5c74-11eb-86a2-db4046fd5ae1','2021-01-22 05:45:54','2021-01-22 05:45:54'),('17ccbc50-7502-11eb-b9dc-5bda7d5ca2f3','HOT WINGS DUNIT QR','QM','Macho','P180773','RENATO CESAR FUMERO','ABELARDO FERREIRA MENDES','Castanho','2013-10-27T02:00:00.000Z','2cda9840-746e-11eb-ab89-2b7bf2bb7717','2021-02-22 11:35:41','2021-02-22 11:35:41'),('1984dbb0-7546-11eb-bc90-1b7eb9d62624','Smart Top Buck TE','Quarto de Milha ','Macho','P266698','Ulysses Marcelo Fornetti','Gustavo B Siciliano/João Avelino Leal','Castanho','2017-07-31T19:39:00.000Z','5daac3b0-6fb8-11eb-ab89-2b7bf2bb7717','2021-02-22 19:42:30','2021-02-22 19:42:30'),('1b510810-5c4b-11eb-86a2-db4046fd5ae1','Powder The Boy','QM','Macho','B010902','Eilinco Administração e Gestão Patrimonial Ltda','Adriano Rodrigues do Nascimento','Alazão','2016-12-14T23:42:00.000Z','482cc140-5c4a-11eb-86a2-db4046fd5ae1','2021-01-22 00:45:21','2021-01-22 00:45:21'),('1c12b450-750b-11eb-b9dc-5bda7d5ca2f3','Netto Boy','Quarto de Milha','Macho','P259989','Jefferson Butti Abbud','Jefferson Butti Abbud','Alazão','2017-07-29T12:38:00.000Z','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','2021-02-22 12:40:14','2021-02-22 12:40:14'),('1efc5430-7562-11eb-bc90-1b7eb9d62624','CAPTAIN GUNNER CODY','QM','Macho','P290849','JONATHAN OZÓRIO ERICKISON MARCA DOS SANTOS','JONATHAN OZÓRIO ERICKISON MARCA DOS SANTOS','Alazão','2017-11-28T02:00:00.000Z','2cda9840-746e-11eb-ab89-2b7bf2bb7717','2021-02-22 23:03:05','2021-02-22 23:03:05'),('1f338f80-5bf5-11eb-86a2-db4046fd5ae1','Nova Boy','QM','Femea','257892','Ricardo Priant do Espírito Santos','Jefferson Butti Abbud','Alazão','2017-07-01T14:26:00.000Z','122d6430-5bf2-11eb-86a2-db4046fd5ae1','2021-01-21 14:29:51','2021-01-21 14:29:51'),('2419aa20-754f-11eb-bc90-1b7eb9d62624','Guns N\' Roses LV','QM','Femea','0865671','THOMAZ LUIZ CABRAL MENEZES','THOMAZ LUIZ CABRAL MENEZES','Alazão','2016-07-27T03:00:00.000Z','f024f410-754c-11eb-bc90-1b7eb9d62624','2021-02-22 20:47:13','2021-02-22 20:47:13'),('25839530-7561-11eb-bc90-1b7eb9d62624','golden little cielo','quarto de milha','Macho','P198883','Jessika Terra Monassi Telles','Sandra Babick','Baio Amarilho','2014-10-18T22:47:00.000Z','35545660-755d-11eb-bc90-1b7eb9d62624','2021-02-22 22:56:06','2021-02-22 22:56:06'),('2a848b60-5be5-11eb-86a2-db4046fd5ae1','bella danit whiz','QM','Femea','P178647','LETICIA FARINA CANDIDO','FRANCISCO ALMIR BEZERRA','Baio','2014-01-23T11:34:00.000Z','fbd72e30-5bdf-11eb-86a2-db4046fd5ae1','2021-01-21 12:35:38','2021-01-21 12:35:38'),('2f2bd3a0-7510-11eb-b9dc-5bda7d5ca2f3','Conquistador Shiney ','Quarto de milha ','Macho','P212476','Osvaldo butignol jr','Paulo Afonso Leite','Baio','2014-11-22T12:15:00.000Z','b3576f30-73c7-11eb-ab89-2b7bf2bb7717','2021-02-22 13:16:33','2021-02-22 13:16:33'),('3721f4a0-7514-11eb-b9dc-5bda7d5ca2f3','Hot Wings Dunit QR','quarto de milha','Macho','P180773','Renato Cesar Fumero','Abelardo Ferreira Mendes','Castanho','2013-10-27T13:41:00.000Z','d7c221d0-7511-11eb-b9dc-5bda7d5ca2f3','2021-02-22 13:45:24','2021-02-22 13:45:24'),('3abfe8a0-72b3-11eb-ab89-2b7bf2bb7717','Evident Ace Whiz ','Qm','Macho','P169792','Antonio Candido de Oliveira ','Antônio Candido de Oliveira ','Castanho','2012-08-30T13:06:00.000Z','95a5d370-72b2-11eb-ab89-2b7bf2bb7717','2021-02-19 13:06:07','2021-02-19 13:06:07'),('3dced820-5c7f-11eb-86a2-db4046fd5ae1','Remigun','Qm','Macho','P238948','Antonio Candido de Oliveira ','Antônio Candido de Oliveira ','Alazão Tostado','2016-08-27T06:59:00.000Z','1ac6bbb0-5c46-11eb-86a2-db4046fd5ae1','2021-01-22 06:58:33','2021-01-22 06:58:33'),('3e05ea10-755f-11eb-bc90-1b7eb9d62624','lady cielo','quarto de milha','Femea','P198876','Romulo Pignata Ferreira','Ricardo Sonsini Rodrigues','Baio','2014-09-09T22:40:00.000Z','35545660-755d-11eb-bc90-1b7eb9d62624','2021-02-22 22:42:28','2021-02-22 22:42:28'),('40044790-755e-11eb-bc90-1b7eb9d62624','thunder little cielo','quarto de milha','Macho','P219793','Renata Mauri Ricci','Sandra Babick','Baio Amarilho','2015-09-06T22:29:00.000Z','35545660-755d-11eb-bc90-1b7eb9d62624','2021-02-22 22:35:22','2021-02-22 22:35:22'),('40880670-7572-11eb-bc90-1b7eb9d62624','SWEET PEP UBA','QM','Femea','P166495','SABRINA S RODRIGUES/GILSON P VENDRAME','JARANA AGROPECUARIA S.A.','Rosilho','2013-05-12T00:56:00.000Z','db0f2850-7571-11eb-bc90-1b7eb9d62624','2021-02-23 00:58:33','2021-02-23 00:58:33'),('41e763d0-709a-11eb-ab89-2b7bf2bb7717','Rodrigo Estevão Ramos ','Qm','Macho','P230361','Rodrigo estavao ','Rodrigo Dacol ','Baio Amarilho','2015-09-30T03:00:00.000Z','e087ea10-708f-11eb-ab89-2b7bf2bb7717','2021-02-16 21:02:19','2021-02-16 21:02:19'),('471e6c30-709b-11eb-ab89-2b7bf2bb7717','Million Chex gun ','Quarto de milho ','Macho','P230362','Rodrigo Estevão Ramos ','Rodrigo ','Baio Amarilho','2015-09-30T21:07:00.000Z','e087ea10-708f-11eb-ab89-2b7bf2bb7717','2021-02-16 21:09:38','2021-02-16 21:09:38'),('4b032da0-5ca9-11eb-86a2-db4046fd5ae1','TARI LUCK','QM','Femea','P250569','GUILHERME MONTEIRO DE MELLO','GUILHERME MONTEIRO DE MELLO','Alazão','2016-08-31T03:00:00.000Z','69e84140-5c06-11eb-86a2-db4046fd5ae1','2021-01-22 11:59:34','2021-01-22 11:59:34'),('4f35eaf0-754c-11eb-bc90-1b7eb9d62624','STEPPIN ON ANDY','QM','Macho','P258002','THOMAZ LUIZ CABRAL MENEZES','THOMAZ LUIZ CABRAL MENEZES','Baio','2013-11-05T02:00:00.000Z','05f66450-754c-11eb-bc90-1b7eb9d62624','2021-02-22 20:26:57','2021-02-22 20:26:57'),('573d6550-7535-11eb-b9dc-5bda7d5ca2f3','FLOCKWHIZTRUCK','QUARTO DE MILHA','Macho','0905564','GIOVANI SOLDANI XAVIER','PAULO AFONSO LEITE','Baio','2017-07-24T03:00:00.000Z','cf8e0d70-750d-11eb-b9dc-5bda7d5ca2f3','2021-02-22 17:42:32','2021-02-22 17:42:32'),('578b2b70-751a-11eb-b9dc-5bda7d5ca2f3','HOPE GUNNER WHIZ JHA','QUARTO DE MILHA','Macho','0751467','SIRLEI APARECIDA FOGAROLLI GAYOTTO','josé henrique do amaral','Baio','2014-09-17T03:00:00.000Z','cf8e0d70-750d-11eb-b9dc-5bda7d5ca2f3','2021-02-22 14:29:16','2021-02-22 14:29:16'),('57bff210-7551-11eb-bc90-1b7eb9d62624','JACK STARSTRUCK UMF','QM','Macho','P276564','ULYSSES MARCELO FORNETTI','ULYSSES MARCELO FORNETTI','Baio','2017-10-13T03:00:00.000Z','6700ef00-7550-11eb-bc90-1b7eb9d62624','2021-02-22 21:02:58','2021-02-22 21:02:58'),('57fbd420-7505-11eb-b9dc-5bda7d5ca2f3','LIGHTING GUN','Quarto de Milha','Femea','0966619','Eduardo Dib ','Eduardo Dib','Tordilho','2020-01-16T10:56:00.000Z','c7aa2b00-7500-11eb-b9dc-5bda7d5ca2f3','2021-02-22 11:58:57','2021-02-22 11:58:57'),('59ac6020-754e-11eb-bc90-1b7eb9d62624','MISS GOTTA CHEX LV','QM','Femea','P292909','THOMAZ LUIZ CABRAL MENEZES','THOMAZ LUIZ CABRAL MENEZES','Baio','2016-08-01T03:00:00.000Z','f024f410-754c-11eb-bc90-1b7eb9d62624','2021-02-22 20:41:33','2021-02-22 20:41:33'),('5ca22c40-7569-11eb-bc90-1b7eb9d62624','Pale Face Jr','QM','Macho','P272984','Osvaldo Butignol Jr','Renata Ricci','Baio Amarilho','2017-09-04T23:53:00.000Z','b3576f30-73c7-11eb-ab89-2b7bf2bb7717','2021-02-22 23:54:55','2021-02-22 23:54:55'),('5d2a74e0-7502-11eb-b9dc-5bda7d5ca2f3','Mahogany Dun It','Quarto de Milha','Femea','0907119','Eduardo Dib ','André Tripoloni','Baio','2017-10-18T09:37:00.000Z','c7aa2b00-7500-11eb-b9dc-5bda7d5ca2f3','2021-02-22 11:37:37','2021-02-22 11:37:37'),('5f7cdeb0-7465-11eb-ab89-2b7bf2bb7717','Beautiful Cielo ','QM','Femea','P242251','Jacques Rodrigues Júnior ','Ricardo Soncine ','Baio Amarilho','2016-08-13T16:50:00.000Z','a0540fa0-7463-11eb-ab89-2b7bf2bb7717','2021-02-21 16:53:50','2021-02-21 16:53:50'),('60d2bd90-751c-11eb-b9dc-5bda7d5ca2f3','MAPUCHE NIDAL','CRIOULO','Macho','B551217','LAERCIO CASALECCHI FILHO','CABANHA MAPUCHE','Rosilho','2017-12-08T02:00:00.000Z','cf8e0d70-750d-11eb-b9dc-5bda7d5ca2f3','2021-02-22 14:43:50','2021-02-22 14:43:50'),('61eee9e0-7546-11eb-bc90-1b7eb9d62624','Pale Face Jr ','Quarto de Milha','Macho','P272984','Osvaldo Butignol Junior ','Renata Mauri Ricci','Baio Amarilho','2017-09-04T19:42:00.000Z','5daac3b0-6fb8-11eb-ab89-2b7bf2bb7717','2021-02-22 19:44:31','2021-02-22 19:44:31'),('639fe480-7562-11eb-bc90-1b7eb9d62624','BAIKAL HOLLYGUN QR','QM','Macho','P265870','FERNANDO CERVELATI BOTTEON','ABELARDO FERREIRA MENDES','Castanho','2017-07-26T03:00:00.000Z','2cda9840-746e-11eb-ab89-2b7bf2bb7717','2021-02-22 23:05:00','2021-02-22 23:05:00'),('652605dd-a442-41e1-861b-cbd0ec826f45','BIG MARSHALL','QM','Macho','P241145','MEDALHA DE OURO EVENTOS ARTISTICOS S/C LTDA','MEDALHA DE OURO EVENTOS ARTISTICOS S/C LTDA','Baio Amarilho','2015-11-30T09:56:00.000Z','58e47060-5be0-11eb-86a2-db4046fd5ae1','2021-01-21 09:56:44','2021-01-21 09:56:44'),('65edd860-5bd5-11eb-86a2-db4046fd5ae1','Nero Shoot','QM','Macho','P256395','Gabriel Augusto Claro','Jefferson Butti Abbud','Alazão','2017-08-12T10:39:00.000Z','bc1529b0-5bd4-11eb-86a2-db4046fd5ae1','2021-01-21 10:42:46','2021-01-21 10:42:46'),('668a66d0-754d-11eb-bc90-1b7eb9d62624','WHIZ BLUE TAG LV','QM','Femea','P254438','THOMAZ LUIZ CABRAL MENEZES','THOMAZ LUIZ CABRAL MENEZES','Alazão','2016-11-01T02:00:00.000Z','f024f410-754c-11eb-bc90-1b7eb9d62624','2021-02-22 20:34:45','2021-02-22 20:34:45'),('694b4790-7629-11eb-bc90-1b7eb9d62624','Holly jac dun it','QM','Macho','P213780','Lucas Leite Pinheiro ','Valtoir Ferreira da Silva ','Castanho','2012-12-20T21:45:00.000Z','199827d0-6eff-11eb-ab89-2b7bf2bb7717','2021-02-23 22:49:39','2021-02-23 22:49:39'),('6b9b3410-7502-11eb-b9dc-5bda7d5ca2f3','NOT SHOOT','QM','Macho','P257646','ROBSON CARLOS GOMES DA SILVA','JEFFERSON BUTTI ABBUD','Alazão','2017-11-08T02:00:00.000Z','2cda9840-746e-11eb-ab89-2b7bf2bb7717','2021-02-22 11:38:02','2021-02-22 11:38:02'),('7015b850-7505-11eb-b9dc-5bda7d5ca2f3','Princes Litlle Boy','QM','Femea','P244130','Jefferson Butti Abbud','Cristiano Curado Fraco Rabelo','Perlino','2016-08-11T11:57:00.000Z','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','2021-02-22 11:59:38','2021-02-22 11:59:38'),('74853700-714d-11eb-ab89-2b7bf2bb7717','Queens Little Cielo ','Paint Horse','Femea','PO22401','Mayara Alves Bezerra','Sandra Babick ','Baio Amarilho','2015-10-15T18:19:00.000Z','601d9d90-706a-11eb-ab89-2b7bf2bb7717','2021-02-17 18:25:04','2021-02-17 18:25:04'),('75780c40-72de-11eb-ab89-2b7bf2bb7717','KATIE BE CHAPLIN SWR','Quarto de Milha','Femea','P258959','LUIZ CARLOS MONTEIRO','MARCIO ANTONIO DE CARVALHO','Castanho','2016-11-20T16:17:00.000Z','770fb8b0-72dd-11eb-ab89-2b7bf2bb7717','2021-02-19 18:15:34','2021-02-19 18:15:34'),('78621990-755f-11eb-bc90-1b7eb9d62624','eletric n tag','quarto de milha','Macho','P281911','Henrique Paccola Ribeiro','Ricardo Luiz Ribeiro','Alazão','2016-12-27T21:42:00.000Z','35545660-755d-11eb-bc90-1b7eb9d62624','2021-02-22 22:44:06','2021-02-22 22:44:06'),('7ea3ecc0-5caa-11eb-86a2-db4046fd5ae1','JSA COMANCHE BABY OF','QM','Femea',' P263889','JORGE SIDNEY ATALLA JUNIOR','JORGE SIDNEY ATALLA JUNIOR','Alazão Tostado','2017-08-14T03:00:00.000Z','69e84140-5c06-11eb-86a2-db4046fd5ae1','2021-01-22 12:08:10','2021-01-22 12:08:10'),('7ed1ea50-7503-11eb-b9dc-5bda7d5ca2f3','Gunna Starwhiz','Quarto de Milha','Femea','0941144','Gustavo Galvão de França Pacheco','Cristiano Curado Franco Rabelo','Alazão','2018-07-16T10:40:00.000Z','c7aa2b00-7500-11eb-b9dc-5bda7d5ca2f3','2021-02-22 11:45:43','2021-02-22 11:45:43'),('8109b0b0-5c7f-11eb-86a2-db4046fd5ae1','Halona Shine Gunner','Qm','Femea','P283112','Antonio Candido de Oliveira ','Antônio Candido de Oliveira ','Baio Amarilho','2017-09-13T07:01:00.000Z','1ac6bbb0-5c46-11eb-86a2-db4046fd5ae1','2021-01-22 07:00:26','2021-01-22 07:00:26'),('813176a0-72bd-11eb-ab89-2b7bf2bb7717','Queens Little cielo','Quarto de Milha','Femea','Po22401','Sandra Babick','Sandra Babick','Baio Amarilho','2015-10-15T14:16:00.000Z','122d6430-5bf2-11eb-86a2-db4046fd5ae1','2021-02-19 14:19:40','2021-02-19 14:19:40'),('8143f5f0-756a-11eb-bc90-1b7eb9d62624','Harvey 77','Qm','Macho','P260841','Mateus Swart','Kleber son André Epp','Baio','2016-11-30T23:03:00.000Z','1a408030-756a-11eb-bc90-1b7eb9d62624','2021-02-23 00:03:06','2021-02-23 00:03:06'),('81868430-751d-11eb-b9dc-5bda7d5ca2f3','Country Hit','Quarto de Milha','Macho','P240822','Pedro Mendes de Brito','Alexandre Jose Correia Dias','Baio','2014-09-10T14:49:00.000Z','e29e6ea0-751c-11eb-b9dc-5bda7d5ca2f3','2021-02-22 14:51:55','2021-02-22 14:51:55'),('82d96730-5cf9-11eb-86a2-db4046fd5ae1','Reminic gamay','QM ','Macho','P147141','Rodrigo Lopes Dal Col ','Marcelo de Araújo pessoa','Alazão','2010-10-02T21:31:00.000Z','0c9007f0-5cf9-11eb-86a2-db4046fd5ae1','2021-01-22 21:33:47','2021-01-22 21:33:47'),('86b4acf0-7560-11eb-bc90-1b7eb9d62624','COUNTRY STARLIGHT','QM','Macho','P189364','FABIANNA RANDO RUMAN','MARCOS VIDAL LOHN','Castanho','2013-08-28T03:00:00.000Z','199827d0-6eff-11eb-ab89-2b7bf2bb7717','2021-02-22 22:51:40','2021-02-22 22:51:40'),('8802e4a0-6fca-11eb-ab89-2b7bf2bb7717','Helluva Only Chex','QM','Macho','P242670','HELOISA BENEVIDES DE CARVALHO CHIATTONE','HELOISA BENEVIDES DE CARVALHO CHIATTONE','Baio','2016-08-19T20:13:00.000Z','58f67ab0-6fc9-11eb-ab89-2b7bf2bb7717','2021-02-15 20:15:22','2021-02-15 20:15:22'),('8939b650-7501-11eb-b9dc-5bda7d5ca2f3','GALACTIC TAG','QM','Macho','P218273','LUISA TOMAZELA','ANDRÉ TRIPOLONI','Alazão','2015-11-16T10:30:00.000Z','2cda9840-746e-11eb-ab89-2b7bf2bb7717','2021-02-22 11:31:42','2021-02-22 11:31:42'),('89a16720-7464-11eb-ab89-2b7bf2bb7717','Spark dun it again','Quarto de Milha ','Macho','P273783','Jacques Rodrigues Júnior ','Jose durval Virgílio ','Baio','2017-08-31T16:43:00.000Z','a0540fa0-7463-11eb-ab89-2b7bf2bb7717','2021-02-21 16:47:51','2021-02-21 16:47:51'),('900ca910-709c-11eb-ab89-2b7bf2bb7717','Stepping gun ','Quarto de milha ','Macho','123456','Rodrigo Estevão Ramos ','Paulo Afonso ','Castanho','2016-02-16T20:15:00.000Z','e087ea10-708f-11eb-ab89-2b7bf2bb7717','2021-02-16 21:18:49','2021-02-16 21:18:49'),('91178b00-751e-11eb-b9dc-5bda7d5ca2f3','Violeiro do Topo da Serra','Crioulo','Macho','B506356','Pedro Mendes de Brito','28442','Castanho','2016-09-10T14:53:00.000Z','e29e6ea0-751c-11eb-b9dc-5bda7d5ca2f3','2021-02-22 14:59:30','2021-02-22 14:59:30'),('92093700-756b-11eb-bc90-1b7eb9d62624','SWEET PEP UBA','QM','Femea',' P166495','SABRINA S RODRIGUES/GILSON P VENDRAME','JARANA AGROPECUARIA S.A.','Rosilho','2013-05-12T00:09:00.000Z','2cccc5a0-756b-11eb-bc90-1b7eb9d62624','2021-02-23 00:10:43','2021-02-23 00:10:43'),('96426af0-750a-11eb-b9dc-5bda7d5ca2f3','Whata Great Gun ','Quarto de Milha','Macho','P275055','Jefferson Butti Abbud','Clemerson Gomes Barbalho','Alazão','2017-01-09T11:31:00.000Z','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','2021-02-22 12:36:29','2021-02-22 12:36:29'),('98f86390-7554-11eb-bc90-1b7eb9d62624','Gunna Chex Her Out','QM','Macho','0917608','Thomaz Luiz Cabral de Menezes','Thomaz Luiz Cabral de Menezes','Baio','2017-10-30T02:00:00.000Z','f024f410-754c-11eb-bc90-1b7eb9d62624','2021-02-22 21:26:16','2021-02-22 21:26:16'),('99b0e580-7551-11eb-bc90-1b7eb9d62624','SMART TOP BUCK TE','QM','Macho','P266698','ULYSSES MARCELO FORNETTI','GUSTAVO BRUNO SICILIANO/JOÃO AVELINO LEAL','Castanho','2017-07-31T03:00:00.000Z','6700ef00-7550-11eb-bc90-1b7eb9d62624','2021-02-22 21:04:49','2021-02-22 21:04:49'),('9be4e3e0-754e-11eb-bc90-1b7eb9d62624','MISS GUN IT PINE','QM','Femea','P296352','THOMAZ LUIZ CABRAL MENEZES','THOMAZ LUIZ CABRAL MENEZES','Castanho','2017-07-09T03:00:00.000Z','f024f410-754c-11eb-bc90-1b7eb9d62624','2021-02-22 20:43:24','2021-02-22 20:43:24'),('9ca0b7d0-7082-11eb-ab89-2b7bf2bb7717','MOSI RED GUNNER','QM','Macho','P238869','Thais Murat Nalesso de Almeida','Antonio Candido de Oliveira','Alazão','2016-07-24T18:12:00.000Z','7717a5a0-5bec-11eb-86a2-db4046fd5ae1','2021-02-16 18:13:04','2021-02-16 18:13:04'),('9d4c24c0-5cd3-11eb-86a2-db4046fd5ae1','CARTINA STEP SWR','QM','Femea','P280917','marcio antonio de carvalho','marcio antonio de carvalho','Baio Amarilho','2017-11-05T16:12:00.000Z','4751b730-5cd1-11eb-86a2-db4046fd5ae1','2021-01-22 17:02:31','2021-01-22 17:02:31'),('9fbab070-5be6-11eb-86a2-db4046fd5ae1','genessee gunner','QM','Macho','P271254','antonio candido de oliveira','antonio candido de oliveira','Rosilho','2018-10-08T12:44:00.000Z','05124060-5be6-11eb-86a2-db4046fd5ae1','2021-01-21 12:46:04','2021-01-21 12:46:04'),('a0fecb80-7548-11eb-bc90-1b7eb9d62624','Starbucks Gamay','Quarto de Milha','Macho','P245908','Ulysses Marcelo Fornetti','José Roberto Santo André ','Alazão','2016-10-29T18:58:00.000Z','5daac3b0-6fb8-11eb-ab89-2b7bf2bb7717','2021-02-22 20:00:36','2021-02-22 20:00:36'),('a5eaf590-7504-11eb-b9dc-5bda7d5ca2f3','Rooster Tru Pepto','Quarto de Milha','Macho','0817005','Gustavo Galvão de França Pacheco','Jose Ferreira de Andrade','Baio Amarilho','2015-11-04T09:49:00.000Z','c7aa2b00-7500-11eb-b9dc-5bda7d5ca2f3','2021-02-22 11:53:58','2021-02-22 11:53:58'),('a7564df0-751b-11eb-b9dc-5bda7d5ca2f3','TR SHORTY','QUARTO DE MILHA','Macho','0770878','LUIS ANTÔNIO MORAES RIBEIRO','LUIS ANTÔNIO MORAES RIBEIRO','Castanho','2014-11-16T02:00:00.000Z','cf8e0d70-750d-11eb-b9dc-5bda7d5ca2f3','2021-02-22 14:38:39','2021-02-22 14:38:39'),('a9cc2990-5ca9-11eb-86a2-db4046fd5ae1','MISS ROYAL DREAMS','QM','Femea','P250647','GUILHERME MONTEIRO DE MELLO','GUILHERME MONTEIRO DE MELLO','Tordilho','2016-09-19T03:00:00.000Z','69e84140-5c06-11eb-86a2-db4046fd5ae1','2021-01-22 12:02:13','2021-01-22 12:02:13'),('afa4c0d0-5bf4-11eb-86a2-db4046fd5ae1','Nagata Boy','QM','Femea','275884','Eilinco Administração e Gestão Patrimonial LTDA','Jefferson Butti Abbud','Alazão','2017-08-25T14:21:00.000Z','122d6430-5bf2-11eb-86a2-db4046fd5ae1','2021-01-21 14:26:44','2021-01-21 14:26:44'),('b1a5b430-5be4-11eb-86a2-db4046fd5ae1','leotie big gunner','QM','Femea','P218976','antonio candido de oliveira','antonio candido de oliveira','Baio Amarilho','2015-11-09T11:28:00.000Z','fbd72e30-5bdf-11eb-86a2-db4046fd5ae1','2021-01-21 12:32:15','2021-01-21 12:32:15'),('b5e2b960-7545-11eb-bc90-1b7eb9d62624','Jack Starstruck UMF','Quarto de Milha','Macho','P276564','Ulysses MarceloFornetti','Ulysses Marcelo Fornetti','Baio','2017-10-13T19:32:00.000Z','5daac3b0-6fb8-11eb-ab89-2b7bf2bb7717','2021-02-22 19:39:42','2021-02-22 19:39:42'),('bc451e60-7572-11eb-bc90-1b7eb9d62624','Whiz h20','QM','Macho','NC','Gilson Paulo Vendrame','Gilson Paulo Vendrame','Alazão','2013-01-01T23:59:00.000Z','db0f2850-7571-11eb-bc90-1b7eb9d62624','2021-02-23 01:02:01','2021-02-23 01:02:01'),('c211cd35-8377-46cd-993c-c35036793241','BIG WARRIOR','QM','Macho','P231264','MEDALHA DE OURO EVENTOS ARTISTICOS S/C LTDA','MEDALHA DE OURO EVENTOS ARTISTICOS S/C LTDA','Alazão Tostado','2015-11-19T09:56:00.000Z','58e47060-5be0-11eb-86a2-db4046fd5ae1','2021-01-21 09:56:44','2021-01-21 09:56:44'),('c382d4d0-6d73-11eb-86a2-db4046fd5ae1','teste','QM','Macho','P103198','GUILHERME MONTEIRO DE MELLO','GUILHERME MONTEIRO DE MELLO','Perlino','2018-02-12T19:48:00.000Z','fa4fd010-5bcd-11eb-86a2-db4046fd5ae1','2021-02-12 20:49:13','2021-02-12 20:49:13'),('c4742b80-5cd1-11eb-86a2-db4046fd5ae1','SNIPPIN ON SUNSHINE','QM','Femea','p206345','marcio antonio de carvalho','CINDER LAKERS RANCH LLC','Castanho','2014-01-09T15:59:00.000Z','4751b730-5cd1-11eb-86a2-db4046fd5ae1','2021-01-22 16:49:17','2021-01-22 16:49:17'),('c6a1f710-7532-11eb-b9dc-5bda7d5ca2f3','FLOCKFACEBUCK','QUARTO DE MILHA','Macho','0905562','GIOVANI SOLDANI XAVIER','PAULO AFONSO LEITE','Baio','2017-07-30T03:00:00.000Z','cf8e0d70-750d-11eb-b9dc-5bda7d5ca2f3','2021-02-22 17:24:10','2021-02-22 17:24:10'),('c6e1c330-7506-11eb-b9dc-5bda7d5ca2f3','Gunner Spook','Quarto de Milha','Macho','P210702','Jefferson Butti Abbud','Gilmar Mandotti Garcia','Alazão','2014-12-26T11:05:00.000Z','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','2021-02-22 12:09:13','2021-02-22 12:09:13'),('c79371e0-7504-11eb-b9dc-5bda7d5ca2f3','Justin Boy','Quarto de Milha','Macho','P206568','Jefferson Butti Abbud','Jefferson Butti Abbud','Castanho','2014-12-11T10:51:00.000Z','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','2021-02-22 11:54:55','2021-02-22 11:54:55'),('cd01dbf0-751b-11eb-b9dc-5bda7d5ca2f3','EXOTIC GUN QUESTION','QUARTO DE MILHA','Femea','0811301','FRANCISCO LEONARDO GALASTRI','LAURA CAROLINA GUIMARAES RIBEIRO','Alazão','2015-10-09T03:00:00.000Z','cf8e0d70-750d-11eb-b9dc-5bda7d5ca2f3','2021-02-22 14:39:42','2021-02-22 14:39:42'),('cfacdfe0-5c7e-11eb-86a2-db4046fd5ae1','Woodstock Top Gun ','Qm','Macho','P262629','Letícia Farina Cândido de Oliveira ','Letícia Farina Cândido de Oliveira ','Alazão','2017-11-28T05:56:00.000Z','1ac6bbb0-5c46-11eb-86a2-db4046fd5ae1','2021-01-22 06:55:28','2021-01-22 06:55:28'),('d5448c20-7568-11eb-bc90-1b7eb9d62624','Evident Ace Whiz ','Qm','Macho','P169792','Antonio Candido de Oliveira ','Antônio Candido de Oliveira ','Castanho','2012-08-30T23:52:00.000Z','78310860-7568-11eb-bc90-1b7eb9d62624','2021-02-22 23:51:08','2021-02-22 23:51:08'),('d7f5fdb0-74fe-11eb-b9dc-5bda7d5ca2f3','DEACON LITTLE CIELO','QUARTO DE MILHA','Macho','P185026','SANDRA BABICK','SANDRA BABICK','Castanho','2013-09-17T11:09:00.000Z','5eda3a00-74fd-11eb-b9dc-5bda7d5ca2f3','2021-02-22 11:12:25','2021-02-22 11:12:25'),('dad32aa0-6d77-11eb-86a2-db4046fd5ae1','WHIZ\'N DUN IT','QM','Macho','P137979','LETICIA FARINA CÂNDIDO DE OLIVEIRA','REGINALDO M ROSA/SÉRGIO A P CAMPOS','Castanho','2009-09-17T21:17:00.000Z','fbd72e30-5bdf-11eb-86a2-db4046fd5ae1','2021-02-12 21:18:30','2021-02-12 21:18:30'),('dc0dec90-7522-11eb-b9dc-5bda7d5ca2f3','Summertime Tag','QM','Macho','P218257','Francisco Emilio Costa de Moura','Tripol Ranch','Baio Amarilho','2015-10-31T14:27:00.000Z','02669ff0-7522-11eb-b9dc-5bda7d5ca2f3','2021-02-22 15:30:14','2021-02-22 15:30:14'),('e0a40360-750a-11eb-b9dc-5bda7d5ca2f3','Ninna Boy','Quarto de Milha','Femea','P259988','Jefferson Butti Abbud','Jefferson Butti Abbud','Alazão','2017-08-05T12:36:00.000Z','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','2021-02-22 12:38:34','2021-02-22 12:38:34'),('e15ade40-5c06-11eb-86a2-db4046fd5ae1','GALLO DEL TERRA','QM','Macho','P103198','GUILHERME MONTEIRO DE MELLO','RALPH LIMA TERRA','Castanho','2005-11-30T15:35:00.000Z','69e84140-5c06-11eb-86a2-db4046fd5ae1','2021-01-21 16:36:58','2021-01-21 16:36:58'),('e2a761f0-7561-11eb-bc90-1b7eb9d62624','SHOOTING ROOSTER','QM','Femea','P267640','JOSE ROBERTO SANTO ANDRE','JOSE ROBERTO SANTO ANDRE','Baio','2017-09-27T03:00:00.000Z','2cda9840-746e-11eb-ab89-2b7bf2bb7717','2021-02-22 23:01:23','2021-02-22 23:01:23'),('e631e0e0-7082-11eb-ab89-2b7bf2bb7717','GUN STAR BUCK','QM','Macho','P250486','Pedro Bertinato Ribaldo','Ubere Agropecuária EIRELI','Alazão','2016-10-07T18:13:00.000Z','7717a5a0-5bec-11eb-86a2-db4046fd5ae1','2021-02-16 18:15:07','2021-02-16 18:15:07'),('e75eeb00-756b-11eb-bc90-1b7eb9d62624','DEE WHIZ GIRL','QM','Femea','P224011','LEANDRO ERNESTO DALL AGNOLO','PAULO AFONSO LEITE','Baio Amarilho','2016-04-29T00:11:00.000Z','2cccc5a0-756b-11eb-bc90-1b7eb9d62624','2021-02-23 00:13:06','2021-02-23 00:13:06'),('efaf5440-755f-11eb-bc90-1b7eb9d62624','JR Country Dandy Doc','quarto de milha','Macho','P136363','Fabianna Rando Ruman','Jose Renato Gomes Pereira Moreira','Castanho','2008-08-20T22:44:00.000Z','35545660-755d-11eb-bc90-1b7eb9d62624','2021-02-22 22:47:26','2021-02-22 22:47:26'),('f4147890-755e-11eb-bc90-1b7eb9d62624','don´t touch my gun','quarto de milha','Macho','P220354','Renata Mauri Ricci','Renata Mauri Ricci','Alazão','2014-07-29T22:35:00.000Z','35545660-755d-11eb-bc90-1b7eb9d62624','2021-02-22 22:40:24','2021-02-22 22:40:24'),('f7ea2540-5bce-11eb-86a2-db4046fd5ae1','Teste','teste','Macho','teste','teste','teste','Castanho','2021-01-20T09:56:00.000Z','fa4fd010-5bcd-11eb-86a2-db4046fd5ae1','2021-01-21 09:56:44','2021-01-21 09:56:44'),('f8cf7720-7533-11eb-b9dc-5bda7d5ca2f3','STEPPIN ON ANDY','Puro de Origem','Macho','P258002','Thomaz Luiz Cabral de Menezes','Thomaz Luiz Cabral de Menezes','Baio','2013-11-05T16:30:00.000Z','0a4aca20-72b6-11eb-ab89-2b7bf2bb7717','2021-02-22 17:32:44','2021-02-22 17:32:44'),('fa460870-6fcb-11eb-ab89-2b7bf2bb7717','Saphary Hollygun QR','QM','Macho','P237285','Beatriz Lara Resende','ABELARDO FERREIRA MENDES','Castanho','2016-09-19T20:22:00.000Z','045e1150-6fcb-11eb-ab89-2b7bf2bb7717','2021-02-15 20:25:43','2021-02-15 20:25:43'),('fc59d030-7550-11eb-bc90-1b7eb9d62624','STARBUCKS GAMAY','QM','Macho','P245908','ULYSSES MARCELO FORNETTI','JOSE ROBERTO SANTO ANDRE','Alazão','2016-10-29T02:00:00.000Z','6700ef00-7550-11eb-bc90-1b7eb9d62624','2021-02-22 21:00:25','2021-02-22 21:00:25'),('fe8d66f0-72bc-11eb-ab89-2b7bf2bb7717','Thunderbird Dunit','Quarto de milha','Femea','P239919','Marcus Antônio Pereira Junior','André Tripoloni','Alazão','2016-11-18T13:13:00.000Z','122d6430-5bf2-11eb-86a2-db4046fd5ae1','2021-02-19 14:16:01','2021-02-19 14:16:01');
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES ('a272ce3d-586d-11eb-abde-0242ac110003','NCCR1','2021-01-21 04:31:15','2021-01-21 04:31:15');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `maneuver_1` varchar(255) NOT NULL DEFAULT '-',
  `maneuver_2` varchar(255) NOT NULL DEFAULT '-',
  `maneuver_3` varchar(255) NOT NULL DEFAULT '-',
  `maneuver_4` varchar(255) NOT NULL DEFAULT '-',
  `maneuver_5` varchar(255) NOT NULL DEFAULT '-',
  `maneuver_6` varchar(255) NOT NULL DEFAULT '-',
  `maneuver_7` varchar(255) NOT NULL DEFAULT '-',
  `maneuver_8` varchar(255) NOT NULL DEFAULT '-',
  `penalty_1` varchar(255) NOT NULL DEFAULT '-',
  `penalty_2` varchar(255) NOT NULL DEFAULT '-',
  `penalty_3` varchar(255) NOT NULL DEFAULT '-',
  `penalty_4` varchar(255) NOT NULL DEFAULT '-',
  `penalty_5` varchar(255) NOT NULL DEFAULT '-',
  `penalty_6` varchar(255) NOT NULL DEFAULT '-',
  `penalty_7` varchar(255) NOT NULL DEFAULT '-',
  `penalty_8` varchar(255) NOT NULL DEFAULT '-',
  `judge_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `subscription_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_id` (`judge_id`),
  CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES ('2ca4a34a-7b54-11eb-b7bc-9829a6e4327f','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','0ab9091d-76f5-11eb-a908-9829a6e4327f','2021-03-02 09:38:21','2021-03-02 09:38:21','8c9dcd70-7544-11eb-bc90-1b7eb9d62624'),('3261230b-7b54-11eb-b7bc-9829a6e4327f','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','0ab9091d-76f5-11eb-a908-9829a6e4327f','2021-03-02 09:38:31','2021-03-02 09:38:31','7ae008c0-6d86-11eb-86a2-db4046fd5ae1'),('33389f21-7b54-11eb-b7bc-9829a6e4327f','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','0ab9091d-76f5-11eb-a908-9829a6e4327f','2021-03-02 09:38:33','2021-03-02 09:38:33','67b6d910-7572-11eb-bc90-1b7eb9d62624'),('452fdcf4-7b54-11eb-b7bc-9829a6e4327f','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','0ab9091d-76f5-11eb-a908-9829a6e4327f','2021-03-02 09:39:03','2021-03-02 09:39:03','f64040c0-7533-11eb-b9dc-5bda7d5ca2f3'),('47b0aa85-7b54-11eb-b7bc-9829a6e4327f','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','0ab9091d-76f5-11eb-a908-9829a6e4327f','2021-03-02 09:39:07','2021-03-02 09:39:07','9d97ebe0-751e-11eb-b9dc-5bda7d5ca2f3'),('491c1eae-7b54-11eb-b7bc-9829a6e4327f','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','0ab9091d-76f5-11eb-a908-9829a6e4327f','2021-03-02 09:39:09','2021-03-02 09:39:09','c1d4ec40-5be4-11eb-86a2-db4046fd5ae1'),('4a1fa045-7b54-11eb-b7bc-9829a6e4327f','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','0ab9091d-76f5-11eb-a908-9829a6e4327f','2021-03-02 09:39:11','2021-03-02 09:39:11','a6326ba0-5be6-11eb-86a2-db4046fd5ae1'),('4b9fd533-7b54-11eb-b7bc-9829a6e4327f','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','0ab9091d-76f5-11eb-a908-9829a6e4327f','2021-03-02 09:39:14','2021-03-02 09:39:14','51acb1c0-7514-11eb-b9dc-5bda7d5ca2f3');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `grades_AFTER_INSERT` AFTER INSERT ON `grades` FOR EACH ROW BEGIN
       update runner_turn set grade_id = new.id where runner_id = 1; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `judges`
--

DROP TABLE IF EXISTS `judges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judges` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `number` int NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `judges_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judges`
--

LOCK TABLES `judges` WRITE;
/*!40000 ALTER TABLE `judges` DISABLE KEYS */;
INSERT INTO `judges` VALUES ('0ab9091d-76f5-11eb-a908-9829a6e4327f',1,'eaabd220-5bfb-11eb-86a2-db4046fd5ae1','2021-02-24 23:07:18','2021-02-24 23:07:18');
/*!40000 ALTER TABLE `judges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phones`
--

DROP TABLE IF EXISTS `phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phones` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `number` varchar(255) NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `phones_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phones`
--

LOCK TABLES `phones` WRITE;
/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` VALUES ('09bdb0e0-751d-11eb-b9dc-5bda7d5ca2f3','(00) 9 0000-0000','e29e6ea0-751c-11eb-b9dc-5bda7d5ca2f3','2021-02-22 14:48:34','2021-02-22 14:48:34'),('09e67f50-7501-11eb-b9dc-5bda7d5ca2f3','(00) 9 0000-0000','c7aa2b00-7500-11eb-b9dc-5bda7d5ca2f3','2021-02-22 11:28:08','2021-02-22 11:28:08'),('0a818b40-5bf1-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','ddfd5d60-5bf0-11eb-86a2-db4046fd5ae1','2021-01-21 14:00:38','2021-01-21 14:00:38'),('12263d70-5be0-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','fbd72e30-5bdf-11eb-86a2-db4046fd5ae1','2021-01-21 11:59:10','2021-01-21 11:59:10'),('18fff3f0-5bce-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','fa4fd010-5bcd-11eb-86a2-db4046fd5ae1','2021-01-21 09:50:30','2021-01-21 09:50:30'),('1a1d0670-5bff-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','05865590-5bff-11eb-86a2-db4046fd5ae1','2021-01-21 15:41:17','2021-01-21 15:41:17'),('1ce8da00-5be6-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','05124060-5be6-11eb-86a2-db4046fd5ae1','2021-01-21 12:42:25','2021-01-21 12:42:25'),('1d5bce20-5cf9-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','0c9007f0-5cf9-11eb-86a2-db4046fd5ae1','2021-01-22 21:30:57','2021-01-22 21:30:57'),('23967800-6fcb-11eb-ab89-2b7bf2bb7717','(00) 9 0000-0000','045e1150-6fcb-11eb-ab89-2b7bf2bb7717','2021-02-15 20:19:43','2021-02-15 20:19:43'),('24e9e290-5c0d-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','db427260-5c0c-11eb-86a2-db4046fd5ae1','2021-01-21 17:21:48','2021-01-21 17:21:48'),('27eba9a0-5cf9-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','0c9007f0-5cf9-11eb-86a2-db4046fd5ae1','2021-01-22 21:31:15','2021-01-22 21:31:15'),('3e14f1f0-7522-11eb-b9dc-5bda7d5ca2f3','(00) 9 0000-0000','02669ff0-7522-11eb-b9dc-5bda7d5ca2f3','2021-02-22 15:25:49','2021-02-22 15:25:49'),('3e28aec0-72b6-11eb-ab89-2b7bf2bb7717','(00) 9 0000-0000','0a4aca20-72b6-11eb-ab89-2b7bf2bb7717','2021-02-19 13:27:41','2021-02-19 13:27:41'),('4785a730-5ccb-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','f90dea40-5cca-11eb-86a2-db4046fd5ae1','2021-01-22 16:02:51','2021-01-22 16:02:51'),('4a9131f0-7513-11eb-b9dc-5bda7d5ca2f3','(00) 9 0000-0000','d7c221d0-7511-11eb-b9dc-5bda7d5ca2f3','2021-02-22 13:38:48','2021-02-22 13:38:48'),('53ceb6f0-5c74-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','2bf52560-5c74-11eb-86a2-db4046fd5ae1','2021-01-22 05:40:25','2021-01-22 05:40:25'),('5910d280-7545-11eb-bc90-1b7eb9d62624','(00) 9 0000-0000','0611b8b0-7545-11eb-bc90-1b7eb9d62624','2021-02-22 19:37:07','2021-02-22 19:37:07'),('5a92fd90-5c4a-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','482cc140-5c4a-11eb-86a2-db4046fd5ae1','2021-01-22 00:39:58','2021-01-22 00:39:58'),('61184820-5c5c-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','eaabd220-5bfb-11eb-86a2-db4046fd5ae1','2021-01-22 02:49:00','2021-01-22 02:49:00'),('7567f930-6fc9-11eb-ab89-2b7bf2bb7717','(00) 9 0000-0000','58f67ab0-6fc9-11eb-ab89-2b7bf2bb7717','2021-02-15 20:07:41','2021-02-15 20:07:41'),('763886b0-5be0-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','58e47060-5be0-11eb-86a2-db4046fd5ae1','2021-01-21 12:01:57','2021-01-21 12:01:57'),('77279340-6fb8-11eb-ab89-2b7bf2bb7717','(00) 9 0000-0000','5daac3b0-6fb8-11eb-ab89-2b7bf2bb7717','2021-02-15 18:06:02','2021-02-15 18:06:02'),('7d129730-5cd2-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','4751b730-5cd1-11eb-86a2-db4046fd5ae1','2021-01-22 16:54:27','2021-01-22 16:54:27'),('7d344280-5c2e-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','eaabd220-5bfb-11eb-86a2-db4046fd5ae1','2021-01-21 21:20:30','2021-01-21 21:20:30'),('7f4808c0-5ba9-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','bd290420-5ba7-11eb-85d3-41d12161e99f','2021-01-21 05:28:30','2021-01-21 05:28:30'),('8ba9f7e0-6eff-11eb-ab89-2b7bf2bb7717','(00) 9 0000-0000','199827d0-6eff-11eb-ab89-2b7bf2bb7717','2021-02-14 20:02:20','2021-02-14 20:02:20'),('9330d670-7510-11eb-b9dc-5bda7d5ca2f3','(00) 9 0000-0000','b3576f30-73c7-11eb-ab89-2b7bf2bb7717','2021-02-22 13:19:21','2021-02-22 13:19:21'),('9b62bf60-74fd-11eb-b9dc-5bda7d5ca2f3','(00) 9 0000-0000','5eda3a00-74fd-11eb-b9dc-5bda7d5ca2f3','2021-02-22 11:03:34','2021-02-22 11:03:34'),('a1ce5800-714c-11eb-ab89-2b7bf2bb7717','(00) 9 0000-0000','601d9d90-706a-11eb-ab89-2b7bf2bb7717','2021-02-17 18:19:11','2021-02-17 18:19:11'),('ab3a8fa0-5c46-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','1ac6bbb0-5c46-11eb-86a2-db4046fd5ae1','2021-01-22 00:13:35','2021-01-22 00:13:35'),('bb93f680-7464-11eb-ab89-2b7bf2bb7717','(00) 9 0000-0000','a0540fa0-7463-11eb-ab89-2b7bf2bb7717','2021-02-21 16:49:15','2021-02-21 16:49:15'),('c4b14870-72b2-11eb-ab89-2b7bf2bb7717','(00) 9 0000-0000','95a5d370-72b2-11eb-ab89-2b7bf2bb7717','2021-02-19 13:02:49','2021-02-19 13:02:49'),('ceef6340-5c31-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','ba05b060-5c31-11eb-86a2-db4046fd5ae1','2021-01-21 21:44:15','2021-01-21 21:44:15'),('d03a7b20-5bd4-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','bc1529b0-5bd4-11eb-86a2-db4046fd5ae1','2021-01-21 10:38:34','2021-01-21 10:38:34'),('d1bfa7a0-5bec-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','7717a5a0-5bec-11eb-86a2-db4046fd5ae1','2021-01-21 13:30:25','2021-01-21 13:30:25'),('d5e29fb0-72dd-11eb-ab89-2b7bf2bb7717','(00) 9 0000-0000','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','2021-02-19 18:11:06','2021-02-19 18:11:06'),('e0c26ff0-72dd-11eb-ab89-2b7bf2bb7717','(00) 9 0000-0000','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','2021-02-19 18:11:24','2021-02-19 18:11:24'),('e1e2ad00-72dd-11eb-ab89-2b7bf2bb7717','(00) 9 0000-0000','770fb8b0-72dd-11eb-ab89-2b7bf2bb7717','2021-02-19 18:11:26','2021-02-19 18:11:26'),('ee0a7c90-5bf2-11eb-86a2-db4046fd5ae1','(00) 9 0000-0000','122d6430-5bf2-11eb-86a2-db4046fd5ae1','2021-01-21 14:14:09','2021-01-21 14:14:09'),('f1fa9d10-750d-11eb-b9dc-5bda7d5ca2f3','(00) 9 0000-0000','cf8e0d70-750d-11eb-b9dc-5bda7d5ca2f3','2021-02-22 13:00:31','2021-02-22 13:00:31'),('f7bd60b0-709a-11eb-ab89-2b7bf2bb7717','(00) 9 0000-0000','e087ea10-708f-11eb-ab89-2b7bf2bb7717','2021-02-16 21:07:24','2021-02-16 21:07:24');
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `runner_turn`
--

DROP TABLE IF EXISTS `runner_turn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `runner_turn` (
  `runner_id` int NOT NULL,
  `grade_id` char(36) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`runner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `runner_turn`
--

LOCK TABLES `runner_turn` WRITE;
/*!40000 ALTER TABLE `runner_turn` DISABLE KEYS */;
INSERT INTO `runner_turn` VALUES (1,'4b9fd533-7b54-11eb-b7bc-9829a6e4327f','Amador');
/*!40000 ALTER TABLE `runner_turn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20200213035429-create-users-table.js'),('20200216175328-create-files-table.js'),('20200216181351-add-avatar-field-to-users.js'),('20201231220342-create-animals-table.js'),('20201231220524-create-addresses-table.js'),('20201231220525-create-phones-table.js'),('20201231220820-create-events-table.js'),('20201231220830-create-tracks-table.js'),('20201231220835-create-subscriptions-table.js'),('20210103020636-create-judges-table.js'),('20210103020841-create-grades-table.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `level_1` tinyint(1) NOT NULL,
  `level_2` tinyint(1) NOT NULL,
  `level_3` tinyint(1) NOT NULL,
  `level_4` tinyint(1) NOT NULL,
  `oe` int DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Aguardando Pagamento',
  `category` varchar(255) NOT NULL,
  `track_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `animal_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `event_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `track_id` (`track_id`),
  KEY `animal_id` (`animal_id`),
  KEY `user_id` (`user_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `subscriptions_ibfk_2` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `subscriptions_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `subscriptions_ibfk_4` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES ('05df5580-72bd-11eb-ab89-2b7bf2bb7717',0,1,1,1,1,'Pagamento Confirmado','Aberta',NULL,'fe8d66f0-72bc-11eb-ab89-2b7bf2bb7717','122d6430-5bf2-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-19 14:16:13','2021-02-19 14:16:13'),('08edaa20-7532-11eb-b9dc-5bda7d5ca2f3',0,1,1,1,5,'Aguardando Pagamento','Pré Futurity Aberta',NULL,'09d18700-751d-11eb-b9dc-5bda7d5ca2f3','fdfe91a0-7573-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 17:18:52','2021-02-22 17:18:52'),('103a13e0-7505-11eb-b9dc-5bda7d5ca2f3',0,0,0,1,2,'Pagamento Confirmado','Aberta',NULL,'c79371e0-7504-11eb-b9dc-5bda7d5ca2f3','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 11:56:57','2021-02-22 11:56:57'),('13217a60-751b-11eb-b9dc-5bda7d5ca2f3',0,0,0,0,1,'Pagamento Confirmado','Treino Pago',NULL,'c6e1c330-7506-11eb-b9dc-5bda7d5ca2f3','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 14:34:31','2021-02-22 14:34:31'),('16b0ed40-5cb2-11eb-86a2-db4046fd5ae1',0,1,1,1,10,'Pagamento confirmado','Amador',NULL,'17a991d0-5c75-11eb-86a2-db4046fd5ae1','2bf52560-5c74-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-22 13:02:31','2021-01-22 13:02:31'),('192b3a10-7532-11eb-b9dc-5bda7d5ca2f3',0,0,1,1,3,'Aguardando Pagamento','Aberta',NULL,'a7564df0-751b-11eb-b9dc-5bda7d5ca2f3','cf8e0d70-750d-11eb-b9dc-5bda7d5ca2f3','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 17:19:19','2021-02-22 17:19:19'),('1a10a750-754e-11eb-bc90-1b7eb9d62624',0,0,0,0,NULL,'Pagamento Confirmado','Passeio',NULL,'12af0150-754e-11eb-bc90-1b7eb9d62624','f024f410-754c-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 20:39:47','2021-02-22 20:39:47'),('1b395190-70a8-11eb-ab89-2b7bf2bb7717',0,0,0,0,1,'Pagamento Confirmado','Amador Iniciante',NULL,'13e6edd0-70a8-11eb-ab89-2b7bf2bb7717','482cc140-5c4a-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-16 22:41:27','2021-02-16 22:41:27'),('1c21d940-5cd2-11eb-86a2-db4046fd5ae1',1,0,0,0,NULL,'Cancelada','Aberta N1',NULL,'c4742b80-5cd1-11eb-86a2-db4046fd5ae1','4751b730-5cd1-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-22 16:51:44','2021-01-22 16:51:44'),('1cd09e90-7536-11eb-b9dc-5bda7d5ca2f3',1,0,0,0,NULL,'Cancelada','Armador N1',NULL,'f8cf7720-7533-11eb-b9dc-5bda7d5ca2f3','0a4aca20-72b6-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 17:48:03','2021-02-22 17:48:03'),('1d34d420-5c07-11eb-86a2-db4046fd5ae1',1,0,0,0,2,'Pagamento Confirmado','Aberta N1',NULL,'e15ade40-5c06-11eb-86a2-db4046fd5ae1','69e84140-5c06-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-21 16:38:38','2021-01-21 16:38:38'),('1e00cb20-6f99-11eb-ab89-2b7bf2bb7717',0,1,1,1,4,'Pagamento Confirmado','Aberta',NULL,'16170960-6f99-11eb-ab89-2b7bf2bb7717','f90dea40-5cca-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-15 14:21:38','2021-02-15 14:21:38'),('1e3cfca0-7532-11eb-b9dc-5bda7d5ca2f3',0,0,1,1,23,'Aguardando Pagamento','Aberta',NULL,'cd01dbf0-751b-11eb-b9dc-5bda7d5ca2f3','cf8e0d70-750d-11eb-b9dc-5bda7d5ca2f3','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 17:19:28','2021-02-22 17:19:28'),('21386490-5e84-11eb-86a2-db4046fd5ae1',0,0,1,1,5,'Aguardando Pagamento','Aberta',NULL,'c211cd35-8377-46cd-993c-c35036793241','58e47060-5be0-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-24 20:38:35','2021-01-24 20:38:35'),('22611060-751d-11eb-b9dc-5bda7d5ca2f3',0,0,0,0,NULL,'Pagamento Confirmado','Passeio',NULL,'e0a40360-750a-11eb-b9dc-5bda7d5ca2f3','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 14:49:15','2021-02-22 14:49:15'),('232936a0-7502-11eb-b9dc-5bda7d5ca2f3',0,0,0,1,6,'Aguardando pagamento','Aberta',NULL,'17ccbc50-7502-11eb-b9dc-5bda7d5ca2f3','2cda9840-746e-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 11:36:00','2021-02-22 11:36:00'),('23693af0-7504-11eb-b9dc-5bda7d5ca2f3',0,0,0,1,24,'Pagamento Confirmado','Aberta',NULL,'022acb10-7504-11eb-b9dc-5bda7d5ca2f3','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 11:50:19','2021-02-22 11:50:19'),('23f9fb20-5c4b-11eb-86a2-db4046fd5ae1',0,0,0,0,6,'Pagamento confirmado','Amador Iniciante',NULL,'1b510810-5c4b-11eb-86a2-db4046fd5ae1','482cc140-5c4a-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-22 00:45:36','2021-01-22 00:45:36'),('24a0e1b0-7532-11eb-b9dc-5bda7d5ca2f3',0,0,1,1,6,'Aguardando Pagamento','Pré Futurity Aberta',NULL,'60d2bd90-751c-11eb-b9dc-5bda7d5ca2f3','cf8e0d70-750d-11eb-b9dc-5bda7d5ca2f3','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 17:19:38','2021-02-22 17:19:38'),('25b6bdb0-7562-11eb-bc90-1b7eb9d62624',0,0,0,0,NULL,'Aguardando Pagamento','Passeio',NULL,'1efc5430-7562-11eb-bc90-1b7eb9d62624','2cda9840-746e-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 23:03:16','2021-02-22 23:03:16'),('27051f60-7551-11eb-bc90-1b7eb9d62624',0,1,1,1,NULL,'Cancelada','Aberta',NULL,'fc59d030-7550-11eb-bc90-1b7eb9d62624','6700ef00-7550-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 21:01:37','2021-02-22 21:01:37'),('2e94c320-7083-11eb-ab89-2b7bf2bb7717',0,0,1,1,NULL,'Cancelada','Aberta',NULL,'e631e0e0-7082-11eb-ab89-2b7bf2bb7717','7717a5a0-5bec-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-16 18:17:08','2021-02-16 18:17:08'),('31e690a0-5e84-11eb-86a2-db4046fd5ae1',0,1,1,1,NULL,'Cancelada','Aberta',NULL,'652605dd-a442-41e1-861b-cbd0ec826f45','58e47060-5be0-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-24 20:39:03','2021-01-24 20:39:03'),('32caa170-7561-11eb-bc90-1b7eb9d62624',0,0,1,1,7,'Pagamento Confirmado','Aberta',NULL,'40044790-755e-11eb-bc90-1b7eb9d62624','35545660-755d-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 22:56:28','2021-02-22 22:56:28'),('331e6340-5be5-11eb-86a2-db4046fd5ae1',0,0,1,1,12,'Pagamento confirmado','Amador',NULL,'2a848b60-5be5-11eb-86a2-db4046fd5ae1','fbd72e30-5bdf-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-21 12:35:52','2021-01-21 12:35:52'),('3a85c070-7511-11eb-b9dc-5bda7d5ca2f3',0,0,1,1,NULL,'Cancelada','Aberta',NULL,'2f2bd3a0-7510-11eb-b9dc-5bda7d5ca2f3','b3576f30-73c7-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 13:24:02','2021-02-22 13:24:02'),('3eaca8b0-5bf5-11eb-86a2-db4046fd5ae1',0,0,0,0,1,'Pagamento confirmado','Pré Futurity Aberta',NULL,'afa4c0d0-5bf4-11eb-86a2-db4046fd5ae1','122d6430-5bf2-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-21 14:30:44','2021-01-21 14:30:44'),('422b79b0-72b3-11eb-ab89-2b7bf2bb7717',1,0,0,0,3,'Pagamento Confirmado','Aberta N1',NULL,'3abfe8a0-72b3-11eb-ab89-2b7bf2bb7717','95a5d370-72b2-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-19 13:06:19','2021-02-19 13:06:19'),('42f50d10-5c7f-11eb-86a2-db4046fd5ae1',0,1,1,1,8,'Pagamento Confirmado','Aberta',NULL,'3dced820-5c7f-11eb-86a2-db4046fd5ae1','1ac6bbb0-5c46-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-22 06:58:41','2021-01-22 06:58:41'),('51acb1c0-7514-11eb-b9dc-5bda7d5ca2f3',0,1,1,1,9,'Pagamento Confirmado','Amador',NULL,'3721f4a0-7514-11eb-b9dc-5bda7d5ca2f3','d7c221d0-7511-11eb-b9dc-5bda7d5ca2f3','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 13:46:09','2021-02-22 13:46:09'),('5396c3f0-5ca9-11eb-86a2-db4046fd5ae1',0,0,0,0,NULL,'Pagamento Confirmado','Passeio',NULL,'4b032da0-5ca9-11eb-86a2-db4046fd5ae1','69e84140-5c06-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-22 11:59:48','2021-01-22 11:59:48'),('59c43340-7561-11eb-bc90-1b7eb9d62624',0,0,1,1,NULL,'Cancelada','Aberta',NULL,'f4147890-755e-11eb-bc90-1b7eb9d62624','35545660-755d-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 22:57:34','2021-02-22 22:57:34'),('5b85d3b0-7551-11eb-bc90-1b7eb9d62624',0,0,0,0,NULL,'Pagamento Confirmado','Passeio',NULL,'57bff210-7551-11eb-bc90-1b7eb9d62624','6700ef00-7550-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 21:03:05','2021-02-22 21:03:05'),('5bbbd3d0-709b-11eb-ab89-2b7bf2bb7717',1,0,0,0,1,'Pagamento Confirmado','Aberta N1',NULL,'471e6c30-709b-11eb-ab89-2b7bf2bb7717','e087ea10-708f-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-16 21:10:12','2021-02-16 21:10:12'),('5c080fc0-7514-11eb-b9dc-5bda7d5ca2f3',0,0,0,1,NULL,'Cancelada','Aberta',NULL,'3721f4a0-7514-11eb-b9dc-5bda7d5ca2f3','d7c221d0-7511-11eb-b9dc-5bda7d5ca2f3','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 13:46:26','2021-02-22 13:46:26'),('5f3d4c60-5bf5-11eb-86a2-db4046fd5ae1',0,0,0,0,7,'Pagamento confirmado','Pré Futurity Aberta',NULL,'1f338f80-5bf5-11eb-86a2-db4046fd5ae1','122d6430-5bf2-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-21 14:31:38','2021-01-21 14:31:38'),('5fa85ba0-754e-11eb-bc90-1b7eb9d62624',0,0,0,0,NULL,'Pagamento Confirmado','Passeio',NULL,'59ac6020-754e-11eb-bc90-1b7eb9d62624','f024f410-754c-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 20:41:43','2021-02-22 20:41:43'),('62352cc0-7569-11eb-bc90-1b7eb9d62624',0,0,0,0,NULL,'Cancelada','Passeio',NULL,'5ca22c40-7569-11eb-bc90-1b7eb9d62624','b3576f30-73c7-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 23:55:04','2021-02-22 23:55:04'),('67b6d910-7572-11eb-bc90-1b7eb9d62624',0,1,1,1,2,'Aguardando Pagamento','Amador',NULL,'40880670-7572-11eb-bc90-1b7eb9d62624','db0f2850-7571-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-23 00:59:39','2021-02-23 00:59:39'),('68123d40-7627-11eb-bc90-1b7eb9d62624',0,1,1,1,9,'Pagamento Confirmado','Aberta',NULL,'8143f5f0-756a-11eb-bc90-1b7eb9d62624','1a408030-756a-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-23 22:35:18','2021-02-23 22:35:18'),('693aa670-7510-11eb-b9dc-5bda7d5ca2f3',0,0,1,1,10,'Pagamento Confirmado','Aberta',NULL,'2f2bd3a0-7510-11eb-b9dc-5bda7d5ca2f3','6700ef00-7550-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 13:18:11','2021-02-22 13:18:11'),('6aa16ac0-7502-11eb-b9dc-5bda7d5ca2f3',0,1,1,1,2,'Pagamento Confirmado','Pré Futurity Aberta',NULL,'5d2a74e0-7502-11eb-b9dc-5bda7d5ca2f3','c7aa2b00-7500-11eb-b9dc-5bda7d5ca2f3','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 11:38:00','2021-02-22 11:38:00'),('6c2522f0-7562-11eb-bc90-1b7eb9d62624',0,0,0,0,NULL,'Aguardando Pagamento','Passeio',NULL,'639fe480-7562-11eb-bc90-1b7eb9d62624','2cda9840-746e-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 23:05:14','2021-02-22 23:05:14'),('6faf2400-7465-11eb-ab89-2b7bf2bb7717',0,1,1,1,4,'Pagamento Confirmado','Amador',NULL,'5f7cdeb0-7465-11eb-ab89-2b7bf2bb7717','a0540fa0-7463-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-21 16:54:17','2021-02-21 16:54:17'),('70616f10-754c-11eb-bc90-1b7eb9d62624',1,0,0,0,NULL,'Pagamento Confirmado','Armador N1',NULL,'4f35eaf0-754c-11eb-bc90-1b7eb9d62624','05f66450-754c-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 20:27:52','2021-02-22 20:27:52'),('71fffc20-7505-11eb-b9dc-5bda7d5ca2f3',0,1,1,1,NULL,'Pagamento Confirmado','Passeio',NULL,'57fbd420-7505-11eb-b9dc-5bda7d5ca2f3','c7aa2b00-7500-11eb-b9dc-5bda7d5ca2f3','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 11:59:41','2021-02-22 11:59:41'),('72b2d8c0-7502-11eb-b9dc-5bda7d5ca2f3',0,0,0,1,11,'Aguardando pagamento','Pré Futurity Aberta',NULL,'6b9b3410-7502-11eb-b9dc-5bda7d5ca2f3','2cda9840-746e-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 11:38:13','2021-02-22 11:38:13'),('72cfa680-7629-11eb-bc90-1b7eb9d62624',0,0,0,0,2,'Pagamento Confirmado','Amador Iniciante',NULL,'694b4790-7629-11eb-bc90-1b7eb9d62624','199827d0-6eff-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-23 22:49:55','2021-02-23 22:49:55'),('7681dac0-7505-11eb-b9dc-5bda7d5ca2f3',0,0,0,1,15,'Pagamento Confirmado','Aberta',NULL,'7015b850-7505-11eb-b9dc-5bda7d5ca2f3','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 11:59:48','2021-02-22 11:59:48'),('76f7e490-7546-11eb-bc90-1b7eb9d62624',0,0,0,0,NULL,'Cancelada','Passeio',NULL,'b5e2b960-7545-11eb-bc90-1b7eb9d62624','5daac3b0-6fb8-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 19:45:06','2021-02-22 19:45:06'),('7ab2d570-7561-11eb-bc90-1b7eb9d62624',0,0,1,1,16,'Pagamento Confirmado','Aberta',NULL,'3e05ea10-755f-11eb-bc90-1b7eb9d62624','35545660-755d-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 22:58:29','2021-02-22 22:58:29'),('7ae008c0-6d86-11eb-86a2-db4046fd5ae1',0,0,1,1,1,'Pagamento Confirmado','Amador',NULL,'dad32aa0-6d77-11eb-86a2-db4046fd5ae1','fbd72e30-5bdf-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-12 23:03:11','2021-02-12 23:03:11'),('7b7ca960-7546-11eb-bc90-1b7eb9d62624',0,0,0,0,2,'Pagamento Confirmado','Treino Pago',NULL,'65edd860-5bd5-11eb-86a2-db4046fd5ae1','bc1529b0-5bd4-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 19:45:14','2021-02-22 19:45:14'),('7f8792d0-7510-11eb-b9dc-5bda7d5ca2f3',1,0,0,0,NULL,'Pagamento Confirmado','Armador N1',NULL,'2f2bd3a0-7510-11eb-b9dc-5bda7d5ca2f3','b3576f30-73c7-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 13:18:48','2021-02-22 13:18:48'),('83438010-7465-11eb-ab89-2b7bf2bb7717',0,0,0,1,21,'Pagamento Confirmado','Aberta',NULL,'5f7cdeb0-7465-11eb-ab89-2b7bf2bb7717','2cda9840-746e-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-21 16:54:50','2021-02-21 16:54:50'),('84e61900-5caa-11eb-86a2-db4046fd5ae1',0,0,0,0,NULL,'Pagamento Confirmado','Passeio',NULL,'7ea3ecc0-5caa-11eb-86a2-db4046fd5ae1','69e84140-5c06-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-22 12:08:20','2021-01-22 12:08:20'),('85db3bb0-7546-11eb-bc90-1b7eb9d62624',0,0,0,0,NULL,'Pagamento Confirmado','Passeio',NULL,'1984dbb0-7546-11eb-bc90-1b7eb9d62624','5daac3b0-6fb8-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 19:45:31','2021-02-22 19:45:31'),('864c2030-5c7f-11eb-86a2-db4046fd5ae1',0,1,1,1,9,'Pagamento Confirmado','Pré Futurity Aberta',NULL,'8109b0b0-5c7f-11eb-86a2-db4046fd5ae1','1ac6bbb0-5c46-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-22 07:00:34','2021-01-22 07:00:34'),('8a5e04d0-714d-11eb-ab89-2b7bf2bb7717',0,0,0,0,3,'Pagamento Confirmado','Amador Iniciante',NULL,'74853700-714d-11eb-ab89-2b7bf2bb7717','601d9d90-706a-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-17 18:25:41','2021-02-17 18:25:41'),('8b119e70-7560-11eb-bc90-1b7eb9d62624',0,0,0,0,NULL,'Cancelada','Amador Iniciante',NULL,'86b4acf0-7560-11eb-bc90-1b7eb9d62624','199827d0-6eff-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 22:51:47','2021-02-22 22:51:47'),('8c9dcd70-7544-11eb-bc90-1b7eb9d62624',1,1,1,1,3,'Pagamento Confirmado','Amador N1',NULL,'043ecdc0-7171-11eb-ab89-2b7bf2bb7717','5daac3b0-6fb8-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 19:31:24','2021-02-22 19:31:24'),('8ea38a80-72bd-11eb-ab89-2b7bf2bb7717',0,1,1,1,18,'Pagamento Confirmado','Aberta',NULL,'813176a0-72bd-11eb-ab89-2b7bf2bb7717','122d6430-5bf2-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-19 14:20:03','2021-02-19 14:20:03'),('91426460-7546-11eb-bc90-1b7eb9d62624',0,0,0,0,NULL,'Pagamento Confirmado','Passeio',NULL,'61eee9e0-7546-11eb-bc90-1b7eb9d62624','5daac3b0-6fb8-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 19:45:51','2021-02-22 19:45:51'),('93700f70-756a-11eb-bc90-1b7eb9d62624',0,0,0,0,3,'Pagamento Confirmado','Treino Pago',NULL,'8143f5f0-756a-11eb-bc90-1b7eb9d62624','1a408030-756a-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-23 00:03:36','2021-02-23 00:03:36'),('96551eb0-7501-11eb-b9dc-5bda7d5ca2f3',0,0,0,1,27,'Aguardando Pagamento','Aberta',NULL,'8939b650-7501-11eb-b9dc-5bda7d5ca2f3','2cda9840-746e-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 11:32:04','2021-02-22 11:32:04'),('979c6f50-72de-11eb-ab89-2b7bf2bb7717',0,1,1,1,17,'Pagamento Confirmado','Aberta',NULL,'75780c40-72de-11eb-ab89-2b7bf2bb7717','770fb8b0-72dd-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-19 18:16:31','2021-02-19 18:16:31'),('9a501870-7561-11eb-bc90-1b7eb9d62624',0,0,1,1,25,'Pagamento Confirmado','Aberta',NULL,'efaf5440-755f-11eb-bc90-1b7eb9d62624','35545660-755d-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 22:59:22','2021-02-22 22:59:22'),('9b130ec0-756b-11eb-bc90-1b7eb9d62624',0,0,0,1,11,'Aguardando Pagamento','Aberta',NULL,'92093700-756b-11eb-bc90-1b7eb9d62624','2cccc5a0-756b-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-23 00:10:58','2021-02-23 00:10:58'),('9d95bd80-7464-11eb-ab89-2b7bf2bb7717',0,0,0,1,4,'Pagamento Confirmado','Pré Futurity Aberta',NULL,'89a16720-7464-11eb-ab89-2b7bf2bb7717','a0540fa0-7463-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-21 16:48:25','2021-02-21 16:48:25'),('9d97ebe0-751e-11eb-b9dc-5bda7d5ca2f3',0,1,1,1,6,'Aguardando Pagamento','Amador',NULL,'91178b00-751e-11eb-b9dc-5bda7d5ca2f3','e29e6ea0-751c-11eb-b9dc-5bda7d5ca2f3','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 14:59:51','2021-02-22 14:59:51'),('9dc950c0-754d-11eb-bc90-1b7eb9d62624',0,0,0,1,12,'Pagamento Confirmado','Aberta',NULL,'668a66d0-754d-11eb-bc90-1b7eb9d62624','f024f410-754c-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 20:36:18','2021-02-22 20:36:18'),('9f37f7c0-7554-11eb-bc90-1b7eb9d62624',0,0,0,0,NULL,'Pagamento Confirmado','Passeio',NULL,'98f86390-7554-11eb-bc90-1b7eb9d62624','f024f410-754c-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 21:26:27','2021-02-22 21:26:27'),('a04ddbf0-7551-11eb-bc90-1b7eb9d62624',0,0,0,0,NULL,'Pagamento Confirmado','Passeio',NULL,'99b0e580-7551-11eb-bc90-1b7eb9d62624','6700ef00-7550-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 21:05:00','2021-02-22 21:05:00'),('a36ed190-709c-11eb-ab89-2b7bf2bb7717',1,0,0,0,5,'Pagamento Confirmado','Aberta N1',NULL,'900ca910-709c-11eb-ab89-2b7bf2bb7717','e087ea10-708f-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-16 21:19:22','2021-02-16 21:19:22'),('a44a72e0-5cc4-11eb-86a2-db4046fd5ae1',1,0,0,0,NULL,'Pagamento Confirmado','Armador N1',NULL,'17a991d0-5c75-11eb-86a2-db4046fd5ae1','2bf52560-5c74-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-22 15:15:20','2021-01-22 15:15:20'),('a535dce0-7113-11eb-ab89-2b7bf2bb7717',0,0,0,0,NULL,'Cancelada','Pré Futurity Aberta',NULL,'9d4c24c0-5cd3-11eb-86a2-db4046fd5ae1','4751b730-5cd1-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-17 11:31:15','2021-02-17 11:31:15'),('a562b120-7082-11eb-ab89-2b7bf2bb7717',0,0,0,0,4,'Pagamento Confirmado','Treino Pago',NULL,'9ca0b7d0-7082-11eb-ab89-2b7bf2bb7717','7717a5a0-5bec-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-16 18:13:18','2021-02-16 18:13:18'),('a5eca5a0-72c7-11eb-ab89-2b7bf2bb7717',0,0,0,0,1,'Pagamento Confirmado','Pré Futurity Amador',NULL,'65edd860-5bd5-11eb-86a2-db4046fd5ae1','bc1529b0-5bd4-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-19 15:32:17','2021-02-19 15:32:17'),('a6326ba0-5be6-11eb-86a2-db4046fd5ae1',0,0,0,1,8,'Pagamento confirmado','Amador',NULL,'9fbab070-5be6-11eb-86a2-db4046fd5ae1','05124060-5be6-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-21 12:46:15','2021-01-21 12:46:15'),('a7117490-754e-11eb-bc90-1b7eb9d62624',0,0,0,0,NULL,'Pagamento Confirmado','Passeio',NULL,'9be4e3e0-754e-11eb-bc90-1b7eb9d62624','f024f410-754c-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 20:43:43','2021-02-22 20:43:43'),('abfb4750-754f-11eb-bc90-1b7eb9d62624',0,0,0,1,22,'Pagamento Confirmado','Aberta',NULL,'2419aa20-754f-11eb-bc90-1b7eb9d62624','f024f410-754c-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 20:51:01','2021-02-22 20:51:01'),('b2d06360-7510-11eb-b9dc-5bda7d5ca2f3',1,0,0,0,NULL,'Cancelada','Armador N1',NULL,'2f2bd3a0-7510-11eb-b9dc-5bda7d5ca2f3','b3576f30-73c7-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 13:20:14','2021-02-22 13:20:14'),('b32a7d30-7503-11eb-b9dc-5bda7d5ca2f3',0,1,1,1,10,'Pagamento Confirmado','Pré Futurity Aberta',NULL,'7ed1ea50-7503-11eb-b9dc-5bda7d5ca2f3','c7aa2b00-7500-11eb-b9dc-5bda7d5ca2f3','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 11:47:11','2021-02-22 11:47:11'),('b72e2c50-751d-11eb-b9dc-5bda7d5ca2f3',0,0,0,1,14,'Aguardando Pagamento','Aberta',NULL,'81868430-751d-11eb-b9dc-5bda7d5ca2f3','e29e6ea0-751c-11eb-b9dc-5bda7d5ca2f3','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 14:53:25','2021-02-22 14:53:25'),('b949abc0-5cd3-11eb-86a2-db4046fd5ae1',0,0,0,0,8,'Pagamento Confirmado','Pré Futurity Aberta',NULL,'9d4c24c0-5cd3-11eb-86a2-db4046fd5ae1','4751b730-5cd1-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-22 17:03:18','2021-01-22 17:03:18'),('ba03c1e0-751a-11eb-b9dc-5bda7d5ca2f3',0,0,0,0,5,'Pagamento Confirmado','Treino Pago',NULL,'022acb10-7504-11eb-b9dc-5bda7d5ca2f3','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 14:32:01','2021-02-22 14:32:01'),('baee7880-7113-11eb-ab89-2b7bf2bb7717',1,0,0,0,NULL,'Cancelada','Aberta N1',NULL,'c4742b80-5cd1-11eb-86a2-db4046fd5ae1','4751b730-5cd1-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-17 11:31:51','2021-02-17 11:31:51'),('c0d36b10-6fca-11eb-ab89-2b7bf2bb7717',0,0,0,0,NULL,'Cancelada','Amador Iniciante',NULL,'8802e4a0-6fca-11eb-ab89-2b7bf2bb7717','58f67ab0-6fc9-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-15 20:16:57','2021-02-15 20:16:57'),('c1d4ec40-5be4-11eb-86a2-db4046fd5ae1',0,0,1,1,7,'Pagamento confirmado','Amador',NULL,'b1a5b430-5be4-11eb-86a2-db4046fd5ae1','fbd72e30-5bdf-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-21 12:32:42','2021-01-21 12:32:42'),('c39d4e80-7572-11eb-bc90-1b7eb9d62624',0,1,1,1,11,'Aguardando Pagamento','Amador',NULL,'bc451e60-7572-11eb-bc90-1b7eb9d62624','db0f2850-7571-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-23 01:02:13','2021-02-23 01:02:13'),('c3a82df0-7504-11eb-b9dc-5bda7d5ca2f3',0,1,1,1,13,'Pagamento Confirmado','Aberta',NULL,'a5eaf590-7504-11eb-b9dc-5bda7d5ca2f3','c7aa2b00-7500-11eb-b9dc-5bda7d5ca2f3','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 11:54:48','2021-02-22 11:54:48'),('cdf62f90-7532-11eb-b9dc-5bda7d5ca2f3',0,0,0,0,NULL,'Cancelada','Passeio',NULL,'c6a1f710-7532-11eb-b9dc-5bda7d5ca2f3','cf8e0d70-750d-11eb-b9dc-5bda7d5ca2f3','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 17:24:22','2021-02-22 17:24:22'),('d1ec8e80-751b-11eb-b9dc-5bda7d5ca2f3',0,0,0,0,NULL,'Pagamento Confirmado','Passeio',NULL,'1c12b450-750b-11eb-b9dc-5bda7d5ca2f3','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 14:39:51','2021-02-22 14:39:51'),('d5e2d720-5c7e-11eb-86a2-db4046fd5ae1',0,1,1,1,3,'Pagamento confirmado','Pré Futurity Aberta',NULL,'cfacdfe0-5c7e-11eb-86a2-db4046fd5ae1','1ac6bbb0-5c46-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-22 06:55:38','2021-01-22 06:55:38'),('da8aa920-5cd2-11eb-86a2-db4046fd5ae1',1,0,0,0,4,'Pagamento Confirmado','Aberta N1',NULL,'c4742b80-5cd1-11eb-86a2-db4046fd5ae1','4751b730-5cd1-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-22 16:57:04','2021-01-22 16:57:04'),('dafffc30-7568-11eb-bc90-1b7eb9d62624',0,0,0,0,4,'Pagamento Confirmado','Amador Iniciante',NULL,'d5448c20-7568-11eb-bc90-1b7eb9d62624','78310860-7568-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 23:51:17','2021-02-22 23:51:17'),('df7ad690-5ca9-11eb-86a2-db4046fd5ae1',1,0,0,0,6,'Pagamento Confirmado','Aberta N1',NULL,'a9cc2990-5ca9-11eb-86a2-db4046fd5ae1','69e84140-5c06-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-22 12:03:43','2021-01-22 12:03:43'),('e13eda40-74fe-11eb-b9dc-5bda7d5ca2f3',0,1,1,0,19,'Pagamento Confirmado','Aberta',NULL,'d7f5fdb0-74fe-11eb-b9dc-5bda7d5ca2f3','5eda3a00-74fd-11eb-b9dc-5bda7d5ca2f3','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 11:12:41','2021-02-22 11:12:41'),('e2900c30-751b-11eb-b9dc-5bda7d5ca2f3',0,0,0,0,NULL,'Pagamento Confirmado','Passeio',NULL,'96426af0-750a-11eb-b9dc-5bda7d5ca2f3','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 14:40:19','2021-02-22 14:40:19'),('e52cabe0-7522-11eb-b9dc-5bda7d5ca2f3',0,0,1,1,3,'Pagamento Confirmado','Amador',NULL,'dc0dec90-7522-11eb-b9dc-5bda7d5ca2f3','02669ff0-7522-11eb-b9dc-5bda7d5ca2f3','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 15:30:29','2021-02-22 15:30:29'),('e8850000-7561-11eb-bc90-1b7eb9d62624',0,0,0,0,NULL,'Aguardando Pagamento','Passeio',NULL,'e2a761f0-7561-11eb-bc90-1b7eb9d62624','2cda9840-746e-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 23:01:33','2021-02-22 23:01:33'),('eca7d940-7562-11eb-bc90-1b7eb9d62624',0,0,0,0,NULL,'Pagamento Confirmado','Passeio',NULL,'78621990-755f-11eb-bc90-1b7eb9d62624','35545660-755d-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 23:08:50','2021-02-22 23:08:50'),('efc5f6e0-751a-11eb-b9dc-5bda7d5ca2f3',0,0,0,0,6,'Pagamento Confirmado','Treino Pago',NULL,'7015b850-7505-11eb-b9dc-5bda7d5ca2f3','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 14:33:31','2021-02-22 14:33:31'),('f070d910-756b-11eb-bc90-1b7eb9d62624',0,0,0,1,26,'Aguardando Pagamento','Aberta',NULL,'e75eeb00-756b-11eb-bc90-1b7eb9d62624','2cccc5a0-756b-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-23 00:13:22','2021-02-23 00:13:22'),('f082a040-7553-11eb-bc90-1b7eb9d62624',0,0,1,1,20,'Pagamento Confirmado','Aberta',NULL,'fc59d030-7550-11eb-bc90-1b7eb9d62624','6700ef00-7550-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 21:21:34','2021-02-22 21:21:34'),('f64040c0-7533-11eb-b9dc-5bda7d5ca2f3',0,1,1,1,5,'Aguardando Pagamento','Amador',NULL,'578b2b70-751a-11eb-b9dc-5bda7d5ca2f3','22e4fae0-7574-11eb-bc90-1b7eb9d62624','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 17:32:40','2021-02-22 17:32:40'),('fb3f4800-751a-11eb-b9dc-5bda7d5ca2f3',0,0,0,0,7,'Pagamento Confirmado','Treino Pago',NULL,'c79371e0-7504-11eb-b9dc-5bda7d5ca2f3','999c2c60-72dd-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-22 14:33:50','2021-02-22 14:33:50'),('fdaaec80-5bce-11eb-86a2-db4046fd5ae1',1,1,1,1,NULL,'Cancelada','Jovem 13 a 15',NULL,'f7ea2540-5bce-11eb-86a2-db4046fd5ae1','fa4fd010-5bcd-11eb-86a2-db4046fd5ae1','a272ce3d-586d-11eb-abde-0242ac110003','2021-01-21 09:56:54','2021-01-21 09:56:54'),('fef0f2e0-6fcb-11eb-ab89-2b7bf2bb7717',0,0,0,0,5,'Aguardando Pagamento','Amador Iniciante',NULL,'fa460870-6fcb-11eb-ab89-2b7bf2bb7717','045e1150-6fcb-11eb-ab89-2b7bf2bb7717','a272ce3d-586d-11eb-abde-0242ac110003','2021-02-15 20:25:51','2021-02-15 20:25:51');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracks` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `maneuver_1` varchar(255) NOT NULL,
  `maneuver_2` varchar(255) NOT NULL,
  `maneuver_3` varchar(255) NOT NULL,
  `maneuver_4` varchar(255) NOT NULL,
  `maneuver_5` varchar(255) NOT NULL,
  `maneuver_6` varchar(255) NOT NULL,
  `maneuver_7` varchar(255) NOT NULL,
  `maneuver_8` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracks`
--

LOCK TABLES `tracks` WRITE;
/*!40000 ALTER TABLE `tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `avatar_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_avatar_id_foreign_idx` (`avatar_id`),
  CONSTRAINT `users_avatar_id_foreign_idx` FOREIGN KEY (`avatar_id`) REFERENCES `files` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('02669ff0-7522-11eb-b9dc-5bda7d5ca2f3','Francisco Emilio Costa de Moura','francisco.moura@hotmail.com','$2a$08$RdUaEQSMSMBRqr5X.HVS/.G.ZT7szxx1Tceko4OgTu6mc47qcadk.','2021-02-22 15:24:09','2021-02-22 15:24:09',NULL),('045e1150-6fcb-11eb-ab89-2b7bf2bb7717','Andre Lara','andre.lara@lanxcapital.com','$2a$08$8/2Xssh3VNl3b.DXlC82V.A2DnIIJq49wCUK1IZf/o/HNF6mycY6G','2021-02-15 20:18:50','2021-02-15 20:18:50',NULL),('05124060-5be6-11eb-86a2-db4046fd5ae1','jonathan cardoso candido de oliveira','Jonathan_candido@hotmail.com','$2a$08$E3yJpFroMUGMmsurDbBjHukntQ5hesjxkhnpaSXUan7a5t72oeSEu','2021-01-21 12:41:45','2021-01-21 12:41:45',NULL),('05865590-5bff-11eb-86a2-db4046fd5ae1','Raphael Barros Grilo','raphaelbgrilo@gmail.com','$2a$08$NWFeUv45BMb71hZ2o9N/e.WhSXF.TeQOKwaYQfl4Fn60QCHfrF39G','2021-01-21 15:40:43','2021-01-21 15:40:43',NULL),('05f66450-754c-11eb-bc90-1b7eb9d62624','Lucas Speck Cabral de Menezes','l.cabralmene@gmail.com','$2a$08$3hsgGQH4OVbvgb53B0K79.j9jQlpT2jXJ95rCmQGtW15nfnB6m1HO','2021-02-22 20:24:54','2021-02-22 20:24:54',NULL),('0611b8b0-7545-11eb-bc90-1b7eb9d62624','Rodrigo Dalio','rodrigodalio@hotmail.com','$2a$08$HXeZXTQq8S3b4vNOtMRJHeaEnL0jgQWhwxqHr1PJwUiar3C8/UHDq','2021-02-22 19:34:47','2021-02-22 19:34:47',NULL),('0a4aca20-72b6-11eb-ab89-2b7bf2bb7717','Thomaz Luiz Cabral de Menezes','tlcmenezes@gmail.com','$2a$08$2KEo/eYCSZYICqjG6A4eOOIf/9NGlTNhn2ZUNKsoihUvRBLnE4Us6','2021-02-19 13:26:14','2021-02-19 13:26:14',NULL),('0c9007f0-5cf9-11eb-86a2-db4046fd5ae1','Iriádine Lana Fernandes','iriadinelana@gmail.com','$2a$08$c/6njuFQW2gCPsO2upHJkOpcYYzZI762yVlsQKwBMzdoDm4OVCGzu','2021-01-22 21:30:29','2021-01-22 21:30:29',NULL),('122d6430-5bf2-11eb-86a2-db4046fd5ae1','Marco Antonio da Costa','atendimento@anexogolf.com','$2a$08$tWpEb/q7IDbyDId2OyBLR.Nc2XBkXHquHwFs8.XE2hd9Gqs2JX8/G','2021-01-21 14:08:01','2021-01-21 14:08:01',NULL),('199827d0-6eff-11eb-ab89-2b7bf2bb7717','aline amand','alineamand13@gmail.com','$2a$08$ixMZuXQAg7fCQF8cbcmKG.EjT/Yt/FB.9vWFcVeuMmK8FaXG.tfyO','2021-02-14 19:59:09','2021-02-14 19:59:09',NULL),('1a408030-756a-11eb-bc90-1b7eb9d62624','Mateus Swart','mateusswart@gmail.com','$2a$08$XKYjBiRFNB/6Z6r8YuwRouhycLU8oI1wVSv7wzozulrY9FqgyVn7O','2021-02-23 00:00:13','2021-02-23 00:00:13',NULL),('1ac6bbb0-5c46-11eb-86a2-db4046fd5ae1','Vinicius Nogueira Leal','viniciusnogueira1206@gmail.com','$2a$08$Cml9NC2Yw38w3zbjGerPzOEBs8bBXBDaB6ZTLbWMYxcFSiWesSv1K','2021-01-22 00:09:33','2021-01-22 00:09:33',NULL),('22e4fae0-7574-11eb-bc90-1b7eb9d62624','Lucas Gayatto','lucas_gayotto@icloud.com','$2a$08$rZl.jFltS/K87CYwI0iNfeUb3a0dqVOJhVBTuSFyxyY0k8QIN/KO6','2021-02-23 01:12:02','2021-02-23 01:12:02',NULL),('2bf52560-5c74-11eb-86a2-db4046fd5ae1','Marcus Vinícius Tenorio Guimaraes','mmarcustenorio@me.com','$2a$08$/Fi5dqP3YEePYaWSmIzTIeKtZb9i6vx6aY/8g430n.kG/RADTaOU2','2021-01-22 05:39:18','2021-01-22 05:39:18',NULL),('2cccc5a0-756b-11eb-bc90-1b7eb9d62624','Gilson Paulo Vendrame','g_vendrame@hotmail.com','$2a$08$HyccDPb49VY0gu8p.K4tDeNtac/lFMVK1pBN3uDjI5E45OVA6aHua','2021-02-23 00:07:53','2021-02-23 00:07:53',NULL),('2cda9840-746e-11eb-ab89-2b7bf2bb7717','Jone Carlos da Silva','jone.carlos@nccr.com','$2a$08$jzDOYFC8rhXQMkOwxScfsO8aRPzVIAmedMtcqpQyXHdhX1JW9LKzS','2021-02-21 17:56:51','2021-02-21 17:56:51',NULL),('35545660-755d-11eb-bc90-1b7eb9d62624','Renata Mauri Ricci','ricciredeas@gmail.com','$2a$08$CejEFx5GrvXT8PvuFp086ufRhFHouJ.ISaHBdZL8fU753UgA0dHDi','2021-02-22 22:27:55','2021-02-22 22:27:55',NULL),('4751b730-5cd1-11eb-86a2-db4046fd5ae1','rafael luvizotto amatuzi','talitasucegan@gmail.com','$2a$08$ZQmmvJIZwiWKkmpWjlW6PekIzgpbBmU7TGgaPbYYWS9e15AOkSjRy','2021-01-22 16:45:47','2021-01-22 16:45:47',NULL),('482cc140-5c4a-11eb-86a2-db4046fd5ae1','José Roberto van Cleef de Almeida Santos','jroberto@almeidasantos.com','$2a$08$V3uq19EmfsgghAfxswkFIesw31FVhTYE62tuBj4e.uipgtuc.q012','2021-01-22 00:39:27','2021-01-22 00:39:27',NULL),('58e47060-5be0-11eb-86a2-db4046fd5ae1','DEMETRIUS','demekotro@gmail.com','$2a$08$kLXE53dagrcmJHpeNtUQBODVEEGdzjCoTAroeWmrZAL3WfgzOOGDC','2021-01-21 12:01:08','2021-01-21 12:01:08',NULL),('58f67ab0-6fc9-11eb-ab89-2b7bf2bb7717','Beatriz','bitilararesende@mac.com','$2a$08$8uCUoW86eoTJYc2RWFifEuRZW.ONN/4UmG1Y2ZJVC9vIU2pZRaDFK','2021-02-15 20:06:53','2021-02-15 20:06:53',NULL),('5daac3b0-6fb8-11eb-ab89-2b7bf2bb7717','Claudia Sayuri Muramoto F','clau_sayuri@yahoo.com.br','$2a$08$voO8Z4vTBNI5/GqcAgKRy.y7HokYnxsO7sp8r4gMR6y8RFiY3OAcW','2021-02-15 18:05:20','2021-02-15 18:05:20',NULL),('5eda3a00-74fd-11eb-b9dc-5bda7d5ca2f3','SANDRA BABICK','harassavitu@hotmail.com','$2a$08$CkQu1xmYwoWvDaj7Ff5LROIBLRw4NFmO7vnyqnX.pYhV88ahJjdT6','2021-02-22 11:01:53','2021-02-22 11:01:53',NULL),('601d9d90-706a-11eb-ab89-2b7bf2bb7717','Mayara Alves Bezerra','mayy.allves@gmail.com','$2a$08$8nb5euMmSOtViyJv/7KzSOKUeHcl53G/YFryH.Bq4xIihDCqhOB/e','2021-02-16 15:19:34','2021-02-16 15:19:34',NULL),('64587910-5bda-11eb-86a2-db4046fd5ae1','Bianca Cristina de Oliveira Santos ','ocs.bia@gmail.com','$2a$08$vz4xpc1ObUuOme5I4aMBVu/P1P15vNZJS1hhrKYJo0S5AnMQ1rO4O','2021-01-21 11:18:30','2021-01-21 11:18:30',NULL),('6700ef00-7550-11eb-bc90-1b7eb9d62624','Marcio Roberto de Oliveira','marciooliveira33@live.com','$2a$08$KimokAZ0HLNredJsok7Sr.vM3ec52OM4/RAkDtLMJwd0/jdbjTmM6','2021-02-22 20:56:15','2021-02-22 20:56:15',NULL),('69e84140-5c06-11eb-86a2-db4046fd5ae1',' Antônio José dos Santos Neto','antoniojosedossantosnetonet@gmail.com','$2a$08$LQbWVZqNaAfn6phAWlK.IuSkWTVjasMQqLETQqFX41I.OTcz140Ma','2021-01-21 16:33:38','2021-01-21 16:33:38',NULL),('770fb8b0-72dd-11eb-ab89-2b7bf2bb7717','LUIZ CARLOS MONTEIRO','raphael@ffcriacao.com','$2a$08$dJbIY3nvQPevvqXeKoJiYuWyHOldi7MdY7MvoTtHGb/EgTMut09m6','2021-02-19 18:08:27','2021-02-19 18:08:27',NULL),('7717a5a0-5bec-11eb-86a2-db4046fd5ae1','Karoline Rodrigues Ribaldo','ranchokaroline@gmail.com','$2a$08$Nw7fIQcwOJrbtlPcwxsPeuN4o6RTYE7dEftgE9WGefRtfmxLXLv7.','2021-01-21 13:27:53','2021-01-21 13:27:53',NULL),('7717f3c0-5bec-11eb-86a2-db4046fd5ae1','Karoline Rodrigues Ribaldo','ranchokaroline@gmail.com','$2a$08$gI4vS74L5ZCuB1GStg3oK.Tepnp.NJZWnkJ5ukJHMYOtNFyrvRIUm','2021-01-21 13:27:53','2021-01-21 13:27:53',NULL),('78310860-7568-11eb-bc90-1b7eb9d62624','Fernanda Donini aredes pereira','Fernandadonini@hotmail.com','$2a$08$9a9WP9PuDP3ugdX0srUNSuXnmaOjNkWAvU6msvXcqKugevJ1GjP3G','2021-02-22 23:48:31','2021-02-22 23:48:31',NULL),('95a5d370-72b2-11eb-ab89-2b7bf2bb7717','Sinval Moreira do Nascimento ','Sinvalmoreira@hotmail.com','$2a$08$Y9vyhYA0rldzTlVUx72NfuyHA9CwCDyUpFc5SyedIY3D0GVF2IIGi','2021-02-19 13:01:30','2021-02-19 13:01:30',NULL),('999c2c60-72dd-11eb-ab89-2b7bf2bb7717','Marcus Antônio Pereira Junior','kinzin@hotmail.com','$2a$08$sA75NmhcQADLwNcUzlbp.OS.04j1On/Pcs.HMtmS2Xcbxd3xyEs1m','2021-02-19 18:09:25','2021-02-19 18:09:25',NULL),('a0540fa0-7463-11eb-ab89-2b7bf2bb7717','Jacques Rodrigues Júnior ','jacquesrjr@gmail.com','$2a$08$5zrd6/Se1r9TCB8weLEOXuDGDEzsjSP9NtdxfjMKne1qWiuCX9im6','2021-02-21 16:41:20','2021-02-21 16:41:20',NULL),('b3576f30-73c7-11eb-ab89-2b7bf2bb7717','Osvaldo Butignol Jr','zipzap_lins@hotmail.com','$2a$08$2g3gIVh.x0APDrh9IHgC9O7vRv.lZ/CUPGUc3fShgtZcoaVDWqGNC','2021-02-20 22:05:10','2021-02-20 22:05:10',NULL),('ba05b060-5c31-11eb-86a2-db4046fd5ae1','Maikon Cristino Pereira Rosa','maikonC.P.Rosa@outlook.com','$2a$08$0VF5qTZOGPQpS6zc9xskk.M/kwmh0xhO00ju1V/jfyOVumdQgewCG','2021-01-21 21:43:40','2021-01-21 21:43:40',NULL),('bc1529b0-5bd4-11eb-86a2-db4046fd5ae1','Gabriel Augusto Claro','mvgabrielclaro@hotmail.com','$2a$08$4zR.VdNqZwV390raePcKOumSkGioxu0CBJiaVFGhYdwS.kpvTxX82','2021-01-21 10:38:01','2021-01-21 10:38:01',NULL),('bd290420-5ba7-11eb-85d3-41d12161e99f','Matheus','matheus_guitarplayer@hotmail.com','$2a$08$Nu1SuHoaRY6TidA3hvI4KOLM5w42ha3PvtKBOCYMRZQZtECDw/o.2','2021-01-21 05:15:55','2021-01-21 05:15:55',NULL),('c539af20-5cb5-11eb-86a2-db4046fd5ae1','Thomaz Luiz Cabral de Menezes','isabellesilva@itsseg.com','$2a$08$Rb6lKAnflvBsUp.yeyrtr.ARGxNFhODBC5WyFA2eNrXLEVaWzUGJe','2021-01-22 13:28:53','2021-01-22 13:28:53',NULL),('c7aa2b00-7500-11eb-b9dc-5bda7d5ca2f3','João Alexandre Ribeiro','aninhatrebesquim@hotmail.com','$2a$08$1tPueyPPzPXtzTp758OqXemp38Fn2jeBPOF3OJYMJyU6nQ3Q8Jnpm','2021-02-22 11:26:17','2021-02-22 11:26:17',NULL),('cf8e0d70-750d-11eb-b9dc-5bda7d5ca2f3','Laercio Casalecchi Filho','thi3casalecchi@gmail.com','$2a$08$RyLDJ0FTlQKYufE/Q.zfl.1fIdYdp/h5sVLXWbJVASnjNYAJ/SLxC','2021-02-22 12:59:34','2021-02-22 12:59:34',NULL),('d7c221d0-7511-11eb-b9dc-5bda7d5ca2f3','Renato Fumero','rcfumero@hotmail.com','$2a$08$pL5yl3PulyIMrwXf61oRTOrVnXG5jnLJMfgOmwie2kYtwSV9zNWd2','2021-02-22 13:28:25','2021-02-22 13:28:25',NULL),('db0f2850-7571-11eb-bc90-1b7eb9d62624','Daniela Augusto Gomes','danigomes8@hotmail.com','$2a$08$gGt9h2m5Tl6xmwUZf.SPsuwLDo9tJ4xDN4mfAPWIF/R8KKGqUeURa','2021-02-23 00:55:43','2021-02-23 00:55:43',NULL),('db427260-5c0c-11eb-86a2-db4046fd5ae1','rafael luvizotto amatuzi','escritorio@fazendastamaria.com','$2a$08$VE2PkqH2mSHdcwBUDE/XbuvWzoP0JxqLVLigc0ts/G9l.jzcrDHcm','2021-01-21 17:19:45','2021-01-21 17:19:45',NULL),('ddfd5d60-5bf0-11eb-86a2-db4046fd5ae1','João Paulo Moutinho','jepabrasil@hotmail.com','$2a$08$fm0jTBEznA/arAr2KJcNe.UMCOhkEEd29rQ8ZKDz/un5wQYy27mgi','2021-01-21 13:59:23','2021-01-21 13:59:23',NULL),('e087ea10-708f-11eb-ab89-2b7bf2bb7717','Rodrigo Estevão Ramos ','rodriestevan@hotmail.com','$2a$08$TUGSzs9sZGd7qzAylpk2/eWfcW0VKs7BM68tImyfbIPGUr1y8B8Se','2021-02-16 19:48:01','2021-02-16 19:48:01',NULL),('e29e6ea0-751c-11eb-b9dc-5bda7d5ca2f3','Pedro Mendes de Brito','pedrobrito15@uol.com.br','$2a$08$OXi2TCl/aBbTse1hDsrxDufadQ1Wd6BmMAfb/uNI4kUR.44NyECVG','2021-02-22 14:47:28','2021-02-22 14:47:28',NULL),('eaabd220-5bfb-11eb-86a2-db4046fd5ae1','Maikon Cristino Pereira Rosa','maikonmoren@gmail.com','$2a$08$e//68dSdpEY4GNp8tH7jTOg1p9fzlUhLY6.9b/.a.kJnUeNz0IYW6','2021-01-21 15:18:29','2021-01-21 15:18:29',NULL),('f024f410-754c-11eb-bc90-1b7eb9d62624','Douglas Noveti de Oliveira','tlcmenezes@itsseg.com','$2a$08$u55Pj2.FWIQfdnetXi1HQeY3s97w65Vqx/i/rJi.DuhdzeAeY9Hom','2021-02-22 20:31:27','2021-02-22 20:31:27',NULL),('f90dea40-5cca-11eb-86a2-db4046fd5ae1','Marcelo Moreira dos Santos ','ctmarcelomoreira.redeas@hotmail.com','$2a$08$UQp9Rs2caA6DltZbSDv4uugUqAyDcORHSKNJhOVOPoL0YooJ9B..K','2021-01-22 16:00:39','2021-01-22 16:00:39',NULL),('fa4fd010-5bcd-11eb-86a2-db4046fd5ae1','teste','teste@teste.com.br','$2a$08$ixMZuXQAg7fCQF8cbcmKG.EjT/Yt/FB.9vWFcVeuMmK8FaXG.tfyO','2021-01-21 09:49:39','2021-01-21 09:49:39',NULL),('fbd72e30-5bdf-11eb-86a2-db4046fd5ae1','Letícia Farina Cândido','letafarina@terra.com.br','$2a$08$AzlwwU8GJ0oi5hWm8IyH7uYazGa3CE8tW5buG/QtE5oQouMhEE34K','2021-01-21 11:58:32','2021-01-21 11:58:32',NULL),('fdfe91a0-7573-11eb-bc90-1b7eb9d62624','Thiago Casalecchi','thicasalecchi@bol.com.br','$2a$08$JjOa.xcWTiBO2gSPpXKfDuPmKK7bt.0n5HoThtMmRR3qQfv3dhaoK','2021-02-23 01:11:00','2021-02-23 01:11:00',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_competitors`
--

DROP TABLE IF EXISTS `vw_competitors`;
/*!50001 DROP VIEW IF EXISTS `vw_competitors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_competitors` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `animal`,
 1 AS `sub_id`,
 1 AS `oe`,
 1 AS `category`,
 1 AS `event`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_juiz_login`
--

DROP TABLE IF EXISTS `vw_juiz_login`;
/*!50001 DROP VIEW IF EXISTS `vw_juiz_login`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_juiz_login` AS SELECT 
 1 AS `jid`,
 1 AS `uid`,
 1 AS `email`,
 1 AS `psw`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_painel`
--

DROP TABLE IF EXISTS `vw_painel`;
/*!50001 DROP VIEW IF EXISTS `vw_painel`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_painel` AS SELECT 
 1 AS `m1`,
 1 AS `m2`,
 1 AS `m3`,
 1 AS `m4`,
 1 AS `m5`,
 1 AS `m6`,
 1 AS `m7`,
 1 AS `m8`,
 1 AS `p1`,
 1 AS `p2`,
 1 AS `p3`,
 1 AS `p4`,
 1 AS `p5`,
 1 AS `p6`,
 1 AS `p7`,
 1 AS `p8`,
 1 AS `id`,
 1 AS `runner`,
 1 AS `animal`,
 1 AS `category`,
 1 AS `judge`,
 1 AS `gid`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'sistema_de_notas'
--

--
-- Dumping routines for database 'sistema_de_notas'
--
/*!50003 DROP FUNCTION IF EXISTS `NovaNota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `NovaNota`(subscription char(36),judge_id char(36)) RETURNS char(36) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
 insert into grades(id,subscription_id,judge_id,created_at,updated_at) values 
 (uuid(),subscription,judge_id,current_timestamp(),current_timestamp());
 return (select id from grades where  created_at = (select max(created_at) from grades));
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_competitors`
--

/*!50001 DROP VIEW IF EXISTS `vw_competitors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_competitors` AS select `u`.`id` AS `id`,`u`.`name` AS `name`,`a`.`name` AS `animal`,`s`.`id` AS `sub_id`,`s`.`oe` AS `oe`,`s`.`category` AS `category`,`e`.`id` AS `event` from (((`subscriptions` `s` join `users` `u`) join `events` `e`) join `animals` `a`) where ((`u`.`id` = `s`.`user_id`) and (`a`.`id` = `s`.`animal_id`) and (`s`.`event_id` = `e`.`id`) and (`s`.`oe` > 0)) order by `s`.`oe` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_juiz_login`
--

/*!50001 DROP VIEW IF EXISTS `vw_juiz_login`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_juiz_login` AS select `j`.`id` AS `jid`,`u`.`id` AS `uid`,`u`.`email` AS `email`,`u`.`password_hash` AS `psw`,`u`.`name` AS `name` from (`users` `u` join `judges` `j`) where (`j`.`user_id` = `u`.`id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_painel`
--

/*!50001 DROP VIEW IF EXISTS `vw_painel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_painel` AS select `g`.`maneuver_1` AS `m1`,`g`.`maneuver_2` AS `m2`,`g`.`maneuver_3` AS `m3`,`g`.`maneuver_4` AS `m4`,`g`.`maneuver_5` AS `m5`,`g`.`maneuver_6` AS `m6`,`g`.`maneuver_7` AS `m7`,`g`.`maneuver_8` AS `m8`,`g`.`penalty_1` AS `p1`,`g`.`penalty_2` AS `p2`,`g`.`penalty_3` AS `p3`,`g`.`penalty_4` AS `p4`,`g`.`penalty_5` AS `p5`,`g`.`penalty_6` AS `p6`,`g`.`penalty_7` AS `p7`,`g`.`penalty_8` AS `p8`,`vw`.`sub_id` AS `id`,`vw`.`name` AS `runner`,`vw`.`animal` AS `animal`,`vw`.`category` AS `category`,`j`.`name` AS `judge`,`g`.`id` AS `gid` from (((`vw_competitors` `vw` join `grades` `g`) join `runner_turn` `r`) join `vw_juiz_login` `j`) where ((`r`.`grade_id` = `g`.`id`) and (`r`.`category` = `vw`.`category`) and (`vw`.`sub_id` = `g`.`subscription_id`) and (`j`.`jid` = `g`.`judge_id`)) group by `r`.`grade_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-02  9:57:08
