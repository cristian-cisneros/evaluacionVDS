-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.11-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para libreria
CREATE DATABASE IF NOT EXISTS `libreria` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `libreria`;

-- Volcando estructura para tabla libreria.libros
CREATE TABLE IF NOT EXISTS `libros` (
  `idLibro` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `apellidosAutor` varchar(200) NOT NULL,
  `nombreAutor` varchar(200) NOT NULL,
  `numeroPaginas` int(11) NOT NULL,
  `imgUrl` longtext NOT NULL,
  PRIMARY KEY (`idLibro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla libreria.libros: ~4 rows (aproximadamente)
DELETE FROM `libros`;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` (`idLibro`, `titulo`, `apellidosAutor`, `nombreAutor`, `numeroPaginas`, `imgUrl`) VALUES
	(1, 'Harry Potter y la Piedra Filosofal', 'j.k.', 'Rowling', 200, 'https://pictures.abebooks.com/BERCEO/30311421139.jpg'),
	(3, 'Harry Potter y la Camara de los Secretos', 'J.K.', 'Rowling', 300, 'https://images-na.ssl-images-amazon.com/images/I/51xrq-lur8L._SX311_BO1,204,203,200_.jpg'),
	(4, 'Caballo de Troya (Jerusalen)', 'Benitez', 'JJ', 500, 'https://libreriadelau.vteximg.com.br/arquivos/ids/285342-1000-1000/caballo-de-troya-1-np-9789584228253-plan.jpg?v=636241661631900000'),
	(5, 'Caballo de Troya (Masada)', 'Benitez', 'JJ', 450, 'https://cdn.gandhi.com.mx/media/catalog/product/cache/1/image/370x/9df78eab33525d08d6e5fb8d27136e95/9/7/9786070709555.jpg');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
