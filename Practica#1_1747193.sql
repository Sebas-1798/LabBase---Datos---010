USE [Practica#1_1747193]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT IF EXISTS [CK__Empleado__Edad__49C3F6B7]
GO
/****** Object:  Index [INX_Name]    Script Date: 08/09/2018 02:18:51 a. m. ******/
DROP INDEX IF EXISTS [INX_Name] ON [dbo].[Sucursales] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 08/09/2018 02:18:51 a. m. ******/
DROP TABLE IF EXISTS [dbo].[Sucursales]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 08/09/2018 02:18:51 a. m. ******/
DROP TABLE IF EXISTS [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 08/09/2018 02:18:51 a. m. ******/
DROP TABLE IF EXISTS [dbo].[Producto]
GO
/****** Object:  Table [dbo].[FormaPago]    Script Date: 08/09/2018 02:18:51 a. m. ******/
DROP TABLE IF EXISTS [dbo].[FormaPago]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 08/09/2018 02:18:51 a. m. ******/
DROP TABLE IF EXISTS [dbo].[Empleado]
GO
USE [master]
GO
/****** Object:  Database [Practica#1_1747193]    Script Date: 08/09/2018 02:18:51 a. m. ******/
DROP DATABASE IF EXISTS [Practica#1_1747193]
GO
/****** Object:  Database [Practica#1_1747193]    Script Date: 08/09/2018 02:18:51 a. m. ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Practica#1_1747193')
BEGIN
CREATE DATABASE [Practica#1_1747193]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica#1_1747193', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practica#1_1747193.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica#1_1747193_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practica#1_1747193_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END
GO
ALTER DATABASE [Practica#1_1747193] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica#1_1747193].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica#1_1747193] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica#1_1747193] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica#1_1747193] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practica#1_1747193] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica#1_1747193] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Practica#1_1747193] SET  MULTI_USER 
GO
ALTER DATABASE [Practica#1_1747193] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica#1_1747193] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica#1_1747193] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica#1_1747193] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica#1_1747193] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Practica#1_1747193] SET QUERY_STORE = OFF
GO
USE [Practica#1_1747193]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Practica#1_1747193]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 08/09/2018 02:18:51 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Empleado](
	[id_Empleado] [varchar](10) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Primer_apellido] [varchar](50) NULL,
	[Fotografía] [image] NULL,
	[Seg_Apellido] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[Edad] [int] NULL,
	[Sueldo] [money] NULL,
	[Cumpleaños] [datetime] NULL,
	[NombreCompleto]  AS (([Nombre]+[Primer_apellido])+[Seg_Apellido]),
PRIMARY KEY CLUSTERED 
(
	[id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FormaPago]    Script Date: 08/09/2018 02:18:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormaPago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FormaPago](
	[id_Pago] [int] NOT NULL,
	[Tipo_P] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 08/09/2018 02:18:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Producto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Producto](
	[id_Producto] [int] NOT NULL,
	[Nombre_Producto] [varchar](70) NULL,
	[Precio] [decimal](18, 0) NULL,
	[Descripcion] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 08/09/2018 02:18:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proveedores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Proveedores](
	[id_Proveedor] [int] NOT NULL,
	[Nombre_P] [varchar](50) NULL,
	[Nombre_Empresa] [varchar](50) NULL,
	[Tipo_proveedorv] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 08/09/2018 02:18:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sucursales]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sucursales](
	[Nombre_Sucursal] [varchar](100) NULL,
	[Direccion] [varchar](100) NULL,
	[Codigo_postaal] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [INX_Name]    Script Date: 08/09/2018 02:18:53 a. m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Sucursales]') AND name = N'INX_Name')
CREATE CLUSTERED INDEX [INX_Name] ON [dbo].[Sucursales]
(
	[Nombre_Sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Empleado__Edad__49C3F6B7]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD CHECK  (([Edad]>(0) AND [Edad]<(100)))
GO
USE [master]
GO
ALTER DATABASE [Practica#1_1747193] SET  READ_WRITE 
GO
