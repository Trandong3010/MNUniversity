USE [MNUniversity]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/17/2020 8:33:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Credits] [int] NULL,
	[DepartmentID] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseAssignment]    Script Date: 7/17/2020 8:33:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseAssignment](
	[InstructorID] [int] NOT NULL,
	[CourseID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 7/17/2020 8:33:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Budget] [decimal](18, 0) NULL,
	[StartDate] [datetime] NULL,
	[InstructorID] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollment]    Script Date: 7/17/2020 8:33:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollment](
	[EnrollmentID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NULL,
	[StudentID] [int] NULL,
	[Grade] [nvarchar](50) NULL,
 CONSTRAINT [PK_Enrollment] PRIMARY KEY CLUSTERED 
(
	[EnrollmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 7/17/2020 8:33:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[HireDate] [datetime] NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfficeAssignment]    Script Date: 7/17/2020 8:33:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfficeAssignment](
	[InstructorID] [int] NOT NULL,
	[Location] [nvarchar](50) NULL,
 CONSTRAINT [PK_OfficeAssignment] PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/17/2020 8:33:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[EnrollmentDate] [datetime] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (1045, N'Calculus', 4, 7)
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (1050, N'Chemistry', 3, 6)
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (2021, N'Composition', 3, 8)
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (2042, N'Literature', 4, 8)
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (3141, N'Trigonometry', 4, 7)
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (4022, N'Microeconomics', 3, 5)
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (4041, N'Macroeconomics', 3, 5)
GO
INSERT [dbo].[CourseAssignment] ([InstructorID], [CourseID]) VALUES (6, 4022)
INSERT [dbo].[CourseAssignment] ([InstructorID], [CourseID]) VALUES (6, 4041)
INSERT [dbo].[CourseAssignment] ([InstructorID], [CourseID]) VALUES (7, 1050)
INSERT [dbo].[CourseAssignment] ([InstructorID], [CourseID]) VALUES (8, 1050)
INSERT [dbo].[CourseAssignment] ([InstructorID], [CourseID]) VALUES (8, 3141)
INSERT [dbo].[CourseAssignment] ([InstructorID], [CourseID]) VALUES (9, 1045)
INSERT [dbo].[CourseAssignment] ([InstructorID], [CourseID]) VALUES (10, 2021)
INSERT [dbo].[CourseAssignment] ([InstructorID], [CourseID]) VALUES (10, 2042)
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [InstructorID]) VALUES (1, N'Economics', CAST(100000 AS Decimal(18, 0)), CAST(N'2007-09-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [InstructorID]) VALUES (2, N'Engineering', CAST(350000 AS Decimal(18, 0)), CAST(N'2007-09-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [InstructorID]) VALUES (3, N'Mathematics', CAST(100000 AS Decimal(18, 0)), CAST(N'2007-09-01T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [InstructorID]) VALUES (4, N'English', CAST(350000 AS Decimal(18, 0)), CAST(N'2007-09-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [InstructorID]) VALUES (5, N'Economics', CAST(100000 AS Decimal(18, 0)), CAST(N'2007-09-01T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [InstructorID]) VALUES (6, N'Engineering', CAST(350000 AS Decimal(18, 0)), CAST(N'2007-09-01T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [InstructorID]) VALUES (7, N'Mathematics', CAST(100000 AS Decimal(18, 0)), CAST(N'2007-09-01T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [InstructorID]) VALUES (8, N'English', CAST(350000 AS Decimal(18, 0)), CAST(N'2007-09-01T00:00:00.000' AS DateTime), 10)
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Enrollment] ON 

INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (1, 4022, 3, N'1')
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (2, 1050, 3, NULL)
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (3, 2021, 2, N'1')
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (4, 3141, 2, N'1')
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (5, 1045, 2, N'1')
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (6, 4041, 1, N'1')
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (7, 4022, 1, N'2')
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (8, 1050, 1, N'0')
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (9, 1050, 4, N'1')
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (10, 2021, 5, N'1')
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (11, 2042, 6, N'1')
SET IDENTITY_INSERT [dbo].[Enrollment] OFF
GO
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([ID], [LastName], [FirstName], [HireDate]) VALUES (1, N'Zheng', N'Roger', CAST(N'2004-02-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Instructor] ([ID], [LastName], [FirstName], [HireDate]) VALUES (2, N'Kapoor', N'Candace', CAST(N'2001-01-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Instructor] ([ID], [LastName], [FirstName], [HireDate]) VALUES (3, N'Harui', N'Roger', CAST(N'1998-07-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Instructor] ([ID], [LastName], [FirstName], [HireDate]) VALUES (4, N'Fakhouri', N'Fadi', CAST(N'2002-07-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Instructor] ([ID], [LastName], [FirstName], [HireDate]) VALUES (5, N'Abercrombie', N'Kim', CAST(N'1995-03-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Instructor] ([ID], [LastName], [FirstName], [HireDate]) VALUES (6, N'Zheng', N'Roger', CAST(N'2004-02-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Instructor] ([ID], [LastName], [FirstName], [HireDate]) VALUES (7, N'Kapoor', N'Candace', CAST(N'2001-01-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Instructor] ([ID], [LastName], [FirstName], [HireDate]) VALUES (8, N'Harui', N'Roger', CAST(N'1998-07-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Instructor] ([ID], [LastName], [FirstName], [HireDate]) VALUES (9, N'Fakhouri', N'Fadi', CAST(N'2002-07-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Instructor] ([ID], [LastName], [FirstName], [HireDate]) VALUES (10, N'Abercrombie', N'Kim', CAST(N'1995-03-11T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Instructor] OFF
GO
INSERT [dbo].[OfficeAssignment] ([InstructorID], [Location]) VALUES (7, N'Thompson 304')
INSERT [dbo].[OfficeAssignment] ([InstructorID], [Location]) VALUES (8, N'Gowan 27')
INSERT [dbo].[OfficeAssignment] ([InstructorID], [Location]) VALUES (9, N'Smith 17')
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([ID], [LastName], [FirstName], [EnrollmentDate]) VALUES (1, N'Alexander', N'Carson', CAST(N'2010-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([ID], [LastName], [FirstName], [EnrollmentDate]) VALUES (2, N'Alonso', N'Meredith', CAST(N'2012-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([ID], [LastName], [FirstName], [EnrollmentDate]) VALUES (3, N'Anand', N'Arturo', CAST(N'2013-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([ID], [LastName], [FirstName], [EnrollmentDate]) VALUES (4, N'Barzdukas', N'Gytis', CAST(N'2012-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([ID], [LastName], [FirstName], [EnrollmentDate]) VALUES (5, N'Li', N'Yan', CAST(N'2012-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([ID], [LastName], [FirstName], [EnrollmentDate]) VALUES (6, N'Justice', N'Peggy', CAST(N'2011-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([ID], [LastName], [FirstName], [EnrollmentDate]) VALUES (7, N'Norman', N'Laura', CAST(N'2013-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([ID], [LastName], [FirstName], [EnrollmentDate]) VALUES (8, N'Olivetto', N'Nino', CAST(N'2005-09-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
