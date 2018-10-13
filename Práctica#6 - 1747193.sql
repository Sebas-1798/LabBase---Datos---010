
USE Punto_venta
WITH ContarEdad as
(
select Edad, COUNT(Edad) AS [Cantidad]
			FROM Empleado_C
			GROUP BY edad

)
select * from ContarEdad
WHERE ContarEdad.Cantidad > 1

select * from Empleado_C

---------------------------------------------------------------------------------------

DECLARE @Consulta NVARCHAR(200)
DECLARE @Tabla NVARCHAR(25)
DECLARE @Edad1 INT


SET @Edad1 = 19


SET @Tabla = 'Empleado_C'
SET @Consulta = 'SELECT * FROM ' + @Tabla + ' WHERE edad > @Edad1'

EXEC SP_EXECUTESQL @Consulta, N'@Edad1 INT', @Edad1

----------------------------------------------------------------------------------------

SELECT nombre, id_puesto, salario
FROM Empleado_C AS SalarioMax
WHERE salario >= (SELECT MAX(salario) FROM Empleado_C) 
ORDER BY id_puesto;

SELECT *
FROM Empleado_C
WHERE edad >= (SELECT MIN(edad) FROM Empleado_C) 
ORDER BY id_puesto;

SELECT * FROM Empleado_C as empleado
   where empleado.id_empleado = (SELECT id_empleado from Empleado_C where id_empleado = '7621562')


 -------------------------------------------------------------------------------------------------------

 create view REPORT_Empleado as (
select Empleado_C.id_empleado ,Empleado_C.nombre, Empleado_C.edad, Empleado_C.salario, 
	sum(Empleado_C.salario*.16) as iva_sueldo
			from Empleado_C
			group by Empleado_C.id_empleado ,Empleado_C.nombre, Empleado_C.edad, Empleado_C.salario
			Having edad > 20
)
			
	
	create view EmpleadoPuestoH as (
select Empleado_C.id_empleado ,Empleado_C.nombre, Empleado_C.sexo, Empleado_C.salario, Empleado_C.id_puesto,
	(Empleado_C.salario * 2) as SalarioMensual
			from Empleado_C,puesto_b, direccion_b left join telefono_a on id_telefono= telefono_a.id_telefono
			where (Empleado_C.id_puesto=puesto_b.id_puesto)
			group by Empleado_C.id_empleado ,Empleado_C.nombre, Empleado_C.sexo, Empleado_C.salario, Empleado_C.id_puesto
			Having sexo = 1
)


create view EmpleadoPuestoM as (
select Empleado_C.id_empleado ,Empleado_C.nombre, Empleado_C.sexo, Empleado_C.salario, Empleado_C.id_puesto,
	(Empleado_C.salario * 2) as SalarioMensual
			from Empleado_C,puesto_b, direccion_b left join telefono_a on id_telefono= telefono_a.id_telefono
			where (Empleado_C.id_puesto=puesto_b.id_puesto)
			group by Empleado_C.id_empleado ,Empleado_C.nombre, Empleado_C.sexo, Empleado_C.salario, Empleado_C.id_puesto
			Having sexo = 0
)


create view Prodcutos as (
select id_producto, cantidad, c_venta, (c_venta * cantidad) as TotalProdcuto
from Almacen_B
where cantidad > 1
)


