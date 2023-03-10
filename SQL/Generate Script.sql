USE [master]
GO
/****** Object:  Database [Transaction_DB]    Script Date: 1/26/2023 9:10:04 AM ******/
CREATE DATABASE [Transaction_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Transaction_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Transaction_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Transaction_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Transaction_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Transaction_DB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Transaction_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Transaction_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Transaction_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Transaction_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Transaction_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Transaction_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Transaction_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Transaction_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Transaction_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Transaction_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Transaction_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Transaction_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Transaction_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Transaction_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Transaction_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Transaction_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Transaction_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Transaction_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Transaction_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Transaction_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Transaction_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Transaction_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Transaction_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Transaction_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [Transaction_DB] SET  MULTI_USER 
GO
ALTER DATABASE [Transaction_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Transaction_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Transaction_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Transaction_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Transaction_DB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Transaction_DB', N'ON'
GO
ALTER DATABASE [Transaction_DB] SET QUERY_STORE = OFF
GO
USE [Transaction_DB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Transaction_DB]
GO
/****** Object:  Table [dbo].[ms_storage_location1]    Script Date: 1/26/2023 9:10:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_storage_location1](
	[location_id] [varchar](10) NOT NULL,
	[location_name] [varchar](100) NULL,
 CONSTRAINT [PK_ms_storage_location1] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ms_user]    Script Date: 1/26/2023 9:10:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_user](
	[user_name] [varchar](10) NOT NULL,
	[password] [varchar](10) NULL,
	[user_type] [varchar](20) NULL,
 CONSTRAINT [PK_ms_user] PRIMARY KEY CLUSTERED 
(
	[user_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tr_bpkb1]    Script Date: 1/26/2023 9:10:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tr_bpkb1](
	[agreement_number] [varchar](100) NOT NULL,
	[bpkb_no] [varchar](100) NOT NULL,
	[branch_id] [varchar](10) NOT NULL,
	[bpkb_date] [datetime] NOT NULL,
	[faktur_no] [varchar](100) NOT NULL,
	[faktur_date] [datetime] NOT NULL,
	[location_id] [varchar](10) NOT NULL,
	[police_no] [varchar](20) NOT NULL,
	[bpkb_date_in] [datetime] NOT NULL,
 CONSTRAINT [PK_tr_bpkb1] PRIMARY KEY CLUSTERED 
(
	[agreement_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tr_bpkb2]    Script Date: 1/26/2023 9:10:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tr_bpkb2](
	[agreement_number] [varchar](100) NOT NULL,
	[bpkb_no] [varchar](100) NOT NULL,
	[branch_id] [varchar](10) NOT NULL,
	[bpkb_date] [datetime] NOT NULL,
	[faktur_no] [varchar](100) NOT NULL,
	[faktur_date] [datetime] NOT NULL,
	[location_id] [varchar](10) NOT NULL,
	[police_no] [varchar](20) NOT NULL,
	[bpkb_date_in] [datetime] NOT NULL,
 CONSTRAINT [PK_tr_bpkb2] PRIMARY KEY CLUSTERED 
(
	[agreement_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ms_storage_location1] ([location_id], [location_name]) VALUES (N'100', N'Bandung')
INSERT [dbo].[ms_storage_location1] ([location_id], [location_name]) VALUES (N'200', N'Jakarta')
INSERT [dbo].[ms_storage_location1] ([location_id], [location_name]) VALUES (N'300', N'Tangerang')
INSERT [dbo].[ms_user] ([user_name], [password], [user_type]) VALUES (N'hugoRess', N'admin3#', N'002')
INSERT [dbo].[ms_user] ([user_name], [password], [user_type]) VALUES (N'jhonUmiro', N'admin1*', N'001')
INSERT [dbo].[ms_user] ([user_name], [password], [user_type]) VALUES (N'trisNatan', N'admin2@', N'001')
ALTER TABLE [dbo].[tr_bpkb1]  WITH CHECK ADD  CONSTRAINT [FK_tr_bpkb1_ms_storage_location1] FOREIGN KEY([location_id])
REFERENCES [dbo].[ms_storage_location1] ([location_id])
GO
ALTER TABLE [dbo].[tr_bpkb1] CHECK CONSTRAINT [FK_tr_bpkb1_ms_storage_location1]
GO
ALTER TABLE [dbo].[tr_bpkb2]  WITH CHECK ADD  CONSTRAINT [FK_tr_bpkb2_ms_storage_location1] FOREIGN KEY([location_id])
REFERENCES [dbo].[ms_storage_location1] ([location_id])
GO
ALTER TABLE [dbo].[tr_bpkb2] CHECK CONSTRAINT [FK_tr_bpkb2_ms_storage_location1]
GO
USE [master]
GO
ALTER DATABASE [Transaction_DB] SET  READ_WRITE 
GO
