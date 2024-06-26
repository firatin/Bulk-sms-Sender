USE [master]
GO
/****** Object:  Database [EgeSms]    Script Date: 07/02/2014 14:22:18 ******/
CREATE DATABASE [EgeSms] ON  PRIMARY 
( NAME = N'EgeSms', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\EgeSms.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EgeSms_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\EgeSms_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EgeSms] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EgeSms].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EgeSms] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [EgeSms] SET ANSI_NULLS OFF
GO
ALTER DATABASE [EgeSms] SET ANSI_PADDING OFF
GO
ALTER DATABASE [EgeSms] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [EgeSms] SET ARITHABORT OFF
GO
ALTER DATABASE [EgeSms] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [EgeSms] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [EgeSms] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [EgeSms] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [EgeSms] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [EgeSms] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [EgeSms] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [EgeSms] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [EgeSms] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [EgeSms] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [EgeSms] SET  DISABLE_BROKER
GO
ALTER DATABASE [EgeSms] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [EgeSms] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [EgeSms] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [EgeSms] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [EgeSms] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [EgeSms] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [EgeSms] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [EgeSms] SET  READ_WRITE
GO
ALTER DATABASE [EgeSms] SET RECOVERY SIMPLE
GO
ALTER DATABASE [EgeSms] SET  MULTI_USER
GO
ALTER DATABASE [EgeSms] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [EgeSms] SET DB_CHAINING OFF
GO
USE [EgeSms]
GO
/****** Object:  Table [dbo].[SayacIp]    Script Date: 07/02/2014 14:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SayacIp](
	[IpId] [int] IDENTITY(1,1) NOT NULL,
	[Ip] [nvarchar](50) NULL,
	[Hit] [int] NULL,
	[Tarih] [nvarchar](50) NULL,
 CONSTRAINT [PK_SayacIp] PRIMARY KEY CLUSTERED 
(
	[IpId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SayacHit]    Script Date: 07/02/2014 14:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SayacHit](
	[SayacId] [int] IDENTITY(1,1) NOT NULL,
	[Tarih] [nvarchar](50) NULL,
	[Tekil] [int] NULL,
	[Cogul] [int] NULL,
 CONSTRAINT [PK_SayacHit] PRIMARY KEY CLUSTERED 
(
	[SayacId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Referanslar]    Script Date: 07/02/2014 14:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referanslar](
	[RefId] [int] IDENTITY(1,1) NOT NULL,
	[RefAdi] [nvarchar](50) NULL,
	[Resim] [nvarchar](50) NULL,
	[Url] [nvarchar](100) NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Referanslar] PRIMARY KEY CLUSTERED 
(
	[RefId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ozellikler]    Script Date: 07/02/2014 14:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ozellikler](
	[Ozellik] [nvarchar](max) NULL,
	[Temalar] [nvarchar](max) NULL,
	[Paketler] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaTag]    Script Date: 07/02/2014 14:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaTag](
	[Title] [nvarchar](150) NULL,
	[Descript] [nvarchar](200) NULL,
	[Keywords] [nvarchar](500) NULL,
	[Facebook] [nvarchar](200) NULL,
	[Twitter] [nvarchar](100) NULL,
	[Footer] [nvarchar](100) NULL,
	[SiteLogo] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iletisim]    Script Date: 07/02/2014 14:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iletisim](
	[Adres] [nvarchar](250) NULL,
	[Tel1] [nvarchar](30) NULL,
	[Tel2] [nvarchar](30) NULL,
	[Fax] [nvarchar](30) NULL,
	[Mail] [nvarchar](50) NULL,
	[MailSifre] [nvarchar](50) NULL,
	[Smtp] [nvarchar](50) NULL,
	[MailPort] [nvarchar](50) NULL,
	[Harita] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Haberler]    Script Date: 07/02/2014 14:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Haberler](
	[HaberId] [int] IDENTITY(1,1) NOT NULL,
	[HaberAdi] [nvarchar](50) NULL,
	[Detay] [nvarchar](max) NULL,
	[SayfaMi] [bit] NULL,
	[AktifMi] [bit] NULL,
	[Tarih] [datetime] NULL,
 CONSTRAINT [PK_Sayfalar] PRIMARY KEY CLUSTERED 
(
	[HaberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bayilik]    Script Date: 07/02/2014 14:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bayilik](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](100) NULL,
	[email] [nvarchar](50) NULL,
	[ceptelefonu] [nvarchar](11) NULL,
	[istelefonu] [nvarchar](11) NULL,
	[web] [nvarchar](100) NULL,
	[Sifre] [nvarchar](50) NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Bayilik] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BannerYonetimi]    Script Date: 07/02/2014 14:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BannerYonetimi](
	[BannerId] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](50) NULL,
	[UrlAdres] [nvarchar](500) NULL,
	[YeniSayfada] [nvarchar](30) NULL,
	[Aktif] [bit] NULL,
	[Resim] [nvarchar](50) NULL,
 CONSTRAINT [PK_BannerYonetimi] PRIMARY KEY CLUSTERED 
(
	[BannerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uyeler]    Script Date: 07/02/2014 14:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uyeler](
	[UyeId] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
	[sehir] [nvarchar](50) NULL,
	[Cepno] [nchar](11) NULL,
	[Isno] [nchar](11) NULL,
	[AktifMi] [bit] NULL,
	[KayitTarihi] [datetime] NULL,
 CONSTRAINT [PK_Uyeler] PRIMARY KEY CLUSTERED 
(
	[UyeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ulasim]    Script Date: 07/02/2014 14:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ulasim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](100) NULL,
	[Tel] [nvarchar](11) NULL,
 CONSTRAINT [PK_Ulasim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temalar]    Script Date: 07/02/2014 14:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temalar](
	[TemaId] [int] IDENTITY(1,1) NOT NULL,
	[TemaAdi] [nvarchar](50) NULL,
	[Resim] [nvarchar](50) NULL,
	[Url] [nvarchar](100) NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Temalar] PRIMARY KEY CLUSTERED 
(
	[TemaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tadmin]    Script Date: 07/02/2014 14:22:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tadmin](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tadmin] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_UyeEkle]    Script Date: 07/02/2014 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UyeEkle]
	
    @Ad nvarchar(100),
	@Email nvarchar(50),
	@Sifre nvarchar(50),
	@sehir nvarchar(50),
	@Cepno nvarchar(11),
	@Isno nvarchar(11)
AS
BEGIN
	insert into dbo.Uyeler (Ad,Email,Sifre,sehir,Cepno,Isno) 
	Values
	 (@Ad,@Email,@Sifre,@sehir,@Cepno,@Isno)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Ulasim]    Script Date: 07/02/2014 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_Ulasim]
    @Ad nvarchar(100),
	@Tel nvarchar(11)
	
AS
BEGIN
	insert into dbo.Ulasim(Ad,Tel) 
	Values (@Ad,@Tel)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TemaEkle]    Script Date: 07/02/2014 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TemaEkle]
@TemaAdi nvarchar(50),
@Resim nvarchar(50),
@Url nvarchar(100)

AS
BEGIN
	insert into Temalar(TemaAdi,Resim,Url)values (@TemaAdi,@Resim,@Url)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TemaDuzenle]    Script Date: 07/02/2014 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TemaDuzenle]

@TemaAdi nvarchar(50),
@Url nvarchar(100),
@Aktif bit,
@TemaId int

AS
BEGIN
	Update Temalar Set TemaAdi=@TemaAdi,Url=@Url,Aktif=@Aktif where TemaId=@TemaId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_RefEkle]    Script Date: 07/02/2014 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_RefEkle]
@RefAdi nvarchar(50),
@Resim nvarchar(50),
@Url nvarchar(100)

AS
BEGIN
	insert into Referanslar(RefAdi,Resim,Url)values (@RefAdi,@Resim,@Url)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_RefDuzenle]    Script Date: 07/02/2014 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_RefDuzenle]
@RefAdi nvarchar(50),
@Url nvarchar(100),
@Aktif bit,
@RefId int

AS
BEGIN
	Update Referanslar Set RefAdi=@RefAdi,Url=@Url,Aktif=@Aktif where RefId=@RefId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_PaketDuzenle]    Script Date: 07/02/2014 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_PaketDuzenle]

@Paketler nvarchar(max)
AS
BEGIN
	 update Ozellikler Set Paketler=@Paketler
END
GO
/****** Object:  StoredProcedure [dbo].[sp_OzellikDuzenle]    Script Date: 07/02/2014 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_OzellikDuzenle]

@Ozellik nvarchar(max)
AS
BEGIN
	 update Ozellikler Set Ozellik=@Ozellik
END
GO
/****** Object:  StoredProcedure [dbo].[sp_MetaTag]    Script Date: 07/02/2014 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_MetaTag]

@Title nvarchar(150),
@Descript nvarchar(200),
@Keywords nvarchar(500),
@Facebook nvarchar(200),
@Twitter nvarchar(100),
@Footer nvarchar(100)



AS
BEGIN
	Update MetaTag Set Title=@Title,Descript=@Descript,Keywords=@Keywords,Facebook=@Facebook,Twitter=@Twitter,Footer=@Footer
	
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_iletisim]    Script Date: 07/02/2014 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_iletisim]

@Adres nvarchar(250),
@Tel1 nvarchar(30),
@Tel2 nvarchar(30),
@Fax nvarchar(30),
@Mail nvarchar(50),
@MailSifre nvarchar(50),
@Smtp nvarchar(50),
@MailPort nvarchar(50),
@Harita nvarchar(max)


AS
BEGIN
	Update iletisim Set Adres=@Adres,Tel1=@Tel1,Tel2=@Tel2,Fax=@Fax,Mail=@Mail,MailSifre=@MailSifre,Smtp=@Smtp,MailPort=@MailPort,Harita=@Harita
	
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_HaberEkle]    Script Date: 07/02/2014 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_HaberEkle]

@HaberAdi nvarchar(100),
@Detay nvarchar(max),
@SayfaMi bit

AS
BEGIN
	insert into Haberler(HaberAdi,Detay,SayfaMi) values (@HaberAdi,@Detay,@SayfaMi)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_HaberDuzenle]    Script Date: 07/02/2014 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_HaberDuzenle]

@HaberAdi nvarchar(100),
@Detay nvarchar(max),
@HaberId int

AS
BEGIN
	Update Haberler Set HaberAdi=@HaberAdi,Detay=@Detay where HaberId=@HaberId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BayiEkle]    Script Date: 07/02/2014 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_BayiEkle]
    @Ad nvarchar(100),
	@Email nvarchar(50),	
	@ceptelefonu nvarchar(11),
	@istelefonu nvarchar(11),
	@web nvarchar(100),
	@Sifre nvarchar(50)
AS
BEGIN
	insert into dbo.Bayilik (Ad,email,ceptelefonu,istelefonu,web,Sifre) 
	Values (@Ad,@Email,@ceptelefonu,@istelefonu,@web,@Sifre)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BannerEkle]    Script Date: 07/02/2014 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_BannerEkle]
@Baslik nvarchar(50),
@UrlAdres  nvarchar(500),
@YeniSayfada nvarchar(30),
@Aktif bit,
@Resim nvarchar(50)


AS
BEGIN
	insert into BannerYonetimi(Baslik,UrlAdres,YeniSayfada,Aktif,Resim) values  
	(@Baslik,@UrlAdres,@YeniSayfada,@Aktif,@Resim)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BannerDuzenle]    Script Date: 07/02/2014 14:22:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_BannerDuzenle]
@Baslik nvarchar(50),
@UrlAdres  nvarchar(500),
@YeniSayfada nvarchar(30),
@Aktif bit,
@BannerId int


AS
BEGIN
	update BannerYonetimi set Baslik=@Baslik,UrlAdres=@UrlAdres,YeniSayfada=@YeniSayfada,Aktif=@Aktif
	where BannerId=@BannerId
END
GO
/****** Object:  Default [DF_Referanslar_Aktif]    Script Date: 07/02/2014 14:22:19 ******/
ALTER TABLE [dbo].[Referanslar] ADD  CONSTRAINT [DF_Referanslar_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
/****** Object:  Default [DF_Sayfalar_AktifMi]    Script Date: 07/02/2014 14:22:19 ******/
ALTER TABLE [dbo].[Haberler] ADD  CONSTRAINT [DF_Sayfalar_AktifMi]  DEFAULT ((1)) FOR [AktifMi]
GO
/****** Object:  Default [DF_Sayfalar_Tarih]    Script Date: 07/02/2014 14:22:19 ******/
ALTER TABLE [dbo].[Haberler] ADD  CONSTRAINT [DF_Sayfalar_Tarih]  DEFAULT (getdate()) FOR [Tarih]
GO
/****** Object:  Default [DF_Bayilik_Aktif]    Script Date: 07/02/2014 14:22:19 ******/
ALTER TABLE [dbo].[Bayilik] ADD  CONSTRAINT [DF_Bayilik_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
/****** Object:  Default [DF_Uyeler_AktifMi]    Script Date: 07/02/2014 14:22:19 ******/
ALTER TABLE [dbo].[Uyeler] ADD  CONSTRAINT [DF_Uyeler_AktifMi]  DEFAULT ((1)) FOR [AktifMi]
GO
/****** Object:  Default [DF_Uyeler_KayitTarihi]    Script Date: 07/02/2014 14:22:19 ******/
ALTER TABLE [dbo].[Uyeler] ADD  CONSTRAINT [DF_Uyeler_KayitTarihi]  DEFAULT (getdate()) FOR [KayitTarihi]
GO
/****** Object:  Default [DF_Temalar_Aktif]    Script Date: 07/02/2014 14:22:19 ******/
ALTER TABLE [dbo].[Temalar] ADD  CONSTRAINT [DF_Temalar_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
