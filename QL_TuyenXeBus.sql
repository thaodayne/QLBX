USE [master]
GO
/****** Object:  Database [QL_TuyenXeBus]    Script Date: 12/10/2017 19:47:45 ******/
CREATE DATABASE [QL_TuyenXeBus] ON  PRIMARY 
( NAME = N'QL_TuyenXeBus', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QL_TuyenXeBus.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QL_TuyenXeBus_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QL_TuyenXeBus_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QL_TuyenXeBus] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_TuyenXeBus].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_TuyenXeBus] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET ARITHABORT OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QL_TuyenXeBus] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QL_TuyenXeBus] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QL_TuyenXeBus] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET  DISABLE_BROKER
GO
ALTER DATABASE [QL_TuyenXeBus] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QL_TuyenXeBus] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QL_TuyenXeBus] SET  READ_WRITE
GO
ALTER DATABASE [QL_TuyenXeBus] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QL_TuyenXeBus] SET  MULTI_USER
GO
ALTER DATABASE [QL_TuyenXeBus] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QL_TuyenXeBus] SET DB_CHAINING OFF
GO
USE [QL_TuyenXeBus]
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 12/10/2017 19:47:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe](
	[MaXe] [nvarchar](10) NOT NULL,
	[BienSo] [nvarchar](50) NOT NULL,
	[LoaiXe] [nvarchar](50) NOT NULL,
	[SoGhe] [int] NOT NULL,
	[CongSuat] [int] NOT NULL,
	[NgaySX] [nvarchar](50) NOT NULL,
	[ChuKiBaoHanh] [int] NOT NULL,
	[MaTuyen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [SoGhe], [CongSuat], [NgaySX], [ChuKiBaoHanh], [MaTuyen]) VALUES (N'X1', N'53N-4561', N'Cỡ trung', 30, 40, N'01/01/2008', 6, 86)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [SoGhe], [CongSuat], [NgaySX], [ChuKiBaoHanh], [MaTuyen]) VALUES (N'X2', N'53N-6976', N'Cỡ trung', 30, 40, N'01/01/2008', 6, 86)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [SoGhe], [CongSuat], [NgaySX], [ChuKiBaoHanh], [MaTuyen]) VALUES (N'X3', N'53N-8754', N'Cỡ trung', 30, 40, N'01/01/2008', 6, 5)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [SoGhe], [CongSuat], [NgaySX], [ChuKiBaoHanh], [MaTuyen]) VALUES (N'X4', N'53N-5678', N'Cỡ trung', 30, 40, N'01/01/2008', 6, 5)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [LoaiXe], [SoGhe], [CongSuat], [NgaySX], [ChuKiBaoHanh], [MaTuyen]) VALUES (N'X5', N'53N-5678', N'Cỡ trung', 30, 40, N'01/01/2008', 6, 5)
