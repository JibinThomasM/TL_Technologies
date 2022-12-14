USE [master]
GO
/****** Object:  Database [TL_Technologies]    Script Date: 10-09-2022 2.44.49 PM ******/
CREATE DATABASE [TL_Technologies]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TL_Technologies', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TL_Technologies.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TL_Technologies_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TL_Technologies_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TL_Technologies] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TL_Technologies].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TL_Technologies] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TL_Technologies] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TL_Technologies] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TL_Technologies] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TL_Technologies] SET ARITHABORT OFF 
GO
ALTER DATABASE [TL_Technologies] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TL_Technologies] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TL_Technologies] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TL_Technologies] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TL_Technologies] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TL_Technologies] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TL_Technologies] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TL_Technologies] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TL_Technologies] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TL_Technologies] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TL_Technologies] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TL_Technologies] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TL_Technologies] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TL_Technologies] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TL_Technologies] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TL_Technologies] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TL_Technologies] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TL_Technologies] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TL_Technologies] SET  MULTI_USER 
GO
ALTER DATABASE [TL_Technologies] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TL_Technologies] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TL_Technologies] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TL_Technologies] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TL_Technologies] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TL_Technologies] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TL_Technologies] SET QUERY_STORE = OFF
GO
USE [TL_Technologies]
GO
/****** Object:  Table [dbo].[Customer_Table]    Script Date: 10-09-2022 2.44.49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Table](
	[Customer_Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Name] [nvarchar](50) NULL,
	[Customer_Address] [nvarchar](50) NULL,
	[Customer_Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer_Table] PRIMARY KEY CLUSTERED 
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Source]    Script Date: 10-09-2022 2.44.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Source](
	[Order_Id] [int] IDENTITY(1,1) NOT NULL,
	[Order_Date] [date] NULL,
	[Total_Order] [int] NULL,
	[Customer_Id] [int] NULL,
 CONSTRAINT [PK_Order_Source] PRIMARY KEY CLUSTERED 
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer_Table] ON 

INSERT [dbo].[Customer_Table] ([Customer_Id], [Customer_Name], [Customer_Address], [Customer_Phone]) VALUES (1, N'Ram', N'Chennai', N'985654525')
INSERT [dbo].[Customer_Table] ([Customer_Id], [Customer_Name], [Customer_Address], [Customer_Phone]) VALUES (2, N'Vivek', N'Uduppi', N'54657852')
INSERT [dbo].[Customer_Table] ([Customer_Id], [Customer_Name], [Customer_Address], [Customer_Phone]) VALUES (3, N'Sufiyan', N'Kannur', N'784576525')
INSERT [dbo].[Customer_Table] ([Customer_Id], [Customer_Name], [Customer_Address], [Customer_Phone]) VALUES (4, N'George', N'Kollam', N'5478454794')
INSERT [dbo].[Customer_Table] ([Customer_Id], [Customer_Name], [Customer_Address], [Customer_Phone]) VALUES (5, N'Abdul', N'Mumbai', N'985578565')
INSERT [dbo].[Customer_Table] ([Customer_Id], [Customer_Name], [Customer_Address], [Customer_Phone]) VALUES (6, N'Kiran', N'Delhi', N'845756898')
INSERT [dbo].[Customer_Table] ([Customer_Id], [Customer_Name], [Customer_Address], [Customer_Phone]) VALUES (7, N'Johny', N'bengaluru', N'687548998')
INSERT [dbo].[Customer_Table] ([Customer_Id], [Customer_Name], [Customer_Address], [Customer_Phone]) VALUES (8, N'Manu', N'ahmedabad', N'7845721')
INSERT [dbo].[Customer_Table] ([Customer_Id], [Customer_Name], [Customer_Address], [Customer_Phone]) VALUES (9, N'Varun', N'Vayanadu', N'65897554')
INSERT [dbo].[Customer_Table] ([Customer_Id], [Customer_Name], [Customer_Address], [Customer_Phone]) VALUES (10, N'Vadivel', N'coimbatore', N'985745412')
SET IDENTITY_INSERT [dbo].[Customer_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Source] ON 

INSERT [dbo].[Order_Source] ([Order_Id], [Order_Date], [Total_Order], [Customer_Id]) VALUES (1, CAST(N'2022-09-10' AS Date), 125, 5)
INSERT [dbo].[Order_Source] ([Order_Id], [Order_Date], [Total_Order], [Customer_Id]) VALUES (2, CAST(N'2022-09-10' AS Date), 150, 2)
INSERT [dbo].[Order_Source] ([Order_Id], [Order_Date], [Total_Order], [Customer_Id]) VALUES (3, CAST(N'2022-09-10' AS Date), 76, 3)
INSERT [dbo].[Order_Source] ([Order_Id], [Order_Date], [Total_Order], [Customer_Id]) VALUES (4, CAST(N'2022-09-10' AS Date), 166, 7)
INSERT [dbo].[Order_Source] ([Order_Id], [Order_Date], [Total_Order], [Customer_Id]) VALUES (5, CAST(N'2022-09-10' AS Date), 66, 10)
INSERT [dbo].[Order_Source] ([Order_Id], [Order_Date], [Total_Order], [Customer_Id]) VALUES (6, CAST(N'2022-09-10' AS Date), 256, 7)
INSERT [dbo].[Order_Source] ([Order_Id], [Order_Date], [Total_Order], [Customer_Id]) VALUES (7, CAST(N'2022-09-10' AS Date), 298, 2)
INSERT [dbo].[Order_Source] ([Order_Id], [Order_Date], [Total_Order], [Customer_Id]) VALUES (8, CAST(N'2022-09-10' AS Date), 248, 1)
INSERT [dbo].[Order_Source] ([Order_Id], [Order_Date], [Total_Order], [Customer_Id]) VALUES (9, CAST(N'2022-09-10' AS Date), 289, 5)
INSERT [dbo].[Order_Source] ([Order_Id], [Order_Date], [Total_Order], [Customer_Id]) VALUES (10, CAST(N'2022-09-10' AS Date), 329, 8)
SET IDENTITY_INSERT [dbo].[Order_Source] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Customer_Table_Customer_Phone]    Script Date: 10-09-2022 2.44.50 PM ******/
ALTER TABLE [dbo].[Customer_Table] ADD  CONSTRAINT [UQ_Customer_Table_Customer_Phone] UNIQUE NONCLUSTERED 
(
	[Customer_Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order_Source]  WITH CHECK ADD  CONSTRAINT [FK_Order_Source_Customer_Table] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer_Table] ([Customer_Id])
