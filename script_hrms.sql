USE [master]
GO
/****** Object:  Database [HRMS377]    Script Date: 06/10/2016 20:48:40 ******/
CREATE DATABASE [HRMS377] ON  PRIMARY 
( NAME = N'HRMS377', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS2008R2\MSSQL\DATA\HRMS377.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HRMS377_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS2008R2\MSSQL\DATA\HRMS377_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HRMS377] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HRMS377].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HRMS377] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HRMS377] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HRMS377] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HRMS377] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HRMS377] SET ARITHABORT OFF
GO
ALTER DATABASE [HRMS377] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [HRMS377] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HRMS377] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HRMS377] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HRMS377] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HRMS377] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HRMS377] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HRMS377] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HRMS377] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HRMS377] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HRMS377] SET  DISABLE_BROKER
GO
ALTER DATABASE [HRMS377] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HRMS377] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HRMS377] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HRMS377] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HRMS377] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HRMS377] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HRMS377] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [HRMS377] SET  READ_WRITE
GO
ALTER DATABASE [HRMS377] SET RECOVERY SIMPLE
GO
ALTER DATABASE [HRMS377] SET  MULTI_USER
GO
ALTER DATABASE [HRMS377] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HRMS377] SET DB_CHAINING OFF
GO
USE [HRMS377]
GO
/****** Object:  Table [dbo].[PayBand]    Script Date: 06/10/2016 20:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayBand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[DateCreated] [date] NULL,
 CONSTRAINT [PK_PayBand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 06/10/2016 20:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Active] [bit] NULL,
	[Gender] [nchar](10) NULL,
	[DepartmentId] [nvarchar](50) NULL,
	[DesignationId] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK__Employee__AF2DBB99023D5A04] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON
INSERT [dbo].[Employee] ([EmpId], [FirstName], [LastName], [Email], [PhoneNumber], [Active], [Gender], [DepartmentId], [DesignationId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [UserId]) VALUES (1, N'Ram', NULL, N'ram@abc.com', NULL, 0, NULL, N'1', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Employee] ([EmpId], [FirstName], [LastName], [Email], [PhoneNumber], [Active], [Gender], [DepartmentId], [DesignationId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [UserId]) VALUES (2, N'Sunil', NULL, N'sunil@gmail.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([EmpId], [FirstName], [LastName], [Email], [PhoneNumber], [Active], [Gender], [DepartmentId], [DesignationId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [UserId]) VALUES (3, N'Rahul', NULL, N'rahul@gmail.com', NULL, NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Employee] ([EmpId], [FirstName], [LastName], [Email], [PhoneNumber], [Active], [Gender], [DepartmentId], [DesignationId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [UserId]) VALUES (4, N'Rahul', NULL, N'rahul@gmail.com', NULL, NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Employee] ([EmpId], [FirstName], [LastName], [Email], [PhoneNumber], [Active], [Gender], [DepartmentId], [DesignationId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [UserId]) VALUES (5, N'Nitin', NULL, N'nitin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Employee] ([EmpId], [FirstName], [LastName], [Email], [PhoneNumber], [Active], [Gender], [DepartmentId], [DesignationId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [UserId]) VALUES (6, N'Abhishek', NULL, N'ab@vmail.com', NULL, NULL, NULL, N'2', NULL, NULL, NULL, NULL, NULL, 54)
INSERT [dbo].[Employee] ([EmpId], [FirstName], [LastName], [Email], [PhoneNumber], [Active], [Gender], [DepartmentId], [DesignationId], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy], [UserId]) VALUES (7, N'Rohit', NULL, N'rohit@vad.com', NULL, NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL, 3)
SET IDENTITY_INSERT [dbo].[Employee] OFF
/****** Object:  Table [dbo].[Designation]    Script Date: 06/10/2016 20:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[DateCreated] [date] NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Designation] ON
INSERT [dbo].[Designation] ([Id], [Description], [Active], [DateCreated]) VALUES (1, N'Manager', 1, CAST(0x7B3B0B00 AS Date))
INSERT [dbo].[Designation] ([Id], [Description], [Active], [DateCreated]) VALUES (2, N'Clerk', 1, CAST(0x7B3B0B00 AS Date))
INSERT [dbo].[Designation] ([Id], [Description], [Active], [DateCreated]) VALUES (3, N'Supervisor', 1, CAST(0x7B3B0B00 AS Date))
INSERT [dbo].[Designation] ([Id], [Description], [Active], [DateCreated]) VALUES (4, N'Accountant', 1, CAST(0x7B3B0B00 AS Date))
INSERT [dbo].[Designation] ([Id], [Description], [Active], [DateCreated]) VALUES (5, N'Salesman', 1, CAST(0x7B3B0B00 AS Date))
INSERT [dbo].[Designation] ([Id], [Description], [Active], [DateCreated]) VALUES (6, N'Support', 1, CAST(0x7B3B0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Designation] OFF
/****** Object:  Table [dbo].[Department]    Script Date: 06/10/2016 20:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[DateCreated] [date] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON
INSERT [dbo].[Department] ([Id], [Description], [Active], [DateCreated]) VALUES (1, N'HR', 1, CAST(0x7B3B0B00 AS Date))
INSERT [dbo].[Department] ([Id], [Description], [Active], [DateCreated]) VALUES (2, N'Accounts', 1, CAST(0x7B3B0B00 AS Date))
INSERT [dbo].[Department] ([Id], [Description], [Active], [DateCreated]) VALUES (3, N'Administration', 1, CAST(0x7B3B0B00 AS Date))
INSERT [dbo].[Department] ([Id], [Description], [Active], [DateCreated]) VALUES (4, N'Finance', 1, CAST(0x7B3B0B00 AS Date))
INSERT [dbo].[Department] ([Id], [Description], [Active], [DateCreated]) VALUES (5, N'Sales', 1, CAST(0x7B3B0B00 AS Date))
INSERT [dbo].[Department] ([Id], [Description], [Active], [DateCreated]) VALUES (6, N'IT', 1, CAST(0x7B3B0B00 AS Date))
INSERT [dbo].[Department] ([Id], [Description], [Active], [DateCreated]) VALUES (7, N'ERP', 1, CAST(0x7B3B0B00 AS Date))
INSERT [dbo].[Department] ([Id], [Description], [Active], [DateCreated]) VALUES (8, N'Media', 1, CAST(0x7B3B0B00 AS Date))
INSERT [dbo].[Department] ([Id], [Description], [Active], [DateCreated]) VALUES (9, N'Housekeeping', 1, CAST(0x7B3B0B00 AS Date))
INSERT [dbo].[Department] ([Id], [Description], [Active], [DateCreated]) VALUES (10, N'Marketing', 1, CAST(0x7B3B0B00 AS Date))
INSERT [dbo].[Department] ([Id], [Description], [Active], [DateCreated]) VALUES (11, N'Support', 1, CAST(0x7B3B0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Department] OFF
