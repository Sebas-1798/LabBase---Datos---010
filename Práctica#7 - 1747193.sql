use Punto_venta

SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[Promedio3Num] (@v1 float, @v2 float, @v3 float)
returns float
as
begin
	 RETURN (@v1 + @v2 + @v3) / 3 
end
GO

select dbo.Promedio3Num(60,70,100) as Promedio3Num

----------------------------------------------------------------------------------

SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[EMPLOYEE] (@valor1 int)
as
begin
	select * from Empleado_C
	Where id_empleado = @valor1
end
GO
exec EMPLOYEE @valor1 = 6987459

-----------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SALARIO] (@val1 int)
as
begin
	select * from REPORT_Empleado
	Where salario >= @val1
end
GO
exec SALARIO @val1 = 50000



SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SALARIOMH] (@val1 int)
as
begin
	select * from EmpleadoPuestoH
	Where SalarioMensual >= @val1
end
GO
exec SALARIOMH @val1 = 60000



SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SALARIOMM] (@val1 int)
as
begin
	select * from EmpleadoPuestoM
	Where SalarioMensual >= @val1
end
GO
exec SALARIOMM @val1 = 80000


SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[FECHACAD] (@Fecha date)
as
begin
	select * from farmacia_c
	Where caducidad = @Fecha
end
GO
exec FECHACAD @Fecha = '2019/06/02' 


SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[CANTIDADP] (@val1 int)
as
begin
	select * from ProduCtos
	Where cantidad >= @val1
end
GO
exec CANTIDADP @val1 = 4