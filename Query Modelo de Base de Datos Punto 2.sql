/*============================================================================*/
/* DBMS: MS SQL Server 2012*/
/* Created on : 04/12/2022 14:39:07                                           */
/*============================================================================*/


/*============================================================================*/
/*                                  TABLES                                    */
/*============================================================================*/
CREATE TABLE [Licencia] ( 
  [idLicencia]             INT NOT NULL,
  [idEmpresa]              INT,
  [idTrabajador]           INT,
  [idTipoLicencia]         INT,
  [idFormaEntrega]         INT,
  [idCajaCompensacion]     INT,
  [idSucursal]             INT,
  [liquidacion1]           INT,
  [liquidacion2]           INT,
  [liquidacion3]           INT,
  [contratoTrabajo]        INT,
  [fechaIngreso]           DATETIME,
  [estado]                 VARCHAR(40),
CONSTRAINT [PK_1] PRIMARY KEY ([idLicencia])
) 
GO

CREATE TABLE [Empresa] ( 
  [idEmpresa]     INT NOT NULL,
  [nombre]        VARCHAR(40),
CONSTRAINT [PK_2] PRIMARY KEY ([idEmpresa])
) 
GO

CREATE TABLE [CajaCompensacion] ( 
  [idCajaCompensacion]     INT NOT NULL,
  [nombre]                 VARCHAR(40),
CONSTRAINT [PK_3] PRIMARY KEY ([idCajaCompensacion])
) 
GO

CREATE TABLE [TipoLicencia] ( 
  [idTipoLicencia]     INT NOT NULL,
  [nombre]             VARCHAR(40),
CONSTRAINT [PK_4] PRIMARY KEY ([idTipoLicencia])
) 
GO

CREATE TABLE [FormaEntrega] ( 
  [idFormaEntrega]     INT NOT NULL,
  [idCondicion]        INT,
  [nombre]             VARCHAR(40),
CONSTRAINT [PK_5] PRIMARY KEY ([idFormaEntrega])
) 
GO

CREATE TABLE [Trabajador] ( 
  [idTrabajador]     INT NOT NULL,
  [nombre]           VARCHAR(40),
CONSTRAINT [PK_6] PRIMARY KEY ([idTrabajador])
) 
GO

CREATE TABLE [Condicion] ( 
  [idCondicion]     INT NOT NULL,
  [nombre]          VARCHAR(40),
CONSTRAINT [PK_7] PRIMARY KEY ([idCondicion])
) 
GO

CREATE TABLE [Sucursal] ( 
  [idSucursal]             INT NOT NULL,
  [idTipoSucursal]         INT,
  [idCajaCompensacion]     INT,
  [region]                 VARCHAR(40),
CONSTRAINT [PK_8] PRIMARY KEY ([idSucursal])
) 
GO

CREATE TABLE [TipoSucursal] ( 
  [idTipoSucursal]     INT NOT NULL,
  [Descripcion]        VARCHAR(40),
CONSTRAINT [PK_9] PRIMARY KEY ([idTipoSucursal])
) 
GO

/*============================================================================*/
/*                               FOREIGN KEYS                                 */
/*============================================================================*/
ALTER TABLE [Licencia]
    ADD CONSTRAINT [FK_REFERENCE_2]
        FOREIGN KEY ([idEmpresa])
            REFERENCES [Empresa] ([idEmpresa])
 GO
 
ALTER TABLE [Licencia]
    ADD CONSTRAINT [FK_REFERENCE_3]
        FOREIGN KEY ([idCajaCompensacion])
            REFERENCES [CajaCompensacion] ([idCajaCompensacion])
 GO
 
ALTER TABLE [Licencia]
    ADD CONSTRAINT [FK_REFERENCE_4]
        FOREIGN KEY ([idTipoLicencia])
            REFERENCES [TipoLicencia] ([idTipoLicencia])
 GO
 
ALTER TABLE [Licencia]
    ADD CONSTRAINT [FK_REFERENCE_5]
        FOREIGN KEY ([idFormaEntrega])
            REFERENCES [FormaEntrega] ([idFormaEntrega])
 GO
 
ALTER TABLE [Licencia]
    ADD CONSTRAINT [FK_REFERENCE_1]
        FOREIGN KEY ([idTrabajador])
            REFERENCES [Trabajador] ([idTrabajador])
 GO
 
ALTER TABLE [Licencia]
    ADD CONSTRAINT [FK_REFERENCE_8]
        FOREIGN KEY ([idSucursal])
            REFERENCES [Sucursal] ([idSucursal])
 GO
 
ALTER TABLE [FormaEntrega]
    ADD CONSTRAINT [FK_REFERENCE_6]
        FOREIGN KEY ([idCondicion])
            REFERENCES [Condicion] ([idCondicion])
 GO
 
ALTER TABLE [Sucursal]
    ADD CONSTRAINT [FK_REFERENCE_7]
        FOREIGN KEY ([idCajaCompensacion])
            REFERENCES [CajaCompensacion] ([idCajaCompensacion])
 GO
 
ALTER TABLE [Sucursal]
    ADD CONSTRAINT [FK_REFERENCE_9]
        FOREIGN KEY ([idTipoSucursal])
            REFERENCES [TipoSucursal] ([idTipoSucursal])
 GO
 
