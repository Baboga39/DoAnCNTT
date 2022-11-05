USE [DemoWeb]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 11/6/2022 12:13:15 AM ******/
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
/****** Object:  Table [dbo].[Blog]    Script Date: 11/6/2022 12:13:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[BlogID] [int] NOT NULL,
	[BId] [int] NULL,
	[BlogImage] [varchar](255) NULL,
	[BlogCon1] [nvarchar](max) NULL,
	[BlogCon2] [nvarchar](max) NULL,
	[BlogCon3] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 11/6/2022 12:13:15 AM ******/
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
/****** Object:  Table [dbo].[CartItem]    Script Date: 11/6/2022 12:13:15 AM ******/
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
/****** Object:  Table [dbo].[CartList]    Script Date: 11/6/2022 12:13:15 AM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 11/6/2022 12:13:15 AM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 11/6/2022 12:13:15 AM ******/
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
/****** Object:  Table [dbo].[OrderItem]    Script Date: 11/6/2022 12:13:15 AM ******/
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
/****** Object:  Table [dbo].[Review]    Script Date: 11/6/2022 12:13:15 AM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 11/6/2022 12:13:15 AM ******/
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
/****** Object:  Table [dbo].[Voucher]    Script Date: 11/6/2022 12:13:15 AM ******/
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
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3]) VALUES (1, 61, N'https://muagitot.com/images/news/2022/08/12/large/13-nguyen-tac-nghi-giau-lam-giau_1660295444.jpg.webp', N'Nghĩ giàu làm giàu là cuốn sách được đánh giá là cuốn sách bán chạy nhất mọi thời đại. Đây là tác phẩm được Napoleon Hill chắp bút một cáchbền bỉ trong vòng hơn 30 năm. Trong khoảng thời gian ấy, ông đã phỏng vấn bí quyết thành công của hơn 500 người thành đạt nổi tiếng ở Mỹ như Henry Ford, William Rigle, Clarence Derroy, Luter Berbenk, John Pierpont Morgan và thậm chí là cả tổng thống Mỹ.Nhờ những tinh hoa được tác giả chắt lọc khéo léo, cuốn sách đem đến một nguồn động lực nâng đỡ những cá nhân dù kém cỏi nhất trở nên thành công. Đây không chỉ là một câu nói sáo rỗng, thực tế đã có rất nhiều triệu phú đã thành công nhờ cuốn sách này. Bằng chứng là nhờ nó, tác giả được vinh danh là “ ngườitạo ra những nhà triệu phú”. Không những vậy, trong suốt những năm qua sách bán ra được hơn 60 triệu bản với gần trăm ngôn ngữ trên toàn thế giới. Điều này đã chứng tỏ sức ảnh hưởng và niềm yêu thích của độc giả trên khắp thế giới đối với cuốn sách này. ', N'Cuốn sách này có vẻ bề ngoài rất đơn giản: chỉ có nền đen và tiêu đề được in một cách nổi bật. Có lẽ điều này là minh chứng cho hai điều: Thứ nhất, chúng ta không thể từ bề ngoài mà có thể đánh giá toàn bộ nội dung bên trong. Thứ hai, những nguyên tắc mà tác giả đem đến vô cùng đơn giản, nhưng không phải ai trong chúng ta cũng đủ tinh tường để nhận ra toàn bộ. Nghĩ giàu làm giàu đem đến 13 nguyên tắc vàng được tác giả  đúc kết dựa trên trải nghiệm cá nhân và kinh nghiệm của các nhà triệu phú đương thời. Đây chính là một cánh cửa không mạ vàng, mạ bạc nhưng lạiđem đến những tầm nhìn rộng mở và cách cảm nhận diệu kỳ. Bởi lẽ, tất cả những thành công được nói đến trong tác phẩm này đều bắt nguồn từ cách nghĩ. Những gì bạn suy nghĩ hôm nay chính là ngòi lửa đang cháy âm ỉ, thôi thúc bạn thổi bùng đam mê. Những gì bạn suy nghĩ sẽ là nguồn cơn củahành động. Vậy nên, nếu có được suy nghĩ đúng đắn và độc đáo, việc bạn thành công chỉ là vấn đề thời gian.', N'Không chỉ đem đến cho độc giả 13 nguyên tắc thành công, cuốn sách này còn đem đến những câu chuyện truyền động lực đáng học hỏi. Giúp cho những ai còn đang mông lung với cuộc đời, còn đang than thở về tài chính và ước mơ tìm cho mình được định hướng. Để tôi, bạn, chúng ta trong hôm nay và sau này có thêm niềm tin, có lòng kiên trì, có định hướng đúng với khả năng của mình. Là một cuốn sách vô cùng nổi tiếng nhưng cách diễn đạt của tác giả lại giản dị và cuốn hút đến lạ. Không có những câu văn bay bổng, những biện pháp nghệ thuật cao xa mà chỉ có những chia sẻ thật sự xuất phát từ kinh nghiệm và con tim. Có lẽ chính vì điểm này mà Nghĩ giàu làm giàu đã thực sự lay động được độc giả trên khắp thế giới - những con người khác màu da, tiếng nói nhưng luôn luôn khao khát một cuộc sống thành công và hạnh phúc. ')
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3]) VALUES (2, 62, N'https://nhungcuonsachhay.com/wp-content/uploads/2021/11/Review-sach-Gieo-Suy-Nghi-Gat-Thanh-Cong-Tu-Tao-Phep-Mau-Cho-Thanh-Cong-Cua-Ban-Napoleon-Hill.png', N'Cuốn sách có 13 chương, tựa như 13 phép màu giúp ta tạo thành công cho chính mình. Sách trình bày những bí quyết điều chỉnh thái độ tinh thần, loại bỏ cảm xúc tiêu cực, duy trì sự bình yên trong tâm trí. Mỗi người có thể áp dụng vào cuộc sống của mình và sẽ hiểu được rằng cuốn sách này mang đến cho bạn điều gì đó còn lớn lao hơn cả cách thoát khỏi sự sợ hãi về nỗi đau thể xác và tinh thần.', N'Ở những chương đầu, tác giả cho rằng thái độ tinh thần tích cực là thói quen giữ cho tâm trí luôn bận rộn suy nghĩ về những tình huống và những điều mà ta hằng khao khát, cũng như phớt lờ những điều ta không mong muốn. Thái độ tinh thần tích cực giúp một người học cách chấp nhận những điểm yếu và khiếm khuyết của người khác mà không bị bất ngờ trước suy nghĩ tiêu cực của họ, hoặc không bị ảnh hưởng bởi cách tư duy của họ.', N'Các chương cuối, tác giả hướng dẫn cách làm chủ những nỗi sợ hãi của bản thân, thông qua việc áp dụng các thói quen tư duy mới mẻ mà bạn phải phát triển và sử dụng thay cho các thói quen cố hữu đã dung túng cho các nỗi sợ đó. Thông qua quy luật hài hoà, suy nghĩ của một người luôn tự khoác lên họ vỏ bọc vật chất tương ứng với bản chất bên trong. Ở mỗi chương, tác giả mô tả hết sức ngắn gọn, câu từ dễ hiểu, kèm theo những dẫn chứng sinh động. “Gieo suy nghĩ gặt thành công” của Napoleon Hill còn trang bị cho độc giả những bí quyết để đạt được điều bạn mơ ước, sự thành đạt về mặt tài chính và sự hoà hợp trong những mối quan hệ giữa người với người.')
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3]) VALUES (3, 63, N'https://m.media-amazon.com/images/I/412HUOkP1QL._SX327_BO1,204,203,200_.jpg', N'A clear and accessible dictionary that explains over 10,000 frequently-used idioms.', N'', N'')
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3]) VALUES (4, 64, N'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_20868.jpg', N'A synonyms dictionary written especially for learners. It groups words with similar meanings and explains the differences between them.', N'', N'')
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3]) VALUES (5, 65, N'http://sachnhanam.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/20211027144724/vietnamdanhtacdoanhnhansaigon-1610591764_750x0.jpg', N'Sau 44 tác phẩm của 27 tác giả, Nhã Nam vừa giới thiệu thêm tác phẩm tiếp theo trong bộ sách “Việt Nam danh tác”, gồm: “Những ngày thơ ấu” của Nguyên Hồng, “Lạnh lùng” của Nhất Linh, “Gánh hàng hoa” của Khái Hưng – Nhất Linh và “Sợi tóc” của Thạch Lam.', N'Hồi ký Những ngày thơ ấu là một trong những tác phẩm đặc sắc nhất của nhà văn Nguyên Hồng, bao gồm thiên hồi ký cùng tên Những ngày thơ ấu và bốn truyện ngắn khác, được NXB Đời Nay in lần đầu năm 1940. Với lối viết chân thực, giản dị mà thắm đượm trữ tình, tác phẩm đã tái hiện những kỷ niệm sâu sắc về thời thơ ấu nhiều cay đắng của tác giả trong một gia đình không hạnh phúc. Ấn bản này của Nhã Nam được thực hiện theo bản in Những ngày thơ ấu của NXB Đời Nay năm 1940… Các ảnh minh họa trong sách được lấy lại trong các truyện của Nguyên Hồng đã đăng trên báo Ngày Nay. Tiểu thuyết Lạnh lùng của Nhất Linh đăng dài kỳ trên báo Ngày nay, từ số 16 (ngày 12-7-1936) đến số 37 (ngày 6-12-1936), NXB Đời Nay xuất bản lần đầu năm 1937. Tác phẩm là câu chuyện về Nhung – một góa phụ trẻ tuổi, lòng đầy khát khao yêu đương nhưng bị trói buộc trong nghĩa vụ thủ tiết thờ chồng. Lạnh lùng là tiếng nói lên án lễ giáo phong kiến kìm hãm và đi ngược lại quyền sống của con người, đồng thời ngợi ca và cổ vũ tình yêu tự do, giải phóng cá nhân. Ấn bản này của Nhã Nam được thực hiện theo bản in của NXB Đời Nay in xong ngày 7-6-1940. Ấn bản này ngoài kênh chữ còn có sự kiện diện của kênh hình với những tranh minh họa do chính Nhất Linh vẽ. Qua những bức họa, bạn đọc cũng có thể bắt gặp không gian sinh hoạt, những phong cảnh truyền thống của làng quê Việt Nam với cổng làng, lũy tre, rặng cây, hoa thủy tiên ngày Tết…', N'Gánh hàng hoa là tiểu thuyết viết chung của Khái Hưng và Nhất Linh, đăng dài kỳ trên báo Phong hóa, từ số 66 (ngày 29-9-1933) đến số 88 (ngày 9-3-1934). Xuất bản lần đầu năm 1934, NXB Đời Nay. Tác phẩm mang đậm màu sắc lãng mạn với câu chuyện tình cao thượng của ba người bạn trẻ Minh, Liên và Văn nơi trại Hàng Hoa ven đô Hà Nội. Đây được xem là tác phẩm đi đầu cho chủ trương cổ vũ lối văn chương mới yêu đời của Tự Lực văn đoàn. Ấn bản này của Nhã Nam được thực hiện theo bản in Gánh hàng hoa của NXB Đời Nay in năm 1934. Các tranh minh họa là do Đông Sơn, tức Nhất Linh vẽ. Tập truyện ngắn Sợi tóc của Thạch Lam xuất bản lần đầu năm 1942, NXB Đời Nay. Gồm năm truyện ngắn: Dưới bóng hoàng lan, Tối ba mươi, Cô hàng xén, Tình xưa, Sợi tóc. Các truyện ngắn của Thạch Lam tuy nhẹ nhàng và giàu tính trữ tình, nhưng chứa đựng những trăn trở sâu sắc về con người, thời thế. Nhà nghiên cứu Vũ Ngọc Phan nhận xét: “Những truyện Tối ba mươi, Cô hàng xén, Tình xưa, Sợi tóc đều là những truyện vào hạng những đoản thiên tiểu thuyết đáng kể là hay nhất trong văn chương Việt Nam”. Ấn bản này của Nhã Nam được thực hiện theo bản in Sợi tóc của NXB Đời Nay in xong ngày 30-1-1942. Các ảnh minh họa trong sách được lấy từ các truyện ngắn của Thạch Lam đăng trên báo Ngày Nay (1938-1940).')
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3]) VALUES (6, 66, N'http://thuylinhha.files.wordpress.com/2014/09/wpid-20140930_2142151.jpg?w=840&h=1119', N'Hà Nội Băm Sáu Phố Phường, là một cuốn bút ký về ẩm thực Hà Nội. Chỉ cần lật giở qua mục lục thôi sẽ thấy ngay tên gọi của đủ thức quà ngon lành nào phở, nào bún, nào bánh khảo, kẹo lạc, cốm non và cả những chốn ăn chơi nức tiếng. “Quà Hà Nội xưa nay vẫn có tiếng là ngon lành và lịch sự…. Bao nhiêu ý tốt tình hay gửi vào trong chút quà nơi đô hội, món quà đem đến cho khắp nơi cái vị sành và trang nhã của băm sáu phố phường”', N'Thạch Lam đã nói rằng “một cách cầm đũa, một cách đưa thìa lên húp canh bảo cho ta biết nhiều về một hạng người hơn là trăm pho sách”. Và còn cách nào tốt hơn để tìm hiểu về văn hóa, phong tục, tập quán của một vùng đất bằng việc khám phá những chốn ăn, chơi? Vậy nên nhắc đến Hà Nội- vùng đất Thăng Long xưa là nhắc đến những gánh quà rong như “bánh cuốn Thanh Trì mỏng như tờ giấy và trong như lụa”, “cái thứ bún chả ngon từ cái mùi thơm, từ cái nước chấm ngon đi”, gánh xôi vừng mỡ, gánh cơm nắm “lẳng lơ”, ngô bung, tiết canh và lòng lợn, ấy là mới điểm tên qua vài món. Và, sẽ là một thiếu sót nếu viết về những thức quà Hà Nội mà thiếu đi tô phở gánh. Thạch Lam đã mô tả một gánh phở ngon thì “cả Hà Nội không có đâu làm nhiều- nước dùng trong và ngọt, bánh dẻo mà không nát, thịt mỡ gầu giòn chứ không dai, chanh ớt với hành tây đủ cả”. Rồi “rau thơm tươi, hồ tiêu bắc, giọt chanh cốm gắt, lại điểm thêm một chút cà cuống thoảng nhẹ như một thoáng nghi ngờ”.', N'Còn nhiều những thức quà ngon khác: cốm non thơm ngát, bánh đậu ướt béo ngọt, tô bún ốc chua “làm xoa xuýt những cặp môi héo hắt và rỏ những giọt lệ thật thà hơn cả giọt lệ tình”, cả những thứ bánh Tây, bánh Tàu tên nghe là lạ. Người ăn cũng đủ cả, từ ông trưởng giả giàu có đến văn sĩ nghèo nàn, phu xe, thợ dạo. Cái sự ăn quà trở thành một nghệ thuật :ăn đúng vào cái giờ ấy và chọn đúng người bán ấy mới gọi là sành! Mà Thạch Lam quả thực rất “sành”, ông biết rõ hàng nào làm ngon, người bán nào nấu khéo. Có khi những tiệm ăn to đẹp sang trọng lại chẳng thể bì được với bà hàng gánh rong đội thúng rao đêm. Ông cũng căm ghét những thứ đồ ăn nhập ngoại, chẳng hạn như “cái thứ thịt bò khô với củ cải đầm đậm, chế thêm ít phẩm đỏ, bẩn thỉu và độc vô cùng mà các trò Hà Nội hay ưa thích”. Quả thực văn hóa ăn uống ngày nay đã khác xưa nhiều, người ta ăn đồ ăn “nhanh” cho kịp ngày hối hả, ăn những thức lạ cho sang và hợp thời. Vậy nên câu chuyện về ẩm thực “Hà Nội ba mươi sáu phố phường/ Hàng mứt, hàng đường, hàng muối trắng tinh” có sức hấp dẫn rất kỳ lạ, khiến độc giả vừa thèm thuồng vừa luyến tiếc nhớ nhung Hà Nội, Hà Nội của những ngày xa rất xa.')
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3]) VALUES (7, 67, N'https://i0.wp.com/triethocduongpho.net/wp-content/uploads/2020/05/71357ac0b4e42b8d92f6cad8e3170b86.jpg?w=750&ssl=1', N'Leonardo da Vinci cũng là con hoang giống như nhiều cái tên nổi bật trong lịch sử khác là Tần Thuỷ Hoàng, Steve Jobs hay Casere Borgia, chủ nhân Leonardo từng phục vụ là một trong những người con của Giáo hoàng Alexander VI. Ngoài ra, rất nhiều các tên tuổi trong thời kì Phục Hưng là con hoang. Sau này khái niệm con hoang được văn học phương Tây coi là quân bài tẩy có tính chất thay đổi cả cục diện và vận mệnh. Điển hình là John Snow trong Game of Thrones. Cái hay của Isaacson nằm ở chỗ ông luôn tìm được nhiều chi tiết hô biến sự thần thánh hoá các nhân vật này trở thành những con người bình thường mà bất cứ ai đều có thể đạt đến tài năng của họ. Isaac cho rằng tất cả những thiên tài đều có thể đạt được sự tinh hoa là từ chính mình, chứ không nhờ đến ân sủng của các vị thần. Leonardo da Vinci cũng không phải là ngoại lệ.', N'Vì là con ngoài giá thú nên Leonardo da Vinci sẽ không được kế nhiệm vị trí của cha mình cũng như chẳng được hưởng một cuộc sống bình thường. Về học hành, ngay từ nhỏ Leonardo da Vinci hầu như không đi học, thậm chí còn không biết nhiều về tiếng Latin, thứ ngôn ngữ dùng trong công việc của nước Ý lúc đó và cũng không biết phép toán chia. Một cái tên được gắn với nhiều giai thoại, sự thật và phép màu của thần thánh phủ lên mà cũng có những góc không toàn vẹn như bất cứ ai. Theo mình, có lẽ hai chữ “thiên tài” với các góc cạnh hoàn hảo luôn nói về các con người vĩ đại là không đúng. Steve Jobs cũng không biết lập trình nhưng di sản ông để lại là một công ty công nghệ với các sản phẩm đỉnh cao với nghệ thuật tối giản. Thiên tài đúng hơn là sự chênh vênh và mâu thuẫn kì lạ giữa việc biết quá nhiều và không biết gì. Leonardo Da Vinci theo học ở xưởng vẽ của Andera del Verrocchio, bậc thầy nổi tiếng nhất thành Florence. Leonardo da Vinci hơn cả người dẫn dắt mình hai khía cạnh: khả năng vẽ và xao nhãng trong công việc. Trong thế giới hiện đại, việc xao nhãng và không tập trung ảnh hưởng rất lớn đến khả năng làm việc và Leonardo da Vinci cũng giống như những con người lười biếng nhất. Ông hiếm khi hoàn thành các tác phẩm của mình bởi trí tưởng tượng siêu phàm luôn dẫn dắt ông hướng đến những điều mới mẻ, những câu hỏi thay vì tập trung vẽ.', N'Bất cứ ai cũng đều có những lúc phóng đại về bản thân mình và Leonardo da Vinci cũng làm vậy khi gửi các lá thư đến mấy vị bảo trợ cho mình. Ông giới thiệu bản thân đến Ludovico Sforza là vương công xứ Milan bằng một bức thư tâng bốc quá đà Ludovico lẫn bản thân mình được bắt đầu bằng “Thưa vị chủ nhân tiếng tăm lẫy lừng bậc nhất”. Sau đó Leonardo da Vinci liệt kê ra 11 điều tài giỏi liên quan đến kiến trúc, toán học, chế tạo vũ khí, thuỷ lợi, điêu khắc và vẽ được mọi thứ. Leonardo da Vinci sau này khi giới thiệu mình đến những quân vương, Giáo hoàng tiếp theo cũng tán tụng bản thân bằng sự huyễn hoặc chứ không phải thực tế. Leonardo da Vinci cũng bị ám ảnh với sự nổi tiếng và tiền tài trong một thời gian. Ông luôn tìm cách chứng minh mình với đám vương công bằng kĩ năng chơi nhạc hay thiết kế các vũ khí được lưu lại trong sổ chép tay của mình. Thậm chí Leonardo da Vinci còn hướng tài năng của mình và chiến tranh với những bức phác hoạ đẫm máu và các thiết kế vũ khí sát thương để làm chiều lòng các nhà vua.')
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3]) VALUES (8, 68, N'https://revisach.com/wp-content/uploads/2020/07/review-sach-gio-lanh-dau-mua-thach-lam.png', N'Đọc truyện, ta không cầm được lòng mình khi nghe về những mảnh đời nghèo khổ, bế tắc. Gió lạnh đầu mùa, ấy là thân phận con người bị cơn gió lạnh thổi đến quay quắt, tiêu điều. Những người nghèo đến mùa rét phải giải ổ rơm đầy nhà, mẹ cùng con nằm ngủ trên đó như chó mẹ chó con lúc nhúc. Đó là những em bé tội nghiệp, mùa rét đến chẳng có lấy một manh áo, chỉ biết nhìn chiếc áo bông của người khác mà thèm thuồng.', N'Hay là những mái nhà lá chỉ chực đổ xuống khi có cơn gió lung lay, là giấc ngủ không tròn vì nửa đêm phải dậy tìm chậu thau đi hứng chỗ dột. Cay đắng nhất, là người mẹ nghèo khổ đi xin ăn bị người ta thả chó ra cắn đến chết, là người chồng vũ phu chỉ biết hành hạ vợ cho vui, là những lời cay nghiệt hành hạ người ta cho đến lúc chết,… Gió lạnh đầu mùa, cơn gió lạnh làm đôi môi tím tái, bàn tay buốt giá, thắt lạnh con tim.', N'Nhà văn kể nhưng không chỉ dừng lại ở việc kể. Thạch Lam kể về số phận của những con người nghèo đói nhưng không quên thắp lên ngọn lửa ấm áp của tình người yêu thương. Trong cảnh cơ cực và bần hàn không tả xiết ấy, vẫn có những đứa trẻ tốt bụng biết nhường bạn manh áo ấm. Đâu đó, len lỏi trong những ánh mắt vô tâm vô hồn, vẫn có nỗi day dứt của người đàn ông đã vô cớ nóng giận với bác phu xe nghèo khổ. Cái giết chết con người không phải nghèo đói, mà là nỗi ân hận day dứt theo người ta tới cuối cuộc đời. Truyện làm ta buồn vì những đứa con vô tâm nhưng cũng sưởi ấm lòng ta khi nhắc đến những người thân nơi làng quê luôn trông mong, yêu thương chân thành những đứa con nơi phố thị ấy. Giữa cảnh nổi trôi của cuộc đời vô định, chỉ một chút tình thương cũng làm ta thấy thật ấm lòng.')
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3]) VALUES (9, 69, N'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/232/cao-chong-lai-mua-dong.jpg', N'Cáo tinh nghịch, vui tính – nhân vật lừa bịp vui nhộn xuất hiện trong giải thưởng Geisel – Cáo Da Hổ – đã chiến đấu chống lại một kẻ thù đáng ngạc nhiên! Cáo không thích mùa đông. Không ai trong số bạn bè của cậu ở xung quanh để chơi. Cậu buồn chán và cô đơn. Sau đó Fox có một ý tưởng. Nếu cậu không thể thoát khỏi mùa đông, cậu sẽ chiến đấu với nó!', N'Bộ 6 cuốn sách trong CHÚ CÁO TINH NGHỊCH được in trên giấy offset 150 dày dặn, không lóa mắt khi nhìn lâu. Bìa sách là giấy Ivory, cán mờ, phủ UV.6 cuốn sách song ngữ Việt Anh với: Thông điệp giáo dục nhẹ nhàng, không giáo điều: dạy con yêu bản thân, vượt qua nỗi sợ bóng tối, tìm thấy niềm vui giữa những điều nhỏ bé. Tình tiết hài hước, lôi cuốn: đưa con vào thế giới của tiếng cười với những nhân vật gần gũi. Hình ảnh sinh động, bắt mắt: nuôi dưỡng tâm hồn nghệ thuật trong con ngay từ những năm đầu đời. Bìa cứng bền và đẹp: con thoải mái lật mở nhiều lần, đọc đi đọc lại trong suốt hành trình tuổi thơ mà không sợ làm quăn, làm nhàu sách. Lời kể song ngữ: con vừa thấm nhuần tiếng mẹ đẻ, vừa tiếp xúc với ngoại ngữ ngay từ những cuốn sách đầu tiên.', N'Corey R. Tabor là một tác giả, họa sĩ đạt nhiều giải thưởng, riêng CÁO DA HỔ và CÁO TRONG ĐÊM thuộc bộ “Chú Cáo tinh nghịch” đã ẵm liền 2 giải Theodor Seuss Geisel năm 2019 và 2022.')
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3]) VALUES (10, 70, N'https://sanhobooks.com/wp-content/uploads/2021/12/18dc7e0ba0aa6af433bb-300x271.jpg', N'Cáo cực kì, cực kì muốn thắng cuộc thi nhảy cao. Cậu biết chính xác mình sẽ đặt cúp ở đâu.', N'Vấn đề là gì? Cáo nhảy không giỏi. Nhưng cậu rất giỏi ủ mưu…', N'')
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (61, N'NGHI GIÀU LÀM GIÀU', 108000, 92000, 1, 1, N'https://www.vinabook.com/images/thumbnails/product/240x/374689_p96926mcopy2ofnghigiaulamgiaukhonho108k01.jpg', N'1', N'1', N'0', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (62, N'Gieo Suy Nghi G?t Thành Công', 116000, 99000, 1, 1, N'https://www.vinabook.com/images/thumbnails/product/240x/360808_p91894mbiatruoc4.jpg', N'1', N'0', N'1', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (63, N'Oxf IDIOMS Dict Learners of Eng 2e', 115000, 0, 2, 2, N'https://www.vinabook.com/images/thumbnails/product/240x/188787_p64922m51cwfregocl.jpg', N'1', N'1', N'0', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (64, N'Oxf Learner''s Thesaurus Pk', 282000, 0, 2, 2, N'https://www.vinabook.com/images/thumbnails/product/240x/188762_p64912m51klegy11dl.jpg', N'1', N'0', N'1', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (65, N'Việt Nam Danh Tác - Ngày Mới', 89000, 76000, 3, 3, N'https://www.vinabook.com/images/thumbnails/product/240x/374883_p96982m8935235235694.jpg', N'0', N'1', N'0', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (66, N'Hà Nội Băm Sáu Phố Phường (Tái Bản 2022)', 50000, 43000, 3, 3, N'https://www.vinabook.com/images/thumbnails/product/240x/332260_p86881mscan0001.jpg', N'0', N'0', N'1', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (67, N'Leonardo Da Vinci Walter Isaacson (Tái Bản)', 889000, 756000, 4, 4, N'https://www.vinabook.com/images/thumbnails/product/240x/374893_p96985m8935270703820.jpg', N'0', N'1', N'0', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (68, N'Gió Lạnh Đầu Mùa', 59000, 45000, 4, 4, N'https://www.vinabook.com/images/thumbnails/product/240x/311665_p83918mbatrc.jpg', N'0', N'0', N'1', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (69, N'Cáo Chống Lại Mùa Đông', 38000, 32000, 5, 5, N'https://www.vinabook.com/images/thumbnails/product/240x/374878_p96980mcomungbiatruoc.jpg', N'1', N'1', N'0', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (70, N'Cáo Thi Nhảy', 38000, 32000, 5, 5, N'https://www.vinabook.com/images/thumbnails/product/240x/374876_p96979mcothinhaybiatruoc.jpg', N'1', N'0', N'1', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (71, N'Đắc nhân tâm', 86000, 73000, 6, 6, N'https://www.vinabook.com/images/thumbnails/product/240x/368374_p94739md.jpg', N'1', N'1', N'0', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (72, N'Quẳng Gánh Lo Đi Và Vui Sống (Tái Bản 2022)', 86000, 73000, 6, 6, N'https://www.vinabook.com/images/thumbnails/product/240x/371289_p96018mz260265024850093e18e312805d6583448b61f4007a67e1.jpg', N'1', N'0', N'1', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (73, N'Metaverse - Vũ Trụ Ảo Và Cuộc Cách Mạng Hóa Vạn Vật', 299000, 254000, 7, 7, N'https://www.vinabook.com/images/thumbnails/product/240x/374858_p96973m8935251419412.jpg', N'0', N'1', N'0', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (74, N'Vũ Trụ Đột Sinh - Bức Tranh Toàn Cảnh Về Vật Lý Hiện Đại', 350000, 298000, 8, 7, N'https://www.vinabook.com/images/thumbnails/product/240x/359231_p91407mbutkynguoidisan.jpg', N'0', N'0', N'1', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (75, N'Bài Tập Cơ Bản Và Nâng Cao - Toán 5 Tiểu Học (Tập 2)', 15000, 12000, 10, 8, N'https://www.vinabook.com/images/thumbnails/product/240x/15355_p21751.jpg', N'0', N'1', N'0', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (76, N'Tuyển Chọn Đề Ôn Luyện Và Tự Kiểm Tra Toán 4 - Tập 1', 38000, 32000, 11, 8, N'https://www.vinabook.com/images/thumbnails/product/240x/373608_p96649mscreenshot20220921125159.jpg', N'0', N'0', N'1', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (77, N'Lịch Bàn Chữ A 2018 - Life Is Beautiful', 10000, 92000, 0, 9, N'https://www.vinabook.com/images/thumbnails/product/240x/271644_p77118mlife.jpg', N'1', N'1', N'0', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (78, N'Lịch Để Bàn 2017 - Ôi Quê Hương Vĩnh Cửu', 50000, 43000, 0, 9, N'https://www.vinabook.com/images/thumbnails/product/240x/231284_p71374mbiatruoc.jpg', N'1', N'0', N'1', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (79, N'Đến Thế Giới Mới Với Smartphone - Tập 4', 98000, 78000, 12, 10, N'https://www.vinabook.com/images/thumbnails/product/240x/351275_p90329mdenthegioimoivoismartphone4coverfilein1.jpg', N'1', N'1', N'0', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (80, N'Blockchain Và Đầu Tư ICOs Căn Bản - Con Đường Tới Tự Do Tài Chính', 250000, 225000, 13, 10, N'https://www.vinabook.com/images/thumbnails/product/240x/298955_p81232mscan0001.jpg', N'1', N'0', N'1', N'1')
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
