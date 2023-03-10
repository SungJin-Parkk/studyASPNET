USE [studyASPNET]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2023-01-13 오후 2:24:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DisplayOrder] [nvarchar](20) NULL,
	[PostDate] [datetime] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notes]    Script Date: 2023-01-13 오후 2:24:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[ReadCount] [int] NOT NULL,
	[PostDate] [datetime2](7) NOT NULL,
	[Contents] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Notes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 2023-01-13 오후 2:24:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Division] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Url] [nvarchar](500) NULL,
	[FileName] [nvarchar](500) NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder], [PostDate]) VALUES (1, N'Apple', N'1', CAST(N'2023-01-06T15:18:20.000' AS DateTime))
INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder], [PostDate]) VALUES (2, N'삼성전자', N'2', CAST(N'2023-01-06T15:19:30.000' AS DateTime))
INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder], [PostDate]) VALUES (3, N'LG전자', N'3', CAST(N'2023-01-06T15:19:50.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Notes] ON 

INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (8, N'aksemfek', N'8', N'8번째글 ', 7, CAST(N'2023-01-10T14:53:10.4570452' AS DateTime2), N'<p>테스트용</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (10, N'dsa', N'dsa', N'dsa', 0, CAST(N'2023-01-10T09:32:59.7463053' AS DateTime2), N'<p>dsa</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (12, N'dd', N'dsc', N'cxz', 0, CAST(N'2023-01-10T09:36:07.5284424' AS DateTime2), N'<p>dd</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (13, N'999', N'999', N'999', 9, CAST(N'2023-01-10T09:43:13.0101110' AS DateTime2), N'<p>안지움</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (14, N'dsad', N'dsa', N'cx', 5, CAST(N'2023-01-10T14:53:01.4471866' AS DateTime2), N'<p>d23</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (16, N'10', N'10', N'10', 0, CAST(N'2023-01-10T14:46:36.2867153' AS DateTime2), N'<p>10</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (17, N'11', N'11', N'11', 9, CAST(N'2023-01-10T10:37:23.6526996' AS DateTime2), N'<p>11</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (18, N'11', N'11', N'111', 2, CAST(N'2023-01-11T12:03:30.4581789' AS DateTime2), N'<p>11</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (20, N'dc', N'xc', N'xc', 1, CAST(N'2023-01-10T14:46:30.7383343' AS DateTime2), N'<p>dd</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (22, N'cx', N'c', N'xc', 1, CAST(N'2023-01-10T14:54:56.5651494' AS DateTime2), N'<p>dsa</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (23, N'ㅇ', N'ㅇ', N'ㅇ', 1, CAST(N'2023-01-10T16:47:28.9530171' AS DateTime2), N'<p>ㅇ</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (24, N'ㅇ', N'ㅇ', N'ㅇ', 0, CAST(N'2023-01-11T13:48:19.7717702' AS DateTime2), N'<p>ㅇ</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (25, N'd', N'dd', N'ddd', 17, CAST(N'2023-01-11T13:50:23.6734391' AS DateTime2), N'<p>ddd</p>')
SET IDENTITY_INSERT [dbo].[Notes] OFF
GO
SET IDENTITY_INSERT [dbo].[Profiles] ON 

INSERT [dbo].[Profiles] ([id], [Division], [Title], [Description], [Url], [FileName]) VALUES (2, N'Card1', N'First Skill', N'<p>저는 C#을 학습했고, 간단한 웹사이트, 원폼앱을 개발 할수 있습니다</p>', NULL, N'7b8fd6a2-bcec-44ad-af5d-2c867d0bff0e_KakaoTalk_20230112_171426733.jpg')
INSERT [dbo].[Profiles] ([id], [Division], [Title], [Description], [Url], [FileName]) VALUES (3, N'Card2', N'Second Skill', N'<p>C# Winforms Programming</p><p>Winforms 4.8과 WPF, Xamarin, MAUI UI를 학습했습니다.</p><p><br></p>', NULL, N'4f637b8a-fb39-409c-8029-9989ce6334d6_피카츄.png')
INSERT [dbo].[Profiles] ([id], [Division], [Title], [Description], [Url], [FileName]) VALUES (5, N'Top', N'dsadsa', N'<p>dsadsa</p>', N'https://blog.maplestory.nexon.com/wp-content/uploads/2021/12/apply_icon1.png', N'18668487-9709-4d70-9c61-c5b075f32b09_KakaoTalk_20230112_171426733.jpg')
INSERT [dbo].[Profiles] ([id], [Division], [Title], [Description], [Url], [FileName]) VALUES (6, N'Card3', N'Last Skill', N'<p>ASP.NET Core</p><p>.NET Core로 된 ASP.NET core MVC 웹사이트를 개발할 수 있습니다.</p>', NULL, N'')
SET IDENTITY_INSERT [dbo].[Profiles] OFF
GO
/****** Object:  StoredProcedure [dbo].[USP_PagingNotes]    Script Date: 2023-01-13 오후 2:24:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		박성진
-- Create date: 2023.01.10
-- Description:	게시판 페이징용 SP
-- =============================================
CREATE   PROCEDURE [dbo].[USP_PagingNotes]
@StartCount Int, -- 페이징 시작 카운트
@EndCount Int    -- 페이징 종료 카운트
AS
BEGIN
	SET NOCOUNT ON;

    -- 페이징용 쿼리 시작
	   SELECT *
	   FROM(
	   SELECT ROW_NUMBER() OVER (ORDER BY Id DESC) AS rowNum
	   		 ,Id
	   		 ,UserId
	   		 ,[Name]
	   		 ,Title
	   		 ,ReadCount
	   		 ,PostDate
	   		 ,Contents
	     FROM dbo.Notes
	   ) AS Base
	   WHERE Base.rowNum BETWEEN @StartCount AND @EndCount




END
GO