/****** Object:  Table [dbo].[TuyenXe]    Script Date: 12/10/2017 19:47:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuyenXe](
	[MaTuyen] [int] NOT NULL,
	[MaDonVi] [nvarchar](50) NOT NULL,
	[TenTuyen] [nvarchar](100) NOT NULL,
	[ThoiGianBatDau] [time](7) NOT NULL,
	[ThoiGianKetThuc] [time](7) NOT NULL,
	[ThoiGianGianCach] [int] NOT NULL,
	[LoTrinhLuotDi] [nvarchar](max) NOT NULL,
	[LoTrinhLuotVe] [nvarchar](max) NOT NULL,
	[LoaiTuyen] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[TuyenXe] ([MaTuyen], [MaDonVi], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [ThoiGianGianCach], [LoTrinhLuotDi], [LoTrinhLuotVe], [LoaiTuyen]) VALUES (5, N'DV2', N'Chợ Lớn-Biên Hòa', CAST(0x070008D6E8290000 AS Time), CAST(0x07002058A3A70000 AS Time), 50, N'Ga Chợ Lớn B - Lê Quang Sung - Phạm Đình Hổ - Tháp Mười - Hải Thượng Lãn Ông - Châu Văn Liêm - Thuận Kiều - Nguyễn Chí Thanh - Ngô Gia Tự - Vĩnh Viễn - Lê Hồng Phong -  Trần Phú – Nguyễn Thị Minh Khai – Xô Viết Nghệ Tĩnh –  Quốc lộ 13 – Quốc lộ 1A – Quốc lộ 1K - Bến xe Biên Hòa', N'Bến xe Biên Hòa - Quốc lộ 1K - Quốc lộ 1A - Quốc lộ 13 - Đinh Bộ Lĩnh - Bạch Đằng  - Xô Viết Nghệ Tĩnh - Nguyễn Thị Minh Khai - Phùng Khắc Khoan - Trần Cao Vân - Võ - Văn Tần - Bà Huyện Thanh  Quan - Nguyễn Thị Minh Khai - Hùng Vương - Lê Hồng Phong - Vĩnh Viễn - Ngô Gia Tự - Nguyễn Chí Thanh - Thuận Kiều - Châu Văn Liêm - Hải Thượng Lãn Ông - Trang Tử - Ga Chợ Lớn B', N'Trợ giá')
INSERT [dbo].[TuyenXe] ([MaTuyen], [MaDonVi], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [ThoiGianGianCach], [LoTrinhLuotDi], [LoTrinhLuotVe], [LoaiTuyen]) VALUES (31, N'DV1', N'KDC Tân Quy KDC Bình Lợi', CAST(0x070008D6E8290000 AS Time), CAST(0x07002058A3A70000 AS Time), 15, N'Khu dân cư Tân Quy - đường số 65 - Nguyễn Thị Thập - Nguyễn Văn Linh - Huỳnh Tấn Phát - cầu Tân Thuận 1 - Nguyễn Tất Thành - Hoàng Diệu - Nguyễn Thái Học - Trần Hưng Đạo - trạm Bến Thành - Lê Lợi - Pasteur - Nguyễn Thị Minh Khai - Hai Bà Trưng - Trần Quang Khải – cầu Hoàng Hoa Thám – Đường số 1 – Phan Xích Long – Phan Đăng Lưu - Nơ Trang Long – Bến KDC Bình Lợi.', N'Bến KDC Bình Lợi - Nơ Trang Long - Phan Đăng Lưu – Phan Xích Long – Đường số 1 – cầu Hoàng Hoa Thám - Trần Quang Khải – Đinh Tiên Hoàng – Võ Thị Sáu - Hai Bà Trưng - Nguyễn Đình Chiểu - Nam Kỳ Khởi Nghĩa - Hàm Nghi - trạm Bến Thành - Trần Hưng Đạo - Phạm Ngũ Lão - Nguyễn Thị Nghĩa - Nguyễn Thái Học - Hoàng Diệu - Nguyễn Tất Thành - (cầu Tân Thuận 2) - Nguyễn Văn Linh - Nguyễn Thị Thập – Lâm Văn Bền – Đường số 53 – Mai Văn Vĩnh – Nguyễn Thị Thập - đường số 65 - Khu dân cư Tân Quy.', N'Trợ giá')
INSERT [dbo].[TuyenXe] ([MaTuyen], [MaDonVi], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [ThoiGianGianCach], [LoTrinhLuotDi], [LoTrinhLuotVe], [LoaiTuyen]) VALUES (47, N'DV2', N'Bến xe Chợ Lớn - Quốc lộ 50 - Hưng Long', CAST(0x070008D6E8290000 AS Time), CAST(0x07002058A3A70000 AS Time), 15, N'Bến xe Chợ Lớn A - Lê Quang Sung - Nguyễn Hữu Thận - Tháp Mười - Hải Thượng Lãn Ông - Cầu Chà Và - Cao Xuân Dục - Tùng Thiện Vương - Quốc lộ 50 - Hương lộ 11 - Bến Hưng Long', N'Bến Hưng Long - Hương lộ 11 - Quốc lộ 50 - Tùng Thiện Vương -Cầu Chà Và - Hải Thượng Lãn Ông - quay đầu - Hải Thượng Lãn Ông - Lương Nhữ Học - Trần Hưng Đạo - Châu Văn Liêm - Hải Thượng Lãn Ông - Lê Quang Sung - Nguyễn Thị Nhỏ - Hồng Bàng - Nguyễn Trãi - Phú Hữu - Bến xe Chợ Lớn A.', N'Trợ giá')
INSERT [dbo].[TuyenXe] ([MaTuyen], [MaDonVi], [TenTuyen], [ThoiGianBatDau], [ThoiGianKetThuc], [ThoiGianGianCach], [LoTrinhLuotDi], [LoTrinhLuotVe], [LoaiTuyen]) VALUES (86, N'DV2', N'Bến Thành - Đại học Tôn Đức Thắng', CAST(0x070008D6E8290000 AS Time), CAST(0x07002058A3A70000 AS Time), 15, N' Bãi đậu xe Công viên 23/9 – Lê Lai – Trạm Bến Thành – Trần Hưng Đạo – Phạm Ngũ Lão – Nguyễn Thái Học – Hoàng Diệu – Khánh Hội – Nguyễn Hữu Thọ - Cổng 2 Đại học Tôn Đức Thắng – Đường nội bộ Đại học Tôn Đức Thắng – Bến đậu xe Cổng 1, Trường Đại học Tôn Đức Thắng', N'Bến đậu xe Cổng 1, Trường Đại học Tôn Đức Thắng – Cổng 3 Đại học Tôn Đức Thắng - Nguyễn Hữu Thọ - Lê Văn Lương - Nguyễn Văn Linh - Nguyễn Hữu Thọ - Cầu Kênh Tẻ  -  Khánh Hội – Hoàng Diệu – Nguyễn Thái Học – Trần Hưng Đạo – Phạm Ngũ Lão – Trạm Bến Thành – Phạm Ngũ Lão – Bãi đậu xe Công viên 23/9', N'Không trợ giá')
/****** Object:  Table [dbo].[TaiXe]    Script Date: 12/10/2017 19:47:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiXe](
	[MaTX] [nvarchar](10) NOT NULL,
	[HoVaTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[QueQuan] [nvarchar](50) NOT NULL,
	[NgayBDHopDong] [nvarchar](50) NOT NULL,
	[Luong] [money] NOT NULL,
	[BangLai] [nvarchar](50) NOT NULL,
	[MaXe] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTX] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TaiXe] ([MaTX], [HoVaTen], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [NgayBDHopDong], [Luong], [BangLai], [MaXe]) VALUES (N'TX1', N'Trần Văn A', N'01/09/1998', N'Nam', N'Q.1', N'Nam Định', N'20/10/2017', 8000000.0000, N'8781929873', N'X1')
INSERT [dbo].[TaiXe] ([MaTX], [HoVaTen], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [NgayBDHopDong], [Luong], [BangLai], [MaXe]) VALUES (N'TX2', N'Trần Văn C', N'09/09/1998', N'Nam', N'Q.Bình Thạnh', N'Hà Nội', N'29/06/2016', 10000000.0000, N'87189819723', N'X2')
INSERT [dbo].[TaiXe] ([MaTX], [HoVaTen], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [NgayBDHopDong], [Luong], [BangLai], [MaXe]) VALUES (N'TX3', N'Nguyễn Thị Hồng', N'02/12/1992', N'Nữ', N'Q.12', N'Đà Lạt', N'03/04/2017', 6000000.0000, N'99203840093', N'X3')
INSERT [dbo].[TaiXe] ([MaTX], [HoVaTen], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [NgayBDHopDong], [Luong], [BangLai], [MaXe]) VALUES (N'TX4', N'Nguyễn Nhật Trường', N'02/12/1997', N'Nam', N'Q.4', N'Vũng Tàu', N'04/03/2010', 5000000.0000, N'82349981774', N'X4')
INSERT [dbo].[TaiXe] ([MaTX], [HoVaTen], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [NgayBDHopDong], [Luong], [BangLai], [MaXe]) VALUES (N'TX5', N'Nguyễn Đăng Phúc', N'19/09/1997', N'Nam', N'Q.6', N'Đồng Tháp', N'07/08/2013', 8000000.0000, N'92839482394', NULL)
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/10/2017 19:47:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[TenDayDu] [nvarchar](50) NULL,
	[NgayThangNamSinh] [datetime] NULL,
	[Email] [nvarchar](50) NULL,
	[SoDienThoai] [int] NULL,
	[ChucVu] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [TenDayDu], [NgayThangNamSinh], [Email], [SoDienThoai], [ChucVu]) VALUES (1, N'admin', N'123456', N'Trần Quang Hậu', CAST(0x00008B5900000000 AS DateTime), N'tranhauit97@gmail.com', 961276493, N'quanly')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [TenDayDu], [NgayThangNamSinh], [Email], [SoDienThoai], [ChucVu]) VALUES (120, N'nhanvien', N'123456', NULL, NULL, NULL, NULL, N'nhanvien')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
/****** Object:  Table [dbo].[DonViQLXe]    Script Date: 12/10/2017 19:47:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonViQLXe](
	[MaDonVi] [nvarchar](50) NOT NULL,
	[TenDonVi] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[SoDienThoai] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DonViQLXe] ([MaDonVi], [TenDonVi], [DiaChi], [SoDienThoai], [Email]) VALUES (N'DV1', N'Liên hiệp hợp tác xã Công ty TNHH một thành viên Xe khách Sài Gòn', N'01 Phạm Hồng Thái, P.2, Q.Tân Bình', 38441225, N'Xekhachsg@gtvt.com.vn')
INSERT [dbo].[DonViQLXe] ([MaDonVi], [TenDonVi], [DiaChi], [SoDienThoai], [Email]) VALUES (N'DV2', N'Hợp tác xã vận tải xe buýt Quyết Thắng', N'1129/18 Lạc Long Quân, P.11, Q.Tân Bình', 38642712, N'quyetthang@gtcc.com.vn')
