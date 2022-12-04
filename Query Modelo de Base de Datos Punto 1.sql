/*============================================================================*/
/* DBMS: MS SQL Server 2012*/
/* Created on : 12/04/2022 16:51:08                                           */
/*============================================================================*/


/*============================================================================*/
/*                                  TABLES                                    */
/*============================================================================*/
CREATE TABLE [Arrendatario] ( 
  [idArrendatario]      INT NOT NULL,
  [rutArrendatario]     VARCHAR(45),
  [nombre]              VARCHAR(45),
  [fechaNacimiento]     DATETIME,
CONSTRAINT [PK_1] PRIMARY KEY ([idArrendatario])
) 
GO

CREATE TABLE [Propietarios] ( 
  [idPropietarios]      INT NOT NULL,
  [rutPropietario]      VARCHAR(45),
  [nombre]              VARCHAR(45),
  [fechaNacimiento]     DATETIME,
CONSTRAINT [PK_2] PRIMARY KEY ([idPropietarios])
) 
GO

CREATE TABLE [Propiedad] ( 
  [idPropiedad]       INT NOT NULL,
  [idPropietario]     INT,
  [calle]             VARCHAR(45),
  [numero]            VARCHAR(45),
  [comuna]            VARCHAR(45),
  [region]            VARCHAR(45),
  [pais]              VARCHAR(45),
CONSTRAINT [PK_3] PRIMARY KEY ([idPropiedad])
) 
GO

CREATE TABLE [Arriendos] ( 
  [idArriendos]        INT NOT NULL,
  [idArrendatario]     INT,
  [idPropietarios]     INT,
  [idPropiedad]        INT,
  [monto]              INT,
  [fechaIni]           DATETIME,
  [fechaFin]           DATETIME,
CONSTRAINT [PK_4] PRIMARY KEY ([idArriendos])
) 
GO

/*============================================================================*/
/*                               FOREIGN KEYS                                 */
/*============================================================================*/
ALTER TABLE [Propiedad]
    ADD CONSTRAINT [FK_REFERENCE_1]
        FOREIGN KEY ([idPropietario])
            REFERENCES [Propietarios] ([idPropietarios])
 GO
 
ALTER TABLE [Arriendos]
    ADD CONSTRAINT [FK_REFERENCE_2]
        FOREIGN KEY ([idPropietarios])
            REFERENCES [Propietarios] ([idPropietarios])
 GO
 
ALTER TABLE [Arriendos]
    ADD CONSTRAINT [FK_REFERENCE_3]
        FOREIGN KEY ([idArrendatario])
            REFERENCES [Arrendatario] ([idArrendatario])
 GO
 
ALTER TABLE [Arriendos]
    ADD CONSTRAINT [FK_REFERENCE_4]
        FOREIGN KEY ([idPropiedad])
            REFERENCES [Propiedad] ([idPropiedad])
 GO
 
