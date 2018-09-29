USE Practica#3_1747193

select * from Servicios
select * from Domicilio
select * from Empresas
select * from Servicio_Descripcion



insert into Servicio_Descripcion values(765,'Familiia CocaCola bebidas')
insert into Servicio_Descripcion values(766,'Galletas, Dulces,Pasteles, gamesa')
insert into Servicio_Descripcion values(767,'Papitas Fritas, Snacks, Sabritas')
insert into Servicio_Descripcion values(768,'Zapatos, Ropa Deportiva Adidas')
insert into Servicio_Descripcion values(769,'Diseño ropa, hombre y mujer , niños, Hiltfinger')
insert into Servicio_Descripcion values(770,'Conchones Spring air')
insert into Servicio_Descripcion values(771,'Carnes, Cortes carne')
insert into Servicio_Descripcion values(772,'Laptops electronica Hewlett')
insert into Servicio_Descripcion values(773,'Acer Electronicos')
insert into Servicio_Descripcion values(774,'Asus Electronicos')
insert into Servicio_Descripcion values(775,'Productos de origen lacteo Lala')
insert into Servicio_Descripcion values(776,'Pan,galletas, Bimbo')
insert into Servicio_Descripcion values(777,'Sistemas, componentes ,consolas Microsoft')
insert into Servicio_Descripcion values(778,'Consolas. Productos Domesticos electronicos')
insert into Servicio_Descripcion values(779,'Pinceles, utilies ')

insert into Servicios values(111, 1747193, 765, 19, 70000)
insert into Servicios values(112, 1747192, 766, 20, 80000)
insert into Servicios values(113, 1747194, 767, 23, 50000)
insert into Servicios values(114, 1747198, 768, 24, 20000)
insert into Servicios values(115, 1747195, 769, 25, 20000)
insert into Servicios values(116, 1747196, 770, 26, 90000)
insert into Servicios values(117, 1747200, 772, 27, 10000)
insert into Servicios values(118, 1747201, 773, 28, 90000)
insert into Servicios values(120, 17471203, 775, 29, 70000)


insert into Empresas values(1747193, 'COCACOLA')
insert into Empresas values (1747192, 'GAMESA')
insert into Empresas values (1747194, 'SABRITAS')
insert into Empresas values (1747198, 'ADIDAS')
insert into Empresas values (1747195,'TOMMY HILTFINGER')
insert into Empresas values (1747196,'SPRING AIR')
insert into Empresas values (1747199,  'CARNES RAMOS'  )
insert into Empresas values (1747200, 'HEWLETT-PACKARD')
insert into Empresas values (1747201,  'ACER')
insert into Empresas values (1747202, 'ASUS' )
insert into Empresas values (1747203, 'LALA-LACTEOS')
insert into Empresas values (1747204, 'GRUPO BIMBO')
insert into Empresas values (1747205, 'MICROSOFT')
insert into Empresas values (1747206, 'SONY')
insert into Empresas values (1747207, 'NINTENDO')
insert into Empresas values (1747208, 'SCRIBE')


insert into Domicilio values (17,' Ciudad de México, México', 66462)
insert into Domicilio values (19, 'Rubén Darío 115. Bosque de Chapultepec' , 66546)
insert into Domicilio values (18, 'San Pedro Garza Garcia' , 66586)
insert into Domicilio values(23,'Av Insurgentes local 159, VIsta hermosa,Monterrey',46430)
insert into Domicilio values(20,': Distrito de Beitou, Taipéi, República de China',22444)
insert into Domicilio values(21,'Redmond, Washington, Estados Unidos',4534)
insert into Domicilio values(22,' Minato, Tokio, Japón',4584)
insert into Domicilio values(24,'Gómez Palacio, México',454434)
insert into Domicilio values(25,'Nuevo Taipéi, República de China',45334)
insert into Domicilio values(26,'Piso 12, José Luis Lagrange 103, Polanco,Ciudad de México',450834)
insert into Domicilio values(27,' Palo Alto, California, Estados Unidos',4512234)
insert into Domicilio values(28,' Kioto, Prefectura de Kioto, Japón',458833)
insert into Domicilio values(29,' Rafael de La Pena 406, Del Nte. Monterrey, N.L',4535734)
insert into Domicilio values(30,'Avenida Republica Mexicana #200',45371)
insert into Domicilio values(31,'Ámsterdam, Países Bajos',4594)
insert into Domicilio values(32,'Herzogenaurach, Alemania',1234)



insert into Bebidas_Descripcion values(991, 'Coca Cola')
insert into Bebidas_Descripcion values(992, 'Pepsi')
insert into Bebidas_Descripcion values(993, 'Monster')
insert into Bebidas_Descripcion values(994, 'Red bull')
insert into Bebidas_Descripcion values(995, 'Dr.Pepper')
insert into Bebidas_Descripcion values(996, 'Fanta')
insert into Bebidas_Descripcion values(997, 'Mth Dew')
insert into Bebidas_Descripcion values(998, 'Corona')
insert into Bebidas_Descripcion values(999, 'Corona Light')
insert into Bebidas_Descripcion values(910, 'TECATE')
insert into Bebidas_Descripcion values(911, 'TECATE LIGHT')
insert into Bebidas_Descripcion values(912, 'Lipton')
insert into Bebidas_Descripcion values(913, 'Gatored')
insert into Bebidas_Descripcion values(914, 'Juego Valle Naranja')
insert into Bebidas_Descripcion values(915, 'Ciel')
insert into Bebidas_Descripcion values(916, 'Bonafont')
insert into Bebidas_Descripcion values(917, '7up')
insert into Bebidas_Descripcion values(918, 'Jumex Mango')
insert into Bebidas_Descripcion values(919, 'Yakult')

select * from Bebidas_Descripcion

UPDATE Bebidas_Descripcion SET Descripcion = 'Coca Cola Light'
WHERE id_Bebida = 991;
UPDATE Bebidas_Descripcion SET Descripcion = 'Sprite'
WHERE id_Bebida = 992;
UPDATE Bebidas_Descripcion SET Descripcion = 'Fuze tea'
WHERE id_Bebida = 993;
UPDATE Bebidas_Descripcion SET Descripcion = 'Fresca'
WHERE id_Bebida = 994;
UPDATE Bebidas_Descripcion SET Descripcion = 'Mirinda'
WHERE id_Bebida = 995;

DELETE FROM Bebidas_Descripcion
WHERE id_Bebida =991;
DELETE FROM Bebidas_Descripcion
WHERE id_Bebida =992;
DELETE FROM Bebidas_Descripcion
WHERE id_Bebida =993;
DELETE FROM Bebidas_Descripcion
WHERE id_Bebida =994;
DELETE FROM Bebidas_Descripcion
WHERE id_Bebida =995;