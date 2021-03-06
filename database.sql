USE [master]
GO
/****** Object:  Database [WD]    Script Date: 11/7/2017 9:55:07 AM ******/
CREATE DATABASE [WD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WD.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WD] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WD] SET ARITHABORT OFF 
GO
ALTER DATABASE [WD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WD] SET  MULTI_USER 
GO
ALTER DATABASE [WD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WD] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WD]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 11/7/2017 9:55:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoriesName] [varchar](50) NOT NULL,
	[AccessoriesType] [varchar](50) NOT NULL,
	[AccessoriesColor] [nchar](20) NOT NULL,
	[AccessoriesSeason] [nchar](10) NULL,
	[AccessoriesOccasion] [varchar](50) NOT NULL,
	[AccessoriesPhoto] [nvarchar](50) NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 11/7/2017 9:55:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomsID] [int] IDENTITY(1,1) NOT NULL,
	[BottomsName] [varchar](50) NOT NULL,
	[BottomsType] [varchar](50) NOT NULL,
	[BottomsColor] [nchar](20) NOT NULL,
	[BottomsSeason] [nchar](10) NULL,
	[BottomsOccasion] [varchar](50) NOT NULL,
	[BottomsPhoto] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 11/7/2017 9:55:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[ShoesName] [varchar](50) NOT NULL,
	[ShoesType] [varchar](50) NOT NULL,
	[ShoesColor] [nchar](20) NOT NULL,
	[ShoesSeason] [nchar](10) NULL,
	[ShoesOccasion] [varchar](50) NOT NULL,
	[ShoesPhoto] [nvarchar](50) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tops]    Script Date: 11/7/2017 9:55:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tops](
	[TopsID] [int] IDENTITY(1,1) NOT NULL,
	[TopsName] [varchar](50) NOT NULL,
	[TopsType] [varchar](50) NOT NULL,
	[TopsColor] [nchar](20) NOT NULL,
	[TopsSeason] [nchar](10) NULL,
	[TopsOccasion] [varchar](50) NOT NULL,
	[TopsPhoto] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesType], [AccessoriesColor], [AccessoriesSeason], [AccessoriesOccasion], [AccessoriesPhoto]) VALUES (1, N'Arsenal hat', N'Hat', N'Red                 ', NULL, N'Showing your pride', N'~/Content/hat.jpg')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesType], [AccessoriesColor], [AccessoriesSeason], [AccessoriesOccasion], [AccessoriesPhoto]) VALUES (2, N'Home scarf', N'Scarves', N'Red & white         ', NULL, N'At the pub, watching the match', N'~/Content/arsenal_scarf.jpg')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesType], [AccessoriesColor], [AccessoriesSeason], [AccessoriesOccasion], [AccessoriesPhoto]) VALUES (3, N'Away scarf', N'Scarves', N'Yellow & blue       ', NULL, N'At the pub, watching the match', N'~/Content/away_scarf.jpg')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomsID], [BottomsName], [BottomsType], [BottomsColor], [BottomsSeason], [BottomsOccasion], [BottomsPhoto]) VALUES (1, N'Home shorts', N'Shorts', N'White with red trim ', NULL, N'Showing your pride', N'~/Content/shorts.jpg')
INSERT [dbo].[Bottoms] ([BottomsID], [BottomsName], [BottomsType], [BottomsColor], [BottomsSeason], [BottomsOccasion], [BottomsPhoto]) VALUES (2, N'Away shorts', N'Shorts', N'Yellow and blue     ', NULL, N'Showing your pride', NULL)
INSERT [dbo].[Bottoms] ([BottomsID], [BottomsName], [BottomsType], [BottomsColor], [BottomsSeason], [BottomsOccasion], [BottomsPhoto]) VALUES (3, N'Trackies', N'Training pants', N'Navy blue           ', NULL, N'On the pitch', NULL)
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoesID], [ShoesName], [ShoesType], [ShoesColor], [ShoesSeason], [ShoesOccasion], [ShoesPhoto]) VALUES (1, N'Arsenal shoes', N'Shoes', N'Red and white       ', NULL, N'Showing your pride', N'~/Content/arsenal_shoes.jpg')
INSERT [dbo].[Shoes] ([ShoesID], [ShoesName], [ShoesType], [ShoesColor], [ShoesSeason], [ShoesOccasion], [ShoesPhoto]) VALUES (2, N'Custom kicks', N'Shoes', N'Red and white       ', NULL, N'Showing your pride', NULL)
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsType], [TopsColor], [TopsSeason], [TopsOccasion], [TopsPhoto]) VALUES (1, N'Highbury Commemorative Kit', N'Jersey', N'Redcurrant          ', N'2005-2006 ', N'On tour with the Arsenal', N'~/Content/old_stadium.jpg')
INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsType], [TopsColor], [TopsSeason], [TopsOccasion], [TopsPhoto]) VALUES (2, N'Signed Kit', N'Jersey', N'Red and white       ', N'2003-2004 ', N'Not to be worn, framed', N'~/Content/undefeated.jpg')
INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsType], [TopsColor], [TopsSeason], [TopsOccasion], [TopsPhoto]) VALUES (3, N'Emirates Home', N'Jersey', N'Red and white       ', N'2006-2007 ', N'At the pub, watching the match', N'~/Content/new_home.jpg')
INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsType], [TopsColor], [TopsSeason], [TopsOccasion], [TopsPhoto]) VALUES (4, N'Emirates Away', N'Jersey', N'Yellow and blue     ', N'2008-2009 ', N'At the pub, watching the match', N'~/Content/new_away.jpg')
INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsType], [TopsColor], [TopsSeason], [TopsOccasion], [TopsPhoto]) VALUES (5, N'NYC Supporters Tshirt', N'Tshirt', N'white               ', NULL, N'Showing your pride', N'~/Content/nyc_tee.jpg')
INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsType], [TopsColor], [TopsSeason], [TopsOccasion], [TopsPhoto]) VALUES (6, N'NYC Supporters Hoodie', N'Sweatshirt', N'Red                 ', NULL, N'Showing your pride', N'~/Content/nyc_hoodie.jpg')
SET IDENTITY_INSERT [dbo].[Tops] OFF
USE [master]
GO
ALTER DATABASE [WD] SET  READ_WRITE 
GO
