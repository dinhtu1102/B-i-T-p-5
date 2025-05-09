USE [master]
GO
/****** Object:  Database [QLTV]    Script Date: 4/23/2025 10:07:56 PM ******/
CREATE DATABASE [QLTV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLTV', FILENAME = N'D:\spl\QLTV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLTV_log', FILENAME = N'D:\spl\QLTV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLTV] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLTV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLTV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLTV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLTV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLTV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLTV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLTV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLTV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLTV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLTV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLTV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLTV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLTV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLTV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLTV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLTV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLTV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLTV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLTV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLTV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLTV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLTV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLTV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLTV] SET RECOVERY FULL 
GO
ALTER DATABASE [QLTV] SET  MULTI_USER 
GO
ALTER DATABASE [QLTV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLTV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLTV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLTV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLTV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLTV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLTV', N'ON'
GO
ALTER DATABASE [QLTV] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLTV] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLTV]
GO
/****** Object:  Table [dbo].[chitietmuontra]    Script Date: 4/23/2025 10:07:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietmuontra](
	[maphieu] [int] NOT NULL,
	[masach] [int] NOT NULL,
	[soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maphieu] ASC,
	[masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[muontra]    Script Date: 4/23/2025 10:07:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[muontra](
	[maphieu] [int] NOT NULL,
	[manguoimuon] [varchar](100) NULL,
	[manhanvien] [int] NULL,
	[ngaymuon] [date] NULL,
	[ngaytra] [date] NULL,
	[sotongsach] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maphieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 4/23/2025 10:07:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[manhanvien] [int] NOT NULL,
	[hoten] [varchar](100) NOT NULL,
	[ngaysinh] [date] NULL,
	[chucvu] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sach]    Script Date: 4/23/2025 10:07:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sach](
	[masach] [int] NOT NULL,
	[tensach] [varchar](255) NOT NULL,
	[matacgia] [int] NULL,
	[matheloai] [int] NULL,
	[nhaxuatban] [varchar](100) NULL,
	[namxuatban] [int] NULL,
	[tentacgia_cache] [varchar](100) NULL,
	[tentheloai_cache] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tacgia]    Script Date: 4/23/2025 10:07:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tacgia](
	[matacgia] [int] NOT NULL,
	[tentacgia] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[matacgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[theloai]    Script Date: 4/23/2025 10:07:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[theloai](
	[matheloai] [int] NOT NULL,
	[tentheloai] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[matheloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[chitietmuontra] ([maphieu], [masach], [soluong]) VALUES (1, 1, 1)
INSERT [dbo].[chitietmuontra] ([maphieu], [masach], [soluong]) VALUES (1, 3, 1)
INSERT [dbo].[chitietmuontra] ([maphieu], [masach], [soluong]) VALUES (2, 5, 1)
INSERT [dbo].[chitietmuontra] ([maphieu], [masach], [soluong]) VALUES (3, 2, 1)
INSERT [dbo].[chitietmuontra] ([maphieu], [masach], [soluong]) VALUES (3, 4, 1)
INSERT [dbo].[chitietmuontra] ([maphieu], [masach], [soluong]) VALUES (3, 6, 1)
INSERT [dbo].[chitietmuontra] ([maphieu], [masach], [soluong]) VALUES (4, 7, 1)
INSERT [dbo].[chitietmuontra] ([maphieu], [masach], [soluong]) VALUES (5, 9, 1)
INSERT [dbo].[chitietmuontra] ([maphieu], [masach], [soluong]) VALUES (5, 10, 1)
GO
INSERT [dbo].[muontra] ([maphieu], [manguoimuon], [manhanvien], [ngaymuon], [ngaytra], [sotongsach]) VALUES (1, N'Nguyen Van B', 1, CAST(N'2025-04-01' AS Date), CAST(N'2025-04-10' AS Date), 2)
INSERT [dbo].[muontra] ([maphieu], [manguoimuon], [manhanvien], [ngaymuon], [ngaytra], [sotongsach]) VALUES (2, N'Le Thi C', 2, CAST(N'2025-04-03' AS Date), CAST(N'2025-04-12' AS Date), 1)
INSERT [dbo].[muontra] ([maphieu], [manguoimuon], [manhanvien], [ngaymuon], [ngaytra], [sotongsach]) VALUES (3, N'Tran Van D', 1, CAST(N'2025-04-05' AS Date), CAST(N'2025-04-15' AS Date), 3)
INSERT [dbo].[muontra] ([maphieu], [manguoimuon], [manhanvien], [ngaymuon], [ngaytra], [sotongsach]) VALUES (4, N'Pham Thi E', 3, CAST(N'2025-04-06' AS Date), CAST(N'2025-04-13' AS Date), 1)
INSERT [dbo].[muontra] ([maphieu], [manguoimuon], [manhanvien], [ngaymuon], [ngaytra], [sotongsach]) VALUES (5, N'Dinh Van F', 2, CAST(N'2025-04-08' AS Date), CAST(N'2025-04-20' AS Date), 2)
GO
INSERT [dbo].[nhanvien] ([manhanvien], [hoten], [ngaysinh], [chucvu]) VALUES (1, N'Tran Thi Thu', CAST(N'1990-05-10' AS Date), N'Thu thu')
INSERT [dbo].[nhanvien] ([manhanvien], [hoten], [ngaysinh], [chucvu]) VALUES (2, N'Nguyen Van An', CAST(N'1988-08-22' AS Date), N'Thu thu')
INSERT [dbo].[nhanvien] ([manhanvien], [hoten], [ngaysinh], [chucvu]) VALUES (3, N'Le Thi Hong', CAST(N'1995-11-03' AS Date), N'Thu ky')
INSERT [dbo].[nhanvien] ([manhanvien], [hoten], [ngaysinh], [chucvu]) VALUES (4, N'Pham Quoc Huy', CAST(N'1992-03-17' AS Date), N'Truong phong')
INSERT [dbo].[nhanvien] ([manhanvien], [hoten], [ngaysinh], [chucvu]) VALUES (5, N'Do Thanh Tam', CAST(N'1985-09-30' AS Date), N'Pho phong')
GO
INSERT [dbo].[sach] ([masach], [tensach], [matacgia], [matheloai], [nhaxuatban], [namxuatban], [tentacgia_cache], [tentheloai_cache]) VALUES (1, N'Cau truc du lieu va giai thuat', 2, 1, N'NXB Giao duc', 2022, N'Tran Dinh Hieu', N'Khoa hoc may tinh')
INSERT [dbo].[sach] ([masach], [tensach], [matacgia], [matheloai], [nhaxuatban], [namxuatban], [tentacgia_cache], [tentheloai_cache]) VALUES (2, N'Lap trinh Python co ban', 7, 2, N'NXB Tre', 2021, N'Nguyen Van Cuong', N'Toan hoc')
INSERT [dbo].[sach] ([masach], [tensach], [matacgia], [matheloai], [nhaxuatban], [namxuatban], [tentacgia_cache], [tentheloai_cache]) VALUES (3, N'Giai tich 1', 3, 2, N'NXB Dai hoc Quoc Gia', 2020, N'Le Hong Phong', N'Toan hoc')
INSERT [dbo].[sach] ([masach], [tensach], [matacgia], [matheloai], [nhaxuatban], [namxuatban], [tentacgia_cache], [tentheloai_cache]) VALUES (4, N'Vat ly dai cuong', 4, 5, N'NXB Khoa hoc & Ky thuat', 2019, N'Pham Van Tai', N'Vat ly')
INSERT [dbo].[sach] ([masach], [tensach], [matacgia], [matheloai], [nhaxuatban], [namxuatban], [tentacgia_cache], [tentheloai_cache]) VALUES (5, N'Hoa hoc huu co', 6, 6, N'NXB Tong hop', 2023, N'Hoang Thi Mai', N'Hoa hoc')
INSERT [dbo].[sach] ([masach], [tensach], [matacgia], [matheloai], [nhaxuatban], [namxuatban], [tentacgia_cache], [tentheloai_cache]) VALUES (6, N'Tu duy phan bien trong hoc tap', 10, 10, N'NXB Giao duc', 2021, N'Pham Hong Son', N'Tu duy phan bien')
INSERT [dbo].[sach] ([masach], [tensach], [matacgia], [matheloai], [nhaxuatban], [namxuatban], [tentacgia_cache], [tentheloai_cache]) VALUES (7, N'Quan tri doanh nghiep vua va nho', 8, 9, N'NXB Kinh te', 2022, N'Vu Thi Hang', N'Quan tri kinh doanh')
INSERT [dbo].[sach] ([masach], [tensach], [matacgia], [matheloai], [nhaxuatban], [namxuatban], [tentacgia_cache], [tentheloai_cache]) VALUES (8, N'Dien tu co ban', 9, 8, N'NXB Bach Khoa', 2020, N'Tran Quoc Tuan', N'Ky thuat dien')
INSERT [dbo].[sach] ([masach], [tensach], [matacgia], [matheloai], [nhaxuatban], [namxuatban], [tentacgia_cache], [tentheloai_cache]) VALUES (9, N'Lap trinh Java nang cao', 5, 7, N'NXB Tre', 2021, N'Dang Nhat Minh', N'Lap trinh')
INSERT [dbo].[sach] ([masach], [tensach], [matacgia], [matheloai], [nhaxuatban], [namxuatban], [tentacgia_cache], [tentheloai_cache]) VALUES (10, N'Tac pham chon loc - Nguyen Nhat Anh', 1, 3, N'NXB Tre', 2018, N'Nguyen Nhat Anh', N'Van hoc')
GO
INSERT [dbo].[tacgia] ([matacgia], [tentacgia]) VALUES (1, N'Nguyen Nhat Anh')
INSERT [dbo].[tacgia] ([matacgia], [tentacgia]) VALUES (2, N'Tran Dinh Hieu')
INSERT [dbo].[tacgia] ([matacgia], [tentacgia]) VALUES (3, N'Le Hong Phong')
INSERT [dbo].[tacgia] ([matacgia], [tentacgia]) VALUES (4, N'Pham Van Tai')
INSERT [dbo].[tacgia] ([matacgia], [tentacgia]) VALUES (5, N'Dang Nhat Minh')
INSERT [dbo].[tacgia] ([matacgia], [tentacgia]) VALUES (6, N'Hoang Thi Mai')
INSERT [dbo].[tacgia] ([matacgia], [tentacgia]) VALUES (7, N'Nguyen Van Cuong')
INSERT [dbo].[tacgia] ([matacgia], [tentacgia]) VALUES (8, N'Vu Thi Hang')
INSERT [dbo].[tacgia] ([matacgia], [tentacgia]) VALUES (9, N'Tran Quoc Tuan')
INSERT [dbo].[tacgia] ([matacgia], [tentacgia]) VALUES (10, N'Pham Hong Son')
GO
INSERT [dbo].[theloai] ([matheloai], [tentheloai]) VALUES (1, N'Khoa hoc may tinh')
INSERT [dbo].[theloai] ([matheloai], [tentheloai]) VALUES (2, N'Toan hoc')
INSERT [dbo].[theloai] ([matheloai], [tentheloai]) VALUES (3, N'Van hoc')
INSERT [dbo].[theloai] ([matheloai], [tentheloai]) VALUES (4, N'Kinh te')
INSERT [dbo].[theloai] ([matheloai], [tentheloai]) VALUES (5, N'Vat ly')
INSERT [dbo].[theloai] ([matheloai], [tentheloai]) VALUES (6, N'Hoa hoc')
INSERT [dbo].[theloai] ([matheloai], [tentheloai]) VALUES (7, N'Lap trinh')
INSERT [dbo].[theloai] ([matheloai], [tentheloai]) VALUES (8, N'Ky thuat dien')
INSERT [dbo].[theloai] ([matheloai], [tentheloai]) VALUES (9, N'Quan tri kinh doanh')
INSERT [dbo].[theloai] ([matheloai], [tentheloai]) VALUES (10, N'Tu duy phan bien')
GO
ALTER TABLE [dbo].[chitietmuontra] ADD  DEFAULT ((1)) FOR [soluong]
GO
ALTER TABLE [dbo].[muontra] ADD  DEFAULT ((0)) FOR [sotongsach]
GO
ALTER TABLE [dbo].[chitietmuontra]  WITH CHECK ADD  CONSTRAINT [FK__chitietmu__maphi] FOREIGN KEY([maphieu])
REFERENCES [dbo].[muontra] ([maphieu])
GO
ALTER TABLE [dbo].[chitietmuontra] CHECK CONSTRAINT [FK__chitietmu__maphi]
GO
ALTER TABLE [dbo].[chitietmuontra]  WITH CHECK ADD  CONSTRAINT [FK__chitietmu__masac] FOREIGN KEY([masach])
REFERENCES [dbo].[sach] ([masach])
GO
ALTER TABLE [dbo].[chitietmuontra] CHECK CONSTRAINT [FK__chitietmu__masac]
GO
ALTER TABLE [dbo].[muontra]  WITH CHECK ADD  CONSTRAINT [FK__muontra__manhanv] FOREIGN KEY([manhanvien])
REFERENCES [dbo].[nhanvien] ([manhanvien])
GO
ALTER TABLE [dbo].[muontra] CHECK CONSTRAINT [FK__muontra__manhanv]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [FK__sach__matacgia] FOREIGN KEY([matacgia])
REFERENCES [dbo].[tacgia] ([matacgia])
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [FK__sach__matacgia]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [FK__sach__matheloai] FOREIGN KEY([matheloai])
REFERENCES [dbo].[theloai] ([matheloai])
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [FK__sach__matheloai]
GO
USE [master]
GO
ALTER DATABASE [QLTV] SET  READ_WRITE 
GO
