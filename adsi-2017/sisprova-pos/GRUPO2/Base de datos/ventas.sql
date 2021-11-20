/*
SQLyog Ultimate v12.4.1 (64 bit)
MySQL - 10.1.10-MariaDB : Database - modulo_ventas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`modulo_ventas` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `modulo_ventas`;

/*Table structure for table `banco` */

DROP TABLE IF EXISTS `banco`;

CREATE TABLE `banco` (
  `id` smallint(6) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `banco` */

insert  into `banco`(`id`,`nombre`) values 
(1,'Banco Agrario'),
(2,'Banco w'),
(3,'Banco Av villas'),
(4,'Banco BBVA'),
(5,'Bancolombia');

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `id` smallint(6) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `telefono` smallint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cliente` */

insert  into `cliente`(`id`,`nombre`,`apellido`,`direccion`,`telefono`) values 
(1,'Camilo','Narvaez','Cra 23-34',32767),
(2,'Pedro','Campo','Cra 23-35',32767),
(3,'Diana','Herrera','Cra 23-36',32767),
(4,'Nicole','Narvaez','Cra 23-37',32767),
(5,'Alejandra','Herrera','Cra 23-38',32767),
(6,'Stefania','Lopez','Cra 23-39',32767),
(7,'Edwar','Guetio','Cra 23-40',32767),
(8,'Johan','Casas','Cra 23-41',32767),
(9,'David','Calderon','Cra 23-42',32767),
(10,'Bairon','Guetio','Cra 23-43',32767);

/*Table structure for table `detallexventa` */

DROP TABLE IF EXISTS `detallexventa`;

CREATE TABLE `detallexventa` (
  `id` smallint(6) NOT NULL,
  `cod_producto` smallint(6) DEFAULT NULL,
  `pago` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cod_producto` (`cod_producto`),
  CONSTRAINT `detallexventa_ibfk_1` FOREIGN KEY (`cod_producto`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detallexventa` */

insert  into `detallexventa`(`id`,`cod_producto`,`pago`) values 
(1,1,32767),
(2,2,32767),
(3,4,32767),
(4,5,32767),
(5,6,32767);

/*Table structure for table `formapago` */

DROP TABLE IF EXISTS `formapago`;

CREATE TABLE `formapago` (
  `id` smallint(6) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `formapago` */

insert  into `formapago`(`id`,`nombre`) values 
(1,'Efectivo'),
(2,'Tarjeta de Credito'),
(3,'Cuotas');

/*Table structure for table `formapagoxventa` */

DROP TABLE IF EXISTS `formapagoxventa`;

CREATE TABLE `formapagoxventa` (
  `cod_venta` smallint(6) DEFAULT NULL,
  `cod_formapago` smallint(6) DEFAULT NULL,
  `valor_pago` smallint(6) DEFAULT NULL,
  `cod_banco` smallint(6) DEFAULT NULL,
  KEY `cod_venta` (`cod_venta`),
  KEY `cod_formapago` (`cod_formapago`),
  KEY `cod_banco` (`cod_banco`),
  CONSTRAINT `formapagoxventa_ibfk_1` FOREIGN KEY (`cod_venta`) REFERENCES `venta` (`id`),
  CONSTRAINT `formapagoxventa_ibfk_2` FOREIGN KEY (`cod_formapago`) REFERENCES `formapago` (`id`),
  CONSTRAINT `formapagoxventa_ibfk_3` FOREIGN KEY (`cod_banco`) REFERENCES `banco` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `formapagoxventa` */

insert  into `formapagoxventa`(`cod_venta`,`cod_formapago`,`valor_pago`,`cod_banco`) values 
(1,1,23232,1),
(2,2,32767,3),
(3,3,32767,4),
(4,1,32767,5),
(5,2,32767,2);

/*Table structure for table `garantia` */

DROP TABLE IF EXISTS `garantia`;

CREATE TABLE `garantia` (
  `id` smallint(6) NOT NULL,
  `fecha_inicial` varchar(10) DEFAULT NULL,
  `fecha_final` varchar(10) DEFAULT NULL,
  `cod_producto` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cod_producto` (`cod_producto`),
  CONSTRAINT `garantia_ibfk_1` FOREIGN KEY (`cod_producto`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `garantia` */

insert  into `garantia`(`id`,`fecha_inicial`,`fecha_final`,`cod_producto`) values 
(110,'31/10/2011','31/10/2012',1),
(111,'08/08/2003','08/08/2004',2),
(222,'07/07/2004','07/07/2005',3),
(333,'06/06/2005','06/06/2006',4),
(444,'06/05/2006','06/05/2007',5),
(555,'05/04/2007','05/04/2008',6),
(666,'04/03/2008','04/02/2009',7),
(777,'01/02/2009','01/01/2010',8),
(888,'01/01/2010','01/01/2011',9),
(999,'01/12/2010','01/12/2011',10);

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `producto` */

insert  into `producto`(`id`) values 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

/*Table structure for table `venta` */

DROP TABLE IF EXISTS `venta`;

CREATE TABLE `venta` (
  `id` smallint(6) NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `estado` varchar(12) DEFAULT NULL,
  `cod_cliente` smallint(6) DEFAULT NULL,
  `cod_detallexventa` smallint(6) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cod_cliente` (`cod_cliente`),
  KEY `cod_detallexventa` (`cod_detallexventa`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`cod_detallexventa`) REFERENCES `detallexventa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `venta` */

insert  into `venta`(`id`,`fecha`,`estado`,`cod_cliente`,`cod_detallexventa`,`total`) values 
(1,'30/03/2017','Activo',1,1,568687),
(2,'30/03/2010','Activo',2,5,6645345),
(3,'30/03/2008','Activo',3,2,232324),
(4,'30/03/2008','Activo',4,4,121323),
(5,'30/03/2015','Activo',5,3,13132),
(6,'30/03/2010','Activo',6,1,2312232),
(7,'30/03/2006','No Activ',7,3,939493),
(8,'30/03/2011','Activo',8,2,93943),
(9,'30/03/2014','Activo',9,3,2424),
(10,'01/02/2001','No Activ',10,1,754653);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
