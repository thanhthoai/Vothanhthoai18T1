USE [VoThanhThoai]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20/06/2021 6:34:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[UnitCost] [float] NULL,
	[Quanlity] [float] NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [nvarchar](50) NULL,
	[Category_ID] [int] NULL,
	[Image] [varchar](250) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 20/06/2021 6:34:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](550) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 20/06/2021 6:34:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[ID] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'A01', N'Đồng hồ nữ Dkny', 2000000, 100, N'Mẫu đồng hồ nữ này sở hữu đường kính mặt 26 mm, độ rộng dây 12 mm', N'Activities', 3, N'/Image/1.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'A02', N'Đồng hồ nữ Lemans', 2100000, 130, N' Đồng hồ sở hữu đường kính mặt là 43 mm và độ rộng dây là 22 mm

- Khung viền và dây đeo đồng hồ nam được làm từ thép không gỉ chắc chắn, chống oxy hóa tốt', N'Activities', 4, N'/Image/2.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'AA01', N'Đồng hồ điện tử', 1000000, 400, N'Sản phẩm từ Mỹ', N'Activities', 2, N'/Image/3.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'B01', N'Đồng hồ nữ Lacoste', 1000000, 200, N'Đồng hồ có hệ số chống nước 3 ATM nên thoải mái sử dụng khi rửa tay, đi mưa nhỏ nhưng không nên đeo khi đi tắm hoặc bơi, lặn', N'Activities', 5, N'/Image/4.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'B02', N'Đồng hồ nữ Coach', 1000000, 100, N'Được trang bị khung viền thép không gỉ cứng cáp, chống ăn mòn, dễ dàng đánh bóng lại như mới và dây da mềm mại, thoải mái khi đeo, phù hợp với nhiều kích thước cổ tay khác nhau', N'Activities', 6, N'/Image/5.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'EE01', N'Đồng hồ nữ Elle 3k', 1000000, 410, N'Mẫu đồng hồ nữ này sở hữu đường kính mặt 26 mm, độ rộng dây 12 mm', N'Activities', 2, N'/Image/6.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'H01', N'Đồng hồ nam Hifilger', 3500000, 100, N' Đồng hồ sở hữu đường kính mặt là 43 mm và độ rộng dây là 22 mm

- Khung viền và dây đeo đồng hồ nam được làm từ thép không gỉ chắc chắn, chống oxy hóa tốt', N'Activities', 1, N'/Image/7.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'H02', N'Đồng hồ nam Elle', 900000, 80, N'Mẫu đồng hồ nam này sở hữu đường kính mặt 26 mm, độ rộng dây 12 mm', N'Activities', 2, N'/Image/8.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'H03', N'Đồng hồ nam Dkny', 2300000, 210, N'Mẫu đồng hồ nam này sở hữu đường kính mặt 26 mm, độ rộng dây 12 mm', N'Activities', 3, N'/Image/9.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'H04', N'Đồng hồ nữ Hifilger', 3000000, 100, N' Đồng hồ sở hữu đường kính mặt là 43 mm và độ rộng dây là 22 mm

- Khung viền và dây đeo đồng hồ nam được làm từ thép không gỉ chắc chắn, chống oxy hóa tốt', N'Activities', 1, N'/Image/10.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'H05', N'Đồng hồ điện tử Lacoste', 1000000, 500, N'Mẫu đồng hồ nữ này sở hữu đường kính mặt 26 mm, độ rộng dây 12 mm', N'Activities', 5, N'/Image/11.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'K01', N'Đồng hồ nam Dkny', 1000000, 500, N'Mẫu đồng hồ nữ này sở hữu đường kính mặt 26 mm, độ rộng dây 12 mm', N'Activities', 3, N'/Image/5.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'K09', N'Đồng hồ nam Dkny 200m', 2000000, 540, N'Mẫu đồng hồ nữ này sở hữu đường kính mặt 26 mm, độ rộng dây 12 mm', N'Activities', 3, N'/Image/1.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'M01', N'Đồng hồ nữ 30 mm Dkny', 1000000, 500, N'Mẫu đồng hồ nữ này sở hữu đường kính mặt 26 mm, độ rộng dây 12 mm', N'Activities', NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'S01', N'Đồng hồ nam Lemans', 2000000, 200, N' Đồng hồ sở hữu đường kính mặt là 43 mm và độ rộng dây là 22 mm

