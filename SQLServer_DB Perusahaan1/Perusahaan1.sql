USE [perusahaan1]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 03/06/2017 22:27:12 ******/
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
/****** Object:  Table [dbo].[CUSTOMER1]    Script Date: 03/06/2017 22:27:12 ******/
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
/****** Object:  Table [dbo].[Kelas]    Script Date: 03/06/2017 22:27:12 ******/
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
/****** Object:  Table [dbo].[Nilai]    Script Date: 03/06/2017 22:27:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nilai](
	[IdNilai] [int] IDENTITY(1,1) NOT NULL,
	[IdSiswa] [int] NOT NULL,
	[IdKelas] [int] NOT NULL,
	[Nilai] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sekolah]    Script Date: 03/06/2017 22:27:12 ******/
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
/****** Object:  View [dbo].[ViewSekolah]    Script Date: 03/06/2017 22:27:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewSekolah]
AS
SELECT Sekolah.NamaSekolah, Kelas.NamaKelas
FROM
Sekolah
INNER JOIN Kelas ON Sekolah.IdSekolah=Kelas.IdSekolah
GO
/****** Object:  View [dbo].[ViewSekolah1]    Script Date: 03/06/2017 22:27:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewSekolah1]
AS
SELECT        dbo.Sekolah.NamaSekolah, dbo.Kelas.NamaKelas
FROM            dbo.Kelas INNER JOIN
                         dbo.Sekolah ON dbo.Kelas.IdSekolah = dbo.Sekolah.IdSekolah

GO
SET IDENTITY_INSERT [dbo].[CUSTOMER] ON 

INSERT [dbo].[CUSTOMER] ([IdCustomer], [NomorCustomer], [NamaAkhir], [NamaAwal], [KodeArea], [Alamat], [Telpon]) VALUES (1, 878, N'Pearce', N'Keenan', 333, N'Rembang', N'No Tdk Valid')
INSERT [dbo].[CUSTOMER] ([IdCustomer], [NomorCustomer], [NamaAkhir], [NamaAwal], [KodeArea], [Alamat], [Telpon]) VALUES (3, 132, N'Andriana', N'Raisa', 431, N'Jakarta', N'012112321')
INSERT [dbo].[CUSTOMER] ([IdCustomer], [NomorCustomer], [NamaAkhir], [NamaAwal], [KodeArea], [Alamat], [Telpon]) VALUES (4, 98, N'Daud', N'Hamish', 500, N'Bali', N'No Tdk Valid')
INSERT [dbo].[CUSTOMER] ([IdCustomer], [NomorCustomer], [NamaAkhir], [NamaAwal], [KodeArea], [Alamat], [Telpon]) VALUES (5, 12512, N'Daud', N'Hamish', 148, NULL, N'No Tdk Valid')
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
INSERT [dbo].[Kelas] ([IdKelas], [IdSekolah], [NamaKelas], [Deskripsi]) VALUES (7, 4, N'Bahasa Korea', NULL)
INSERT [dbo].[Kelas] ([IdKelas], [IdSekolah], [NamaKelas], [Deskripsi]) VALUES (8, 4, N'Bahasa Mandarin', NULL)
SET IDENTITY_INSERT [dbo].[Kelas] OFF
SET IDENTITY_INSERT [dbo].[Nilai] ON 

INSERT [dbo].[Nilai] ([IdNilai], [IdSiswa], [IdKelas], [Nilai]) VALUES (1, 1, 1, 5)
INSERT [dbo].[Nilai] ([IdNilai], [IdSiswa], [IdKelas], [Nilai]) VALUES (2, 2, 1, 4)
INSERT [dbo].[Nilai] ([IdNilai], [IdSiswa], [IdKelas], [Nilai]) VALUES (3, 2, 2, 5)
INSERT [dbo].[Nilai] ([IdNilai], [IdSiswa], [IdKelas], [Nilai]) VALUES (4, 1, 3, 3)
INSERT [dbo].[Nilai] ([IdNilai], [IdSiswa], [IdKelas], [Nilai]) VALUES (5, 4, 3, 3)
SET IDENTITY_INSERT [dbo].[Nilai] OFF
SET IDENTITY_INSERT [dbo].[Sekolah] ON 

INSERT [dbo].[Sekolah] ([IdSekolah], [NamaSekolah], [Deskripsi], [Alamat], [Telpon], [KodePos], [AlamatPos]) VALUES (1, N'SMA 1 Rembang', N'Sekolah Favorit', N'Rembang', NULL, NULL, NULL)
INSERT [dbo].[Sekolah] ([IdSekolah], [NamaSekolah], [Deskripsi], [Alamat], [Telpon], [KodePos], [AlamatPos]) VALUES (2, N'SMA 2 Rembang', N'Sekolah Biasa', N'Rembang', NULL, NULL, NULL)
INSERT [dbo].[Sekolah] ([IdSekolah], [NamaSekolah], [Deskripsi], [Alamat], [Telpon], [KodePos], [AlamatPos]) VALUES (3, N'SMA 3 Bandung', N'Sekolah Fav di Bandung', N'Bandung', NULL, NULL, NULL)
INSERT [dbo].[Sekolah] ([IdSekolah], [NamaSekolah], [Deskripsi], [Alamat], [Telpon], [KodePos], [AlamatPos]) VALUES (4, N'SD Tinjomoyo', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sekolah] ([IdSekolah], [NamaSekolah], [Deskripsi], [Alamat], [Telpon], [KodePos], [AlamatPos]) VALUES (5, N'SD Kutoharjo 2', N'SD Fav', N'Rembang', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Sekolah] OFF
/****** Object:  Index [UQ__CUSTOMER__0E5636685ABAD8A9]    Script Date: 03/06/2017 22:27:12 ******/
ALTER TABLE [dbo].[CUSTOMER] ADD UNIQUE NONCLUSTERED 
(
	[NomorCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__CUSTOMER__0E563668CF4FFB54]    Script Date: 03/06/2017 22:27:12 ******/
ALTER TABLE [dbo].[CUSTOMER1] ADD UNIQUE NONCLUSTERED 
(
	[NomorCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Kelas__4B5D86BA150362D5]    Script Date: 03/06/2017 22:27:12 ******/
ALTER TABLE [dbo].[Kelas] ADD UNIQUE NONCLUSTERED 
(
	[NamaKelas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Sekolah__FC44A6269CDBB2FC]    Script Date: 03/06/2017 22:27:12 ******/
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
/****** Object:  StoredProcedure [dbo].[AmbilKelasTertentu]    Script Date: 03/06/2017 22:27:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AmbilKelasTertentu]
@NamaSekolah varchar(50)
AS
SELECT Sekolah.NamaSekolah, Kelas.NamaKelas
FROM Sekolah inner join Kelas 
ON Sekolah.IdSekolah = Kelas.IdSekolah
WHERE NamaSekolah=@NamaSekolah
ORDER BY NamaKelas
GO
/****** Object:  StoredProcedure [dbo].[AmbilSemuaKelas]    Script Date: 03/06/2017 22:27:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AmbilSemuaKelas]
AS
SELECT Sekolah.NamaSekolah, Kelas.NamaKelas
FROM Sekolah
inner join Kelas ON Sekolah.IdSekolah = Kelas.IdSekolah
ORDER BY NamaSekolah, NamaKelas
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[37] 4[18] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Kelas"
            Begin Extent = 
               Top = 18
               Left = 29
               Bottom = 147
               Right = 199
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sekolah"
            Begin Extent = 
               Top = 18
               Left = 274
               Bottom = 147
               Right = 444
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 885
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1260
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewSekolah1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewSekolah1'
GO
