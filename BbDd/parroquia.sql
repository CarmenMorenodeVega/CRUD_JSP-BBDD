

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `parroquia`
--
CREATE DATABASE IF NOT EXISTS `parroquia` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `parroquia`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menor`
--

CREATE TABLE IF NOT EXISTS `menor` (
  `menorID` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tutor` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `telefono` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`menorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `menor`
--

INSERT INTO `menor` (`menorID`, `nombre`, `tutor`, `edad`, `telefono`) VALUES
(1601, 'Bermúdez Espada, Ana María', 'Juana' , 9, '123456789'),
(1602, 'Cano Cuenca, Margarita', 'Luisa', 8, '213456789'),
(1610, 'Doña Enríquez, Adrián Manuel', 'Eva', 8, '321456789'),
(1701, 'Fernández Padilla, Esther', 'Francisco', 7, '432156789'),
(1702, 'Galán Bazán, Ester María', 'Pelayo', 7, '543216789'),
(1710, 'Guzmán Puyol, Estefanía', 'Mónica', 6, '654321789'),
(1801, 'Martín Jurado, Eva', 'Susana', 7 , '765432189'),
(1802, 'Moreno Blanco, Carlos', 'Ernesto', 6, '876543219'),
(1810, 'Narváez Gálvez, Juan Antonio', 'Isabel', 6, '987654321');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
