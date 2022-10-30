USE [DemoWeb]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/30/2022 1:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Aname] [nvarchar](max) NOT NULL,
	[UserName] [varchar](255) NOT NULL,
	[UserPass] [nvarchar](255) NOT NULL,
	[Email] [varchar](255) NULL,
	[Phone_number] [nvarchar](255) NULL,
	[isShell] [varchar](255) NULL,
	[isAdmin] [varchar](255) NULL,
	[isUser] [varchar](255) NULL,
	[AId] [int] NOT NULL,
 CONSTRAINT [PK__Account__C6900628D8B4D094] PRIMARY KEY CLUSTERED 
(
	[AId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 10/30/2022 1:10:29 PM ******/
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
/****** Object:  Table [dbo].[Blog]    Script Date: 10/30/2022 1:10:29 PM ******/
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
/****** Object:  Table [dbo].[Book]    Script Date: 10/30/2022 1:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BId] [int] NOT NULL,
	[BName] [nvarchar](255) NULL,
	[BPrice] [int] NULL,
	[BPiceSale] [int] NULL,
	[AuID] [int] NULL,
	[BCate] [int] NULL,
	[BImage] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[BId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 10/30/2022 1:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Cid] [int] NOT NULL,
	[UID] [int] NULL,
	[ItemList] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK__Order__CB3E4F315F8AF16C] PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 10/30/2022 1:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[Cid] [int] NOT NULL,
	[BId] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK__Item__3214EC07053A3214] PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/30/2022 1:10:29 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 10/30/2022 1:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UId] [int] NOT NULL,
	[UName] [nvarchar](max) NULL,
	[UAge] [varchar](255) NULL,
	[UPhone] [varchar](255) NULL,
	[Uimage] [varchar](255) NULL,
	[AccId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 10/30/2022 1:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[VId] [int] NOT NULL,
	[Discount] [varchar](255) NULL,
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
INSERT [dbo].[Account] ([Aname], [UserName], [UserPass], [Email], [Phone_number], [isShell], [isAdmin], [isUser], [AId]) VALUES (N'Lê Trương Ngọc Hải', N'AdminHai', N'123456', N'ngochai@gmail.com', N'153655250', N'0', N'1', N'0', 1)
INSERT [dbo].[Account] ([Aname], [UserName], [UserPass], [Email], [Phone_number], [isShell], [isAdmin], [isUser], [AId]) VALUES (N'Phúc', N'SellPhuc', N'123456', N'phuc@gmail.com', N'211121111', N'1', N'0', N'0', 2)
INSERT [dbo].[Account] ([Aname], [UserName], [UserPass], [Email], [Phone_number], [isShell], [isAdmin], [isUser], [AId]) VALUES (N'Hiệu', N'UserHieu', N'123456', N'hieu@gmail.com', N'1011221122', N'0', N'0', N'1', 3)
INSERT [dbo].[Account] ([Aname], [UserName], [UserPass], [Email], [Phone_number], [isShell], [isAdmin], [isUser], [AId]) VALUES (N'Khoa', N'UserKhoa', N'123456', N'khoa@gmail.com', N'1111111111', N'0', N'0', N'1', 4)
INSERT [dbo].[Account] ([Aname], [UserName], [UserPass], [Email], [Phone_number], [isShell], [isAdmin], [isUser], [AId]) VALUES (N'Lương', N'UserLuong', N'123456', N'luong@gmail.com', N'11111111', N'0', N'0', N'1', 5)
GO
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (0, N'Văn Phòng Phẩm')
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (1, N' Napoleon Hill')
INSERT [dbo].[Author] ([AuID], [AuName]) VALUES (2, N'')
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
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (1, N'NGHI GIÀU LÀM GIÀU', 108000, 92000, 1, 1, N'https://www.vinabook.com/images/thumbnails/product/240x/374689_p96926mcopy2ofnghigiaulamgiaukhonho108k01.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (2, N'Gieo Suy Nghi G?t Thành Công', 116000, 99000, 1, 1, N'https://www.vinabook.com/images/thumbnails/product/240x/360808_p91894mbiatruoc4.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (3, N'Oxf IDIOMS Dict Learners of Eng 2e', 115000, 0, 2, 2, N'https://www.vinabook.com/images/thumbnails/product/240x/188787_p64922m51cwfregocl.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (4, N'Oxf Learner''s Thesaurus Pk', 282000, 0, 2, 2, N'https://www.vinabook.com/images/thumbnails/product/240x/188762_p64912m51klegy11dl.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (5, N'Việt Nam Danh Tác - Ngày Mới', 89000, 76000, 3, 3, N'https://www.vinabook.com/images/thumbnails/product/240x/374883_p96982m8935235235694.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (6, N'Hà Nội Băm Sáu Phố Phường (Tái Bản 2022)', 50000, 43000, 3, 3, N'https://www.vinabook.com/images/thumbnails/product/240x/332260_p86881mscan0001.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (7, N'Leonardo Da Vinci Walter Isaacson (Tái Bản)', 889000, 756000, 4, 4, N'https://www.vinabook.com/images/thumbnails/product/240x/374893_p96985m8935270703820.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (8, N'Gió Lạnh Đầu Mùa', 59000, 45000, 4, 4, N'https://www.vinabook.com/images/thumbnails/product/240x/311665_p83918mbatrc.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (9, N'Cáo Chống Lại Mùa Đông', 38000, 32000, 5, 5, N'https://www.vinabook.com/images/thumbnails/product/240x/374878_p96980mcomungbiatruoc.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (10, N'Cáo Thi Nhảy', 38000, 32000, 5, 5, N'https://www.vinabook.com/images/thumbnails/product/240x/374876_p96979mcothinhaybiatruoc.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (11, N'Đắc nhân tâm', 86000, 73000, 6, 6, N'https://www.vinabook.com/images/thumbnails/product/240x/368374_p94739md.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (12, N'Quẳng Gánh Lo Đi Và Vui Sống (Tái Bản 2022)', 86000, 73000, 6, 6, N'https://www.vinabook.com/images/thumbnails/product/240x/371289_p96018mz260265024850093e18e312805d6583448b61f4007a67e1.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (13, N'Metaverse - Vũ Trụ Ảo Và Cuộc Cách Mạng Hóa Vạn Vật', 299000, 254000, 7, 7, N'https://www.vinabook.com/images/thumbnails/product/240x/374858_p96973m8935251419412.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (14, N'Vũ Trụ Đột Sinh - Bức Tranh Toàn Cảnh Về Vật Lý Hiện Đại', 350000, 298000, 8, 7, N'https://www.vinabook.com/images/thumbnails/product/240x/359231_p91407mbutkynguoidisan.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (15, N'Bài Tập Cơ Bản Và Nâng Cao - Toán 5 Tiểu Học (Tập 2)', 15000, 12000, 10, 8, N'https://www.vinabook.com/images/thumbnails/product/240x/15355_p21751.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (16, N'Tuyển Chọn Đề Ôn Luyện Và Tự Kiểm Tra Toán 4 - Tập 1', 38000, 32000, 11, 8, N'https://www.vinabook.com/images/thumbnails/product/240x/373608_p96649mscreenshot20220921125159.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (17, N'Lịch Bàn Chữ A 2018 - Life Is Beautiful', 10000, 92000, 0, 9, N'https://www.vinabook.com/images/thumbnails/product/240x/271644_p77118mlife.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (18, N'Lịch Để Bàn 2017 - Ôi Quê Hương Vĩnh Cửu', 50000, 43000, 0, 9, N'https://www.vinabook.com/images/thumbnails/product/240x/231284_p71374mbiatruoc.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (19, N'Đến Thế Giới Mới Với Smartphone - Tập 4', 98000, 78000, 12, 10, N'https://www.vinabook.com/images/thumbnails/product/240x/351275_p90329mdenthegioimoivoismartphone4coverfilein1.jpg')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPiceSale], [AuID], [BCate], [BImage]) VALUES (20, N'Blockchain Và Đầu Tư ICOs Căn Bản - Con Đường Tới Tự Do Tài Chính', 250000, 225000, 13, 10, N'https://www.vinabook.com/images/thumbnails/product/240x/298955_p81232mscan0001.jpg')
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
INSERT [dbo].[User] ([UId], [UName], [UAge], [UPhone], [Uimage], [AccId]) VALUES (1, N'Phạm Hồng Hiệu', N'20', N'1011221122', NULL, 3)
INSERT [dbo].[User] ([UId], [UName], [UAge], [UPhone], [Uimage], [AccId]) VALUES (2, N'Khoa', N'20', N'111111111', NULL, 4)
INSERT [dbo].[User] ([UId], [UName], [UAge], [UPhone], [Uimage], [AccId]) VALUES (3, N'Lương', N'20', N'111111111', NULL, 5)
GO
INSERT [dbo].[Voucher] ([VId], [Discount], [CreateDay], [EndDay], [UId], [VName]) VALUES (1, N'0.05', N'19/10/2022', N'20/10/2022', 1, N'20Thang10')
INSERT [dbo].[Voucher] ([VId], [Discount], [CreateDay], [EndDay], [UId], [VName]) VALUES (2, N'0.05', N'7/3/2022', N'8/3/2022', 2, N'8Thang3')
INSERT [dbo].[Voucher] ([VId], [Discount], [CreateDay], [EndDay], [UId], [VName]) VALUES (3, N'0.02', N'20/12/2022', N'25/12/2022', 3, N'GiangSinh')
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
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([UID])
REFERENCES [dbo].[User] ([UId])
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD FOREIGN KEY([BId])
REFERENCES [dbo].[Book] ([BId])
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD FOREIGN KEY([Cid])
REFERENCES [dbo].[Cart] ([Cid])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([AccId])
REFERENCES [dbo].[Account] ([AId])
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD FOREIGN KEY([UId])
REFERENCES [dbo].[User] ([UId])
GO
