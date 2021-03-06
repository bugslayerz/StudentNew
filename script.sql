USE [master]
GO
/****** Object:  Database [Student]    Script Date: 24-12-2019 16:57:00 ******/
CREATE DATABASE [Student]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Student', FILENAME = N'C:\Users\lenovo\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\Student.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Student_log', FILENAME = N'C:\Users\lenovo\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\Student.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Student] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Student].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Student] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [Student] SET ANSI_NULLS ON 
GO
ALTER DATABASE [Student] SET ANSI_PADDING ON 
GO
ALTER DATABASE [Student] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [Student] SET ARITHABORT ON 
GO
ALTER DATABASE [Student] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Student] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Student] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Student] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Student] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [Student] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [Student] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Student] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [Student] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Student] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Student] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Student] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Student] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Student] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Student] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Student] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Student] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Student] SET RECOVERY FULL 
GO
ALTER DATABASE [Student] SET  MULTI_USER 
GO
ALTER DATABASE [Student] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Student] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Student] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Student] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Student] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Student] SET QUERY_STORE = OFF
GO
USE [Student]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Student]
GO
/****** Object:  Table [dbo].[LeaveDetails]    Script Date: 24-12-2019 16:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveDetails](
	[StudentId] [int] NULL,
	[StudentName] [nvarchar](50) NULL,
	[LeaveDate] [date] NULL,
	[LeaveReason] [nvarchar](100) NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUDENTS]    Script Date: 24-12-2019 16:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENTS](
	[SID] [varchar](20) NOT NULL,
	[NAME] [varchar](20) NOT NULL,
	[STD] [varchar](20) NOT NULL,
	[AGE] [int] NOT NULL,
	[ADDRESS] [char](30) NULL,
	[FNAME] [varchar](20) NOT NULL,
	[MNAME] [varchar](20) NOT NULL,
	[TNAME] [varchar](20) NOT NULL,
	[EMAIL] [varchar](20) NULL,
	[PHONE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEACHERS]    Script Date: 24-12-2019 16:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEACHERS](
	[TID] [varchar](20) NOT NULL,
	[NAME] [varchar](20) NOT NULL,
	[STD] [varchar](20) NOT NULL,
	[AGE] [int] NOT NULL,
	[ADDRESS] [char](30) NULL,
	[EMAIL] [varchar](20) NULL,
	[PHONE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeTable_1]    Script Date: 24-12-2019 16:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable_1](
	[Standard] [varchar](20) NOT NULL,
	[Days] [varchar](20) NOT NULL,
	[Period_1] [varchar](20) NOT NULL,
	[Period_2] [varchar](20) NOT NULL,
	[Period_3] [varchar](20) NOT NULL,
	[Period_4] [varchar](20) NOT NULL,
	[Period_5] [varchar](20) NOT NULL,
	[Period_6] [varchar](20) NOT NULL,
	[Period_7] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Days] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeTable_2]    Script Date: 24-12-2019 16:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable_2](
	[Standard] [varchar](20) NOT NULL,
	[Days] [varchar](20) NOT NULL,
	[Period_1] [varchar](20) NOT NULL,
	[Period_2] [varchar](20) NOT NULL,
	[Period_3] [varchar](20) NOT NULL,
	[Period_4] [varchar](20) NOT NULL,
	[Period_5] [varchar](20) NOT NULL,
	[Period_6] [varchar](20) NOT NULL,
	[Period_7] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Days] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeTable_3]    Script Date: 24-12-2019 16:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable_3](
	[Standard] [varchar](20) NOT NULL,
	[Days] [varchar](20) NOT NULL,
	[Period_1] [varchar](20) NOT NULL,
	[Period_2] [varchar](20) NOT NULL,
	[Period_3] [varchar](20) NOT NULL,
	[Period_4] [varchar](20) NOT NULL,
	[Period_5] [varchar](20) NOT NULL,
	[Period_6] [varchar](20) NOT NULL,
	[Period_7] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Days] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeTable_4]    Script Date: 24-12-2019 16:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable_4](
	[Standard] [varchar](20) NOT NULL,
	[Days] [varchar](20) NOT NULL,
	[Period_1] [varchar](20) NOT NULL,
	[Period_2] [varchar](20) NOT NULL,
	[Period_3] [varchar](20) NOT NULL,
	[Period_4] [varchar](20) NOT NULL,
	[Period_5] [varchar](20) NOT NULL,
	[Period_6] [varchar](20) NOT NULL,
	[Period_7] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Days] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeTable_5]    Script Date: 24-12-2019 16:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable_5](
	[Standard] [varchar](20) NOT NULL,
	[Days] [varchar](20) NOT NULL,
	[Period_1] [varchar](20) NOT NULL,
	[Period_2] [varchar](20) NOT NULL,
	[Period_3] [varchar](20) NOT NULL,
	[Period_4] [varchar](20) NOT NULL,
	[Period_5] [varchar](20) NOT NULL,
	[Period_6] [varchar](20) NOT NULL,
	[Period_7] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Days] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 24-12-2019 16:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] NOT NULL,
	[UserName] [nchar](50) NOT NULL,
	[Password] [nchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Role] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_timetable1]    Script Date: 24-12-2019 16:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_timetable1]
As
Begin
select
Standard,
Days,
Period_1,
Period_2,
Period_3,
Period_4,
Period_5,
Period_6,
Period_7
from
dbo.TimeTable_1
end;
GO
/****** Object:  StoredProcedure [dbo].[sp_timetable2]    Script Date: 24-12-2019 16:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_timetable2]
As
Begin
select
Standard,
Days,
Period_1,
Period_2,
Period_3,
Period_4,
Period_5,
Period_6,
Period_7
from
dbo.TimeTable_2
end;
GO
/****** Object:  StoredProcedure [dbo].[sp_timetable3]    Script Date: 24-12-2019 16:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_timetable3]
As
Begin
select
Standard,
Days,
Period_1,
Period_2,
Period_3,
Period_4,
Period_5,
Period_6,
Period_7
from
dbo.TimeTable_3
end;
GO
/****** Object:  StoredProcedure [dbo].[sp_timetable4]    Script Date: 24-12-2019 16:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_timetable4]
As
Begin
select
Standard,
Days,
Period_1,
Period_2,
Period_3,
Period_4,
Period_5,
Period_6,
Period_7
from
dbo.TimeTable_4
end;
GO
/****** Object:  StoredProcedure [dbo].[sp_timetable5]    Script Date: 24-12-2019 16:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_timetable5]
As
Begin
select
Standard,
Days,
Period_1,
Period_2,
Period_3,
Period_4,
Period_5,
Period_6,
Period_7
from
dbo.TimeTable_5
end;
GO
USE [master]
GO
ALTER DATABASE [Student] SET  READ_WRITE 
GO
