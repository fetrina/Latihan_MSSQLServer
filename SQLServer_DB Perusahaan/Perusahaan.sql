USE [perusahaan]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 28/05/2017 22:54:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer](
	[IDCustomer] [int] NOT NULL,
	[NomorCustomer] [int] NOT NULL,
	[NamaAkhir] [varchar](50) NOT NULL,
	[NamaAwal] [varchar](50) NOT NULL,
	[KodeArea] [int] NULL,
	[Alamat] [varchar](50) NULL,
	[Telpon] [varchar](50) NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[IDCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