GO
ALTER TABLE [dbo].[Order_Source] CHECK CONSTRAINT [FK_Order_Source_Customer_Table]
GO
/****** Object:  StoredProcedure [dbo].[CustomersOrderDetails]    Script Date: 10-09-2022 2.44.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CustomersOrderDetails]
as
begin
	with TotalOrderDetailsOfCustomers
	as(
		select Customer_Table.Customer_Name,Order_Source.Total_Order from Customer_Table inner join Order_Source
		on Customer_Table.Customer_Id = Order_Source.Customer_Id
	)
	select * from TotalOrderDetailsOfCustomers
end
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCustomer]    Script Date: 10-09-2022 2.44.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spDeleteCustomer]
@Customer_Id int
as 
begin
	delete from Customer_Table where Customer_Id = @Customer_Id
end
GO
/****** Object:  StoredProcedure [dbo].[spDeleteOrder]    Script Date: 10-09-2022 2.44.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spDeleteOrder]
@Order_Id int
as 
begin
	delete from Order_Source where Order_Id = @Order_Id
end
GO
/****** Object:  StoredProcedure [dbo].[spGetCustomer]    Script Date: 10-09-2022 2.44.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spGetCustomer]
@Customer_Id int
as
begin
	select * from Customer_Table where Customer_Id = @Customer_Id
end
GO
/****** Object:  StoredProcedure [dbo].[spGetOrder]    Script Date: 10-09-2022 2.44.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spGetOrder]
@Order_Id int 
as 
begin 
	select * from Order_Source where Order_Id = @Order_Id
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertCustomer]    Script Date: 10-09-2022 2.44.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spInsertCustomer]
@Customer_Name nvarchar(20),
@Customer_Address nvarchar(50),
@Customer_Phone nvarchar(10)
as
begin
	insert into Customer_Table (Customer_Name,Customer_Address,Customer_Phone) 
	values (@Customer_Name,@Customer_Address,@Customer_Phone)
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertOrder]    Script Date: 10-09-2022 2.44.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spInsertOrder]
@Order_Date date,
@Total_Order int,
@Customer_Id int
as
begin
	insert into Order_Source(Order_Date,Total_Order,Customer_Id) 
	values (@Order_Date,@Total_Order,@Customer_Id)
end
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCutomer]    Script Date: 10-09-2022 2.44.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spUpdateCutomer]
@Customer_Id int,
@Customer_Name nvarchar(20),
@Customer_Address nvarchar(50),
@Customer_Phone nvarchar(10)
as 
begin
	update Customer_Table set Customer_Name = @Customer_Name,Customer_Address = @Customer_Address,Customer_Phone = @Customer_Phone
	where Customer_Id = @Customer_Id
end
GO
/****** Object:  StoredProcedure [dbo].[spUpdateOrder]    Script Date: 10-09-2022 2.44.50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spUpdateOrder]
@Order_Id int,
@Order_Date date,
@Total_Order int,
@Customer_Id int
as 
begin
	update Order_Source set Order_Date = @Order_Date, Total_Order = @Total_Order,Customer_Id = @Customer_Id
	where Order_Id = @Order_Id
end
GO
USE [master]
GO
ALTER DATABASE [TL_Technologies] SET  READ_WRITE 
GO
