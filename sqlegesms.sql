USE [master]
GO
/****** Object:  Database [EtSite]    Script Date: 06/16/2014 15:13:43 ******/
CREATE DATABASE [EtSite] ON  PRIMARY 
( NAME = N'EtSite', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\EtSite.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EtSite_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\EtSite_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EtSite] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EtSite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EtSite] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [EtSite] SET ANSI_NULLS OFF
GO
ALTER DATABASE [EtSite] SET ANSI_PADDING OFF
GO
ALTER DATABASE [EtSite] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [EtSite] SET ARITHABORT OFF
GO
ALTER DATABASE [EtSite] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [EtSite] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [EtSite] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [EtSite] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [EtSite] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [EtSite] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [EtSite] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [EtSite] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [EtSite] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [EtSite] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [EtSite] SET  DISABLE_BROKER
GO
ALTER DATABASE [EtSite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [EtSite] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [EtSite] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [EtSite] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [EtSite] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [EtSite] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [EtSite] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [EtSite] SET  READ_WRITE
GO
ALTER DATABASE [EtSite] SET RECOVERY SIMPLE
GO
ALTER DATABASE [EtSite] SET  MULTI_USER
GO
ALTER DATABASE [EtSite] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [EtSite] SET DB_CHAINING OFF
GO
USE [EtSite]
GO
/****** Object:  Table [dbo].[Referanslar]    Script Date: 06/16/2014 15:13:43 ******/
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
SET IDENTITY_INSERT [dbo].[Referanslar] ON
INSERT [dbo].[Referanslar] ([RefId], [RefAdi], [Resim], [Url], [Aktif]) VALUES (4, N'Bay Elektronik', N'bnr9028.PNG', N'http://www.bayelektronik.com/', 1)
INSERT [dbo].[Referanslar] ([RefId], [RefAdi], [Resim], [Url], [Aktif]) VALUES (5, N'Aygül Gelinlik', N'res3278.PNG', N'http://www.aygulgelinlik.com', 1)
SET IDENTITY_INSERT [dbo].[Referanslar] OFF
/****** Object:  Table [dbo].[Ozellikler]    Script Date: 06/16/2014 15:13:43 ******/
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
INSERT [dbo].[Ozellikler] ([Ozellik], [Temalar], [Paketler]) VALUES (N'<div class="column">
	<div class="price-head">
		<h2 class="title">
			ESSENTIAL</h2>
		<h4 class="price-font">
			$20<span>/ pm</span></h4>
	</div>
	<div class="price-content">
		<ul>
			<li>
				<strong>10GB</strong> Storage Space</li>
			<li>
				<strong>50GB</strong> Bandwidth</li>
			<li>
				<strong>10</strong> Free Sub-Domain</li>
			<li>
				<strong>100</strong> E-mail Accounts</li>
			<li>
				<strong>Control Panel</strong> &amp; FTP</li>
		</ul>
		<p class="center">
			&nbsp;</p>
	</div>
</div>
<!-- .column -->
<div class="column ">
	<div class="price-head">
		<h2 class="title">
			ADVANCED</h2>
		<h4 class="price-font">
			$50<span>/ pm</span></h4>
	</div>
	<div class="price-content">
		<ul>
			<li>
				<strong>200GB</strong> Storage Space</li>
			<li>
				<strong>1TB</strong> Bandwidth</li>
			<li>
				<strong>25</strong> Free Sub-Domain</li>
			<li>
				<strong>200</strong> E-mail Accounts</li>
			<li>
				<strong>Control Panel</strong> &amp; FTP</li>
		</ul>
		<p class="center">
			&nbsp;</p>
	</div>
</div>
<!-- .column -->
<div class="column">
	<div class="price-head">
		<h2 class="title">
			PROFESSIONAL</h2>
		<h4 class="price-font">
			$100<span>/ pm</span></h4>
	</div>
	<div class="price-content">
		<ul>
			<li>
				<strong>500GB</strong> Storage Space</li>
			<li>
				<strong>5TB</strong> Bandwidth</li>
			<li>
				<strong>100</strong> Free Sub-Domain</li>
			<li>
				<strong>500</strong> E-mail Accounts</li>
			<li>
				<strong>Control Panel</strong> &amp; FTP</li>
		</ul>
		<p class="center">
			&nbsp;</p>
	</div>
</div>
<!-- .column -->
<div class="column">
	<div class="price-head">
		<h2 class="title">
			BUSINESS</h2>
		<h4 class="price-font">
			$199<span>/ pm</span></h4>
	</div>
	<div class="price-content">
		<ul>
			<li>
				<strong>100TB</strong> Storage Space</li>
			<li>
				<strong>1000TB</strong> Bandwidth</li>
			<li>
				<strong>1000</strong> Free Sub-Domain</li>
			<li>
				<strong>1000</strong> E-mail Accounts</li>
			<li>
				<strong>Control Panel</strong> &amp; FTP</li>
		</ul>
		<p class="center">
			&nbsp;</p>
	</div>
</div>
<!-- .column -->', N'<p>
	ss</p>
', N'<h1 class="center" style="margin: 0px 0px 25px; outline: none; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, Helvetica, sans-serif; font-size: 30px; font-weight: 300; line-height: 45px; vertical-align: baseline; float: none; text-align: center; color: rgb(59, 59, 59);">
	Scalable. Powerful. Global.</h1>
<div class="pricetable  iva_anim animated bounceIn" data-id="bounceIn" style="margin: 0px auto; outline: none; padding: 0px; border: 0px; font-family: ''Open Sans'', Helvetica-Neue, Helvetica, Arial, sans-serif; font-size: 13px; line-height: 20.799999237060547px; vertical-align: baseline; position: relative; -webkit-animation: bounceIn 1.5s both; color: rgb(59, 59, 59);">
	<div class="pricing-inner" style="margin: 20px 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; position: relative;">
		<div class="column" style="margin: 0px 9.796875px 0px 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; float: left; position: relative; width: 237.15625px; z-index: 3;">
			<div class="price-head" style="margin: 0px; outline: none; padding: 25px 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; position: relative; text-align: center; color: rgb(255, 255, 255); background: none 0px 0px repeat scroll rgb(66, 66, 66);">
				<h2 class="title" style="margin: 0px 0px 10px; outline: none; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, Helvetica, sans-serif; font-size: 14px; font-style: inherit; font-variant: inherit; line-height: 21px; vertical-align: baseline; letter-spacing: 2px; text-transform: uppercase;">
					ESSENTIAL</h2>
				<h4 class="price-font" style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, Helvetica, sans-serif; font-size: 46px; font-style: inherit; font-variant: inherit; font-weight: 300; line-height: 46px; vertical-align: middle;">
					$20<span style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: 11px; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 14px; vertical-align: baseline;">/ pm</span></h4>
			</div>
			<div class="price-content" style="margin: 0px; outline: none; padding: 20px 40px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 24px; vertical-align: baseline; background-color: rgb(246, 246, 246);">
				<ul style="margin: 0px 0px 20px; outline: none; padding-right: 0px; padding-left: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; list-style: square;">
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">10GB</strong>&nbsp;Storage Space</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">50GB</strong>&nbsp;Bandwidth</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">10</strong>&nbsp;Free Sub-Domains</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">100</strong>&nbsp;E-mail Accounts</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">Control Panel</strong>&nbsp;&amp; FTP</li>
				</ul>
				<p class="center" style="margin: 0px 0px 1.625em; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; float: none; text-align: center;">
					<a class="btn center medium full abestos iva_anim " href="file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/index.html#" style="margin: 0px 3px 8px 0px; outline: none medium; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 1em; vertical-align: baseline; text-decoration: none; color: rgb(255, 255, 255); -webkit-transition: all 300ms ease-in 0s; transition: all 300ms ease-in 0s; float: none; cursor: pointer; overflow: visible; position: relative; white-space: nowrap; display: block; background-color: rgb(127, 140, 141);"><span style="margin: 0px; outline: none; padding: 0.5em 1.3em; border: 0px; font-family: inherit; font-size: 14px; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; display: block; position: relative; text-transform: uppercase;">GET STARTED</span></a></p>
			</div>
		</div>
		<div class="column " style="margin: 0px 9.796875px 0px 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; float: left; position: relative; width: 237.15625px; z-index: 3;">
			<div class="price-head" style="margin: 0px; outline: none; padding: 25px 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; position: relative; text-align: center; color: rgb(255, 255, 255); background: none 0px 0px repeat scroll rgb(66, 66, 66);">
				<h2 class="title" style="margin: 0px 0px 10px; outline: none; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, Helvetica, sans-serif; font-size: 14px; font-style: inherit; font-variant: inherit; line-height: 21px; vertical-align: baseline; letter-spacing: 2px; text-transform: uppercase;">
					ADVANCED</h2>
				<h4 class="price-font" style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, Helvetica, sans-serif; font-size: 46px; font-style: inherit; font-variant: inherit; font-weight: 300; line-height: 46px; vertical-align: middle;">
					$50<span style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: 11px; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 14px; vertical-align: baseline;">/ pm</span></h4>
			</div>
			<div class="price-content" style="margin: 0px; outline: none; padding: 20px 40px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 24px; vertical-align: baseline; background-color: rgb(246, 246, 246);">
				<ul style="margin: 0px 0px 20px; outline: none; padding-right: 0px; padding-left: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; list-style: square;">
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">200GB</strong>&nbsp;Storage Space</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">1TB</strong>&nbsp;Bandwidth</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">25</strong>&nbsp;Free Sub-Domains</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">200</strong>&nbsp;E-mail Accounts</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">Control Panel</strong>&nbsp;&amp; FTP</li>
				</ul>
				<p class="center" style="margin: 0px 0px 1.625em; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; float: none; text-align: center;">
					<a class="btn center medium full orange iva_anim" href="file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/index.html#" style="margin: 0px 3px 8px 0px; outline: none medium; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 1em; vertical-align: baseline; text-decoration: none; color: rgb(255, 255, 255); -webkit-transition: all 300ms ease-in 0s; transition: all 300ms ease-in 0s; float: none; cursor: pointer; overflow: visible; position: relative; white-space: nowrap; display: block; background-color: rgb(243, 156, 18);"><span style="margin: 0px; outline: none; padding: 0.5em 1.3em; border: 0px; font-family: inherit; font-size: 14px; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; display: block; position: relative; text-transform: uppercase;">GET STARTED</span></a></p>
			</div>
		</div>
		<div class="column" style="margin: 0px 9.796875px 0px 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; float: left; position: relative; width: 237.15625px; z-index: 3;">
			<div class="price-head" style="margin: 0px; outline: none; padding: 25px 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; position: relative; text-align: center; color: rgb(255, 255, 255); background: none 0px 0px repeat scroll rgb(66, 66, 66);">
				<h2 class="title" style="margin: 0px 0px 10px; outline: none; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, Helvetica, sans-serif; font-size: 14px; font-style: inherit; font-variant: inherit; line-height: 21px; vertical-align: baseline; letter-spacing: 2px; text-transform: uppercase;">
					PROFESSIONAL</h2>
				<h4 class="price-font" style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, Helvetica, sans-serif; font-size: 46px; font-style: inherit; font-variant: inherit; font-weight: 300; line-height: 46px; vertical-align: middle;">
					$100<span style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: 11px; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 14px; vertical-align: baseline;">/ pm</span></h4>
			</div>
			<div class="price-content" style="margin: 0px; outline: none; padding: 20px 40px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 24px; vertical-align: baseline; background-color: rgb(246, 246, 246);">
				<ul style="margin: 0px 0px 20px; outline: none; padding-right: 0px; padding-left: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; list-style: square;">
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">500GB</strong>&nbsp;Storage Space</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">5TB</strong>&nbsp;Bandwidth</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">100</strong>&nbsp;Free Sub-Domains</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">500</strong>&nbsp;E-mail Accounts</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">Control Panel</strong>&nbsp;&amp; FTP</li>
				</ul>
				<p class="center" style="margin: 0px 0px 1.625em; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; float: none; text-align: center;">
					<a class="btn center medium full abestos iva_anim" href="file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/index.html#" style="margin: 0px 3px 8px 0px; outline: none medium; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 1em; vertical-align: baseline; text-decoration: none; color: rgb(255, 255, 255); -webkit-transition: all 300ms ease-in 0s; transition: all 300ms ease-in 0s; float: none; cursor: pointer; overflow: visible; position: relative; white-space: nowrap; display: block; background-color: rgb(127, 140, 141);"><span style="margin: 0px; outline: none; padding: 0.5em 1.3em; border: 0px; font-family: inherit; font-size: 14px; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; display: block; position: relative; text-transform: uppercase;">GET STARTED</span></a></p>
			</div>
		</div>
		<div class="column" style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; float: left; position: relative; width: 237.15625px; z-index: 3;">
			<div class="price-head" style="margin: 0px; outline: none; padding: 25px 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; position: relative; text-align: center; color: rgb(255, 255, 255); background: none 0px 0px repeat scroll rgb(66, 66, 66);">
				<h2 class="title" style="margin: 0px 0px 10px; outline: none; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, Helvetica, sans-serif; font-size: 14px; font-style: inherit; font-variant: inherit; line-height: 21px; vertical-align: baseline; letter-spacing: 2px; text-transform: uppercase;">
					BUSINESS</h2>
				<h4 class="price-font" style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, Helvetica, sans-serif; font-size: 46px; font-style: inherit; font-variant: inherit; font-weight: 300; line-height: 46px; vertical-align: middle;">
					$199<span style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: 11px; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 14px; vertical-align: baseline;">/ pm</span></h4>
			</div>
			<div class="price-content" style="margin: 0px; outline: none; padding: 20px 40px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 24px; vertical-align: baseline; background-color: rgb(246, 246, 246);">
				<ul style="margin: 0px 0px 20px; outline: none; padding-right: 0px; padding-left: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; list-style: square;">
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">100TB</strong>&nbsp;Storage Space</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">1000TB</strong>&nbsp;Bandwidth</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">1000</strong>&nbsp;Free Sub-Domains</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">1000</strong>&nbsp;E-mail Accounts</li>
					<li style="margin: 0px; outline: none; padding: 5px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 19.5px; vertical-align: baseline; list-style: none outside none; background: url(file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/images/opacs/dark10.png) 0% 100% repeat-x scroll rgba(0, 0, 0, 0);">
						<strong style="margin: 0px; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">Control Panel</strong>&nbsp;&amp; FTP</li>
				</ul>
				<p class="center" style="margin: 0px 0px 1.625em; outline: none; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; vertical-align: baseline; float: none; text-align: center;">
					<a class="btn center medium full abestos iva_anim " href="file:///C:/Users/Pc/Desktop/Site/Eticaret4%20Ana%20Site/tema/hostmev2/index.html#" style="margin: 0px 3px 8px 0px; outline: none medium; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 1em; vertical-align: baseline; text-decoration: none; color: rgb(255, 255, 255); -webkit-transition: all 300ms ease-in 0s; transition: all 300ms ease-in 0s; float: none; cursor: pointer; overflow: visible; position: relative; white-space: nowrap; display: block; background-color: rgb(127, 140, 141);"><span style="margin: 0px; outline: none; padding: 0.5em 1.3em; border: 0px; font-family: inherit; font-size: 14px; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; display: block; position: relative; text-transform: uppercase;">GET STARTED</span></a></p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
')
/****** Object:  Table [dbo].[MetaTag]    Script Date: 06/16/2014 15:13:43 ******/
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
INSERT [dbo].[MetaTag] ([Title], [Descript], [Keywords], [Facebook], [Twitter], [Footer], [SiteLogo]) VALUES (N'E-ticaret Yazılımı - Sadece 399 TL !', N'Uygun fiyatlarla gelişmiş özellikleri barındıran bir e-ticaret sitesine sahip olun.', N'eticaret,e-ticaret,eticaret4,e-ticaret scripti,e-ticaret sitesi,e-ticaret paketleri,e-ticaret yazılımı,e-ticaret sitesi scripti,e-ticaret paketi,e-ticaret sitesi al,e-ticaret sitesi satın al,eticaret4', N'#', N'#', N'', N'sitelogo.jpg')
/****** Object:  Table [dbo].[iletisim]    Script Date: 06/16/2014 15:13:43 ******/
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
INSERT [dbo].[iletisim] ([Adres], [Tel1], [Tel2], [Fax], [Mail], [MailSifre], [Smtp], [MailPort], [Harita]) VALUES (N'Diclekent bulv.Yılmaz güney cad.Hevidar 3 sitesi.A blok kat 2/6 Kayapınar/DİYARBAKIR', N'0412 257 65', N'0534 602 34', N'0412 257 65', N'unityazilim@gmail.com', N'un"123456', N'smtp.gmail.com', N'587', N'<iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=tr&amp;geocode=&amp;q=diyarbak%C4%B1r&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=40.59616,86.572266&amp;ie=UTF8&amp;hq=&amp;hnear=Diyarbak%C4%B1r,+T%C3%BCrkiye&amp;t=m&amp;z=12&amp;ll=37.91441,40.230629&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=tr&amp;geocode=&amp;q=diyarbak%C4%B1r&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=40.59616,86.572266&amp;ie=UTF8&amp;hq=&amp;hnear=Diyarbak%C4%B1r,+T%C3%BCrkiye&amp;t=m&amp;z=12&amp;ll=37.91441,40.230629" style="color:#0000FF;text-align:left">Daha Büyük Görüntüle</a></small>')
/****** Object:  Table [dbo].[Haberler]    Script Date: 06/16/2014 15:13:43 ******/
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
SET IDENTITY_INSERT [dbo].[Haberler] ON
INSERT [dbo].[Haberler] ([HaberId], [HaberAdi], [Detay], [SayfaMi], [AktifMi], [Tarih]) VALUES (1, N'Deneme Haber', N'<h1>
	<u><em><strong>Deneme haber eklendi&nbsp;</strong></em></u></h1>
', 0, 1, CAST(0x0000A266012B5E74 AS DateTime))
INSERT [dbo].[Haberler] ([HaberId], [HaberAdi], [Detay], [SayfaMi], [AktifMi], [Tarih]) VALUES (2, N'deneme haber 2', N'<p>
	dişlkasiş kdasid kşsaikdia kdaişsk&uuml;işk sdiaSD</p>
', 0, 1, CAST(0x0000A266012B865B AS DateTime))
INSERT [dbo].[Haberler] ([HaberId], [HaberAdi], [Detay], [SayfaMi], [AktifMi], [Tarih]) VALUES (3, N'Deneme Sekme', N'<p>
	Deneme Sekme İ&ccedil;erik</p>
', 0, 1, CAST(0x0000A266012C4F1C AS DateTime))
INSERT [dbo].[Haberler] ([HaberId], [HaberAdi], [Detay], [SayfaMi], [AktifMi], [Tarih]) VALUES (4, N'Uzun haber lorem ipsum', N'<p style="text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;">
	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tempor metus at neque pharetra ullamcorper. Suspendisse in est mollis, suscipit neque ut, eleifend turpis. Donec sapien magna, hendrerit et malesuada vitae, commodo sit amet libero. Duis cursus viverra tempor. Aenean nec gravida metus. Quisque neque augue, molestie at rutrum id, ullamcorper a nibh. Vestibulum id dignissim elit. Sed vitae quam a est convallis viverra nec at purus. Pellentesque blandit eros eros, eget ultrices diam malesuada at. In molestie tincidunt faucibus. Nam accumsan ipsum a consequat dignissim. Etiam varius lacinia arcu nec placerat.</p>
<p style="text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;">
	Integer vitae mattis orci, non aliquet diam. Fusce sagittis fermentum mauris nec tincidunt. Cras tincidunt dui ornare, tristique ante non, venenatis magna. Pellentesque vulputate blandit neque, in scelerisque libero vehicula a. Aenean faucibus lobortis felis eu suscipit. Vivamus luctus sem eget urna convallis scelerisque. In hac habitasse platea dictumst. Pellentesque dictum enim enim, sit amet vulputate diam rutrum sollicitudin. Vestibulum vestibulum purus nisi, ut egestas justo porta ullamcorper. In facilisis nisi sit amet egestas fermentum.</p>
<p style="text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;">
	Aenean pharetra fermentum diam, a sagittis mauris consequat ac. Vestibulum quis pulvinar odio. Vestibulum euismod sodales elit nec commodo. Cras sed leo nunc. Fusce vel tincidunt arcu. Maecenas non velit vitae ante consequat cursus. Aenean magna sem, pulvinar eu purus vel, elementum iaculis arcu. Suspendisse non semper tortor. Mauris venenatis neque ut massa rutrum volutpat. Nunc libero lectus, dignissim et elit quis, rhoncus ultricies nunc. Donec tincidunt feugiat nibh, viverra gravida turpis adipiscing quis.</p>
<p style="text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;">
	Sed orci lectus, sagittis nec sem id, mattis cursus neque. Nullam viverra diam sit amet blandit rhoncus. Nulla dictum lobortis ligula, eu elementum arcu egestas eu. In hac habitasse platea dictumst. Etiam dapibus enim non justo sodales, at rhoncus nulla lobortis. Sed a aliquet dui. Nulla placerat bibendum velit, sed laoreet ligula. Nunc at ornare massa, vitae ultrices justo. Suspendisse rhoncus quis turpis quis condimentum. Nam malesuada mi ut dictum rhoncus. Integer ornare ultrices odio eget vulputate. Integer sit amet imperdiet velit, at sagittis erat. Mauris ante leo, vulputate at nunc nec, venenatis suscipit sapien. Nunc condimentum vulputate turpis id malesuada. Vivamus et ornare dui.</p>
<p style="text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;">
	In pulvinar ullamcorper ipsum a egestas. Phasellus accumsan faucibus est, ornare volutpat metus vestibulum ut. Aliquam vel leo a metus molestie auctor quis at purus. Nulla facilisi. Mauris mattis vehicula luctus. Nulla id ligula id turpis ultrices luctus. Mauris lacus metus, consequat eu ullamcorper vulputate, facilisis vel sem. Maecenas sit amet lectus commodo, faucibus erat sit amet, adipiscing dui. Vivamus lectus odio, iaculis eu purus nec, vehicula pharetra risus. Donec ligula erat, luctus nec ligula vitae, accumsan fermentum diam. Sed risus lacus, pellentesque id massa a, semper malesuada sem. Sed vel ante ante. Cras sed tellus laoreet, euismod quam posuere, consequat ipsum. Nullam vel mi quam. In vel tempus justo, nec pellentesque massa. Vestibulum felis augue, semper eget pharetra id, tempus vitae augue.</p>
', 0, 1, CAST(0x0000A266012D353A AS DateTime))
INSERT [dbo].[Haberler] ([HaberId], [HaberAdi], [Detay], [SayfaMi], [AktifMi], [Tarih]) VALUES (5, N'sssssssssss', N'<p style="text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;">
	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tempor metus at neque pharetra ullamcorper. Suspendisse in est mollis, suscipit neque ut, eleifend turpis. Donec sapien magna, hendrerit et malesuada vitae, commodo sit amet libero. Duis cursus viverra tempor. Aenean nec gravida metus. Quisque neque augue, molestie at rutrum id, ullamcorper a nibh. Vestibulum id dignissim elit. Sed vitae quam a est convallis viverra nec at purus. Pellentesque blandit eros eros, eget ultrices diam malesuada at. In molestie tincidunt faucibus. Nam accumsan ipsum a consequat dignissim. Etiam varius lacinia arcu nec placerat.</p>
<p style="text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;">
	Integer vitae mattis orci, non aliquet diam. Fusce sagittis fermentum mauris nec tincidunt. Cras tincidunt dui ornare, tristique ante non, venenatis magna. Pellentesque vulputate blandit neque, in scelerisque libero vehicula a. Aenean faucibus lobortis felis eu suscipit. Vivamus luctus sem eget urna convallis scelerisque. In hac habitasse platea dictumst. Pellentesque dictum enim enim, sit amet vulputate diam rutrum sollicitudin. Vestibulum vestibulum purus nisi, ut egestas justo porta ullamcorper. In facilisis nisi sit amet egestas fermentum.</p>
<p style="text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;">
	Aenean pharetra fermentum diam, a sagittis mauris consequat ac. Vestibulum quis pulvinar odio. Vestibulum euismod sodales elit nec commodo. Cras sed leo nunc. Fusce vel tincidunt arcu. Maecenas non velit vitae ante consequat cursus. Aenean magna sem, pulvinar eu purus vel, elementum iaculis arcu. Suspendisse non semper tortor. Mauris venenatis neque ut massa rutrum volutpat. Nunc libero lectus, dignissim et elit quis, rhoncus ultricies nunc. Donec tincidunt feugiat nibh, viverra gravida turpis adipiscing quis.</p>
<p style="text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;">
	Sed orci lectus, sagittis nec sem id, mattis cursus neque. Nullam viverra diam sit amet blandit rhoncus. Nulla dictum lobortis ligula, eu elementum arcu egestas eu. In hac habitasse platea dictumst. Etiam dapibus enim non justo sodales, at rhoncus nulla lobortis. Sed a aliquet dui. Nulla placerat bibendum velit, sed laoreet ligula. Nunc at ornare massa, vitae ultrices justo. Suspendisse rhoncus quis turpis quis condimentum. Nam malesuada mi ut dictum rhoncus. Integer ornare ultrices odio eget vulputate. Integer sit amet imperdiet velit, at sagittis erat. Mauris ante leo, vulputate at nunc nec, venenatis suscipit sapien. Nunc condimentum vulputate turpis id malesuada. Vivamus et ornare dui.</p>
<p style="text-align: justify; font-size: 11px; line-height: 14px; margin: 0px 0px 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;">
	In pulvinar ullamcorper ipsum a egestas. Phasellus accumsan faucibus est, ornare volutpat metus vestibulum ut. Aliquam vel leo a metus molestie auctor quis at purus. Nulla facilisi. Mauris mattis vehicula luctus. Nulla id ligula id turpis ultrices luctus. Mauris lacus metus, consequat eu ullamcorper vulputate, facilisis vel sem. Maecenas sit amet lectus commodo, faucibus erat sit amet, adipiscing dui. Vivamus lectus odio, iaculis eu purus nec, vehicula pharetra risus. Donec ligula erat, luctus nec ligula vitae, accumsan fermentum diam. Sed risus lacus, pellentesque id massa a, semper malesuada sem. Sed vel ante ante. Cras sed tellus laoreet, euismod quam posuere, consequat ipsum. Nullam vel mi quam. In vel tempus justo, nec pellentesque massa. Vestibulum felis augue, semper eget pharetra id, tempus vitae augue.</p>
', 0, 1, CAST(0x0000A266012D53C7 AS DateTime))
INSERT [dbo].[Haberler] ([HaberId], [HaberAdi], [Detay], [SayfaMi], [AktifMi], [Tarih]) VALUES (6, N'Hoşgeldiniz Kampanyası', N'<p>
	16.06.2014 tarihinde hizmete giren sistemimizde hoşgeldiniz kampanyası başlamıştır. 16.07.2014 Tarihine kadar 100.000 sms alan herkese 10.000 sms ve 1Adet &nbsp;Samsung Tablet Hediye !<br />
	Demo başvuru i&ccedil;in www.UnitYazilim.Com &nbsp;</p>
', 1, 1, CAST(0x0000A34C00F7CA12 AS DateTime))
SET IDENTITY_INSERT [dbo].[Haberler] OFF
/****** Object:  Table [dbo].[Bayilik]    Script Date: 06/16/2014 15:13:43 ******/
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
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Bayilik] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bayilik] ON
INSERT [dbo].[Bayilik] ([Id], [Ad], [email], [ceptelefonu], [istelefonu], [web], [Aktif]) VALUES (1, N'Yusuf Güler', N'yusuf@hotmail.com', N'1111111111', N'1111111111', N'www.sasas.com', 1)
SET IDENTITY_INSERT [dbo].[Bayilik] OFF
/****** Object:  Table [dbo].[BannerYonetimi]    Script Date: 06/16/2014 15:13:43 ******/
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
SET IDENTITY_INSERT [dbo].[BannerYonetimi] ON
INSERT [dbo].[BannerYonetimi] ([BannerId], [Baslik], [UrlAdres], [YeniSayfada], [Aktif], [Resim]) VALUES (5, N'Başlık Gelecek', N'https://www.google.com.tr/', N'_blank', 1, N'resi4214.jpg')
INSERT [dbo].[BannerYonetimi] ([BannerId], [Baslik], [UrlAdres], [YeniSayfada], [Aktif], [Resim]) VALUES (6, N'Başlık Gelecek', N'https://www.google.com.tr/', N'_self', 1, N'resi3369.jpg')
INSERT [dbo].[BannerYonetimi] ([BannerId], [Baslik], [UrlAdres], [YeniSayfada], [Aktif], [Resim]) VALUES (7, N'İndirim', N'http://eticaret4.com/', N'_blank', 1, N'resim5291.jpg')
INSERT [dbo].[BannerYonetimi] ([BannerId], [Baslik], [UrlAdres], [YeniSayfada], [Aktif], [Resim]) VALUES (8, N'İndirim', N'http://eticaret4.com/', N'_blank', 1, N'res2372.png')
INSERT [dbo].[BannerYonetimi] ([BannerId], [Baslik], [UrlAdres], [YeniSayfada], [Aktif], [Resim]) VALUES (9, N'İndirim', N'http://eticaret4.com/', N'_blank', 1, N're43.png')
INSERT [dbo].[BannerYonetimi] ([BannerId], [Baslik], [UrlAdres], [YeniSayfada], [Aktif], [Resim]) VALUES (10, N'İndirim', N'http://eticaret4.com/', N'_blank', 1, N'bannerres6876.jpg')
INSERT [dbo].[BannerYonetimi] ([BannerId], [Baslik], [UrlAdres], [YeniSayfada], [Aktif], [Resim]) VALUES (11, N'İndirim', N'http://eticaret4.com/', N'_blank', 1, N'res2409.jpg')
INSERT [dbo].[BannerYonetimi] ([BannerId], [Baslik], [UrlAdres], [YeniSayfada], [Aktif], [Resim]) VALUES (12, N'İndirim', N'http://www.eticaret4.com', N'_blank', 1, N'bannerres8318.png')
SET IDENTITY_INSERT [dbo].[BannerYonetimi] OFF
/****** Object:  Table [dbo].[Uyeler]    Script Date: 06/16/2014 15:13:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uyeler](
	[UyeId] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
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
SET IDENTITY_INSERT [dbo].[Uyeler] ON
INSERT [dbo].[Uyeler] ([UyeId], [Ad], [Email], [Sifre], [Cepno], [Isno], [AktifMi], [KayitTarihi]) VALUES (1, N'dasda', N'sadasdas@hotmail.com', N'274da997412973c08cf7e78724153f55', N'2222222222 ', N'3333333333 ', 1, CAST(0x0000A34A009F6841 AS DateTime))
INSERT [dbo].[Uyeler] ([UyeId], [Ad], [Email], [Sifre], [Cepno], [Isno], [AktifMi], [KayitTarihi]) VALUES (2, N'', N'demo', N'd41d8cd98f00b204e9800998ecf8427e', N'           ', N'           ', 1, CAST(0x0000A34A00A83331 AS DateTime))
INSERT [dbo].[Uyeler] ([UyeId], [Ad], [Email], [Sifre], [Cepno], [Isno], [AktifMi], [KayitTarihi]) VALUES (3, N'', N'', N'd41d8cd98f00b204e9800998ecf8427e', N'           ', N'           ', 1, CAST(0x0000A34A00ACF5B7 AS DateTime))
INSERT [dbo].[Uyeler] ([UyeId], [Ad], [Email], [Sifre], [Cepno], [Isno], [AktifMi], [KayitTarihi]) VALUES (4, N'', N'', N'd41d8cd98f00b204e9800998ecf8427e', N'           ', N'           ', 1, CAST(0x0000A34C00C8C795 AS DateTime))
INSERT [dbo].[Uyeler] ([UyeId], [Ad], [Email], [Sifre], [Cepno], [Isno], [AktifMi], [KayitTarihi]) VALUES (5, N'', N'', N'd41d8cd98f00b204e9800998ecf8427e', N'           ', N'           ', 1, CAST(0x0000A34C00C9326A AS DateTime))
INSERT [dbo].[Uyeler] ([UyeId], [Ad], [Email], [Sifre], [Cepno], [Isno], [AktifMi], [KayitTarihi]) VALUES (6, N'', N'', N'd41d8cd98f00b204e9800998ecf8427e', N'           ', N'           ', 1, CAST(0x0000A34C00C960A8 AS DateTime))
SET IDENTITY_INSERT [dbo].[Uyeler] OFF
/****** Object:  Table [dbo].[Ulasim]    Script Date: 06/16/2014 15:13:43 ******/
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
SET IDENTITY_INSERT [dbo].[Ulasim] ON
INSERT [dbo].[Ulasim] ([Id], [Ad], [Tel]) VALUES (1, N'', N'')
INSERT [dbo].[Ulasim] ([Id], [Ad], [Tel]) VALUES (2, N'dasdas', N'2111111111')
INSERT [dbo].[Ulasim] ([Id], [Ad], [Tel]) VALUES (3, N'', N'')
SET IDENTITY_INSERT [dbo].[Ulasim] OFF
/****** Object:  Table [dbo].[Temalar]    Script Date: 06/16/2014 15:13:43 ******/
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
SET IDENTITY_INSERT [dbo].[Temalar] ON
INSERT [dbo].[Temalar] ([TemaId], [TemaAdi], [Resim], [Url], [Aktif]) VALUES (1, N'd', N'bnr9963.jpg', N'ssa       ', 1)
INSERT [dbo].[Temalar] ([TemaId], [TemaAdi], [Resim], [Url], [Aktif]) VALUES (2, N'Tema 2', N're1520.PNG', N'https://www.google.com.tr/', 1)
INSERT [dbo].[Temalar] ([TemaId], [TemaAdi], [Resim], [Url], [Aktif]) VALUES (3, N'Tema 3', N'bnr9854.PNG', N'https://www.google.com.tr/', 1)
INSERT [dbo].[Temalar] ([TemaId], [TemaAdi], [Resim], [Url], [Aktif]) VALUES (4, N'Tema4', N'res2344.PNG', N'https://www.google.com.tr/', 1)
INSERT [dbo].[Temalar] ([TemaId], [TemaAdi], [Resim], [Url], [Aktif]) VALUES (5, N'Tema 5', N'resi4974.PNG', N'https://www.google.com.tr/', 1)
SET IDENTITY_INSERT [dbo].[Temalar] OFF
/****** Object:  Table [dbo].[Tadmin]    Script Date: 06/16/2014 15:13:43 ******/
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
SET IDENTITY_INSERT [dbo].[Tadmin] ON
INSERT [dbo].[Tadmin] ([AdminId], [KullaniciAdi], [Mail], [Sifre]) VALUES (1, N'demo', N'demo@demo.net', N'fe01ce2a7fbac8fafaed7c982a04e229')
SET IDENTITY_INSERT [dbo].[Tadmin] OFF
/****** Object:  StoredProcedure [dbo].[sp_UyeEkle]    Script Date: 06/16/2014 15:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UyeEkle]
	
    @Ad nvarchar(100),
	@Email nvarchar(50),
	@Sifre nvarchar(50),
	@Cepno nvarchar(11),
	@Isno nvarchar(11)
AS
BEGIN
	insert into dbo.Uyeler (Ad,Email,Sifre,Cepno,Isno) 
	Values
	 (@Ad,@Email,@Sifre,@Cepno,@Isno)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Ulasim]    Script Date: 06/16/2014 15:13:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TemaEkle]    Script Date: 06/16/2014 15:13:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TemaDuzenle]    Script Date: 06/16/2014 15:13:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_RefEkle]    Script Date: 06/16/2014 15:13:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_RefDuzenle]    Script Date: 06/16/2014 15:13:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_PaketDuzenle]    Script Date: 06/16/2014 15:13:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_OzellikDuzenle]    Script Date: 06/16/2014 15:13:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_MetaTag]    Script Date: 06/16/2014 15:13:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_iletisim]    Script Date: 06/16/2014 15:13:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_HaberEkle]    Script Date: 06/16/2014 15:13:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_HaberDuzenle]    Script Date: 06/16/2014 15:13:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BayiEkle]    Script Date: 06/16/2014 15:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_BayiEkle]
    @Ad nvarchar(100),
	@Email nvarchar(50),	
	@ceptelefonu nvarchar(11),
	@istelefonu nvarchar(11),
	@web nvarchar(100)
AS
BEGIN
	insert into dbo.Bayilik (Ad,email,ceptelefonu,istelefonu,web) 
	Values (@Ad,@Email,@ceptelefonu,@istelefonu,@web)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BannerEkle]    Script Date: 06/16/2014 15:13:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BannerDuzenle]    Script Date: 06/16/2014 15:13:44 ******/
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
/****** Object:  Default [DF_Referanslar_Aktif]    Script Date: 06/16/2014 15:13:43 ******/
ALTER TABLE [dbo].[Referanslar] ADD  CONSTRAINT [DF_Referanslar_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
/****** Object:  Default [DF_Sayfalar_AktifMi]    Script Date: 06/16/2014 15:13:43 ******/
ALTER TABLE [dbo].[Haberler] ADD  CONSTRAINT [DF_Sayfalar_AktifMi]  DEFAULT ((1)) FOR [AktifMi]
GO
/****** Object:  Default [DF_Sayfalar_Tarih]    Script Date: 06/16/2014 15:13:43 ******/
ALTER TABLE [dbo].[Haberler] ADD  CONSTRAINT [DF_Sayfalar_Tarih]  DEFAULT (getdate()) FOR [Tarih]
GO
/****** Object:  Default [DF_Bayilik_Aktif]    Script Date: 06/16/2014 15:13:43 ******/
ALTER TABLE [dbo].[Bayilik] ADD  CONSTRAINT [DF_Bayilik_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
/****** Object:  Default [DF_Uyeler_AktifMi]    Script Date: 06/16/2014 15:13:43 ******/
ALTER TABLE [dbo].[Uyeler] ADD  CONSTRAINT [DF_Uyeler_AktifMi]  DEFAULT ((1)) FOR [AktifMi]
GO
/****** Object:  Default [DF_Uyeler_KayitTarihi]    Script Date: 06/16/2014 15:13:43 ******/
ALTER TABLE [dbo].[Uyeler] ADD  CONSTRAINT [DF_Uyeler_KayitTarihi]  DEFAULT (getdate()) FOR [KayitTarihi]
GO
/****** Object:  Default [DF_Temalar_Aktif]    Script Date: 06/16/2014 15:13:43 ******/
ALTER TABLE [dbo].[Temalar] ADD  CONSTRAINT [DF_Temalar_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
