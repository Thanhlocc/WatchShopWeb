USE [watchSpringBoot1]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/25/2024 12:39:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[account_name] [nvarchar](30) NOT NULL,
	[account_password] [nvarchar](100) NOT NULL,
	[permission_id] [int] NOT NULL,
	[customer_name] [nvarchar](50) NOT NULL,
	[customer_phone] [nvarchar](10) NOT NULL,
	[customer_address] [nvarchar](50) NOT NULL,
	[customer_email] [nvarchar](50) NOT NULL,
	[is_deleted] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_permission]    Script Date: 4/25/2024 12:39:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_permission](
	[permission_id] [int] IDENTITY(1,1) NOT NULL,
	[permission_name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Account_permission] PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 4/25/2024 12:39:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[account_id] [int] NULL,
	[cart_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[product_quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_details]    Script Date: 4/25/2024 12:39:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_details](
	[order_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[product_quantity] [int] NOT NULL,
 CONSTRAINT [PK_Order_details] PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/25/2024 12:39:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[order_date] [date] NOT NULL,
	[order_money] [int] NOT NULL,
	[order_status] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/25/2024 12:39:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](50) NOT NULL,
	[product_inventory] [int] NOT NULL,
	[product_warranty] [date] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[product_saleprice] [int] NOT NULL,
	[product_inprice] [int] NOT NULL,
	[product_description] [nvarchar](500) NOT NULL,
	[type_id] [int] NOT NULL,
	[product_image] [nchar](150) NOT NULL,
	[is_deleted] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_type]    Script Date: 4/25/2024 12:39:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_type](
	[type_id] [int] IDENTITY(1,1) NOT NULL,
	[type_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Product_type] PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Received]    Script Date: 4/25/2024 12:39:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Received](
	[received_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NOT NULL,
	[received_date] [date] NOT NULL,
	[received_money] [int] NOT NULL,
 CONSTRAINT [PK_Received] PRIMARY KEY CLUSTERED 
(
	[received_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Received_details]    Script Date: 4/25/2024 12:39:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Received_details](
	[receiveddetails_id] [int] IDENTITY(1,1) NOT NULL,
	[received_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[product_quantity] [int] NOT NULL,
	[product_inprice] [int] NOT NULL,
 CONSTRAINT [PK_Received_details] PRIMARY KEY CLUSTERED 
(
	[receiveddetails_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 4/25/2024 12:39:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[supplier_id] [int] IDENTITY(1,1) NOT NULL,
	[supplier_name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([account_id], [account_name], [account_password], [permission_id], [customer_name], [customer_phone], [customer_address], [customer_email], [is_deleted]) VALUES (1, N'admin', N'$2a$10$WI6.FZGNonSzMC2d4c0iL.Sgrx0Z01LQZ7Y8cf1eZPAqh1wwAOkd2', 1, N'Nguyen Van A', N'0923456791', N'273 An Duong Vuong p3 q5', N'abc123@gmail.com', 0)
INSERT [dbo].[Account] ([account_id], [account_name], [account_password], [permission_id], [customer_name], [customer_phone], [customer_address], [customer_email], [is_deleted]) VALUES (2, N'employee', N'$2a$10$WI6.FZGNonSzMC2d4c0iL.Sgrx0Z01LQZ7Y8cf1eZPAqh1wwAOkd2', 3, N'Nguyen Van B', N'0923756791', N'4 Nguyen Trai p3 q5', N'abc123@gmail.com', 0)
INSERT [dbo].[Account] ([account_id], [account_name], [account_password], [permission_id], [customer_name], [customer_phone], [customer_address], [customer_email], [is_deleted]) VALUES (3, N'customer', N'$2a$10$WI6.FZGNonSzMC2d4c0iL.Sgrx0Z01LQZ7Y8cf1eZPAqh1wwAOkd2', 2, N'Nguyen Van C', N'0923445791', N'273 An Duong Vuong p3 q5', N'abc123@gmail.com', 3)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Account_permission] ON 

INSERT [dbo].[Account_permission] ([permission_id], [permission_name]) VALUES (1, N'ADMIN')
INSERT [dbo].[Account_permission] ([permission_id], [permission_name]) VALUES (2, N'Khachhang')
INSERT [dbo].[Account_permission] ([permission_id], [permission_name]) VALUES (3, N'Nhanvien')
SET IDENTITY_INSERT [dbo].[Account_permission] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([product_id], [product_name], [product_inventory], [product_warranty], [supplier_id], [product_saleprice], [product_inprice], [product_description], [type_id], [product_image], [is_deleted]) VALUES (1, N'Oppo Watch                                        ', 10, CAST(N'2024-12-28' AS Date), 1, 1290000, 990000, N'Là 1 d?ng h? da nang                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', 1, N'                                                                                                                                                      ', 0)
INSERT [dbo].[Product] ([product_id], [product_name], [product_inventory], [product_warranty], [supplier_id], [product_saleprice], [product_inprice], [product_description], [type_id], [product_image], [is_deleted]) VALUES (2, N'Apple Watch                                       ', 10, CAST(N'2024-12-12' AS Date), 2, 1990000, 1290000, N'Là 1 d?ng h? da nang                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', 2, N'                                                                                                                                                      ', 0)
INSERT [dbo].[Product] ([product_id], [product_name], [product_inventory], [product_warranty], [supplier_id], [product_saleprice], [product_inprice], [product_description], [type_id], [product_image], [is_deleted]) VALUES (3, N'Ð?ng h? A                                         ', 10, CAST(N'2024-04-25' AS Date), 1, 2000000, 750000, N'Ð?ng h? A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 1, N'Dong_ho_A.jpg                                                                                                                                         ', 0)
INSERT [dbo].[Product] ([product_id], [product_name], [product_inventory], [product_warranty], [supplier_id], [product_saleprice], [product_inprice], [product_description], [type_id], [product_image], [is_deleted]) VALUES (4, N'Đồng hồ B', 10, CAST(N'2024-04-25' AS Date), 2, 1000000, 750000, N'Đồng hồ B', 1, N'Dong_ho_B.jpg                                                                                                                                         ', 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_type] ON 

INSERT [dbo].[Product_type] ([type_id], [type_name]) VALUES (1, N'Oppo                                              ')
INSERT [dbo].[Product_type] ([type_id], [type_name]) VALUES (2, N'Apple                                             ')
SET IDENTITY_INSERT [dbo].[Product_type] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([supplier_id], [supplier_name]) VALUES (1, N'Công ty TNHN ABC                                                                                                                                      ')
INSERT [dbo].[Supplier] ([supplier_id], [supplier_name]) VALUES (2, N'Công ty TNHN BCD                                                                                                                                      ')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Account_permission] FOREIGN KEY([permission_id])
REFERENCES [dbo].[Account_permission] ([permission_id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Account_permission]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK3d704slv66tw6x5hmbm6p2x3u] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK3d704slv66tw6x5hmbm6p2x3u]
GO
ALTER TABLE [dbo].[Order_details]  WITH CHECK ADD  CONSTRAINT [FK_Order_details_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Order_details] CHECK CONSTRAINT [FK_Order_details_Orders]
GO
ALTER TABLE [dbo].[Order_details]  WITH CHECK ADD  CONSTRAINT [FK_Order_details_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Order_details] CHECK CONSTRAINT [FK_Order_details_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Product_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[Product_type] ([type_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Product_type]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[Supplier] ([supplier_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK2kxvbr72tmtscjvyp9yqb12by] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[Supplier] ([supplier_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK2kxvbr72tmtscjvyp9yqb12by]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FKajjopj7ffr42w11bav8gut0cp] FOREIGN KEY([type_id])
REFERENCES [dbo].[Product_type] ([type_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FKajjopj7ffr42w11bav8gut0cp]
GO
ALTER TABLE [dbo].[Received]  WITH CHECK ADD  CONSTRAINT [FK_Received_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Received] CHECK CONSTRAINT [FK_Received_Account]
GO
ALTER TABLE [dbo].[Received_details]  WITH CHECK ADD  CONSTRAINT [FK_Received_details_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Received_details] CHECK CONSTRAINT [FK_Received_details_Product]
GO
ALTER TABLE [dbo].[Received_details]  WITH CHECK ADD  CONSTRAINT [FK_Received_details_Received] FOREIGN KEY([received_id])
REFERENCES [dbo].[Received] ([received_id])
GO
ALTER TABLE [dbo].[Received_details] CHECK CONSTRAINT [FK_Received_details_Received]
GO
