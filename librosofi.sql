
create database librosofi;
use librosofi;

CREATE TABLE `tb_autor` (
  `codigo_autor` int(11) NOT NULL,
  `Nombres_autor` varchar(45) DEFAULT NULL,
  `Pais_autor` varchar(20) DEFAULT NULL,
   primary key(codigo_autor)
);

INSERT INTO `tb_autor` (`codigo_autor`, `Nombres_autor`, `Pais_autor`) VALUES
(1, 'Héctor García', 'España'),
(2, 'JOJO MOYES', 'Inglaterra'),
(3, 'Indira Rodriguez', 'Colombia'),
(4, 'Karen Suarez', 'Colombia'),
(5, 'J.K. Rowling', 'Reino Unido'),
(6, 'Yioshihisa Igarashi', 'Japon'),
(7, 'Halina Birenbaum', 'Polonia');


CREATE TABLE `tb_editorial` (
  `Codigo_editorial` int(11) NOT NULL,
  `Nombre_editorial` varchar(45) DEFAULT NULL,
  `Nit_editorial` int(11) NOT NULL,
  `Ciudad_editorial` varchar(20) DEFAULT NULL,
  `Pais_editorial` varchar(20) DEFAULT NULL,
  `Telefono_editorial` varchar(20) DEFAULT NULL,
  `Dirección_editorial` varchar(45) DEFAULT NULL,
  primary key (Codigo_editorial)
) ;

INSERT INTO `tb_editorial` (`Codigo_editorial`, `Nombre_editorial`, `Nit_editorial`, `Ciudad_editorial`, `Pais_editorial`, `Telefono_editorial`, `Dirección_editorial`) VALUES
(1, 'Vergara', 901789563, 'Cataluña', 'España', '8479080', 'Travessera de Gracia'),
(2, 'Verso Book', 900678956, 'Londres', 'Inglaterra', '440204373', '6 Meard Street'),
(3, 'Planeta', 978628000, 'Barcelona', 'España', '16079', ' Cl. 73 #7-60'),
(4, 'Scholastic', 890904478, 'New York', 'Estados Unidos', '6463305288', '557 Broadway New York'),
(5, 'Quadrata', 899999034, 'Buenos Aires', 'Argentina', '43712325', 'Av. Corrientes 1471'),
(6, 'Museo Auschwitz-Birkenau', 895632147, 'Cracovia', 'Polonia', '4833844', '20, 32-603 Oświecim'),
(9, 'Scholastic', 890904478, 'New York', 'Estados Unidos', '64633052', '557 Broadway New York');

CREATE TABLE `tb_compra` (
  `fact_compra` int(11) NOT NULL,
  `Precio_libro` int(11) NOT NULL,
  `Codigo_editorial` int(11) NOT NULL,
  `Com_fecha_de_ingreso` date DEFAULT NULL,
  primary key(fact_compra),
  foreign key (Codigo_editorial) references tb_editorial (Codigo_editorial)
);


CREATE TABLE `tb_genero` (
  `Codigo_genero` int(11) NOT NULL,
  `Nombre_genero` varchar(45) DEFAULT NULL,
  primary key (Codigo_genero)
); 



INSERT INTO `tb_genero` (`Codigo_genero`, `Nombre_genero`) VALUES
(1, 'Autoayuda'),
(2, 'Narrativo'),
(3, 'Sexologia'),
(4, 'Drama'),
(5, 'Aventura'),
(6, 'Infantil'),
(7, 'Romance'),
(8, 'Cronica');

CREATE TABLE `tb_lector` (
  `Nro_ident_lector` int(11) NOT NULL,
  `Tipo_ident_lector` varchar(20) DEFAULT NULL,
  `Nombres_lector` varchar(45) DEFAULT NULL,
  `Usuario_lector` varchar(20) DEFAULT NULL,
  `Telefono_lector` int(11) NOT NULL,
  `Direccion_lector` varchar(45) DEFAULT NULL,
  `Codigo_postal_lector` int(11) NOT NULL,
  primary key (Nro_ident_lector)
);
INSERT INTO `tb_lector` (`Nro_ident_lector`, `Tipo_ident_lector`, `Nombres_lector`, `Usuario_lector`, `Telefono_lector`, `Direccion_lector`, `Codigo_postal_lector`) VALUES
(1, 'cedula', 'Pedro Chaparro', '122334455', 234566665, 'PO Box 421,1618 Sofia', 78643345),
(2, 'Tarjeta Inde.', 'Sandra Larrota', '99990087TYG', 54432178, 'Po box 68 F1025', 564211),
(3, 'cedula', 'Erica Galindo', '675432445Y', 5463218, 'Cra. 8 # 33-79', 118),
(4, 'cedula', 'Elsa Pito', '90976RTY', 7785093, 'Castilla 267 Puente', 1742);

CREATE TABLE `tb_promocion` (
  `Pro_codigo` int(11) NOT NULL,
  `Pro_nombre` varchar(30) DEFAULT NULL,
  `Pro_Valor_descon` int(11) NOT NULL,
 Primary key (Pro_codigo)
) ;
INSERT INTO `tb_promocion` (`Pro_codigo`, `Pro_nombre`, `Pro_Valor_descon`) VALUES
(45, '10% de descuento', 200),
(67, '30% de descuento', 4500),
(87, '40% de descuento', 3000),
(987, '50% de descuento', 4200);

