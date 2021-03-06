create database SinifDB

go


USE [SinifDB]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 20.04.2014 19:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdiSoyadi] [nvarchar](200) NULL,
	[EMail] [nvarchar](200) NULL,
	[sifre] [nvarchar](200) NULL,
	[KayitTarihi] [datetime] NULL,
	[MedeniHali] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[vw_KullaniciGetir]    Script Date: 20.04.2014 19:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_KullaniciGetir]
as

select * from Kullanicilar
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 

INSERT [dbo].[Kullanicilar] ([ID], [AdiSoyadi], [EMail], [sifre], [KayitTarihi], [MedeniHali]) VALUES (1, N'Deneme', N'test@test.com', N'123456', CAST(0x0000A3130131A7D8 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
ALTER TABLE [dbo].[Kullanicilar] ADD  DEFAULT (getdate()) FOR [KayitTarihi]
GO
ALTER TABLE [dbo].[Kullanicilar] ADD  DEFAULT ((0)) FOR [MedeniHali]
GO
USE [master]
GO
ALTER DATABASE [SinifDB] SET  READ_WRITE 
GO
