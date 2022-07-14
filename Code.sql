
-- Create DataBase
Create DataBase AssignmentDBI
Drop Database AssignmentDBI	

-- Create Table

Create Table Student ( 
	[sid] [Varchar](8) Not Null,
	[FirstName] [varchar](150) Not Null,
	[LastName] [varchar](150) Not Null,
	[Email] [varchar](150) Not null,
	[Date of Birth] Date Not Null Check(YEAR(GETDATE()) - YEAR([Date of Birth]) >= 18),
	[Gender] [Varchar](10) Not Null check(Gender in ('Female','Male'))
	Constraint PK_Student Primary Key Clustered 
	(
		[sid] ASC
	) With (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table Student


Create Table Lecture ( 
	[id] [Int]  Not null ,
	[name] [varchar](150) Not null,
	Constraint PK_Lecture Primary Key Clustered
	(
		[name] ASC
	) With(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table Lecture


Create Table Group_Student (
	[id] [Int] Not null,
	[Gname] [Varchar](6) Not null,
	[MajorCode] [varchar](150) Not null,
	[Sid] [Varchar](8) Not null,
	[Lname] [varchar](150) Not null
	Constraint PK_GroupStudent Primary Key Clustered 
	(
		[id] ASC,
		[Sid] ASC,
		[Lname] ASC
	)With (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
Go

Drop Table Group_Student 

 
 Create Table Semester (
	[ID] [Int] Not null,
	[SubjectCode] [varchar](150) Not null,
	[SubjectName] [varchar](150) Not null,
	[Semester] [varchar](150) Not null
	Constraint PK_Semester Primary Key Clustered 
	(
		[SubjectCode] ASC
	) With(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table Semester


Create Table Semester_Result ( 
	SRid [int] not null,
	[SubjectCode] [varchar](150) Not null,
	[StartDate] [Date] Not null,
	[EndDate] [Date] Not null,
	[AverageMark] [Float] Not null,
	[StatusResult] [varchar](20) Not null,
	Constraint PK_SemesterResult Primary Key Clustered
	(
		[SubjectCode] ASC
	) With(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table Semester_Result


Create Table [Subject](
	[ID] int not null,
	[SubjectCode] [varchar](150) Not null,
	[SubjectName] [varchar](150) Not null
	Constraint PK_Subject Primary Key Clustered
	(
		[SubjectName] ASC
	) With(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table [Subject]


Create Table Subject_Result (
	[Sid] [varchar](8) Not null,
	[SubjectCode] [varchar](150) Not null,
	[SubjectName] [varchar](150) Not null,
	[GradeCategory] [varchar](150) Not null,
	[GradeItem] [varchar](150) Not null,
	[Weight] [varchar](150) Not null,
	[Value] Float,
	[Comment] [varchar](150)
	Constraint PK_SubjectResult Primary Key Clustered
	(
		[Sid] ASC,
		[SubjectCode] ASC,
		[SubjectName] ASC
	) With(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table Subject_Result


Create Table Assessment (
	[Category] [varchar](150) Not null,
	[Part] [Int] Not null,
	[Weight] [varchar](150) Not null,
	[Completion Criteria] [varchar](150) Not null,
	[Knowledge and Skill] [varchar](150) Not null,
	[Grading Guide] [varchar](150) Not null,
	[Note] [varchar](150)
	Constraint PK_Assessment Primary Key Clustered 
	(
		[Category] ASC
	) With(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table Assessment


Create Table Assessment_Student (
	[Sid] [varchar](8) Not null,
	[SubjectCode] [varchar](150) Not null,
	[Category] [varchar](150) Not null,
	[Type] [varchar](150) Not null,
	[Duration] [varchar](150) Not null,
	[Question Type] [varchar](150) Not null,
	[No Question] [int] Not null
	Constraint PK_Assessment_Student Primary Key Clustered 
	(
		[Sid] ASC,
		[SubjectCode] ASC,
		[Category] ASC
	)With(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table Assessment_Student


Insert Student([sid],[FirstName],[LastName],[Email],[Date of Birth],[Gender]) Values (N'HE16001', N'Nguyen', N'Hoang Anh',N'anhnhhe16001@fpt.edu.vn',Cast(N'2002-12-06' as Date),N'Female')
Go
Insert Student([sid],[FirstName],[LastName],[Email],[Date of Birth],[Gender]) Values (N'HE16002', N'Nguyen', N'Anh Tai',N'tainahe16002@fpt.edu.vn',Cast(N'2002-11-12' as Date),N'Female')
Go
Insert Student([sid],[FirstName],[LastName],[Email],[Date of Birth],[Gender]) Values (N'HE16003', N'Nguyen', N'Minh Anh',N'anhnmhe16003@fpt.edu.vn',Cast(N'2002-09-25' as Date),N'Male')
Go
Insert Student([sid],[FirstName],[LastName],[Email],[Date of Birth],[Gender]) Values (N'HE16004', N'Pham', N'Minh Duc',N'ducpmhe16004@fpt.edu.vn',Cast(N'2002-04-06' as Date),N'Female')
Go
Insert Student([sid],[FirstName],[LastName],[Email],[Date of Birth],[Gender]) Values (N'HE16005', N'Nguyen', N'Van Anh',N'anhnvhe16005@fpt.edu.vn',Cast(N'2002-05-28' as Date),N'Male')
Go
Insert Student([sid],[FirstName],[LastName],[Email],[Date of Birth],[Gender]) Values (N'HE16006', N'Duong', N'Hoang Long',N'longdhhe16006@fpt.edu.vn',Cast(N'2002-11-11' as Date),N'Female')
Go
Insert Student([sid],[FirstName],[LastName],[Email],[Date of Birth],[Gender]) Values (N'HE16007', N'Tran', N'Van Su	',N'sutvhe16007@fpt.edu.vn',Cast(N'2002-03-15' as Date),N'Female')
Go
Insert Student([sid],[FirstName],[LastName],[Email],[Date of Birth],[Gender]) Values (N'HE16008', N'Vo', N'Viet Manh',N'manhvvhe16008@fpt.edu.vn',Cast(N'2002-10-06' as Date),N'Female')
Go
Insert Student([sid],[FirstName],[LastName],[Email],[Date of Birth],[Gender]) Values (N'HE16009', N'Nguyen', N'Ngoc Anh',N'anhnnhe16009@fpt.edu.vn',Cast(N'2002-06-04' as Date),N'Male')
Go
Insert Student([sid],[FirstName],[LastName],[Email],[Date of Birth],[Gender]) Values (N'HE16010', N'Nguyen', N'Quynh Thu',N'thunqhe16010@fpt.edu.vn',Cast(N'2002-10-29' as Date),N'Male')
Go
Insert Student([sid],[FirstName],[LastName],[Email],[Date of Birth],[Gender]) Values (N'HE16011', N'Vu', N'Duc Anh',N'anhvdhe16011@fpt.edu.vn',Cast(N'2002-11-23' as Date),N'Female')
Go
Insert Student([sid],[FirstName],[LastName],[Email],[Date of Birth],[Gender]) Values (N'HE16012', N'Pham', N'Tuan Son',N'sonpthe16012@fpt.edu.vn',Cast(N'2002-10-10' as Date),N'Female')
Go
Insert Student([sid],[FirstName],[LastName],[Email],[Date of Birth],[Gender]) Values (N'HE16013', N'Do', N'Huong Linh',N'linhdhhe16013@fpt.edu.vn',Cast(N'2002-09-04' as Date),N'Male')
Go
Insert Student([sid],[FirstName],[LastName],[Email],[Date of Birth],[Gender]) Values (N'HE16014', N'Duong', N'Tung Lam',N'lamdthe16014@fpt.edu.vn',Cast(N'2002-06-23' as Date),N'Female')
Go
Insert Student([sid],[FirstName],[LastName],[Email],[Date of Birth],[Gender]) Values (N'HE16015', N'Ngo', N'Tung Son',N'sonnthe16015@fpt.edu.vn',Cast(N'2002-02-25' as Date),N'Female')
Go

Insert Lecture([id],[name]) Values (1, 'Nguyen Van Hoang')
Go
Insert Lecture([id],[name]) Values (2, 'Tran Van An')
Go
Insert Lecture([id],[name]) Values (3, 'Nguyen Phuong Chi')
Go
Insert Lecture([id],[name]) Values (4, 'Hoang Manh Duc')
Go

Insert Group_Student([id],[Gname],[MajorCode],[Sid],[Lname]) Values (1,N'SE1601',N'SE',N'HE16001',N'Tran Van An')
Go
Insert Group_Student([id],[Gname],[MajorCode],[Sid],[Lname]) Values (2,N'SE1601',N'SE',N'HE16003',N'Tran Van An')
Go
Insert Group_Student([id],[Gname],[MajorCode],[Sid],[Lname]) Values (3,N'AI1603',N'AI',N'HE16004',N'Nguyen Van Hoang')
Go
Insert Group_Student([id],[Gname],[MajorCode],[Sid],[Lname]) Values (4,N'SE1602',N'SE',N'HE16012',N'Nguyen Phuong Chi')
Go
Insert Group_Student([id],[Gname],[MajorCode],[Sid],[Lname]) Values (5,N'SE1602',N'SE',N'HE16005',N'Nguyen Phuong Chi')
Go
Insert Group_Student([id],[Gname],[MajorCode],[Sid],[Lname]) Values (6,N'AI1603',N'AI',N'HE16009',N'Nguyen Van Hoang')
Go
Insert Group_Student([id],[Gname],[MajorCode],[Sid],[Lname]) Values (7,N'IA1604',N'IA',N'HE16010',N'Hoang Manh Duc')
Go
Insert Group_Student([id],[Gname],[MajorCode],[Sid],[Lname]) Values (8,N'IA1604',N'IA',N'HE16015',N'Hoang Manh Duc')
Go
Insert Group_Student([id],[Gname],[MajorCode],[Sid],[Lname]) Values (9,N'SE1602',N'SE',N'HE16011',N'Nguyen Phuong Chi')
Go
Insert Group_Student([id],[Gname],[MajorCode],[Sid],[Lname]) Values (10,N'AI1603',N'AI',N'HE16008',N'Nguyen Van Hoang')
Go
Insert Group_Student([id],[Gname],[MajorCode],[Sid],[Lname]) Values (11,N'SE1602',N'SE',N'HE16002',N'Nguyen Phuong Chi')
Go
Insert Group_Student([id],[Gname],[MajorCode],[Sid],[Lname]) Values (12,N'SE1601',N'SE',N'HE16006',N'Tran Van An')
Go
Insert Group_Student([id],[Gname],[MajorCode],[Sid],[Lname]) Values (13,N'IA1604',N'IA',N'HE16013',N'Hoang Manh Duc')
Go
Insert Group_Student([id],[Gname],[MajorCode],[Sid],[Lname]) Values (14,N'AI1603',N'AI',N'HE16014',N'Nguyen Van Hoang')
Go
Insert Group_Student([id],[Gname],[MajorCode],[Sid],[Lname]) Values (15,N'SE1601',N'SE',N'HE16007',N'Tran Van An')
Go




Alter Table Group_Student With Check ADD Constraint FK_Group_Student_Student Foreign Key ([Sid]) References Student([sid])
GO
Alter Table Group_Student Check Constraint FK_Group_Student_Student
Go
Alter Table Group_Student With Check ADD Constraint FK_Group_Student_Lecture Foreign Key([Lname]) References Lecture([name])
GO
Alter Table Group_Student Check Constraint FK_Group_Student_Lecture
Alter Table SemesterResult With Check Add Constraint FK_SemesterResult_GroupStudent Foreign Key([GSname]) References GroupStudent([Gname])
GO