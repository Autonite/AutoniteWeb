-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: autonite
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `Id_administrador` int NOT NULL AUTO_INCREMENT,
  `Id_empleado` int NOT NULL,
  PRIMARY KEY (`Id_administrador`),
  KEY `Id_empleado` (`Id_empleado`),
  CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`Id_empleado`) REFERENCES `empleados` (`Id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,6);
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ausencias`
--

DROP TABLE IF EXISTS `ausencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ausencias` (
  `Id_ausencia` int NOT NULL AUTO_INCREMENT,
  `Dias_disponibles` tinyint DEFAULT NULL,
  `Dias_usados` tinyint DEFAULT NULL,
  `Dias_pendientes` tinyint DEFAULT NULL,
  `Dias_totales` tinyint DEFAULT NULL,
  `Fecha_ausencia` date DEFAULT NULL,
  `Motivo_ausencia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_ausencia`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ausencias`
--

LOCK TABLES `ausencias` WRITE;
/*!40000 ALTER TABLE `ausencias` DISABLE KEYS */;
INSERT INTO `ausencias` VALUES (1,30,5,0,25,'2019-01-25','Enfermefad'),(2,30,3,0,27,'2019-06-22','Translado de domicilio'),(3,30,3,0,27,'2020-07-12','Translado de domicilio'),(4,30,3,0,27,'2020-01-25','Translado de domicilio'),(5,30,5,4,29,'2020-07-12','Enfermefad'),(6,30,5,3,27,'2020-01-10','Enfermefad'),(7,30,10,0,20,'2020-11-01','Vacaciones'),(8,30,5,0,25,'2020-01-30','Enfermefad'),(9,30,8,0,22,'2020-11-01','Vacaciones'),(10,30,8,0,22,'2020-11-12','Vacaciones'),(11,30,8,0,22,'2019-12-01','Vacaciones'),(12,30,10,0,20,'2019-11-23','Vacaciones'),(13,30,5,4,29,'2020-10-01','Enfermefad'),(14,30,15,0,15,'2020-07-16','Permiso matrimonio'),(15,30,5,0,25,'2020-07-25','Enfermefad');
/*!40000 ALTER TABLE `ausencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `Id_cliente` int NOT NULL AUTO_INCREMENT,
  `Id_usuarios` int NOT NULL,
  PRIMARY KEY (`Id_cliente`),
  KEY `Id_usuarios` (`Id_usuarios`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`Id_usuarios`) REFERENCES `usuarios` (`Id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,16),(2,17),(3,18),(4,19),(5,20),(6,21),(7,22),(8,23),(9,24),(10,25),(11,26),(12,27),(13,28),(14,29),(15,30);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `Id_compra` int NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `Valor_total` double DEFAULT NULL,
  `Id_administrador` int NOT NULL,
  PRIMARY KEY (`Id_compra`),
  KEY `Id_administrador` (`Id_administrador`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`Id_administrador`) REFERENCES `administrador` (`Id_administrador`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,'2019-02-01',NULL,900000,1),(2,'2019-06-20',NULL,300000,1),(3,'2019-05-20',NULL,2000000,1),(4,'2020-10-15',NULL,700000,1),(5,'2020-05-30',NULL,200000,1),(6,'2020-07-09',NULL,1900000,1),(7,'2019-09-01',NULL,1000000,1),(8,'2020-02-04',NULL,800000,1),(9,'2019-07-16',NULL,500000,1),(10,'2020-05-27',NULL,2500000,1),(11,'2021-04-15',NULL,80000,1);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contratos`
--

DROP TABLE IF EXISTS `contratos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contratos` (
  `Id_contrato` int NOT NULL AUTO_INCREMENT,
  `Tipo_contrato` varchar(20) DEFAULT NULL,
  `Inicio_contrato` date DEFAULT NULL,
  `Fin_contrato` date DEFAULT NULL,
  `Salario` double DEFAULT NULL,
  `Duracion_jornada` tinyint DEFAULT NULL,
  `Estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contratos`
--

LOCK TABLES `contratos` WRITE;
/*!40000 ALTER TABLE `contratos` DISABLE KEYS */;
INSERT INTO `contratos` VALUES (1,'Fijo','2019-01-01','2022-01-01',830000,9,'Activo'),(2,'Aprendizaje','2019-06-01','2022-06-01',700000,9,'Activo'),(3,'Indefinido','2019-05-03',NULL,750000,9,'Inactivo'),(4,'Fijo','2020-01-01','2023-01-01',680000,7,'Activo'),(5,'Indefinido','2020-03-05',NULL,800000,8,'Activo'),(6,'Indefinido','2020-11-05',NULL,760000,8,'Activo'),(7,'Fijo','2019-05-03','2022-05-03',700000,1,'Inactivo'),(8,'Indefinido','2020-01-01',NULL,700000,6,'Activo'),(9,'Fijo','2019-01-01','2022-01-01',750000,7,'Activo'),(10,'Fijo','2019-01-03','2022-01-03',800000,9,'Activo'),(11,'Indefinido','2019-10-07',NULL,750000,1,'Activo'),(12,'Aprendizaje','2019-05-03','2020-05-07',680000,12,'Vencido'),(13,'Fijo','2020-01-01','2022-05-03',800000,9,'Inactivo'),(14,'Indefinido','2019-08-01',NULL,760000,8,'Activo'),(15,'Fijo','2019-07-05','2023-03-05',700000,8,'Activo');
/*!40000 ALTER TABLE `contratos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_compra`
--

DROP TABLE IF EXISTS `detalle_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_compra` (
  `Id_detalle_compra` int NOT NULL AUTO_INCREMENT,
  `Id_compra` int NOT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_detalle_compra`),
  KEY `Id_compra` (`Id_compra`),
  CONSTRAINT `detalle_compra_ibfk_1` FOREIGN KEY (`Id_compra`) REFERENCES `compras` (`Id_compra`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_compra`
--

LOCK TABLES `detalle_compra` WRITE;
/*!40000 ALTER TABLE `detalle_compra` DISABLE KEYS */;
INSERT INTO `detalle_compra` VALUES (1,1,'Ruedas de auto marca continental'),(2,2,'Aceite para motor mobil 25L'),(3,3,'Motores boxer disel'),(4,4,'Suspensiones marca Reiger'),(5,5,'Pegatinas para carro y moto'),(6,6,'Chasis compacto'),(7,7,'Chasis escalera '),(8,8,'Espejos Renauld'),(9,9,'Aceite mobil special 1L'),(10,10,'Motores boxer ');
/*!40000 ALTER TABLE `detalle_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `Id_venta` int DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  KEY `Id_venta` (`Id_venta`),
  CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`Id_venta`) REFERENCES `ventas` (`Id_venta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1,'Se vendio un par de ruedas marca continental'),(2,'Se vendio un aceite para motor marca mobil de 25L'),(3,'Se vendio un motor marca boxer disel'),(4,'Se vendio dos suspensiones de la marca Reiger '),(5,'Se vendieron 10 pegatinas '),(6,'Se vendio un chasis compacto'),(7,'Se vendio un chasis de escalera'),(8,'Se vendieron 2 espejos de la marca Renauld'),(9,'Se vendieron 2 aceites de la marca mobil special 1L'),(10,'Se vendio un motor de marca boxer'),(11,'Se realizo una reparacion de frenos'),(12,'Se realizo un cambio de pintura'),(13,'Se realizo una reparacion de motor de un vehiculo'),(14,'Se realizo una reparacion de motor de un vehiculo'),(15,'Se realizo un cambio de aceite');
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `Id_empleado` int NOT NULL AUTO_INCREMENT,
  `Edad` tinyint DEFAULT NULL,
  `Contrasena` varchar(20) DEFAULT NULL,
  `Id_usuarios` int NOT NULL,
  `Id_ausencia` int NOT NULL,
  `Id_contrato` int NOT NULL,
  PRIMARY KEY (`Id_empleado`),
  KEY `Id_usuarios` (`Id_usuarios`),
  KEY `Id_ausencia` (`Id_ausencia`),
  KEY `Id_contrato` (`Id_contrato`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`Id_usuarios`) REFERENCES `usuarios` (`Id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`Id_ausencia`) REFERENCES `ausencias` (`Id_ausencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `empleados_ibfk_3` FOREIGN KEY (`Id_contrato`) REFERENCES `contratos` (`Id_contrato`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,19,'j1234',1,1,1),(2,30,'m1234',2,2,2),(3,26,'s1234',3,3,3),(4,24,'s123',4,4,4),(5,19,'m123',5,5,5),(6,26,'a1234',6,6,6),(7,27,'m12345',7,7,7),(8,29,'m4321',8,8,8),(9,30,'m6543',9,9,9),(10,25,'s6543',10,10,10),(11,21,'m9874',11,11,11),(12,19,'m4856',12,12,12),(13,20,'m6523',13,13,13),(14,29,'m7412',14,14,14),(15,24,'m9632',15,15,15);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrada_productos`
--

DROP TABLE IF EXISTS `entrada_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrada_productos` (
  `Id_entrada_producto` int NOT NULL AUTO_INCREMENT,
  `Id_compra` int NOT NULL,
  `Id_pedido` int NOT NULL,
  PRIMARY KEY (`Id_entrada_producto`),
  KEY `entrada_productos_ibfk_1` (`Id_compra`),
  KEY `entrada_productos_ibfk_2` (`Id_pedido`),
  CONSTRAINT `entrada_productos_ibfk_1` FOREIGN KEY (`Id_compra`) REFERENCES `compras` (`Id_compra`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `entrada_productos_ibfk_2` FOREIGN KEY (`Id_pedido`) REFERENCES `pedido` (`Id_pedido`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrada_productos`
--

LOCK TABLES `entrada_productos` WRITE;
/*!40000 ALTER TABLE `entrada_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrada_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `Id_inventario` int NOT NULL AUTO_INCREMENT,
  `Stock` smallint DEFAULT NULL,
  `Id_entrada_producto` int DEFAULT NULL,
  `Id_salida_producto` int DEFAULT NULL,
  `Id_administrador` int DEFAULT NULL,
  `Id_jefe_mecanico` int DEFAULT NULL,
  `Id_mecanico` int DEFAULT NULL,
  `Id_producto` int NOT NULL,
  PRIMARY KEY (`Id_inventario`),
  KEY `Id_administrador` (`Id_administrador`),
  KEY `Id_jefe_mecanico` (`Id_jefe_mecanico`),
  KEY `Id_mecanico` (`Id_mecanico`),
  KEY `inventario_ibfk_6_idx` (`Id_producto`),
  KEY `inventario_ibfk_7_idx` (`Id_entrada_producto`),
  KEY `inventario_ibfk_8_idx` (`Id_salida_producto`),
  CONSTRAINT `inventario_ibfk_3` FOREIGN KEY (`Id_administrador`) REFERENCES `administrador` (`Id_administrador`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `inventario_ibfk_4` FOREIGN KEY (`Id_jefe_mecanico`) REFERENCES `jefe_mecanicos` (`Id_jefe_mecanico`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `inventario_ibfk_5` FOREIGN KEY (`Id_mecanico`) REFERENCES `mecanicos` (`Id_mecanico`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `inventario_ibfk_6` FOREIGN KEY (`Id_producto`) REFERENCES `productos` (`Id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `inventario_ibfk_7` FOREIGN KEY (`Id_entrada_producto`) REFERENCES `entrada_productos` (`Id_entrada_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `inventario_ibfk_8` FOREIGN KEY (`Id_salida_producto`) REFERENCES `salida_productos` (`Id_salida_producto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,20,NULL,NULL,1,1,1,1),(2,50,NULL,NULL,1,1,2,2),(3,2,NULL,NULL,1,1,3,3),(4,20,NULL,NULL,1,1,4,4),(5,150,NULL,NULL,1,1,5,5),(6,5,NULL,NULL,1,1,6,6),(7,5,NULL,NULL,1,1,7,7),(8,30,NULL,NULL,1,1,8,8),(9,50,NULL,NULL,1,1,9,9),(10,5,NULL,NULL,1,1,10,10);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jefe_mecanicos`
--

DROP TABLE IF EXISTS `jefe_mecanicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jefe_mecanicos` (
  `Id_jefe_mecanico` int NOT NULL AUTO_INCREMENT,
  `Id_empleado` int NOT NULL,
  PRIMARY KEY (`Id_jefe_mecanico`),
  KEY `Id_empleado` (`Id_empleado`),
  CONSTRAINT `jefe_mecanicos_ibfk_1` FOREIGN KEY (`Id_empleado`) REFERENCES `empleados` (`Id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jefe_mecanicos`
--

LOCK TABLES `jefe_mecanicos` WRITE;
/*!40000 ALTER TABLE `jefe_mecanicos` DISABLE KEYS */;
INSERT INTO `jefe_mecanicos` VALUES (1,1);
/*!40000 ALTER TABLE `jefe_mecanicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mecanicos`
--

DROP TABLE IF EXISTS `mecanicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mecanicos` (
  `Id_mecanico` int NOT NULL AUTO_INCREMENT,
  `Id_empleado` int NOT NULL,
  PRIMARY KEY (`Id_mecanico`),
  KEY `Id_empleado` (`Id_empleado`),
  CONSTRAINT `mecanicos_ibfk_1` FOREIGN KEY (`Id_empleado`) REFERENCES `empleados` (`Id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mecanicos`
--

LOCK TABLES `mecanicos` WRITE;
/*!40000 ALTER TABLE `mecanicos` DISABLE KEYS */;
INSERT INTO `mecanicos` VALUES (1,2),(2,5),(3,7),(4,8),(5,9),(6,11),(7,12),(8,13),(9,14),(10,15);
/*!40000 ALTER TABLE `mecanicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_servicio`
--

DROP TABLE IF EXISTS `orden_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_servicio` (
  `Id_orden_servicio` int NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Id_venta_producto` int DEFAULT NULL,
  `Id_servicio` int DEFAULT NULL,
  `Id_mecanico` int NOT NULL,
  `Id_venta` int NOT NULL,
  PRIMARY KEY (`Id_orden_servicio`),
  KEY `Id_venta_producto` (`Id_venta_producto`),
  KEY `Id_servicio` (`Id_servicio`),
  KEY `Id_mecanico` (`Id_mecanico`),
  KEY `Id_venta` (`Id_venta`),
  CONSTRAINT `orden_servicio_ibfk_1` FOREIGN KEY (`Id_venta_producto`) REFERENCES `venta_producto` (`Id_venta_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orden_servicio_ibfk_2` FOREIGN KEY (`Id_servicio`) REFERENCES `servicio` (`Id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orden_servicio_ibfk_3` FOREIGN KEY (`Id_mecanico`) REFERENCES `mecanicos` (`Id_mecanico`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orden_servicio_ibfk_4` FOREIGN KEY (`Id_venta`) REFERENCES `ventas` (`Id_venta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_servicio`
--

LOCK TABLES `orden_servicio` WRITE;
/*!40000 ALTER TABLE `orden_servicio` DISABLE KEYS */;
INSERT INTO `orden_servicio` VALUES (1,'Se solicito un par de ruedas marca continental',1,NULL,1,1),(2,'Se solicito un aceite para motor marca mobil de 25L',2,NULL,2,2),(3,'Se solicita un motor de la marca boxer disel',3,NULL,3,3),(4,'Se solicito dos suspensiones para auto marca Reiger',4,NULL,4,4),(5,'Se solicita 10 pegatinas',5,NULL,5,5),(6,'Se solicita un chasis compacto ',6,NULL,6,6),(7,'Se solicita un chasis escalera',7,NULL,7,7),(8,'Se solicitan dos espejos para un renauld',8,NULL,8,8),(9,'Se solicitaron 2 aceites de marca mobil special de 1L',9,NULL,9,9),(10,'Se solicito un motor de marca boxer',10,NULL,10,10);
/*!40000 ALTER TABLE `orden_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `Id_pedido` int NOT NULL AUTO_INCREMENT,
  `Cantidad` smallint DEFAULT NULL,
  `Valor_total` double DEFAULT NULL,
  `Estado` varchar(20) DEFAULT NULL,
  `Id_compra` int NOT NULL,
  `Id_producto` int NOT NULL,
  `Id_proveedor` int NOT NULL,
  PRIMARY KEY (`Id_pedido`),
  KEY `Id_compra` (`Id_compra`),
  KEY `Id_producto` (`Id_producto`),
  KEY `Id_proveedor` (`Id_proveedor`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`Id_compra`) REFERENCES `compras` (`Id_compra`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`Id_producto`) REFERENCES `productos` (`Id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`Id_proveedor`) REFERENCES `proveedores` (`Id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,14,900000,'Entregado',1,1,1),(2,20,300000,'Entregado',2,2,2),(3,1,2000000,'Entregado',3,3,4),(4,6,700000,'Entregado',4,4,5),(5,100,200000,'Entregado',5,5,5),(6,1,1900000,'Entregado',6,6,4),(7,1,1000000,'Entregado',7,7,3),(8,10,800000,'Entregado',8,8,4),(9,30,500000,'Entregado',9,9,4),(10,1,2500000,'Entregado',10,10,1);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permisos` (
  `Id_permiso` int NOT NULL AUTO_INCREMENT,
  `Permiso` varchar(30) DEFAULT NULL,
  `Id_roles` int NOT NULL,
  PRIMARY KEY (`Id_permiso`),
  KEY `Id_roles` (`Id_roles`),
  CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`Id_roles`) REFERENCES `roles` (`Id_roles`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
INSERT INTO `permisos` VALUES (1,'Registrar venta',3),(2,'Eliminar venta',1),(3,'Modificar venta',1),(4,'Registrar compra',3),(5,'Eliminar compra',1),(6,'Modificar compra',1),(7,'Registrar producto',1),(8,'Modificar producto',1),(9,'Eliminar producto',1),(10,'Registrar usuario',2),(11,'Registrar servicio',4),(12,'Consultar servicio',1),(13,'Registrar inventario',1),(14,'Inhabilitar inventario',1),(15,'Modificar inventario',1),(16,'Registrar contrato',2),(17,'Consultar contrato',2),(18,'Eliminar contrato',2),(19,'Inhabilitar contrato',2);
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `Id_producto` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) DEFAULT NULL,
  `Modelo` varchar(20) DEFAULT NULL,
  `Cantidad` smallint DEFAULT NULL,
  `Clasificacion` varchar(1) DEFAULT NULL,
  `Estado` varchar(20) DEFAULT NULL,
  `Valor_compra` double DEFAULT NULL,
  `Valor_venta` double DEFAULT NULL,
  PRIMARY KEY (`Id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Ruedas continental','Continental',20,'A','Disponible',100000,150000),(2,'Aceite mobil 25L','Mobil 25L',50,'A','Disponible',10000,20000),(3,'Motor boxer disel','Boxer disel',2,'C','Disponible',2000000,2500000),(4,'Suspencion Reiger','Reiger',20,'B','Disponible',60000,85000),(5,'Pegatinas','Pegatinas ',150,'A','Disponible',10000,15000),(6,'Chasis compacto','Chasiscompac',5,'B','Disponible',1900000,2200000),(7,'Chasis escalera','Chasiscompac',5,'C','Disponible',1000000,1350000),(8,'Espejos Renauld','Renauld',30,'A','Disponible',70000,100000),(9,'Aceite mobil special 1L','Mobil special 1L',50,'A','Disponible',20000,35000),(10,'Motor boxer','Boxer',5,'C','Disponible',2500000,3000000);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prov_prod`
--

DROP TABLE IF EXISTS `prov_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prov_prod` (
  `Id_proveedor` int NOT NULL,
  `Id_producto` int NOT NULL,
  KEY `Id_proveedor` (`Id_proveedor`),
  KEY `Id_producto` (`Id_producto`),
  CONSTRAINT `prov_prod_ibfk_1` FOREIGN KEY (`Id_proveedor`) REFERENCES `proveedores` (`Id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prov_prod_ibfk_2` FOREIGN KEY (`Id_producto`) REFERENCES `productos` (`Id_producto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prov_prod`
--

LOCK TABLES `prov_prod` WRITE;
/*!40000 ALTER TABLE `prov_prod` DISABLE KEYS */;
INSERT INTO `prov_prod` VALUES (1,1),(4,1),(5,1),(2,1),(2,2),(3,2),(1,3),(3,3),(4,3),(5,4),(2,4),(1,4),(5,5),(2,5),(1,6),(5,6),(4,6),(3,7),(2,7),(4,8),(5,9),(4,9),(2,10),(1,10);
/*!40000 ALTER TABLE `prov_prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `Id_proveedor` int NOT NULL AUTO_INCREMENT,
  `Nombre_empresa` varchar(50) DEFAULT NULL,
  `Id_usuarios` int NOT NULL,
  PRIMARY KEY (`Id_proveedor`),
  KEY `Id_usuarios` (`Id_usuarios`),
  CONSTRAINT `proveedores_ibfk_1` FOREIGN KEY (`Id_usuarios`) REFERENCES `usuarios` (`Id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Refactions',31),(2,'Autocity',32),(3,'MotorWorld',33),(4,'NitroInc',34),(5,'AutoMotor',35);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `Id_roles` int NOT NULL AUTO_INCREMENT,
  `Nombre_rol` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id_roles`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador'),(2,'Secretaria'),(3,'Jefe de mecanicos'),(4,'Mecanicos'),(5,'Clientes'),(6,'Proveedores');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salida_productos`
--

DROP TABLE IF EXISTS `salida_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salida_productos` (
  `Id_salida_producto` int NOT NULL AUTO_INCREMENT,
  `Id_venta` int DEFAULT NULL,
  `Id_venta_producto` int DEFAULT NULL,
  PRIMARY KEY (`Id_salida_producto`),
  KEY `Id_venta` (`Id_venta`),
  KEY `Id_venta_producto` (`Id_venta_producto`),
  CONSTRAINT `salida_productos_ibfk_1` FOREIGN KEY (`Id_venta`) REFERENCES `ventas` (`Id_venta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `salida_productos_ibfk_2` FOREIGN KEY (`Id_venta_producto`) REFERENCES `venta_producto` (`Id_venta_producto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salida_productos`
--

LOCK TABLES `salida_productos` WRITE;
/*!40000 ALTER TABLE `salida_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `salida_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secretaria`
--

DROP TABLE IF EXISTS `secretaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secretaria` (
  `Id_secretaria` int NOT NULL AUTO_INCREMENT,
  `Id_empleado` int NOT NULL,
  PRIMARY KEY (`Id_secretaria`),
  KEY `Id_empleado` (`Id_empleado`),
  CONSTRAINT `secretaria_ibfk_1` FOREIGN KEY (`Id_empleado`) REFERENCES `empleados` (`Id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secretaria`
--

LOCK TABLES `secretaria` WRITE;
/*!40000 ALTER TABLE `secretaria` DISABLE KEYS */;
INSERT INTO `secretaria` VALUES (1,3),(2,4),(3,10);
/*!40000 ALTER TABLE `secretaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `Id_servicio` int NOT NULL AUTO_INCREMENT,
  `Tipo_servicio` varchar(100) DEFAULT NULL,
  `Estado` varchar(30) DEFAULT NULL,
  `Valor_servicio` double DEFAULT NULL,
  PRIMARY KEY (`Id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'Reparacion de frenos','Realizado',90000),(2,'Cambio de pintura','Realizado',70000),(3,'Reparacion de motor','Realizado',170000),(4,'Reparacion de motor','Realizado',170000),(5,'Revision tecnomecanica','Realizado',100000);
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `Id_usuarios` int NOT NULL AUTO_INCREMENT,
  `Documento` bigint DEFAULT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido` varchar(30) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `Telefono` bigint DEFAULT NULL,
  `Direccion` varchar(30) DEFAULT NULL,
  `Estado` tinyint(1) DEFAULT NULL,
  `Id_roles` int NOT NULL,
  PRIMARY KEY (`Id_usuarios`),
  KEY `Id_roles` (`Id_roles`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Id_roles`) REFERENCES `roles` (`Id_roles`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1308524706,'Jeison','Machado',NULL,4978531,'Cra 7 #25-78',NULL,3),(2,5146775464,'Michael','Lopez',NULL,6789413,'TV 26 #88-03',NULL,4),(3,3378211795,'Jenny','Bermudez',NULL,1579245,'Cra 4 #19-75',NULL,2),(4,4845111605,'Paola','Murcia',NULL,4796182,'Calle 78 #29',NULL,2),(5,4505374052,'Karen','Fino',NULL,4978532,'TV 16 #08-72',NULL,4),(6,4469099632,'Nicole','Ramirez',NULL,1465478,'Calle 78 #35',NULL,1),(7,5324006166,'Pablo','Perez',NULL,4972254,'Cra 8  #25-78',NULL,4),(8,4228819683,'Sergio','Jimenez',NULL,6588895,'Calle 03 #78',NULL,4),(9,4854650203,'Teresa','Ballesta',NULL,4443359,'Cra 7  #25-78',NULL,4),(10,1887896550,'Alison','Arevalo',NULL,6666124,'Calle 07-12',NULL,2),(11,8103540210,'Alejandra','Oviedo',NULL,4579235,'Calle 78 #29',NULL,4),(12,5571065071,'Pepe','Gonzales',NULL,4789582,'Cra 6  #25-78',NULL,4),(13,1614073455,'Shirly','Gutierrez',NULL,4789647,'Cra 32  #78',NULL,4),(14,7758219438,'Aurelio','Zapata',NULL,4794582,'Cra 7  #25-78',NULL,4),(15,1761966500,'Kelly','Zabala',NULL,2264198,'Cra 3  #09',NULL,4),(16,8745363862,'Fernando','Jimenez',NULL,3487942,'Cra 8  #25-78',NULL,5),(17,3581493281,'Luis',' Pinzon',NULL,4798516,'Cra 07  #720',NULL,5),(18,9479289157,'Martha','Acosta',NULL,4719926,'TV 215 # 15',NULL,5),(19,1622158540,'Marla','Mejia',NULL,4113119,'Cra 8  #25-78',NULL,5),(20,6691973612,'Tito','Mora',NULL,4222614,'TV 200 #333',NULL,5),(21,6395695695,'Pipe','Garcia',NULL,8795413,'Cra 15 #147',NULL,5),(22,9175995627,'ndres','Murcia',NULL,7779548,'Cra 115 #10',NULL,5),(23,2521058668,'Juan','Beltran',NULL,5550701,'TV 343 #343',NULL,5),(24,8980589668,'Ryan','Sanchez',NULL,5550101,'TV 100 #772',NULL,5),(25,8455314656,'Angel','Abril',NULL,4798562,'Cra 70 #1',NULL,5),(26,8776463950,'Mina','Ramirez',NULL,7988421,'Cra 103  #24-70',NULL,5),(27,9751347211,'Cristian','Jimenez',NULL,5559741,'Cra A17  #741',NULL,5),(28,5406126354,'Cristofer','Pinzon',NULL,6674985,'TV 117 # 343',NULL,5),(29,4392704629,'Gabriel','Cañon',NULL,6477102,'Cra 77  #25',NULL,5),(30,2105303745,'Yoseph','Lopez',NULL,1004157,'TV 200 #333',NULL,5),(31,3893672188,'Sergio','Baron',NULL,4978220,'Cra 15 A #200',NULL,6),(32,4881817070,'Andrey','Bustos',NULL,4462310,'Cra 15 A #215',NULL,6),(33,4719880980,'Ingrid','Calambas',NULL,1006410,'Cra 15 B #10',NULL,6),(34,5736406696,'Daniela','Contreras',NULL,1022487,'TV 100 #1120',NULL,6),(35,2827229359,'Laura','Cordero',NULL,1197330,'Cra 70 #188',NULL,6);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_producto`
--

DROP TABLE IF EXISTS `venta_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_producto` (
  `Id_venta_producto` int NOT NULL AUTO_INCREMENT,
  `Cantidad` smallint DEFAULT NULL,
  `Valor_unitario` double DEFAULT NULL,
  `Valor_total` double DEFAULT NULL,
  `Id_producto` int NOT NULL,
  PRIMARY KEY (`Id_venta_producto`),
  KEY `Id_producto` (`Id_producto`),
  CONSTRAINT `venta_producto_ibfk_1` FOREIGN KEY (`Id_producto`) REFERENCES `productos` (`Id_producto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_producto`
--

LOCK TABLES `venta_producto` WRITE;
/*!40000 ALTER TABLE `venta_producto` DISABLE KEYS */;
INSERT INTO `venta_producto` VALUES (1,2,150000,300000,1),(2,1,20000,20000,2),(3,1,2500000,2500000,3),(4,2,85000,170000,4),(5,10,15000,150000,5),(6,1,2200000,2200000,6),(7,1,1350000,1350000,7),(8,2,100000,200000,8),(9,2,35000,70000,9),(10,1,3000000,3000000,10);
/*!40000 ALTER TABLE `venta_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `Id_venta` int NOT NULL AUTO_INCREMENT,
  `Precio_total` double DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `Id_secretaria` int NOT NULL,
  `Id_cliente` int NOT NULL,
  PRIMARY KEY (`Id_venta`),
  KEY `Id_secretaria` (`Id_secretaria`),
  KEY `Id_cliente` (`Id_cliente`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`Id_secretaria`) REFERENCES `secretaria` (`Id_secretaria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`Id_cliente`) REFERENCES `clientes` (`Id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,300000,'2019-12-09','03:00:00',1,1),(2,20000,'2020-10-28','12:00:00',2,2),(3,2500000,'2019-05-14','08:00:00',3,3),(4,170000,'2020-06-04','10:00:00',1,4),(5,150000,'2020-06-05','12:00:00',2,5),(6,2200000,'2019-01-13','03:00:00',3,6),(7,1350000,'2019-06-07','12:00:00',1,7),(8,200000,'2019-06-23','03:00:00',2,8),(9,70000,'2019-06-09','12:00:00',3,9),(10,3000000,'2020-03-17','08:00:00',1,10),(11,90000,'2020-05-25','03:00:00',2,11),(12,70000,'2019-08-07','12:00:00',3,12),(13,170000,'2019-04-23','03:00:00',1,13),(14,170000,'2019-05-14','12:00:00',2,14),(15,100000,'2020-03-17','08:00:00',3,15);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-26  7:01:38
