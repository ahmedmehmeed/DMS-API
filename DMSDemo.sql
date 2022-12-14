USE [master]
GO
/****** Object:  Database [DMSDemo]    Script Date: 11/12/2022 3:47:42 PM ******/
CREATE DATABASE [DMSDemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DMSDemo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DMSDemo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DMSDemo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DMSDemo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DMSDemo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DMSDemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DMSDemo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DMSDemo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DMSDemo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DMSDemo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DMSDemo] SET ARITHABORT OFF 
GO
ALTER DATABASE [DMSDemo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DMSDemo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DMSDemo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DMSDemo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DMSDemo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DMSDemo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DMSDemo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DMSDemo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DMSDemo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DMSDemo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DMSDemo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DMSDemo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DMSDemo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DMSDemo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DMSDemo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DMSDemo] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DMSDemo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DMSDemo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DMSDemo] SET  MULTI_USER 
GO
ALTER DATABASE [DMSDemo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DMSDemo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DMSDemo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DMSDemo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DMSDemo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DMSDemo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DMSDemo] SET QUERY_STORE = OFF
GO
USE [DMSDemo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/12/2022 3:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/12/2022 3:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/12/2022 3:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/12/2022 3:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/12/2022 3:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/12/2022 3:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/12/2022 3:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/12/2022 3:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 11/12/2022 3:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [uniqueidentifier] NOT NULL,
	[Atr1] [nvarchar](max) NULL,
	[Atr2] [nvarchar](max) NULL,
	[Atr3] [nvarchar](max) NULL,
	[Atr4] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[QTY] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[UOMId] [int] NOT NULL,
	[Atr5] [nvarchar](max) NULL,
	[Atr6] [nvarchar](max) NULL,
	[Atr7] [nvarchar](max) NULL,
	[Atr8] [nvarchar](max) NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/12/2022 3:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ItemId] [uniqueidentifier] NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RefreshToken]    Script Date: 11/12/2022 3:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RefreshToken](
	[AppUserId] [nvarchar](450) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Token] [nvarchar](max) NULL,
	[ExpiresOn] [datetime2](7) NOT NULL,
	[Createdon] [datetime2](7) NOT NULL,
	[RevokedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_RefreshToken] PRIMARY KEY CLUSTERED 
