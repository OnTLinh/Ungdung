USE [master]
GO
/****** Object:  Database [QL_DatTourDuLich]    Script Date: 7/12/2021 12:42:10 PM ******/
-- Chạy file này để có sql
CREATE DATABASE [QL_DatTourDuLich]
GO
ALTER DATABASE [QL_DatTourDuLich] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_DatTourDuLich].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_DatTourDuLich] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QL_DatTourDuLich] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_DatTourDuLich] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_DatTourDuLich] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_DatTourDuLich] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_DatTourDuLich] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_DatTourDuLich] SET  MULTI_USER 
GO
ALTER DATABASE [QL_DatTourDuLich] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_DatTourDuLich] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_DatTourDuLich] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_DatTourDuLich] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_DatTourDuLich] SET QUERY_STORE = OFF
GO
USE [QL_DatTourDuLich]
GO
/****** Object:  Table [dbo].[DatTour]    Script Date: 7/12/2021 12:42:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatTour](
	[Id] [int] NOT NULL,
	[IdTour] [int] NULL,
	[Email] [varchar](50) NULL,
	[HoTen] [nvarchar](250) NULL,
	[SDT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaDiem]    Script Date: 7/12/2021 12:42:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDiem](
	[Id] [int] NOT NULL,
	[Ten] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[ImagesUrl] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HanhTrinh]    Script Date: 7/12/2021 12:42:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HanhTrinh](
	[IdDiaDiem] [int] NOT NULL,
	[IdTour] [int] NOT NULL,
	[STT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDiaDiem] ASC,
	[IdTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 7/12/2021 12:42:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[Id] [int] NOT NULL,
	[LichTrinh] [nvarchar](250) NULL,
	[KhoiHanh] [date] NULL,
	[GiaThanh] [int] NULL,
	[ImagesUrl] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DiaDiem] ([Id], [Ten], [DiaChi], [ImagesUrl]) VALUES (1, N'Hồ Núi Cốc', N'huyện Đại Từ, cách trung tâm thành phố Thái Nguyên khoảng 15 km về phía tây', N'/Content/images/HoNuiCoc.jpg')
INSERT [dbo].[DiaDiem] ([Id], [Ten], [DiaChi], [ImagesUrl]) VALUES (2, N'Hồ Nam', N'huyện Đại Từ, Thái Nguyên', N'/Content/images/HoNam.jpg')
INSERT [dbo].[DiaDiem] ([Id], [Ten], [DiaChi], [ImagesUrl]) VALUES (3, N'Hang Phượng Hoàng - Suối Mỏ Gà', N'huyện Võ Nhai ( Đi dọc theo quốc lộ 1B Thái Nguyên - Lạng Sơn cách thành phố Thái Nguyên 45km)', N'/Content/images/HangPhuongHoang.jpg')
INSERT [dbo].[DiaDiem] ([Id], [Ten], [DiaChi], [ImagesUrl]) VALUES (4, N'Thác Mưa Rơi', N'Thần Xa, Võ Nhai, Thái Nguyên', N'/Content/images/ThacMR.jpg')
GO
INSERT [dbo].[Tour] ([Id], [LichTrinh], [KhoiHanh], [GiaThanh], [ImagesUrl]) VALUES (1, N'2 ngày 2 đêm', CAST(N'2021-09-01' AS Date), 2000000, N'/Content/images/HoNuiCoc.jpg')
INSERT [dbo].[Tour] ([Id], [LichTrinh], [KhoiHanh], [GiaThanh], [ImagesUrl]) VALUES (2, N'1 ngày', CAST(N'2021-09-03' AS Date), 1000000, N'/Content/images/HoNuiCoc.jpg')
INSERT [dbo].[Tour] ([Id], [LichTrinh], [KhoiHanh], [GiaThanh], [ImagesUrl]) VALUES (3, N'3 ngày 2 đêm', CAST(N'2021-09-04' AS Date), 3000000, N'/Content/images/HoNuiCoc.jpg')
INSERT [dbo].[Tour] ([Id], [LichTrinh], [KhoiHanh], [GiaThanh], [ImagesUrl]) VALUES (4, N'2 ngày 1 đêm', CAST(N'2021-09-09' AS Date), 1500000, N'/Content/images/HoNuiCoc.jpg')
GO
ALTER TABLE [dbo].[DatTour]  WITH CHECK ADD FOREIGN KEY([IdTour])
REFERENCES [dbo].[Tour] ([Id])
GO
ALTER TABLE [dbo].[HanhTrinh]  WITH CHECK ADD FOREIGN KEY([IdDiaDiem])
REFERENCES [dbo].[DiaDiem] ([Id])
GO
ALTER TABLE [dbo].[HanhTrinh]  WITH CHECK ADD FOREIGN KEY([IdTour])
REFERENCES [dbo].[Tour] ([Id])
GO
USE [master]
GO
ALTER DATABASE [QL_DatTourDuLich] SET  READ_WRITE 
GO
