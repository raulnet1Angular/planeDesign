SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `draft`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `idcomentario` int(11) NOT NULL,
  `comentario` text,
  `fecha` datetime DEFAULT NULL,
  `usuario` int(11) NOT NULL,
  `publicacion` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `idconfig` int(11) NOT NULL,
  `login` int(11) DEFAULT NULL,
  `register` int(11) DEFAULT NULL,
  `forgot` int(11) DEFAULT NULL,
  `smtp` varchar(100) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `fromname` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `messagemail` text,
  `messagechange` text,
  `renewmessage` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`idconfig`, `login`, `register`, `forgot`, `smtp`, `port`, `fromname`, `mail`, `password`, `url`, `messagemail`, `messagechange`, `renewmessage`) VALUES
(1, 1, 1, 1, 'smtp.gmail.com',587,'Plane Design','pruebaplanoalcanos@gmail.com','carlos1A','http://localhost/planeDesign/php/','Hola! muchas gracias por registrarte, ahora solo debes de registrar tu cuenta usando el siguiente link', 'Has cambiado de correo electronico! usa el siguiente link para confirmar tu correo electronico', 'Has pedido recuperar tu cuenta, tu nueva contraseña es:');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `idcontacts` int(11) NOT NULL,
  `contact` int(11) DEFAULT NULL,
  `fromcontact` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likepost`
--

DROP TABLE IF EXISTS `likepost`;
CREATE TABLE IF NOT EXISTS `likepost` (
  `idlike` int(11) NOT NULL,
  `post` int(11) DEFAULT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `idmessage` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `de` int(11) DEFAULT NULL,
  `para` int(11) DEFAULT NULL,
  `asunto` varchar(100) DEFAULT NULL,
  `mensaje` text,
  `leido` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`idmessage`, `fecha`, `de`, `para`, `asunto`, `mensaje`, `leido`) VALUES
(2, '2016-06-14 08:43:58', 1, 1, 'Que pedo', 'xDDD', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preferiences`
--

