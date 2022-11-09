USE [DemoWeb]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 11/9/2022 11:37:09 PM ******/
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
/****** Object:  Table [dbo].[Blog]    Script Date: 11/9/2022 11:37:09 PM ******/
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
/****** Object:  Table [dbo].[Book]    Script Date: 11/9/2022 11:37:09 PM ******/
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
/****** Object:  Table [dbo].[CartList]    Script Date: 11/9/2022 11:37:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartList](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[UID] [int] NULL,
	[BID] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/9/2022 11:37:09 PM ******/
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
/****** Object:  Table [dbo].[Feedback]    Script Date: 11/9/2022 11:37:09 PM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 11/9/2022 11:37:09 PM ******/
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
/****** Object:  Table [dbo].[OrderItem]    Script Date: 11/9/2022 11:37:09 PM ******/
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
/****** Object:  Table [dbo].[Review]    Script Date: 11/9/2022 11:37:09 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 11/9/2022 11:37:09 PM ******/
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
/****** Object:  Table [dbo].[Voucher]    Script Date: 11/9/2022 11:37:09 PM ******/
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
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3], [DayCreate], [Quotes], [Title], [Name], [Author], [ImageDetail], [AuthorQuotes]) VALUES (1, 63, N'./img/blog/details/Napoleon.jpg', N'Nghĩ giàu làm giàu là cuốn sách được đánh giá là cuốn sách bán chạy nhất mọi thời đại. Đây là tác phẩm được Napoleon Hill chắp bút một cách bền bỉ trong vòng hơn 30 năm. Trong khoảng thời gian ấy, ông đã phỏng vấn bí quyết thành công của hơn 500 người thành đạt nổi tiếng ở Mỹ như Henry Ford, William Rigle, Clarence Derroy, Luter Berbenk, John Pierpont Morgan và thậm chí là cả tổng thống Mỹ. Nhờ những tinh hoa được tác giả chắt lọc khéo léo, cuốn sách đem đến một nguồn động lực nâng đỡ những cá nhân dù kém cỏi nhất trở nên thành công. Đây không chỉ là một câu nói sáo rỗng, thực tế đã có rất nhiều triệu phú đã thành công nhờ cuốn sách này. Bằng chứng là nhờ nó, tác giả được vinh danh là “ người tạo ra những nhà triệu phú”. Không những vậy, trong suốt những năm qua sách bán ra được hơn 60 triệu bản với gần trăm ngôn ngữ trên toàn thế giới. Điều này đã chứng tỏ sức ảnh hưởng và niềm yêu thích của độc giả trên khắp thế giới đối với cuốn sách này. ', N'Cuốn sách này có vẻ bề ngoài rất đơn giản: chỉ có nền đen và tiêu đề được in một cách nổi bật. Có lẽ điều này là minh chứng cho hai điều: Thứ nhất, chúng ta không thể từ bề ngoài mà có thể đánh giá toàn bộ nội dung bên trong. Thứ hai, những nguyên tắc mà tác giả đem đến vô cùng đơn giản, nhưng không phải ai trong chúng ta cũng đủ tinh tường để nhận ra toàn bộ.

Nghĩ giàu làm giàu đem đến 13 nguyên tắc vàng được tác giả đúc kết dựa trên trải nghiệm cá nhân và kinh nghiệm của các nhà triệu phú đương thời. Đây chính là một cánh cửa không mạ vàng, mạ bạc nhưng lại đem đến những tầm nhìn rộng mở và cách cảm nhận diệu kỳ. Bởi lẽ, tất cả những thành công được nói đến trong tác phẩm này đều bắt nguồn từ cách nghĩ. Những gì bạn suy nghĩ hôm nay chính là ngòi lửa đang cháy âm ỉ, thôi thúc bạn thổi bùng đam mê. Những gì bạn suy nghĩ sẽ là nguồn cơn của hành động. Vậy nên, nếu có được suy nghĩ đúng đắn và độc đáo, việc bạn thành công chỉ là vấn đề thời gian.', N'Không chỉ đem đến cho độc giả 13 nguyên tắc thành công, cuốn sách này còn đem đến những câu chuyện truyền động lực đáng học hỏi. Giúp cho những ai còn đang mông lung với cuộc đời, còn đang than thở về tài chính và ước mơ tìm cho mình được định hướng. Để tôi, bạn, chúng ta trong hôm nay và sau này có thêm niềm tin, có lòng kiên trì, có định hướng đúng với khả năng của mình. 

Là một cuốn sách vô cùng nổi tiếng nhưng cách diễn đạt của tác giả lại giản dị và cuốn hút đến lạ. Không có những câu văn bay bổng, những biện pháp nghệ thuật cao xa mà chỉ có những chia sẻ thật sự xuất phát từ kinh nghiệm và con tim. Có lẽ chính vì điểm này mà Nghĩ giàu làm giàu đã thực sự lay động được độc giả trên khắp thế giới - những con người khác màu da, tiếng nói nhưng luôn luôn khao khát một cuộc sống thành công và hạnh phúc. ', N'20 October 2022', N'"The man who does more than he is paid for will soon be paid for more than he does."', N'Nghĩ giàu làm giàu
', N'Nghĩ giàu làm giàu
', N'Ngọc Hải', NULL, NULL)
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3], [DayCreate], [Quotes], [Title], [Name], [Author], [ImageDetail], [AuthorQuotes]) VALUES (2, 63, N'./img/blog/details/Dale\ Breackenridge.jpg', N'Trong cuộc sống, tôi tin chắc một điều rằng ai trong số chúng ta đều có một mong muốn rằng, tất cả mọi người đều sẽ luôn vui vẻ, thiện chí sẵn lòng giúp đỡ chúng ta điều gì đó không chỉ trong công việc, nó còn bao gồm cả tròng đời sống cá nhân. Tuy nhiên, việc chúng ta có thể khiến mọi người thuận theo ý mình thì điều đó thật không đơn giản. Nhưng tôi biết có một người có thể biến những điều tưởng chừng không thể ấy một cách rất thành công. Ông viết lại những đút kết kinh nghiệm của mình thông qua một cuốn sách và nó đã trở thành một trong những cuốn sách bán chạy nhất mọi thời đại. Ông là DALE BRECKENRIDGE CARNEGIE, người viết nên cuốn sách được biết đến cho tới tận ngày hôm nay, ĐẮC NHÂN TÂM.', N'Trước khi bắt đầu, tôi mong muốn chia sẻ một vài quan điểm cá nhân của mình đến với các bạn khi tìm đọc những cuốn sách Self-Help nói riêng và việc đọc sách các thể loại khác nói chung. Bởi vì, tôi mong muốn tất cả chúng ta đều có thể tiếp cận tri thức một cách có sàng lọc nhất (điều này tôi sẽ chia sẻ quan điểm của mình chi tiết hơn trong một bài viết khác). Còn ở đây, tôi chỉ muốn bạn sau khi xem xong quyển sách Đắc Nhân Tâm thì hãy chắt lọc các thông tin hữu ích áp dụng cho chính bản thân mình vào cuộc sống. Tùy vào từng hoàn cảnh môi trường, tùy vào tính cách cá nhân riêng, tùy vào từng sự việc khác nhau mà chúng ta áp dụng những điều hay ấy một cách linh hoạt mà không đánh mất đi bản sắc đặc trưng trong tính cách của mình. Ngoài ra, hãy xem cuốn sách này như là một nguồn tư liệu tham khảo hữu ích để bạn có thể dựa vào đó tìm ra một hướng ứng xử phù hợp hơn dành cho bản thân mình. Việc chúng ta có được sự CHÂN THÀNH trong giao tiếp mới chính là chìa khóa để giúp bạn có một mối quan hệ tốt hơn. Nào!! giờ thì chúng ta cùng nhau tìm hiểu cuốn sách này sẽ nói về điều gì nhé.', N'Dale Breckenridge Carnegie là một nhà văn, nhà thuyết trình người Mỹ, đồng thời cũng là người phát triển các lớp giáo dục, nghệ thuật bán hàng, nghệ thuật giao tiếp khi đứng trước đám đông. Ông Carnegie sinh ra và lớn lên trong một gia đình ở nông thôn, trong một trang trại ở Missouri. Ông phải dậy vào lúc mỗi 4 giờ sáng để vắt sữa bò cho gia đình, mặc dù hoàn cảnh nhà ông không mấy khá giả nhưng ông Carnegie vẫn không muốn từ bỏ con đường học vấn của chính mình. Trong khoảng thời gian làm việc sau khi tốt nghiệp State Teacher’s College tại Warrensburg, ông đã nảy ra ý tưởng về việc giảng dạy nghệ thuật giao tiếp trước đám đông đến với nhiều người. Và cuốn sách “Đắc Nhân Tâm” lần đầu tiên được xuất bản 1936 đã được cả thế giới đón nhận với lượt bán ra hơn 15 triệu bản tính từ trước cho đến nay. Với sức ảnh hưởng vô cùng lớn đã giúp cho hàng triệu người trên thế giới có sự thay đổi đáng kể về cuộc đời họ. Những giá trị to lớn mà cuốn sách mang lại đó chính là bí quyết chinh phục Nhân Tâm, một bí quyết tôi tin chắc chúng ta đều luôn muốn khát khao sở hữu.
Chúng ta vừa lúc mới sinh ra không phải ai cũng có thể sở hữu tính thiên bẩm trong nghệ thuật giao tiếp. Việc giao tiếp khéo léo, tinh tế đòi hỏi phải là một quá trình trau dồi từ những kinh nghiệm sống bản thân, từ tính cách trời ban, từ môi trường sống xung quanh hay từ ý thức của mỗi người đối với cuộc sống này. Cũng có thể ví nghệ thuật giao tiếp như là một chiếc cầu nối cho sự thành công trong sự nghiệp hoặc trong đời sống xã hội hằng ngày. Bởi, nếu bạn giỏi nhưng bạn lại không biết cách thể hiện những ý tưởng, quan điểm, chiến lược hay trong các buổi đàm phán thì cơ hội thành công đến với bạn sẽ thấp hơn nhiều so với những người khác. Cho nên, nội dung cuốn sách “Đắc Nhân Tâm” như một cơn suối mát lành dành cho những người đang khát khao có được sự bức phá đỉnh cao trong sự nghiệp của chính họ.
Quyển sách này bao gồm bốn chương lớn, trong mỗi chương sẽ chia ra những chương nhỏ, mà cụ thể những chương nhỏ ấy chính là bí quyết làm thế nào để chinh phục nhân tâm hay gây được sự thiện cảm đối với người đối diện. Xuyên suốt trong quyển sách này, đối tượng mà tác giả lấy làm ví dụ cho những bí quyết chinh phục lòng người chính là người bán hàng và khách hàng của họ. Thế nhưng, điều tôi muốn chúng ta phải mở rộng góc nhìn hơn nữa, nó không chỉ là với một người bán hàng mong muốn được bán những món hàng được giới thiệu tới những người khách hàng, mà nó còn là giữa những đối tác, giữa con người với con người, giữa bạn bè, giữa các đồng nghiệp, giữa những người thân với nhau. Như vài bài trước đây, tôi sẽ chỉ nói về một số lời khuyên mà chính bản thân cảm thấy ấn tượng nhất, phần còn lại tôi muốn dành cho bạn thời gian tự đọc sách và chiêm nghiệm những giá trị lợi ích cuốn sách mang lại. Bởi nếu tôi nói hết, bạn sẽ không cảm thấy nhiều sự hứng thú về quyển sách này nữa. Ok, giờ chúng ta quay lại chủ đề chính, lời khuyên đầu tiên tôi ấn tượng và đúc kết lại từ góc nhìn của mình trong quyển sách này, đó là: KHÔNG CHỈ TRÍCH, OÁN TRÁCH HAY THAN PHIỀN.', N'20 October 2022', N'"Every man I meet is my superior in some way. In that, I learn of him."', N'Đắc nhân tâm', N'Đắc nhân tâm', N'Ngọc Hải', N'http://www.goalcast.com/wp-content/uploads/2018/01/dale-carnegie-today-is-tomorrow.jpg', N'DALE BRECKENRIDGE CARNEGIE')
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3], [DayCreate], [Quotes], [Title], [Name], [Author], [ImageDetail], [AuthorQuotes]) VALUES (3, 63, N'./img/blog/details//Daniel.jpg', N'Hai hệ thống tư duy: Hành vi của chúng ta được điều khiển bởi hai hệ thống tư duy khác biệt – một tự động và một suy xét.
Luôn luôn có một vở kịch hấp dẫn diễn ra trong tâm trí của chúng ta, với sự tham gia của hai diễn viên chính cùng nhiều kịch tính và cao trào. Hai nhân vật này là hệ thống 1 – bản năng, tự động, cảm tính và hệ thống 2 – chín chắn, chậm rãi, toan tính. Khi đương đầu với nhau, sự tương tác của hai hệ thống này quyết định cách chúng ta nghĩ, đưa ra các phán xét, quyết định và hành động.
Hệ thống 1 là nơi mà tâm trí chúng ta hoạt động theo trực giác và đột ngột, thường không có sự kiểm soát của ý thức. Bạn có thể trải nghiệm hệ thống này khi bạn nghe thấy một âm thanh rất lớn và bất ngờ. Bạn sẽ làm gì? Nhiều khả năng bạn sẽ ngay lập tức chuyển hướng chú ý của mình một cách tự động đến nó. Đó chính là hệ thống 1.
Hệ thống này là một di sản từ quá trình tiến hoá của chúng ta: là những lợi thế cố hữu mang tính sống còn trong việc đưa ra những quyết định và phán đoán nhanh chóng.
Hệ thống 2 là hệ thống chịu trách nhiệm cho quá trình ra quyết định, lập luận và tạo ra niềm tin của mỗi cá nhân. Nó điều khiển các hoạt động có ý thức của tâm trí như tự kiểm soát, khả năng lựa chọn và khả năng tập trung.
Tưởng tượng rằng bạn đang tìm một người phụ nữ trong đám đông. Tâm trí của bạn sẽ cố gắng tập trung vào việc nhớ lại những đặc điểm của người đó hay bất cứ thứ gì có thể giúp tìm ra cô ấy. Sự tập trung này giúp loại trừ những sao lãng xung quanh, khiến bạn dường như không để ý đến những người khác trong đám đông. Nếu bạn duy trì sự tập trung có chủ ý này, bạn có thể tìm ra cô ấy sau vài phút, trái lại nếu bị phân tâm, bạn sẽ khó có thể tìm thấy cô ấy.
Mối quan hệ của hai hệ thống này sẽ định hình nên hành vi của mỗi chúng ta.', N'Tư duy lười biếng – Sự lười biếng có thể dẫn đến những sai lầm và ảnh hướng đến trí thông minh.
Để xem cách hai hệ thống hoạt động ra sao, chúng ta hãy thử giải quyết bài toán nổi tiếng cây gậy và quả bóng sau:
Một cây gậy và quả bóng có giá $1.10. Cây gậy đắt hơn quả bóng $1. Vậy quả bóng có giá bao nhiêu?
Mức giá dường như xuất hiện ngay trong đầu bạn, $0.1 là kết quả của hệ thống tư duy cảm tính và tự động (hệ thống 1), và nó hoàn toàn sai! Thử giải lại bài toán này xem.
Bạn đã thấy mình sai ở đâu chưa? Câu trả lời đúng là quả bóng có giá $0.05.
Chuyện vừa xảy ra là hệ thống 1 đã chiếm quyền và tự động trả lời dựa vào cảm tính. Nhưng nó trả lời quá nhanh.
Thông thường, khi đối mặt với một tình huống chưa rõ ràng, hệ thống 1 sẽ gọi hệ thống 2 để giải quyết vấn đề, nhưng trong bài toán cây gậy và quả bóng, hệ thống 1 đã bị lừa. Nó nhìn vấn đề quá đơn giản, và sai lầm khi tin rằng nó có thể tự mình xử lý.
Bài toán cây gậy và quả bóng đã cho thấy sự lười biếng tư duy một cách bản năng của chúng ta. Khi não hoạt động, ta thường chỉ sử dụng tối thiểu mức năng lượng đủ cho công việc đó. Người ta còn gọi là quy luật nỗ lực tối thiểu. Bởi vì việc đối chiếu kết quả với hệ thống 2 sẽ tốn thêm năng lượng, trí óc sẽ không làm thế vì nó nghĩ chỉ cần dùng hệ thống 1 là đủ.', N'Bạn nghĩ gì khi nhìn thấy các chữ cái “SO_P”? Có thể chưa có gì. Nhưng nếu trước đó bạn nhìn thấy chữ “EAT” (ăn)? Bây giờ, khi nhìn lại chữ “SO_P”, có thể bạn sẽ điền nó thành “SOUP” (súp). Quá trình này trong tâm lý học được gọi là “dẫn nhập", khi tiếp xúc với một thông tin nào đó gây ảnh hưởng lên cách bạn sẽ phản hồi khi gặp thông tin tiếp theo.
Chúng ta bị “mồi” khi bắt gặp một từ, một khái niệm hoặc một sự kiện khiến ta liên tưởng đến những từ và khái niệm liên quan. Nếu bạn nhìn chữ “SHOWER” (tắm) thay vì chữ “EAT” (ăn), có thể bạn sẽ hình dung ra chữ “SOAP” (xà bông tắm).
Quá trình dẫn nhập này không chỉ ảnh hưởng tới cách chúng ta suy nghĩ mà còn tới cách chúng ta hành động. Giống như tâm trí bị ảnh hưởng khi nghe một số từ và khái niệm nhất định, cơ thể chúng ta cũng có thể bị ảnh hưởng tương tự. Một ví dụ tiêu biểu về hiện tượng này được phát hiện ra trong một nghiên cứu khi những người tham gia bị “mồi” bởi những từ gắn với tuổi già như “Florida” và “nếp nhăn”, họ có xu hướng di chuyển chậm hơn bình thường.
Đáng ngạc nhiên là, chúng ta hoàn toàn không ý thức được suy nghĩ và hành động của mình bị tác động bởi quá trình dẫn nhập.
Do đó, trái với lập luận của nhiều người, chúng ta không phải lúc nào cũng có thể kiểm soát một cách có ý thức các hành động, phán đoán và lựa chọn của mình. Thay vào đó chúng ta luôn bị định hướng bởi những điều kiện xã hội và văn hoá nhất định.
Ví dụ, nghiên cứu được thực hiện bởi Kathleen Vohs chứng minh rằng chỉ nghĩ đến tiền sẽ khiến mọi người sống cá nhân hơn. Những người bị “mồi” bằng khái niệm tiền bạc – ví dụ, như nhìn hình ảnh các tờ tiền – sẽ hành động độc lập hơn, ít sẵn sàng dính líu, phụ thuộc hoặc chấp nhận yêu cầu từ người khác. Điều có thể rút ra từ nghiên cứu của Vohs là sống trong một xã hội với nhiều yếu tố vật chất và tiền bạc có thể khiến chúng ta sống ích kỷ hơn.
Quá trình dẫn nhập, giống như các yếu tố xã hội khác, có thể gây ảnh hưởng lên suy nghĩ, việc lựa chọn, đưa ra các phán xét và hành vi của mỗi cá nhân, từ đó chúng lại phản chiếu vào văn hoá và ảnh hưởng tới xã hội mà chúng ta đang sống.
Phán đoán nhanh – tâm trí ra quyết định nhanh như thế nào, kể cả khi nó chưa có đủ thông tin để đưa ra một quyết định mang tính lý trí.
Tưởng tượng bạn gặp một người tên là Ben ở một bữa tiệc, và thấy rằng anh ta rất dễ gần. Sau đó, khi ai đó hỏi bạn có biết ai muốn quyên góp cho hoạt động từ thiện không. Bạn nghĩ ngay đến Ben, mặc dù bạn chỉ mới biết anh ta là một người thân thiện.
Nói cách khác, bạn thích một tính cách của Ben, và bạn cho rằng bạn thích mọi thứ khác về anh ấy. Chúng ta thường có xu hướng yêu hoặc ghét một người dựa trên rất ít thông tin về người đó.
Xu hướng đơn giản hoá mọi thứ khi chưa có đủ thông tin của tâm trí thường dẫn dến những sai sót trong phán đoán. Hiện tượng này được gọi là sự nhất quán cảm xúc phóng đại, hay còn được biết đến với cái tên hiệu ứng hào quang: cảm giác tích cực khi nói chuyện với Ben đã khiến bạn đặt một vòng hào quang lên anh ấy, mặc dù bạn biết rất ít về anh ta.
Nhưng đây không phải là cách duy nhất tâm trí của chúng ta đi “đường tắt” khi đưa ra các phán đoán.
Con người còn mắc phải thiên kiến xác nhận (confirmation bias), xu hướng đồng tình với những thông tin ủng hộ niềm tin của bản thân, cũng như chấp nhận bất cứ điều gì hợp với nó.
Chúng ta có thể quan sát hiện tượng này khi đặt câu hỏi, “Liệu James có thân thiện không?”. Các nghiên cứu đã chỉ ra rằng, khi đối mặt với câu hỏi kiểu này mà không có thông tin nào khác, chúng ta rất dễ xem James là một người thân thiện – bởi vì tâm trí có khuynh hướng tự động đồng ý với những dữ kiện được gợi ý.
Hiệu ứng hào quang và thiên kiến xác nhận xảy ra đồng thời bởi vì tâm trí của chúng ta hấp tấp đưa ra phán xét nhanh. Việc này thường dẫn tới những sai lầm, bởi vì chúng ta không phải lúc nào cũng có đủ dữ liệu để đưa ra các phán đoán chính xác. Tâm trí dựa trên những gợi ý sai lầm và quá trình đơn giản hoá mọi thứ để lấp đầy các thiếu sót về dữ liệu, và từ đó dắt chúng ta đến những kết luận có khả năng sai lầm cao.', N'20 October 2022', N'Nothing in life is quite as important as you think it is while you''re thinking about it.', N'Tư duy nhanh chậm', N'Tư duy nhanh chậm', N'Ngọc Hải', NULL, NULL)
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3], [DayCreate], [Quotes], [Title], [Name], [Author], [ImageDetail], [AuthorQuotes]) VALUES (4, 63, N'./img/blog/details/Secret.webp', N'Các tác giả của The Secret cho rằng những gì bạn nghĩ về là những gì bạn thu hút; ý kiến này cũng hợp lý ở góc độ nào đó. Tuy nhiên, họ khẳng định rằng nguyên tắc “luật hấp dẫn” này là tuyệt đối, những gì bạn nghĩ sẽ luôn đến với bạn. Nếu bạn đọc bản tiếng Anh, bạn sẽ thấy từ “absolute” và “absolutely” xuất hiện rất nhiều lần. Có một quy luật tâm lý: khi một lời khẳng định lặp lại đủ nhiều, người ta sẽ có xu hướng tin nó là sự thật mà không cần bằng chứng.
Các tác giả cũng cho rằng không nghĩ về điều tiêu cực thì mới thu hút thành công; trong khi thực tế thì chuẩn bị làm một việc gì đó mà không cân nhắc đến tất cả các khả năng có thể xảy ra (thành công, thất bại, rủi ro) là thiếu thận trọng, và ảo tưởng. Sự thành công liên quan đến rất nhiều yếu tố mà được cổ nhân tóm gọn bằng câu: “thiên thời, địa lợi, nhân hòa”. Nhưng The Secret chỉ chăm chăm nói đến sự thành công thông qua yếu tố dễ dàng thực hiện nhất trong tất cả các yếu tố: suy nghĩ. Một người làm việc vô kỷ luật sẽ thích ngay cái ý tưởng chỉ cần suy nghĩ tích cực thôi là mọi điều tốt đẹp sẽ đến.', N'The Secret ít nói về hành động. Nó khiến người ta có ấn tượng rằng khả năng của ý nghĩ bá đạo đến mức họ chỉ cần ngồi trên ghế sofa và suy nghĩ về tất cả những gì họ muốn thì vũ trụ sẽ đáp ứng phần còn thiếu. Nếu bạn tin rằng lý lẽ của họ là đúng, bạn thử đánh giá lại xem niềm tin này có phải là một cách để biện minh cho sự chây ì, vô kỷ luật của bản thân hay không.Các tác giả của cuốn sách này không phải là nhà khoa học (những nhân vật phát biểu trong phim The Secret cũng thế), bạn có thể xem tiểu sử ở cuối sách, trừ ông tiến sĩ Fred Alan Wolf, nhưng tiến sĩ Wolf lại phát biểu chỉ vài câu rất cảm tính, chẳng có dẫn chứng khoa học gì.', N'Tóm lại, toàn bộ cuốn sách đầy rẫy những phát biểu thiên kiến, cảm tính, nguy luận. Tôi nghĩ đối tượng mà nó muốn nhắm đến là những kẻ mơ mộng thích tin vào những điều trong truyện cổ tích (nghĩ mình là Aladdin, còn vũ trụ là “cây đèn thần”), những kẻ thích làm ít mà ăn nhiều, hoặc không làm mà muốn có ăn, chứ nó không thích hợp với những người có óc thực tế. Ở một khía cạnh nào đó, tôi tin là luật hấp dẫn có tồn tại, nhưng nó vẫn phải tuân theo luật nhân quả, chứ không "hấp dẫn" và láo toét như những gì mà The Secret đã rao giảng (để lùa gà).', N'20 October 2022', N'“There is no such thing as a hopeless situation. Every single circumstances of your life can change! ”', N'The Secret - Liều ma túy cho tinh thần', N'The Secret', N'Ngọc Hải', NULL, NULL)
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3], [DayCreate], [Quotes], [Title], [Name], [Author], [ImageDetail], [AuthorQuotes]) VALUES (5, 63, N'./img/blog/details/focus.jpeg', N'Mỗi ngày chúng ta có hai mươi tư giờ với bao công việc phải làm. Đã không ít lần ta phải bật thốt lên vì đến hạn nộp bài mà vẫn chưa thể hoàn thành công việc. Những lúc như vậy, ta đổ lỗi cho hoàn cảnh chi phối khiến mình không thể chú tâm vào làm hay chọn cách thỏa hiệp chỉ vì “tôi sinh ra vốn khó tập trung”. Nhưng ngoài việc dễ dàng bỏ cuộc như thế, bạn đã bao giờ nghiêm túc tìm hiểu về các phương pháp để cải thiện điều đó hay chưa? Nếu câu trả lời là chưa thì cuốn sách này chắc chắn sẽ giúp ích được cho bạn.
“𝑵𝒈𝒉𝒆̣̂ 𝒕𝒉𝒖𝒂̣̂𝒕 𝒕𝒂̣̂𝒑 𝒕𝒓𝒖𝒏𝒈: 𝑵𝒂̂𝒏𝒈 𝒄𝒂𝒐 𝒏𝒂̆𝒏𝒈 𝒔𝒖𝒂̂́𝒕, 𝒕𝒐̂́𝒊 𝒖̛𝒖 𝒕𝒉𝒐̛̀𝒊 𝒈𝒊𝒂𝒏, 𝒉𝒊𝒆̣̂𝒖 𝒒𝒖𝒂̉ 𝒃𝒂̂́𝒕 𝒏𝒈𝒐̛̀” là một cuốn sách của nhà tâm thần học nổi tiếng người Nhật Bản - Daigo. Xuyên suốt các chương là những quy tắc, động cơ, phương pháp và kỹ thuật nhằm nâng cao hiệu quả về việc tạo dựng và duy trì sự tập trung để từ đó đưa ra khẳng định: Tập trung là khả năng hoàn toàn có thể hình thành nhờ luyện tập chứ không phải khả năng thiên bẩm. Tập trung là chìa khóa dẫn đến cánh cửa thành công.
Trong chương một và chương hai, tác giả đã chỉ ra ba quy tắc kiểm soát năng lực tập trung và bảy động cơ tạo nên sự tập trung cao độ. Trong chương mở đầu này, nhà tâm thần học Daigo sẽ cho ta biết các quy tắc để tăng cường năng lực tập trung, đồng thời chỉ ra ba hiểu lầm làm hạn chế sự tập trung. Bên cạnh đó, tác giả còn chỉ ra sự khác biệt giữa những người tập trung và những người không tập trung, những lý do tiềm ẩn khiến bạn luôn mệt mỏi từ đó đưa ra các động cơ và phương pháp để tạo sự tập trung cao độ. 
', N'Ở chương 1, tác giả đã nói đến hai điểm tăng cường sức mạnh ý chí và tiết kiệm sức mạnh ý chí, đó chính là một phần để đi vào chương 2 giúp ta hiểu rõ hơn về bảy động cơ kích hoạt khả năng tập trung. Như những lời ông nói: “𝑵𝒆̂́𝒖 𝒌𝒉𝒆́𝒐 𝒍𝒆́𝒐 𝒕𝒂̣̂𝒏 𝒅𝒖̣𝒏𝒈 𝒕𝒖̛̀𝒏𝒈 đ𝒐̣̂𝒏𝒈 𝒄𝒐̛, 𝒃𝒂̣𝒏 𝒄𝒐́ 𝒕𝒉𝒆̂̉ 𝒕𝒉𝒐𝒂̉𝒊 𝒎𝒂́𝒊 𝒕𝒂̣̂𝒑 𝒕𝒓𝒖𝒏𝒈 𝒗𝒐̛́𝒊 𝒔𝒖̛̣ 𝒈𝒊𝒖́𝒑 đ𝒐̛̃ 𝒄𝒖̉𝒂 𝒕𝒊𝒆̂̀𝒎 𝒏𝒂̆𝒏𝒈 𝒃𝒆̂𝒏 𝒕𝒓𝒐𝒏𝒈 𝒎𝒊̀𝒏𝒉”.
Các động cơ mà tác giả Daigo đã nói đến bao gồm:
1. Thay đổi địa điểm học tập và làm việc.
2. Điều chỉnh tư thế ngồi sao cho đúng cách.3. Thực phẩm hằng ngày có liên quan mật thiết đến sự tập trung.
4. Những người tập trung cao độ biết tận dụng cả những cảm xúc tiêu cực.
5. Phát triển thói quen giúp cải thiện sự tập trung.
6. Vận động là nút khởi động lại bộ não.
7. Thiền - phương pháp ngắn và nhanh nhất để kích hoạt chất xám nằm ở vỏ não.
Bằng kết quả của quá trình nghiên cứu đầy tâm huyết, chỉ qua hai chương sách, Daigo đã đưa ra được những ví dụ cụ thể cùng các quy tắc, động cơ giúp cải thiện và duy trì sự tập trung. “𝑵𝒈𝒉𝒆̣̂ 𝒕𝒉𝒖𝒂̣̂𝒕 𝒕𝒂̣̂𝒑 𝒕𝒓𝒖𝒏𝒈: 𝑵𝒂̂𝒏𝒈 𝒄𝒂𝒐 𝒏𝒂̆𝒏𝒈 𝒔𝒖𝒂̂́𝒕, 𝒕𝒐̂́𝒊 𝒖̛𝒖 𝒕𝒉𝒐̛̀𝒊 𝒈𝒊𝒂𝒏, 𝒉𝒊𝒆̣̂𝒖 𝒒𝒖𝒂̉ 𝒃𝒂̂́𝒕 𝒏𝒈𝒐̛̀” có lẽ sẽ là cuốn sách rất hữu ích dành cho những con người đang mệt mỏi và muốn kiếm tìm lại nhiệt huyết, cải thiện lại bộ não của mình.
Để hiểu rõ hơn về những quy tắc, động cơ giúp cải thiện sự tập trung', NULL, N'20 October 2022', N'“I can attest to the fact that life is more fun if you can ignore outside opinions.”', N'Nghệ thuật tập trung ', N'Nghệ thuật tập trung ', N'Ngọc Hải', NULL, NULL)
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3], [DayCreate], [Quotes], [Title], [Name], [Author], [ImageDetail], [AuthorQuotes]) VALUES (6, 63, N'./img/blog/details/Momo.jpeg', N'“Momo” là tên của cô bé nhân vật chính trong tác phẩm. Sau khi đọc xong, tôi nghĩ rằng “Momo” dành cho tất cả mọi người, ở mọi lứa tuổi- chỉ cần trái tim họ vẫn còn có nhịp đập.
Cuốn sách còn kèm thêm một nhan đề khác, là: “Câu chuyện kì lạ về những kẻ ăn cắp thời gian và một cô bé giành lại được cho con người thời gian đã mất”. Tôi khâm phục tầm nhìn trước thời đại của tác giả Michael Ende, khi ông nhận ra thời gian là tài sản giá trị của nhân loại và tài sản ấy có nguy cơ bị đánh cắp. Những thứ quý giá với con người thường là những thứ gần gũi nhất, nhưng đôi khi vì chúng quá gần gũi nên chúng ta quên đi trách nhiệm cần phải giữ gìn.', N'Sự xuất hiện của cô bé Momo trong khu nhà hát cổ giống với mở đầu của một câu chuyện cổ tích thuần túy. Không ai biết chính xác cô bé là con của ai, bao nhiêu tuổi và vì sao cô bé có năng lực lắng nghe khác biệt đến vậy. Từ khi có Momo, mọi người trong thành phố giải quyết mâu thuẫn của họ bằng câu nói “đến gặp Momo đi”. Cô bé Momo chỉ đơn giản lắng nghe họ và thế là vấn đề của họ tan biến. Momo thực lòng quan tâm đến tất cả mọi người, vì vậy mọi người yêu quý cô. Đặc biệt là những người bạn nhỏ và hai người bạn lớn thân thiết: ông Beppo-phu quét đường và anh chàng Gigi- hướng dẫn viên du lịch.
Tôi khá thích chi tiết này, bởi thông điệp giáo dục ẩn chứa trong cách mà Momo lắng nghe mọi người cũng như cách mọi người chăm sóc Momo. Có thể nói đó là một đời sống hạnh phúc, khi mọi người trân trọng cảm nhận và sự hiện diện của nhau. Đáng lẽ ra, con người hoàn toàn xứng đáng, thế nhưng họ đã đánh rơi hạnh phúc của chính mình khi tiết kiệm thời gian cho những “gã màu xám” (một hình ảnh ấn dụ thú vị, khiến tôi liên tưởng đến làn khói xám từ những ống khói màu xám trong sự quay cuồng của quá trình công nghiệp hóa, cho tới những dữ liệu máy móc xám xịt điên cuồng biến đổi trong trào lưu chuyển đổi mọi thứ sang các thuật toán).
Những gã xám này được miêu tả là dùng mọi thứ đồ màu xám. Chúng mặc áo xám, đội mũ quả dưa, xách cặp xám. Đặc biệt là miệng luôn ngậm những điếu xì gà phun khói xám mờ mịt. Loại xì gà đó được lấy từ những cánh hoa giờ đã ép khô, mà thiếu chúng các gã xám sẽ biến mất. Những cánh hoa giờ đó được lấy ở đâu ra? Chính là từ thứ mà chúng gọi là “Quỹ tiết kiệm thời gian”. Lòng tham cùng sự khôn ranh đã khiến chúng biến “Quỹ tiết kiệm thời gian” này thành nơi ngang nhiên chiếm đoạt thời gian của con người. Sau khi chúng thuyết phục họ bằng những phép tính cụ thể, kèm theo lý lẽ của việc càng tiết kiệm nhiều thời gian (làm mọi thứ càng nhanh hơn, hiệu quả hơn, nhiều hơn) thì con người càng có lợi. Lý thuyết nực cười đó không ngờ rằng lại phát huy tác dụng mãnh liệt với những người trưởng thành. Họ ngờ nghệch tin rằng càng tiết kiệm thời gian thì họ càng giàu. Nhưng thực ra, đời sống họ trở nên nghèo nàn, khốn khổ và bất hạnh bởi chính sự nhầm lẫn ấy.
Một sinh vật chỉ thực sự được sống khi chúng có thời gian. Còn nếu không có thời gian, sinh vật đó đã chết. Liệu nói vậy có hơi khó hiểu? Vậy thay vì nghĩ đến tiếng tích tắc của đồng hồ, bạn hãy nghĩ tới nhịp đập của trái tim. Trái tim chính là thời gian của bạn, chứ không phải bất kể chiếc đồng hồ hay cuốn lịch nào khác. Do đó, ngày tim ngừng đập là ngày bạn hết thời gian. Còn đồng hồ vẫn sẽ chạy, những cuốn lịch mới vẫn sẽ tiếp tục sang trang.', N'Người dân thành phố khốn khổ đã không còn thời gian “đến chỗ Momo” nữa. Họ bận rộn rồi dần dần khô kiệt trước khi gục ngã. Họ chán ghét chính cuộc đời không thừa giây phút nào của họ, bị trói buộc bởi hai chữ “hiệu quả” đến mức mù quáng. Những chiếc xe hơi xám, những gã xám vẫn lượn xuôi ngược trên phố để dụ dỗ thêm các nạn nhân mới. Chúng bực bội nhận ra trẻ em tuy ngây thơ nhưng không ngờ nghệch như người lớn, nên rất khó để đưa ra lý thuyết về tính “hiệu quả”. Thế là chúng tác động đến người lớn, để trong lúc bận rộn, họ không được phép để con cái mình rảnh rỗi. Trẻ em cần phải được chuẩn bị cho tương lai, nên không có những trò “vô bổ” kiểu như chơi với Momo nữa. Thế là các “Kho chứa trẻ em” được thành lập. Nơi trẻ em được dạy cách chơi sao cho bổ ích thì ít, mà đáp ứng kì vọng của người lớn thì nhiều. Kho là nơi dành cho đồ vật, không phải con người.Một bước tiến nhân danh sự tiến hóa song không ai nhận ra bước đi này đang theo chiều ngược lại: đó là thoái hóa. Giờ thì những gã xám kiểm soát thành phố.
Còn Momo đáng thương bị truy đuổi khi khám phá ra sự thật về chúng. Đây là lúc chú rùa Kassiopeia xuất hiện. Sau khi cứu thoát Momo, chú đưa cô tới bên rìa thời gian, nơi ở của thầy Hora. Tôi nghĩ rằng thầy Hora là một vị thần thượng cổ. Ông chế tạo rồi ban phát thời gian cho con người. Con người toàn quyền sử dụng thời gian đó, nhưng giá như thầy Hora có thêm một cộng sự là chế tạo thêm chút trí tuệ cho con người thì tốt biết bao: con người sẽ trân trọng thời gian họ nhận được hơn.
Thầy Hora dẫn Momo đến nơi khám phá bí mật của thời gian. Một nơi rất xa xôi mà cũng rất gần gũi đối với con người. Về phần mình, Momo- có lẽ cũng chỉ còn Momo,  trả lời được câu đố của thầy về quá khứ, hiện tại, tương lai. Đến lúc cô trở lại để giúp đỡ những người bạn của mình, nhưng liệu mọi thứ có phải đã quá muộn, khi đội quân xám đã xâm chiếm trọn vẹn thành phố và sự thay đổi của hai người bạn Beppo-phu quét đường, Gigi-hướng dẫn viên du lịch cùng toàn bộ đám trẻ có khiến Momo thất vọng?.
Những gã xám rất nóng lòng đợi Momo trở lại để đám phán với cô. Thời gian trở thành thứ để đổi chác, lừa lọc, để chiếm đoạt của nhau. Vậy mà cư dân nào trong thành phố cũng nghĩ rằng họ đang tiết kiệm thời gian, rằng bông hoa giờ của họ đang được nâng niu cho tới khi kết trái, trong khi không hề nhận ra rằng cánh hoa đó bị ép khô rồi nghiền nát từ lâu để biến thành điếu xì gà đỏ rực trong nụ cười nhếch mép của những gã xám vừa lướt ngang qua họ.
Còn tôi cũng xin phép bạn đọc dừng bài review tại đây để bạn tự tìm đọc tác phẩm. Tôi làm như vậy không phải để quảng cáo hay chào mời các bạn mua sách (theo tôi biết thì hiện giờ không dễ kiếm được bản in giấy của cuốn sách này) mà để khích lệ các bạn tự tìm đọc, tự rút ra thông điệp của riêng mình.', N'20 October 2022', N'"If such things have not been part of your own experience, you probably won''t understand what Bastian did next.”', N'Momo', N'Momo', N'Ngọc Hải', NULL, NULL)
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3], [DayCreate], [Quotes], [Title], [Name], [Author], [ImageDetail], [AuthorQuotes]) VALUES (7, 63, N'./img/blog/details/travel2.jpeg', N'Đầu tiên, chiếc title của bài viết này đã từng xuất hiện trong bài viết về top 5 sách du học mà mình đã đăng tải cách đây không lâu. Sau khi đăng lên, mình nhận ra là trong số 5 cuốn sách du học mình kể, thì cuốn Bước Ra Thế Giới là cuốn sách “em út”, mới ra mắt độc giả nóng hổi vài tháng trở lại đây, nên mặt bằng chung còn khan hiếm review bạn sách này. Thế nên, mình đã quay trở lại với một phiên bản nhiều chữ hơn và chi tiết hơn về bạn ý, với hy vọng là có thể giúp cho một cuốn sách hay đến được tận tay đông đảo người cần hơn nữa.', N'Đối với mình, những cuốn sách mang chủ đề đặc thù như du học sẽ cần phải được highlight thật to và rõ ràng đối tượng sử dụng sách. Bởi lẽ cùng là về du học đấy, nhưng mỗi một lứa tuổi, trình độ, nhu cầu, nguyện vọng mà họ cũng tìm kiếm những thông tin đặc thù riêng.
Thì ở đây, mình muốn gạch chân, in đậm, in nghiêng trước tiên rằng đây là cuốn sách dành cho những ai đang và sẽ có ý định, lên kế hoạch đi du học và/hoặc thi đậu học bổng toàn phần bậc Thạc sĩ và Tiến sĩ. Tập độc giả này sẽ chiếm khoảng 85-90% dựa trên khối lượng nội dung cuốn sách. 
Tuy vậy, khoảng 10-15% số độc giả còn lại có rơi vào nhóm phụ huynh và học sinh cấp 3, điều này có nghĩa là nếu như bạn đang tìm kiếm cơ hội du học bậc Đại học cho bản thân mình hay người thân yêu, thì vẫn có những nội dung liên quan đến du học Mỹ hay Đức mà bạn có thể khai thác, bên cạnh việc sử dụng cuốn sách như một nguồn tham khảo để chuẩn bị một cách chuyên sâu cho hành trình vươn ra biển lớn của mình.', N'Một điều nho nhỏ cần phải lưu ý là, vì đây là cuốn sách du học dành cho bậc Thạc sĩ, Tiến sĩ, nên độc giả sẽ cần vận dụng một (vài) chút vốn tiếng Anh của mình.
Ngoài ra, để làm rõ hơn tập độc giả cũng như để tránh làm phí phạm thời gian hay vật chất của bạn, mình sẽ nói luôn cuốn sách du học bậc Thạc sĩ, Tiến sĩ này hiện đang dừng lại ở các nhóm chuyên ngành sau: Y dược, Khoa học Máy tính, Công nghệ Thông tin, Kỹ thuật, Kinh doanh và Giáo dục. Bởi vậy, nếu như bạn đang chờ mong sẽ tìm thấy nhiều thông tin hữu ích để du học về các ngành như Tâm lý, Xã hội, Nghệ thuật… thì tiếc rằng Bước Ra Thế Giới chưa thể hẹn gặp bạn ở ấn phẩm này.', N'20 October 2022', N'"Success comes to those who become success conscious." ', N'Để cho thế giới biết bạn là ai', N'Để cho thế giới biết bạn là ai', N'Ngọc Hải', NULL, NULL)
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3], [DayCreate], [Quotes], [Title], [Name], [Author], [ImageDetail], [AuthorQuotes]) VALUES (8, 63, N'./img/blog/details/SunShine.webp', N'Mọi người gọi Ngàn Mặt Trời Rực Rỡ là trường ca về nỗi đau và hy vọng của Khaled Hosseini. Mình muốn nói sơ qua về tác giả vì có lẽ cái tên này ở Việt Nam vẫn còn hơi xa lạ, nhưng với nền xuất bản toàn cầu thì Khaled Hosseini là một cây bút nổi bật sáng giá nhờ văn phong sâu sắc, những con chữ rung động và những bài học về lòng người đầy nhân văn.', N'Những tác phẩm của Khaled Hosseini mang đậm hoài niệm về một đất nước Afghanistan đã từng đẹp mộng mơ đến kiêu hãnh với sự tự do bất tận, lấp lánh như một bức tranh cát trước tất cả bi kịch đã đổ máu trên đất nước này. Đừng nghĩ về Trung Đông như một nơi xa xôi loạn lạc, đọc những cuốn sách của Khaled Hosseini, bạn sẽ thấy một nền văn minh rực rỡ trước những lụi tàn đáng tiếc của hiện tại.', N'Ngàn Mặt Trời Rực Rỡ là câu chuyện kể về hai nữ nhân vật chính sau những biến cố đầu đời thì về chung sống một mái nhà trong thời kì biến động của Afghanistan. Mình sẽ không nói quá nhiều về cốt truyện để dành cho mọi người thưởng thức. Truyện từ đầu đến cuối ngập tràn những thứ tình cảm gia đình bình yên, nhưng cũng dẫn mình đi một quãng đường dài của đau khổ và mất mát, của hi vọng bùng cháy rồi lại lụi tàn.
Lồng trong bối cảnh lịch sử chân thật của Afghanistan, những biến động xảy ra trong bốn thập kỉ đầy đau thương, đổ máu của đất nước Trung Đông đầy tự hào ấy đã khiến cho cuộc đời của hai nhân vật chính trở nên chân thật hơn. Những nỗi đau, câu chuyện, nỗi bất hạnh khôn cùng và sự bền bỉ của hai người phụ nữ cũng chạm đến tận sâu thẳm tâm hồn. Cuối cùng thì sau những tăm tối là ánh sáng của hi vọng, và ngàn mặt trời vẫn sẽ rực rỡ vào ngày mới.', N'20 October 2022', N'“A boy who won’t stand up for himself becomes a man who can’t stand up to anything.”', N'Ngàn mặt trời rực rỡ', N'Ngàn mặt trời rực rỡ', N'Ngọc Hải', NULL, NULL)
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3], [DayCreate], [Quotes], [Title], [Name], [Author], [ImageDetail], [AuthorQuotes]) VALUES (9, 63, N'./img/blog/details/alone.webp', N'Chào các bạn, lại là mình Dory đây. Có bạn nào bắt đầu đọc một cuốn sách vì một sự nhầm lẫn. Nhưng rồi chính sự nhầm lẫn đó lại đưa đến cho bạn một trải nghiệm thực sự tuyệt vời không? Với mình, thì đó là Những Người Đẹp Say Ngủ của cố nhà văn Kawabata Yasunari. ', N'Là một trong những tác gia lớn nhất của văn học Nhật Bản thế kỷ XX, Kawabata Yasunari là nhà văn Nhật Bản đầu tiên đoạt giải Nobel Văn Học. Các tác phẩm nổi bật của ông có thể kể đến như Hồ, Xứ Tuyết, Ngàn Cánh Hạc Bay, Tiếng Rền Của Núi… Văn chương của ông ngập tràn nỗi cô đơn, sự mất mát và mong manh của cuộc sống. Có lẽ một phần cũng bởi vì tuổi thơ bất hạnh và đầy đau thương mà ông đã phải trải qua khi mồ côi cả cha lẫn mẹ khi mới lên 2. Ông chuyển đến sống cùng ông bà ngoại và chị gái. Nhưng khi ông lên 7 thì bà mất, lên 9 thì chị ông qua đời và đến năm 14 tuổi thì mất cả ông ngoại.  Ban đầu, lúc nhìn trên giá sách mình bị nhầm với một cuốn tên gần giống mà mình không nhớ rõ của bác Keigo. Đến lúc cầm trên tay thì mới biết là không phải. Nhưng rồi lỡ cầm lên mà lại đặt xuống thì có lỗi với cuốn sách quá. Bìa sách của Nhã Nam có khác, cực kỳ ấn tượng, và chất lượng giấy thì không chê vào đâu được. Thế là mình bắt đầu đọc, rồi chìm hẳn vào đó. Dịch giả Uyên Thiểm thực sự đã thành công khi chuyển ngữ một tác phẩm - mà chính bản thân nó cũng gây không ít điều tiếng cho tác giả - trở nên tinh tế và đầy tính nghệ thuật như thế. ', N'Những Người Đẹp Say Ngủ là tác phẩm kể về ông lão Eguchi đã ngoài 60 tuổi - độ tuổi bước vào phía bên kia của cuộc đời. Ban đầu, vì tò mò nên mình đã theo lời giới thiệu của người bạn mà tới ghé thăm ngôi nhà của “những người đẹp say ngủ”- nơi các cô gái khỏa thân đang ngủ li bì để ngủ lại một đêm bên những cô gái ấy. Tự nhủ chỉ ghé một lần duy nhất. Nhưng rồi lần thứ nhất, lần thứ hai, rồi lần thứ ba và những lần sau đó nữa, Eguchi đã bị cuốn vào trong một “ma trận” của những ký ức và những nỗi niềm cô đơn sâu thẳm mà chẳng cách nào ông có thể thoát ra.Mình biết là nhiều bạn khi đọc đến đây sẽ cảm thấy hơi “gai gai”. Gì cơ? Ông già? Nằm cạnh những cô gái khỏa thân, lại còn bị làm cho ngủ li bì? thật luôn? Đúng là kinh tởm và bệnh hoạn. Nhưng gượm đã, nhẫn nại chút nào, bình tĩnh chút thôi. Đâu phải tự nhiên mà tác phẩm này được mệnh danh là kiệt tác tiêu biểu cho thời kỳ sau của Kawabata đâu.
Ai trong chúng ta chẳng có một thời son trẻ? Và ai trong chúng ta theo thời gian mà chẳng già đi? Đắm mình trong cái quá khứ huy hoàng và rồi tự nhìn lại bản thân, nuối tiếc vì những gì mình từng bỏ lỡ?
Eguchi cũng vậy. Ông cũng từng có những năm tháng trẻ trung tràn đầy nhựa sống. Nhưng rồi năm tháng trôi qua, ông của hiện tại đã trở thành một ông già gần bước đến tuổi 70, ngày ngày sống trong những hoài niệm về quá khứ.Điều khiến mình gần như ngay lập tức thích Những Người Đàn Bà Say Ngủ chắc là phần nào đồng cảm về những nỗi cô đơn. Và nhất là thứ giọng văn nhẹ nhàng, mềm mỏng như một cơn gió nhưng đầy xúc cảm và có thể luồn tới nơi thẳm sâu nhất nội tâm con người của Kawabata. Chẳng có ngôn từ nào đao to búa lớn, chỉ là những dòng tâm tình thủ thỉ tự sự nhưng lại có một lực “sát thương” đến không ngờ.
Phải cô đơn đến mức nào để một ông già như Eguchi chấp nhận trả tiền chỉ để được ngủ một đêm bên cạnh những cô gái đang ngủ li bì như chết? Phải khát khao được chuyện trò, được bộc bạch nỗi lòng của mình đến mức nào để ông hết lần này đến lần khác trở lại ngôi nhà ấy? Và rằng ông đã sợ hãi cái chết đến bao nhiêu để luôn mang một nỗi hoài nghi mơ hồ rằng cô gái bên cạnh mình không còn hơi thở?', N'20 October 2022', N'“Time flows in the same way for all human beings; every human being flows through time in a different way.”', N'Những người đẹp say ngủ', N'Những người đẹp say ngủ', N'Ngọc Hải', NULL, NULL)
INSERT [dbo].[Blog] ([BlogID], [BId], [BlogImage], [BlogCon1], [BlogCon2], [BlogCon3], [DayCreate], [Quotes], [Title], [Name], [Author], [ImageDetail], [AuthorQuotes]) VALUES (10, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
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
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (75, N'Bài Tập Cơ Bản Và Nâng Cao - Toán 5 Tiểu Học (Tập 2)', 15000, 12000, 10, 8, N'https://www.vinabook.com/images/thumbnails/product/240x/15355_p21751.jpg', N'0', N'1', N'0', N'1')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (76, N'Tuyển Chọn Đề Ôn Luyện Và Tự Kiểm Tra Toán 4 - Tập 1', 38000, 32000, 11, 8, N'https://www.vinabook.com/images/thumbnails/product/240x/373608_p96649mscreenshot20220921125159.jpg', N'0', N'0', N'1', N'0')
INSERT [dbo].[Book] ([BId], [BName], [BPrice], [BPriceSale], [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], [Popular]) VALUES (77, N'Lịch Bàn Chữ A 2018 - Life Is Beautiful', 10000, 92000, 0, 9, N'https://www.vinabook.com/images/thumbnails/product/240x/271644_p77118mlife.jpg', N'1', N'1', N'0', N'1')
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
INSERT [dbo].[Feedback] ([FId], [Email], [Name], [Content]) VALUES (8, N'ngochai06122002@gmail.com', N'Lê Trương Ngọc Hải', N'Sản phẩm Tốt')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UID], [UName], [UPhone], [UImage], [Email], [UPass], [UTK], [isShell], [isUser], [isAdmin]) VALUES (4, N'Hải', N'010101', NULL, N'ngochai@gmail.com', N'123456', N'AdminHai', N'0', N'0', N'1')
INSERT [dbo].[User] ([UID], [UName], [UPhone], [UImage], [Email], [UPass], [UTK], [isShell], [isUser], [isAdmin]) VALUES (5, N'Hiệu', N'010101', NULL, N'Hieu@gmail.com', N'123456', N'UserHieu', N'0', N'1', N'0')
INSERT [dbo].[User] ([UID], [UName], [UPhone], [UImage], [Email], [UPass], [UTK], [isShell], [isUser], [isAdmin]) VALUES (6, N'Phuc', N'111111111', NULL, N'phuc@gmail', N'11111', N'AdminPhuc', NULL, NULL, NULL)
INSERT [dbo].[User] ([UID], [UName], [UPhone], [UImage], [Email], [UPass], [UTK], [isShell], [isUser], [isAdmin]) VALUES (15, N'baboga', N'0814069391', N'0', N'ngochai06122002@gmail.com', N'123456', N'AdminLuong', N'0', N'1', N'0')
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
ALTER TABLE [dbo].[CartList]  WITH CHECK ADD FOREIGN KEY([BID])
REFERENCES [dbo].[Book] ([BId])
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
