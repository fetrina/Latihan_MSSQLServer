USE [perusahaan1]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 28/05/2017 22:51:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[IdCustomer] [int] IDENTITY(1,1) NOT NULL,
	[NomorCustomer] [int] NOT NULL,
	[NamaAkhir] [varchar](50) NOT NULL,
	[NamaAwal] [varchar](50) NOT NULL,
	[KodeArea] [int] NULL CONSTRAINT [DF_CUSTOMER_KodeArea]  DEFAULT ((24)),
	[Alamat] [varchar](50) NULL,
	[Telpon] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUSTOMER1]    Script Date: 28/05/2017 22:51:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMER1](
	[IdCustomer] [int] IDENTITY(1,1) NOT NULL,
	[NomorCustomer] [int] NOT NULL,
	[NamaAkhir] [varchar](50) NOT NULL,
	[NamaAwal] [varchar](50) NOT NULL,
	[KodeArea] [int] NULL,
	[Alamat] [varchar](50) NULL,
	[Telpon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kelas]    Script Date: 28/05/2017 22:51:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kelas](
	[IdKelas] [int] IDENTITY(1,1) NOT NULL,
	[IdSekolah] [int] NOT NULL,
	[NamaKelas] [varchar](50) NOT NULL,
	[Deskripsi] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdKelas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sekolah]    Script Date: 28/05/2017 22:51:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sekolah](
	[IdSekolah] [int] IDENTITY(1,1) NOT NULL,
	[NamaSekolah] [varchar](50) NOT NULL,
	[Deskripsi] [varchar](1000) NULL,
	[Alamat] [varchar](50) NULL,
	[Telpon] [varchar](50) NULL,
	[KodePos] [varchar](50) NULL,
	[AlamatPos] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSekolah] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CUSTOMER] ON 

INSERT [dbo].[CUSTOMER] ([IdCustomer], [NomorCustomer], [NamaAkhir], [NamaAwal], [KodeArea], [Alamat], [Telpon]) VALUES (1, 878, N'Pearce', N'Keenan', 231, N'Rembang', N'0218900')
INSERT [dbo].[CUSTOMER] ([IdCustomer], [NomorCustomer], [NamaAkhir], [NamaAwal], [KodeArea], [Alamat], [Telpon]) VALUES (3, 132, N'Andriana', N'Raisa', 329, N'Jakarta', N'0216900')
INSERT [dbo].[CUSTOMER] ([IdCustomer], [NomorCustomer], [NamaAkhir], [NamaAwal], [KodeArea], [Alamat], [Telpon]) VALUES (4, 98, N'Daud', N'Hamish', 398, N'Bali', N'0216932')
INSERT [dbo].[CUSTOMER] ([IdCustomer], [NomorCustomer], [NamaAkhir], [NamaAwal], [KodeArea], [Alamat], [Telpon]) VALUES (5, 12512, N'Daud', N'Hamish', 24, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CUSTOMER] OFF
SET IDENTITY_INSERT [dbo].[CUSTOMER1] ON 

INSERT [dbo].[CUSTOMER1] ([IdCustomer], [NomorCustomer], [NamaAkhir], [NamaAwal], [KodeArea], [Alamat], [Telpon]) VALUES (1, 1000, N'Akbar', N'Ali', 12, N'Semarang', 11111111)
SET IDENTITY_INSERT [dbo].[CUSTOMER1] OFF
SET IDENTITY_INSERT [dbo].[Kelas] ON 

INSERT [dbo].[Kelas] ([IdKelas], [IdSekolah], [NamaKelas], [Deskripsi]) VALUES (2, 1, N'X.A', N'Kelas Reguler')
INSERT [dbo].[Kelas] ([IdKelas], [IdSekolah], [NamaKelas], [Deskripsi]) VALUES (3, 2, N'XI.C', N'Kelas IPS')
INSERT [dbo].[Kelas] ([IdKelas], [IdSekolah], [NamaKelas], [Deskripsi]) VALUES (4, 1, N'XI.B', N'Kelas IPA')
INSERT [dbo].[Kelas] ([IdKelas], [IdSekolah], [NamaKelas], [Deskripsi]) VALUES (5, 3, N'XI.D', N'Kelas IPA')
INSERT [dbo].[Kelas] ([IdKelas], [IdSekolah], [NamaKelas], [Deskripsi]) VALUES (6, 3, N'X.E', N'Kelas Reguler')
SET IDENTITY_INSERT [dbo].[Kelas] OFF
SET IDENTITY_INSERT [dbo].[Sekolah] ON 

INSERT [dbo].[Sekolah] ([IdSekolah], [NamaSekolah], [Deskripsi], [Alamat], [Telpon], [KodePos], [AlamatPos]) VALUES (1, N'SMA 1 Rembang', N'Sekolah Favorit', N'Rembang', NULL, NULL, NULL)
INSERT [dbo].[Sekolah] ([IdSekolah], [NamaSekolah], [Deskripsi], [Alamat], [Telpon], [KodePos], [AlamatPos]) VALUES (2, N'SMA 2 Rembang', N'Sekolah Biasa', N'Rembang', NULL, NULL, NULL)
INSERT [dbo].[Sekolah] ([IdSekolah], [NamaSekolah], [Deskripsi], [Alamat], [Telpon], [KodePos], [AlamatPos]) VALUES (3, N'SMA 3 Bandung', N'Sekolah Fav di Bandung', N'Bandung', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Sekolah] OFF
/****** Object:  Index [UQ__CUSTOMER__0E5636685ABAD8A9]    Script Date: 28/05/2017 22:51:34 ******/
ALTER TABLE [dbo].[CUSTOMER] ADD UNIQUE NONCLUSTERED 
(
	[NomorCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__CUSTOMER__0E563668CF4FFB54]    Script Date: 28/05/2017 22:51:34 ******/
ALTER TABLE [dbo].[CUSTOMER1] ADD UNIQUE NONCLUSTERED 
(
	[NomorCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Kelas__4B5D86BA150362D5]    Script Date: 28/05/2017 22:51:34 ******/
ALTER TABLE [dbo].[Kelas] ADD UNIQUE NONCLUSTERED 
(
	[NamaKelas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Sekolah__FC44A6269CDBB2FC]    Script Date: 28/05/2017 22:51:34 ******/
ALTER TABLE [dbo].[Sekolah] ADD UNIQUE NONCLUSTERED 
(
	[NamaSekolah] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Kelas]  WITH CHECK ADD FOREIGN KEY([IdSekolah])
REFERENCES [dbo].[Sekolah] ([IdSekolah])
GO
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [CK__CUSTOMER__NomorC__37A5467C] CHECK  (([NomorCustomer]>(10)))
GO
ALTER TABLE [dbo].[CUSTOMER] CHECK CONSTRAINT [CK__CUSTOMER__NomorC__37A5467C]
GO
