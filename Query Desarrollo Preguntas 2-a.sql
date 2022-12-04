--a.	Top de empresas que sus trabajadores presentan más licencias.
	select   top 1
			 a.idEmpresa
			,b.nombre
			,COUNT(*) as 'TopCantdadLicencias'
	from [Licencia] a inner join [Empresa] b
		on a.idEmpresa = b.idEmpresa
	group by a.idEmpresa, b.nombre
	order by COUNT(*) desc