CREATE TABLE `tb_libro` (
  `Codigo_libro` int(11) NOT NULL,
  `Codigo_genero` int(11) NOT NULL,
  `codigo_autor` int(11) NOT NULL,
  `Codigo_editorial` int(11) NOT NULL,
  `Pro_codigo` int(11) NOT NULL,
  `Titulo_libro` varchar(45) DEFAULT NULL,
  `isbn_libro` varchar(20) DEFAULT NULL,
  `autor_libro` varchar(45) DEFAULT NULL,
  `Nombre_genero` varchar(45) DEFAULT NULL,
  `Nombre_editorial` varchar(45) DEFAULT NULL,
  `descripcion_libro` varchar(150) DEFAULT NULL,
  `Edicion_libro` varchar(20) DEFAULT NULL,
  `Cantidad_libro` int(11) NOT NULL,
  `Fecha_publicacion_libro` date DEFAULT NULL,
  `Idioma_libro` varchar(20) DEFAULT NULL,
  `Nro_paginas_libro` int(11) NOT NULL,
  `Precio_libro` int(11) NOT NULL,
  primary key(Codigo_libro),
foreign key (Codigo_genero)  references tb_genero (Codigo_genero) ,
foreign key(codigo_autor) references tb_Autor(codigo_autor),
foreign key  (codigo_editorial)  references  tb_editorial(Codigo_editorial), 
foreign key (pro_codigo) references tb_promocion(Pro_codigo) 
);

INSERT INTO `tb_libro` (`Codigo_libro`, `Codigo_genero`, `codigo_autor`, `Codigo_editorial`, `pro_codigo`, `Titulo_libro`, `isbn_libro`, 
`autor_libro`,  `Nombre_genero`,`Nombre_editorial`, `descripcion_libro`, `Edicion_libro`, `Cantidad_libro`, `Fecha_publicacion_libro`, `Idioma_libro`, `Nro_paginas_libro`, `Precio_libro`) VALUES
(1, 1, 1, 1, 45, 'IKIGAI ESENCIAL', '9789585647244', 'Héctor García', 'Autoayuda', 'Vergara','', '1', 50, '2018-08-21', 'Español', 205, 47000),
(2, 2, 2, 2, 67, 'Yo antes de ti', '9788416555086', 'JOJO MOYES', 'Narrativo', 'Verso Book','', '1', 100, '2015-01-05', 'Español', 496, 65000),
(33, 4, 7, 3, 87, 'la entrada', '9789588573335', 'Indira Rodriguez', 'Drama', 'Planeta', '1','', 90, '2000-05-06', 'Español', 421, 45000),
(46, 5, 5, 9, 987, 'Harry Potter y la Piedra filosofal', 'J.K. Rowling', 'Aventura', 'Scholastic','', '9788418174070', '2', 80, '2012-09-02', 'Español', 740, 49000);


CREATE TABLE `users` (
  userid int(11) NOT NULL,
  username varchar(150) NOT NULL,
  email varchar(100) NOT NULL,
  password varchar(100) NOT NULL,
  primary key (userid)
);

INSERT INTO `users` (`userid`, `username`, `email`, `password`) VALUES
(1, 'dfdfdf', 'dfdf@fgfg', 'c20ad4d76fe97759aa27a0c99bff6710'),
(2, 'ra', 'ra@gmail.com', 'db26ee047a4c86fbd2fba73503feccb6'),
(3, 'rabbani', 'rabbani@gmail', 'c20ad4d76fe97759aa27a0c99bff6710'),
(4, 'd', 'd@gmail', 'c4ca4238a0b923820dcc509a6f75849b'),
(5, 'rabbani1', 'rabbani@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710');

create table Tb_factura(
Cod_fac int not null,
Com_fecha_de_ingreso date ,
userid varchar (50),
Precio_libro int not null,
Cantidad_libro int not null,
primary key (Cod_fac )
);

drop table Tb_venta;
create table Tb_venta(
cod_venta int(11) NOT NULL primary key,
fecha_venta date not null,
userid int(11) NOT NULL,
Codigo_libro int(11) NOT NULL,
Cantidad_libro int(11) NOT NULL,

foreign key (userid) references users (userid),
foreign key (Codigo_libro) references tb_libro (Codigo_libro)  
);

insert into `Tb_venta` (cod_venta,fecha_venta,userid,Cantidad_libro,codigo_libro)  values
(1,"2020-05-16",1,50,2);


create trigger actualizarcantidaddelibrosvendidos
after insert on tb_venta
FOR EACH ROW
update tb_libro as l 
inner join Tb_venta as v on(v.cod_venta = l.Codigo_libro)
set Cantidad_libro= (
select sum(v.Cantidad_libro - l.Cantidad_libro ) from Tb_venta as v
inner join Tb_libro on(v.Cantidad_libro = l.Cantidad_libro)
where v.cod_venta= (select max(v.cod_venta) from Tb_venta) ) where v.cod_venta = (select max(v.cod_venta) from Tb_venta);

select *from tb_venta;

select * from Tb_libro;