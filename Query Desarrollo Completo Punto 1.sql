
	declare @Arrendatario table
	(
		 idArrendatario int
		,rutArrendatario varchar(45)
		,nombre varchar(45)
		,fechaNacimiento datetime
	)

	insert @Arrendatario
	select 1, '11.111.111-K', 'Pedro', '23-09-1980'

	insert @Arrendatario
	select 2, '22.222.222-K', 'Juan', '24-10-1981'

	insert @Arrendatario
	select 3, '33.333.333-K', 'Diego', '25-11-1982'

	insert @Arrendatario
	select 4, '9.999.999-1', 'Jasinto', '27-10-1954'
	
--*************************************************************

	declare @Propietarios table
	(
		 idPropietarios int
		,rutPropietario varchar(45)
		,nombre varchar(45)
		,fechaNacimiento datetime
	)

	insert @Propietarios
	select 1, '9.999.999-1', 'Jasinto', '27-10-1954'

	insert @Propietarios
	select 2, '8.888.888-1', 'Akira', '13-02-1952'

	insert @Propietarios
	select 3, '7.77.777-1', 'Pietro', '04-03-1952'

	insert @Propietarios
	select 4, '6.666.666-1', 'Bean', '24-04-1964'

--**********************************************

	declare @Propiedad table
	(
		 idPropiedad int
		,idPropietario int
		,calle varchar(45)
		,numero varchar(45)
		,comuna varchar(45)
		,region varchar(45)
		,pais varchar(45)
	)

	insert @Propiedad
	select 1, 1, 'Comercio','233','Requinoa','OHiggins','Chile'

	insert @Propiedad
	select 2, 1, 'Miraflores','266','Rancagua','OHiggins','Chile'

	insert @Propiedad
	select 3, 2, 'Akagi','102','Kanagawua','Kioto','Japon'

	insert @Propiedad
	select 4, 2, 'Mitsui','905','Shisuoka','Tokio','Japon'

	insert @Propiedad
	select 5, 3, 'Ferrari','556','Monaco','Venecia','Italia'

	insert @Propiedad
	select 6, 4, 'Perfume','447','Rivera','Paris','Francia'
	
--**********************************************

	declare @Arriendos table
	(
		 idArriendos int
		,idArrendatario int
		,idPropietarios int
		,idPropiedad int
		,monto int
		,fechaIni datetime
		,fechaFin datetime
	)

	insert @Arriendos
	select 1, 1, 1, 1, 230,'16-11-2022','15-12-2022'

	insert @Arriendos
	select 2, 2, 1, 2, 250,'01-12-2022','31-12-2022'

	insert @Arriendos
	select 3, 3, 2, 3, 8000,'18-12-2022','17-01-2023'

	insert @Arriendos
	select 4, 3, 3, 5, 8650,'23-12-2022','22-01-2023'

	insert @Arriendos
	select 5, 3, 4, 6, 9000,'29-12-2022','28-01-2023'

--***************************************************

	select 'Arrendatario' as 'Tabla'
	select * from @Arrendatario

	select 'Arriendos' as 'Tabla'
	select * from @Arriendos

	select 'Propiedad' as 'Tabla'
	select * from @Propiedad

	select 'Propietarios' as 'Tabla'
	select * from @Propietarios

--a.	Indicar cuales arrendatarios sus arriendos vencen el próximo mes.
	select	 a.*
			,b.fechaFin
			,Month(b.fechaFin) as 'MesFechaFin'
			,Month(dateadd(month,1,(GETDATE()))) as 'MesProximo'
	from @Arrendatario a inner join @Arriendos b
		on a.idArrendatario = b.idArriendos
	where Month(b.fechaFin) = Month(dateadd(month,1,(GETDATE())))

--b.	Indicar cuales propietarios tienen al menos una propiedad sin arrendar.
	select a.*
	from @Propietarios a inner join @Propiedad b
		on a.idPropietarios = b.idPropietario
	where b.idPropiedad not in (select c.idPropiedad from @Arriendos c)

--c.	Indicar cuantas propiedades tiene cada propietario por cada país.
	select   COUNT(*) as CantidadPropiedades
			,b.nombre as 'NombrePropietario'
			,a.pais
	from @Propiedad a inner join @Propietarios b
		on a.idPropietario = b.idPropietarios
	group by b.nombre, a.pais

--d.	Indicar cuales propietarios son también arrendatarios.
	select	 a.nombre
	from @Propietarios a
	where a.rutPropietario in (select b.rutArrendatario from @Arrendatario b)

--e.	Indicar cuales arrendatarios arriendan fuera de chile.
	select a.nombre as 'NombreArrendatario'
	from  @Arrendatario a inner join @Arriendos b
		on a.idArrendatario = b.idArrendatario
	inner join @Propiedad c
		on c.idPropiedad = b.idPropiedad
	and c.pais <> 'Chile'

--f.	Indicar cuales son los 3 países que el monto promedio de arriendo son los más altos.
	select top 3 a.pais
				,AVG(b.monto)
	from @Propiedad a inner join @Arriendos b
		on a.idPropiedad = b.idPropiedad
	group by a.pais
	order by AVG(b.monto) desc

--g.	Indicar el monto promedio, mínimo y máximo que pagan arrendatarios que también son propietarios.
	select   AVG(monto) as 'MontoPromedio'
			,MIN(monto) as 'MontoMinimo'
			,MAX(monto) as 'MontoMaximo'
	from @Arriendos a inner join @Propietarios b
		on a.idPropietarios = b.idPropietarios
	where b.rutPropietario in (select c.rutArrendatario from @Arrendatario c)