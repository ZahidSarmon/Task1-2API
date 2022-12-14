USE [CompanyDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/5/2022 5:03:35 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationUser]    Script Date: 8/5/2022 5:03:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationUser](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](150) NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
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
 CONSTRAINT [PK_ApplicationUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Client]    Script Date: 8/5/2022 5:03:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompanyInfo]    Script Date: 8/5/2022 5:03:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyInfo](
	[ID] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_CompanyInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Configure]    Script Date: 8/5/2022 5:03:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configure](
	[ID] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_Configure] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220804135250_init-Migrate', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220805030256_add-company-model', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220805050136_add-client-model', N'5.0.5')
INSERT [dbo].[ApplicationUser] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'eb420279-dba7-4adb-a102-85f68d60c184', N'zahid sarmon', N'zahidsarmon', N'ZAHIDSARMON', N'zahidsarmon@gmail.com', N'ZAHIDSARMON@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEN+xD3Z6p4hhTxMe+EP4O54sTfG4cPNB63cJDWnm5MMLaq8V6xwx0h5NpeMr4hf/sA==', N'7OIHMD6BAKOFUGPSMXLGTENC3XXM2JDW', N'48e30104-e21b-48d6-b7ca-54ddfdd8cab0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[Client] ([ID], [Name], [UserName]) VALUES (N'17D32A44-7A7C-4600-8EEA-B2313AE34D6C', N'Phone', N'zahidsarmon@gmail.com')
INSERT [dbo].[Client] ([ID], [Name], [UserName]) VALUES (N'1A45D03A-8DB8-48CF-A3D3-3026B5A36067', N'Email', N'zahidsarmon@gmail.com')
INSERT [dbo].[CompanyInfo] ([ID], [Name], [Address]) VALUES (N'31F16223-F128-4200-BAB2-17C783C325C9', N'Apple', N'United States (US)')
/****** Object:  StoredProcedure [dbo].[prcConfigure]    Script Date: 8/5/2022 5:03:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Zahid Sarmon>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prcConfigure]
	@pColumn nvarchar(max),@pColumnDataType nvarchar(max),@pIsDrop int
AS
BEGIN
	Declare @alterSQL nvarchar(max),@dropSQL nvarchar(max)
	SET NOCOUNT ON;

	IF EXISTS 
	(
	  SELECT * 
	  FROM INFORMATION_SCHEMA.COLUMNS 
	  WHERE table_name = 'Configure'
	  AND column_name = @pColumn
	)
	begin
		if @pIsDrop=1
		begin
			set @dropSQL = 'Alter table Configure Drop COLUMN '+ @pColumn
			exec sp_executesql @dropSQL
		end
		else 
		begin
			set @dropSQL = 'Alter table Configure Drop COLUMN '+ @pColumn
			exec sp_executesql @dropSQL
			set @alterSQL = 'Alter table Configure Add '+ @pColumn+' '+ @pColumnDataType
			exec sp_executesql @alterSQL
		end
	end
	ELSE
	begin
		if @pIsDrop=0
		begin
			set @alterSQL = 'Alter table Configure Add '+ @pColumn+' '+ @pColumnDataType
			exec sp_executesql @alterSQL
		end
	end
END

GO
