USE [DemoWeb]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 11/8/2022 9:33:55 PM ******/
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
/****** Object:  Table [dbo].[Blog]    Script Date: 11/8/2022 9:33:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[BlogID] [int] NOT NULL,
	[BId] [int] NULL,
	[BlogImage] [varchar](255) NULL,
	[BlogCon1] [varchar](255) NULL,
	[BlogCon2] [varchar](255) NULL,
	[BlogCon3] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 11/8/2022 9:33:55 PM ******/
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
/****** Object:  Table [dbo].[CartItem]    Script Date: 11/8/2022 9:33:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[CId] [int] IDENTITY(1,1) NOT NULL,
	[BId] [int] NULL,
	[Quantity] [nchar](10) NULL,
	[Price] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[CId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartList]    Script Date: 11/8/2022 9:33:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartList](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[UID] [int] NULL,
	[itemID] [int] NULL,
	[Status] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/8/2022 9:33:55 PM ******/
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
/****** Object:  Table [dbo].[Feedback]    Script Date: 11/8/2022 9:33:55 PM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 11/8/2022 9:33:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Họ] [nvarchar](50) NULL,
	[Tên] [nvarchar](50) NULL,
	[Contry] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Zip] [nvarchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 11/8/2022 9:33:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[OrderItem_ID] [int] IDENTITY(1,1) NOT NULL,
	[Book_ID] [int] NULL,
	[Quantity] [nchar](10) NULL,
	[OrderID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderItem_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 11/8/2022 9:33:55 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 11/8/2022 9:33:55 PM ******/
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
/****** Object:  Table [dbo].[Voucher]    Script Date: 11/8/2022 9:33:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[VId] [int] NOT NULL,
	[Discount] [float] NULL,
	[CreateDay] [varchar](255) NULL,
	[EndDay] [varchar](255) NULL,
	[UId] [int] NULL,
	[VName] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[VId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (0, N'Văn Phòng Phẩm')
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (1, N' Napoleon Hill')
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (2, N'NXB Kim Đồng')
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (3, N'Thạch Lam')
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (4, N'Omega+')
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (5, N'Corey R Tabor')
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (6, N'Dale Carnegie')
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (7, N'Ivan Turgenev')
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (8, N' Giáo sư Cao Chi')
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (9, N'Mattew Ball')
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (10, N'Trần Thị Thu Thủy')
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (11, N'Trần Thị Kim Cương')
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (12, N'Patora Fuyuhara')
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (13, N'David Nguyễn')
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (63, N'Oxf IDIOMS Dict Learners of Eng 2e', 115000, 0, 2, 2, N'https://www.vinabook.com/images/thumbnails/product/240x/188787_p64922m51cwfregocl.jpg', N'1', N'1', N'0', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (64, N'Oxf Learner''s Thesaurus Pk', 282000, 0, 2, 2, N'https://www.vinabook.com/images/thumbnails/product/240x/188762_p64912m51klegy11dl.jpg', N'1', N'0', N'1', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (65, N'Việt Nam Danh Tác - Ngày Mới', 89000, 76000, 3, 3, N'https://www.vinabook.com/images/thumbnails/product/240x/374883_p96982m8935235235694.jpg', N'0', N'1', N'0', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (66, N'Hà Nội Băm Sáu Phố Phường (Tái Bản 2022)', 50000, 43000, 3, 3, N'https://www.vinabook.com/images/thumbnails/product/240x/332260_p86881mscan0001.jpg', N'0', N'0', N'1', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (67, N'Leonardo Da Vinci Walter Isaacson (Tái Bản)', 889000, 756000, 4, 4, N'https://www.vinabook.com/images/thumbnails/product/240x/374893_p96985m8935270703820.jpg', N'0', N'1', N'0', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (68, N'Gió Lạnh Đầu Mùa', 59000, 45000, 4, 4, N'https://www.vinabook.com/images/thumbnails/product/240x/311665_p83918mbatrc.jpg', N'0', N'0', N'1', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (69, N'Cáo Chống Lại Mùa Đông', 38000, 32000, 5, 5, N'https://www.vinabook.com/images/thumbnails/product/240x/374878_p96980mcomungbiatruoc.jpg', N'1', N'1', N'0', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (70, N'Cáo Thi Nhảy', 38000, 32000, 5, 5, N'https://www.vinabook.com/images/thumbnails/product/240x/374876_p96979mcothinhaybiatruoc.jpg', N'1', N'0', N'1', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (71, N'Đắc nhân tâm', 86000, 73000, 6, 6, N'https://www.vinabook.com/images/thumbnails/product/240x/368374_p94739md.jpg', N'1', N'1', N'0', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (72, N'Quẳng Gánh Lo Đi Và Vui Sống (Tái Bản 2022)', 86000, 73000, 6, 6, N'https://www.vinabook.com/images/thumbnails/product/240x/371289_p96018mz260265024850093e18e312805d6583448b61f4007a67e1.jpg', N'1', N'0', N'1', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (73, N'Metaverse - Vũ Trụ Ảo Và Cuộc Cách Mạng Hóa Vạn Vật', 299000, 254000, 7, 7, N'https://www.vinabook.com/images/thumbnails/product/240x/374858_p96973m8935251419412.jpg', N'0', N'1', N'0', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (74, N'Vũ Trụ Đột Sinh - Bức Tranh Toàn Cảnh Về Vật Lý Hiện Đại', 350000, 298000, 8, 7, N'https://www.vinabook.com/images/thumbnails/product/240x/359231_p91407mbutkynguoidisan.jpg', N'0', N'0', N'1', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (75, N'Bài Tập Cơ Bản Và Nâng Cao - Toán 5 Tiểu Học (Tập 2)', 15000, 12000, 10, 8, N'https://www.vinabook.com/images/thumbnails/product/240x/15355_p21751.jpg', N'0', N'1', N'0', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (76, N'Tuyển Chọn Đề Ôn Luyện Và Tự Kiểm Tra Toán 4 - Tập 1', 38000, 32000, 11, 8, N'https://www.vinabook.com/images/thumbnails/product/240x/373608_p96649mscreenshot20220921125159.jpg', N'0', N'0', N'1', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (77, N'Lịch Bàn Chữ A 2018 - Life Is Beautiful', 10000, 92000, 0, 9, N'https://www.vinabook.com/images/thumbnails/product/240x/271644_p77118mlife.jpg', N'1', N'1', N'0', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (78, N'Lịch Để Bàn 2017 - Ôi Quê Hương Vĩnh Cửu', 50000, 43000, 0, 9, N'https://www.vinabook.com/images/thumbnails/product/240x/231284_p71374mbiatruoc.jpg', N'1', N'0', N'1', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (79, N'Đến Thế Giới Mới Với Smartphone - Tập 4', 98000, 78000, 12, 10, N'https://www.vinabook.com/images/thumbnails/product/240x/351275_p90329mdenthegioimoivoismartphone4coverfilein1.jpg', N'1', N'1', N'0', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (80, N'Blockchain Và Đầu Tư ICOs Căn Bản - Con Đường Tới Tự Do Tài Chính', 250000, 225000, 13, 10, N'https://www.vinabook.com/images/thumbnails/product/240x/298955_p81232mscan0001.jpg', N'1', N'0', N'1', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (83, N'18 Quy Luật Phát Triển Thương Hiệu', 138000, 117000, NULL, 1, N'https://www.vinabook.com/images/thumbnails/product/240x/374742_p96936m8935086844458.jpg', N'0', N'0', N'0', N'0')
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
INSERT [dbo].[Category] ([CId], [CName]) VALUES (1, N'SÁCH KINH TẾ')
INSERT [dbo].[Category] ([CId], [CName]) VALUES (2, N'SÁCH NGOẠI VĂN')
INSERT [dbo].[Category] ([CId], [CName]) VALUES (3, N'SÁCH VĂN HỌC TRONG NƯỚC ')
INSERT [dbo].[Category] ([CId], [CName]) VALUES (4, N'SÁCH VĂN HỌC NƯỚC NGOÀI ')
INSERT [dbo].[Category] ([CId], [CName]) VALUES (5, N'SÁCH THIẾU NHI')
INSERT [dbo].[Category] ([CId], [CName]) VALUES (6, N'SÁCH PHÁT TRIỂN BẢN THÂN ')
INSERT [dbo].[Category] ([CId], [CName]) VALUES (7, N'SÁCH CHUYÊN NGÀNH ')
INSERT [dbo].[Category] ([CId], [CName]) VALUES (8, N'SÁCH GIÁO KHOA - GIÁO  TRÌNH')
INSERT [dbo].[Category] ([CId], [CName]) VALUES (9, N'TẠP CHÍ - VĂN PHÒNG PHẨM')
INSERT [dbo].[Category] ([CId], [CName]) VALUES (10, N'Sách BLOCKCHAIN ')
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([FId], [Email], [Name], [Content]) VALUES (1, N'Hai@gmail.com', N'Hoàng Ðông', N'Dịch vụ rất ổn')
INSERT [dbo].[Feedback] ([FId], [Email], [Name], [Content]) VALUES (2, N'Trong@gmail.com', N'Hữu Trọng', N'Dịch vụ rất ổn')
INSERT [dbo].[Feedback] ([FId], [Email], [Name], [Content]) VALUES (3, N'Hieu@gmail.com', N'Hồng Hiệu', N'Dịch vụ rất ổn')
INSERT [dbo].[Feedback] ([FId], [Email], [Name], [Content]) VALUES (4, N'Khoa@gmail.com', N'Ðang Khoa', N'Dịch vụ rất ổn')
INSERT [dbo].[Feedback] ([FId], [Email], [Name], [Content]) VALUES (5, N'Luong@gmail.com', N'Văn Lương', N'Dịch vụ rất ổn')
INSERT [dbo].[Feedback] ([FId], [Email], [Name], [Content]) VALUES (7, N'ngochai06122002@gmail.com', N'hai', N'Dịch vụ tốt')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UID], [UName], [UPhone], [UImage], [Email], [UPass], [UTK], [isShell], [isUser], [isAdmin]) VALUES (4, N'Hải', N'010101', NULL, N'ngochai@gmail.com', N'123456', N'AdminHai', N'0', N'0', N'1')
INSERT [dbo].[User] ([UID], [UName], [UPhone], [UImage], [Email], [UPass], [UTK], [isShell], [isUser], [isAdmin]) VALUES (5, N'Hiệu', N'010101', NULL, N'Hieu@gmail.com', N'123456', N'UserHieu', N'0', N'1', N'0')
INSERT [dbo].[User] ([UID], [UName], [UPhone], [UImage], [Email], [UPass], [UTK], [isShell], [isUser], [isAdmin]) VALUES (6, N'Phuc', N'111111111', NULL, N'phuc@gmail', N'11111', N'AdminPhuc', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[Voucher] ([VId], [Discount], [CreateDay], [EndDay], [UId], [VName]) VALUES (1, 0.05, N'22/10/2020', N'23/10/2020', 4, N'8Thang3')
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
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD FOREIGN KEY([BId])
REFERENCES [dbo].[Book] ([BId])
GO
ALTER TABLE [dbo].[CartList]  WITH CHECK ADD FOREIGN KEY([itemID])
REFERENCES [dbo].[CartItem] ([CId])
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
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD FOREIGN KEY([UId])
REFERENCES [dbo].[User] ([UID])
GO