DROP TABLE IF EXISTS `preferiences`;
CREATE TABLE IF NOT EXISTS `preferiences` (
  `idpreference` int(11) NOT NULL,
  `theme` int(11) DEFAULT NULL,
  `lang` int(11) DEFAULT NULL,
  `usuario` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `preferiences`
--

INSERT INTO `preferiences` (`idpreference`, `theme`, `lang`, `usuario`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

DROP TABLE IF EXISTS `publicaciones`;
CREATE TABLE IF NOT EXISTS `publicaciones` (
  `idpublicacion` int(11) NOT NULL,
  `publicacion` text,
  `fecha` datetime DEFAULT NULL,
  `usuario` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `draw`;
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `apellido` varchar(250) DEFAULT NULL,
  `profile` varchar(250) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `registro` date DEFAULT NULL,
  `permalink` varchar(250) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  `ranker` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nombre`, `apellido`, `profile`, `email`, `password`, `registro`, `permalink`, `activo`, `ranker`) VALUES
(2, 'Administrador', '', '1', 'admin@jhcodes.com', '58d0aff38247e1e3862a2adb46b668afe9e6433b', '2016-06-29', 'ad1c1e268f', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `verify`
--

DROP TABLE IF EXISTS `verify`;
CREATE TABLE IF NOT EXISTS `verify` (
  `idactive` int(11) NOT NULL,
  `token` varchar(250) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `verify`
--

INSERT INTO `verify` (`idactive`, `token`, `email`, `fecha`) VALUES
(1, '03669190632308f2d9cfc572d79e5f6d671cf20b', 'admin@jhcodes.com', '2016-06-29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idcomentario`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`idconfig`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`idcontacts`);

--
-- Indices de la tabla `likepost`
--
ALTER TABLE `likepost`
  ADD PRIMARY KEY (`idlike`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`idmessage`);

--
-- Indices de la tabla `preferiences`
--
ALTER TABLE `preferiences`
  ADD PRIMARY KEY (`idpreference`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`idpublicacion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `verify`
--
ALTER TABLE `verify`
  ADD PRIMARY KEY (`idactive`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idcomentario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `idconfig` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `idcontacts` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `likepost`
--
ALTER TABLE `likepost`
  MODIFY `idlike` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `idmessage` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `preferiences`
--
ALTER TABLE `preferiences`
  MODIFY `idpreference` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `idpublicacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `verify`
--
ALTER TABLE `verify`
  MODIFY `idactive` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


/*============================================================================*/
/* Registro de tablas imprescindibles para el manejo del sistema              */
/*============================================================================*/

/*============================================================================*/
/* Tablas requeridas para el registro de graficas                             */
/*============================================================================*/
DROP TABLE IF EXISTS `draw`;
CREATE TABLE IF NOT EXISTS `draw` (
    `ident`       int unsigned                          NOT NULL auto_increment,
    `name`        varchar(128)                          NOT NULL,
    `data`        mediumtext                            NOT NULL,
    `image`       blob                                  NULL,
    `usuario`     int(11)                               NOT NULL,
    `ts_created`  int(11)                               NOT NULL,
    `ts_modified` int(11)                               NOT NULL,
    PRIMARY KEY (`ident`),
    UNIQUE INDEX (`name`),
    FOREIGN KEY (`usuario`) REFERENCES `usuarios`(`idusuario`) ON UPDATE CASCADE ON DELETE RESTRICT
) DEFAULT CHARACTER SET UTF8;

INSERT INTO draw (usuario,name,ts_created,ts_modified,data) VALUES
(2,'Ejemplo 01',UNIX_TIMESTAMP(),UNIX_TIMESTAMP(),'rect1 :: M 100 100 L 100 900 L 900 900 L 900 100 Z ## line1 :: M 100 100 L 100 900 ## line1 :: M 100 900 L 900 900 ## line1 :: M 900 900 L 900 100 ## line1 :: M 900 100 L 100 100 ## door7 :: M 100 200 L 100 400 ## text1 :: 370 309 Sala Principal ## table1 :: M 249 459 L 249 550 L 330 550 L 330 459 :: 249 459 81 91 rotate(0,289.5,504.5) ## table1 :: M 386 461 L 386 548 L 466 548 L 466 461 :: 386 461 80 87 rotate(0,426,504.5) ## couch3 :: M 453.4304804004939 810.0641036468149 L 238.43040257910826 810.9377039902758 L 238.75661951394912 891.2223180045978 L 453.75669733533516 890.3487176611383 Z :: 306.02047848924576 743.1163326996198 80.14614293595167 215.0537562521738 rotate(-90.26987939108952,346.0935499572216,850.6432108257067) ## bookcase1 :: M 115 607 L 115 746 L 175 746 L 175 607 :: 115 607 60 139 rotate(0,145,676.5) ## line1 :: M 101 594 L 496 594 ## couch2 :: M 490.0834088942145 676.5477293559896 L 490.24053812523283 597.803540598446 L 349.63532326409916 597.5229714588439 L 349.47819403308034 676.2671602163883 Z :: 380.865728628149 566.5219437544547 77.98727490201554 141.02681330592463 rotate(90.42236894281284,419.85936607915676,637.035350407417)'),
(2,'Ejemplo 02',UNIX_TIMESTAMP(),UNIX_TIMESTAMP(),'line1 :: M 54 87 L 1693 87 ## line1 :: M 56 88 L 56 746 ## line1 :: M 256 86 L 257 253 ## window1 :: M 172 88 L 229 88 ## polyline1 :: M 257 252 L 278 273 L 792 271 L 790 85 ## window1 :: M 322 88 L 461 87 ## line1 :: M 540 88 L 539 274 ## line1 :: M 479 88 L 478 274 ## line1 :: M 481 216 L 539 216 ## door5 :: M 480 120 L 478 193 ## door2 :: M 405 272 L 469 272 ## door1 :: M 533.2520141601562 272.9277038574219 L 486.3154296875 272.9277038574219 ## bookcase1 :: M 537.6307893388823 246.03975430118675 L 537.2378133882635 213.97218384521744 L 479.252931760611 214.6827666444486 L 479.6459077112298 246.7503371004177 Z :: 492.66731712679746 201.22412759429085 31.5490868458985 58.27426575705354 rotate(89.81129425641318,508.4418605497467,230.36126047281763) ## bed1 :: M 264.4093322753906 127.42854309082031 L 264.4093322753906 188 L 365 188 L 365 127.42854309082031 Z :: 264.4093322753906 127.42854309082031 100.59066772460938 60.57145690917969 rotate(0,314.7046661376953,157.71427154541016) ## stand1 :: M 264.102294921875 94.80595397949219 L 264.102294921875 123.58633422851562 L 291.1897277832031 123.58633422851562 L 291.1897277832031 94.80595397949219 :: 264.102294921875 94.80595397949219 27.087432861328125 28.780380249023438 rotate(0,277.64601135253906,109.1961441040039) ## line1 :: M 618 338 L 57 340 ## door1 :: M 279.56707763671875 330.4866027832031 L 279.56707763671875 275.4866027832031 ## line1 :: M 185 282 L 185 338 ## line1 :: M 186 283 L 54 285 ## door5 :: M 80 286 L 163 284 ## bed2 :: M 59.699697629013414 95.90352031786834 L 61.3807917232232 210.8435670339112 L 148.10912594922308 209.57509277595156 L 146.4280318550133 94.63504605990867 Z :: 47.48106769352566 108.00934353194376 112.8466881911852 89.45992602993239 rotate(90.53142429655647,103.90441178911826,152.73930654690994) ## door7 :: M 611 272 L 719 272 ## window1 :: M 606 87 L 721 87 ## desktop1 :: M 721.4062335814667 94.00329504128106 L 722.5937664185333 200.99670495871894 L 782.590071045134 200.3307986949433 L 781.4025382080674 93.33738877750542 :: 721.9981523133004 93.66704686811218 60 107 rotate(-0.6359066962186006,751.9981523133004,147.16704686811218) ## bookcase1 :: M 547 92 L 547 185 L 586 185 L 586 92 :: 547 92 39 93 rotate(0,566.5,138.5) ## chair1 :: M 543 194 L 543 230 L 584 230 L 584 194 :: 543 194 41 36 rotate(0,563.5,212) ## polyline1 :: M 609 337 L 610 455 L 397 455 ## bathtub3 :: M 539 341 L 539 453 L 616 453 L 616 341 :: 539 341 77 112 rotate(0,577.5,397) ## toilet1 :: M 495.3421795574893 391.89254116190864 L 496.7248819495346 453.94441334996543 L 540.4329229568971 452.9704667030483 L 539.0502205648518 390.9185945149915 Z :: 486.9114434196205 400.4906111654299 61.95221567514534 43.88178553409716 rotate(-91.12599974629777,517.8875512571932,422.4315039324785) ## sink1 :: M 429.0011813697993 451.78262153662826 L 468.9988186302007 452.21737846337174 L 469.4227066337756 413.2196821344804 L 429.42506937337424 412.78492520773693 :: 429.71194400178746 412.50115183555437 39 40 rotate(-89.37724431279368,449.21194400178746,432.50115183555437) ## door2 :: M 462 339 L 407 339 ## line1 :: M 397 415 L 397 681 ## polyline1 :: M 57 507 L 253 506 L 285 532 L 286 650 L 302 670 L 397 669 ## line1 :: M 56 747 L 809 743 ## door1 :: M 325 738 L 324 680 ## window1 :: M 341 745 L 389 745 ## window1 :: M 131 747 L 224 747 ## window1 :: M 56 540 L 56 582 ## window1 :: M 56 668 L 55 708 ## bookcase1 :: M 60.000805201278254 556.2538019974538 L 139.99919479872176 555.7461980025462 L 139.11723285756972 416.74899607698813 L 59.11884326012624 417.2566000718958 :: 30.059019029423993 446.50139903722095 139 80 rotate(-90.36354702156001,99.559019029424,486.50139903722095) ## line1 :: M 144.27020263671875 464.6424865722656 L 144.78366088867188 506.2292785644531 ## door1 :: M 154.05967712402344 507.8890380859375 L 206.5415496826172 507.0425720214844 ## line1 :: M 277.64599609375 330.1278991699219 L 277.64599609375 340.2856750488281 ## line1 :: M 323.35601806640625 738.132080078125 L 321.66302490234375 747.443359375 ## line1 :: M 322.98150159465865 680.5886612250395 L 322.8840379561226 670.3961410210543 ## bed2 :: M 280.3175457461625 662.9991868067566 L 279.6824542538375 539.0008131932434 L 145.68421180052493 539.6871217414011 L 146.31930329285004 663.6854953549143 :: 146.00087877334374 539.3431542740789 134 124 rotate(179.70654660318888,213.00087877334374,601.3431542740789) ## chair1 :: M 69.50013305307161 747.4243609599749 L 112.49986694692839 747.5756390400251 L 112.67225359628775 698.575942277258 L 69.67251970243096 698.4246641972079 :: 66.58619332467968 701.5001516186164 49 43 rotate(-89.79842759535808,91.08619332467968,723.0001516186164) ## line1 :: M 143 419 L 143 339 ## shower1 :: M 139.84461918962617 337.86628501483045 L 61.84510406916647 338.1413140554356 L 62.15186722984146 425.1407732282561 L 140.15138235030116 424.86574418765093 :: 57.498243209733815 342.5035291215433 87 78 rotate(89.79797389842314,100.99824320973381,381.5035291215433) ## window1 :: M 57 431 L 56 461 ## basin2 :: M 252.98729738328487 395.0258966981899 L 253.01319730526373 344.0259032747193 L 151.01321045832256 343.9741034307616 L 150.9873105363437 394.9740968542322 :: 151.00025392080371 344.0000000644757 102 51 rotate(-179.9709028179825,202.00025392080371,369.5000000644757) ## line1 :: M 259 511 L 311.5052490234375 442.7099609375 ## polyline1 :: M 263 340 L 263 403 L 340 463 L 372 426 ## polyline1 :: M 397 426 L 372 426 L 371 339 ## door1 :: M 268 407 L 304 436 ## toilet1 :: M 365.03826913167103 389.9999624480039 L 364.96173086832897 351.0000375519961 L 310.9618348584721 351.1060136089312 L 311.0383731218142 390.105938504939 :: 311.0000519950716 351.05298802846755 54 39 rotate(179.8875558390831,338.0000519950716,370.55298802846755) ## sink1 :: M 346.32434203622233 388.53581646410765 L 310.4514355477513 396.599738137855 L 327.5465503847931 472.6485244195162 L 363.41945687326387 464.58460274576896 Z :: 317.7277371810649 392.0181871296837 38.41541805888551 77.14796662425647 rotate(-140.94456476142358,336.9354462105077,430.59217044181196) ## door1 :: M 308.3406360444433 447.07613118432744 L 280.32574462890625 483.6389465332031 ## bookcase1 :: M 289 536 L 289 628 L 330 628 L 330 536 :: 289 536 41 92 rotate(0,309.5,582) ## text1 :: 89 681 Suite Principal ## text1 :: 77 252 Dormitorio 1 ## text1 :: 294 244 Dormitorio 2 ## text1 :: 625 194 Estudio ## line1 :: M 810 715 L 808 825 ## polygon1 :: M 55 748 L 56 852 L 390 851 L 390 1092 L 424 1131 L 768 1133 L 809 1089 L 807 746 L 405 744 Z ## window1 :: M 809 758 L 809 800 ## line1 :: M 397 735 L 397 745 ## door7 :: M 510 744 L 643 744 ## window1 :: M 435 745 L 492 744 ## window1 :: M 661 744 L 715 743 ## stool1 :: M 411 467 L 411 496 L 442 496 L 442 467 Z :: 411 467 31 29 rotate(0,426.5,481.5) ## couch3 :: M 405 508 L 405 635 L 447 635 L 447 508 :: 405 508 42 127 rotate(0,426,571.5) ## couch3 :: M 585.9998323193491 460.8523569964347 L 456.0001676806509 461.1476430035653 L 456.1001106369105 505.1475294966631 L 586.0997752756086 504.85224348953244 :: 499.0499714781297 417.99994324654887 44 130 rotate(89.86985648841366,521.0499714781297,482.99994324654887)'),
(2,'Ejemplo 03',UNIX_TIMESTAMP(),UNIX_TIMESTAMP(),'rect2 :: M 100 50 L 100 900 L 900 900 L 900 50 Z ## room1 :: M 100 50 L 100 300 L 400 300 L 400 50 Z ## room1 :: M 400 50 L 400 300 L 700 300 L 700 50 Z ## room2 :: M 700 50 L 700 300 L 900 300 L 900 50 Z ## room3 :: M 100 300 L 100 500 L 250 500 L 250 300 Z ## room1 :: M 100 500 L 100 750 L 400 750 L 400 500 Z ## door1 :: M 270 300 L 320 300 ## door1 :: M 570 300 L 620 300 ## door1 :: M 250 480 L 250 430 ## door1 :: M 400 570 L 400 520 ## door2 :: M 700 200 L 700 250 ## door7 :: M 450 900 L 590 900 ## text2 :: 604 642 Patio ## text1 :: 384 957 C / INNOMINADA ## gasline2 :: M 690 305 L 690 900 ## gasline1 :: M 688 305 L 895 305 L 895 225 ## meter :: M 672 892 L 672 908 L 702 908 L 702 892 Z ## cooker1 :: M 855 232 L 855 278 L 892 278 L 892 232 :: 855 232 37 46 rotate(0,873.5,255) ## output :: M 737 300 L 563 410 ## input :: M 841 300 L 747 512 ## heater :: M 683 305 L 362 401 ## piston1 :: M 882 227 L 897 132 ## aeration :: M 744 299 L 835 299'),
(2,'Ejemplo 04',UNIX_TIMESTAMP(),UNIX_TIMESTAMP(),'rect2 :: M 20 20 L 20 960 L 960 960 L 960 20 Z ## room4 :: M 20 960 L 20 760 L 270 760 L 270 960 Z ## room1 :: M 20 220 L 20 420 L 220 420 L 220 220 Z ## room3 :: M 20 20 L 20 110 L 300 110 L 300 20 Z ## line1 :: M 20 220 L 960 220 ## line1 :: M 566 21 L 566 101 ## rect2 :: M 700 220 L 700 370 L 960 370 L 960 220 Z ## room1 :: M 700 370 L 700 520 L 960 520 L 960 370 Z ## room1 :: M 700 520 L 700 670 L 960 670 L 960 520 Z ## room3 :: M 700 670 L 700 770 L 960 770 L 960 670 Z ## polyline1 :: M 700 770 L 665 770 L 665 220 ## text2 :: 363 558 Patio ## text2 :: 713 72 Cocina ## text5 :: 716 90 (V > 8m³) ## door1 :: M 157 111 L 198 111 ## door2 :: M 130 220 L 83 220 ## door1 :: M 271 851 L 270 802 ## door2 :: M 701 274 L 701 321 ## door2 :: M 701 407 L 701 458 ## door2 :: M 700 567 L 701 618 ## door2 :: M 701 707 L 702 756 ## aeration :: M 598 219 L 688 219 ## input :: M 591 220 L 496 326 ## output :: M 961 35 L 1079 80 ## gasline1 :: M 962 778 L 693 777 L 695 212 L 954 213 L 954 119 ## piston1 :: M 951 119 L 797 166 ## cooker1 :: M 917 67 L 917 116 L 953 116 L 953 67 :: 917 67 36 49 rotate(0,935,91.5)');

