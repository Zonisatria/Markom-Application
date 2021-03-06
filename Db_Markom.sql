USE [master]
GO
/****** Object:  Database [Db_Markom]    Script Date: 9/18/2020 4:35:27 PM ******/
CREATE DATABASE [Db_Markom]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Db_Markom', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Db_Markom.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Db_Markom_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Db_Markom_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Db_Markom] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Db_Markom].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Db_Markom] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Db_Markom] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Db_Markom] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Db_Markom] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Db_Markom] SET ARITHABORT OFF 
GO
ALTER DATABASE [Db_Markom] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Db_Markom] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Db_Markom] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Db_Markom] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Db_Markom] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Db_Markom] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Db_Markom] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Db_Markom] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Db_Markom] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Db_Markom] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Db_Markom] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Db_Markom] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Db_Markom] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Db_Markom] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Db_Markom] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Db_Markom] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Db_Markom] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Db_Markom] SET RECOVERY FULL 
GO
ALTER DATABASE [Db_Markom] SET  MULTI_USER 
GO
ALTER DATABASE [Db_Markom] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Db_Markom] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Db_Markom] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Db_Markom] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Db_Markom] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Db_Markom', N'ON'
GO
USE [Db_Markom]
GO
/****** Object:  Table [dbo].[m_employee]    Script Date: 9/18/2020 4:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_employee](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[employee_number] [varchar](50) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NULL,
	[m_company_id] [bigint] NULL,
	[email] [varchar](150) NULL,
	[is_delete] [bit] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_m_employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[m_product]    Script Date: 9/18/2020 4:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_product](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](255) NULL,
	[is_delete] [bit] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_m_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[m_souvenir]    Script Date: 9/18/2020 4:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_souvenir](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](225) NULL,
	[m_unit_id] [bigint] NOT NULL,
	[is_delete] [bit] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_m_souvenir] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[m_unit]    Script Date: 9/18/2020 4:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_unit](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](225) NULL,
	[is_delete] [bit] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_m_unit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_souvenir]    Script Date: 9/18/2020 4:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_souvenir](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[type] [varchar](11) NOT NULL,
	[t_event_id] [bigint] NULL,
	[request_by] [bigint] NOT NULL,
	[request_date] [datetime] NULL,
	[request_due_date] [datetime] NULL,
	[approved_by] [bigint] NULL,
	[approved_date] [datetime] NULL,
	[received_by] [bigint] NULL,
	[received_date] [datetime] NULL,
	[settlement_by] [bigint] NULL,
	[settlement_date] [datetime] NULL,
	[settlement_approved_by] [bigint] NULL,
	[settlement_approved_date] [datetime] NULL,
	[status] [int] NULL,
	[note] [varchar](255) NULL,
	[reject_reason] [varchar](255) NULL,
	[is_delete] [bit] NULL,
	[created_by] [bigint] NULL,
	[created_date] [datetime] NULL,
	[updated_by] [bigint] NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_t_souvenir] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_souvenir_item]    Script Date: 9/18/2020 4:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_souvenir_item](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[t_souvenir_id] [bigint] NOT NULL,
	[m_souvenir_id] [bigint] NOT NULL,
	[qty] [bigint] NULL,
	[qty_settlement] [bigint] NULL,
	[note] [varchar](255) NOT NULL,
	[is_delete] [bit] NOT NULL,
	[created_by] [bigint] NULL,
	[created_date] [datetime] NULL,
	[updated_by] [bigint] NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_t_souvenir_item] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[m_employee] ON 

INSERT [dbo].[m_employee] ([id], [employee_number], [first_name], [last_name], [m_company_id], [email], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (1, N'18.03.26.01', N'Sahid', N'Triambudhi', 1, NULL, 0, N'Administrator', CAST(N'2020-09-14 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[m_employee] ([id], [employee_number], [first_name], [last_name], [m_company_id], [email], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (2, N'18.03.26.02', N'Alamsyah', N'Putra', 1, NULL, 0, N'Administrator', CAST(N'2020-09-14 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[m_employee] ([id], [employee_number], [first_name], [last_name], [m_company_id], [email], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (3, N'18.03.26.03', N'Eric', N'Agustian', 2, NULL, 0, N'Administrator', CAST(N'2020-09-14 00:00:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[m_employee] OFF
SET IDENTITY_INSERT [dbo].[m_product] ON 

INSERT [dbo].[m_product] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (1, N'PR0001', N'Brosur', N'Print kertas foto', 0, N'Administrator', CAST(N'2020-09-12 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[m_product] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (2, N'PR0002', N'X-banner', N'60 cm x 150 cm', 0, N'Administrator', CAST(N'2020-09-12 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[m_product] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (3, N'PR0003', N'Banner', N'3 m x 60 cm', 0, N'Administrator', CAST(N'2020-09-12 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[m_product] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (4, N'PR0004', N'Meja Kantor', N'Tinggi 1 m, Lebar 80 cm, & Panjang 120 cm', 1, N'Administrator', CAST(N'2020-09-12 03:30:17.613' AS DateTime), N'Zoni', CAST(N'2020-09-12 03:31:21.100' AS DateTime))
INSERT [dbo].[m_product] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (5, N'PR0005', N'Meja', N'Meja desain dari client', 0, N'Administrator', CAST(N'2020-09-12 03:32:32.097' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[m_product] OFF
SET IDENTITY_INSERT [dbo].[m_souvenir] ON 

INSERT [dbo].[m_souvenir] ([id], [code], [name], [description], [m_unit_id], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (1, N'SV0001', N'Buku Catatan', NULL, 1, 0, N'Administrator', CAST(N'2020-09-09 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[m_souvenir] ([id], [code], [name], [description], [m_unit_id], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (2, N'SV0002', N'Jam Dinding', NULL, 3, 0, N'Administrator', CAST(N'2020-09-09 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[m_souvenir] ([id], [code], [name], [description], [m_unit_id], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (3, N'SV0003', N'Pulpen Gantung', NULL, 1, 0, N'Administrator', CAST(N'2020-09-09 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[m_souvenir] ([id], [code], [name], [description], [m_unit_id], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (4, N'SV0004', N'Masker MMC', N'Masker untuk Mubes', 10004, 0, N'Administrator', CAST(N'2020-09-11 23:21:47.457' AS DateTime), N'Zoni', CAST(N'2020-09-12 00:23:09.260' AS DateTime))
INSERT [dbo].[m_souvenir] ([id], [code], [name], [description], [m_unit_id], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (5, N'SV0005', N'Tas kecil', NULL, 3, 1, N'Administrator', CAST(N'2020-09-11 23:23:38.287' AS DateTime), N'Zoni', CAST(N'2020-09-12 00:03:20.093' AS DateTime))
INSERT [dbo].[m_souvenir] ([id], [code], [name], [description], [m_unit_id], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (6, N'SV0006', N'hgd', NULL, 0, 1, N'Administrator', CAST(N'2020-09-11 23:47:10.283' AS DateTime), NULL, NULL)
INSERT [dbo].[m_souvenir] ([id], [code], [name], [description], [m_unit_id], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (7, N'SV0007', N'srefgsef', NULL, 0, 1, N'Administrator', CAST(N'2020-09-11 23:49:42.447' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[m_souvenir] OFF
SET IDENTITY_INSERT [dbo].[m_unit] ON 

INSERT [dbo].[m_unit] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (1, N'UN0001', N'Lusin', NULL, 0, N'Administrator', CAST(N'2020-09-07 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[m_unit] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (3, N'UN0002', N'Pieces', NULL, 0, N'Administrator', CAST(N'2020-09-07 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[m_unit] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (4, N'UN0003', N'Kilogram', NULL, 0, N'Administrator', CAST(N'2020-09-07 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[m_unit] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (10004, N'UN0004', N'Meter', N'Percobaan pertama diedit', 0, N'Administrator', CAST(N'2020-09-09 00:12:46.707' AS DateTime), N'Zoni', CAST(N'2020-09-09 00:50:43.107' AS DateTime))
INSERT [dbo].[m_unit] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (10005, N'UN0005', N'Kodi', N'Percobaan kedua', 0, N'Administrator', CAST(N'2020-09-09 00:51:26.413' AS DateTime), N'Zoni', CAST(N'2020-09-09 16:05:23.720' AS DateTime))
INSERT [dbo].[m_unit] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (10006, N'UN0006', N'Lusin111', N'Percobaan ketigaww', 1, N'Administrator', CAST(N'2020-09-09 03:22:32.140' AS DateTime), N'Zoni', CAST(N'2020-09-09 03:34:09.147' AS DateTime))
INSERT [dbo].[m_unit] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (10007, N'UN0007', N'Gross', N'Percobaan keempat', 0, N'Administrator', CAST(N'2020-09-09 03:26:36.433' AS DateTime), NULL, NULL)
INSERT [dbo].[m_unit] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (10008, N'UN0008', N'Kodi', N'Percobaan kelima', 1, N'Administrator', CAST(N'2020-09-09 03:29:13.777' AS DateTime), NULL, NULL)
INSERT [dbo].[m_unit] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (10009, N'UN0009', N'Lusin111', N'Percobaan keenam', 1, N'Administrator', CAST(N'2020-09-09 03:30:12.823' AS DateTime), N'Zoni', CAST(N'2020-09-09 04:40:57.777' AS DateTime))
INSERT [dbo].[m_unit] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (10010, N'UN0010', N'Gross', N'Percobaan ketigam', 1, N'Administrator', CAST(N'2020-09-09 03:33:53.633' AS DateTime), N'Zoni', CAST(N'2020-09-09 17:15:54.277' AS DateTime))
INSERT [dbo].[m_unit] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (10011, N'UN0011', N'Lusin111', N'Percobaan ketiga', 1, N'Administrator', CAST(N'2020-09-09 04:41:25.840' AS DateTime), NULL, NULL)
INSERT [dbo].[m_unit] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (10012, N'UN0012', N'Meterjj', N'Percobaan kedua', 1, N'Administrator', CAST(N'2020-09-09 05:06:07.220' AS DateTime), N'Zoni', CAST(N'2020-09-09 05:06:26.673' AS DateTime))
INSERT [dbo].[m_unit] ([id], [code], [name], [description], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (10013, N'UN0013', N'Meterjj', N'Percobaan kedua', 1, N'Administrator', CAST(N'2020-09-10 18:44:21.250' AS DateTime), N'Zoni', CAST(N'2020-09-10 18:44:34.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[m_unit] OFF
SET IDENTITY_INSERT [dbo].[t_souvenir] ON 

INSERT [dbo].[t_souvenir] ([id], [code], [type], [t_event_id], [request_by], [request_date], [request_due_date], [approved_by], [approved_date], [received_by], [received_date], [settlement_by], [settlement_date], [settlement_approved_by], [settlement_approved_date], [status], [note], [reject_reason], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (1, N'TRSV14092000001', N'additional', NULL, 1, NULL, NULL, NULL, NULL, 1, CAST(N'2020-09-14 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'Diterima dengan baik dan packing rapih. Akan segera disimpan dilemari', NULL, 0, 1, CAST(N'2020-09-14 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[t_souvenir] ([id], [code], [type], [t_event_id], [request_by], [request_date], [request_due_date], [approved_by], [approved_date], [received_by], [received_date], [settlement_by], [settlement_date], [settlement_approved_by], [settlement_approved_date], [status], [note], [reject_reason], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (2, N'TRSV14092000002', N'additional', NULL, 2, NULL, NULL, NULL, NULL, 2, CAST(N'2020-09-14 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'Recomended !! barang bagus', NULL, 0, 1, CAST(N'2020-09-14 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[t_souvenir] ([id], [code], [type], [t_event_id], [request_by], [request_date], [request_due_date], [approved_by], [approved_date], [received_by], [received_date], [settlement_by], [settlement_date], [settlement_approved_by], [settlement_approved_date], [status], [note], [reject_reason], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (3, N'TRSV14092000003', N'additional', NULL, 3, NULL, NULL, NULL, NULL, 3, CAST(N'2020-09-14 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'Packing sempurna, barang aman semuanya.', NULL, 0, 1, CAST(N'2020-09-14 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[t_souvenir] ([id], [code], [type], [t_event_id], [request_by], [request_date], [request_due_date], [approved_by], [approved_date], [received_by], [received_date], [settlement_by], [settlement_date], [settlement_approved_by], [settlement_approved_date], [status], [note], [reject_reason], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (4, N'TRSV09092000004', N'additional', NULL, 3, NULL, NULL, NULL, NULL, 3, CAST(N'2020-09-09 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'Coba', NULL, 0, 1, CAST(N'2020-09-15 05:51:55.430' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[t_souvenir] OFF
SET IDENTITY_INSERT [dbo].[t_souvenir_item] ON 

INSERT [dbo].[t_souvenir_item] ([id], [t_souvenir_id], [m_souvenir_id], [qty], [qty_settlement], [note], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (1, 1, 1, 100, 0, N'Merk bola dunia', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[t_souvenir_item] ([id], [t_souvenir_id], [m_souvenir_id], [qty], [qty_settlement], [note], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (2, 1, 2, 100, 0, N'Bahan plastik', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[t_souvenir_item] ([id], [t_souvenir_id], [m_souvenir_id], [qty], [qty_settlement], [note], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (3, 1, 3, 100, 0, N'Tinta biru', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[t_souvenir_item] ([id], [t_souvenir_id], [m_souvenir_id], [qty], [qty_settlement], [note], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (4, 2, 2, 150, 0, N'Model clasic', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[t_souvenir_item] ([id], [t_souvenir_id], [m_souvenir_id], [qty], [qty_settlement], [note], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (5, 2, 3, 50, 0, N'Tinta emas', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[t_souvenir_item] ([id], [t_souvenir_id], [m_souvenir_id], [qty], [qty_settlement], [note], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (6, 3, 1, 70, 0, N'Buku A5', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[t_souvenir_item] ([id], [t_souvenir_id], [m_souvenir_id], [qty], [qty_settlement], [note], [is_delete], [created_by], [created_date], [updated_by], [updated_date]) VALUES (7, 3, 2, 60, 0, N'Ukuran jumbo', 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[t_souvenir_item] OFF
USE [master]
GO
ALTER DATABASE [Db_Markom] SET  READ_WRITE 
GO
