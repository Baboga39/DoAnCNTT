USE [DemoWeb]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 11/13/2022 7:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuID] [int] NOT NULL,
	[AuName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[AuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 11/13/2022 7:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[BlogID] [int] NOT NULL,
	[BId] [int] NULL,
	[BlogImage] [nvarchar](max) NULL,
	[BlogCon1] [nvarchar](max) NULL,
	[BlogCon2] [nvarchar](max) NULL,
	[BlogCon3] [nvarchar](max) NULL,
	[DayCreate] [varchar](255) NULL,
	[Quotes] [nvarchar](255) NULL,
	[Title] [nvarchar](max) NULL,
	[Name] [nvarchar](255) NULL,
	[Author] [nvarchar](255) NULL,
	[ImageDetail] [nvarchar](max) NULL,
	[AuthorQuotes] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 11/13/2022 7:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BId] [int] IDENTITY(1,1) NOT NULL,
	[BName] [nvarchar](255) NOT NULL,
	[BPrice] [int] NULL,
	[BPriceSale] [int] NULL,
	[AuID] [int] NULL,
	[BCate] [int] NULL,
	[BImage] [varchar](255) NULL,
	[BestSeller] [varchar](255) NULL,
	[NewViral] [varchar](255) NULL,
	[HotSale] [varchar](255) NULL,
	[Popular] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[BId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 11/13/2022 7:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[CItemId] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NULL,
	[BPrice] [int] NULL,
	[Cid] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartList]    Script Date: 11/13/2022 7:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartList](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[UID] [int] NULL,
	[CreateDay] [nvarchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/13/2022 7:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CId] [int] NOT NULL,
	[CName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[CId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 11/13/2022 7:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Content] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[FId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/13/2022 7:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Tên] [nvarchar](50) NULL,
	[Contry] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Zip] [nvarchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [nvarchar](max) NULL,
	[Total] [int] NULL,
	[Note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[OID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 11/13/2022 7:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[Book_ID] [int] NULL,
	[Quantity] [int] NULL,
	[OrderID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 11/13/2022 7:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[Review_ID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NULL,
	[Content] [nvarchar](50) NULL,
	[UserID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Review_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/13/2022 7:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[UName] [nvarchar](255) NULL,
	[UPhone] [nvarchar](255) NULL,
	[UImage] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[UPass] [nvarchar](255) NULL,
	[UTK] [nvarchar](255) NULL,
	[isShell] [nvarchar](255) NULL,
	[isUser] [nvarchar](255) NULL,
	[isAdmin] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([BId])
REFERENCES [dbo].[Book] ([BId])
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([AuID])
REFERENCES [dbo].[Author] ([AuID])
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([BCate])
REFERENCES [dbo].[Category] ([CId])
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BId])
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD FOREIGN KEY([Cid])
REFERENCES [dbo].[CartList] ([Cid])
GO
ALTER TABLE [dbo].[CartList]  WITH CHECK ADD FOREIGN KEY([UID])
REFERENCES [dbo].[User] ([UID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UID])
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD FOREIGN KEY([Book_ID])
REFERENCES [dbo].[Book] ([BId])
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OID])
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BId])
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UID])
GO