(
	[AppUserId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnitOfMeasurements]    Script Date: 11/12/2022 3:47:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitOfMeasurements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UOM] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UnitOfMeasurements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221108161559_init', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221108171017_M1', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221108212506_addRoles', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221108222111_addRefreshToken', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221108234754_Fix-Price', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221109220639_order-table', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221109234613_update-Order-table', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221110071950_add-order-quantity', N'7.0.0')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5ac1b1ba-d6cf-4b1a-93d0-9cb53e9a2219', N'Customer', N'CUSTOMER', N'e122106f-1b80-4540-a012-82a5024513bf')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'bdfd303c-0539-4b32-980b-44c3bc356bb2', N'Admin', N'ADMIN', N'3dda6349-9f81-4242-b1de-c3b1b2238d41')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'37dd723b-7896-495c-99be-9e1eabeb71c1', N'5ac1b1ba-d6cf-4b1a-93d0-9cb53e9a2219')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5681b0f8-1d42-4a45-99f2-c0e67f7c2663', N'5ac1b1ba-d6cf-4b1a-93d0-9cb53e9a2219')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8ea9e37c-b870-460c-84c6-799f32aad30c', N'5ac1b1ba-d6cf-4b1a-93d0-9cb53e9a2219')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b3940459-fb03-4680-9678-f59534ac369c', N'5ac1b1ba-d6cf-4b1a-93d0-9cb53e9a2219')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', N'bdfd303c-0539-4b32-980b-44c3bc356bb2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', N'bdfd303c-0539-4b32-980b-44c3bc356bb2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'df5cd343-5f89-4fa4-8bde-c78f92bc110e', N'bdfd303c-0539-4b32-980b-44c3bc356bb2')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'37dd723b-7896-495c-99be-9e1eabeb71c1', N'Customer2', N'CUSTOMER2', N'Customer2@gmail.com', N'CUSTOMER2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEC9NlMLuyqCbegFrq6XKecZ1n5v3MhwcVE8uto2QE8qFyETxYoXdzv4ah0Du0QGFXA==', N'LHMUZ4XGKVBESMNCSIDBEYOR7JPCMX6I', N'198ee3d1-a801-49f9-b1be-625d1a872a58', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', N'Test', N'TEST', N'Test@gmail.com', N'TEST@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENtVZqS2UbWGmz6/bfG7I8qYuWUF7cvpUr3el9aS6oPDbAgWMeOT7ED0Bn5OCMZfgw==', N'2LCTDZEEND5NVQ5NHX3DTCWWW3KXJG7Q', N'67e177dc-2da4-4520-a853-ea0217a16567', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5681b0f8-1d42-4a45-99f2-c0e67f7c2663', N'Customer4', N'CUSTOMER4', N'Customer4@gmail.com', N'CUSTOMER4@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECrYj9+ltzF+dllcWA40WEEtiPMhdPS80z6dOurM+vjSRvZO3DUW1r7aAJKXLeNp5g==', N'DEAJX44CHKMDFXWV7DRSQFOUO577LJGE', N'700b4524-8280-4abf-87f8-8a7c2377eb1c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8ea9e37c-b870-460c-84c6-799f32aad30c', N'Customer', N'CUSTOMER', N'Customer@gmail.com', N'CUSTOMER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEK2faBI2ufEcJxniqxtLlqjO+vq45C/CX25GNFufdqL/wvJGjxgNGophOYz9Et/abw==', N'LBO4OSAYEGWIEORHLYIJZDTLJFTDH6VJ', N'1d86f3ed-af99-4cb0-96fa-d6e98e453ec9', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b3940459-fb03-4680-9678-f59534ac369c', N'Customer3', N'CUSTOMER3', N'Customer3@gmail.com', N'CUSTOMER3@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEACku38E71WtDLVPXWDMs2DbuDhmT3/1Nmj8UvQ8WouOhAxglJA6H3ZeQt4KrsdqBw==', N'YG7RHJP3KHRTH73YQ3F23PXJLWYM7H5T', N'4cc9656d-b8f3-440c-a277-c71bb8af0327', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', N'admin', N'ADMIN', N'Admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGQ3SkkFouym0p9UW45pA7jMvspxUW6Y17B+HCL04qUY0fI9rjnKZiTwkE2i52KXHg==', N'5EUCULACJSBKKZQM2LZPMJ4V5EG5GRZP', N'607a7bc1-d1d3-46f3-8522-bf12306b1163', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'df5cd343-5f89-4fa4-8bde-c78f92bc110e', N'AhmedMehmed', N'AHMEDMEHMED', N'Ahmed@gmail.com', N'AHMED@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENYEKm24csugyTRvHjv3pqhvWNQyZwq0OhbQaSfGKouTNI7WTBRU1dIUJI9dzLqcYA==', N'3BXD7EPH7UDRD6MPX74DNTCIO4WLE74Y', N'b5bea2c5-fb4f-4e9f-a368-e37802e5530b', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[Items] ([Id], [Atr1], [Atr2], [Atr3], [Atr4], [Name], [Description], [QTY], [Price], [UOMId], [Atr5], [Atr6], [Atr7], [Atr8]) VALUES (N'cbdf10fc-27b1-4b6c-b4a1-002ae89e8e01', NULL, NULL, NULL, NULL, N'Cooking Oil', N'BetterBody Foods Refined Avocado Oil, Non-GMO Cooking Oil, Kosher, Keto and Paleo Diet Friendly,', 50, CAST(100.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Items] ([Id], [Atr1], [Atr2], [Atr3], [Atr4], [Name], [Description], [QTY], [Price], [UOMId], [Atr5], [Atr6], [Atr7], [Atr8]) VALUES (N'55f4d0ac-22d0-40cf-ac9e-2cc641b20022', NULL, NULL, NULL, NULL, N'Salmon', N'Taste of the Wild Smoke-Flavored Salmon High Protein Recipes Premium Dry Dog Food with Real Salmon, Superfoods and Nutrients Like Probiotics', 498, CAST(150.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Items] ([Id], [Atr1], [Atr2], [Atr3], [Atr4], [Name], [Description], [QTY], [Price], [UOMId], [Atr5], [Atr6], [Atr7], [Atr8]) VALUES (N'5c6359b0-db7a-46d5-aa8a-4c2bfc102d5b', NULL, NULL, NULL, NULL, N'Mozzarella ', N'Cheese String Mozzarella 12 Count, 12 Ounce
', 58, CAST(30.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Items] ([Id], [Atr1], [Atr2], [Atr3], [Atr4], [Name], [Description], [QTY], [Price], [UOMId], [Atr5], [Atr6], [Atr7], [Atr8]) VALUES (N'41465fcc-9f2b-45e0-a3cb-5ced5f472ea3', NULL, NULL, NULL, NULL, N'Milk', N'Horizon Organic Shelf-Stable 1% Lowfat Milk Boxes with DHA Omega-3, Vanilla, 8 Oz, 6 Count (Pack of 3)', 45, CAST(40.00 AS Decimal(18, 2)), 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Items] ([Id], [Atr1], [Atr2], [Atr3], [Atr4], [Name], [Description], [QTY], [Price], [UOMId], [Atr5], [Atr6], [Atr7], [Atr8]) VALUES (N'b635f5f9-752a-49f4-bb68-729bcf98f795', NULL, NULL, NULL, NULL, N'Yoo-hoo Chocolate Drink', N'Yoo-hoo Chocolate Drink, 6.5 fl oz boxes (Pack of 32)', 99, CAST(10.00 AS Decimal(18, 2)), 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Items] ([Id], [Atr1], [Atr2], [Atr3], [Atr4], [Name], [Description], [QTY], [Price], [UOMId], [Atr5], [Atr6], [Atr7], [Atr8]) VALUES (N'9b6fdc56-0f78-46c7-97fa-8610ba14f9c3', NULL, NULL, NULL, NULL, N'Nesquik Chocolate', N'Nesquik Chocolate Powder No Sugar Added, 16 oz', 29, CAST(80.00 AS Decimal(18, 2)), 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Items] ([Id], [Atr1], [Atr2], [Atr3], [Atr4], [Name], [Description], [QTY], [Price], [UOMId], [Atr5], [Atr6], [Atr7], [Atr8]) VALUES (N'ef3d0908-c2f4-43f7-9c66-be823b0ad2a0', NULL, NULL, NULL, NULL, N'Pepsi Nitro', N'Pepsi Nitro, Draft Cola & Vanilla Draft Cola Variety Pack, 13.65oz Cans (12 Pack)', 18, CAST(10.00 AS Decimal(18, 2)), 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Items] ([Id], [Atr1], [Atr2], [Atr3], [Atr4], [Name], [Description], [QTY], [Price], [UOMId], [Atr5], [Atr6], [Atr7], [Atr8]) VALUES (N'b535ce0b-783c-45b0-adc2-c0f32fea10ee', NULL, NULL, NULL, NULL, N'Tang liquid', N'Tang liquid concentrate 1.62 ounce 2 pack
', 40, CAST(20.00 AS Decimal(18, 2)), 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Items] ([Id], [Atr1], [Atr2], [Atr3], [Atr4], [Name], [Description], [QTY], [Price], [UOMId], [Atr5], [Atr6], [Atr7], [Atr8]) VALUES (N'7687ff22-720f-43d0-94e1-c919b82e4c33', NULL, NULL, NULL, NULL, N'Canned Beans', N'Bush''s Best Country Style Baked Beans, Canned Beans, Baked Beans Canned, Source of Plant Based Protein', 69, CAST(10.00 AS Decimal(18, 2)), 2, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'd5a57e81-672f-406b-88b5-0e6d7c7ea659', N'37dd723b-7896-495c-99be-9e1eabeb71c1', N'b635f5f9-752a-49f4-bb68-729bcf98f795', CAST(N'2022-11-11T11:05:13.7570289' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'869e9052-8382-4559-95e0-1248c898756e', N'419f1b90-0411-4748-ba2a-2ac3bc035db0', N'41465fcc-9f2b-45e0-a3cb-5ced5f472ea3', CAST(N'2022-11-10T20:37:06.5619976' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'65bc90f1-6e8c-4fe3-9aff-156a1750ab69', N'8ea9e37c-b870-460c-84c6-799f32aad30c', N'7687ff22-720f-43d0-94e1-c919b82e4c33', CAST(N'2022-11-11T09:41:39.4843952' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'7f911e07-bc14-497f-9cf5-1c7f5260f3cc', N'b3940459-fb03-4680-9678-f59534ac369c', N'5c6359b0-db7a-46d5-aa8a-4c2bfc102d5b', CAST(N'2022-11-11T21:50:38.7682927' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'f16f9724-720a-4110-a60d-27c6e08876f2', N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', N'ef3d0908-c2f4-43f7-9c66-be823b0ad2a0', CAST(N'2022-11-11T13:45:10.5101510' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'905e01bb-643f-489e-aeee-3e30efc11580', N'b3940459-fb03-4680-9678-f59534ac369c', N'9b6fdc56-0f78-46c7-97fa-8610ba14f9c3', CAST(N'2022-11-11T21:59:46.7100391' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'36618479-8569-4133-b622-48127d367951', N'37dd723b-7896-495c-99be-9e1eabeb71c1', N'ef3d0908-c2f4-43f7-9c66-be823b0ad2a0', CAST(N'2022-11-11T11:09:07.4534525' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'6d189edb-1490-4b53-9c7b-486d91a7f0dc', N'b3940459-fb03-4680-9678-f59534ac369c', N'41465fcc-9f2b-45e0-a3cb-5ced5f472ea3', CAST(N'2022-11-11T21:59:43.8155521' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'18ce2b40-45ff-4f2d-8c35-4882edb5031d', N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', N'7687ff22-720f-43d0-94e1-c919b82e4c33', CAST(N'2022-11-11T13:39:39.4261497' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'acdb87f6-8911-498f-9c5f-48dfd929f31a', N'b3940459-fb03-4680-9678-f59534ac369c', N'b635f5f9-752a-49f4-bb68-729bcf98f795', CAST(N'2022-11-11T21:50:34.7201887' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'00db2c51-b3b6-436e-bcff-5fbf6990ae0e', N'419f1b90-0411-4748-ba2a-2ac3bc035db0', N'5c6359b0-db7a-46d5-aa8a-4c2bfc102d5b', CAST(N'2022-11-10T20:37:04.1693642' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'83a7435f-e5e0-4526-b27c-7a4ca6e24aa2', N'8ea9e37c-b870-460c-84c6-799f32aad30c', N'ef3d0908-c2f4-43f7-9c66-be823b0ad2a0', CAST(N'2022-11-11T19:51:01.6282688' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'18740c85-4bde-4245-b062-7ba3f1571a42', N'37dd723b-7896-495c-99be-9e1eabeb71c1', N'5c6359b0-db7a-46d5-aa8a-4c2bfc102d5b', CAST(N'2022-11-11T11:05:08.3907905' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'3267183f-b311-4f4d-8317-8441fbffac84', N'419f1b90-0411-4748-ba2a-2ac3bc035db0', N'cbdf10fc-27b1-4b6c-b4a1-002ae89e8e01', CAST(N'2022-11-10T11:00:19.8379402' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'8d35bd5f-9a9c-4118-8378-867e0c853e53', N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', N'b535ce0b-783c-45b0-adc2-c0f32fea10ee', CAST(N'2022-11-11T13:05:12.4957808' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'c38d79fd-2cc6-4cc1-b8a2-8a53ebd8ea66', N'b3940459-fb03-4680-9678-f59534ac369c', N'55f4d0ac-22d0-40cf-ac9e-2cc641b20022', CAST(N'2022-11-11T21:55:08.7152396' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'd15472b9-894c-4f02-89da-93eb40e2d53f', N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', N'55f4d0ac-22d0-40cf-ac9e-2cc641b20022', CAST(N'2022-11-11T10:54:41.0487827' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'0293437b-bc1c-4d43-9a11-9c8cd8b08f5a', N'419f1b90-0411-4748-ba2a-2ac3bc035db0', N'55f4d0ac-22d0-40cf-ac9e-2cc641b20022', CAST(N'2022-11-10T20:35:51.2124579' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'8a49b1a7-ac2a-481f-b3d0-a14e701706e3', N'b3940459-fb03-4680-9678-f59534ac369c', N'41465fcc-9f2b-45e0-a3cb-5ced5f472ea3', CAST(N'2022-11-11T22:04:25.8562822' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'7ae05d1d-e28a-4d37-98c2-a15bb63608ad', N'8ea9e37c-b870-460c-84c6-799f32aad30c', N'9b6fdc56-0f78-46c7-97fa-8610ba14f9c3', CAST(N'2022-11-11T09:41:43.4550741' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'20712f0e-3ae6-4843-b931-bdea70a61786', N'37dd723b-7896-495c-99be-9e1eabeb71c1', N'41465fcc-9f2b-45e0-a3cb-5ced5f472ea3', CAST(N'2022-11-11T21:02:12.8274781' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'407f71ce-3c48-494e-9457-c3b6a38be8d8', N'37dd723b-7896-495c-99be-9e1eabeb71c1', N'41465fcc-9f2b-45e0-a3cb-5ced5f472ea3', CAST(N'2022-11-11T21:44:10.8449848' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'3f9fa370-af7a-4422-be3d-ce07e5bc59b5', N'8ea9e37c-b870-460c-84c6-799f32aad30c', N'41465fcc-9f2b-45e0-a3cb-5ced5f472ea3', CAST(N'2022-11-11T20:18:38.6299214' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'2c4e4ba5-c93f-490e-bf7c-e2e34e3f0cae', N'8ea9e37c-b870-460c-84c6-799f32aad30c', N'55f4d0ac-22d0-40cf-ac9e-2cc641b20022', CAST(N'2022-11-11T20:18:31.6617336' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [ItemId], [OrderDate], [Quantity]) VALUES (N'320da3a3-7bd7-466f-b0a0-fe8aa6c5c64e', N'b3940459-fb03-4680-9678-f59534ac369c', N'5c6359b0-db7a-46d5-aa8a-4c2bfc102d5b', CAST(N'2022-11-11T21:55:09.9283947' AS DateTime2), 1)
GO
SET IDENTITY_INSERT [dbo].[RefreshToken] ON 

INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'37dd723b-7896-495c-99be-9e1eabeb71c1', 54, N'qjVairbI6xxdXTApjlgYsSFxK2zlCP8h9IGl2KA3Cfo=', CAST(N'2022-11-11T07:41:45.1088151' AS DateTime2), CAST(N'2022-11-11T07:40:45.1088155' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'37dd723b-7896-495c-99be-9e1eabeb71c1', 61, N'bbJpQguyDbDtN2ia40I6KDDH7Itl0b4geVxSzVC0Gy4=', CAST(N'2022-11-11T09:06:05.7291362' AS DateTime2), CAST(N'2022-11-11T09:05:05.7291363' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'37dd723b-7896-495c-99be-9e1eabeb71c1', 63, N'8qUyHPiXwnMxdtCqLukmQuswLMUl23K2kMx/khxP98o=', CAST(N'2022-11-11T14:22:16.8169263' AS DateTime2), CAST(N'2022-11-11T14:21:16.8169653' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'37dd723b-7896-495c-99be-9e1eabeb71c1', 71, N'n4wwrx9Hs1NunZBlqCf/BsZjw+TAEirgg75IdP9JHUk=', CAST(N'2022-11-11T19:03:02.7850829' AS DateTime2), CAST(N'2022-11-11T19:02:02.7850842' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'37dd723b-7896-495c-99be-9e1eabeb71c1', 74, N'1inyLWVKW1FKvx4zHwPLJSo6RDQNvLlIreAffNWQgwg=', CAST(N'2022-11-11T19:45:04.0196201' AS DateTime2), CAST(N'2022-11-11T19:44:04.0196209' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 1, N'3LAWYLG8M4zESKbYfuf7qZ1OLqqxnpFowiRErTLmu8c=', CAST(N'2022-11-08T22:43:58.8020666' AS DateTime2), CAST(N'2022-11-08T22:42:58.8021114' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 2, N'XpbyEwNznAEfRwg2Op4UtvPfELENcRhN4Bqnuv/kC64=', CAST(N'2022-11-08T22:54:40.5985778' AS DateTime2), CAST(N'2022-11-08T22:53:40.5985781' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 3, N'MV/BFuY6vb045sqXxX0ynDOkinR0MaeQ/X4WCb5MRVI=', CAST(N'2022-11-08T23:02:46.7038081' AS DateTime2), CAST(N'2022-11-08T23:01:46.7038555' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 4, N'aURirHyiI0RE2Ks5JPLwA1+umnXLpMYUo3mvvMPgfkw=', CAST(N'2022-11-08T23:27:01.8466069' AS DateTime2), CAST(N'2022-11-08T23:26:01.8466468' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 5, N'rU8ofowsMxKHafqZZAC4ZWEhnd838sM6bJg9FLImSV4=', CAST(N'2022-11-08T23:37:22.3577317' AS DateTime2), CAST(N'2022-11-08T23:36:22.3577716' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 6, N'g5ZLznutzIhayLiSD+zz5uK4PiOi1nZNayOFFBRl5K8=', CAST(N'2022-11-09T09:35:44.4705740' AS DateTime2), CAST(N'2022-11-09T09:34:44.4706131' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 7, N'NKwOiER9da5jBtgaK6jccj8y1qvd8ndYOWq5oBuJ/Vg=', CAST(N'2022-11-09T10:29:23.6466940' AS DateTime2), CAST(N'2022-11-09T10:28:23.6466942' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 8, N'7Vcu1sgb6+8WXXVmc9c1xof0I0tfeKHRQkCMRVsNDco=', CAST(N'2022-11-09T19:30:54.4051269' AS DateTime2), CAST(N'2022-11-09T19:29:54.4051725' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 9, N'sQ3Uo40IJfb26fiD3S3GzVcomKUvWbGy6OvgyWW3Irk=', CAST(N'2022-11-09T19:34:46.7879682' AS DateTime2), CAST(N'2022-11-09T19:33:46.7879685' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 10, N'ljuOEhd8/yfC2JnzzYscz6GeNfi/s0eFTJWvtzfFpAU=', CAST(N'2022-11-09T19:35:01.5349401' AS DateTime2), CAST(N'2022-11-09T19:34:01.5349409' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 11, N'qWOBySTrkxFqqePSkByM//B/K7DLsu8Y68+j694MGaE=', CAST(N'2022-11-09T19:35:53.2648765' AS DateTime2), CAST(N'2022-11-09T19:34:53.2648769' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 12, N'+h3Ogi37BoTrLzeHkvWtjGfnwtAma32VSQthYhUD52w=', CAST(N'2022-11-09T19:36:39.8252680' AS DateTime2), CAST(N'2022-11-09T19:35:39.8252683' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 13, N'og+4XLZD97qTVfJziA5ZNsSww2RmA+QxXLnV6tnE1+Q=', CAST(N'2022-11-09T19:38:56.2582122' AS DateTime2), CAST(N'2022-11-09T19:37:56.2582124' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 14, N'/5MBI9KSHI2qhn1feeUuT73GejjH97GP61oR2fXqPQw=', CAST(N'2022-11-09T19:41:38.3369318' AS DateTime2), CAST(N'2022-11-09T19:40:38.3369321' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 15, N'JPUopHKe9XqaEaVGvw7PSHR7K7kjpyqdWFl4T0pcQ/0=', CAST(N'2022-11-09T19:43:10.0054330' AS DateTime2), CAST(N'2022-11-09T19:42:10.0054335' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 16, N'btWu0R0ZVljrN/K/476g8SMtTSWgWYv+smka5G+BbQs=', CAST(N'2022-11-09T19:43:59.3054948' AS DateTime2), CAST(N'2022-11-09T19:42:59.3054953' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 17, N'ycqM54tJhlBJBjonnDv6Mt2atpHgCT2MMIpnqKzzcDw=', CAST(N'2022-11-09T19:47:22.4262575' AS DateTime2), CAST(N'2022-11-09T19:46:22.4262578' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 18, N'Xseu5AesYxyCEsv8VPNwKYcFhW2ytJBJbumItePhn2I=', CAST(N'2022-11-09T19:49:54.8899411' AS DateTime2), CAST(N'2022-11-09T19:48:54.8899414' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 19, N'AA8/qDw+Ad4a26T/2uNqThKtc+A+ENr/7WxzWp/wipg=', CAST(N'2022-11-09T19:50:17.0068626' AS DateTime2), CAST(N'2022-11-09T19:49:17.0068629' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 20, N'yOhPFYlb3f+uzoKRuZkspkTx+QyPeVybo7RDgMsZ3eE=', CAST(N'2022-11-09T19:52:01.7072090' AS DateTime2), CAST(N'2022-11-09T19:51:01.7072094' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 21, N'b39koOvWbAb8L1f28mZiVNtYWovhf8GgyQlpQ5JeB7M=', CAST(N'2022-11-09T19:54:13.8345939' AS DateTime2), CAST(N'2022-11-09T19:53:13.8345943' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 22, N'FJgNmNfH2GJiBqotKQ4GvZ3Hp/+1txoPHV1suqvFVTk=', CAST(N'2022-11-09T19:55:23.5921366' AS DateTime2), CAST(N'2022-11-09T19:54:23.5921369' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 23, N'b07ZLT5PXgxMs0YFx0i0ia8/fEmVi9mL8fELIMwBiOs=', CAST(N'2022-11-09T20:02:11.8613657' AS DateTime2), CAST(N'2022-11-09T20:01:11.8613660' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 24, N'0H+n/qYkFutZP7l1hTay+v4RDYVMHhHgIZ5B2jjW8m8=', CAST(N'2022-11-09T20:03:22.8762844' AS DateTime2), CAST(N'2022-11-09T20:02:22.8762848' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 25, N'yDUhe7kPiTTXq5/Yo5brxM2x+hO6PP4S2d79kwTXn8s=', CAST(N'2022-11-09T20:10:46.6717563' AS DateTime2), CAST(N'2022-11-09T20:09:46.6717567' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 26, N'dxYVs5Ncg8D4Ity3Rc7yHBsV4nQrYIJYtltefFgX5r8=', CAST(N'2022-11-09T20:18:16.7369280' AS DateTime2), CAST(N'2022-11-09T20:17:16.7369283' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 27, N'7+jGhAk+hMumhCZ1mzAXGQ2GKlllGXxj3mpbNDqr21Q=', CAST(N'2022-11-09T20:18:50.5993128' AS DateTime2), CAST(N'2022-11-09T20:17:50.5993129' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 28, N'2uWCSeqcJ98SkY4+rbRGw2zug+EE1LYo5co1XGUh9yw=', CAST(N'2022-11-09T20:20:06.5688645' AS DateTime2), CAST(N'2022-11-09T20:19:06.5688646' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 29, N'/NgRrkxb+vHhQNyst1YA+KdwTYs/FCLOwVF9Q2ZdS+M=', CAST(N'2022-11-09T20:20:09.9031688' AS DateTime2), CAST(N'2022-11-09T20:19:09.9031690' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 30, N'mrVl7cvnqnee87jVzByM2qbxJ1cztZml33BOtANuldg=', CAST(N'2022-11-09T20:20:12.0393032' AS DateTime2), CAST(N'2022-11-09T20:19:12.0393033' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 31, N'xHxc+iSnhlWeso9pqT4zKVhR60kEgy+z5PIFoYOVN8E=', CAST(N'2022-11-09T20:21:12.3461175' AS DateTime2), CAST(N'2022-11-09T20:20:12.3461176' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 32, N'Hs0Ha90DSdg2rnxEMLA/fAvcBUdunnnVv0NFSHEF9a8=', CAST(N'2022-11-09T20:28:55.3011019' AS DateTime2), CAST(N'2022-11-09T20:27:55.3011021' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 33, N'a8T+agQcfaZozOUuu8lnJahaqzG0SBqDwMrbrTgwMNM=', CAST(N'2022-11-09T20:30:39.8629063' AS DateTime2), CAST(N'2022-11-09T20:29:39.8629066' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 34, N'cjyiY+i3B2CxbjnFuC+PwEwvPZ3Ez/+Sbd3uXEgs7yg=', CAST(N'2022-11-09T20:32:13.8547082' AS DateTime2), CAST(N'2022-11-09T20:31:13.8547087' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 35, N'6ZFSKfBkMEteSkgHKLsrf6e59a8uvWTIRHi9iLTtLo4=', CAST(N'2022-11-09T20:39:23.5374147' AS DateTime2), CAST(N'2022-11-09T20:38:23.5374152' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 36, N'USKXgtJ3bWnHPfpWZn9u6KParKslLWZdaHaB3/eHAK8=', CAST(N'2022-11-09T20:48:17.3668900' AS DateTime2), CAST(N'2022-11-09T20:47:17.3669364' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 37, N'xDyT6ebWhX/+XCV7QFODjWNOhrQ0KNtZzJ9No3MOB5U=', CAST(N'2022-11-10T07:34:09.1398380' AS DateTime2), CAST(N'2022-11-10T07:33:09.1398873' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 38, N'/yHISKInAQ1+QomZmZT3VlJW0RI1lO2loa46HZ5VpzE=', CAST(N'2022-11-10T07:50:24.0569243' AS DateTime2), CAST(N'2022-11-10T07:49:24.0569244' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 39, N'IpeP7ANF+Uoe767do5LiotqvIJfaztOZkpPYE9PZXKo=', CAST(N'2022-11-10T08:19:05.1519059' AS DateTime2), CAST(N'2022-11-10T08:18:05.1519496' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 40, N'VfjHLDNXFSJ5LXjJwTaGse8sJpdJBc8IGFZTFhcReLA=', CAST(N'2022-11-10T08:48:50.4091250' AS DateTime2), CAST(N'2022-11-10T08:47:50.4091659' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 41, N'kdZf0EB/B0F50LWK9uFdMiqnmd+UugUzZT68DiRUGSc=', CAST(N'2022-11-10T17:47:57.8784535' AS DateTime2), CAST(N'2022-11-10T17:46:57.8785236' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 42, N'm6aMfpemZnvilR0uIZwLIZsNQLIngOVyEHkBbcqnfTY=', CAST(N'2022-11-10T17:59:06.8476842' AS DateTime2), CAST(N'2022-11-10T17:58:06.8476844' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 43, N'opDdF69WJ07qv0tSh4s+mopco7gJeefdUERb/Wcr7+I=', CAST(N'2022-11-10T18:11:45.6220962' AS DateTime2), CAST(N'2022-11-10T18:10:45.6220964' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 44, N'KzbFLJcPM5vpUj9g6Gm5zYCmav5GafVQn3/BMY7wKZA=', CAST(N'2022-11-10T18:12:59.2236865' AS DateTime2), CAST(N'2022-11-10T18:11:59.2236867' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 45, N'kmKTkmrfhUf9wnJ46FQBEnLsc1kf84bLdirklVWUtL0=', CAST(N'2022-11-10T18:13:15.7834637' AS DateTime2), CAST(N'2022-11-10T18:12:15.7834639' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 46, N'7KZkp3YSG6O56rLvk4sT91rRu2bz2sWjtpPuwjm3vm4=', CAST(N'2022-11-10T18:13:25.6393807' AS DateTime2), CAST(N'2022-11-10T18:12:25.6393810' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 47, N'r/CIJ6PQsg4Ipa4Mtd9pa5qpX7ymvMYCD60eYpeWO/M=', CAST(N'2022-11-10T18:13:39.9197466' AS DateTime2), CAST(N'2022-11-10T18:12:39.9197468' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 48, N'ljH96raFfNhQWCx9if9jlXIP10xwALGXA4jv8B0EmVk=', CAST(N'2022-11-10T18:17:07.3875984' AS DateTime2), CAST(N'2022-11-10T18:16:07.3875986' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 49, N'Y6HAYR1feOb7rGwKP3CBkYLsSvioxt0u+FECgK18PyM=', CAST(N'2022-11-10T18:17:57.0561278' AS DateTime2), CAST(N'2022-11-10T18:16:57.0561280' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 50, N'iG1BAs2gOPrsRxUXFjAqu9IPCOJVwFZ2gIAWVDI3NCU=', CAST(N'2022-11-10T18:23:15.9898962' AS DateTime2), CAST(N'2022-11-10T18:22:15.9898969' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 51, N'DIT5cNI19+oq4zD2hFscKvBO/iYXJ3JH5jE6J8N0rtw=', CAST(N'2022-11-10T18:36:46.2209987' AS DateTime2), CAST(N'2022-11-10T18:35:46.2209991' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'419f1b90-0411-4748-ba2a-2ac3bc035db0', 65, N'qBlcDvPr0AtTnAxaJVvbWwOa5h8WNA7NkstNnztsfFo=', CAST(N'2022-11-11T15:18:11.5269037' AS DateTime2), CAST(N'2022-11-11T15:17:11.5269506' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'8ea9e37c-b870-460c-84c6-799f32aad30c', 56, N'mTUyKfe2dCA1/1Wuah/PVnKfvsoZW936o/0DpyQtfSM=', CAST(N'2022-11-11T07:42:33.1622518' AS DateTime2), CAST(N'2022-11-11T07:41:33.1622521' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'8ea9e37c-b870-460c-84c6-799f32aad30c', 68, N'iMc2AaekyXhDDubO2QZvPp2f/GeMg++ix8zNTNgeb2M=', CAST(N'2022-11-11T17:51:38.1029910' AS DateTime2), CAST(N'2022-11-11T17:50:38.1029914' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'8ea9e37c-b870-460c-84c6-799f32aad30c', 69, N'IJyysOhb3JXwCLR39g/GtF+EPxzKmBRTCqezFKZHUgE=', CAST(N'2022-11-11T18:19:29.3677517' AS DateTime2), CAST(N'2022-11-11T18:18:29.3677527' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'b3940459-fb03-4680-9678-f59534ac369c', 76, N'tMMqyii3Kil1Aug3lkdFbvQ3jfceD/eSaSX41W3RfEY=', CAST(N'2022-11-11T19:51:27.5794906' AS DateTime2), CAST(N'2022-11-11T19:50:27.5794913' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'b3940459-fb03-4680-9678-f59534ac369c', 77, N'gjSsn4j9TwHM77ZqAFaj9azxZT6RwSgE7+oF3hrYg1c=', CAST(N'2022-11-11T20:05:19.1106303' AS DateTime2), CAST(N'2022-11-11T20:04:19.1106308' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 52, N'mR+gFc3kxH/kd9cRbaiceMzzXKyzkf1LXgefQPFBN+w=', CAST(N'2022-11-11T07:16:39.7578521' AS DateTime2), CAST(N'2022-11-11T07:15:39.7579055' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 53, N'ruxgRMtzT1vxMY9gi8/t+U0KBaFEqhejT3GW4SHzcxs=', CAST(N'2022-11-11T07:17:30.8804366' AS DateTime2), CAST(N'2022-11-11T07:16:30.8804369' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 55, N'/K2IHgi++pW/kpwbcZI+IDpq0ShkZC67yKxxsEe4ucc=', CAST(N'2022-11-11T07:42:05.8099419' AS DateTime2), CAST(N'2022-11-11T07:41:05.8099422' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 57, N'5Rs23lOREiQJxKHBLcAtx9PrrbfeX7E4sEt9jD0Sqi4=', CAST(N'2022-11-11T07:42:54.3079110' AS DateTime2), CAST(N'2022-11-11T07:41:54.3079114' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 58, N'JsJ98U0MV0JsJoHDYZfY9v6EK17iwUku/oB0cOzLwss=', CAST(N'2022-11-11T08:31:56.8848731' AS DateTime2), CAST(N'2022-11-11T08:30:56.8849325' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 59, N'ec84NbQgglMdCWmDcylrP9VxImDb7DHaQoZTqGVLsXQ=', CAST(N'2022-11-11T08:54:19.1365775' AS DateTime2), CAST(N'2022-11-11T08:53:19.1365783' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 60, N'IvTxwg7/6AAwj7m+mVZWon0caO/n3FuujvT3hR0OmoY=', CAST(N'2022-11-11T09:05:48.9253446' AS DateTime2), CAST(N'2022-11-11T09:04:48.9253447' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 62, N'ybrzxtNXOnP63nucVXReKgu4FAIhYXhFPjhfClWHihU=', CAST(N'2022-11-11T09:10:49.6786453' AS DateTime2), CAST(N'2022-11-11T09:09:49.6786455' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 64, N'SnGW4uVgecsnVb29tdZBOy4on3YopVP9oZ2YPOOSeCE=', CAST(N'2022-11-11T14:32:14.7948692' AS DateTime2), CAST(N'2022-11-11T14:31:14.7949162' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 66, N'MvGCF3mzAB5gfjH1hAiFg2EqOkKFQBh6bm082EiIeKM=', CAST(N'2022-11-11T15:39:19.7868522' AS DateTime2), CAST(N'2022-11-11T15:38:19.7869057' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 67, N'A8C7EbSJD7JlmuMbPStBo48j5pi/Srfiw+4HkyYnpJk=', CAST(N'2022-11-11T17:49:48.0056428' AS DateTime2), CAST(N'2022-11-11T17:48:48.0057173' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 70, N'ppFVTPc4qq21KWK2TzV7qFjMzFjfQoXulaz+S1Fdp+o=', CAST(N'2022-11-11T18:20:59.0068919' AS DateTime2), CAST(N'2022-11-11T18:19:59.0068924' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 72, N'hkiO7R1fuXL+Mca/GYeYp7XldE2FqkGiLpzhFMKCTDU=', CAST(N'2022-11-11T19:03:50.2111695' AS DateTime2), CAST(N'2022-11-11T19:02:50.2111702' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 73, N'iEaplWYdaxgYell7CZBl7IcX7Onj2HSGAghpbkCvSc0=', CAST(N'2022-11-11T19:40:17.4753533' AS DateTime2), CAST(N'2022-11-11T19:39:17.4753537' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 75, N'/tWoEyVvZF7BP2ZFQS6sK7R5xXMCIQE/MNlykrSNvrQ=', CAST(N'2022-11-11T19:46:10.7071326' AS DateTime2), CAST(N'2022-11-11T19:45:10.7071327' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 78, N'PZAg/e7sEUrPzKnJBVmcWnt9LjdRsjc2G+5fd7h27xo=', CAST(N'2022-11-11T20:07:17.8706771' AS DateTime2), CAST(N'2022-11-11T20:06:17.8706791' AS DateTime2), NULL)
INSERT [dbo].[RefreshToken] ([AppUserId], [Id], [Token], [ExpiresOn], [Createdon], [RevokedOn]) VALUES (N'bad41a1f-bfde-4c8c-9893-3b137c6b4d77', 79, N'd1q5I25IdWnts05gqykIEO0fmC5c/YEo26rmJPu0baE=', CAST(N'2022-11-12T10:08:08.4260607' AS DateTime2), CAST(N'2022-11-12T10:07:08.4261320' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[RefreshToken] OFF
GO
SET IDENTITY_INSERT [dbo].[UnitOfMeasurements] ON 

INSERT [dbo].[UnitOfMeasurements] ([Id], [UOM], [Description]) VALUES (1, N'KG', N'KiloGram')
INSERT [dbo].[UnitOfMeasurements] ([Id], [UOM], [Description]) VALUES (2, N'Piece', N'Piece')
INSERT [dbo].[UnitOfMeasurements] ([Id], [UOM], [Description]) VALUES (3, N'L', N'Liter')
SET IDENTITY_INSERT [dbo].[UnitOfMeasurements] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/12/2022 3:47:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/12/2022 3:47:42 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/12/2022 3:47:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/12/2022 3:47:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/12/2022 3:47:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/12/2022 3:47:42 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/12/2022 3:47:42 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Items_UOMId]    Script Date: 11/12/2022 3:47:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Items_UOMId] ON [dbo].[Items]
(
	[UOMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_ItemId]    Script Date: 11/12/2022 3:47:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_ItemId] ON [dbo].[Orders]
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 11/12/2022 3:47:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_UnitOfMeasurements_UOMId] FOREIGN KEY([UOMId])
REFERENCES [dbo].[UnitOfMeasurements] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_UnitOfMeasurements_UOMId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Items_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Items_ItemId]
GO
ALTER TABLE [dbo].[RefreshToken]  WITH CHECK ADD  CONSTRAINT [FK_RefreshToken_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RefreshToken] CHECK CONSTRAINT [FK_RefreshToken_AspNetUsers_AppUserId]
GO
USE [master]
GO
ALTER DATABASE [DMSDemo] SET  READ_WRITE 
GO
