USE [master]
GO
/****** Object:  Database [DbDapperRealEstate]    Script Date: 12.09.2024 10:25:18 ******/
CREATE DATABASE [DbDapperRealEstate]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbDapperRealEstate', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DbDapperRealEstate.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbDapperRealEstate_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DbDapperRealEstate_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DbDapperRealEstate] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbDapperRealEstate].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbDapperRealEstate] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbDapperRealEstate] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbDapperRealEstate] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DbDapperRealEstate] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbDapperRealEstate] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET RECOVERY FULL 
GO
ALTER DATABASE [DbDapperRealEstate] SET  MULTI_USER 
GO
ALTER DATABASE [DbDapperRealEstate] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbDapperRealEstate] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbDapperRealEstate] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbDapperRealEstate] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbDapperRealEstate] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbDapperRealEstate] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DbDapperRealEstate', N'ON'
GO
ALTER DATABASE [DbDapperRealEstate] SET QUERY_STORE = ON
GO
ALTER DATABASE [DbDapperRealEstate] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DbDapperRealEstate]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[AddressTitle1] [nvarchar](100) NULL,
	[Description] [nvarchar](200) NULL,
	[AddressTitle2] [nvarchar](100) NULL,
	[Phone1] [nvarchar](50) NULL,
	[Phone2] [nvarchar](50) NULL,
	[EMail] [nvarchar](50) NULL,
	[Location] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Amenity]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Amenity](
	[AmenityId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Amenity] PRIMARY KEY CLUSTERED 
(
	[AmenityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRole]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRole](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUser]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[UserRole] [int] NULL,
	[UserImageUrl] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BottomGrid]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BottomGrid](
	[BottomGridID] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[Description] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[BottomGridID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
	[CategoryStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[clientID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[Comment] [nvarchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[clientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Subject] [nvarchar](100) NULL,
	[EMail] [nvarchar](100) NULL,
	[Message] [nvarchar](max) NULL,
	[SendDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[Mail] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](100) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK__Employee__7AD04FF15A52C48B] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MailSubscribe]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailSubscribe](
	[MailID] [int] IDENTITY(1,1) NOT NULL,
	[EMail] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[Sender] [int] NULL,
	[Receiver] [int] NULL,
	[Subject] [nvarchar](50) NULL,
	[Detail] [nvarchar](max) NULL,
	[SendDate] [date] NULL,
	[IsRead] [bit] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PopularLocation]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PopularLocation](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[ImageUrl] [nvarchar](100) NULL,
	[PropertyCount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[SlugUrl] [nvarchar](100) NULL,
	[Price] [decimal](18, 2) NULL,
	[CoverImage] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[District] [nvarchar](100) NULL,
	[Address] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[Type] [nvarchar](10) NULL,
	[ProductCategory] [int] NULL,
	[AppUserId] [int] NULL,
	[DealOfTheDay] [bit] NULL,
	[AdvertisementDate] [date] NULL,
	[ProductStatus] [bit] NULL,
 CONSTRAINT [PK__Product__B40CC6ED0758DBFE] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[ProductDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[ProductSize] [int] NULL,
	[BedRoomCount] [tinyint] NULL,
	[BathCount] [tinyint] NULL,
	[RoomCount] [tinyint] NULL,
	[GarageSize] [tinyint] NULL,
	[BuildYear] [char](4) NULL,
	[Price] [decimal](18, 2) NULL,
	[Location] [nvarchar](500) NULL,
	[VideoUrl] [nvarchar](500) NULL,
	[ProductID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[ProductImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[ProductImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyAmenity]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyAmenity](
	[PropertyAmenityId] [int] IDENTITY(1,1) NOT NULL,
	[PropertyId] [int] NULL,
	[AmenityId] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_PropertyAmenity] PRIMARY KEY CLUSTERED 
(
	[PropertyAmenityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](100) NULL,
	[ServiceStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialMedia]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMedia](
	[SocialMediaID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Icon] [nvarchar](100) NULL,
	[SocialMediaUrl] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[SocialMediaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubFeature]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubFeature](
	[SubFeatureID] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](100) NULL,
	[TopTitle] [nvarchar](100) NULL,
	[MainTitle] [nvarchar](100) NULL,
	[Description] [nvarchar](200) NULL,
	[SubTitle] [nvarchar](100) NULL,
 CONSTRAINT [PK__SubFeatu__B1D918CDB4BBAF68] PRIMARY KEY CLUSTERED 
(
	[SubFeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonial]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonial](
	[TestimonialID] [int] IDENTITY(1,1) NOT NULL,
	[NameSurname] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[Comment] [nvarchar](500) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TestimonialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToDoList]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToDoList](
	[ToDoListID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[ToDoListStatus] [bit] NULL,
 CONSTRAINT [PK_ToDoList] PRIMARY KEY CLUSTERED 
(
	[ToDoListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WhoWeAreDetail]    Script Date: 12.09.2024 10:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WhoWeAreDetail](
	[WhoWeAreDetailID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Subtitle] [nvarchar](100) NULL,
	[Description1] [nvarchar](500) NULL,
	[Description2] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[WhoWeAreDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AppUser]  WITH CHECK ADD  CONSTRAINT [FK_AppUser_AppRole] FOREIGN KEY([UserRole])
REFERENCES [dbo].[AppRole] ([RoleID])
GO
ALTER TABLE [dbo].[AppUser] CHECK CONSTRAINT [FK_AppUser_AppRole]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_AppUser] FOREIGN KEY([Sender])
REFERENCES [dbo].[AppUser] ([UserID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_AppUser]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_AppUser1] FOREIGN KEY([Receiver])
REFERENCES [dbo].[AppUser] ([UserID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_AppUser1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_AppUser] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AppUser] ([UserID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_AppUser]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([ProductCategory])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Product]
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD  CONSTRAINT [FK_ProductImage_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductImage] CHECK CONSTRAINT [FK_ProductImage_Product]
GO
ALTER TABLE [dbo].[PropertyAmenity]  WITH CHECK ADD  CONSTRAINT [FK_PropertyAmenity_Amenity] FOREIGN KEY([AmenityId])
REFERENCES [dbo].[Amenity] ([AmenityId])
GO
ALTER TABLE [dbo].[PropertyAmenity] CHECK CONSTRAINT [FK_PropertyAmenity_Amenity]
GO
ALTER TABLE [dbo].[PropertyAmenity]  WITH CHECK ADD  CONSTRAINT [FK_PropertyAmenity_Product] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[PropertyAmenity] CHECK CONSTRAINT [FK_PropertyAmenity_Product]
GO
USE [master]
GO
ALTER DATABASE [DbDapperRealEstate] SET  READ_WRITE 
GO
