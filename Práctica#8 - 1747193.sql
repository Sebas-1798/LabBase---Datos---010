
-------------------------------------------------------------------------------- TRIGGERS
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Trigger [dbo].[ACTUALIZACION] on [dbo].[Detalle_Factura2]
after insert
as
print 'Actulizacion tabla Detalle_Factua'
Go

Create Trigger [dbo].[DELETE] on [dbo].[FACTURA2]
after delete 
as
insert into Logs values (NEWID(),GETDATE() )
Go

Create Trigger [dbo].[NOUPDATE] on [dbo].[FACTURA2]
instead of update
as
print 'MODIFICACION DENEGADA'
Go

---------------------------------------------------------------------------------- TABLA LOGS
create table Logs
(id_log varchar(500),
fecha_borradoFactura datetime
);

select * from Logs

delete from  Factura2 where codigo_cliente = 119435
delete from  Factura2 where fecha_factura = '2018/10/25'

--------------------------- update Factura2

update Factura2 
Set codigo_cliente =1232434
where codigo_cliente = 119435


-------------------------------------------------------TABLAS
CREATE TABLE Factura2
(id_Factura int,
codigo_cliente int,
fecha_factura date,
id_tipoP int,
id_IVA int,
primary key(id_Factura)
);

CREATE TABLE Detalle_Factura2
(id_Factura int,
codigo_articulo int,
Cantidad decimal,
Importe decimal
);

CREATE TABLE TipoPagoFacura
(id_tipoP int primary key not null,
Tipo varchar(50)
);

CREATE TABLE IVA
(id_IVA int primary key not null,
Tipo varchar(50)
);

CREATE TABLE Servicio_Descripcion
(id_Servicio int primary key not null,
Descripcion varchar(500)
);


CREATE TABLE Servicios1(
id_S int primary key not null,
id_proveedor int,
id_Servicio int,
id_Domicilio int,
Costo money,
);


select * from IVA
select * from TipoPagoFacura
select * from Servicio_Descripcion
select * from Servicios1
select * from Factura2
select * from Detalle_Factura2

------------------------------------------------------------------------------------------------ INSERTS
insert into IVA values(11771,'General_20%')
insert into IVA values(11772, 'Reducido_10%')
insert into IVA values(11773, 'Superreducido_4%')

insert into TipoPagoFacura values(22771, 'Effectivo')
insert into TipoPagoFacura values(22772, 'Tarjeta_Credito')


insert into Servicio_Descripcion values(2001,'Proveedor_CocaCola')
insert into Servicio_Descripcion values(2002,'Proveedor_ACER_Computadoras')


insert into Servicios1 values (1001,20011,2001,1767,50000)


insert into Factura2 values (444663,119434,'2018/10/24',22771,11771)
insert into Factura2 values (444665,119435,'2018/10/25',22771,11771)

insert into Detalle_Factura2 values(444663,34745656, 1, 100)
insert into Detalle_Factura2 values(444665,34745656, 1, 100)
