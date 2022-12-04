USE [Challenge]
GO
/****** Object:  Table [dbo].[CajaCompensacion]    Script Date: 04/12/2022 15:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CajaCompensacion](
	[idCajaCompensacion] [int] NOT NULL,
	[nombre] [varchar](40) NULL,
 CONSTRAINT [PK_3] PRIMARY KEY CLUSTERED 
(
	[idCajaCompensacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Condicion]    Script Date: 04/12/2022 15:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Condicion](
	[idCondicion] [int] NOT NULL,
	[nombre] [varchar](40) NULL,
 CONSTRAINT [PK_7] PRIMARY KEY CLUSTERED 
(
	[idCondicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 04/12/2022 15:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[idEmpresa] [int] NOT NULL,
	[nombre] [varchar](40) NULL,
 CONSTRAINT [PK_2] PRIMARY KEY CLUSTERED 
(
	[idEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormaEntrega]    Script Date: 04/12/2022 15:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormaEntrega](
	[idFormaEntrega] [int] NOT NULL,
	[idCondicion] [int] NULL,
	[nombre] [varchar](40) NULL,
 CONSTRAINT [PK_5] PRIMARY KEY CLUSTERED 
(
	[idFormaEntrega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Licencia]    Script Date: 04/12/2022 15:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Licencia](
	[idLicencia] [int] NOT NULL,
	[idEmpresa] [int] NULL,
	[idTrabajador] [int] NULL,
	[idTipoLicencia] [int] NULL,
	[idFormaEntrega] [int] NULL,
	[idCajaCompensacion] [int] NULL,
	[idSucursal] [int] NULL,
	[liquidacion1] [int] NULL,
	[liquidacion2] [int] NULL,
	[liquidacion3] [int] NULL,
	[contratoTrabajo] [int] NULL,
	[fechaIngreso] [datetime] NULL,
	[estado] [varchar](40) NULL,
 CONSTRAINT [PK_1] PRIMARY KEY CLUSTERED 
(
	[idLicencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 04/12/2022 15:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[idSucursal] [int] NOT NULL,
	[idTipoSucursal] [int] NULL,
	[idCajaCompensacion] [int] NULL,
	[region] [varchar](40) NULL,
 CONSTRAINT [PK_8] PRIMARY KEY CLUSTERED 
(
	[idSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoLicencia]    Script Date: 04/12/2022 15:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoLicencia](
	[idTipoLicencia] [int] NOT NULL,
	[nombre] [varchar](40) NULL,
 CONSTRAINT [PK_4] PRIMARY KEY CLUSTERED 
(
	[idTipoLicencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoSucursal]    Script Date: 04/12/2022 15:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoSucursal](
	[idTipoSucursal] [int] NOT NULL,
	[Descripcion] [varchar](40) NULL,
 CONSTRAINT [PK_9] PRIMARY KEY CLUSTERED 
(
	[idTipoSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 04/12/2022 15:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajador](
	[idTrabajador] [int] NOT NULL,
	[nombre] [varchar](40) NULL,
 CONSTRAINT [PK_6] PRIMARY KEY CLUSTERED 
(
	[idTrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CajaCompensacion] ([idCajaCompensacion], [nombre]) VALUES (1, N'Caja Los Heroes')
GO
INSERT [dbo].[Condicion] ([idCondicion], [nombre]) VALUES (1, N'En Sucursal')
GO
INSERT [dbo].[Condicion] ([idCondicion], [nombre]) VALUES (2, N'Por eMail')
GO
INSERT [dbo].[Empresa] ([idEmpresa], [nombre]) VALUES (1, N'Graneles de Chile S.A.')
GO
INSERT [dbo].[Empresa] ([idEmpresa], [nombre]) VALUES (2, N'Fundo El Delirio S.A.')
GO
INSERT [dbo].[Empresa] ([idEmpresa], [nombre]) VALUES (3, N'Delipack S.A.')
GO
INSERT [dbo].[FormaEntrega] ([idFormaEntrega], [idCondicion], [nombre]) VALUES (1, 1, N'Manual')
GO
INSERT [dbo].[FormaEntrega] ([idFormaEntrega], [idCondicion], [nombre]) VALUES (2, 1, N'Mixta')
GO
INSERT [dbo].[FormaEntrega] ([idFormaEntrega], [idCondicion], [nombre]) VALUES (3, 2, N'Electronica')
GO
INSERT [dbo].[Licencia] ([idLicencia], [idEmpresa], [idTrabajador], [idTipoLicencia], [idFormaEntrega], [idCajaCompensacion], [idSucursal], [liquidacion1], [liquidacion2], [liquidacion3], [contratoTrabajo], [fechaIngreso], [estado]) VALUES (1, 1, 1, 3, 3, 1, 1, 4502, 7809, 4601, 263, CAST(N'2022-12-01T00:00:00.000' AS DateTime), N'Ingresada')
GO
INSERT [dbo].[Licencia] ([idLicencia], [idEmpresa], [idTrabajador], [idTipoLicencia], [idFormaEntrega], [idCajaCompensacion], [idSucursal], [liquidacion1], [liquidacion2], [liquidacion3], [contratoTrabajo], [fechaIngreso], [estado]) VALUES (2, 1, 2, 2, 3, 1, 1, 3643, 6786, 1212, 432, CAST(N'2022-12-03T00:00:00.000' AS DateTime), N'Ingresada')
GO
INSERT [dbo].[Licencia] ([idLicencia], [idEmpresa], [idTrabajador], [idTipoLicencia], [idFormaEntrega], [idCajaCompensacion], [idSucursal], [liquidacion1], [liquidacion2], [liquidacion3], [contratoTrabajo], [fechaIngreso], [estado]) VALUES (3, 2, 3, 1, 3, 1, 2, 2345, 7547, 1241, 897, CAST(N'2022-12-03T00:00:00.000' AS DateTime), N'Ingresada')
GO
INSERT [dbo].[Licencia] ([idLicencia], [idEmpresa], [idTrabajador], [idTipoLicencia], [idFormaEntrega], [idCajaCompensacion], [idSucursal], [liquidacion1], [liquidacion2], [liquidacion3], [contratoTrabajo], [fechaIngreso], [estado]) VALUES (4, 3, 4, 3, 3, 1, 3, 4574, 2234, 5675, 455, CAST(N'2022-12-03T00:00:00.000' AS DateTime), N'Ingresada')
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
INSERT [dbo].[TipoSucursal] ([idTipoSucursal], [Descripcion]) VALUES (1, N'Fisica')
GO
INSERT [dbo].[TipoSucursal] ([idTipoSucursal], [Descripcion]) VALUES (2, N'Virtual')
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
ALTER TABLE [dbo].[FormaEntrega]  WITH CHECK ADD  CONSTRAINT [FK_REFERENCE_6] FOREIGN KEY([idCondicion])
REFERENCES [dbo].[Condicion] ([idCondicion])
GO
ALTER TABLE [dbo].[FormaEntrega] CHECK CONSTRAINT [FK_REFERENCE_6]
GO
ALTER TABLE [dbo].[Licencia]  WITH CHECK ADD  CONSTRAINT [FK_REFERENCE_1] FOREIGN KEY([idTrabajador])
REFERENCES [dbo].[Trabajador] ([idTrabajador])
GO
ALTER TABLE [dbo].[Licencia] CHECK CONSTRAINT [FK_REFERENCE_1]
GO
ALTER TABLE [dbo].[Licencia]  WITH CHECK ADD  CONSTRAINT [FK_REFERENCE_2] FOREIGN KEY([idEmpresa])
REFERENCES [dbo].[Empresa] ([idEmpresa])
GO
ALTER TABLE [dbo].[Licencia] CHECK CONSTRAINT [FK_REFERENCE_2]
GO
ALTER TABLE [dbo].[Licencia]  WITH CHECK ADD  CONSTRAINT [FK_REFERENCE_3] FOREIGN KEY([idCajaCompensacion])
REFERENCES [dbo].[CajaCompensacion] ([idCajaCompensacion])
GO
ALTER TABLE [dbo].[Licencia] CHECK CONSTRAINT [FK_REFERENCE_3]
GO
ALTER TABLE [dbo].[Licencia]  WITH CHECK ADD  CONSTRAINT [FK_REFERENCE_4] FOREIGN KEY([idTipoLicencia])
REFERENCES [dbo].[TipoLicencia] ([idTipoLicencia])
GO
ALTER TABLE [dbo].[Licencia] CHECK CONSTRAINT [FK_REFERENCE_4]
GO
ALTER TABLE [dbo].[Licencia]  WITH CHECK ADD  CONSTRAINT [FK_REFERENCE_5] FOREIGN KEY([idFormaEntrega])
REFERENCES [dbo].[FormaEntrega] ([idFormaEntrega])
GO
ALTER TABLE [dbo].[Licencia] CHECK CONSTRAINT [FK_REFERENCE_5]
GO
ALTER TABLE [dbo].[Licencia]  WITH CHECK ADD  CONSTRAINT [FK_REFERENCE_8] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[Licencia] CHECK CONSTRAINT [FK_REFERENCE_8]
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_REFERENCE_7] FOREIGN KEY([idCajaCompensacion])
REFERENCES [dbo].[CajaCompensacion] ([idCajaCompensacion])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_REFERENCE_7]
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_REFERENCE_9] FOREIGN KEY([idTipoSucursal])
REFERENCES [dbo].[TipoSucursal] ([idTipoSucursal])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_REFERENCE_9]
GO
