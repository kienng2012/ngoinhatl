USE [db_webgiaoducver2]
GO
/****** Object:  User [vzone]    Script Date: 06/03/2014 09:06:00 ******/
CREATE USER [vzone] FOR LOGIN [vzone] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [db_webvzone]    Script Date: 06/03/2014 09:06:00 ******/
CREATE USER [db_webvzone] FOR LOGIN [db_webvzone] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 06/03/2014 09:06:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[C_ID] [int] IDENTITY(1,1) NOT NULL,
	[C_Name] [nvarchar](50) NULL,
	[C_Description] [ntext] NULL,
	[C_ImageURL] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([C_ID], [C_Name], [C_Description], [C_ImageURL]) VALUES (1, N'Tin Tức', N'Tin Tức', NULL)
INSERT [dbo].[Category] ([C_ID], [C_Name], [C_Description], [C_ImageURL]) VALUES (2, N'Môn học', N'Môn học', NULL)
INSERT [dbo].[Category] ([C_ID], [C_Name], [C_Description], [C_ImageURL]) VALUES (3, N'Cá nhân ', N'Cá Nhân', NULL)
INSERT [dbo].[Category] ([C_ID], [C_Name], [C_Description], [C_ImageURL]) VALUES (4, N'Bảng vàng', N'Bảng vàng', NULL)
INSERT [dbo].[Category] ([C_ID], [C_Name], [C_Description], [C_ImageURL]) VALUES (5, N'Thể lệ', N'Thể lệ', NULL)
INSERT [dbo].[Category] ([C_ID], [C_Name], [C_Description], [C_ImageURL]) VALUES (16, N'Trang chủ', N'Trang chủ', NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  StoredProcedure [dbo].[Advertise_Update]    Script Date: 06/03/2014 09:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Advertise_Update]
(
	@AdvID int,
	@FileName nvarchar (100),
	@AdvWidth int,
	@AdvHeight int,
	@AdvURL nvarchar (100),
	@AdvText ntext,
	@AddedDate datetime,
	@ExpireDate datetime,
	@ClickCount int,
	@AdvPosition nvarchar (50),
	@IsActive bit
)
AS
UPDATE Advertise SET
	FileName = @FileName,
	AdvWidth = @AdvWidth,
	AdvHeight = @AdvHeight,
	AdvURL = @AdvURL,
	AdvText = @AdvText,
	AddedDate = @AddedDate,
	ExpireDate = @ExpireDate,
	ClickCount = @ClickCount,
	AdvPosition = @AdvPosition,
	IsActive = @IsActive

