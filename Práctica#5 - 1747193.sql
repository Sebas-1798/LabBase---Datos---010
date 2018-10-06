use Practica#3_1747193

select * from Empresas
select * from Servicio_Descripcion
select * from Servicios
select * from Domicilio

---------------------------------------------------------------------------

select COUNT (id_Empresa) as Cantidad_EmpresasProveedores
from Empresas 

select SUM(Costo) as Costo_Total_Proveedores from Servicios

select id_Servicio as ID_SERVICIO, Costo as CostoMayor from Servicios 
where Costo = (select MAX(Costo) from Servicios)

select id_Domicilio, Domiciolio as Direccion_Domiciolio, CP as Codigo_Postal 
from Domicilio

select id_Servicio, 'Esta empresa se dedica a:' + Descripcion as Descripcion from Servicio_Descripcion

-------------------------------------------------------------------------------------------------------------

select * from Servicios INNER JOIN Domicilio 
on Servicios.id_Domicilio = Domicilio.id_Domicilio

select * from Domicilio LEFT JOIN Servicios 
on Servicios.id_Domicilio = Domicilio.id_Domicilio

select * from Domicilio RIGHT JOIN Servicios 
on Servicios.id_Domicilio = Domicilio.id_Domicilio

select * from Servicios CROSS JOIN Domicilio

----------------------------------------------------------------------------------------------------------

select emp.Nombre_E, serv.Costo from Empresas as emp, Servicios as serv
WHERE emp.id_Empresa = serv.id_Empresa
ORDER BY Nombre_E

select emp.Nombre_E, serv.Costo , dm.Domiciolio as Domicilio 
from Empresas as emp, Servicios as serv, Domicilio as dm
WHERE emp.id_Empresa = serv.id_Empresa and dm.id_Domicilio = serv.id_Domicilio


select emp.Nombre_E, serv.Costo , dm.Domiciolio as Domicilio, dm.CP as CodigoPostal
from Empresas as emp, Servicios as serv, Domicilio as dm
WHERE emp.id_Empresa = serv.id_Empresa and dm.id_Domicilio = serv.id_Domicilio AND Costo > 50000


select  s.id_Servicio , e.Nombre_E, sd.Descripcion from Servicio_Descripcion as sd, Servicios as s,
Empresas as e
WHERE sd.id_Servicio = s.id_Servicio AND s.id_Empresa = e.id_Empresa


select emp.Nombre_E, serv.Costo , dm.Domiciolio as Domicilio 
from Empresas as emp, Servicios as serv, Domicilio as dm
WHERE emp.id_Empresa = serv.id_Empresa and dm.id_Domicilio = serv.id_Domicilio AND Costo < 50000




------------------------------------------------------------------------------------------------

select MIN(Costo)as CostoMinimo from Servicios
select AVG(Costo) as PromedioCostoTotal from Servicios

select em.Nombre_E, Costo  from Empresas as em, Servicios as s
where em.id_Empresa = s.id_Empresa AND Costo = (select MAX(Costo) from Servicios)
GROUP BY em.Nombre_E , Costo


select em.Nombre_E, Costo  from Empresas as em, Servicios as s
where em.id_Empresa = s.id_Empresa AND Costo = (select MIN(Costo) from Servicios)
GROUP BY em.Nombre_E, Costo


select em.Nombre_E, Costo  from Empresas as em, Servicios as s
where em.id_Empresa = s.id_Empresa AND Costo = (select MAX(Costo) from Servicios)
GROUP BY em.Nombre_E, Costo
HAVING Costo > 100000

------------------------------------------------------------------------------------------------

select id_Servicio, Domiciolio , CP,Costo from Domicilio 
RIGHT JOIN Servicios  on Servicios.id_Domicilio = Domicilio.id_Domicilio
WHERE Costo > 50000
GROUP BY CP, Domiciolio,Costo, id_Servicio

select id_Servicio,Domiciolio , CP, Costo from Domicilio 
RIGHT JOIN Servicios  on Servicios.id_Domicilio = Domicilio.id_Domicilio
WHERE Costo < 50000
GROUP BY CP, Domiciolio, Costo, id_Servicio


select id_Servicio, Costo from Servicios INNER JOIN Domicilio 
on Servicios.id_Domicilio = Domicilio.id_Domicilio
WHERE Costo > 30000 AND Costo < 60000
GROUP BY id_Servicio,Costo

-------------------------------------------------------------------------------------------
select * into #Services From Servicios
drop table Servicios
create table Servicios 
(id_S int primary key not null, 
id_Empresa int,
id_Servicio int,
id_Domicilio int,
Costo money,
);
insert into Servicios values(111, 1747193, 765, 19, 70000)
insert into Servicios values(112, 1747192, 766, 20, 80000)
insert into Servicios values(113, 1747194, 767, 23, 50000)
insert into Servicios values(114, 1747198, 768, 24, 20000)
insert into Servicios values(115, 1747195, 769, 25, 20000)
insert into Servicios values(116, 1747196, 770, 26, 90000)
insert into Servicios values(117, 1747200, 772, 27, 10000)
insert into Servicios values(118, 1747201, 773, 28, 90000)
insert into Servicios values(120, 17471203, 775, 29, 70000)

select * from #Services