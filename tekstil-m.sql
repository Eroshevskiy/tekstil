USE [master]
GO
/****** Object:  Database [tekstil-m]    Script Date: 19.03.2024 0:20:40 ******/
CREATE DATABASE [tekstil-m]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tekstil-m', FILENAME = N'D:\ssms\MSSQL16.SQLEXPRESS\MSSQL\DATA\tekstil-m.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'tekstil-m_log', FILENAME = N'D:\ssms\MSSQL16.SQLEXPRESS\MSSQL\DATA\tekstil-m_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [tekstil-m] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tekstil-m].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tekstil-m] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tekstil-m] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tekstil-m] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tekstil-m] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tekstil-m] SET ARITHABORT OFF 
GO
ALTER DATABASE [tekstil-m] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tekstil-m] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tekstil-m] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tekstil-m] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tekstil-m] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tekstil-m] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tekstil-m] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tekstil-m] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tekstil-m] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tekstil-m] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tekstil-m] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tekstil-m] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tekstil-m] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tekstil-m] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tekstil-m] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tekstil-m] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tekstil-m] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tekstil-m] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [tekstil-m] SET  MULTI_USER 
GO
ALTER DATABASE [tekstil-m] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tekstil-m] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tekstil-m] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tekstil-m] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [tekstil-m] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [tekstil-m] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [tekstil-m] SET QUERY_STORE = ON
GO
ALTER DATABASE [tekstil-m] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [tekstil-m]
GO
/****** Object:  Table [dbo].[Merch]    Script Date: 19.03.2024 0:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Merch](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[material] [nvarchar](50) NOT NULL,
	[razmer] [nvarchar](50) NOT NULL,
	[color] [nvarchar](50) NOT NULL,
	[photo] [nvarchar](50) NOT NULL,
	[filePath] [nvarchar](100) NULL,
 CONSTRAINT [PK_Merch] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 19.03.2024 0:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] NOT NULL,
	[role_n] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19.03.2024 0:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] NOT NULL,
	[login] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[id_role] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (1, N'Простынь', N'Бязь', N'180 на 230', N'Белый', N'/photo/простынь 2.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Простынь 2 ка .btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (2, N'Одеяло детское', N'Овечья шерсть', N'110 на 140', N'Зеленый', N'/photo/одеяло детское 110.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Одеяло детское овеч шерсть 110на 140 btw.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (3, N'Одеяло', N'Овечья шерсть', N'205 на 140', N'Синий', N'/photo/одеяло верблюжья шерсть 1,5 ка.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Одеяло 1,5 ка верблюжья шерсть  btw.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (4, N'Одеяло', N'Полиэстер', N'205 на 140', N'Бежевый', N'/photo/одеяло зимнее.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Одеяло 1,5 ка зимнее btw.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (5, N'Одеяло', N'Лебяжий пух', N'140 на 210', N'Синий', N'/photo/одеяло сп.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Одеяло 1,5 сп лебяж пух  200 гр btw.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (6, N'Одеяло детское', N'Овечья шерсть', N'100 на 140 ', N'Розовый', N'/photo/десткое одеяло овеч.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Одеяло детское овеч шерсть 100на 140 btw.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (7, N'Одеяло детское', N'Холлофайбер', N'100 на 140', N'Зеленый', N'/photo/одеяло десткое холоф.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Одеяло детское холлофайбер 100на 140 btw.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (8, N'Пододеяльник', N'Бязь', N'175 на 217', N'Бежевый', N'/photo/пододеяльник 2.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Пододеяльник 2 ка  — хостел.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (9, N'Пододеяльник', N'Бязь', N'150 на 210', N'Желтый', N'/photo/пододеяльник 1,5.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Пододеяльник 1,5 ка .btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (10, N'Пододеяльник', N'Хлопок', N'146 на 210', N'Бежевый', N'/photo/пододеяльник комунарка.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Пододеяльник 146 на 210  Комунарка — копия.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (11, N'Пододеяльник детский', N'Бязь', N'112 на 147', N'Желтый', N'/photo/пододеяльник детский.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Пододеяльник детский btw.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (12, N'Подушка', N'Холофайбер', N'40 на 60', N'Желтый', N'/photo/подушка 40 60.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/подушка 40 на 60  холлофайbtw — копия.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (13, N'Подушка', N'Синтепон', N'70 на 70', N'Зеленый', N'/photo/подушка 70 70.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/подушка 70 на 70 синтепbtw.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (14, N'Подушка', N'Бамбук', N'40 на 60', N'Желтый', N'/photo/подушка бамбук.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Подушка бамбук btw.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (15, N'Покрывало', N'Атласное', N'110 на 140', N'Розовый', N'/photo/покрывало рюшки.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/покрывало атласное с рюшами детское  btw.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (16, N'Покрывало детское', N'Гобелен', N'100 на 140', N'Синий', N'/photo/гобелен.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/покрывало гобелен детское Документ1.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (17, N'Покрывало ', N'Микрофибра', N'220 на 240', N'Бежевый', N'/photo/микрофибра покрывало.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Покрывало микрофибра .btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (18, N'Полотенце ', N'Вафельное', N'40 на 70', N'Синий', N'/photo/полотенце вафельное набивное.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Полотенце вафельное набивное 40на 70 btw.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (19, N'Полотенце', N'Вафельно', N'40 на 70', N'Белый', N'/photo/потолетнце вафельное.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Полотенце вафельное цветное btw.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (20, N'Простынь', N'Бязь', N'150 на 240', N'Зеленый', N'/photo/простынь 1,5 зеленый.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Простынь 1,5 ка .btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (21, N'Простынь детская', N'Бязь', N'105 на 150', N'Синий', N'/photo/простынь детская.jpg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Простынь детская— копия.btw')
INSERT [dbo].[Merch] ([id], [name], [material], [razmer], [color], [photo], [filePath]) VALUES (22, N'Простынь на резинке', N'Бязь', N'80 на 190 на 10', N'Розовый', N'/photo/простынь на резинке.jpeg', N'D:/tekstil-profi-m/tekstil-profi-m/Etics/Простынь на резинке  — хостел.btw')
GO
INSERT [dbo].[Role] ([id], [role_n]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([id], [role_n]) VALUES (2, N'Rabotnik')
GO
INSERT [dbo].[Users] ([id], [login], [password], [id_role]) VALUES (1, N'admin', N'12345', 1)
INSERT [dbo].[Users] ([id], [login], [password], [id_role]) VALUES (2, N'rabotnick', N'123456', 2)
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([id_role])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
USE [master]
GO
ALTER DATABASE [tekstil-m] SET  READ_WRITE 
GO
