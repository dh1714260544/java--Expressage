USE [qczl]
GO
/****** Object:  Table [dbo].[t_permissions]    Script Date: 03/12/2018 21:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_permissions](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
	[isDeleted] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[t_permissions] ([id], [name], [description], [isDeleted]) VALUES (1, N'affiche', N'公告管理权限', 1)
INSERT [dbo].[t_permissions] ([id], [name], [description], [isDeleted]) VALUES (2, N'expressage', N'代取管理权限', 1)
INSERT [dbo].[t_permissions] ([id], [name], [description], [isDeleted]) VALUES (3, N'user', N'用户管理权限', 1)
INSERT [dbo].[t_permissions] ([id], [name], [description], [isDeleted]) VALUES (4, N'guestbook', N'投诉管理权限', 1)
/****** Object:  Table [dbo].[t_expressages]    Script Date: 03/12/2018 21:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_expressages](
	[type] [nvarchar](50) NULL,
	[beginTime] [nvarchar](50) NULL,
	[isDeleted] [tinyint] NULL,
	[username] [nvarchar](50) NULL,
	[address] [nvarchar](150) NULL,
	[raddress] [nvarchar](150) NULL,
	[phone] [varchar](22) NULL,
	[images] [varchar](200) NULL,
	[money] [float] NULL,
	[userid] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[istaked] [tinyint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[t_expressages] ON
INSERT [dbo].[t_expressages] ([type], [beginTime], [isDeleted], [username], [address], [raddress], [phone], [images], [money], [userid], [id], [istaked]) VALUES (N'大包', N'2018-03-02', 1, N'xxxx', N'333', N'332', N'15555', N'null', 21, 51, 41, 0)
INSERT [dbo].[t_expressages] ([type], [beginTime], [isDeleted], [username], [address], [raddress], [phone], [images], [money], [userid], [id], [istaked]) VALUES (N'小包', N'2018-03-01', 1, N'x23', N'xx', N'xx3', N'155552', N'null', 2, 47, 52, 1)
INSERT [dbo].[t_expressages] ([type], [beginTime], [isDeleted], [username], [address], [raddress], [phone], [images], [money], [userid], [id], [istaked]) VALUES (N'小包', N'2018-03-11', 0, N'1', N'33', N'xx2', N'155552', N'/upload_file/sale/1520779092507b8a6685a50984196b0dc50d697b4c7db20180215132937.jpeg', 2, 47, 53, 0)
INSERT [dbo].[t_expressages] ([type], [beginTime], [isDeleted], [username], [address], [raddress], [phone], [images], [money], [userid], [id], [istaked]) VALUES (N'小包', N'2018-03-01', 0, N'2', N'22', N'x2', N'155552', N'/upload_file/sale/1520779116679b8a6685a50984196b0dc50d697b4c7db20180215132937.jpeg', 21, 47, 54, 0)
INSERT [dbo].[t_expressages] ([type], [beginTime], [isDeleted], [username], [address], [raddress], [phone], [images], [money], [userid], [id], [istaked]) VALUES (N'小包', N'2018-03-03', 1, N'xxx1', N'xx', N'222', N'1555555', N'null', 2, 51, 48, 1)
INSERT [dbo].[t_expressages] ([type], [beginTime], [isDeleted], [username], [address], [raddress], [phone], [images], [money], [userid], [id], [istaked]) VALUES (N'小包', N'2018-03-08', 1, N'155', N'222', N'2333', N'155552', N'/upload_file/sale/1520780428580t010d74d51947f9a10a.png', 2, 47, 55, 1)
INSERT [dbo].[t_expressages] ([type], [beginTime], [isDeleted], [username], [address], [raddress], [phone], [images], [money], [userid], [id], [istaked]) VALUES (N'中包', N'2018-03-01', 1, N'xxx', N'x1', N'x2', N'1555555', N'/upload_file/sale/1520831361782head-img.png', 2, 47, 56, 1)
SET IDENTITY_INSERT [dbo].[t_expressages] OFF
/****** Object:  Table [dbo].[system]    Script Date: 03/12/2018 21:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[system](
	[id] [int] NOT NULL,
	[sitename] [nvarchar](100) NOT NULL,
	[url] [nvarchar](100) NOT NULL,
	[keyword] [nvarchar](500) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[state] [nvarchar](50) NOT NULL,
	[reasons] [nvarchar](100) NOT NULL,
	[dir] [nvarchar](100) NOT NULL,
	[record] [nvarchar](50) NOT NULL,
	[copyright] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[system] ([id], [sitename], [url], [keyword], [description], [email], [state], [reasons], [dir], [record], [copyright]) VALUES (1, N'跑跑快递代取', N'http://localhost:8080/WSRCZP/', N'跑跑快递代取', N'跑跑快递代取', N'admin@admin.com', N'open', N'快递代取', N'admin', N'跑跑快递代取', N'跑跑快递代取')
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 03/12/2018 21:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [sysname] NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[replay]    Script Date: 03/12/2018 21:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[replay](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mid] [int] NOT NULL,
	[replay] [nvarchar](200) NOT NULL,
	[replayer] [nvarchar](50) NOT NULL,
	[replaytime] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[replay] ON
INSERT [dbo].[replay] ([id], [mid], [replay], [replayer], [replaytime]) VALUES (9, 24, N'我一会教训他', N'admin', CAST(0x0000A85800F42270 AS DateTime))
INSERT [dbo].[replay] ([id], [mid], [replay], [replayer], [replaytime]) VALUES (11, 32, N'测试回复', N'admin', CAST(0x0000A85800F42270 AS DateTime))
INSERT [dbo].[replay] ([id], [mid], [replay], [replayer], [replaytime]) VALUES (12, 34, N'OK', N'admin', CAST(0x0000A85800F42270 AS DateTime))
SET IDENTITY_INSERT [dbo].[replay] OFF
/****** Object:  Table [dbo].[pmember]    Script Date: 03/12/2018 21:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmember](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mid] [int] NOT NULL,
	[realname] [nvarchar](100) NOT NULL,
	[sex] [nvarchar](50) NOT NULL,
	[bir] [nvarchar](50) NULL,
	[sheng] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[telphone] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[question] [nvarchar](100) NOT NULL,
	[answer] [nvarchar](100) NOT NULL,
	[address] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[pmember] ON
INSERT [dbo].[pmember] ([id], [mid], [realname], [sex], [bir], [sheng], [city], [telphone], [email], [question], [answer], [address]) VALUES (17, 42, N'王小强', N'm', N'25', N'陕西', N'西安', N'0288888888', N'xiaoqiang@163.com', N'xiaoqiang', N'xiaoqiang888', N'永安路108号')
INSERT [dbo].[pmember] ([id], [mid], [realname], [sex], [bir], [sheng], [city], [telphone], [email], [question], [answer], [address]) VALUES (18, 43, N'妞妞', N'f', N'作者会员', N'北京', N'北京', N'01088888888', N'xiaoniu@163.com', N'woshishui', N'xiaoniu', N'fds')
INSERT [dbo].[pmember] ([id], [mid], [realname], [sex], [bir], [sheng], [city], [telphone], [email], [question], [answer], [address]) VALUES (19, 44, N'熊猫', N'm', N'50', N'陕西', N'西安', N'18300726818', N'58850198@qq.com', N'444', N'444111', N'')
INSERT [dbo].[pmember] ([id], [mid], [realname], [sex], [bir], [sheng], [city], [telphone], [email], [question], [answer], [address]) VALUES (20, 45, N'汤姆', N'm', N'12', N'甘肃', N'兰州', N'34234233', N'23423433@qq.com', N'hha', N'hh', N'兰州')
INSERT [dbo].[pmember] ([id], [mid], [realname], [sex], [bir], [sheng], [city], [telphone], [email], [question], [answer], [address]) VALUES (21, 46, N'玛丽', N'm', N'34', N'湖南', N'梆州', N'234353453', N'345345@qq.com', N'1', N'12', N'测试')
INSERT [dbo].[pmember] ([id], [mid], [realname], [sex], [bir], [sheng], [city], [telphone], [email], [question], [answer], [address]) VALUES (22, 47, N'旋风', N'm', N'22', N'天津', N'天津', N'155555555555', N'9867715700@qq.com', N'下信息', N'下信息2', N'水水水水水水')
INSERT [dbo].[pmember] ([id], [mid], [realname], [sex], [bir], [sheng], [city], [telphone], [email], [question], [answer], [address]) VALUES (23, 48, N'赵哥', N'm', N'18', N'北京', N'北京', N'155555555555', N'7777@qq.com', N'123', N'1234', N'咖咖哩')
INSERT [dbo].[pmember] ([id], [mid], [realname], [sex], [bir], [sheng], [city], [telphone], [email], [question], [answer], [address]) VALUES (24, 49, N'xxx', N'm', N'12', N'天津', N'天津', N'155555555555', N'1323@qq.com', N'123', N'1234', N'xxx')
INSERT [dbo].[pmember] ([id], [mid], [realname], [sex], [bir], [sheng], [city], [telphone], [email], [question], [answer], [address]) VALUES (25, 50, N'xx', N'm', N'11', N'北京', N'北京', N'155555555555', N'1111@qq.com', N'123', N'1234', N'xx')
INSERT [dbo].[pmember] ([id], [mid], [realname], [sex], [bir], [sheng], [city], [telphone], [email], [question], [answer], [address]) VALUES (26, 51, N'xx', N'm', N'12', N'天津', N'天津', N'155555555555', N'12345678@qq.com', N'123', N'1234', N'xx')
INSERT [dbo].[pmember] ([id], [mid], [realname], [sex], [bir], [sheng], [city], [telphone], [email], [question], [answer], [address]) VALUES (27, 52, N'汤姆', N'm', N'20', N'辽宁', N'沈阳', N'188888888888888', N'234234234@qq.com', N'24', N'234', N'北京')
INSERT [dbo].[pmember] ([id], [mid], [realname], [sex], [bir], [sheng], [city], [telphone], [email], [question], [answer], [address]) VALUES (28, 53, N'xxx', N'm', N'16', N'黑龙江', N'哈尔滨', N'155555555555', N'1111@qq.com', N'123', N'1234', N'xx')
INSERT [dbo].[pmember] ([id], [mid], [realname], [sex], [bir], [sheng], [city], [telphone], [email], [question], [answer], [address]) VALUES (29, 54, N'123', N'm', N'123', N'辽宁', N'大连', N'15555555', N'123@qq.com', N'123', N'1234', N'123')
SET IDENTITY_INSERT [dbo].[pmember] OFF
/****** Object:  Table [dbo].[member]    Script Date: 03/12/2018 21:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[regtime] [datetime] NOT NULL,
	[ifuse] [int] NOT NULL,
	[logintimes] [int] NOT NULL,
	[lasttime] [datetime] NOT NULL,
	[lastip] [nvarchar](50) NOT NULL,
	[jf] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[member] ON
INSERT [dbo].[member] ([id], [username], [password], [type], [regtime], [ifuse], [logintimes], [lasttime], [lastip], [jf]) VALUES (42, N'xiaoqiang', N'96e79218965eb72c92a549dd5a330112', N'person', CAST(0x0000A85500F42270 AS DateTime), 1, 75, CAST(0x0000A858013861EC AS DateTime), N'127.0.0.1', 100)
INSERT [dbo].[member] ([id], [username], [password], [type], [regtime], [ifuse], [logintimes], [lasttime], [lastip], [jf]) VALUES (43, N'xiaoniu', N'0b4e7a0e5fe84ad35fb5f95b9ceeac79', N'person', CAST(0x0000A85500F42270 AS DateTime), 1, 9, CAST(0x0000A858013861EC AS DateTime), N'127.0.0.1', 200)
INSERT [dbo].[member] ([id], [username], [password], [type], [regtime], [ifuse], [logintimes], [lasttime], [lastip], [jf]) VALUES (44, N'ztest', N'e10adc3949ba59abbe56e057f20f883e', N'person', CAST(0x0000A85500F42270 AS DateTime), 1, 1, CAST(0x0000A858013861EC AS DateTime), N'0:0:0:0:0:0:0:1', NULL)
INSERT [dbo].[member] ([id], [username], [password], [type], [regtime], [ifuse], [logintimes], [lasttime], [lastip], [jf]) VALUES (45, N'tom123', N'fcea920f7412b5da7be0cf42b8c93759', N'person', CAST(0x0000A85500F42270 AS DateTime), 1, 0, CAST(0x0000A858013861EC AS DateTime), N'0:0:0:0:0:0:0:1', NULL)
INSERT [dbo].[member] ([id], [username], [password], [type], [regtime], [ifuse], [logintimes], [lasttime], [lastip], [jf]) VALUES (46, N'mali', N'fcea920f7412b5da7be0cf42b8c93759', N'person', CAST(0x0000A85D0159A974 AS DateTime), 1, 30, CAST(0x0000A85F00C419F4 AS DateTime), N'0:0:0:0:0:0:0:1', NULL)
INSERT [dbo].[member] ([id], [username], [password], [type], [regtime], [ifuse], [logintimes], [lasttime], [lastip], [jf]) VALUES (47, N'test', N'e10adc3949ba59abbe56e057f20f883e', N'person', CAST(0x0000A89C010B9AA4 AS DateTime), 1, 135, CAST(0x0000A8A100DAD57C AS DateTime), N'110.189.199.76', NULL)
INSERT [dbo].[member] ([id], [username], [password], [type], [regtime], [ifuse], [logintimes], [lasttime], [lastip], [jf]) VALUES (48, N'test2', N'e10adc3949ba59abbe56e057f20f883e', N'person', CAST(0x0000A89C015592F8 AS DateTime), 1, 24, CAST(0x0000A8A00102F2A0 AS DateTime), N'169.254.207.151', NULL)
INSERT [dbo].[member] ([id], [username], [password], [type], [regtime], [ifuse], [logintimes], [lasttime], [lastip], [jf]) VALUES (49, N'test3', N'e10adc3949ba59abbe56e057f20f883e', N'person', CAST(0x0000A89E018471CC AS DateTime), 1, 3, CAST(0x0000A8A001075FD4 AS DateTime), N'169.254.207.151', NULL)
INSERT [dbo].[member] ([id], [username], [password], [type], [regtime], [ifuse], [logintimes], [lasttime], [lastip], [jf]) VALUES (50, N'test4', N'e10adc3949ba59abbe56e057f20f883e', N'person', CAST(0x0000A89E01865820 AS DateTime), 1, 4, CAST(0x0000A8A001710C90 AS DateTime), N'110.189.199.126', NULL)
INSERT [dbo].[member] ([id], [username], [password], [type], [regtime], [ifuse], [logintimes], [lasttime], [lastip], [jf]) VALUES (51, N'test5', N'e10adc3949ba59abbe56e057f20f883e', N'person', CAST(0x0000A89E018847D4 AS DateTime), 1, 3, CAST(0x0000A8A000FF4DD0 AS DateTime), N'169.254.207.151', NULL)
INSERT [dbo].[member] ([id], [username], [password], [type], [regtime], [ifuse], [logintimes], [lasttime], [lastip], [jf]) VALUES (52, N'tom1234', N'fcea920f7412b5da7be0cf42b8c93759', N'person', CAST(0x0000A8A000C45108 AS DateTime), 1, 1, CAST(0x0000A8A000C46170 AS DateTime), N'171.211.102.249', NULL)
INSERT [dbo].[member] ([id], [username], [password], [type], [regtime], [ifuse], [logintimes], [lasttime], [lastip], [jf]) VALUES (53, N'test6', N'e10adc3949ba59abbe56e057f20f883e', N'person', CAST(0x0000A8A000FE1744 AS DateTime), 1, 0, CAST(0x0000A8A000FE1744 AS DateTime), N'169.254.207.151', NULL)
INSERT [dbo].[member] ([id], [username], [password], [type], [regtime], [ifuse], [logintimes], [lasttime], [lastip], [jf]) VALUES (54, N'testt', N'e10adc3949ba59abbe56e057f20f883e', N'person', CAST(0x0000A8A00178A130 AS DateTime), 1, 1, CAST(0x0000A8A00178A838 AS DateTime), N'171.211.69.178', NULL)
SET IDENTITY_INSERT [dbo].[member] OFF
/****** Object:  Table [dbo].[js]    Script Date: 03/12/2018 21:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[js](
	[js] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[js] ([js]) VALUES (N'<p><img alt="" src="/qczl/UserFiles/Image/1(1).jpg" width="707" height="598" />sdfaf</p>')
/****** Object:  Table [dbo].[guestbook]    Script Date: 03/12/2018 21:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[guestbook](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nickname] [nvarchar](100) NOT NULL,
	[pic] [nvarchar](100) NOT NULL,
	[email] [nvarchar](50) NULL,
	[qq] [nvarchar](50) NULL,
	[weburl] [nvarchar](100) NULL,
	[blogurl] [nvarchar](100) NULL,
	[expressions] [nvarchar](100) NOT NULL,
	[content] [nvarchar](200) NOT NULL,
	[addtime] [datetime] NOT NULL,
	[ip] [nvarchar](50) NOT NULL,
	[replay] [int] NOT NULL,
	[ifhide] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[guestbook] ON
INSERT [dbo].[guestbook] ([id], [nickname], [pic], [email], [qq], [weburl], [blogurl], [expressions], [content], [addtime], [ip], [replay], [ifhide]) VALUES (24, N'游客', N'images/nobody.gif', N'', N'', N'', N'', N'images/face/1.gif', N'今天生意怎么样?', CAST(0x0000A85700F42270 AS DateTime), N'127.0.0.1', 1, 1)
INSERT [dbo].[guestbook] ([id], [nickname], [pic], [email], [qq], [weburl], [blogurl], [expressions], [content], [addtime], [ip], [replay], [ifhide]) VALUES (32, N'xiaoqiang', N'images/nobody.gif', N'', N'', N'', N'', N'images/face/1.gif', N'测试反馈功能', CAST(0x00009FFE00F42270 AS DateTime), N'192.168.1.103', 1, 1)
INSERT [dbo].[guestbook] ([id], [nickname], [pic], [email], [qq], [weburl], [blogurl], [expressions], [content], [addtime], [ip], [replay], [ifhide]) VALUES (33, N'游客', N'images/nobody.gif', N'', N'', N'', N'', N'images/face/1.gif', N'网站不错', CAST(0x0000A8580101DE10 AS DateTime), N'192.168.1.103', 0, 1)
INSERT [dbo].[guestbook] ([id], [nickname], [pic], [email], [qq], [weburl], [blogurl], [expressions], [content], [addtime], [ip], [replay], [ifhide]) VALUES (34, N'xiaoqiang', N'images/nobody.gif', N'', N'', N'', N'', N'images/face/1.gif', N'我是无敌铁金刚', CAST(0x0000A85700F42270 AS DateTime), N'192.168.1.103', 1, 1)
INSERT [dbo].[guestbook] ([id], [nickname], [pic], [email], [qq], [weburl], [blogurl], [expressions], [content], [addtime], [ip], [replay], [ifhide]) VALUES (35, N'游客', N'images/nobody.gif', N'', N'', N'', N'', N'images/face/1.gif', N'test', CAST(0x0000A85700F42270 AS DateTime), N'127.0.0.1', 0, 1)
INSERT [dbo].[guestbook] ([id], [nickname], [pic], [email], [qq], [weburl], [blogurl], [expressions], [content], [addtime], [ip], [replay], [ifhide]) VALUES (36, N'xiaoqiang', N'images/nobody.gif', N'', N'', N'', N'', N'images/face/1.gif', N'test', CAST(0x0000A85700F42270 AS DateTime), N'127.0.0.1', 0, 1)
INSERT [dbo].[guestbook] ([id], [nickname], [pic], [email], [qq], [weburl], [blogurl], [expressions], [content], [addtime], [ip], [replay], [ifhide]) VALUES (37, N'游客', N'images/nobody.gif', N'', N'', N'', N'', N'images/face/1.gif', N'ces', CAST(0x0000A85D0157FDB8 AS DateTime), N'0:0:0:0:0:0:0:1', 0, 1)
SET IDENTITY_INSERT [dbo].[guestbook] OFF
/****** Object:  Table [dbo].[affiche]    Script Date: 03/12/2018 21:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[affiche](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[content] [nvarchar](200) NOT NULL,
	[addtime] [nvarchar](50) NOT NULL,
	[adder] [nvarchar](50) NOT NULL,
	[ifhide] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[affiche] ON
INSERT [dbo].[affiche] ([id], [title], [content], [addtime], [adder], [ifhide]) VALUES (7, N'大学生快递代取', N'是一款彻底解决校园快递信息管理和取件难题的应用软件。创新快递分发流程、实现快递信息精准推送、人人众包送货上门。
功能亮点：', N'2018-01-03 22:25:25', N'admin', 1)
INSERT [dbo].[affiche] ([id], [title], [content], [addtime], [adder], [ifhide]) VALUES (8, N'测试', N'测试22222222222222', N'2018-03-08 20:28:23', N'admin', 1)
SET IDENTITY_INSERT [dbo].[affiche] OFF
/****** Object:  Table [dbo].[adminlog]    Script Date: 03/12/2018 21:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adminlog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[logintime] [datetime] NOT NULL,
	[loginip] [nvarchar](50) NOT NULL,
	[useros] [nvarchar](50) NOT NULL,
	[ok] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[adminlog] ON
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (510, N'admin', N'024adin', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (511, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (512, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (513, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (514, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (515, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (516, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (517, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (518, N'admin', N'xihuan1314', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (519, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (520, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (521, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (522, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (523, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (524, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (525, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (526, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (527, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A004010DA420 AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (528, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (529, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (530, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (531, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (532, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (533, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A004013883E8 AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (534, N'admin', N'ae7783f0ae4cb82dfe39bb4ec4a53047', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (535, N'admin', N'admin', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'0:0:0:0:0:0:0:1', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (536, N'admin', N'21232f297a57a5a743894a0e4a801fc3', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/4.0 (compatible', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (537, N'admin', N'21232f297a57a5a743894a0e4a801fc3', CAST(0x0000A17501023018 AS DateTime), N'Mozilla/4.0 (compatible', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (538, N'admin', N'21232f297a57a5a743894a0e4a801fc3', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/5.0 (compatible', N'127.0.0.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (539, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85301392CA8 AS DateTime), N'Mozilla/4.0 (compatible', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (540, N'101', N'123', CAST(0x0000A85D0158847C AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (541, N'admin', N'123', CAST(0x0000A85D01588A58 AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (542, N'admin', N'12345', CAST(0x0000A85D015894E4 AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (543, N'admin', N'12345678', CAST(0x0000A85D0158BCBC AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (544, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85D015A755C AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (545, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85D01702DE8 AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (546, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85D0170B5D8 AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (547, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85D0170C9C4 AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (548, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85D0175857C AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (549, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85D0177E934 AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (550, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85D017807AC AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (551, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85D017CEFEC AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (552, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85D018308DC AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (553, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85D0183D4C4 AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (554, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85D01843158 AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (555, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85D01846164 AS DateTime), N'Mozilla/5.0 (Windows NT 6.1', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (556, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00EC697C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (557, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00F1BA08 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (558, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00F42AA4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (559, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00F491C4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (560, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00F5C5F8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (561, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00F646E0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (562, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00F66A08 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (563, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00F683D0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (564, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00F6A248 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (565, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00F75C9C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (566, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00F7CBF0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (567, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00F875DC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (568, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00F955B0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (569, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00FA7F58 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (570, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00FAA988 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (571, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00FAD73C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (572, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00FB77C8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (573, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00FBA57C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (574, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E00FBE140 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (575, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E01016D90 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (576, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E01019568 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (577, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E01020E1C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (578, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E0105AF68 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (579, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E0106C3F8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (580, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E0106FE90 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (581, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E01078554 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (582, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E0107B1DC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (583, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85E01096BA8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (584, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F009850F8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (585, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00A36290 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (586, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00A57FF8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (587, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00A806D8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (588, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00A82424 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (589, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00A87050 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (590, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00A88310 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (591, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00A99098 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (592, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00A9E750 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (593, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00AA625C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (594, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00AAAB04 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (617, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01510878 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (618, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01551A44 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (619, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0155D948 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (620, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0155F1E4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (621, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0155F8EC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (622, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01562C7C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (623, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01564068 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (624, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D015649C8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (625, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01565A30 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (626, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D015672CC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (627, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01568B68 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (628, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0156A788 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (629, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0156EA54 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (630, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0156F864 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (631, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0157A250 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
GO
print 'Processed 100 total records'
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (632, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01589868 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (633, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0158AEAC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (634, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0158D558 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (635, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0158FD30 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (636, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01591E00 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (637, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D015922B0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (638, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D015922B0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (639, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D015A3AC4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (640, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D015A8DF8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (641, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D015ADB50 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (642, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D015AE12C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (643, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D015B0A30 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (644, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D015B7BDC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (645, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D015BAABC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (646, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D015C1A10 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (647, N'admin', N'123456', CAST(0x0000A89D015C5A84 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (648, N'admin', N'123456', CAST(0x0000A89D015C6060 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (649, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D015C6768 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (650, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01636284 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (651, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01637418 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (691, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0181F8FC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (692, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01821E7C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (693, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D018234C0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (694, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01825590 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (595, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00AAD9E4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (596, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00AAE59C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (597, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00AB2BEC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (598, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00AC1FAC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (599, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00AC3BCC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (600, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00ACDB2C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (601, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00AD1CCC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (602, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00AF4CF4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (603, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00AF9218 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (604, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00B35D94 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (605, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00B491C8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (606, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00B4D23C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (607, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00B8644C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (608, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00C37134 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (609, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00C3E790 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (610, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00C51F48 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (611, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00C53B68 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (612, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00C58B18 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (613, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85F00C60174 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'0:0:0:0:0:0:0:1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (614, N'admin', N'123456', CAST(0x0000A89C00F39954 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.187.53', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (615, N'admin', N'123123', CAST(0x0000A89D015095A0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (616, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0150B544 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (652, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01651548 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (653, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01656624 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (654, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0165CF9C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (655, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0166032C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (656, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01666344 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (657, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0166D9A0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (658, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0166FA70 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (659, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01675254 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (660, N'admin', N'123456', CAST(0x0000A89D01679070 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (661, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01679778 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (662, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D016B6420 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (663, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D016B9B34 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (664, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D016C0CE0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'192.168.59.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (665, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D016C5A38 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (666, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D016C9E30 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (667, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D016D1360 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (668, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D016D7954 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (669, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D016DF0DC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (670, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D016E5A54 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (671, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D016E6ABC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (672, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D016E72F0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (673, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D016F6584 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (674, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D016F75EC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (675, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D016F8528 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (676, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D016F9464 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (677, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01701FD8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (678, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0170ADA4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (679, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0170C898 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (680, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0170D1F8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (681, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0170DB58 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (682, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0170EE18 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (683, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0170FE80 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (684, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D017121A8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (685, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0171EB38 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (686, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0177D548 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (687, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01793280 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (688, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0179FD3C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (689, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D017A0DA4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (690, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D017A4008 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.222', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (701, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0187C944 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (726, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00DA3748 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (727, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00DAAC78 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (728, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00DB5E98 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (729, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00DB81C0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (730, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00DBA164 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (731, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00DC224C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (732, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00DC6770 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (733, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00DCE024 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (734, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00DF9CEC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (738, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0113E740 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (739, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E011421D8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (740, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E011450B8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (741, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01146378 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (742, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01148448 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (743, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0114A770 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
GO
print 'Processed 200 total records'
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (744, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01159428 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (745, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0115B174 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (695, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0182697C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (696, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D018287F4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'192.168.59.1', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (697, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01832E5C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (698, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01845A5C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (699, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D018671E8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (700, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D018722DC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (702, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01891998 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (703, N'admin', N'2134567', CAST(0x0000A89D0189681C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (704, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D01896CCC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (705, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0189A890 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (706, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D0189EB5C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (707, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D018A0074 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (708, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D018A17E4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (709, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89D018B1D38 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'fe80:0:0:0:f5b1:1ec2:e16a:cf97', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (735, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00E05D1C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (747, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E011C5380 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (748, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E011DB0B8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (749, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E011DBEC8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (750, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E011DCBAC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (751, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E011E0770 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (752, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E011E1904 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (753, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E011EC41C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (754, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E011ED5B0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (755, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01230018 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (756, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01238B8C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (757, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0123C048 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (758, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0123DA10 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (759, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0123E94C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (760, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E012422B8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (761, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01244E14 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (762, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01248B04 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (763, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01253748 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (764, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01261014 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (765, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01264020 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (784, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E016F0FF8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (785, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E016F4BBC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (786, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E016FC920 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (787, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E017011C8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (788, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0170316C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (710, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D4C4C0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (711, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D50E94 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (712, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D65EE8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (713, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D693A4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (714, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D6C284 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (715, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D6C98C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (716, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D6D1C0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (717, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D6E0FC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (718, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D6F038 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (719, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D724F4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (720, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D8F75C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (721, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D974C0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (722, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D9AD00 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (723, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D9C6C8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (724, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D9D730 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (725, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E00D9E2E8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.189', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (736, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0112E1EC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (737, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0113B608 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (789, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01706628 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (790, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E017077BC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (791, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0170B128 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (792, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E017144D0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (793, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E017189F4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (794, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0171B2F8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (795, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0171D620 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (796, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0172062C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (797, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01720D34 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (798, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01724ED4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (799, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01732C50 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (800, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01733934 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (801, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01736364 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (802, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0173BC74 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (803, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0173CF34 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (804, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E017565D8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (805, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01773840 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (806, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0177558C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (807, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E017787F0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (813, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0184ECD8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.223.15', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (814, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0185496C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.223.15', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (746, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0115CC68 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (766, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01269B88 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (767, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0127D0E8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (768, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01286B98 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (769, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0128E7D0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.103.153', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (770, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0169A478 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.68.41', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (771, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0169C9F8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.68.41', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (772, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E016A06E8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.68.41', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (773, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E016ACE20 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (774, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E016AF274 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (775, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E016B45A8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (776, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E016C1898 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (777, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E016C6140 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (778, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E016CCF68 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (779, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E016D23C8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (780, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E016D5758 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (781, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E016D68EC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (782, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E016D97CC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (783, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E016EE49C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (808, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0178A838 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (809, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0178FA40 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.234.47', N'true')
GO
print 'Processed 300 total records'
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (810, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E017A15D8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (811, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E017A2E74 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'100.66.9.170', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (812, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E017A8FB8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (815, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01856334 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.223.15', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (816, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0185739C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.223.15', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (817, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01858530 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.223.15', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (818, N'tomson', N'123456', CAST(0x0000A89E018590E8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.223.15', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (819, N'admin', N'123456', CAST(0x0000A89E0186B004 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.223.15', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (820, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0186B5E0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.223.15', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (821, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0187D754 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.223.15', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (822, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0187ED98 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.223.15', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (823, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0187FE00 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.223.15', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (824, N'admin', N'2134567', CAST(0x0000A89E0188826C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.223.15', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (825, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E01888AA0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.223.15', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (826, N'tomson', N'123456', CAST(0x0000A89E0188C40C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.223.15', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (827, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89E0188CB14 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.223.15', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (828, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00BBD208 AS DateTime), N'Mozilla/4.0 (compatible', N'fe80:0:0:0:f5b1:1ec2:e16a:cf97', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (829, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00BC127C AS DateTime), N'Mozilla/4.0 (compatible', N'fe80:0:0:0:f5b1:1ec2:e16a:cf97', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (830, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00BD7590 AS DateTime), N'Mozilla/4.0 (compatible', N'fe80:0:0:0:f5b1:1ec2:e16a:cf97', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (831, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00BD9B10 AS DateTime), N'Mozilla/4.0 (compatible', N'fe80:0:0:0:f5b1:1ec2:e16a:cf97', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (832, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00BDFB28 AS DateTime), N'Mozilla/4.0 (compatible', N'fe80:0:0:0:f5b1:1ec2:e16a:cf97', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (833, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00BEB57C AS DateTime), N'Mozilla/4.0 (compatible', N'fe80:0:0:0:f5b1:1ec2:e16a:cf97', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (834, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00C004A4 AS DateTime), N'Mozilla/4.0 (compatible', N'fe80:0:0:0:f5b1:1ec2:e16a:cf97', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (835, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00C05A30 AS DateTime), N'Mozilla/4.0 (compatible', N'fe80:0:0:0:f5b1:1ec2:e16a:cf97', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (836, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00C0C024 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'61.188.24.172', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (837, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00C56EF8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'61.188.24.172', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (838, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00C59CAC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'61.188.24.172', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (839, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00C6C8AC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (840, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00C79CC8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (841, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00C8607C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (842, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00C868B0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (843, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00C87210 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (844, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00C8B02C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (845, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00C8C9F4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (846, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00C9255C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (847, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00C93A74 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (848, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CA146C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (849, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CAA10C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (850, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CACFEC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (851, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CB43F0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (852, N'admin', N'2134567', CAST(0x0000A89F00CC009C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (853, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CC0678 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (854, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CC4944 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (855, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CC9A20 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (856, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CCDE18 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (857, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CD1E8C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (858, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CD5CA8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (859, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CD8228 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (860, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CEE668 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (861, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CF0ABC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (862, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CF6C00 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (863, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CFB37C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (864, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CFEBBC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (865, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00CFFE7C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (866, N'tomson', N'123456', CAST(0x0000A89F00D0C5B4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (867, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00D0CB90 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (868, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00D0F110 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (869, N'tomson', N'213456', CAST(0x0000A89F00D124A0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (870, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A89F00D12CD4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'118.120.228.169', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (871, N'tomson', N'123456', CAST(0x0000A8A000BD4EE4 AS DateTime), N'Mozilla/4.0 (compatible', N'fe80:0:0:0:f5b1:1ec2:e16a:cf97', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (872, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A8A000BD54C0 AS DateTime), N'Mozilla/4.0 (compatible', N'fe80:0:0:0:f5b1:1ec2:e16a:cf97', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (873, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A8A000BD6B04 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'171.211.102.249', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (874, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A8A000C2C040 AS DateTime), N'Mozilla/4.0 (compatible', N'fe80:0:0:0:f5b1:1ec2:e16a:cf97', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (875, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A8A000C37A94 AS DateTime), N'Mozilla/4.0 (compatible', N'fe80:0:0:0:f5b1:1ec2:e16a:cf97', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (876, N'admin', N'213456', CAST(0x0000A8A001006134 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (877, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A8A0010065E4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (878, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A8A00100A8B0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (879, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A8A00107DC0C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (880, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A8A00107EB48 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (881, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A8A001081578 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (882, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A8A0010868AC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'169.254.207.151', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (883, N'admin', N'123456', CAST(0x0000A8A0016B4350 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.199.126', N'false')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (884, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A8A0016BA944 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.199.126', N'true')
INSERT [dbo].[adminlog] ([id], [username], [password], [logintime], [loginip], [useros], [ok]) VALUES (885, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A8A0016CE6D8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0', N'110.189.199.126', N'true')
SET IDENTITY_INSERT [dbo].[adminlog] OFF
/****** Object:  Table [dbo].[admin]    Script Date: 03/12/2018 21:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[creattime] [datetime] NOT NULL,
	[flag] [int] NOT NULL,
	[isuse] [int] NOT NULL,
	[logintimes] [int] NOT NULL,
	[roleid] [int] NULL,
	[isDeleted] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON
INSERT [dbo].[admin] ([id], [username], [password], [creattime], [flag], [isuse], [logintimes], [roleid], [isDeleted]) VALUES (1, N'admin', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85600F42270 AS DateTime), 1, 1, 1596, 2, 0)
INSERT [dbo].[admin] ([id], [username], [password], [creattime], [flag], [isuse], [logintimes], [roleid], [isDeleted]) VALUES (6, N'tomson', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85600F42270 AS DateTime), 1, 1, 39, 1, 0)
INSERT [dbo].[admin] ([id], [username], [password], [creattime], [flag], [isuse], [logintimes], [roleid], [isDeleted]) VALUES (10, N'tomcat', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85600F42270 AS DateTime), 1, 1, 100, 1, 0)
INSERT [dbo].[admin] ([id], [username], [password], [creattime], [flag], [isuse], [logintimes], [roleid], [isDeleted]) VALUES (11, N'tomcat2', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85600F42270 AS DateTime), 1, 1, 100, 1, 0)
INSERT [dbo].[admin] ([id], [username], [password], [creattime], [flag], [isuse], [logintimes], [roleid], [isDeleted]) VALUES (12, N'tomcat3', N'fcea920f7412b5da7be0cf42b8c93759', CAST(0x0000A85600F42270 AS DateTime), 1, 1, 100, 1, 0)
SET IDENTITY_INSERT [dbo].[admin] OFF
/****** Object:  Table [dbo].[t_userToexpressages]    Script Date: 03/12/2018 21:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_userToexpressages](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[userid] [int] NULL,
	[expressageid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[t_userToexpressages] ON
INSERT [dbo].[t_userToexpressages] ([id], [userid], [expressageid]) VALUES (58, 47, 52)
INSERT [dbo].[t_userToexpressages] ([id], [userid], [expressageid]) VALUES (59, 47, 55)
INSERT [dbo].[t_userToexpressages] ([id], [userid], [expressageid]) VALUES (60, 47, 56)
SET IDENTITY_INSERT [dbo].[t_userToexpressages] OFF
/****** Object:  Table [dbo].[t_roles]    Script Date: 03/12/2018 21:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_roles](
	[description] [nvarchar](100) NULL,
	[isDeleted] [tinyint] NULL,
	[name] [nvarchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[t_roles] ON
INSERT [dbo].[t_roles] ([description], [isDeleted], [name], [id]) VALUES (N'信息发布的管理
管理员可以对网站发布的信息进行管理。
(2)快递信息的管理
管理员可以对快递的信息进行更新。
(3)代取的管理
管理员可以对学生的代取信息进行删除等操作。
(3)投诉与建议', 0, N'管理员', 1)
INSERT [dbo].[t_roles] ([description], [isDeleted], [name], [id]) VALUES (N'所有权限', 0, N'系统管理员', 2)
SET IDENTITY_INSERT [dbo].[t_roles] OFF
/****** Object:  Table [dbo].[t_rolePermissions]    Script Date: 03/12/2018 21:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_rolePermissions](
	[id ] [int] NOT NULL,
	[roleid] [int] NULL,
	[permissionid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id ] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[t_rolePermissions] ([id ], [roleid], [permissionid]) VALUES (1, 1, 2)
INSERT [dbo].[t_rolePermissions] ([id ], [roleid], [permissionid]) VALUES (2, 1, 3)
INSERT [dbo].[t_rolePermissions] ([id ], [roleid], [permissionid]) VALUES (3, 1, 4)
INSERT [dbo].[t_rolePermissions] ([id ], [roleid], [permissionid]) VALUES (4, 1, 1)
/****** Object:  ForeignKey [FK__t_rolePer__permi__5FB337D6]    Script Date: 03/12/2018 21:56:20 ******/
ALTER TABLE [dbo].[t_rolePermissions]  WITH CHECK ADD FOREIGN KEY([permissionid])
REFERENCES [dbo].[t_permissions] ([id])
GO
/****** Object:  ForeignKey [FK__t_rolePer__rolei__5EBF139D]    Script Date: 03/12/2018 21:56:20 ******/
ALTER TABLE [dbo].[t_rolePermissions]  WITH CHECK ADD FOREIGN KEY([roleid])
REFERENCES [dbo].[t_roles] ([id])
GO