WHERE AdvID=@AdvID
GO
/****** Object:  StoredProcedure [dbo].[Advertise_Insert]    Script Date: 06/03/2014 09:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Advertise_Insert]
(
	@FileName nvarchar (100),
	@AdvWidth int,
	@AdvHeight int,
	@AdvURL nvarchar (100),
	@AdvText ntext,
	@AddedDate datetime,
	@ExpireDate datetime,
	@ClickCount int,
	@AdvPosition nvarchar (50),
	@IsActive bit
)
AS
INSERT INTO Advertise
(
	FileName,
	AdvWidth,
	AdvHeight,
	AdvURL,
	AdvText,
	AddedDate,
	ExpireDate,
	ClickCount,
	AdvPosition,
	IsActive
)
VALUES 
(
	@FileName,
	@AdvWidth,
	@AdvHeight,
	@AdvURL,
	@AdvText,
	@AddedDate,
	@ExpireDate,
	@ClickCount,
	@AdvPosition,
	@IsActive
)
RETURN @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Advertise_GetInfo]    Script Date: 06/03/2014 09:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Advertise_GetInfo]
	@AdvID int
AS
SELECT * FROM Advertise
WHERE AdvID = @AdvID
GO
/****** Object:  StoredProcedure [dbo].[Advertise_GetAll]    Script Date: 06/03/2014 09:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Advertise_GetAll]
AS
SELECT * FROM Advertise
GO
/****** Object:  StoredProcedure [dbo].[Advertise_Delete]    Script Date: 06/03/2014 09:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Advertise_Delete]
	@AdvID int
AS
DELETE Advertise 
WHERE AdvID = @AdvID
GO
/****** Object:  Table [dbo].[CategorySub]    Script Date: 06/03/2014 09:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategorySub](
	[CS_ID] [int] IDENTITY(1,1) NOT NULL,
	[CS_Name] [nvarchar](500) NULL,
	[CS_Description] [ntext] NULL,
	[CS_ImageURL] [nvarchar](200) NULL,
	[C_ID] [int] NULL,
	[CS_Content] [ntext] NULL,
	[CS_Cmd] [nvarchar](50) NULL,
	[CS_TypeDisplay] [int] NULL,
	[CS_CreateDate] [datetime] NULL,
	[U_UserName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CS_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CategorySub] ON
INSERT [dbo].[CategorySub] ([CS_ID], [CS_Name], [CS_Description], [CS_ImageURL], [C_ID], [CS_Content], [CS_Cmd], [CS_TypeDisplay], [CS_CreateDate], [U_UserName]) VALUES (1, N'Âm nhạc', N'Kho t&#224;ng &#226;m nhạc phong ph&#250; của Việt Nam v&#224; thế giới. Những bản t&#236;nh ca bất hủ, những ca sỹ, nhạc sỹ l&#224;m n&#234;n sự th&#224;nh c&#244;ng của nền &#226;m...', N'/Skin/Images/Category/âm nhạc.jpg', 2, N'<p style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify;">Để Đăng k&yacute; tham gia m&ocirc;n &Acirc;m nhạc soạn:&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">DK AN</strong>&nbsp;gửi&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">777</strong></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify;">Khi đang tham gia m&ocirc;n kh&aacute;c muốn chuyển sang tham gia m&ocirc;n &Acirc;m nhạc soạn:&nbsp;<b>AN</b>&nbsp;gửi&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">777</strong></p>', N'DK AN;AN', 1, CAST(0x0000A2660099097C AS DateTime), N'hanhcm')
INSERT [dbo].[CategorySub] ([CS_ID], [CS_Name], [CS_Description], [CS_ImageURL], [C_ID], [CS_Content], [CS_Cmd], [CS_TypeDisplay], [CS_CreateDate], [U_UserName]) VALUES (2, N'Tiếng Việt', N'M&#244;n tiếng việt gi&#250;p bạn t&#236;m hiểu kho t&#224;ng ca dao, tục ngữ, vẻ đẹp đa dạng của ng&#244;n ngữ Tiếng Việt', N'/Skin/Images/Category/tiếng việt.jpg', 2, N'<p style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify;">Để Đăng k&yacute; tham gia m&ocirc;n Tiếng Việt soạn:&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">DK TV</strong>&nbsp;gửi&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">777</strong></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify;">Khi đang tham gia m&ocirc;n kh&aacute;c muốn chuyển sang tham gia m&ocirc;n Tiếng Việt soạn:&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">TV</strong>&nbsp;gửi&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">777</strong></p>', N'DK TV;TV', 1, CAST(0x0000A2660098A59D AS DateTime), N'hanhcm')
INSERT [dbo].[CategorySub] ([CS_ID], [CS_Name], [CS_Description], [CS_ImageURL], [C_ID], [CS_Content], [CS_Cmd], [CS_TypeDisplay], [CS_CreateDate], [U_UserName]) VALUES (3, N'Toán học', N'To&#225;n học l&#224; m&#244;n khoa học nghi&#234;n cứu về c&#225;c số, cấu tr&#250;c, kh&#244;ng gian v&#224; c&#225;c ph&#233;p biến đổi. N&#243;i một c&#225;ch kh&#225;c, người ta...', N'/Skin/Images/Category/toán học.PNG', 2, N'<p style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify;">Để Đăng k&yacute; tham gia m&ocirc;n To&aacute;n soạn:&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">DK TOAN</strong>&nbsp;gửi&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">777</strong></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify;">Khi đang tham gia m&ocirc;n kh&aacute;c muốn chuyển sang tham gia m&ocirc;n To&aacute;n soạn:&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">TOAN</strong>&nbsp;gửi&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">777</strong></p>', N'DK Toan;Toan', 1, CAST(0x0000A26600993717 AS DateTime), N'hanhcm')
INSERT [dbo].[CategorySub] ([CS_ID], [CS_Name], [CS_Description], [CS_ImageURL], [C_ID], [CS_Content], [CS_Cmd], [CS_TypeDisplay], [CS_CreateDate], [U_UserName]) VALUES (4, N'Ngoại ngữ', N'Ngoại ngữ, được hiểu l&#224; Tiếng nước ngo&#224;i. Trong tiếng Anh gọi l&#224; Foreign language. Ở Việt Nam, kh&#244;ng c&#243; kh&#225;i niệm ng&#244;n ngữ thứ hai (second language...', N'/Skin/Images/Category/tiếng anh.jpg', 2, N'<p style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify;">Để Đăng k&yacute; tham gia m&ocirc;n Ngoại ngữ soạn:&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">DK TA</strong>&nbsp;gửi&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">777</strong></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify;">Khi đang tham gia m&ocirc;n kh&aacute;c muốn chuyển sang tham gia m&ocirc;n To&aacute;n soạn:&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">TA</strong>&nbsp;gửi&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">777</strong></p>', N'DK TA;TA', 1, CAST(0x0000A2660099218B AS DateTime), N'hanhcm')
INSERT [dbo].[CategorySub] ([CS_ID], [CS_Name], [CS_Description], [CS_ImageURL], [C_ID], [CS_Content], [CS_Cmd], [CS_TypeDisplay], [CS_CreateDate], [U_UserName]) VALUES (5, N'Tổng hợp', N'Cung cấp nhiều thể loại kiến thức, khoa học thưởng thức kh&#225;c nhau. Cung cấp c&#225;i nh&#236;n to&#224;n diện về thế giới quan của con người.', N'/Skin/Images/Category/tổng hợp.jpg', 2, N'<p style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify;">Để Đăng k&yacute; tham gia kiến thức Tổng hợp soạn:&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">DK</strong>&nbsp;gửi&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">777</strong></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify;">Khi đang tham gia m&ocirc;n kh&aacute;c muốn chuyển sang tham gia kiến thức Tổng hợp soạn:&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">NT</strong>&nbsp;gửi&nbsp;<strong style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">777</strong></p>', N'DK; NT', 1, CAST(0x0000A2660099403F AS DateTime), N'hanhcm')
INSERT [dbo].[CategorySub] ([CS_ID], [CS_Name], [CS_Description], [CS_ImageURL], [C_ID], [CS_Content], [CS_Cmd], [CS_TypeDisplay], [CS_CreateDate], [U_UserName]) VALUES (6, N'Bộ trưởng bộ y tế hỗ trợ 10 triệu đồng đến em Huỳnh Thái Vân ', N' Ng&#224;y đăng : 11/09/2013

Kh&#226;m phục nghị lực vượt qua bệnh tật cũng như đồng cảm với ho&#224;n cảnh kh&#243; khăn của em Huỳnh Th&#225;i V&#226;n, Bộ trưởng Bộ Y tế Nguyễn...', N'/Skin/Images/Category/ai-van-2-561af-09271.jpg', 1, N'<div class="title-news-details"><a href="http://giaoduc.hts.vn/Chi-tiet-dich-vu/dich-vu-80.htm#">                         <span id="ctl00_ContentPlaceHolder1_ctl00_lblName">Bộ trưởng bộ y tế hỗ trợ 10 triệu đồng đến em Huỳnh Th&aacute;i V&acirc;n </span></a></div>
<div class="date-news-details"><span style="color: #969696; font-size: 11px">Ng&agrave;y đăng :                         <span id="ctl00_ContentPlaceHolder1_ctl00_lblCreateDate">11/09/2013</span>                     </span></div>
<center>
<div class="image-news-details">&nbsp;</div>
</center>
<p><span style="color: #424142; font-size: 12px; text-align: justify;">                                 <span id="ctl00_ContentPlaceHolder1_ctl00_lblContent"> </span></span></p>
<p>Kh&acirc;m  phục nghị lực vượt qua bệnh tật cũng như đồng cảm với ho&agrave;n cảnh kh&oacute;  khăn của em Huỳnh Th&aacute;i V&acirc;n, Bộ trưởng Bộ Y tế Nguyễn Thị Kim Tiến đ&atilde; gửi  tới em số tiền 10 triệu đồng tr&iacute;ch từ &quot;Quĩ Ng&agrave;y mai tươi s&aacute;ng&quot;</p>
<div>Em Huỳnh Thị &Aacute;i V&acirc;n, qu&ecirc; ở ấp Mỹ Quới, x&atilde; Mỹ Trung Thạnh, huyện Tam   B&igrave;nh, tỉnh Vĩnh Long (nh&acirc;n vật trong b&agrave;i viết &ldquo;Kh&aacute;t vọng vươn l&ecirc;n của   nữ sinh mang khối u hốc mũi&rdquo; đăng tr&ecirc;n chuy&ecirc;n mục Tấm l&ograve;ng Nh&acirc;n &aacute;i B&aacute;o   D&acirc;n tr&iacute; ng&agrave;y 24/8/2013) ph&aacute;t hiện bị ung thư khi mới 17 tuổi, tức l&agrave;  l&uacute;c  em đang học hết lớp 11.</div>
<div>&nbsp;</div>
<div><span style="FONT-FAMILY: Tahoma; FONT-SIZE: 10pt">Em  Huỳnh Thị &Aacute;i  V&acirc;n vừa phải chống chọi với bệnh ung thư qu&aacute;i &aacute;c, vừa phải  lao động để  trang trải chi ph&iacute; học đại học&nbsp;trong thời gian tới</span></div>
<div>&nbsp;</div>
<div>Cuộc sống của &Aacute;i V&acirc;n c&ograve;n đ&aacute;ng thương hơn khi cha mẹ rời bỏ đi khi   em mới bảy tuổi, cha c&oacute; vợ mới, mẹ đi lấy chồng. Cuộc sống của em nương   nhờ v&agrave;o b&agrave; nội gi&agrave; v&agrave; người b&aacute;c nằm trong diện x&oacute;a đ&oacute;i giảm ngh&egrave;o. Em   d&agrave;nh tất cả cho việc học, lao động đủ mọi c&ocirc;ng việc để c&oacute; tiền mua s&aacute;ch   vở, đ&oacute;ng học ph&iacute; như đi m&ograve; cua, bắt ốc, đan đệm&hellip;</div>
<div>&nbsp;</div>
<div align="center"><img width="450" align="middle" style="MARGIN: 5px" alt="Bộ trưởng Bộ Y tế hỗ trợ 10 triệu đồng đến em Huỳnh Thị &Aacute;i V&acirc;n" src="http://dantri4.vcmedia.vn/Kx7cgdq7pDa1mYK6PHU8/Image/2013/09/20130904_141544-26ec3.jpg" _fl="" /><br />
<span style="FONT-FAMILY: Tahoma; FONT-SIZE: 10pt">Bộ  Y tế gửi c&ocirc;ng văn  gi&uacute;p đỡ em &Aacute;i V&acirc;n 10 triệu đồng từ Quỹ Ng&agrave;y mai tươi  s&aacute;ng, l&agrave; quỹ  chuy&ecirc;n d&agrave;nh hỗ trợ cho c&aacute;c bệnh nh&acirc;n ung thư</span></div>
<div>&nbsp;</div>
<div>Những nỗ lực của em rồi cũng được đền đ&aacute;p khi em thi đỗ v&agrave;o ng&agrave;nh   Văn Trường đại học Cần Thơ kỳ thi đại học năm nay. C&oacute; điều, niềm vui đậu   đại học lại k&egrave;m với bao nỗi &acirc;u lo cơm &aacute;o gạo tiền, m&agrave; đặc biệt l&agrave; căn   bệnh ung thư em vẫn đang phải chiến đấu từng ng&agrave;y. Chỉ trong năm qua &Aacute;i   V&acirc;n đ&atilde; phải trải qua 10 lần h&oacute;a trị, 4 lần xạ trị khiến t&oacute;c rụng sạch,   cơ thể gầy c&ograve;m ốm yếu.</div>
<div>&nbsp;</div>
<div align="center"><img width="450" align="middle" style="MARGIN: 5px" alt="Bộ trưởng Bộ Y tế hỗ trợ 10 triệu đồng đến em Huỳnh Thị &Aacute;i V&acirc;n" src="http://dantri4.vcmedia.vn/Kx7cgdq7pDa1mYK6PHU8/Image/2013/09/IMG_8266-26ec3.jpg" _fl="" /></div>
<div align="center">&nbsp;</div>
<div>Bộ trưởng Bộ Y tế Nguyễn Thị Kim Tiến hết sức x&uacute;c động trước t&igrave;nh   cảnh của em Huỳnh Thị &Aacute;i V&acirc;n. Th&ocirc;ng qua Quỹ Nh&acirc;n &aacute;i B&aacute;o điện tử D&acirc;n tr&iacute;,   Bộ trưởng đ&atilde; gửi 10 triệu đồng từ Quỹ Hỗ trợ bệnh nh&acirc;n ung thư &ndash; Ng&agrave;y   mai tươi s&aacute;ng để gi&uacute;p cho em &Aacute;i V&acirc;n c&oacute; th&ecirc;m điều kiện chạy chữa bệnh   tật, trang trải những kh&oacute; khăn trước mắt khi nhập học.</div>
<div>&nbsp;</div>
<div>PV D&acirc;n tr&iacute; sẽ cập nhật t&igrave;nh h&igrave;nh sức khỏe v&agrave; cuộc sống của em &Aacute;i V&acirc;n trong thời gian sớm nhất đến bạn đọc.</div>
<p>&nbsp;</p>
<div>&nbsp;</div>
<p>&nbsp;</p>', N'DK', 1, CAST(0x0000A26500EF9DD5 AS DateTime), N'admin')
INSERT [dbo].[CategorySub] ([CS_ID], [CS_Name], [CS_Description], [CS_ImageURL], [C_ID], [CS_Content], [CS_Cmd], [CS_TypeDisplay], [CS_CreateDate], [U_UserName]) VALUES (7, N'CÙNG "CỔNG GIÁO DỤC" MỞ CỬA TƯƠNG LAI', N'Vietnamobile tr&#226;n trọng mang đến cho bạn chương tr&#236;nh &quot;Cổng Gi&#225;o Dục&quot;. Tham gia chương tr&#236;nh bạn sẽ được trả lời thật nhiều c&#226;u hỏi hấp dẫn từ chươ...', N'/Skin/Images/Category/cử nhân.jpg', 16, N'<p>Vietnamobile tr&acirc;n trọng mang đến cho bạn chương tr&igrave;nh &quot;Cổng Gi&aacute;o Dục&quot;. Tham gia chương tr&igrave;nh bạn sẽ được trả lời thật nhiều c&acirc;u hỏi hấp dẫn từ chương tr&igrave;nh v&agrave; t&iacute;ch điểm để gi&agrave;nh giải thưởng 10 triệu đồng tiền mặt.</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Wingdings; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">v<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp; &quot;</span></span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">Cổng Gi&aacute;o dục Vietnamobile&quot; l&agrave; chương tr&igrave;nh bổ sung kiến thức qua sms bằng c&aacute;ch soạn tin:&nbsp;<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">DK&nbsp;</span>gửi&nbsp;<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">777</span></span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">&nbsp;</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">Đăng k&yacute; m&ocirc;n to&aacute;n: Soạn&nbsp;<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">DK TOAN</span>&nbsp;gửi 777</span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">&nbsp;</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">Đăng k&yacute; m&ocirc;n Tiếng Anh: Soạn DK TA</span>&nbsp;gửi 777</span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">&nbsp;</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">Đăng k&yacute; m&ocirc;n Tiếng Việt: Soạn DK TV gửi 777</span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">&nbsp;</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">Đăng k&yacute; m&ocirc;n &Acirc;m Nhạc: Soạn DK AN gửi 777</span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">&nbsp;</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Wingdings; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">v<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;</span></span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">Đăng k&yacute; miễn ph&iacute; ngay lần đầu ti&ecirc;n.</span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">&nbsp;</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Wingdings; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">v<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;</span></span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">Mỗi tuần sẽ c&oacute; một học bổng 10 triệu VND được trao cho học vi&ecirc;n c&oacute; số điểm cao nhất trong th&aacute;ng</span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">&nbsp;</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Wingdings; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">v<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;</span></span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">Mỗi học phần sẽ k&eacute;o d&agrave;i từ 00h ng&agrave;y thứ 2 h&agrave;ng tuần đến 23h59 chủ nhật tuần đ&oacute;</span></p>', N'DK', 1, CAST(0x0000A26600A6A84E AS DateTime), N'hanhcm')
INSERT [dbo].[CategorySub] ([CS_ID], [CS_Name], [CS_Description], [CS_ImageURL], [C_ID], [CS_Content], [CS_Cmd], [CS_TypeDisplay], [CS_CreateDate], [U_UserName]) VALUES (8, N'Bộ GD-ĐT cho Trường CĐ Asean được tuyển sinh trở lại', N'Bộ GD-ĐT vừa c&#243; quyết định cho ph&#233;p Trường CĐ Asean được tuyển sinh trở lại sau 4 th&#225;ng ra quyết định dừng tuyển sinh của trường n&#224;y.', N'/Skin/Images/Category/CD-Asean-c1cd6.jpg', 1, N'<p>&nbsp;<span style="font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Ng&agrave;y 19/9, Bộ GD-ĐT đ&atilde; c&oacute; c&ocirc;ng văn số 6467/BGDĐT-GDĐH cho ph&eacute;p Trường Cao đẳng ASEAN được tuyển sinh năm 2013 v&agrave; tiếp tục li&ecirc;n kết với Trường Trung cấp Đại Việt để đ&agrave;o tạo tiếp số sinh vi&ecirc;n đ&atilde; tuyển sinh tr&igrave;nh độ cao đẳng hệ li&ecirc;n th&ocirc;ng tại TPHCM v&agrave; cấp bằng vừa l&agrave;m vừa học theo quy định hiện h&agrave;nh.</span></p>
<div align="center" style="margin: 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;"><img alt="Trường CĐ Asean được tuyển sinh trở lại năm 2013." align="middle" src="http://dantri4.vcmedia.vn/ndVgWNsNcccccccccccc/Image/2013/10/CD-Asean-c1cd6.jpg" width="450" _fl="" style="margin: 5px; padding: 0px;" /><br style="margin: 0px; padding: 0px;" />
<span style="margin: 0px; padding: 0px; font-family: Tahoma; font-size: 10pt;">Trường CĐ Asean được tuyển sinh trở lại năm 2013.</span></div>
<p>&nbsp;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Trước đ&oacute;, ng&agrave;y 17/6/2013, Thanh tra Bộ GD-ĐT đ&atilde; quyết định dừng tuyển sinh năm 2013 l&yacute; do:<b style="margin: 0px; padding: 0px;">&nbsp;</b>Trường Cao đẳng Asean đ&atilde; vi phạm quy định tại Điều 5, Th&ocirc;ng tư số&nbsp;<span lang="PT-BR" style="margin: 0px; padding: 0px;">57/2011/TT-BGDĐT ng&agrave;y 2/12/2011 của Bộ trưởng Bộ GD-ĐT&nbsp;</span>quy định về x&aacute;c định chỉ ti&ecirc;u tuyển sinh tr&igrave;nh độ tiến sĩ, thạc sĩ, đại học, cao đẳng v&agrave; trung cấp chuy&ecirc;n nghiệp<span lang="PT-BR" style="margin: 0px; padding: 0px;">&nbsp;v&agrave; vi phạm nghi&ecirc;m trọng c&aacute;c quy định của ph&aacute;p luật về gi&aacute;o dục.</span></p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Sau đ&oacute;, Bộ GD-ĐT đ&atilde; c&oacute; quyết định xử phạt vi phạm h&agrave;nh ch&iacute;nh đối với Trường Cao đẳng Asean với số tiền l&ecirc;n tới 245 triệu với c&aacute;c vi phạm<strong style="margin: 0px; padding: 0px;">&nbsp;</strong>với c&aacute;c l&yacute; do: Trường Cao đẳng Asean tổ chức tuyển sinh li&ecirc;n th&ocirc;ng từ trung cấp l&ecirc;n cao đẳng ch&iacute;nh quy năm 2012 vượt chỉ ti&ecirc;u được giao 402,6% (chỉ ti&ecirc;u được giao 600, tr&uacute;ng tuyển đ&atilde; nhập học 2.416 sinh vi&ecirc;n); tổ chức tuyển sinh trung cấp năm 2012 vượt chỉ ti&ecirc;u được giao 164,3% (chỉ ti&ecirc;u được giao 300, tr&uacute;ng tuyển đ&atilde; nhập học 493 học sinh); c&oacute; 46/199 hồ sơ sinh vi&ecirc;n đ&atilde; kiểm tra hệ li&ecirc;n th&ocirc;ng từ trung cấp l&ecirc;n cao đẳng tr&uacute;ng tuyển v&agrave; nhập học năm 2012 của Trường Cao đẳng Asean sai đối tượng;mở lớp giảng dạy tr&igrave;nh độ cao đẳng ch&iacute;nh quy ngo&agrave;i trụ sở ch&iacute;nh của trường khi chưa được cơ quan c&oacute; thẩm quyền cho ph&eacute;p; tổ chức hoạt động li&ecirc;n kết đ&agrave;o tạo kh&ocirc;ng đảm bảo tr&igrave;nh tự thủ tục theo quy định&hellip;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Thanh tra Bộ GD-ĐT buộc Trường Cao đẳng Asean phải chấm dứt mọi hoạt động tuyển sinh, đ&agrave;o tạo tr&aacute;i ph&eacute;p ngo&agrave;i trường, r&agrave; so&aacute;t lại đối tượng tr&uacute;ng tuyển,<strong style="margin: 0px; padding: 0px;">&nbsp;</strong>giải quyết hậu quả đối với số sinh vi&ecirc;n đ&atilde; theo hướng: Những sinh vi&ecirc;n đ&atilde; tuyển sai đối tượng th&igrave; phải buộc th&ocirc;i học, trả lại c&aacute;c khoản tiền đ&atilde; thu của người học v&agrave; chịu mọi chi ph&iacute; cho việc ho&agrave;n trả, giải quyết hậu quả (nếu c&oacute;).</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Những sinh vi&ecirc;n đủ điều kiện tr&uacute;ng tuyển hệ ch&iacute;nh quy theo quy định đối với c&aacute;c lớp đặt tại c&aacute;c địa điểm ngo&agrave;i Trường phải chuyển về trụ sở của Trường Cao đẳng Asean (tại Văn L&acirc;m, Hưng Y&ecirc;n) hoặc chuyển sang cơ sở đ&agrave;o tạo c&oacute; đủ điều kiện (do Trường Cao đẳng Asean tự li&ecirc;n hệ, thỏa thuận) để tổ chức đ&agrave;o tạo theo quy định&hellip;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Kh&ocirc;ng đồng &yacute; với kết luận của thanh tra Bộ GD-ĐT, Trường Cao đẳng ASEAN đ&atilde; khởi kiện Thanh tra Bộ GD-ĐT l&ecirc;n T&ograve;a &aacute;n nh&acirc;n d&acirc;n TP H&agrave; Nội v&igrave; c&oacute; những quyết định kh&ocirc;ng đ&uacute;ng.</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Trao đổi với PV&nbsp;<i style="margin: 0px; padding: 0px;">D&acirc;n tr&iacute;</i>&nbsp;ng&agrave;y 28/10, b&agrave; Trần Kim Phương - Chủ tịch Hội đồng quản trị Trường Cao đẳng ASEAN cho biết: &ldquo;Sau khi ra t&ograve;a, Bộ GD-ĐT đ&atilde; l&agrave;m việc lại với l&atilde;nh đạo trường v&agrave; kiểm tra lại những b&aacute;o c&aacute;o so với thực tế như đảm bảo quyền lợi người học ở TP.HCM, đảm bảo giảng vi&ecirc;n cơ hữu đang hoạt động tại trường v&agrave; đồng &yacute; cho trường tuyển sinh trở lại, đ&oacute; l&agrave; điều rất mừng đối với trường. Tuy nhi&ecirc;n, t&ocirc;i đề nghị Bộ GD-ĐT xem lại mức phạt cho hợp l&yacute; v&igrave; mức phạt hiện nay qu&aacute; nặng với trường&rdquo;.</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Đ&acirc;y c&oacute; lẽ l&agrave; trường CĐ đầu ti&ecirc;n m&agrave; Bộ GD-ĐT nhanh ch&oacute;ng cho ph&eacute;p tuyển sinh trở lại sau 4 th&aacute;ng ra quyết định dừng tuyển sinh.</p>
<p align="right" style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;"><b style="margin: 0px; padding: 0px;">Hồng Hạnh</b></p>', N'', 1, CAST(0x0000A2660092C6C4 AS DateTime), N'hanhcm')
INSERT [dbo].[CategorySub] ([CS_ID], [CS_Name], [CS_Description], [CS_ImageURL], [C_ID], [CS_Content], [CS_Cmd], [CS_TypeDisplay], [CS_CreateDate], [U_UserName]) VALUES (9, N'Thể lệ tham gia chương trình', N'&quot;Cổng Gi&#225;o dục Vietnamobile&quot; l&#224; chương tr&#236;nh bổ sung kiến thức qua sms bằng c&#225;ch soạn tin: DK gửi 777, DK TOAN gửi 777, DK TA gửi 777, DK TV gửi 777, DK...', N'/Skin/Images/Category/1326163802hoctap.jpg', 5, N'<p>&nbsp;</p>
<ol start="1" type="I" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0px 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; list-style: none; color: rgb(66, 65, 66); text-align: justify;">
    <li class="MsoNormalCxSpMiddle" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">Giới thiệu chung</span></span></li>
    <li class="MsoNormalCxSpMiddle" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></span></li>
</ol>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Wingdings; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">v<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp; &quot;</span></span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">Cổng Gi&aacute;o dục Vietnamobile&quot; l&agrave; chương tr&igrave;nh bổ sung kiến thức qua sms bằng c&aacute;ch soạn tin:&nbsp;<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">DK</span>gửi&nbsp;<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">777</span>,&nbsp;<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">DK TOAN</span>&nbsp;gửi 777,&nbsp;<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">DK TA</span>&nbsp;gửi 777,&nbsp;DK TV gửi 777, DK AN gửi 777 (Miễn ph&iacute; đăng k&yacute; lần đầu ti&ecirc;n)<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Wingdings; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">v<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;</span></span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">Gi&aacute; cước 3.000 đồng/10 c&acirc;u hỏi<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Wingdings; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">v<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;</span></span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">Mỗi tuần sẽ c&oacute; một học bổng 10 triệu VND được trao cho học vi&ecirc;n c&oacute; số điểm cao nhất trong th&aacute;ng<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Wingdings; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">v<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;</span></span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">Mỗi học phần sẽ k&eacute;o d&agrave;i từ 00h ng&agrave;y thứ 2 h&agrave;ng tuần đến 23h59 chủ nhật tuần đ&oacute;</span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></p>
<ol start="1" type="1" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0px 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; list-style: none; color: rgb(66, 65, 66); text-align: justify;">
    <li class="MsoNormalCxSpMiddle" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;</li>
    <li class="MsoNormalCxSpMiddle" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">C&aacute;ch thức tham gia<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></span></li>
</ol>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Kh&aacute;ch h&agrave;ng soạn&nbsp;<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">DK</span>&nbsp;gửi 777,&nbsp;<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">DK TOAN</span>&nbsp;gửi 777,&nbsp;<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">DK TA</span>&nbsp;gửi 777,&nbsp;DK TV gửi 777, DK AN gửi 777<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormalCxSpMiddle" style="margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif;"><span style="font-family: Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Kh&aacute;ch h&agrave;ng chuyển nh&aacute;nh m&ocirc;n học bằng c&aacute;ch soạn:&nbsp;<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">TOAN</span>&nbsp;gửi 777,&nbsp;<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">TA</span>&nbsp;gửi 777,&nbsp;<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">NT</span>&nbsp;gửi 777</span><font face="SegoeUI, Tahoma, Verdana, Arial, sans-serif">, TV gửi 777, AN gửi 777</font></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Mỗi ng&agrave;y sẽ c&oacute; những bộ đề gửi về cho kh&aacute;ch h&agrave;ng. Để tham gia trả lời soạn:&nbsp;<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">1</span>&nbsp;hoặc&nbsp;<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">2</span>&nbsp;gửi 777<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Mỗi bộ đề sẽ bao gồm 10 c&acirc;u hỏi.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Thu&ecirc; bao tham gia hợp lệ: tin nhắn được gửi th&agrave;nh c&ocirc;ng v&agrave;o hệ thống của Vietnamobile trong thời gian hiệu lực của chương tr&igrave;nh. C&oacute; tin nhắn từ hệ thống gửi xuống m&aacute;y cho kh&aacute;ch h&agrave;ng th&ocirc;ng b&aacute;o đ&atilde; trả lời th&agrave;nh c&ocirc;ng.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp; &nbsp; &nbsp; &nbsp;</span></span>Thu&ecirc; bao bắt đầu trả lời c&acirc;u hỏi ở hạng Đồng, mỗi c&acirc;u trả lời đ&uacute;ng được 100 điểm, trả lời sai kh&ocirc;ng được điểm. &nbsp;Trả lời đ&uacute;ng 10 c&acirc;u sẽ l&ecirc;n hạng Bạc</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">- &nbsp; &nbsp;Thu&ecirc; bao ở hạng Bạc, trả lời đ&uacute;ng được 1000 điểm, trả lời sai kh&ocirc;ng được điểm. Trả lời đ&uacute;ng 10 c&acirc;u sẽ l&ecirc;n hạng V&agrave;ng, trả lời sai 3 c&acirc;u li&ecirc;n tiếp sẽ quay về hạng Đồng</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">- &nbsp; &nbsp;Thu&ecirc; bao ở hạng V&agrave;ng, trả lời đ&uacute;ng được 5000 điểm, trả lời sai kh&ocirc;ng được điểm. Trả lời sai 3 c&acirc;u li&ecirc;n tiếp sẽ quay về hạng Bạc</p>
<p class="MsoNormalCxSpMiddle" style="margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; vertical-align: baseline; text-align: justify; text-indent: -0.25in;"><font color="#424142" face="wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif"><span style="line-height: 18px;">- &nbsp; &nbsp;Thu&ecirc; bao tham gia cược điểm: Soạn CUOC</span></font>&nbsp;&lt;sodiem&gt; gửi 777 (<font color="#424142" face="wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif" style="text-indent: -0.25in;"><span style="line-height: 18px;">Miễn ph&iacute; lần đầu ti&ecirc;n trong ng&agrave;y, c&aacute;c lần tiếp theo t&iacute;nh ph&iacute; 3000đ/lần).&nbsp;</span></font><span style="text-indent: -0.25in; line-height: 18px;"><font color="#424142" face="wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif">Điểm cược = &lt;sodiem&gt; &nbsp;&le; 10.000 điểm &le; số điểm đang c&oacute;.</font></span></p>
<p class="MsoNormalCxSpMiddle" style="margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; vertical-align: baseline; text-align: justify; text-indent: -0.25in;"><font color="#424142" face="wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif"><span style="line-height: 18px;">- &nbsp; &nbsp; Kh&ocirc;ng giới hạn số lần đặt cược điểm trong ng&agrave;y</span></font></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">- &nbsp; &nbsp;Thu&ecirc; bao kh&ocirc;ng tiến h&agrave;nh trừ tiền t&agrave;i khoản trong ng&agrave;y sẽ được trả lời c&acirc;u hỏi ở g&oacute;i GD0: trả lời đ&uacute;ng được 100 điểm, trả lời sai bị trừ 100 điểm. Thu&ecirc; bao thuộc gọi GD0 kh&ocirc;ng được tham gia cược điểm.</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">- &nbsp; &nbsp;Thu&ecirc; bao đang ở g&oacute;i GD0 nạp tiền quay trở lại sẽ trả lời c&acirc;u hỏi ở mức Đồng</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">- &nbsp; &nbsp;Thu&ecirc; bao đang trả lời c&acirc;u hỏi ở hạng n&agrave;o sẽ tiếp tục trả lời c&acirc;u hỏi ở hạng đ&oacute; ng&agrave;y tiếp theo</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Người chiến thắng gi&agrave;nh được học bổng 10 triệu VND l&agrave; người c&oacute; số điểm cao nhất khi kết th&uacute;c học phần.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Để hủy dịch vụ soạn: HUY GD gửi 777 (miễn ph&iacute;)</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">- &nbsp; Để tra cứu số điểm đang c&oacute;: Soạn DIEM gửi 777 (miễn ph&iacute;)</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<ol start="2" type="1" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0px 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; list-style: none; color: rgb(66, 65, 66); text-align: justify;">
    <li class="MsoNormalCxSpMiddle" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;</li>
    <li class="MsoNormalCxSpMiddle" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">Đối tượng tham gia<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></span></li>
</ol>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Tất cả c&aacute;c thu&ecirc; bao (trả trước v&agrave; trả sau) đang hoạt động 02 chiều tr&ecirc;n mạng Vietnamobile.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.5in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 14.399999618530273px; vertical-align: baseline;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 14.399999618530273px; vertical-align: baseline;">Thu&ecirc; bao trả trước c&oacute; t&agrave;i khoản ch&iacute;nh tối thiểu bằng cước nhắn tin .</span></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.5in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 14.399999618530273px; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></span></p>
<ol start="3" type="1" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0px 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; list-style: none; color: rgb(66, 65, 66); text-align: justify;">
    <li class="MsoNormalCxSpMiddle" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;</li>
    <li class="MsoNormalCxSpMiddle" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">Thời gian tham gia<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></span></li>
</ol>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.5in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 14.399999618530273px; vertical-align: baseline;">Mỗi học phần</span>&nbsp;bắt đầu từ 00h thứ 2 h&agrave;ng tuần v&agrave; kết th&uacute;c v&agrave;o l&uacute;c 23h59 chủ nhật tuần đ&oacute;.</p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.5in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<ol start="4" type="1" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0px 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; list-style: none; color: rgb(66, 65, 66); text-align: justify;">
    <li class="MsoNormalCxSpMiddle" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;</li>
    <li class="MsoNormalCxSpMiddle" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: 13.600000381469727px; vertical-align: baseline;">Gi&aacute; cước<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></span></li>
</ol>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 3pt 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;"><span style="font-family: Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Cước duy tr&igrave; dịch vụ nhận th&ocirc;ng tin cập nhật kết quả: 3.000 VND/ng&agrave;y.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 3pt 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;"><span style="font-family: Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Mỗi bộ đề bao gồm 10 c&acirc;u hỏi: miễn ph&iacute; bộ đề đầu ti&ecirc;n.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 3pt 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;"><span style="font-family: Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Từ bộ đề thứ 2: 3.000 VND/bộ<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 3pt 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;"><span style="font-family: Arial, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>SMS đăng k&yacute;/huỷ nhận th&ocirc;ng tin cập nhật kết quả: miễn ph&iacute;</p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 3pt 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<ol start="5" type="1" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0px 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; list-style: none; color: rgb(66, 65, 66); text-align: justify;">
    <li class="MsoNormalCxSpMiddle" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;</li>
    <li class="MsoNormalCxSpMiddle" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">C&aacute;ch thức x&aacute;c định người tr&uacute;ng thưởng<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></li>
</ol>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 6pt 0in 3pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Kết th&uacute;c học phần, người gi&agrave;nh được học bổng 10 triệu VND l&agrave; người c&oacute; số điểm cao nhất tại thời điểm kết th&uacute;c học phần<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 6pt 0in 3pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Trong trường hợp 2 người bằng điểm nhau sẽ x&eacute;t đến c&aacute;c yếu tố theo thứ tự như sau:<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 6pt 0in 3pt 1in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: ''Courier New''; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">o<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;</span></span>T&iacute;ch cực (Số lượng c&acirc;u trả lời): Ai c&oacute; số lượng c&acirc;u trả lời nhiều hơn sẽ l&agrave; người chiến thắng<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 6pt 0in 3pt 1in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: ''Courier New''; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">o<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;</span></span>Chăm chỉ (Duy tr&igrave; dịch vụ): Ai c&oacute; số ng&agrave;y duy tr&igrave; dịch vụ nhiều hơn sẽ l&agrave; người chiến thắng<span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 6pt 0in 3pt 1in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: ''Courier New''; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">o<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;</span></span>Ch&iacute;nh x&aacute;c (Tỉ lệ c&acirc;u trả lời đ&uacute;ng): Ai c&oacute; tỉ lệ trả lời đ&uacute;ng cao hơn sẽ l&agrave; người chiến thắng.</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 6pt 0in 3pt 1in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></p>
<ol start="6" type="1" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0px 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; list-style: none; color: rgb(66, 65, 66); text-align: justify;">
    <li class="MsoNormalCxSpMiddle" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">Học Bổng</span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></li>
</ol>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 6pt 0in 3pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Học Bổng trị gi&aacute; 10 triệu VND sẽ được tao cho kh&aacute;ch h&agrave;ng chiến thắng</p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 6pt 0in 3pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<ol start="7" type="1" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0px 0px; padding: 0px; border: 0px; line-height: 18px; vertical-align: baseline; list-style: none; color: rgb(66, 65, 66); text-align: justify;">
    <li class="MsoNormalCxSpLast" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;</li>
    <li class="MsoNormalCxSpLast" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">Thủ tục, điều lệ nhận thưởng v&agrave; quy định học bổng</span></li>
    <li class="MsoNormalCxSpLast" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></li>
</ol>
<h3 style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; font-size: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">&nbsp;</h3>
<h3 style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; font-size: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">a.<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;C&ocirc;ng bố kh&aacute;ch h&agrave;ng chiến thắng<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></h3>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Danh s&aacute;ch kh&aacute;ch h&agrave;ng chiến thắng sẽ được đăng tải tr&ecirc;n wapsite, website của Vietnamobile tại địa chỉ&nbsp;<a href="http://www.edu.vietnamobile.com.vn/" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; text-decoration: none;">www.edu.vietnamobile.com.vn</a>.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="margin: 0in 0in 0.0001pt 0.25in; text-align: justify; text-indent: -13.5pt; line-height: 9.8pt; vertical-align: baseline; background-position: initial initial; background-repeat: initial initial;"><span style="font-size:9.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;color:#424142">-</span><span style="font-size:7.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:#424142;border:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;
padding:0in">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size:9.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;color:#424142">Danh s&aacute;ch c&aacute;c kh&aacute;ch h&agrave;ng chiến thắng sẽ được th&ocirc;ng b&aacute;o v&agrave; gửi tới c&aacute;c kh&aacute;ch h&agrave;ng chiến thắng qua SMS chậm nhất 03 ng&agrave;y l&agrave;m việc sau khi Ban tổ chức c&oacute; kết quả cuối c&ugrave;ng. <o:p></o:p></span></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;"><span style="font-family: Tahoma, sans-serif; font-size: 9pt; line-height: 9.8pt; text-indent: -13.5pt;">-</span><span style="font-family: Tahoma, sans-serif; font-size: 9pt; line-height: 9.8pt; text-indent: -13.5pt;">&nbsp;&nbsp; </span><span style="font-family: Tahoma, sans-serif; font-size: 9pt; line-height: 9.8pt; text-indent: -13.5pt;">Trong tin nhắn gửi đến số thu&ecirc; bao chiến thắng, Vietnamobile sẽ cung cấp số điện thoại của tổng đ&agrave;i chăm s&oacute;c kh&aacute;ch h&agrave;ng, thu&ecirc; bao c&oacute; tr&aacute;ch nhiệm li&ecirc;n hệ lại với tổng đ&agrave;i để cung cấp th&ocirc;ng tin chủ sở hữu thu&ecirc; bao để ho&agrave;n tất hồ sơ tr&uacute;ng thưởng. Thời hạn li&ecirc;n lạc l&agrave; 03 ng&agrave;y l&agrave;m việc kể từ ng&agrave;y nhận tin nhắn (kh&ocirc;ng t&iacute;nh thứ 7, chủ nhật).</span>&nbsp;Đồng thời hướng dẫn thủ tục nhận thưởng, địa điểm trao thưởng.</p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(146, 208, 80);"><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></p>
<h3 style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; font-size: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">&nbsp;</h3>
<h3 style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; font-size: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">b.<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">Điều kiện nhận thưởng<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></h3>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Học bổng của chương tr&igrave;nh chỉ trao cho kh&aacute;ch h&agrave;ng l&agrave; chủ thu&ecirc; bao (người đứng t&ecirc;n đăng k&yacute; th&ocirc;ng tin thu&ecirc; bao hoặc trực tiếp k&yacute; hợp đồng cung cấp v&agrave; sử dụng dịch vụ với C&ocirc;ng ty Th&ocirc;ng tin Di động). Trong trường hợp kh&aacute;ch h&agrave;ng kh&ocirc;ng phải l&agrave; người đứng t&ecirc;n đăng k&yacute; th&ocirc;ng tin thu&ecirc; bao hoặc kh&ocirc;ng trực tiếp k&yacute; hợp đồng với C&ocirc;ng ty Th&ocirc;ng tin Di động, kh&aacute;ch h&agrave;ng kh&ocirc;ng được nhận học bổng.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Trong trường hợp chủ thu&ecirc; bao kh&ocirc;ng thể nhận giải c&oacute; thể l&agrave;m giấy ủy quyền c&oacute; x&aacute;c nhận của cấp c&oacute; thẩm quyền cho người kh&aacute;c nhận thay.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Thu&ecirc; bao chiến thắng phải kh&ocirc;ng bị kh&oacute;a 02 chiều từ thời điểm tham gia chương tr&igrave;nh đến thời điểm trao giải.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p>..<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p>.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<h3 style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; font-size: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">&nbsp;</h3>
<h3 style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; font-size: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">c.<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">Thủ tục nhận thưởng<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></h3>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Khi tới nhận thưởng, c&aacute;c thu&ecirc; bao phải xuất tr&igrave;nh được CMTND/Hộ chiếu c&oacute; họ t&ecirc;n, ng&agrave;y sinh, số CMTND/Hộ chiếu ch&iacute;nh x&aacute;c với c&aacute;c th&ocirc;ng tin đ&atilde; đăng k&yacute; tr&ecirc;n hệ thống của C&ocirc;ng ty Th&ocirc;ng tin Di động. Ri&ecirc;ng đối với thu&ecirc; bao trả sau cần phải xuất tr&igrave;nh th&ecirc;m Hợp đồng cung cấp v&agrave; sử dụng dịch vụ điện thoại di động hoặc Th&ocirc;ng b&aacute;o cước ph&aacute;t sinh của chu kỳ kh&aacute;ch h&agrave;ng chiến thắng.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">Lưu &yacute;:&nbsp;</span>Giấy CMTND sử dụng để nhận thưởng kh&ocirc;ng qu&aacute; 15 năm kể từ ng&agrave;y được cấp/Hộ chiếu phải c&ograve;n hiệu lực &iacute;t nhất 03 th&aacute;ng t&iacute;nh đến thời điểm nhận thưởng hoặc c&aacute;c giấy tờ kh&aacute;c phải c&oacute; ảnh v&agrave; c&oacute; x&aacute;c nhận của ch&iacute;nh quyền địa phương trong v&ograve;ng 06 th&aacute;ng t&iacute;nh đến thời điểm nhận thưởng.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<h3 style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; font-size: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">&nbsp;</h3>
<h3 style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; font-size: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">d.<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">Địa điểm nhận thưởng<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></h3>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Trung t&acirc;m Dịch vụ Gi&aacute; trị gia tăng sẽ chịu tr&aacute;ch nhiệm th&ocirc;ng b&aacute;o địa chỉ trao thưởng v&agrave; trực tiếp trao giải cho kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng theo đ&uacute;ng c&aacute;c quy định của Nh&agrave; nước.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<h3 style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; font-size: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">&nbsp;</h3>
<h3 style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; font-size: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">e.<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">Thời gian trao giải</span><o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></h3>
<p class="MsoNormalCxSpFirst" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 5pt 0in 6pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>C&aacute;c kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng sẽ nhận được tin nhắn th&ocirc;ng b&aacute;o từ Vietnamobile. Đồng thời, Vietnamobile sẽ chủ động li&ecirc;n hệ, th&ocirc;ng b&aacute;o trực tiếp cho kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 5pt 0in 6pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Kh&aacute;ch h&agrave;ng chiến thắng phải li&ecirc;n hệ v&agrave; l&agrave;m c&aacute;c thủ tục nhận giải đến hết ng&agrave;y l&agrave;m việc thứ 15 kể từ ng&agrave;y Vietnamobile th&ocirc;ng b&aacute;o trực tiếp cho kh&aacute;ch h&agrave;ng.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormalCxSpMiddle" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 5pt 0in 6pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Những kh&aacute;ch h&agrave;ng &nbsp;đ&atilde; được Vietnamobile th&ocirc;ng b&aacute;o trực tiếp nhưng kh&ocirc;ng đến l&agrave;m thủ tục nhận thưởng trong thời gian 15 ng&agrave;y kể từ ng&agrave;y th&ocirc;ng b&aacute;o th&igrave; coi như kh&aacute;ch h&agrave;ng tự hủy bỏ học bổng. Học bổng được coi như &nbsp;kh&ocirc;ng c&oacute; người tr&uacute;ng thưởng<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Đối với &nbsp;những kh&aacute;ch h&agrave;ng chiến thắng nhưng Vietnamobile kh&ocirc;ng thể li&ecirc;n hệ được trong thời gian 15 ng&agrave;y l&agrave;m việc kể từ thời điểm đăng tải danh s&aacute;ch kh&aacute;ch h&agrave;ng chiến thắng tr&ecirc;n wap/website của Vietnamobile tại địa chỉ&nbsp;<a href="http://www.vietnamobile.com.vn/" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; text-decoration: none;">www.vietnamobile.com.vn</a>&nbsp;(do kh&aacute;ch h&agrave;ng tắt m&aacute;y, kh&ocirc;ng trả lời điện thoại, bị kh&oacute;a số thu&ecirc; bao&hellip;) th&igrave; coi như kh&aacute;ch h&agrave;ng tự hủy bỏ học bổng. Ban tổ chức sẽ lập bi&ecirc;n bản hủy học bổng đối với kh&aacute;ch h&agrave;ng đ&oacute;.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<h3 style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; font-size: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><a name="_GoBack" style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;"></a></h3>
<h3 style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; font-size: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;">&nbsp;</h3>
<h3 style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px 0px 0px 0.5in; padding: 0px; border: 0px; font-size: inherit; font-weight: inherit; line-height: 18px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -0.25in;"><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">f.<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-variant: inherit; line-height: inherit; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: inherit; margin: 0px; padding: 0px; border: 0px; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline;">C&aacute;c quy định kh&aacute;c<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></span></h3>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng phải chịu mọi chi ph&iacute; ăn, ở, đi lại cho việc nhận thưởng của m&igrave;nh, thuế thu nhập kh&ocirc;ng thường xuy&ecirc;n v&agrave; c&aacute;c chi ph&iacute; kh&aacute;c (nếu c&oacute;) theo quy định của ph&aacute;p luật Việt Nam hiện h&agrave;nh. Trung t&acirc;m Dịch vụ Gi&aacute; trị Gia tăng chỉ chịu tr&aacute;ch nhiệm trao thưởng cho kh&aacute;ch h&agrave;ng chiến thắng theo quy định của C&ocirc;ng ty Th&ocirc;ng tin Di động.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Thu&ecirc; bao nghiệp vụ, c&ocirc;ng vụ, thu&ecirc; bao thu&ecirc;, thu&ecirc; bao thử dịch vụ, thu&ecirc; bao nội bộ, thu&ecirc; bao của c&aacute;c đối t&aacute;c tham gia x&acirc;y dựng chương tr&igrave;nh: kh&ocirc;ng được tham gia chương tr&igrave;nh.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>C&ocirc;ng ty Th&ocirc;ng tin Di động được to&agrave;n quyền sử dụng t&ecirc;n v&agrave; h&igrave;nh ảnh của kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng cho mục đ&iacute;ch quảng c&aacute;o thương mại m&agrave; kh&ocirc;ng phải trả th&ecirc;m bất kỳ khoản chi ph&iacute; n&agrave;o.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Trong trường hợp xảy ra tranh chấp li&ecirc;n quan đến chương tr&igrave;nh n&agrave;y, Trung t&acirc;m Dịch vụ Gi&aacute; trị Gia tăng sẽ đại diện C&ocirc;ng ty Th&ocirc;ng tin Di động trực tiếp giải quyết với kh&aacute;ch h&agrave;ng. Trong trường hợp kh&ocirc;ng đạt được thỏa thuận, tranh chấp sẽ được xử l&yacute; theo quy định của ph&aacute;p luật Việt Nam hiện h&agrave;nh.</p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Vietnamobile c&oacute; quyền hủy bỏ t&agrave;i khoản hoặc đ&igrave;nh chỉ tham gia chương tr&igrave;nh đối với c&aacute;c thu&ecirc; bao vi phạm.<o:p style="font-family: SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0px; padding: 0px;"></o:p></p>
<p class="MsoNormal" style="font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; margin: 0in 0in 0.0001pt 0.25in; padding: 0px; border: 0px; line-height: 14.399999618530273px; vertical-align: baseline; color: rgb(66, 65, 66); text-align: justify; text-indent: -13.5pt;">-<span style="font-family: ''Times New Roman''; margin: 0px; padding: 0px; border: 0px; font-size: 7pt; font-style: inherit; font-variant: inherit; line-height: normal; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Trong mọi trường hợp, quyết định của Ban tổ chức l&agrave; quyết định cuối c&ugrave;ng.</p>', N'', 1, CAST(0x0000A2810104CE74 AS DateTime), N'hanhcm')
INSERT [dbo].[CategorySub] ([CS_ID], [CS_Name], [CS_Description], [CS_ImageURL], [C_ID], [CS_Content], [CS_Cmd], [CS_TypeDisplay], [CS_CreateDate], [U_UserName]) VALUES (10, N'Kiểm tra điểm số bằng cách soạn DIEM gửi 777', N'Kiểm tra điểm số hiện tại của bạn soạn: DIEM gửi 777', N'/Skin/Images/Category/điểm số.jpg', 3, N'<p><span style="color: rgb(66, 65, 66); font-family: wf_SegoeUI, Tahoma, Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">Kiểm tra điểm số hiện tại của bạn soạn: DIEM gửi 777</span></p>', N'', 1, CAST(0x0000A266009B8E97 AS DateTime), N'hanhcm')
INSERT [dbo].[CategorySub] ([CS_ID], [CS_Name], [CS_Description], [CS_ImageURL], [C_ID], [CS_Content], [CS_Cmd], [CS_TypeDisplay], [CS_CreateDate], [U_UserName]) VALUES (11, N'Viết về Đại tướng Võ Nguyên Giáp, nữ sinh giành giải Văn hay chữ tốt', N'“...Sự ra đi của B&#225;c kh&#244;ng phải l&#224; dấu chấm hết cho h&#236;nh ảnh một vị Đại tướng anh h&#249;ng. M&#224; đ&#226;y chỉ l&#224; sự ra đi của thể x&#225;c c&#242;n t&#22...', N'/Skin/Images/Category/baivan1-20356.JPG', 1, N'<p>&nbsp;<span style="font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Đoạn văn tr&ecirc;n tr&iacute;ch từ b&agrave;i văn vừa được trao giải Nhất cuộc thi &quot;Văn hay chữ tốt&quot; TPHCM lần thứ 14 của em Ch&acirc;u Huệ Mai, học sinh lớp 9/1, Trường THCS Ho&agrave;ng L&ecirc; Kha (Q.6, TPHCM). B&agrave;i văn viết về l&ograve;ng quả cảm, l&yacute; tưởng sống v&agrave; đức hy sinh, khi&ecirc;m tốn của cố Đại tướng V&otilde; Nguy&ecirc;n Gi&aacute;p.&nbsp;</span></p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;"><b style="margin: 0px; padding: 0px;">X&uacute;c động với triết l&yacute; của nữ sinh lớp 9</b></p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<div style="margin: 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px; text-align: center;"><img alt="N&eacute;t chữ trong b&agrave;i thi Văn hay chữ tốt viết về Đại tướng V&otilde; Nguy&ecirc;n Gi&aacute;p của em Ch&acirc;u Huệ Mai.&nbsp;" align="center" src="http://dantri4.vcmedia.vn/7MPEnE5WMWukgZZut8l/Image/2013/10/baivan2-20356.JPG" width="450" _fl="" style="margin: 5px; padding: 0px;" /></div>
<div style="margin: 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px; text-align: center;"><span style="margin: 0px; padding: 0px; font-family: Tahoma; font-size: 10pt;">N&eacute;t chữ trong b&agrave;i thi &quot;Văn hay chữ tốt&quot; viết về Đại tướng V&otilde; Nguy&ecirc;n Gi&aacute;p của em Ch&acirc;u Huệ Mai.&nbsp;</span></div>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">B&agrave;i viết về Đại tướng V&otilde; Nguy&ecirc;n Gi&aacute;p c&ugrave;ng những suy tư, li&ecirc;n hệ s&acirc;u sắc từ tấm gương anh h&ugrave;ng với n&eacute;t chữ đều tăm tắp của Huệ Mai d&agrave;i 6 trang giấy. Ngo&agrave;i khả</p>
<table cellspacing="5" cellpadding="0" align="right" style="margin: 0px; padding: 0px; border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: ''Times New Roman''; font-size: 16px; line-height: 20px; border-style: solid; border-color: black; width: 180px; background-color: rgb(230, 230, 250);">
    <tbody style="margin: 0px; padding: 0px;">
        <tr style="margin: 0px; padding: 0px;">
            <td style="margin: 0px; padding: 0px; vertical-align: top;">
            <p align="justify" style="margin: 3.546875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 12pt;"><span style="margin: 0px; padding: 0px; font-family: Tahoma; font-size: 10pt;">&quot;Viết về Đại tướng V&otilde; Nguy&ecirc;n Gi&aacute;p l&agrave; đề thi mang t&iacute;nh hiệu ứng gi&aacute;o dục cao v&agrave; nặng k&yacute; đối với học sinh&nbsp;lớp 8, lớp 9. B&agrave;i viết của em Huệ Mai kh&ocirc;ng chỉ đ&ograve;i hỏi em phải r&egrave;n luyện, học tập một c&aacute;ch nghi&ecirc;m t&uacute;c m&agrave; phải c&oacute; sự trưởng th&agrave;nh thật sự trong suy nghĩ, t&igrave;nh cảm.&quot; -&nbsp;<i style="margin: 0px; padding: 0px;">&Ocirc;ng Nguyễn Ho&agrave;i Chương, Ph&oacute; GĐ Sở GD-ĐT TPHCM&nbsp;</i></span></p>
            </td>
        </tr>
    </tbody>
</table>
<p><span style="font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">năng viết văn ở c&aacute;c thể loại như kể chuyện, tự sự... c&ograve;n đ&ograve;i hỏi người viết nắm vững kiến thức lịch sử, chiến sự, am hiểu thời cuộc v&agrave; cả những triết l&yacute; sống gi&agrave; dặn.</span></p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Những trận chiến từ Đ&ocirc;ng Kh&ecirc;, Điện Bi&ecirc;n Phủ, đến chiến dịch Hồ Ch&iacute; Minh được c&ocirc; học tr&ograve; đưa v&agrave;o v&agrave; lồng gh&eacute;p một c&aacute;ch kh&eacute;o l&eacute;o với những tr&iacute;ch dẫn l&agrave;m nổi bật l&yacute; tưởng sống, t&agrave;i năng v&agrave; sự khi&ecirc;m tốn của vị Đại tướng.</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Từ những trận đ&aacute;nh, chiến c&ocirc;ng, lối sống của Đại tướng, Huệ Mai cụ thể h&oacute;a được những phẩm chất đ&aacute;ng qu&yacute; của b&aacute;c V&otilde; Nguy&ecirc;n Gi&aacute;p m&agrave; giới trẻ ng&agrave;y nay rất cần noi gương, học tập.</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">C&ocirc; nữ sinh lớp 9 viết:&nbsp;<em style="margin: 0px; padding: 0px;">&ldquo;</em>Khi ng&agrave;y nay, giới trẻ c&agrave;ng ng&agrave;y c&agrave;ng mang th&ecirc;m t&iacute;nh tự cao, sống ri&ecirc;ng lẻ v&agrave; đặc biệt l&agrave; căn bệnh v&ocirc; cảm. Đất nước trong thời đại c&ocirc;ng nghiệp h&oacute;a, r&ocirc; - bốt được sản xuất mang những đặc t&iacute;nh giống con người c&agrave;ng nhiều nhưng con người ch&uacute;ng ta c&agrave;ng ng&agrave;y c&agrave;ng r&ocirc;&nbsp;- bốt h&oacute;a. Kh&ocirc;ng biết y&ecirc;u thương, dửng dưng trước những kh&oacute; khăn của người kh&aacute;c, ch&agrave; đạp, đ&aacute;nh gi&aacute; thấp người kh&aacute;c&quot;<em style="margin: 0px; padding: 0px;">.</em></p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Kể về những gian lao trong chiến trường m&agrave; cố Đại tướng đ&atilde; trải qua v&agrave; những n&eacute;t chấm ph&aacute; n&oacute;i về sự yếu đuối, dễ bu&ocirc;ng xu&ocirc;i trước kh&oacute; khăn của người trẻ, Huệ Mai quan niệm: &ldquo;L&uacute;c cuộc sống v&acirc;y quanh ta nhiều thử th&aacute;ch ch&iacute;nh l&agrave; l&uacute;c cuộc sống ưu &aacute;i ta nhất. N&oacute; muốn ta hiểu ta sẽ học được rất nhiều từ những thử th&aacute;ch đ&oacute;&quot;<em style="margin: 0px; padding: 0px;">.</em></p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;"><b style="margin: 0px; padding: 0px;">Học Văn để l&agrave;m đẹp t&acirc;m hồn</b></p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Điều đặc biệt nhất với Huệ Mai l&agrave; khi viết b&agrave;i văn n&agrave;y ở v&ograve;ng chung kết cuộc thi tr&ugrave;ng v&agrave;o ng&agrave;y đại tang của Đại tướng V&otilde; Nguy&ecirc;n Gi&aacute;p (13/10/2013). Thế n&ecirc;n với em, tr&ecirc;n cả kiến thức lẫn c&aacute;ch h&agrave;nh văn ch&iacute;nh l&agrave; cảm x&uacute;c thật của m&igrave;nh. Những c&acirc;u văn em viết l&agrave; sự tiễn đưa chứa đựng sự cảm phục, k&iacute;nh trọng v&agrave; y&ecirc;u mến đối với vị tướng của d&acirc;n tộc.</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px; text-align: center;">&nbsp;</p>
<div style="margin: 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px; text-align: center;"><img alt="N&eacute;t chữ trong b&agrave;i thi Văn hay chữ tốt viết về Đại tướng V&otilde; Nguy&ecirc;n Gi&aacute;p của em Ch&acirc;u Huệ Mai.&nbsp;" align="center" src="http://dantri4.vcmedia.vn/7MPEnE5WMWukgZZut8l/Image/2013/10/baivan1-20356.JPG" width="450" _fl="" style="margin: 5px; padding: 0px;" /></div>
<div style="margin: 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px; text-align: center;"><span style="margin: 0px; padding: 0px; font-family: Tahoma; font-size: 10pt;">Với n&eacute;t chữ đẹp, b&agrave;i văn s&acirc;u sắc, x&uacute;c động, em Ch&acirc;u Huệ Mai được trao giải học sinh viết văn hay v&agrave; chữ đẹp nhất khối 8 - 9 tại TPHCM năm 2013</span>.&nbsp;</div>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Nhiều người sẽ đ&aacute;nh gi&aacute;, em gi&agrave; trước tuổi, &ldquo;b&agrave; cụ non&rdquo; nhưng những điều em viết trong b&agrave;i văn trước hết l&agrave; em viết cho ch&iacute;nh bản th&acirc;n m&igrave;nh trước khi gửi gắm đến c&aacute;c bạn trẻ.</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Mai c&oacute; sở th&iacute;ch đọc s&aacute;ch từ nhỏ, nhất l&agrave; s&aacute;ch về c&aacute;c nh&acirc;n vật lịch sử v&agrave; hạt giống t&acirc;m hồn. &ldquo;Đọc s&aacute;ch kh&ocirc;ng chỉ gi&uacute;p em c&oacute; kiến thức m&agrave; hơn hết s&aacute;ch gi&uacute;p cho t&acirc;m hồn, suy nghĩ v&agrave; tư duy của m&igrave;nh lu&ocirc;n rộng mở&rdquo;&nbsp;- Mai chia sẻ.</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Mai trau chuốt chữ viết, lời văn bằng c&aacute;ch ghi nhật k&yacute;, cảm x&uacute;c của m&igrave;nh v&agrave;o một cuốn sổ. Em cũng thường đọc lại những b&agrave;i văn m&igrave;nh đ&atilde; viết để xem lại đoạn n&agrave;o chưa tốt để lần sau kh&ocirc;ng lặp lại.</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">Điểm m&ocirc;n Văn của Mai lu&ocirc;n nằm ở top cao, năm học vừa rồi đạt 9,8, điểm trung b&igrave;nh c&aacute;c m&ocirc;n l&agrave; 9,7. M&ocirc;n H&oacute;a v&agrave; tiếng Anh l&agrave; thế mạnh của&nbsp;Mai b&ecirc;n cạnh m&ocirc;n Văn.</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px; text-align: center;">&nbsp;</p>
<div style="margin: 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px; text-align: center;"><img alt="N&eacute;t chữ trong b&agrave;i thi Văn hay chữ tốt viết về Đại tướng V&otilde; Nguy&ecirc;n Gi&aacute;p của em Ch&acirc;u Huệ Mai.&nbsp;" align="center" src="http://dantri4.vcmedia.vn/7MPEnE5WMWukgZZut8l/Image/2013/10/baivan3-20356.JPG" width="448" _fl="" style="margin: 5px; padding: 0px;" /></div>
<div style="margin: 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px; text-align: center;"><span style="margin: 0px; padding: 0px; font-family: Tahoma; font-size: 10pt;">Nhiều người nghe x&uacute;c động khi b&agrave;i văn của em Ch&acirc;u Huệ Mai viết về Đại tướng V&otilde; Nguy&ecirc;n Gi&aacute;p được đọc lại trong trong lễ trao giải.&nbsp;</span></div>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">C&ocirc; Khương Thị Tuyết Loan, mẹ của Huệ Mai cho hay, n&eacute;t chữ của Mai đẹp ngay từ những ng&agrave;y đầu tập viết. Hồi tiểu học, Mai tập viết chữ đều đặn, c&ograve;n l&ecirc;n cấp 2, &aacute;p lực b&agrave;i vở n&ecirc;n chỉ v&agrave;o những dịp h&egrave;, em mới c&oacute; thời gian luyện chữ.</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&ldquo;Nhiều người cho rằng chữ viết b&acirc;y giờ kh&ocirc;ng quan trọng nhưng gia đ&igrave;nh t&ocirc;i lu&ocirc;n động vi&ecirc;n, khuyến kh&iacute;ch con giữ th&oacute;i quen luyện chữ v&agrave; đọc s&aacute;ch. T&ocirc;i muốn ch&aacute;u r&egrave;n sự ki&ecirc;n nhẫn v&agrave; biết y&ecirc;u, biết qu&yacute; c&aacute;i đẹp, c&aacute;i hay của tiếng Việt&rdquo;, người mẹ b&agrave;y tỏ.</p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;"><i style="margin: 0px; padding: 0px;">B&agrave;i văn 6 trang của em Ch&acirc;u Huệ Mai viết về l&yacute; tưởng sống, đức hy sinh, sự khi&ecirc;m tốn của cố Đại tướng V&otilde; Nguy&ecirc;n Gi&aacute;p (chụp lại từ b&agrave;i l&agrave;m của em):&nbsp;</i></p>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px; text-align: center;">&nbsp;</p>
<div style="margin: 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px; text-align: center;"><img alt="Ho&agrave;i Nam" align="center" src="http://dantri4.vcmedia.vn/7MPEnE5WMWukgZZut8l/Image/2013/10/anh1-20356.JPG" width="450" _fl="" style="margin: 5px; padding: 0px;" /></div>
<div style="margin: 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</div>
<div style="margin: 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">
<div style="margin: 0px; padding: 0px; text-align: center;"><img alt="Ho&agrave;i Nam" align="center" src="http://dantri4.vcmedia.vn/7MPEnE5WMWukgZZut8l/Image/2013/10/anh2-20356.JPG" width="400" _fl="" style="margin: 5px; padding: 0px;" /></div>
<div style="margin: 0px; padding: 0px;">&nbsp;</div>
<div style="margin: 0px; padding: 0px;">
<div style="margin: 0px; padding: 0px; text-align: center;"><img alt="Ho&agrave;i Nam" align="center" src="http://dantri4.vcmedia.vn/7MPEnE5WMWukgZZut8l/Image/2013/10/anh3-20356.JPG" width="400" _fl="" style="margin: 5px; padding: 0px;" /></div>
<div style="margin: 0px; padding: 0px;">&nbsp;</div>
<div style="margin: 0px; padding: 0px;">
<div style="margin: 0px; padding: 0px; text-align: center;"><img alt="Ho&agrave;i Nam" align="center" src="http://dantri4.vcmedia.vn/7MPEnE5WMWukgZZut8l/Image/2013/10/anh4-20356.JPG" width="400" _fl="" style="margin: 5px; padding: 0px;" /></div>
<div style="margin: 0px; padding: 0px;">&nbsp;</div>
<div style="margin: 0px; padding: 0px;">
<div style="margin: 0px; padding: 0px; text-align: center;"><img alt="Ho&agrave;i Nam" align="center" src="http://dantri4.vcmedia.vn/7MPEnE5WMWukgZZut8l/Image/2013/10/anh5-20356.JPG" width="400" _fl="" style="margin: 5px; padding: 0px;" /></div>
<div style="margin: 0px; padding: 0px;">
<div style="margin: 0px; padding: 0px; text-align: center;"><img alt="Ho&agrave;i Nam" align="center" src="http://dantri4.vcmedia.vn/7MPEnE5WMWukgZZut8l/Image/2013/10/anh6-20356.JPG" width="400" _fl="" style="margin: 5px; padding: 0px;" /></div>
</div>
</div>
</div>
</div>
</div>
<p style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;">&nbsp;</p>
<p align="right" style="margin: 9.1875px 0px; padding: 0px; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px;"><b style="margin: 0px; padding: 0px;">Ho&agrave;i Nam</b></p>', N'', 1, CAST(0x0000A26600B6825D AS DateTime), N'hanhcm')
INSERT [dbo].[CategorySub] ([CS_ID], [CS_Name], [CS_Description], [CS_ImageURL], [C_ID], [CS_Content], [CS_Cmd], [CS_TypeDisplay], [CS_CreateDate], [U_UserName]) VALUES (12, N'Kịch bản giá xăng dầu: Thêm tình tiết mới vẫn không ăn khách', N' Chẳng mặn m&#224; g&#236; với điệp kh&#250;c k&#234;u lỗ rồi đ&#242;i tăng gi&#225; của mấy “&#244;ng lớn” DNNN, nhưng lần n&#224;y c&#243; lẽ v&#236; thấy c&#243; v&#224;i t&#236;n...', N'/Skin/Images/Category/dienxang27-11-b03b6.jpg', 1, N'<p>&nbsp;</p>
<p>&Yacute; tưởng &quot;mới&quot;<br />
<br />
Hay tin mới m&agrave; cũ &ldquo;xăng dầu nhấp nhổm k&ecirc;u lỗ, Bộ T&agrave;i ch&iacute;nh y&ecirc;u cầu giữ gi&aacute;&rdquo;, nhiều phản hồi của bạn đọc đ&atilde; li&ecirc;n tưởng ngay tới đợt tăng gi&aacute; những&hellip; gần 250đ/l&iacute;t xăng mới đ&acirc;y với l&yacute; do rất &yacute; nghĩa. Suy từ t&igrave;nh huống dẫn tới tăng gi&aacute;&hellip; bất ngờ, &iacute;t nhiều d&acirc;n t&igrave;nh cũng phải ngả mũ b&aacute;i phục ... &yacute; tưởng đưa ra những t&igrave;nh tiết mới!<br />
<br />
&ldquo;Lấy cớ ảnh hưởng của b&atilde;o Haiyan n&ecirc;n giảm gần 250 đ/1 l&iacute;t xăng, nhưng gi&aacute; cả thị trường kh&ocirc;ng giảm được c&aacute;i g&igrave; cả. Để b&acirc;y giờ đ&atilde; lại rục rịch k&ecirc;u lỗ rồi chắc sẽ sớm tăng th&ecirc;m 1.000-2.000đ/1 l&iacute;t xăng th&ocirc;i, cho gi&aacute; cả thị trường c&ograve;n leo thang l&ecirc;n tiếp. Thời điểm gi&aacute; cả thị trường tăng họ cứ vịn v&agrave;o gi&aacute; xăng, n&ecirc;n xin c&aacute;c b&aacute;c ng&agrave;nh xăng dầu &quot;b&igrave;nh ổn&quot; thật sự gi&aacute; cho d&acirc;n nhờ. Giảm gi&aacute; th&igrave; ra tấm ra miếng, đừng cứ c&aacute;i kiểu &quot;giảm 500, tăng 2.500&quot; nữa, d&acirc;n sợ lắm rồi!!!&rdquo; - Nguyễn Văn H&agrave;: nguyenvanha0509@gmail.com<br />
<br />
&ldquo;Sự kiện n&agrave;y đ&aacute;nh dấu cho sự kết th&uacute;c ảnh hưởng của... cơn b&atilde;o Haiyan? D&acirc;n họ cũng đ&atilde; lường trước được việc n&agrave;y rồi. Lần n&agrave;o giảm rồi chẳng tăng gi&aacute; cơ chứ! Vẫn l&agrave; vở kịch ấy, diễn đi diễn lại cho d&acirc;n... đỡ qu&ecirc;n?&rdquo; - Vu Anh Tuan: Vatttlh@yahoo.com<br />
<br />
&ldquo;Khi giảm gi&aacute; gần 250đ/ l&iacute;t l&uacute;c QH đang họp th&igrave; tất cả người d&acirc;n VN đều biết: rồi sau khi QH họp xong chắc chắn c&aacute;c anh xăng dầu sẽ k&ecirc;u lỗ v&agrave; sẽ tăng gi&aacute; cao hơn mức giảm. Đ&uacute;ng l&agrave; chi&ecirc;u tr&ograve; cũ m&agrave; vẫn th&agrave;nh c&ocirc;ng&hellip; Nực cười cho sự quản l&yacute; v&agrave; chỉ đạo&hellip; Hay l&agrave; do thấy d&acirc;n cứ chịu đựng n&ecirc;n đều đổ cho d&acirc;n g&aacute;nh chịu? Chẳng thấy bảo vệ được lợi &iacute;ch g&igrave; của người d&acirc;n th&igrave; bảo sao kh&ocirc;ng ng&agrave;y c&agrave;ng mất l&ograve;ng tin của d&acirc;n&hellip;&rdquo; - Bi&ecirc;n Ho&agrave;ng:&nbsp; hoangdoan20.2011@gmail.com<br />
<br />
&ldquo;Đợi QH bế mạc th&igrave; Bộ sẽ&hellip; cho tăng gi&aacute; thoải m&aacute;i, kh&ocirc;ng phải lo&rdquo; - Hai Ho:&nbsp; songdao103hanoi@gmail.com<br />
&nbsp; <br />
&ldquo;Ngay trước kỳ họp ch&acirc;́t v&acirc;́n của QH th&igrave; giảm giá hơn 200đ/lít, mới sau đó m&acirc;́y ngày đ&atilde; lại đòi tăng giá, phải chăng là đ&ecirc;̉ che mắt dư lu&acirc;̣n? Chưa k&ecirc;̉ tăng thì nhi&ecirc;̀u nhưng giảm thì ít. Phí bảo trì đường b&ocirc;̣ v&acirc;̃n thu trong xăng d&acirc;̀u, nhưng xe cơ giới v&acirc;̃n phải đóng phí hàng năm và trạm thu phí thì v&acirc;̃n hoạt đ&ocirc;̣ng? Nói chung là kh&ocirc;ng minh bạch. Thu nh&acirc;̣p người d&acirc;n th&igrave; kh&ocirc;ng bằng khu vực, nhưng giá cả thì lu&ocirc;n đem giá trong khu vực ra đ&ecirc;̉ so sánh và đòi tăng... Kh&ocirc;ng hi&ecirc;̉u n&ocirc;̉i&rdquo; - Quang:&nbsp; vanquang13@yahoo.com<br />
<br />
&ldquo;Nh&agrave;m lắm rồi ... L&uacute;c n&agrave;o cũng thấy k&ecirc;u lỗ m&agrave; kh&ocirc;ng thấy c&aacute;c c&acirc;y xăng bị đ&oacute;ng cửa, chỉ thấy ph&aacute;t triển nhiều hơn? Lại chuyện chỉ c&oacute; ở VN&rdquo; - Nam Nguyen:&nbsp; binhminhsauconmua2004@yahoo.com<br />
&nbsp; <br />
&ldquo;Lỗ th&igrave; đợt vừa rồi giảm gi&aacute; l&agrave;m g&igrave;? Giảm để đối ph&oacute; ư? Giờ họp QH xong rồi th&igrave; k&ecirc;u lỗ để chuẩn bị tăng gi&aacute; gấp mấy lần giảm đ&acirc;y m&agrave;&rdquo; - Ho&agrave;ng Bằng: hdhbang@gmail.com<br />
&nbsp;<br />
(minh họa: Ngọc Diệp)<br />
(minh họa: Ngọc Diệp)<br />
<br />
Điệp kh&uacute;c cũ<br />
&nbsp;<br />
D&ugrave; c&oacute; th&ecirc;m những t&igrave;nh tiết rất thời sự đ&oacute;, xem ra kịch bản gi&aacute; xăng dầu vẫn chẳng hấp dẫn hơn được ch&uacute;t n&agrave;o bởi &quot;b&agrave;i lỗ giả - l&atilde;i thật&quot; d&acirc;n đ&atilde; qu&aacute; thuộc (n&oacute;i c&aacute;ch kh&aacute;c l&agrave; bị &ldquo;bắt b&agrave;i). Vậy m&agrave; điệp kh&uacute;c cổ lỗ sĩ của &ldquo;&ocirc;ng xăng&rdquo; vẫn dễ d&agrave;ng qua mặt được ng&agrave;nh chủ quản, thế mới thần t&igrave;nh!<br />
<br />
&ldquo;B&agrave;i n&agrave;y người d&acirc;n thuộc lắm rồi, cứ giảm gi&aacute; được v&agrave;i ng&agrave;y th&igrave; doanh nghiệp xăng dầu lại k&ecirc;u lỗ, rồi giảm 1 th&igrave; lại tăng gấp 5-7 lần. Cấp quản l&yacute; Nh&agrave; nước kh&ocirc;ng n&oacute;i th&igrave; th&ocirc;i, nhưng cứ khẳng định kh&ocirc;ng tăng th&igrave; cũng chỉ 3 ng&agrave;y sau l&agrave; sẽ tăng th&ocirc;i. Qu&aacute; ch&aacute;n!&rdquo; - Tuyet Minh: minhhienthanh@gmail.com<br />
<br />
&ldquo;Lại giở b&agrave;i cũ đ&acirc;y m&agrave; ... Lại muốn tăng gi&aacute; th&ocirc;i, lỗ c&aacute;i g&igrave; chứ? L&uacute;c tăng th&igrave; tăng theo đơn vị ngh&igrave;n, l&uacute;c giảm th&igrave; nhỏ giọt ...theo trăm. Kh&ocirc;ng phục mấy &ocirc;ng xăng dầu v&agrave; c&aacute;ch điều h&agrave;nh xăng dầu... Mong sao cho hết độc quyền, cạnh tranh l&agrave;nh mạnh th&igrave; người ti&ecirc;u d&ugrave;ng mới được hưởng lợi&rdquo; - Nguyen Phi Long:&nbsp; philongnguyensp2vp@gmail.com<br />
<br />
&ldquo;Mới báo cáo lời m&acirc;́y nghìn tỷ, b&acirc;y giờ lại than l&ocirc;̃? C&ocirc;ng nh&acirc;̣n hay thi&ecirc;̣t! Nhưng m&acirc;́y &ocirc;ng &acirc;́y kh&ocirc;ng có &quot;chi&ecirc;u&quot; gì khác lạ hơn sao?&rdquo; - Anh Hùng: ah@yahoo.com.vn<br />
<br />
&ldquo;Lỗ g&igrave; m&agrave; lỗ khi xăng dầu thế giới giảm từ hơn 100$/th&ugrave;ng xuống 83-94$/th&ugrave;ng? Xăng b&ecirc;n Mỹ chưa đến 1$/l&iacute;t trong khi ở Việt Nam hơn 1$/l&iacute;t,&nbsp; kh&ocirc;ng hiểu sao c&oacute; nh&agrave; m&aacute;y lọc dầu m&agrave; người d&acirc;n chả thấy được hưởng lợi t&yacute; n&agrave;o?&rdquo; - Lao: khanh1961@gmail.com<br />
<br />
&ldquo;Xăng dầu ở Mỹ thời gian n&agrave;y đang li&ecirc;n tục giảm gi&aacute;, c&oacute; khi 1 tuần giảm đến 2 lần. C&ograve;n ở VN m&igrave;nh th&igrave; li&ecirc;n tục k&ecirc;u lỗ v&agrave; nhấp nhổm đ&ograve;i tăng gi&aacute; ho&agrave;i l&agrave; sao???&rdquo; - Little Tiger:&nbsp; kimmy27274vn@yahoo.com<br />
<br />
&nbsp;&ldquo;Lỗ g&igrave;? Vừa mới b&aacute;o c&aacute;o lợi nhuận sau thuế đạt 600 tỷ, lợi nhuận n&agrave;y chủ yếu từ việc kinh doanh xăng dầu. Lỗ tr&ecirc;n gi&aacute; th&agrave;nh v&igrave; c&aacute;c &ocirc;ng chi ph&iacute; nhiều chứ sao, chiết khấu cho đại l&yacute; th&igrave; cao. Rồi lại m&oacute;c t&uacute;i d&acirc;n để b&ugrave; v&agrave;o c&aacute;c chi ph&iacute; đ&oacute;&hellip;Qu&aacute; tệ!&rdquo; -&nbsp; Ho&agrave;ng Nguy&ecirc;n:&nbsp; marketing.gialong@gmail.com<br />
<br />
&nbsp;&ldquo;Thật buồn cười cho ng&agrave;nh xăng dầu VN! H&ocirc;m trước b&aacute;o ch&iacute; vừa đăng Petrolimex l&atilde;i khủng 9 th&aacute;ng đầu năm h&agrave;ng ng&agrave;n tỷ, th&igrave; h&ocirc;m nay ng&agrave;nh xăng dầu đang k&ecirc;u lỗ để tăng gi&aacute;. Kh&ocirc;ng hiểu c&aacute;c động th&aacute;i n&agrave;y của ng&agrave;nh xăng dầu c&oacute; gọi l&agrave; chủ đạo của nền kinh tế kh&ocirc;ng? Hay l&agrave;&hellip; g&acirc;y hại cho nền kinh tế bằng việc thao t&uacute;ng thị trường xăng dầu, l&agrave;m ảnh hưởng nghi&ecirc;m trọng đến sự ph&aacute;t triển của nền kinh tế? Đồng thời ức chế sự ph&aacute;t triển của c&aacute;c ng&agrave;nh sản xuất, khiến cuộc sống người d&acirc;n đ&atilde; kh&oacute; khăn lại c&agrave;ng kh&oacute; khăn th&ecirc;m? Tr&aacute;ch nhiệm điều h&agrave;nh của li&ecirc;n Bộ T&agrave;i ch&iacute;nh v&agrave; C&ocirc;ng Thương xem ra đ&atilde; bị v&ocirc; hiệu h&oacute;a bởi sự thao t&uacute;ng n&agrave;y!?&rdquo; - Vinh: quvi792782@yahoo.com.vn<br />
<br />
Kịch bản vẫn bổn cũ soạn lại, c&oacute; mới chăng l&agrave; từ mổ xẻ ng&agrave;y c&agrave;ng gay gắt hơn của dư luận&hellip;<br />
<br />
&ldquo;Nh&agrave; nước kh&ocirc;ng quản v&agrave; trị được những &ldquo;đứa con hư&rdquo; rồi! Xem ra phải để con c&aacute;i tự lập th&ocirc;i, chứ b&acirc;y giờ c&aacute;i kiểu n&oacute;i con kh&ocirc;ng nghe thế n&agrave;y th&igrave; chỉ c&oacute; khổ người d&acirc;n. Cứ nghe n&oacute;i kinh tế quốc doanh l&agrave; đầu t&agrave;u k&eacute;o cả đất nước đi l&ecirc;n, nhưng t&ocirc;i thấy b&acirc;y giờ c&oacute; lẽ n&oacute; lại l&agrave; g&aacute;nh nặng của to&agrave;n nền kinh tế. Kinh doanh g&igrave; m&agrave; k&eacute;m thế th&igrave;&hellip; n&ecirc;n nghỉ đi cho l&agrave;nh, c&aacute;c vị ạ. Ngồi đ&oacute; hưởng tiền thuế của d&acirc;n kh&ocirc;ng thấy&hellip; xấu hổ sao???&rdquo; - Vũ C&ocirc;ng Trứ:&nbsp; coldman062000@gmail.com</p>
<p><br />
Kh&aacute;nh T&ugrave;ng</p>', N'', 1, CAST(0x0000A28300F623FA AS DateTime), N'vananh-hts')
INSERT [dbo].[CategorySub] ([CS_ID], [CS_Name], [CS_Description], [CS_ImageURL], [C_ID], [CS_Content], [CS_Cmd], [CS_TypeDisplay], [CS_CreateDate], [U_UserName]) VALUES (13, N'Hé lộ nguyên nhân 600 bánh heroin lọt qua cửa khẩu Tân Sơn Nhất', N'', N'/Skin/Images/Category/M-c8634.jpg', 1, N'<p>&nbsp;(D&acirc;n tr&iacute;) - 600 b&aacute;nh heroin vừa lọt qua nhiều kh&acirc;u kiểm so&aacute;t nghi&ecirc;m ngặt của s&acirc;n bay quốc tế T&acirc;n Sơn Nhất đ&atilde; l&agrave;m chấn động giới kinh doanh h&agrave;ng kh&ocirc;ng quốc tế. C&oacute; th&ocirc;ng tin cho rằng chiếc m&aacute;y soi trị gi&aacute; 1,2 triệu USD bị hỏng trong thời điểm kiểm tra l&ocirc; h&agrave;ng n&agrave;y.<br />
&nbsp;&gt;&gt; Ph&oacute; Thủ tướng Nguyễn Xu&acirc;n Ph&uacute;c y&ecirc;u cầu l&agrave;m r&otilde; vụ 600 b&aacute;nh heroin<br />
600 b&aacute;nh heroin bị nh&agrave; chức tr&aacute;ch Đ&agrave;i Loan tịch thu<br />
600 b&aacute;nh heroin bị nh&agrave; chức tr&aacute;ch Đ&agrave;i Loan tịch thu<br />
Trước đ&oacute;, ng&agrave;y 17/11, nh&agrave; chức tr&aacute;ch Đ&agrave;i Loan đ&atilde; bắt v&agrave; tịch thu 600 b&aacute;nh heroin nặng gần 230 kg trị gi&aacute; 300 triệu USD, được cất giấu trong 12 d&agrave;n loa nằm trong m&aacute;y bay chở h&agrave;ng của h&atilde;ng h&agrave;ng kh&ocirc;ng China Airlines (Đ&agrave;i Loan) cất c&aacute;nh từ Việt Nam. <br />
Theo đ&aacute;nh gi&aacute; của nhiều nh&acirc;n vi&ecirc;n l&agrave;m việc trong c&aacute;c c&ocirc;ng ty vận chuyển h&agrave;ng ho&aacute; tại TPHCM, việc một số lượng heroin &ldquo;khổng lồ&rdquo; lọt được qua nhiều kh&acirc;u kiểm so&aacute;t nghi&ecirc;m ngặt của cửa khẩu T&acirc;n Sơn Nhất l&agrave; chuyện &ldquo;kh&ocirc;ng b&igrave;nh thường&rdquo;.<br />
C&aacute;c nh&acirc;n vi&ecirc;n n&agrave;y ph&acirc;n t&iacute;ch, th&ocirc;ng thường nếu l&ocirc; h&agrave;ng đ&oacute; thuộc luồng xanh (h&agrave;ng kh&ocirc;ng nằm trong danh mục cấm, nguy hại v&agrave; doanh nghiệp xuất nhập l&ocirc; h&agrave;ng đ&oacute; kh&ocirc;ng nợ đọng thuế, thực hiện nghĩa vụ t&agrave;i ch&iacute;nh) sẽ chỉ trải qua kiểm tra bằng m&aacute;y chiếu, kh&ocirc;ng phải kiểm tra thủ c&ocirc;ng (b&oacute;c gỡ h&agrave;ng ra để nh&acirc;n vi&ecirc;n hải quan kiểm tra).<br />
Trong trường hợp l&ocirc; h&agrave;ng thuộc v&agrave;o luồng v&agrave;ng v&agrave; luồng đỏ sẽ phải trải qua hai kh&acirc;u kiểm tra m&aacute;y chiếu v&agrave; thủ c&ocirc;ng. Việc kiểm tra n&agrave;y v&ocirc; c&ugrave;ng kỹ lưỡng, đặc biệt khi h&agrave;ng đi qua m&aacute;y soi chiếu th&igrave; hầu như biết được tất cả vật dụng b&ecirc;n trong.<br />
Đến thời điểm hiện tại, cơ quan điều tra đ&atilde; x&aacute;c định được đường đi của số heroin n&agrave;y. Theo đ&oacute;, 600 b&aacute;nh heroin tr&ecirc;n nghi c&oacute; xuất xứ từ Trung Quốc v&agrave; được vận chuyển v&agrave;o Việt Nam bằng đường bộ, sau đ&oacute; đưa đến TP.HCM. Từ đ&acirc;y, c&oacute; một nh&oacute;m người vận chuyển lượng heroin tr&ecirc;n, 12 th&ugrave;ng loa c&ugrave;ng nhiều vật dụng kh&aacute;c đến thu&ecirc; một kh&aacute;ch sạn tr&ecirc;n đường Pasteur (Q.3) rồi gia c&ocirc;ng, đ&oacute;ng &eacute;p v&agrave;o th&ugrave;ng loa, chở ra kho h&agrave;ng của C&ocirc;ng ty TNHH dịch vụ h&agrave;ng h&oacute;a T&acirc;n Sơn Nhất (TCS) ở số 46&nbsp; Hậu Giang, P.4, Q.T&acirc;n B&igrave;nh l&agrave;m thủ tục xuất sang Đ&agrave;i Loan.<br />
Hợp đồng vận chuyển h&agrave;ng h&oacute;a thể hiện C&ocirc;ng ty TNHH thương mại dịch vụ giao vận L&ecirc; H&ograve;a (Q.1, TP.HCM) gửi h&agrave;ng v&agrave; khai b&aacute;o l&agrave; h&agrave;ng c&oacute; t&iacute;nh chất nguy hiểm.<br />
Chiều tối 27/11, từ một nguồn cho biết, chiếc m&aacute;y soi chiếu chuy&ecirc;n dụng trị gi&aacute; gần 1,2 triệu USD của kho h&agrave;ng C&ocirc;ng ty TNHH dịch vụ h&agrave;ng h&oacute;a T&acirc;n Sơn Nhất bị hỏng n&ecirc;n kh&ocirc;ng thể soi chiếu v&agrave; ph&aacute;t hiện được l&ocirc; h&agrave;ng chứa 600 b&aacute;nh heroin.<br />
Quy tr&igrave;nh kiểm tra h&agrave;ng ho&aacute; bằng m&aacute;y soi chiếu kh&aacute; kỹ nhưng 600 b&aacute;nh heroin vẫn lọt qua<br />
Quy tr&igrave;nh kiểm tra h&agrave;ng ho&aacute; bằng m&aacute;y soi chiếu kh&aacute; kỹ nhưng 600 b&aacute;nh heroin vẫn lọt qua<br />
Trước t&igrave;nh huống n&agrave;y, nh&acirc;n vi&ecirc;n TCS phải d&ugrave;ng một m&aacute;y soi chiếu kh&aacute;c v&agrave; kết quả l&agrave; l&ocirc; h&agrave;ng heroin nặng 230 kg đ&atilde; kh&ocirc;ng được ph&aacute;t hiện v&agrave; nghiễm nhi&ecirc;n được cho l&ecirc;n m&aacute;y bay, rời Việt Nam đi Đ&agrave;i Loan.<br />
Tuy nhi&ecirc;n, nguy&ecirc;n nh&acirc;n để lọt số heroin &ldquo;khủng&rdquo; qua cửa khẩu T&acirc;n Sơn Nhất vẫn đang được cơ quan chức năng mở rộng điều tra, l&agrave;m r&otilde;. Hiện Ph&oacute; Thủ tướng Nguyễn Xu&acirc;n Ph&uacute;c, Chủ tịch Ủy ban Quốc gia ph&ograve;ng, chống AIDS v&agrave; ph&ograve;ng, chống tệ nạn ma t&uacute;y, mại d&acirc;m đ&atilde; c&oacute; chỉ đạo l&agrave;m r&otilde; vụ việc n&agrave;y. Theo đ&oacute;, Bộ C&ocirc;ng an chủ tr&igrave;, phối hợp với c&aacute;c cơ quan li&ecirc;n quan trong v&agrave; ngo&agrave;i nước khẩn trương x&aacute;c minh, l&agrave;m r&otilde; nguồn gốc số heroin được vận chuyển đi Đ&agrave;i Loan, tiến h&agrave;nh điều tra, mở rộng vụ &aacute;n.<br />
Bộ C&ocirc;ng an chủ tr&igrave;, phối hợp với Bộ Quốc ph&ograve;ng (Bộ Tư lệnh Bộ đội Bi&ecirc;n ph&ograve;ng, Bộ Tư lệnh Cảnh s&aacute;t biển), Bộ T&agrave;i ch&iacute;nh (Tổng cục Hải quan) tăng cường nắm t&igrave;nh h&igrave;nh, bố tr&iacute; lực lượng chuy&ecirc;n tr&aacute;ch, c&oacute; phương &aacute;n đấu tranh hiệu quả với tội phạm vận chuyển, bu&ocirc;n b&aacute;n ma t&uacute;y tr&ecirc;n tuyến đường biển, đường h&agrave;ng kh&ocirc;ng v&agrave; tại c&aacute;c s&acirc;n bay, cửa khẩu, cảng biển.<br />
Bộ T&agrave;i ch&iacute;nh (Tổng cục Hải quan), Bộ Giao th&ocirc;ng vận tải (Cục H&agrave;ng kh&ocirc;ng) l&agrave;m r&otilde; tr&aacute;ch nhiệm vụ việc n&agrave;y v&agrave; tăng cường chỉ đạo để c&oacute; biện ph&aacute;p nghiệp vụ ngăn chặn c&oacute; hiệu quả việc thẩm lậu ma t&uacute;y v&agrave;o Việt Nam v&agrave; từ Việt Nam đi c&aacute;c nước kh&aacute;c qua đường h&agrave;ng kh&ocirc;ng.<br />
<br />
Trung Ki&ecirc;n</p>', N'', 1, CAST(0x0000A284011C0652 AS DateTime), N'vananh-hts')
INSERT [dbo].[CategorySub] ([CS_ID], [CS_Name], [CS_Description], [CS_ImageURL], [C_ID], [CS_Content], [CS_Cmd], [CS_TypeDisplay], [CS_CreateDate], [U_UserName]) VALUES (14, N'Hà Nội: Xin ý kiến nhân dân việc tách Từ Liêm thành 2 quận', N'(D&#226;n tr&#237;) - Chủ tịch UBND th&#224;nh phố H&#224; Nội vừa y&#234;u cầu huyện Từ Li&#234;m xin &#253; kiến nh&#226;n d&#226;n trong việc điều chỉnh địa giới h&#224;nh ch&#237...', N'/Skin/Images/Category/DSC_3145-0917d-f7018.JPG', 1, N'<p>Thường trực Ch&iacute;nh phủ đ&atilde; thống nhất chủ trương cho ph&eacute;p điều chỉnh địa giới h&agrave;nh ch&iacute;nh huyện Từ Li&ecirc;m để th&agrave;nh lập 2 quận v&agrave; điều chỉnh địa giới h&agrave;nh ch&iacute;nh c&aacute;c x&atilde;, thị trấn thuộc huyện n&agrave;y để th&agrave;nh lập 23 phường mới. Đồng thời Ch&iacute;nh phủ cũng y&ecirc;u cầu th&agrave;nh phố thực hiện c&aacute;c tr&igrave;nh tự, thủ tục, ho&agrave;n thiện hồ sơ tr&igrave;nh Ch&iacute;nh phủ tại kỳ họp thường kỳ th&aacute;ng 12/2013.<br />
UBND huyện Từ Li&ecirc;m sẽ xin &yacute; kiến nh&acirc;n d&acirc;n về việc t&aacute;ch huyện th&agrave;nh 2 quận<br />
<br />
Để thực hiện y&ecirc;u cầu tr&ecirc;n, Chủ tịch UBND th&agrave;nh phố H&agrave; Nội y&ecirc;u cầu huyện Từ Li&ecirc;m khẩn trương ho&agrave;n th&agrave;nh đề &aacute;n về việc điều chỉnh địa giới h&agrave;nh ch&iacute;nh để th&agrave;nh lập 2 quận, điều chỉnh địa giới h&agrave;nh ch&iacute;nh c&aacute;c x&atilde;, thị trấn để th&agrave;nh lập 23 phường.<br />
<br />
Sở Nội vụ c&oacute; nhiệm vụ khẩn trương chuẩn bị đề &aacute;n của UBND th&agrave;nh phố về việc đề nghị điều ch&iacute;nh địa giới h&agrave;nh ch&iacute;nh huyện Từ Li&ecirc;m để tr&igrave;nh HĐND th&agrave;nh phố tại kỳ họp thứ 8 v&agrave;o đầu th&aacute;ng 12/2013 tới. Sau khi HĐND th&agrave;nh phố th&ocirc;ng qua, UBND th&agrave;nh phố ho&agrave;n chỉnh hồ sơ đề nghị Bộ Nội vụ tổ chức Hội nghị Li&ecirc;n bộ thẩm định để tr&igrave;nh Ch&iacute;nh phủ tại kỳ họp thường kỳ th&aacute;ng 12/2013.<br />
<br />
Đ&aacute;ng ch&uacute; &yacute;, Chủ tịch UBND th&agrave;nh phố H&agrave; Nội Nguyễn Thế Thảo y&ecirc;u cầu huyện Từ Li&ecirc;m chỉ đạo UBND c&aacute;c x&atilde;, thị trấn tổ chức hội nghị xin &yacute; kiến nh&acirc;n d&acirc;n về việc điều chỉnh địa giới h&agrave;nh ch&iacute;nh huyện Từ Li&ecirc;m v&agrave; điều chỉnh địa giới h&agrave;nh ch&iacute;nh c&aacute;c x&atilde;, thị trấn thuộc huyện n&agrave;y để th&agrave;nh lập 23 phường mới.<br />
<br />
Hội nghị xin &yacute; kiến nh&acirc;n d&acirc;n được tổ chức theo th&ocirc;n, tổ d&acirc;n phố, th&agrave;nh phần l&agrave; cử tri đại diện hộ gia đ&igrave;nh. Hội nghị c&oacute; lập bi&ecirc;n bản, trong đ&oacute; ghi r&otilde;: tổng số hộ d&acirc;n của th&ocirc;n, tổ d&acirc;n phố; tổng số cử tri đại diện hộ tham dự; t&oacute;m tắt, tổng hợp &yacute; kiến thảo luận, số người nhất tr&iacute;, số người kh&ocirc;ng nhất tr&iacute; với chủ trương điều chỉnh địa giới h&agrave;nh ch&iacute;nh. Việc xin &yacute; kiến nh&acirc;n d&acirc;n ho&agrave;n th&agrave;nh chậm nhất v&agrave;o ng&agrave;y 3/12/2013.<br />
<br />
C&aacute;c x&atilde;, thị trấn v&agrave; UBND của huyện Từ Li&ecirc;m tổ chức kỳ họp HĐND để thảo luận đề &aacute;n v&agrave; c&oacute; Nghị quyết đề nghị điều chỉnh địa giới h&agrave;nh ch&iacute;nh huyện Từ Li&ecirc;m. Sau khi HĐND họp xong, UBND c&aacute;c x&atilde;, thị trấn ho&agrave;n chỉnh hồ sơ b&aacute;o c&aacute;o huyện v&agrave; th&agrave;nh phố &yacute; kiến cử tri&hellip;</p>', N'', 0, CAST(0x0000A2850096D2B5 AS DateTime), N'vananh-hts')
SET IDENTITY_INSERT [dbo].[CategorySub] OFF
/****** Object:  Table [dbo].[Gold]    Script Date: 06/03/2014 09:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gold](
	[G_ID] [int] IDENTITY(1,1) NOT NULL,
	[G_Title] [nvarchar](300) NULL,
	[G_Mobile] [nvarchar](20) NULL,
	[G_Description] [nvarchar](500) NULL,
	[G_CreateDate] [datetime] NULL,
	[G_Point] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[G_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Gold] ON
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (1, N'Tuần 21 (09/09/2013-15/09/2013)', N'84925222xxx', N'Khách hàng trúng thưởng tuần 21', CAST(0x0000A26500C773D2 AS DateTime), N'172000')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (2, N'Tuần 22(16/09/2013 - 22/09/2013)', N'841889651xxx', N'Khách hàng trúng thưởng tuần 22', CAST(0x0000A26500C811E4 AS DateTime), N'223800')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (4, N'Tuần 23(16/09/2013 - 22/09/2013)', N'841869075xxx', N'Khách hàng trúng thưởng tuần 23', CAST(0x0000A266009A7750 AS DateTime), N'644600')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (5, N'Tuần 24(30/09/2013 - 06/10/2013)', N'84925222xxx   ', N'Khách hàng trúng thưởng tuần 24', CAST(0x0000A266009A9437 AS DateTime), N'314200')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (6, N'Tuần 25(07/10/2013 - 13/10/2013)', N'841889626xxx', N'Khách hàng trúng thưởng tuần 25', CAST(0x0000A26C00EF7D7C AS DateTime), N'483400')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (7, N'Tuần 26(14/10/2013 - 20/10/2013)', N'841885829xxx', N'Khách hàng trúng thưởng tuần 26', CAST(0x0000A26C00EFDA7D AS DateTime), N'796200')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (8, N'Tuần 27(21/10/2013 - 27/10/2013)', N'841863411xxx', N'Khách hàng trúng thưởng tuần 27', CAST(0x0000A26C00F1D77E AS DateTime), N'222500')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (9, N'Tuần 28(21/10/2013 - 03/11/2013)', N'841863411xxx', N'Khách hàng trúng thưởng tuần 28', CAST(0x0000A26C00F24A5C AS DateTime), N'102200')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (10, N'Tuần 29 (04/11/2013-10/11/2013)', N'84925537xxx', N'Thuê bao trúng thưởng tuần 29', CAST(0x0000A27500992FFD AS DateTime), N'2670386600')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (11, N'Tuần 30 (11/11/2013-17/11/2013)', N'84925537xxx', N'Thuê bao trúng thưởng tuần 30', CAST(0x0000A27A00C7D35D AS DateTime), N'23092300')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (12, N'Tuần 31 (18/11/2013-24/11/2013)', N'84925537xxx', N'Khách hàng trúng thưởng tuần 31', CAST(0x0000A28100F70367 AS DateTime), N'62765200')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (13, N'Tuần 32(25/11/2013 - 01/12/2013)', N'84925537xxx', N'Khách hàng trúng thưởng tuần 32', CAST(0x0000A28800E54397 AS DateTime), N'17520100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (14, N'Tuần 33(02/12/2013 - 08/12/2013)', N'84923059xxx', N'Khách hàng trúng thưởng Tuần 33', CAST(0x0000A28F00BDFDC5 AS DateTime), N'99579100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (15, N'Tuần 34 (09/12/2013 - 15/12/2013)', N'84925537xxx', N'Khách hàng trúng thưởng tuần 34', CAST(0x0000A29D00FD1EB6 AS DateTime), N'36911100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (16, N'Tuần 35 (16/12/2013-22/12/2013)', N'84925537xxx', N'Khách hàng trúng thưởng tuần 35', CAST(0x0000A29D00FD7FA1 AS DateTime), N'23315100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (17, N'Tuần 36 (23/12/2013-29/12/2013)', N'84925537xxx', N'Thuê bao trúng thưởng tuần 36', CAST(0x0000A2A700F5996A AS DateTime), N'2777100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (18, N'Tuần 37 (30/12/2013 - 5/1/2014)', N'841889839xxx', N'Khách hàng trúng thưởng tuần 37', CAST(0x0000A2AE00AD33F7 AS DateTime), N'115103100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (19, N'Tuần 38 (06/1/2014-12/01/2014)', N'841863272xxx', N'Thuê bao trúng thưởng tuần 38', CAST(0x0000A2B300EE6E45 AS DateTime), N'133071100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (20, N'Tuần 39 (13/1/2014-19/01/2014)', N'841863272xxx', N'Thuê bao trúng thưởng tuần 39', CAST(0x0000A2CC009DE367 AS DateTime), N'18705100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (21, N'Tuần 40 (20/01/2014 - 26/01/2014)', N'84925537xxx', N'Thuê bao trúng thưởng tuần 40', CAST(0x0000A2CC009E419A AS DateTime), N'20618100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (22, N'Tuần 41 (27/01/2014 - 02/02/2014)', N'841889624xxx', N'Thuê bao trúng thưởng tuần 41', CAST(0x0000A2CC009E8DE9 AS DateTime), N'18300100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (23, N'Tuần 42 (03/02/2014-09/02/2014)', N'84188962xxxx', N'Thuê bao trúng thưởng tuần 42', CAST(0x0000A2D500FB34FE AS DateTime), N'22796900')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (24, N'Tuần 43 (10/02/2014-16/02/2014)', N'841868572xxx', N'Thuê bao trúng thưởng tuần 43', CAST(0x0000A2D500FB78FB AS DateTime), N'36101100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (25, N'Tuần 44 (17/02/2014 - 23/02/2014)', N'841868440xxx', N'Thuê bao trúng thưởng tuần 44', CAST(0x0000A2DD00B64C89 AS DateTime), N'27136100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (26, N'Tuần 45 (24/02/2014-02/03/2014)', N'841867644xxx', N'Thuê bao trúng thưởng tuần 45', CAST(0x0000A2EB0094750D AS DateTime), N'1239500')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (27, N'Tuần 46 (04/03/2014-19/03/2014)', N'841867644xxx', N'Thuê bao trúng thưởng tuần 46', CAST(0x0000A2F300EA892B AS DateTime), N'570700')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (28, N'Tuần 47 (10/03/2014-16/03/2014)', N'841867644xxx', N'Thuê bao trúng thưởng tuần 47', CAST(0x0000A2F300EAC569 AS DateTime), N'41055100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (29, N'Tuần 48 (17/03/2014-23/03/2014)', N'841868572xxx', N'Thuê bao trúng thưởng tuần 48', CAST(0x0000A2FB009609C5 AS DateTime), N'6135100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (30, N'Tuần 49 (24/03/2014-30/03/2014)', N'84924983xxx', N'Thuê bao trúng thưởng tuần 49', CAST(0x0000A30300F16512 AS DateTime), N'6811100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (31, N'Tuần 50 (31/03/2014-6/04/2014)', N'841865389xxx', N'Thuê bao trúng thưởng tuần 50', CAST(0x0000A30600C066B6 AS DateTime), N'19856100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (32, N'Tuần 51 (07/04/2014-13/04/2014)', N'841882705xxx', N'Thuê bao trúng thưởng tuần 51', CAST(0x0000A30D0092AF58 AS DateTime), N'566100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (33, N'Tuần 52 (14/04/2014-20/04/2014)', N'841867775xxx', N'Thuê bao trúng thưởng tuần 52', CAST(0x0000A314010506E6 AS DateTime), N'15476000')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (34, N'Tuần 53 (21/04/2014-27/04/2014)', N'841868440xxx', N'Thuê bao trúng thưởng tuần 53', CAST(0x0000A31C00FDC9D4 AS DateTime), N'30081100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (35, N'Tuần 54 (28/04/2014-04/05/2014)', N'841884869xxx', N'Thuê bao trúng thưởng tuần 54', CAST(0x0000A324010689FD AS DateTime), N'11846100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (36, N'Tuần 55 (05/05/2014-11/05/2014)', N'841865389xxx', N'Thuê bao trúng thưởng tuần 55', CAST(0x0000A32B00E92C77 AS DateTime), N'36386100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (37, N'Tuần 56 (12/05/2014-18/05/2014)', N'841865389xxx', N'Thuê bao trúng thưởng tuần 56', CAST(0x0000A3320142CDE1 AS DateTime), N'34981100')
INSERT [dbo].[Gold] ([G_ID], [G_Title], [G_Mobile], [G_Description], [G_CreateDate], [G_Point]) VALUES (38, N'Tuần 57 (19/05/2014-25/05/2014)', N'841884869xxx', N'Thuê bao trúng thưởng tuần 57', CAST(0x0000A33B00B05FA1 AS DateTime), N'11989100')
SET IDENTITY_INSERT [dbo].[Gold] OFF
/****** Object:  Table [dbo].[tbl_Advertise]    Script Date: 06/03/2014 09:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Advertise](
	[AdvID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](50) NULL,
	[AdvWidth] [int] NULL,
	[AdvHeight] [int] NULL,
	[AdvURL] [nvarchar](100) NULL,
	[AdvText] [ntext] NULL,
	[AddedDate] [datetime] NULL,
	[ExpireDate] [datetime] NULL,
	[ClickCount] [int] NULL,
	[AdvPosition] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[AdvID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Advertise] ON
INSERT [dbo].[tbl_Advertise] ([AdvID], [FileName], [AdvWidth], [AdvHeight], [AdvURL], [AdvText], [AddedDate], [ExpireDate], [ClickCount], [AdvPosition], [IsActive]) VALUES (1, N'/Upload/Advertise/banner vzone 960x150.swf', 1, 1, N'', N'', CAST(0x0000A18D00000000 AS DateTime), CAST(0x0000A31900000000 AS DateTime), 0, N'Banner Giữa', 1)
INSERT [dbo].[tbl_Advertise] ([AdvID], [FileName], [AdvWidth], [AdvHeight], [AdvURL], [AdvText], [AddedDate], [ExpireDate], [ClickCount], [AdvPosition], [IsActive]) VALUES (9, N'/Upload/Advertise/imgbanner1.jpg', 1, 1, N'http://daugia.vietnamobile.com.vn/web/home.htm', N'', CAST(0x0000A1AA00000000 AS DateTime), CAST(0x0000A1C800BB551A AS DateTime), 1, N'Banner Phải', 0)
INSERT [dbo].[tbl_Advertise] ([AdvID], [FileName], [AdvWidth], [AdvHeight], [AdvURL], [AdvText], [AddedDate], [ExpireDate], [ClickCount], [AdvPosition], [IsActive]) VALUES (10, N'/Upload/Advertise/Vzone Sua 1.JPG', 1, 1, N'', N'', CAST(0x0000A1AA00000000 AS DateTime), CAST(0x0000A1C800BBD5C0 AS DateTime), 1, N'Banner Phải', 1)
INSERT [dbo].[tbl_Advertise] ([AdvID], [FileName], [AdvWidth], [AdvHeight], [AdvURL], [AdvText], [AddedDate], [ExpireDate], [ClickCount], [AdvPosition], [IsActive]) VALUES (12, N'/Upload/Advertise/banner sua 258x375.swf', 1, 1, N'', N'', CAST(0x0000A1AC00000000 AS DateTime), CAST(0x0000A1CA011318B7 AS DateTime), 0, N'Banner Phải', 1)
SET IDENTITY_INSERT [dbo].[tbl_Advertise] OFF
/****** Object:  Table [dbo].[NewsByCategorySub]    Script Date: 06/03/2014 09:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsByCategorySub](
	[N_ID] [int] IDENTITY(1,1) NOT NULL,
	[N_Title] [nvarchar](300) NULL,
	[N_Description] [ntext] NULL,
	[N_ImageURL] [nvarchar](200) NULL,
	[N_User] [nvarchar](100) NULL,
	[N_CreateDate] [datetime] NULL,
	[CS_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[N_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CategoryGame]    Script Date: 06/03/2014 09:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CategoryGame](
	[CG_ID] [int] IDENTITY(1,1) NOT NULL,
	[CG_Name] [nvarchar](50) NULL,
	[CG_Description] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[CG_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uc_CGName_UNIQUE] UNIQUE NONCLUSTERED 
(
	[CG_Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_CategoryGame] ON
INSERT [dbo].[tbl_CategoryGame] ([CG_ID], [CG_Name], [CG_Description]) VALUES (1, N'Văn Phòng', N'Văn Phòng1')
INSERT [dbo].[tbl_CategoryGame] ([CG_ID], [CG_Name], [CG_Description]) VALUES (2, N'Trí Tuệ', N'Trí Tuệtt')
INSERT [dbo].[tbl_CategoryGame] ([CG_ID], [CG_Name], [CG_Description]) VALUES (4, N'Thiếu Nhi', N'Thiếu Nhi')
INSERT [dbo].[tbl_CategoryGame] ([CG_ID], [CG_Name], [CG_Description]) VALUES (8, N'Chiến thuật', N'chiến thuật')
SET IDENTITY_INSERT [dbo].[tbl_CategoryGame] OFF
/****** Object:  Table [dbo].[tbl_Group]    Script Date: 06/03/2014 09:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Group](
	[G_ID] [int] IDENTITY(1,1) NOT NULL,
	[G_Name] [nvarchar](50) NULL,
	[G_Description] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Group] ON
INSERT [dbo].[tbl_Group] ([G_ID], [G_Name], [G_Description]) VALUES (1, N'Quản Trị', N'Quản Trị')
INSERT [dbo].[tbl_Group] ([G_ID], [G_Name], [G_Description]) VALUES (2, N'Khách Hàng', N'Khách Hàng')
SET IDENTITY_INSERT [dbo].[tbl_Group] OFF
/****** Object:  Table [dbo].[tbl_GroupUser]    Script Date: 06/03/2014 09:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_GroupUser](
	[G_Id] [int] IDENTITY(1,1) NOT NULL,
	[G_Description] [nvarchar](50) NULL,
	[G_CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[G_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_GroupUser] ON
INSERT [dbo].[tbl_GroupUser] ([G_Id], [G_Description], [G_CreateDate]) VALUES (1, N'Quản Trị', CAST(0x0000A17400F57ABA AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_GroupUser] OFF
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 06/03/2014 09:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[U_ID] [int] IDENTITY(1,1) NOT NULL,
	[U_UserName] [nvarchar](50) NULL,
	[U_Password] [nvarchar](50) NULL,
	[U_FullName] [nvarchar](50) NULL,
	[U_Mobile] [nvarchar](50) NULL,
	[U_Address] [nvarchar](50) NULL,
	[U_GroupID] [int] NULL,
	[U_CreateDate] [datetime] NULL,
	[U_BirthDay] [datetime] NULL,
	[U_Status] [bit] NULL,
	[U_Email] [nvarchar](50) NULL,
	[U_Money] [float] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Users] ON
INSERT [dbo].[tbl_Users] ([U_ID], [U_UserName], [U_Password], [U_FullName], [U_Mobile], [U_Address], [U_GroupID], [U_CreateDate], [U_BirthDay], [U_Status], [U_Email], [U_Money]) VALUES (1, N'admin', N'B570272D32B0669A9F22835966CA08CF245292F9', N'Nguyen Gia Kien', N'01694994650', N'Ha Noi ', 1, CAST(0x0000A17500000000 AS DateTime), CAST(0x0000801B00000000 AS DateTime), 1, N'kienng2012@gmail.com', 10000)
INSERT [dbo].[tbl_Users] ([U_ID], [U_UserName], [U_Password], [U_FullName], [U_Mobile], [U_Address], [U_GroupID], [U_CreateDate], [U_BirthDay], [U_Status], [U_Email], [U_Money]) VALUES (7, N'hanhcm', N'EB9FA4729D36FB1225AB56868BBE7843357645C9', N'Cam Mai Hanh', N'0912345566', N'Ha Noi', 1, CAST(0x0000A26700000000 AS DateTime), CAST(0x00007E9F00000000 AS DateTime), 1, N'0912345566@gmail.com', 0)
INSERT [dbo].[tbl_Users] ([U_ID], [U_UserName], [U_Password], [U_FullName], [U_Mobile], [U_Address], [U_GroupID], [U_CreateDate], [U_BirthDay], [U_Status], [U_Email], [U_Money]) VALUES (8, N'vananh-hts', N'20EABE5D64B0E216796E834F52D61FD0B70332FC', N'Phạm Thị Vân Anh', N'0925000795', N'Hà Nội', 1, CAST(0x0000A27500000000 AS DateTime), CAST(0x0000794600000000 AS DateTime), 1, N'vananh.p@hts.vn', 0)
INSERT [dbo].[tbl_Users] ([U_ID], [U_UserName], [U_Password], [U_FullName], [U_Mobile], [U_Address], [U_GroupID], [U_CreateDate], [U_BirthDay], [U_Status], [U_Email], [U_Money]) VALUES (9, N'hungnt', N'CD5EA73CD58F827FA78EEF7197B8EE606C99B2E6', N'Nguyễn Thế Hùng', N'0912345678', N'Ha Noi', 1, CAST(0x0000A2EC00000000 AS DateTime), CAST(0x00007F3600000000 AS DateTime), 1, N'hungnt@hts.vn', 0)
SET IDENTITY_INSERT [dbo].[tbl_Users] OFF
/****** Object:  Table [dbo].[tblFunc]    Script Date: 06/03/2014 09:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFunc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Url] [nvarchar](200) NULL,
	[Thutu] [int] NULL,
	[ParentID] [int] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblFunc] ON
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (1, N'Quản lý người dùng', N'/Default.aspx?page=ManagerUser', 1, 0, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (2, N'Quản lý menu', N'/Default.aspx?page=QuanlyFunc', 1, 38, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (3, N'Quản lý hệ thống', N'1', 3, 0, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (5, N'Phân quyền', N'/Default.aspx?page=AddRole', 2, 38, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (6, N'Quản lý Module', N'/Default.aspx?page=QuanlyFunc', 4, 0, 0)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (9, N'Quản lý người dùng', N'/Default.aspx?page=ManagerUser', 2, 3, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (11, N'Quản lý Module', N'/Default.aspx?page=QuanlyFunc', 3, 3, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (12, N'Phân quyền', N'/Default.aspx?page=AddRole', 4, 3, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (13, N'Đổi mật khẩu', N'/Default.aspx?page=ChangePass', 2, 1, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (14, N'Thông tin cá nhân', N'/Default.aspx?page=UserProfile', 1, 1, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (15, N'Quản lý nhóm người dùng', N'/Default.aspx?page=ManagerGroup', 1, 3, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (16, N'Quản lý MiniGame', N'1', 1, 0, 0)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (23, N'Quản lý Danh sách Game', N'/Default.aspx?page=ManageMiniGame', 2, 16, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (24, N'Quản lý Danh mục Game', N'/Default.aspx?page=ManageCategoryGame', 1, 16, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (29, N'Quản lý Dịch vụ Giáo Dục ', N'#', 1, 0, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (30, N'Quản lý Danh mục Dịch Vụ', N'/Default.aspx?page=ManagerCategory', 2, 29, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (35, N'Quản lý tin tức, dịch vụ', N'/Default.aspx?page=ManagerServiceVzone', 3, 29, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (36, N'Quản lý Quảng Cáo', N'/Default.aspx?page=ManagerAdvertising', 4, 29, 1)
INSERT [dbo].[tblFunc] ([ID], [Name], [Url], [Thutu], [ParentID], [Status]) VALUES (37, N'Quản lý Bảng Vàng', N'/Default.aspx?page=ManagerGold', 4, 29, 1)
SET IDENTITY_INSERT [dbo].[tblFunc] OFF
/****** Object:  Table [dbo].[tblRoleDetail]    Script Date: 06/03/2014 09:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoleDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[FunID] [int] NULL,
	[IsDelete] [bit] NULL,
	[IsUpdate] [bit] NULL,
	[IsAdd] [bit] NULL,
	[IsView] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblRoleDetail] ON
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (2, 1, 2, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (3, 1, 3, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (4, 1, 4, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (5, 1, 5, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (6, 1, 6, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (7, 1, 7, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (8, 1, 8, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (9, 1, 9, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (10, 1, 10, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (11, 1, 11, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (12, 1, 12, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (13, 1, 13, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (14, 1, 14, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (15, 1, 15, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (17, 1, 17, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (18, 1, 18, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (19, 1, 19, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (20, 1, 20, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (21, 1, 21, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (22, 1, 22, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (23, 1, 23, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (24, 1, 24, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (25, 1, 25, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (26, 1, 26, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (27, 1, 27, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (28, 1, 28, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (29, 1, 16, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (30, 1, 29, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (31, 1, 30, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (33, 4, 1, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (34, 4, 2, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (35, 4, 3, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (36, 4, 4, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (37, 4, 5, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (38, 4, 6, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (39, 4, 7, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (40, 4, 9, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (41, 4, 11, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (42, 4, 12, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (43, 4, 13, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (44, 4, 14, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (45, 4, 15, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (46, 4, 16, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (47, 4, 23, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (48, 4, 24, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (49, 4, 29, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (50, 4, 30, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (51, 4, 31, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (53, 1, 31, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (54, 1, 32, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (55, 1, 33, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (56, 4, 32, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (57, 1, 34, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (58, 1, 35, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (59, 4, 35, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (60, 1, 36, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (61, 4, 36, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (62, 5, 1, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (63, 5, 2, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (64, 5, 3, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (65, 5, 5, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (66, 5, 6, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (67, 5, 9, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (68, 5, 11, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (69, 5, 12, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (70, 5, 13, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (71, 5, 14, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (72, 5, 15, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (73, 5, 16, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (74, 5, 23, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (75, 5, 24, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (76, 5, 29, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (77, 5, 30, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (78, 5, 35, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (79, 5, 36, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (80, 1, 37, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (81, 6, 1, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (82, 6, 2, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (83, 6, 3, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (84, 6, 5, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (85, 6, 6, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (86, 6, 9, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (87, 6, 11, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (88, 6, 12, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (89, 6, 13, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (90, 6, 14, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (91, 6, 15, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (92, 6, 16, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (93, 6, 23, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (94, 6, 24, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (95, 6, 29, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (96, 6, 30, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (97, 6, 35, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (98, 6, 36, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (99, 6, 37, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (100, 7, 1, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (101, 7, 2, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (102, 7, 3, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (103, 7, 5, 0, 0, 0, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (104, 7, 6, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (105, 7, 9, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (106, 7, 11, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (107, 7, 12, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (108, 7, 13, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (109, 7, 14, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (110, 7, 15, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (111, 7, 16, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (112, 7, 23, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (113, 7, 24, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (114, 7, 29, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (115, 7, 30, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (116, 7, 35, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (117, 7, 36, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (118, 7, 37, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (119, 8, 1, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (120, 8, 2, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (121, 8, 3, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (122, 8, 5, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (123, 8, 6, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (124, 8, 9, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (125, 8, 11, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (126, 8, 12, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (127, 8, 13, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (128, 8, 14, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (129, 8, 15, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (130, 8, 16, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (131, 8, 23, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (132, 8, 24, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (133, 8, 29, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (134, 8, 30, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (135, 8, 35, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (136, 8, 36, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (137, 8, 37, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (138, 9, 1, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (139, 9, 2, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (140, 9, 3, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (141, 9, 5, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (142, 9, 6, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (143, 9, 9, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (144, 9, 11, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (145, 9, 12, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (146, 9, 13, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (147, 9, 14, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (148, 9, 15, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (149, 9, 16, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (150, 9, 23, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (151, 9, 24, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (152, 9, 29, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (153, 9, 30, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (154, 9, 35, 1, 1, 1, 1)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (155, 9, 36, 0, 0, 0, 0)
INSERT [dbo].[tblRoleDetail] ([ID], [UserID], [FunID], [IsDelete], [IsUpdate], [IsAdd], [IsView]) VALUES (156, 9, 37, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[tblRoleDetail] OFF
/****** Object:  Table [dbo].[tbl_MiniGame]    Script Date: 06/03/2014 09:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MiniGame](
	[MG_ID] [int] IDENTITY(1,1) NOT NULL,
	[MG_Name] [nvarchar](100) NULL,
	[MG_Description] [ntext] NULL,
	[MG_Help] [ntext] NULL,
	[MG_ImageUrl] [nvarchar](300) NULL,
	[MG_LinkGame] [nvarchar](300) NULL,
	[MG_CreateDate] [datetime] NULL,
	[MG_ClickCount] [int] NULL,
	[MG_CateID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_MiniGame] ON
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (1, N'Xếp Kim Cương', N'Xếp Kim Cương', N'Xếp Kim Cương', N'/UploadGame/Chrysanthemum.jpg', N'http://socvui3.vcmedia.vn/upload/Xep-kim-cuong-Bejeweled50c2a7dc008d8/Xep-kim-cuong-Bejeweled50c2a7dc01126.swf', CAST(0x0000A1720025646B AS DateTime), 0, 1)
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (2, N'Angry Bird', N'Angry Bird', N'Angry Bird', N'/UploadGame/angry-birds-120x120.jpg', N'http://socvui3.vcmedia.vn/upload/angry-birds-space-xmas50e145db45770/angry-birds-space-xmas50e145db46719.swf', CAST(0x0000A1720026AC66 AS DateTime), 0, 1)
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (4, N'LOCK', N'LOCK', N'LOCK', N'/UploadGame/Penguins.jpg', N'honehone_clock_tr.swf', CAST(0x0000A172008B76A0 AS DateTime), 0, 2)
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (5, N'ABC', N'abc', N'abc', N'/UploadGame/Tulips.jpg', N'honehone_clock_tr.swf', CAST(0x0000A172008BDD10 AS DateTime), 0, 1)
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (7, N'TEST ABC', N'22', N'222', N'/UploadGame/Desert.jpg', N'http://socvui3.vcmedia.vn/upload/Xep-kim-cuong-Bejeweled50c2a7dc008d8/Xep-kim-cuong-Bejeweled50c2a7dc01126.swf', CAST(0x0000A172009C63EC AS DateTime), 0, 1)
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (19, N'edee', N'ee', N'eeee', N'/UploadGame/vnnich.jpg', N'/UploadGame/vnnich.jpg', CAST(0x0000A17300F8EABC AS DateTime), 0, 8)
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (18, N'sssss', N'sssss', N'sss', N'/UploadGame/vnnich.jpg', N'/UploadGame/honehone_clock_tr.swf', CAST(0x0000A17300F642D8 AS DateTime), 0, 4)
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (10, N'Game Kim Cương', N'Game Kim Cương', N'Game Kim Cương', N'/UploadGame/Penguins.jpg', N'', CAST(0x0000A173009D347A AS DateTime), 0, 1)
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (11, N'Test3', N'Test3', N'Test3', N'/UploadGame/Hydrangeas.jpg', N'/UploadGame/honehone_clock_tr.swf', CAST(0x0000A17300AE04B4 AS DateTime), 0, 4)
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (12, N'gggg', N'aaa', N'aaag', N'/UploadGame/vnnich.jpg', N'/UploadGame/amorphous-plus-2044.swf', CAST(0x0000A17300B3F74E AS DateTime), 0, 2)
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (15, N'ABCD', N'ABCD', N'ABCD', N'/UploadGame/vnnich.jpg', N'/UploadGame/Kim-Cuong-Bejeweled512dcaa23b804.swf', CAST(0x0000A17300C036E1 AS DateTime), 0, 4)
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (16, N'6666666666', N'dsd', N'sds', N'/UploadGame/vnnich.jpg', N'/UploadGame/honehone_clock_tr.swf', CAST(0x0000A17300E7C910 AS DateTime), 0, 1)
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (17, N's', N's', N's', N'/UploadGame/vnnich.jpg', N'/UploadGame/honehone_clock_tr.swf', CAST(0x0000A17300E9DF83 AS DateTime), 0, 2)
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (20, N'ddddsssss', N'ddd', N'dddd', N'/UploadGame/vnnich.jpg', N'/UploadGame/amorphous-plus-2044.swf', CAST(0x0000A17300FA07B8 AS DateTime), 0, 2)
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (21, N'sss', N'ss', N'sss', N'/UploadGame/vnnich.jpg', N'/UploadGame/Kim-Cuong-Bejeweled512dcaa23b804.swf', CAST(0x0000A1730106D823 AS DateTime), 0, 1)
INSERT [dbo].[tbl_MiniGame] ([MG_ID], [MG_Name], [MG_Description], [MG_Help], [MG_ImageUrl], [MG_LinkGame], [MG_CreateDate], [MG_ClickCount], [MG_CateID]) VALUES (23, N'sdssssrrr', N'000000000', N'sssrrr', N'/UploadGame/vnnich.jpg', N'/UploadGame/honehone_clock_tr.swf', CAST(0x0000A17301096CDC AS DateTime), 0, 4)
SET IDENTITY_INSERT [dbo].[tbl_MiniGame] OFF
/****** Object:  StoredProcedure [dbo].[tblRoleDetail_UpdateMenuRoll]    Script Date: 06/03/2014 09:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[tblRoleDetail_UpdateMenuRoll]
(	
	@MenuRollTable 	ntext
)
AS 
Begin TRANSACTION
DECLARE @hdoc int
EXEC sp_xml_preparedocument @hdoc OUTPUT, @MenuRollTable
create table #tempDelMenuRoll(ID int)
create table #tempUpdateMenuRoll(UserID int,FuncID int,ID int,IsAddNew bit,IsEdit bit,IsDelete bit,IsView bit)

insert into #tempDelMenuRoll
Select ID from OPENXML(@hdoc, '//DelMenuRollIDList') WITH(ID int)	
if @@error>0 goto Problem


insert Into #tempUpdateMenuRoll
select UserID,FuncID,ID,IsAddNew,IsEdit,IsDelete,IsView 
from OPENXML(@hdoc, '//UpdateMenuRollIDList') 
WITH(UserID int,FuncID int,ID int,IsAddNew bit,IsEdit bit,IsDelete bit,IsView bit)	

delete from tblRoleDetail
where ID in (select ID from #tempDelMenuRoll)
if @@error>0 goto Problem

Update tblRoleDetail
set tblRoleDetail.IsAdd=#tempUpdateMenuRoll.IsAddNew,
	tblRoleDetail.IsUpdate=#tempUpdateMenuRoll.IsEdit,
	tblRoleDetail.IsDelete=#tempUpdateMenuRoll.IsDelete,
	tblRoleDetail.IsView=#tempUpdateMenuRoll.IsView
from tblRoleDetail,#tempUpdateMenuRoll
where tblRoleDetail.ID=#tempUpdateMenuRoll.ID
if @@error>0 goto Problem

Insert Into tblRoleDetail--(UserID,FunID,IsDelete,IsUpdate,IsAdd,IsView)
select UserID,FuncID,
	   IsDelete,IsEdit,
	   IsAddNew,IsView
from #tempUpdateMenuRoll
where #tempUpdateMenuRoll.ID=0

drop table #tempDelMenuRoll
drop table #tempUpdateMenuRoll

EXEC sp_xml_removedocument @hdoc	
commit
return 0

Problem:
rollback TRANSACTION
return 1
GO
/****** Object:  StoredProcedure [dbo].[tblRoleDetail_Update]    Script Date: 06/03/2014 09:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblRoleDetail_Update]
(
	@ID int,
	@UserID int,
	@FunID int,
	@IsDelete bit,
	@IsUpdate bit,
	@IsAdd bit,
	@IsView bit
)
AS
UPDATE tblRoleDetail SET
	UserID = @UserID,
	FunID = @FunID,
	IsDelete = @IsDelete,
	IsUpdate = @IsUpdate,
	IsAdd = @IsAdd,
	IsView = @IsView

WHERE ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[tblRoleDetail_Insert]    Script Date: 06/03/2014 09:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblRoleDetail_Insert]
(
	@UserID int,
	@FunID int,
	@IsDelete bit,
	@IsUpdate bit,
	@IsAdd bit,
	@IsView bit
)
AS
INSERT INTO tblRoleDetail
(
	UserID,
	FunID,
	IsDelete,
	IsUpdate,
	IsAdd,
	IsView
)
VALUES 
(
	@UserID,
	@FunID,
	@IsDelete,
	@IsUpdate,
	@IsAdd,
	@IsView
)
RETURN @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[tblRoleDetail_GetInfo]    Script Date: 06/03/2014 09:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblRoleDetail_GetInfo]
	@ID int
AS
SELECT * FROM tblRoleDetail
WHERE FunID = @ID
GO
/****** Object:  StoredProcedure [dbo].[tblRoleDetail_GetAllByUser]    Script Date: 06/03/2014 09:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[tblRoleDetail_GetAllByUser]
(
	@UserID int
)
AS

--	SELECT tblRoleDetail.*,tblFunc.[Name] FROM tblRoleDetail 
--	inner join tblFunc on tblFunc.ID= tblRoleDetail.FunID
--	where tblRoleDetail.UserID=@UserID

SELECT isnull((select IsDelete from tblRoleDetail where UserID=@UserID and tblRoleDetail.FunID=tblFunc.ID),0)IsDelete,
isnull((select IsUpdate from tblRoleDetail where UserID=@UserID and tblRoleDetail.FunID=tblFunc.ID),0)IsUpdate,
isnull((select IsAdd from tblRoleDetail where UserID=@UserID and tblRoleDetail.FunID=tblFunc.ID),0)IsAdd,
isnull((select IsView from tblRoleDetail where UserID=@UserID and tblRoleDetail.FunID=tblFunc.ID),0)IsView,
isnull((select ID from tblRoleDetail where UserID=@UserID and tblRoleDetail.FunID=tblFunc.ID),0)ID,
tblFunc.[Name] ,tblFunc.ID as FuncID
FROM tblFunc
GO
/****** Object:  StoredProcedure [dbo].[tblRoleDetail_GetAll]    Script Date: 06/03/2014 09:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblRoleDetail_GetAll]
AS
SELECT * FROM tblRoleDetail
GO
/****** Object:  StoredProcedure [dbo].[tblRoleDetail_Delete]    Script Date: 06/03/2014 09:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblRoleDetail_Delete]
	@ID int
AS
DELETE tblRoleDetail 
WHERE ID = @ID
GO
/****** Object:  StoredProcedure [dbo].[tbl_GroupUser_Update]    Script Date: 06/03/2014 09:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_GroupUser_Update]
(
	@G_Id int,
	@G_Description nvarchar (50)
)
AS
UPDATE tbl_GroupUser SET
	G_Description = @G_Description

WHERE G_Id=@G_Id
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[tbl_GroupUser_Insert]    Script Date: 06/03/2014 09:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_GroupUser_Insert]
(
	@G_Description nvarchar (50)
)
AS
INSERT INTO tbl_GroupUser
(
	G_Description
)
VALUES 
(
	@G_Description
)
RETURN @@IDENTITY

SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[tbl_GroupUser_GetInfo]    Script Date: 06/03/2014 09:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_GroupUser_GetInfo]
	@G_Id int
AS
SELECT * FROM tbl_GroupUser
WHERE G_Id = @G_Id 
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[tbl_GroupUser_GetAll]    Script Date: 06/03/2014 09:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_GroupUser_GetAll]
AS
SELECT * FROM tbl_GroupUser ORDER BY tbl_GroupUser.G_CreateDate

SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[tbl_GroupUser_Delete]    Script Date: 06/03/2014 09:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_GroupUser_Delete]
	@G_Id int
AS
DELETE tbl_GroupUser 
WHERE G_Id = @G_Id
GO
/****** Object:  StoredProcedure [dbo].[tblFunc_Update]    Script Date: 06/03/2014 09:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblFunc_Update]
(
	@ID int,
	@Name nvarchar (200),
	@Url nvarchar (200),
	@Thutu int,
	@ParentID int,
	@Status bit
)
AS
UPDATE tblFunc SET
	Name = @Name,
	Url = @Url,
	Thutu = @Thutu,
	ParentID = @ParentID,
	Status = @Status

WHERE ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[tblFunc_Insert]    Script Date: 06/03/2014 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblFunc_Insert]
(
	@Name nvarchar (200),
	@Url nvarchar (200),
	@Thutu int,
	@ParentID int,
	@Status bit
)
AS
INSERT INTO tblFunc
(
	Name,
	Url,
	Thutu,
	ParentID,
	Status
)
VALUES 
(
	@Name,
	@Url,
	@Thutu,
	@ParentID,
	@Status
)
RETURN @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[tblFunc_GetParent]    Script Date: 06/03/2014 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[tblFunc_GetParent]
(
	@UserID int
	
)
AS
SELECT * FROM tblFunc t1
inner join tblRoleDetail t2 on t1.ID = t2.FunID
where t2.UserID= @UserID and t2.IsView = 1 and t1.ParentID=0 and t1.Status=1
GO
/****** Object:  StoredProcedure [dbo].[tblFunc_GetInfo]    Script Date: 06/03/2014 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblFunc_GetInfo]
	@ID int
AS
SELECT * FROM tblFunc
WHERE ID = @ID
GO
/****** Object:  StoredProcedure [dbo].[tblFunc_GetChildel]    Script Date: 06/03/2014 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[tblFunc_GetChildel]
(
	@UserID int,
	@ParentID int
	
)
AS
SELECT * FROM tblFunc t1
inner join tblRoleDetail t2 on t1.ID = t2.FunID
where t2.UserID= @UserID and t2.IsView = 1 and t1.ParentID=@ParentID and t2.IsView=1
GO
/****** Object:  StoredProcedure [dbo].[tblFunc_GetAll]    Script Date: 06/03/2014 09:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblFunc_GetAll]
AS
SELECT * FROM tblFunc
GO
/****** Object:  StoredProcedure [dbo].[tblFunc_Delete]    Script Date: 06/03/2014 09:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblFunc_Delete]
	@ID int
AS
DELETE tblFunc 
WHERE ID = @ID
GO
/****** Object:  StoredProcedure [dbo].[tblFunc_CheckPermision]    Script Date: 06/03/2014 09:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblFunc_CheckPermision]
(
	@UserID int,
	@FuncID int
	
)
AS

	SELECT t2.* from tblRoleDetail t2 
	where t2.UserID= @UserID and t2.FunID=@FuncID
GO
/****** Object:  StoredProcedure [dbo].[tbl_Users_Update]    Script Date: 06/03/2014 09:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Users_Update]
(
	@U_ID int,
	@U_UserName nvarchar (50),
	@U_Password nvarchar (50),
	@U_FullName nvarchar (50),
	@U_Money float,
	@U_Mobile nvarchar (50),
	@U_Address nvarchar (50),
	@U_GroupID int,
	@U_CreateDate datetime,
	@U_BirthDay datetime,
	@U_Status bit,
	@U_Email nvarchar(50)
)
AS
UPDATE tbl_Users SET
	U_UserName = @U_UserName,
	U_Password = @U_Password,
	U_FullName = @U_FullName,
	U_Money = @U_Money,
	U_Mobile = @U_Mobile,
	U_Address = @U_Address,
	U_GroupID = @U_GroupID,
	U_CreateDate = @U_CreateDate,
	U_BirthDay = @U_BirthDay,
	U_Status = @U_Status,
	U_Email = @U_Email

WHERE U_ID=@U_ID
GO
/****** Object:  StoredProcedure [dbo].[tbl_Users_Insert]    Script Date: 06/03/2014 09:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Users_Insert]
(
	@U_UserName nvarchar (50),
	@U_Password nvarchar (50),
	@U_FullName nvarchar (50),
	@U_Money float,
	@U_Mobile nvarchar (50),
	@U_Address nvarchar (50),
	@U_GroupID int,
	@U_CreateDate datetime,
	@U_BirthDay datetime,
	@U_Status bit,
	@U_Email nvarchar(50)
)
AS
INSERT INTO tbl_Users
(
	U_UserName,
	U_Password,
	U_FullName,
	U_Money,
	U_Mobile,
	U_Address,
	U_GroupID,
	U_CreateDate,
	U_BirthDay,
	U_Status,
	U_Email
)
VALUES 
(
	@U_UserName,
	@U_Password,
	@U_FullName,
	@U_Money,
	@U_Mobile,
	@U_Address,
	@U_GroupID,
	@U_CreateDate,
	@U_BirthDay,
	@U_Status,
	@U_Email
)
RETURN @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[tbl_Users_GetInfo_ByEmail]    Script Date: 06/03/2014 09:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Users_GetInfo_ByEmail]
	@U_Email nvarchar(50)
AS
SELECT * FROM tbl_Users
WHERE U_Email = @U_Email
GO
/****** Object:  StoredProcedure [dbo].[tbl_Users_GetInfo_Admin]    Script Date: 06/03/2014 09:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[tbl_Users_GetInfo_Admin]
	@U_ID int
AS
SELECT * FROM tbl_Users
WHERE U_ID = @U_ID AND U_GroupID = 1
GO
/****** Object:  StoredProcedure [dbo].[tbl_Users_GetInfo]    Script Date: 06/03/2014 09:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Users_GetInfo]
	@U_ID int
AS
SELECT * FROM tbl_Users
WHERE U_ID = @U_ID
GO
/****** Object:  StoredProcedure [dbo].[tbl_Users_GetAll_GroupID]    Script Date: 06/03/2014 09:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Users_GetAll_GroupID]
@G_ID int
AS
SELECT tbl_Users.*,tbl_Group.G_Name,'/Default.aspx?id=9&page=AddRoleUser&userid='+cast(U_ID as nvarchar(10)) as URLPhanQuyen 
FROM tbl_Users
inner join tbl_Group on tbl_Group.G_ID=tbl_Users.U_GroupID
where tbl_Group.G_ID = @G_ID
GO
/****** Object:  StoredProcedure [dbo].[tbl_Users_GetAll]    Script Date: 06/03/2014 09:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Users_GetAll]
AS
SELECT tbl_Users.*,tbl_Group.G_Name,'/Default.aspx?id=3&page=AddRoleUser&userid='+cast(U_ID as nvarchar(10)) as URLPhanQuyen 
FROM tbl_Users
inner join tbl_Group on tbl_Group.G_ID=tbl_Users.U_GroupID
order by tbl_Users.U_CreateDate desc
GO
/****** Object:  StoredProcedure [dbo].[tbl_Users_Delete]    Script Date: 06/03/2014 09:06:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Users_Delete]
	@U_ID int
AS
DELETE tbl_Users 
WHERE U_ID = @U_ID
GO
/****** Object:  StoredProcedure [dbo].[tbl_Users_CheckLoginAdmin]    Script Date: 06/03/2014 09:06:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[tbl_Users_CheckLoginAdmin]
(
	@U_UserName nvarchar(50),
	@U_Password nvarchar(50),
	@Output int output
)
AS
if(exists(select U_ID from tbl_Users where U_UserName=@U_UserName and U_Password=@U_Password))
begin
	set @Output = 1;
	Select * from tbl_Users 
	where U_UserName = @U_UserName and U_Password = @U_Password
end
else
begin
	set @Output=2;
end
GO
/****** Object:  StoredProcedure [dbo].[tbl_Users_CheckLogin]    Script Date: 06/03/2014 09:06:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[tbl_Users_CheckLogin]
(
	@U_UserName nvarchar(50),
	@U_Password nvarchar(50),
	@Output int output
)
AS
if(exists(select U_ID from tbl_Users where U_UserName=@U_UserName and U_Password=@U_Password))
begin
	set @Output = 1;
	Select * from tbl_Users 
	where U_UserName = @U_UserName and U_Password = @U_Password
end
else
begin
	set @Output=2;
end
GO
/****** Object:  StoredProcedure [dbo].[tbl_Users_CheckExistUserName]    Script Date: 06/03/2014 09:06:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[tbl_Users_CheckExistUserName]
(
	@U_UserName nvarchar(50),
	@Output int output
)
AS
if(exists(select U_ID from tbl_Users where U_UserName=@U_UserName))
begin
	set @Output = 1;
end
else
begin
	set @Output=2;
end
GO
/****** Object:  StoredProcedure [dbo].[tbl_Users_ChangePass]    Script Date: 06/03/2014 09:06:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[tbl_Users_ChangePass]
(
	@U_UserName nvarchar(50),
	@U_PasswordOld nvarchar(50),
	@U_PasswordNew nvarchar(50),
	@Output int output
)
AS
	if(exists(select U_ID from tbl_Users where U_UserName=@U_UserName and U_PassWord=@U_PassWordOld))
		begin
			set @Output =1;
			Update tbl_Users Set U_Password = @U_PasswordNew
			where U_UserName = @U_UserName and U_Password = @U_PasswordOld
		end
	else
		begin
			set @Output= 2;
		end
GO
/****** Object:  StoredProcedure [dbo].[tbl_MiniGame_Update]    Script Date: 06/03/2014 09:06:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_MiniGame_Update]
(
	@MG_ID int,
	@MG_Name nvarchar (100),
	@MG_Description ntext,
	@MG_Help ntext,
	@MG_ImageUrl nvarchar (300),
	@MG_LinkGame nvarchar (300),
	@MG_CreateDate datetime,
	@MG_ClickCount int,
	@MG_CateID int
)
AS
UPDATE tbl_MiniGame SET
	MG_Name = @MG_Name,
	MG_Description = @MG_Description,
	MG_Help = @MG_Help,
	MG_ImageUrl = @MG_ImageUrl,
	MG_LinkGame = @MG_LinkGame,
	MG_CreateDate = @MG_CreateDate,
	MG_ClickCount = @MG_ClickCount,
	MG_CateID = @MG_CateID

WHERE MG_ID=@MG_ID
GO
/****** Object:  StoredProcedure [dbo].[tbl_MiniGame_Insert]    Script Date: 06/03/2014 09:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_MiniGame_Insert]
(
	@MG_Name nvarchar (100),
	@MG_Description ntext,
	@MG_Help ntext,
	@MG_ImageUrl nvarchar (300),
	@MG_LinkGame nvarchar (300),
	@MG_CreateDate datetime,
	@MG_ClickCount int,
	@MG_CateID int
)
AS
INSERT INTO tbl_MiniGame
(
	MG_Name,
	MG_Description,
	MG_Help,
	MG_ImageUrl,
	MG_LinkGame,
	MG_CreateDate,
	MG_ClickCount,
	MG_CateID
)
VALUES 
(
	@MG_Name,
	@MG_Description,
	@MG_Help,
	@MG_ImageUrl,
	@MG_LinkGame,
	@MG_CreateDate,
	@MG_ClickCount,
	@MG_CateID
)
RETURN @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[tbl_MiniGame_GetInfo]    Script Date: 06/03/2014 09:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_MiniGame_GetInfo]
	@MG_ID int
AS
SELECT * FROM tbl_MiniGame
WHERE MG_ID = @MG_ID
GO
/****** Object:  StoredProcedure [dbo].[tbl_MiniGame_GetAll_ByCategory]    Script Date: 06/03/2014 09:06:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_MiniGame_GetAll_ByCategory]

(
	@MG_CateID int
)
AS
SELECT * FROM tbl_MiniGame  where MG_CateID =@MG_CateID order by MG_CreateDate desc
GO
/****** Object:  StoredProcedure [dbo].[tbl_MiniGame_GetAll]    Script Date: 06/03/2014 09:06:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_MiniGame_GetAll]
AS
SELECT * FROM tbl_MiniGame order by MG_CreateDate desc
GO
/****** Object:  StoredProcedure [dbo].[tbl_MiniGame_Delete]    Script Date: 06/03/2014 09:06:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_MiniGame_Delete]
	@MG_ID int
AS
DELETE tbl_MiniGame 
WHERE MG_ID = @MG_ID
GO
/****** Object:  StoredProcedure [dbo].[tbl_Group_Update]    Script Date: 06/03/2014 09:06:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[tbl_Group_Update]
(
	@G_ID int,
	@G_Name nvarchar (50),
	@G_Description nvarchar (50)
)
AS
UPDATE tbl_Group SET
	G_Name = @G_Name,
	G_Description = @G_Description

WHERE G_ID=@G_ID
GO
/****** Object:  StoredProcedure [dbo].[tbl_Group_Insert]    Script Date: 06/03/2014 09:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[tbl_Group_Insert]
(
	@G_Name nvarchar (50),
	@G_Description nvarchar (50)
)
AS
INSERT INTO tbl_Group
(
	G_Name,
	G_Description
)
VALUES 
(
	@G_Name,
	@G_Description
)
RETURN @@IDENTITY

SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[tbl_Group_GetInfo]    Script Date: 06/03/2014 09:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[tbl_Group_GetInfo]
	@G_ID int
AS
SELECT * FROM tbl_Group
WHERE G_ID = @G_ID 
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[tbl_Group_GetAll]    Script Date: 06/03/2014 09:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[tbl_Group_GetAll]
AS
SELECT * FROM tbl_Group
GO
/****** Object:  StoredProcedure [dbo].[tbl_Group_Delete]    Script Date: 06/03/2014 09:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[tbl_Group_Delete]
	@G_ID int
AS
DELETE tbl_Group 
WHERE G_ID = @G_ID

SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[tbl_CategoryGame_Update]    Script Date: 06/03/2014 09:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_CategoryGame_Update]
(
	@CG_ID int,
	@CG_Name nvarchar (50),
	@CG_Description nvarchar (200)
)
AS
UPDATE tbl_CategoryGame SET
	CG_Name = @CG_Name,
	CG_Description = @CG_Description

WHERE CG_ID=@CG_ID
GO
/****** Object:  StoredProcedure [dbo].[tbl_CategoryGame_Insert]    Script Date: 06/03/2014 09:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_CategoryGame_Insert]
(
	@CG_Name nvarchar (50),
	@CG_Description nvarchar (200)
)
AS
INSERT INTO tbl_CategoryGame
(
	CG_Name,
	CG_Description
)
VALUES 
(
	@CG_Name,
	@CG_Description
)
RETURN @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[tbl_CategoryGame_GetInfo]    Script Date: 06/03/2014 09:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_CategoryGame_GetInfo]
	@CG_ID int
AS
SELECT * FROM tbl_CategoryGame
WHERE CG_ID = @CG_ID
GO
/****** Object:  StoredProcedure [dbo].[tbl_CategoryGame_GetAll]    Script Date: 06/03/2014 09:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_CategoryGame_GetAll]
AS
SELECT * FROM tbl_CategoryGame
GO
/****** Object:  StoredProcedure [dbo].[tbl_CategoryGame_Delete]    Script Date: 06/03/2014 09:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_CategoryGame_Delete]
	@CG_ID int
AS
DELETE tbl_CategoryGame 
WHERE CG_ID = @CG_ID
GO
/****** Object:  StoredProcedure [dbo].[tbl_Advertise_Update]    Script Date: 06/03/2014 09:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Advertise_Update]
(
	@AdvID int,
	@FileName nvarchar (50),
	@AdvWidth int,
	@AdvHeight int,
	@AdvURL nvarchar (100),
	@AdvText ntext,
	@AddedDate datetime,
	@ExpireDate datetime,
	@ClickCount int,
	@AdvPosition nvarchar (50),
	@IsActive bit
)
AS
UPDATE tbl_Advertise SET
	FileName = @FileName,
	AdvWidth = @AdvWidth,
	AdvHeight = @AdvHeight,
	AdvURL = @AdvURL,
	AdvText = @AdvText,
	AddedDate = @AddedDate,
	ExpireDate = @ExpireDate,
	ClickCount = @ClickCount,
	AdvPosition = @AdvPosition,
	IsActive = @IsActive

WHERE AdvID=@AdvID
GO
/****** Object:  StoredProcedure [dbo].[tbl_Advertise_Insert]    Script Date: 06/03/2014 09:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Advertise_Insert]
(
	@FileName nvarchar (50),
	@AdvWidth int,
	@AdvHeight int,
	@AdvURL nvarchar (100),
	@AdvText ntext,
	@AddedDate datetime,
	@ExpireDate datetime,
	@ClickCount int,
	@AdvPosition nvarchar (50),
	@IsActive bit
)
AS
INSERT INTO tbl_Advertise
(
	FileName,
	AdvWidth,
	AdvHeight,
	AdvURL,
	AdvText,
	AddedDate,
	ExpireDate,
	ClickCount,
	AdvPosition,
	IsActive
)
VALUES 
(
	@FileName,
	@AdvWidth,
	@AdvHeight,
	@AdvURL,
	@AdvText,
	@AddedDate,
	@ExpireDate,
	@ClickCount,
	@AdvPosition,
	@IsActive
)
RETURN @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[tbl_Advertise_GetInfo]    Script Date: 06/03/2014 09:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Advertise_GetInfo]
	@AdvID int
AS
SELECT * FROM tbl_Advertise
WHERE AdvID = @AdvID
GO
/****** Object:  StoredProcedure [dbo].[tbl_Advertise_GetByActive]    Script Date: 06/03/2014 09:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Advertise_GetByActive]
(
 @Top int,
 @AdvPosition nvarchar(50),
 @TypeFile int
	
	)
AS
SELECT top (@Top)* FROM tbl_Advertise 
where AdvPosition like @AdvPosition 
and IsActive=1 
and ClickCount=@TypeFile
and [ExpireDate] > GETDATE() 
order by AddedDate desc;
GO
/****** Object:  StoredProcedure [dbo].[tbl_Advertise_GetAll]    Script Date: 06/03/2014 09:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Advertise_GetAll]
AS
SELECT * FROM tbl_Advertise
GO
/****** Object:  StoredProcedure [dbo].[tbl_Advertise_Delete]    Script Date: 06/03/2014 09:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Advertise_Delete]
	@AdvID int
AS
DELETE tbl_Advertise 
WHERE AdvID = @AdvID
GO
/****** Object:  StoredProcedure [dbo].[Gold_Update]    Script Date: 06/03/2014 09:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Gold_Update]
(
	@G_ID int,
	@G_Title nvarchar (300),
	@G_Mobile nvarchar (20),
	@G_Point NVARCHAR(50),
	@G_Description nvarchar (500),
	
	@Output INT OUTPUT
)
AS
	IF NOT EXISTS (SELECT G_ID FROM Gold WHERE G_Title = @G_Title)
	BEGIN
		UPDATE Gold SET
			G_Title = @G_Title,
			G_Mobile = @G_Mobile,
			
			G_Point = @G_Point,
			G_Description = @G_Description
		

		WHERE G_ID=@G_ID
		
		SET @Output = 1
	END
	
	ELSE
		BEGIN
			UPDATE Gold SET
			
			G_Mobile = @G_Mobile,
			
			G_Point = @G_Point,
			G_Description = @G_Description
			
			

		WHERE G_ID=@G_ID
		
		SET @Output = 2
		END
GO
/****** Object:  StoredProcedure [dbo].[Gold_Insert]    Script Date: 06/03/2014 09:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Gold_Insert]
(
	@G_Title nvarchar (300),
	@G_Mobile nvarchar (20),
	@G_Point nvarchar (50),
	@G_Description nvarchar (500),
	@Output int OUTPUT
)
AS

		IF NOT EXISTS (SELECT G_ID FROM Gold WHERE G_Title = @G_Title)
		BEGIN
			
		
			INSERT INTO Gold
			(
				G_Title,
				G_Mobile,
				G_Point,
				G_Description
				
			)
			VALUES 
			(
				@G_Title,
				@G_Mobile,
				@G_Point,
				@G_Description
			)
			SET @Output = 1
		END
		ELSE
			
			BEGIN
				SET @Output = 2;
			END
GO
/****** Object:  StoredProcedure [dbo].[Gold_GetTop6]    Script Date: 06/03/2014 09:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Gold_GetTop6]
AS
SELECT TOP 6 * FROM Gold ORDER BY G_CreateDate desc
GO
/****** Object:  StoredProcedure [dbo].[Gold_GetInfo]    Script Date: 06/03/2014 09:06:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Gold_GetInfo]
	@G_ID int
AS
SELECT * FROM Gold
WHERE G_ID = @G_ID
GO
/****** Object:  StoredProcedure [dbo].[Gold_GetAll_Pager]    Script Date: 06/03/2014 09:06:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Gold_GetAll_Pager]
(
	@page int,
	@pagesize int,
	@OutputCount int output
)
AS
	declare @Start int
	declare @End int
	set @Start = (@page-1)*@pagesize+1
	set @End = (@page)*(@pagesize)
begin
	set @OutputCount = (select COUNT(*) from Gold)
	SELECT *
 
	from(
		select ROW_NUMBER()over(order by G_CreateDate desc)as RowIndex, *
		from Gold
	)t
	where t.RowIndex >= @Start and t.RowIndex <=@End 
end
GO
/****** Object:  StoredProcedure [dbo].[Gold_GetAll]    Script Date: 06/03/2014 09:06:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Gold_GetAll]
AS
SELECT * FROM Gold ORDER BY G_CreateDate desc
GO
/****** Object:  StoredProcedure [dbo].[Gold_Delete]    Script Date: 06/03/2014 09:06:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Gold_Delete]
	@G_ID int
AS
DELETE Gold 
WHERE G_ID = @G_ID
GO
/****** Object:  StoredProcedure [dbo].[GetTop3_ByNews]    Script Date: 06/03/2014 09:06:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTop3_ByNews]
AS
SELECT TOP 3 * FROM CategorySub WHERE C_ID =1
GO
/****** Object:  StoredProcedure [dbo].[GetNewsTop1Home]    Script Date: 06/03/2014 09:06:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNewsTop1Home]
AS
SELECT TOP 1 * FROM CategorySub
WHERE C_ID = 16 ORDER BY CS_ID
GO
/****** Object:  StoredProcedure [dbo].[CheckExistsName_CategorySub]    Script Date: 06/03/2014 09:06:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CheckExistsName_CategorySub]
(
	@output int output,
	@CS_Name nvarchar(50)
)
as
if(exists(select * from CategorySub where CS_Name = @CS_Name))
	begin
		set @output = 1
	end
else
	begin
		set @output = 2
	end
GO
/****** Object:  StoredProcedure [dbo].[CheckExistsName_Category]    Script Date: 06/03/2014 09:06:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CheckExistsName_Category]
(
	@output int output,
	@C_Name nvarchar(50)
)
as
if(exists(select * from Category where C_Name = @C_Name))
	begin
		set @output = 1
	end
else
	begin
		set @output = 2
	end
GO
/****** Object:  StoredProcedure [dbo].[CategorySubDB_GetByCategory_Fix]    Script Date: 06/03/2014 09:06:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[CategorySubDB_GetByCategory_Fix]
	@C_ID int
AS
SELECT *,(select C_Name from Category where C_ID = @C_ID)AS C_Name FROM CategorySub
WHERE C_ID = @C_ID
GO
/****** Object:  StoredProcedure [dbo].[CategorySubDB_GetByCategory]    Script Date: 06/03/2014 09:06:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CategorySubDB_GetByCategory]
	@C_ID int
AS
SELECT *,(select C_Name from Category where C_ID = @C_ID)AS C_Name FROM CategorySub
WHERE C_ID = @C_ID
GO
/****** Object:  StoredProcedure [dbo].[CategorySub_Update]    Script Date: 06/03/2014 09:06:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CategorySub_Update]
(
	@CS_ID int,
	@CS_Name nvarchar (500),
	@CS_Description ntext,
	@CS_ImageURL nvarchar (200),
	@C_ID int,
	@CS_Content ntext,
	@CS_Cmd nvarchar (50),
	@CS_TypeDisplay int =null,
	@CS_CreateDate datetime,
	@U_UserName nvarchar (50) = null
)
AS
UPDATE CategorySub SET
	CS_Name = @CS_Name,
	CS_Description = @CS_Description,
	CS_ImageURL = @CS_ImageURL,
	C_ID = @C_ID,
	CS_Content = @CS_Content,
	CS_Cmd = @CS_Cmd,
	CS_TypeDisplay = @CS_TypeDisplay,
	CS_CreateDate = @CS_CreateDate,
	U_UserName = @U_UserName

WHERE CS_ID=@CS_ID
GO
/****** Object:  StoredProcedure [dbo].[CategorySub_Insert]    Script Date: 06/03/2014 09:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CategorySub_Insert]
(
	@CS_Name nvarchar (500),
	@CS_Description ntext,
	@CS_ImageURL nvarchar (200),
	@C_ID int,
	@CS_Content ntext,
	@CS_Cmd nvarchar (50),
	@CS_TypeDisplay int =null,
	@CS_CreateDate datetime,
	@U_UserName nvarchar (50) =null
)
AS
INSERT INTO CategorySub
(
	CS_Name,
	CS_Description,
	CS_ImageURL,
	C_ID,
	CS_Content,
	CS_Cmd,
	CS_TypeDisplay,
	CS_CreateDate,
	U_UserName
)
VALUES 
(
	@CS_Name,
	@CS_Description,
	@CS_ImageURL,
	@C_ID,
	@CS_Content,
	@CS_Cmd,
	@CS_TypeDisplay,--1: hien thi tren trang chu ; 2: ko hien thi
	@CS_CreateDate,
	@U_UserName
)
RETURN @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[CategorySub_GetInfo]    Script Date: 06/03/2014 09:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CategorySub_GetInfo]
	@CS_ID int
AS
SELECT s.*, (SELECT c.C_Name FROM Category c WHERE c.C_ID = s.C_ID ) AS C_Name FROM CategorySub AS s
WHERE s.CS_ID = @CS_ID
GO
/****** Object:  StoredProcedure [dbo].[CategorySub_GetAll_GetCateName]    Script Date: 06/03/2014 09:06:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CategorySub_GetAll_GetCateName]
AS
SELECT *, (SElect C_Name from Category where Category.C_ID = CategorySub.C_ID)As C_CateName FROM CategorySub order by CS_CreateDate desc
GO
/****** Object:  StoredProcedure [dbo].[CategorySub_GetAll_ByCate_Pager]    Script Date: 06/03/2014 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CategorySub_GetAll_ByCate_Pager]
(
	@C_ID int,
	@page int,
	@pagesize int,
	@OutputCount int output
)
AS
	declare @Start int
	declare @End int
	set @Start = (@page-1)*@pagesize+1
	set @End = (@page)*(@pagesize)
begin
	set @OutputCount = (select COUNT(*) from CategorySub Where C_ID = @C_ID)
	SELECT *,(SELECT c.C_Name FROM Category c WHERE C_ID = @C_ID) AS C_Name
 
	from(
		select ROW_NUMBER()over(order by CS_CreateDate desc)as RowIndex, *
		from CategorySub Where C_ID = @C_ID
	)t
	where t.RowIndex >= @Start and t.RowIndex <=@End 
end
GO
/****** Object:  StoredProcedure [dbo].[CategorySub_GetAll]    Script Date: 06/03/2014 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CategorySub_GetAll]
AS
SELECT * FROM CategorySub
GO
/****** Object:  StoredProcedure [dbo].[CategorySub_Delete]    Script Date: 06/03/2014 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CategorySub_Delete]
	@CS_ID int
AS
DELETE CategorySub 
WHERE CS_ID = @CS_ID
GO
/****** Object:  StoredProcedure [dbo].[Category_Update]    Script Date: 06/03/2014 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Category_Update]
(
	@C_ID int,
	@C_Name nvarchar (50),
	@C_Description ntext
	
)
AS
UPDATE Category SET
	C_Name = @C_Name,
	C_Description = @C_Description


WHERE C_ID=@C_ID
GO
/****** Object:  StoredProcedure [dbo].[Category_Insert]    Script Date: 06/03/2014 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Category_Insert]
(
	@C_Name nvarchar (50),
	@C_Description ntext
	
)
AS
INSERT INTO Category
(
	C_Name,
	C_Description
	
)
VALUES 
(
	@C_Name,
	@C_Description
	
)
RETURN @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[Category_GetInfo]    Script Date: 06/03/2014 09:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Category_GetInfo]
	@C_ID int
AS
SELECT * FROM Category
WHERE C_ID = @C_ID
GO
/****** Object:  StoredProcedure [dbo].[Category_GetDistinctTypeDisplay]    Script Date: 06/03/2014 09:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Category_GetDistinctTypeDisplay]
	
	
	AS
		Select distinct CS_TypeDisplay from CategorySub
GO
/****** Object:  StoredProcedure [dbo].[Category_GetDistinctName]    Script Date: 06/03/2014 09:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Category_GetDistinctName]
	
	
	AS
		Select distinct C_Name,C_ID from Category where C_ID <> 4
GO
/****** Object:  StoredProcedure [dbo].[Category_GetCateName_ByID]    Script Date: 06/03/2014 09:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Category_GetCateName_ByID]
	@C_ID int
AS
SELECT C_Name FROM Category
WHERE C_ID = @C_ID
GO
/****** Object:  StoredProcedure [dbo].[Category_GetAll]    Script Date: 06/03/2014 09:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Category_GetAll]
AS
SELECT * FROM Category
GO
/****** Object:  StoredProcedure [dbo].[Category_Delete]    Script Date: 06/03/2014 09:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Category_Delete]
	@C_ID int
AS
DELETE Category 
WHERE C_ID = @C_ID
GO
/****** Object:  Default [DF_CategorySub_CS_CreateDate]    Script Date: 06/03/2014 09:06:09 ******/
ALTER TABLE [dbo].[CategorySub] ADD  CONSTRAINT [DF_CategorySub_CS_CreateDate]  DEFAULT (getdate()) FOR [CS_CreateDate]
GO
/****** Object:  Default [DF__Gold__G_CreateDa__114A936A]    Script Date: 06/03/2014 09:06:09 ******/
ALTER TABLE [dbo].[Gold] ADD  DEFAULT (getdate()) FOR [G_CreateDate]
GO
/****** Object:  Default [DF__tbl_Adver__Added__0A9D95DB]    Script Date: 06/03/2014 09:06:09 ******/
ALTER TABLE [dbo].[tbl_Advertise] ADD  DEFAULT (getdate()) FOR [AddedDate]
GO
/****** Object:  Default [DF__tbl_Adver__IsAct__0B91BA14]    Script Date: 06/03/2014 09:06:09 ******/
ALTER TABLE [dbo].[tbl_Advertise] ADD  DEFAULT ((0)) FOR [IsActive]
GO
/****** Object:  Default [DF_NewsByCategorySub_N_CreateDate]    Script Date: 06/03/2014 09:06:09 ******/
ALTER TABLE [dbo].[NewsByCategorySub] ADD  CONSTRAINT [DF_NewsByCategorySub_N_CreateDate]  DEFAULT (getdate()) FOR [N_CreateDate]
GO
/****** Object:  Default [DF_tbl_GroupUser_G_CreateDate]    Script Date: 06/03/2014 09:06:09 ******/
ALTER TABLE [dbo].[tbl_GroupUser] ADD  CONSTRAINT [DF_tbl_GroupUser_G_CreateDate]  DEFAULT (getdate()) FOR [G_CreateDate]
GO
/****** Object:  Default [DF_tbl_MiniGame_MG_CreateDate]    Script Date: 06/03/2014 09:06:09 ******/
ALTER TABLE [dbo].[tbl_MiniGame] ADD  CONSTRAINT [DF_tbl_MiniGame_MG_CreateDate]  DEFAULT (getdate()) FOR [MG_CreateDate]
GO
