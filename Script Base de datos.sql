USE [master]
GO
/****** Object:  Database [PruebaRazor]    Script Date: 6/02/2024 11:13:49 p. m. ******/
CREATE DATABASE [PruebaRazor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PruebaRazor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PruebaRazor.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PruebaRazor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PruebaRazor_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PruebaRazor] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PruebaRazor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PruebaRazor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PruebaRazor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PruebaRazor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PruebaRazor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PruebaRazor] SET ARITHABORT OFF 
GO
ALTER DATABASE [PruebaRazor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PruebaRazor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PruebaRazor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PruebaRazor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PruebaRazor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PruebaRazor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PruebaRazor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PruebaRazor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PruebaRazor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PruebaRazor] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PruebaRazor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PruebaRazor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PruebaRazor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PruebaRazor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PruebaRazor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PruebaRazor] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [PruebaRazor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PruebaRazor] SET RECOVERY FULL 
GO
ALTER DATABASE [PruebaRazor] SET  MULTI_USER 
GO
ALTER DATABASE [PruebaRazor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PruebaRazor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PruebaRazor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PruebaRazor] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PruebaRazor] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PruebaRazor] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PruebaRazor', N'ON'
GO
ALTER DATABASE [PruebaRazor] SET QUERY_STORE = OFF
GO
USE [PruebaRazor]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/02/2024 11:13:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aspirante]    Script Date: 6/02/2024 11:13:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aspirante](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoDocumento] [int] NULL,
	[NumeroDocumento] [varchar](50) NULL,
	[Nombres] [nchar](10) NULL,
	[Apellidos] [nchar](10) NULL,
	[Telefono] [nchar](10) NULL,
	[Celular] [nchar](10) NULL,
	[Correo] [nchar](10) NULL,
	[IdDepartamento] [int] NULL,
	[IdCiudad] [int] NULL,
	[IdGrupoSanguineo] [int] NULL,
	[FechaNacimiento] [nchar](10) NULL,
	[FechaExpedicion] [nchar](10) NULL,
	[IdSexo] [int] NULL,
	[IdEstadoCivil] [int] NULL,
 CONSTRAINT [PK_Aspirante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspiranteInscrito]    Script Date: 6/02/2024 11:13:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspiranteInscrito](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoAspirante] [int] NULL,
	[IdModalidad] [int] NULL,
	[IdSede] [int] NULL,
	[IdPrograma] [int] NULL,
	[IdPeriodo] [int] NULL,
	[IdAspirante] [nchar](10) NULL,
 CONSTRAINT [PK_AspiranteInscrito] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 6/02/2024 11:13:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdDepartamento] [int] NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 6/02/2024 11:13:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoCivil]    Script Date: 6/02/2024 11:13:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoCivil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_EstadoCivil] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoSanguineo]    Script Date: 6/02/2024 11:13:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoSanguineo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](50) NULL,
 CONSTRAINT [PK_TipoSanguineo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexo]    Script Date: 6/02/2024 11:13:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Sexo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 6/02/2024 11:13:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PruebaRazor] SET  READ_WRITE 
GO
