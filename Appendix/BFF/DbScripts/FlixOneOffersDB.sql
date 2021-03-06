USE [master]
GO
/****** Object:  Database [FlixOneOffersDB]    Script Date: 3/1/2020 9:45:01 PM ******/
CREATE DATABASE [FlixOneOffersDB]
GO

USE [FlixOneOffersDB]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 3/1/2020 9:45:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Code] [varchar](15) NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](400) NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Offers] ([Id], [ProductId], [Code], [Discount], [Name], [Description], [StartDate], [EndDate]) VALUES (N'f3ec92e9-08b7-452f-9f55-10e1b2709974', N'47bc5369-960d-446d-3b0b-08d7bb0b44b2', N'Disc-50', CAST(50.00 AS Decimal(18, 2)), N'Fifty Fifty', N'Grab 50% Discount', CAST(N'2020-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-31T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Offers] ([Id], [ProductId], [Code], [Discount], [Name], [Description], [StartDate], [EndDate]) VALUES (N'6cab2fbe-0e58-42f8-91d9-7205ef968b2c', N'4d261e4a-a657-4add-a0f6-dde6e1464d55', N'Gen-10', CAST(10.00 AS Decimal(18, 2)), N'Deal of the day', N'Deal of the day', CAST(N'2020-01-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Offers] ([Id], [ProductId], [Code], [Discount], [Name], [Description], [StartDate], [EndDate]) VALUES (N'1dc392ac-6124-4d67-b000-99470a9cfc78', N'02341321-c20b-48b1-a2be-47e67f548f0f', N'Spl-30', CAST(30.00 AS Decimal(18, 2)), N'Special Offer', N'Grab special offer 30% discount', CAST(N'2019-12-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-28T00:00:00.0000000' AS DateTime2))
GO
USE [master]
GO
ALTER DATABASE [FlixOneOffersDB] SET  READ_WRITE 
GO
