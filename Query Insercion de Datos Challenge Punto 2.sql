USE [Challenge]
GO
INSERT [dbo].[CajaCompensacion] ([idCajaCompensacion], [nombre]) VALUES (1, N'Caja Los Heroes')
GO
INSERT [dbo].[Empresa] ([idEmpresa], [nombre]) VALUES (1, N'Graneles de Chile S.A.')
GO
INSERT [dbo].[Empresa] ([idEmpresa], [nombre]) VALUES (2, N'Fundo El Delirio S.A.')
GO
INSERT [dbo].[Empresa] ([idEmpresa], [nombre]) VALUES (3, N'Delipack S.A.')
GO
INSERT [dbo].[Condicion] ([idCondicion], [nombre]) VALUES (1, N'En Sucursal')
GO
INSERT [dbo].[Condicion] ([idCondicion], [nombre]) VALUES (2, N'Por eMail')
GO
INSERT [dbo].[FormaEntrega] ([idFormaEntrega], [idCondicion], [nombre]) VALUES (1, 1, N'Manual')
GO
INSERT [dbo].[FormaEntrega] ([idFormaEntrega], [idCondicion], [nombre]) VALUES (2, 1, N'Mixta')
GO
INSERT [dbo].[FormaEntrega] ([idFormaEntrega], [idCondicion], [nombre]) VALUES (3, 2, N'Electronica')
GO
INSERT [dbo].[TipoSucursal] ([idTipoSucursal], [Descripcion]) VALUES (1, N'Fisica')
GO
INSERT [dbo].[TipoSucursal] ([idTipoSucursal], [Descripcion]) VALUES (2, N'Virtual')
GO
INSERT [dbo].[Sucursal] ([idSucursal], [idTipoSucursal], [idCajaCompensacion], [region]) VALUES (1, 1, 1, N'Metropolitana')
GO
INSERT [dbo].[Sucursal] ([idSucursal], [idTipoSucursal], [idCajaCompensacion], [region]) VALUES (2, 2, 1, N'Ohiggins')
GO
INSERT [dbo].[Sucursal] ([idSucursal], [idTipoSucursal], [idCajaCompensacion], [region]) VALUES (3, 2, 1, N'Talca')
GO
INSERT [dbo].[TipoLicencia] ([idTipoLicencia], [nombre]) VALUES (1, N'Maternal')
GO
INSERT [dbo].[TipoLicencia] ([idTipoLicencia], [nombre]) VALUES (2, N'Accidente')
GO
INSERT [dbo].[TipoLicencia] ([idTipoLicencia], [nombre]) VALUES (3, N'Enfermedad')
GO
INSERT [dbo].[Trabajador] ([idTrabajador], [nombre]) VALUES (1, N'Pedro')
GO
INSERT [dbo].[Trabajador] ([idTrabajador], [nombre]) VALUES (2, N'Juan')
GO
INSERT [dbo].[Trabajador] ([idTrabajador], [nombre]) VALUES (3, N'Diego')
GO
INSERT [dbo].[Trabajador] ([idTrabajador], [nombre]) VALUES (4, N'Hugo')
GO
INSERT [dbo].[Trabajador] ([idTrabajador], [nombre]) VALUES (5, N'Luis')
GO
INSERT [dbo].[Licencia] ([idLicencia], [idEmpresa], [idTrabajador], [idTipoLicencia], [idFormaEntrega], [idCajaCompensacion], [idSucursal], [liquidacion1], [liquidacion2], [liquidacion3], [contratoTrabajo], [fechaIngreso], [estado]) VALUES (1, 1, 1, 3, 3, 1, 1, 4502, 7809, 4601, 263, CAST(N'2022-12-01T00:00:00.000' AS DateTime), N'Ingresada')
GO
INSERT [dbo].[Licencia] ([idLicencia], [idEmpresa], [idTrabajador], [idTipoLicencia], [idFormaEntrega], [idCajaCompensacion], [idSucursal], [liquidacion1], [liquidacion2], [liquidacion3], [contratoTrabajo], [fechaIngreso], [estado]) VALUES (2, 1, 2, 2, 3, 1, 1, 3643, 6786, 1212, 432, CAST(N'2022-12-03T00:00:00.000' AS DateTime), N'Ingresada')
GO
INSERT [dbo].[Licencia] ([idLicencia], [idEmpresa], [idTrabajador], [idTipoLicencia], [idFormaEntrega], [idCajaCompensacion], [idSucursal], [liquidacion1], [liquidacion2], [liquidacion3], [contratoTrabajo], [fechaIngreso], [estado]) VALUES (3, 2, 3, 1, 3, 1, 2, 2345, 7547, 1241, 897, CAST(N'2022-12-03T00:00:00.000' AS DateTime), N'Ingresada')
GO
INSERT [dbo].[Licencia] ([idLicencia], [idEmpresa], [idTrabajador], [idTipoLicencia], [idFormaEntrega], [idCajaCompensacion], [idSucursal], [liquidacion1], [liquidacion2], [liquidacion3], [contratoTrabajo], [fechaIngreso], [estado]) VALUES (4, 3, 4, 3, 3, 1, 3, 4574, 2234, 5675, 455, CAST(N'2022-12-03T00:00:00.000' AS DateTime), N'Ingresada')
GO
