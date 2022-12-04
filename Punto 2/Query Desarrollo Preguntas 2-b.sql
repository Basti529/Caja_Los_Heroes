--b.1	Las sucursales que reciben m�s documentaci�n, segmentados por regi�n o comuna
--		,as� como sucursales que no est�n aptas para recibir documentaci�n.
	select   a.idSucursal
			,COUNT(*) as 'CantdadDocumentacion'
			,b.region
	from [dbo].[Licencia] a inner join [dbo].[Sucursal] b
		on a.[idSucursal] = b.[idSucursal]
	inner join [dbo].[TipoSucursal] c
		on c.[idTipoSucursal] = b.[idTipoSucursal]
	where c.[Descripcion] = 'Fisica'
	group by a.[idSucursal], b.region
	order by COUNT(*) desc

--b.2	as� como sucursales que no est�n aptas para recibir documentaci�n.
	select   a.idSucursal
			,COUNT(*) as 'CantdadDocumentacion'
			,b.region
	from [dbo].[Licencia] a inner join [dbo].[Sucursal] b
		on a.[idSucursal] = b.[idSucursal]
	inner join [dbo].[TipoSucursal] c
		on c.[idTipoSucursal] = b.[idTipoSucursal]
	where c.[Descripcion] = 'Virtual'
	group by a.[idSucursal], b.region
	order by COUNT(*) desc