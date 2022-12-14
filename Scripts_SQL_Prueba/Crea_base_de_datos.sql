USE [master]
GO

CREATE DATABASE [dbWS_Clima]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbWS_Clima', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER\MSSQL\DATA\dbWS_Clima.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbWS_Clima_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER\MSSQL\DATA\dbWS_Clima.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
USE [dbWS_Clima]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CLIMA](
	[Id_CLIMA] [int] IDENTITY(1,1) NOT NULL,
	[IdUSUARIO_CLIMA] [int] NULL,
	[CIUDAD_CLIMA] [nvarchar](15) NULL,
	[TEMPERATURA_CLIMA] [tinyint] NULL,
	[FECHA_CLIMA] [date] NULL,
	[ESTADO_CLIMA] [nvarchar](12) NULL,
 CONSTRAINT [PK_T_CLIMA] PRIMARY KEY CLUSTERED 
(
	[Id_CLIMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PERSONAS](
	[Id_PERSONA] [int] IDENTITY(1,1) NOT NULL,
	[IDENT_PERSONA] [nvarchar](50) NULL,
	[NOMBRE_PERSONA] [nvarchar](50) NULL,
	[CORREO_PERSONA] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_PERSONAS] PRIMARY KEY CLUSTERED 
(
	[Id_PERSONA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_USUARIOS](
	[Id_USUARIO] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_USUARIO] [nvarchar](50) NULL,
	[CLAVE_USUARIO] [nvarchar](50) NOT NULL,
	[IdPERSONA_USUARIO] [int] NULL,
 CONSTRAINT [PK_T_USUARIOS] PRIMARY KEY CLUSTERED 
(
	[Id_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [dbWS_Clima] SET  READ_WRITE 
GO
