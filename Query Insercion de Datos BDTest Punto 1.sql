use [BDTest]
go

	insert Arrendatario
	select 1, '11.111.111-K', 'Pedro', '23-09-1980'

	insert Arrendatario
	select 2, '22.222.222-K', 'Juan', '24-10-1981'

	insert Arrendatario
	select 3, '33.333.333-K', 'Diego', '25-11-1982'

	insert Arrendatario
	select 4, '9.999.999-1', 'Jasinto', '27-10-1954'
	
--*************************************************************

	insert Propietarios
	select 1, '9.999.999-1', 'Jasinto', '27-10-1954'

	insert Propietarios
	select 2, '8.888.888-1', 'Akira', '13-02-1952'

	insert Propietarios
	select 3, '7.77.777-1', 'Pietro', '04-03-1952'

	insert Propietarios
	select 4, '6.666.666-1', 'Bean', '24-04-1964'

--**********************************************

	insert Propiedad
	select 1, 1, 'Comercio','233','Requinoa','OHiggins','Chile'

	insert Propiedad
	select 2, 1, 'Miraflores','266','Rancagua','OHiggins','Chile'

	insert Propiedad
	select 3, 2, 'Akagi','102','Kanagawua','Kioto','Japon'

	insert Propiedad
	select 4, 2, 'Mitsui','905','Shisuoka','Tokio','Japon'

	insert Propiedad
	select 5, 3, 'Ferrari','556','Monaco','Venecia','Italia'

	insert Propiedad
	select 6, 4, 'Perfume','447','Rivera','Paris','Francia'
	
--**********************************************

	insert Arriendos
	select 1, 1, 1, 1, 230,'16-11-2022','15-12-2022'

	insert Arriendos
	select 2, 2, 1, 2, 250,'01-12-2022','31-12-2022'

	insert Arriendos
	select 3, 3, 2, 3, 8000,'18-12-2022','17-01-2023'

	insert Arriendos
	select 4, 3, 3, 5, 8650,'23-12-2022','22-01-2023'

	insert Arriendos
	select 5, 3, 4, 6, 9000,'29-12-2022','28-01-2023'