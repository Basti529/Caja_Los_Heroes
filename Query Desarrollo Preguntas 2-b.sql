--b.1	Las sucursales que reciben más documentación, segmentados por región o comuna
--		,así como sucursales que no están aptas para recibir documentación.
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

--b.2	así como sucursales que no están aptas para recibir documentación.
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