- Khung viền và dây đeo đồng hồ nam được làm từ thép không gỉ chắc chắn, chống oxy hóa tốt', N'Activities', 4, N'/Image/3.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'S02', N'Đồng hồ nam Lacoste', 1500000, 200, N'Đồng hồ có hệ số chống nước 3 ATM nên thoải mái sử dụng khi rửa tay, đi mưa nhỏ nhưng không nên đeo khi đi tắm hoặc bơi, lặn', N'Activities', 5, N'/Image/10.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'S03', N'Đồng hồ nam Coach', 3000000, 150, N'Được trang bị khung viền thép không gỉ cứng cáp, chống ăn mòn, dễ dàng đánh bóng lại như mới và dây da mềm mại, thoải mái khi đeo, phù hợp với nhiều kích thước cổ tay khác nhau', N'Activities', 6, N'/Image/8.jpg')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quanlity], [Description], [Status], [Category_ID], [Image]) VALUES (N'S05', N'Đồng hồ nam Elle 2k', 1000000, 50, N'Mẫu đồng hồ nữ này sở hữu đường kính mặt 26 mm, độ rộng dây 12 mm', N'Activities', 2, N'/Image/9.jpg')
INSERT [dbo].[ProductType] ([ID], [Name], [Description]) VALUES (N'1', N'Đồng hồ Hifilger', N' Mang thương hiệu đồng hồ Hifilger nổi tiếng và chất lượng của Mỹ

- Chiếc đồng hồ này có đường kính mặt 34 mm, độ rộng dây 16 mm

- Dây và khung viền được làm từ thép không gỉ có độ bền cao, chống ăn mòn, chịu được mọi thời tiết khắc nghiệt')
INSERT [dbo].[ProductType] ([ID], [Name], [Description]) VALUES (N'2', N'Đồng hồ Elle', N' Mang thương hiệu đồng hồ Elle nổi tiếng và chất lượng của Mỹ

- Chiếc đồng hồ này có đường kính mặt 34 mm, độ rộng dây 16 mm

- Dây và khung viền được làm từ thép không gỉ có độ bền cao, chống ăn mòn, chịu được mọi thời tiết khắc nghiệt')
INSERT [dbo].[ProductType] ([ID], [Name], [Description]) VALUES (N'3', N'Đồng hồ Dkny', N' Mang thương hiệu đồng hồ Dkny nổi tiếng và chất lượng của Mỹ

- Chiếc đồng hồ này có đường kính mặt 34 mm, độ rộng dây 16 mm

- Dây và khung viền được làm từ thép không gỉ có độ bền cao, chống ăn mòn, chịu được mọi thời tiết khắc nghiệt')
INSERT [dbo].[ProductType] ([ID], [Name], [Description]) VALUES (N'4', N'Đồng hồ Lemans', N' Mang thương hiệu đồng hồ Lemans nổi tiếng và chất lượng của Mỹ

- Chiếc đồng hồ này có đường kính mặt 34 mm, độ rộng dây 16 mm

- Dây và khung viền được làm từ thép không gỉ có độ bền cao, chống ăn mòn, chịu được mọi thời tiết khắc nghiệt')
INSERT [dbo].[ProductType] ([ID], [Name], [Description]) VALUES (N'5', N'Đồng hồ Lacoste', N' Mang thương hiệu đồng hồ Lacoste nổi tiếng và chất lượng của Mỹ

- Chiếc đồng hồ này có đường kính mặt 34 mm, độ rộng dây 16 mm

- Dây và khung viền được làm từ thép không gỉ có độ bền cao, chống ăn mòn, chịu được mọi thời tiết khắc nghiệt')
INSERT [dbo].[ProductType] ([ID], [Name], [Description]) VALUES (N'6', N'Đồng hồ Coach', N' Mang thương hiệu đồng hồ Coach nổi tiếng và chất lượng của Mỹ

- Chiếc đồng hồ này có đường kính mặt 34 mm, độ rộng dây 16 mm

- Dây và khung viền được làm từ thép không gỉ có độ bền cao, chống ăn mòn, chịu được mọi thời tiết khắc nghiệt')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'01', N'thanhthoai', N'123', N'Activities')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'02', N'thanhvu', N'123', N'Activities')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'03', N'danhduong', N'123', N'Activities')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'04', N'baotu', N'123', N'Blocked   ')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'06', N'thanhtuan', N'123', N'Blocked   ')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'07', N'duyan', N'123', N'Activities')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'08', N'thevien', N'123', N'Activities')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'09', N'kieuanh', N'123', N'Activities')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'10', N'vinhson ', N'123', N'Activities')
/****** Object:  StoredProcedure [dbo].[Sp_UserAccount]    Script Date: 20/06/2021 6:34:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_UserAccount]
@UserName nvarchar(50),
@Password nvarchar(50)
as
begin 
declare @count int
declare @res bit
select @count = count(*) from UserAccount where Username = @UserName and Password = @Password
if @count >0
set @res =1 
else
set @res = 0
select @res
end		
GO
/****** Object:  StoredProcedure [dbo].[Sp_UserAccount_login]    Script Date: 20/06/2021 6:34:33 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_UserAccount_login]
@UserName nvarchar(50),
@Password nvarchar(50)
as
begin 
declare @count int
declare @res bit
select @count = count(*) from UserAccount where UserName = @UserName and Password = @Password
if @count >0
set @res =1 
else
set @res = 0
select @res
end		
GO
