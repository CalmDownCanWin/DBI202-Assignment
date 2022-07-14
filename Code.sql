
-- Create DataBase
Create DataBase AssignmentDBI
Drop Database AssignmentDBI	

-- Create Table

Create Table Student ( 
	[sid] Varchar(8) Not Null Check(Sid like 'HE[0-9] [0-9] [0-9] [0-9] [0-9] [0-9]'),
	[FirstName] Nvarchar(50) Not Null,
	[LastName] Nvarchar(50) Not Null,
	[Email] Nvarchar(50) ,
	[Date of Birth] Date Not Null Check(YEAR(GETDATE()) - YEAR([Date of Birth]) >= 18),
	[Gender] Varchar(10) Not Null check(Gender in ('Female','Male'))
	Constraint PK_Student Primary Key Clustered 
	(
		[sid] ASC
	) With (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table Student


Create Table Lecture ( 
	[id] Int  Not null ,
	[name] Nvarchar(50) Not null,
	Constraint PK_Lecture Primary Key Clustered
	(
		[name] ASC
	) With(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table Lecture


Create Table GroupStudent (
	[id] Int Not null,
	[Gname] Varchar(6) Not null Check(Gname like 'SE[0-9] [0-9] [0-9] [0-9]' OR Gname like 'IA[0-9] [0-9] [0-9] [0-9]' OR Gname like 'AI[0-9] [0-9] [0-9] [0-9]'),
	[MajorCode] Nvarchar(50) Not null,
	[Sid] Varchar(8) Not null,
	[Lname] Nvarchar(50) Not null
	Constraint PK_GroupStudent Primary Key Clustered 
	(
		[Sid] ASC,
		[Lname] ASC
	)With (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
Go

Drop Table GroupStudent 

 
 Create Table Semester (
	ID Int Not null,
	[SubjectCode] Nvarchar(150) Not null,
	[SubjectName] Nvarchar(150) Not null,
	[Semester] Nvarchar Not null
	Constraint PK_Semester Primary Key Clustered 
	(
		SubjectCode ASC
	) With(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table Semester


Create Table SemesterResult ( 
	SRid int not null,
	[SubjectCode] Nvarchar(150) Not null,
	[StartDate] Date Not null,
	[EndDate] Date Not null,
	[AverageMark] Float Not null,
	[StatusResult] varchar(20) Not null,
	Constraint PK_SemesterResult Primary Key Clustered
	(
		SubjectCode ASC
	) With(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table SemesterResult


Create Table [Subject](
	ID int not null,
	[SubjectCode] Nvarchar(150) Not null,
	[SubjectName] Nvarchar(150) Not null
	Constraint PK_Subject Primary Key Clustered
	(
		[SubjectName] ASC
	) With(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table [Subject]


Create Table SubjectResult (
	[Sid] varchar(8) Not null,
	[SubjectCode] Nvarchar(150) Not null,
	[SubjectName] Nvarchar(150) Not null,
	[GradeCategory] Nvarchar(50) Not null,
	[GradeItem] Nvarchar(50) Not null,
	[Weight] Nvarchar(50) Not null,
	[Value] Float,
	[Comment] Nvarchar(50)
	Constraint PK_SubjectResult Primary Key Clustered
	(
		[Sid] ASC,
		[SubjectCode] ASC,
		[SubjectName] ASC
	) With(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table SubjectResult


Create Table Assessment (
	[Category] Nvarchar(50) Not null,
	[Part] Int Not null,
	[Weight] Nvarchar(50) Not null,
	[Completion Criteria] Nvarchar(50) Not null,
	[Knowledge and Skill] Nvarchar(50) Not null,
	[Grading Guide] Nvarchar(50) Not null,
	[Note] Nvarchar(150)
	Constraint PK_Assessment Primary Key Clustered 
	(
		Category ASC
	) With(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table Assessment


Create Table Assessment_Student (
	[Sid] varchar(8) Not null,
	[SubjectCode] Nvarchar(150) Not null,
	[Category] Nvarchar(150) Not null,
	[Type] Nvarchar(150) Not null,
	[Duration] Nvarchar(150) Not null,
	[Question Type] Nvarchar(150) Not null,
	[No Question] int Not null
	Constraint PK_Assessment_Student Primary Key Clustered 
	(
		[Sid] ASC,
		[SubjectCode] ASC,
		[Category] ASC
	)With(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

Drop Table Assessment_Student


Alter Table GroupStudent With Check ADD Constraint FK_GroupStudent_Student Foreign Key ([Sid]) References Student([Sid])
GO
Alter Table GroupStudent Check Constraint FK_GroupStudent_Student
Go
Alter Table GroupStudent With Check ADD Constraint FK_GroupStudent_Lecture Foreign Key([Lname]) References Lecture([name])
GO
Alter Table GroupStudent Check Constraint FK_GroupStudent_Lecture
Alter Table SemesterResult With Check Add Constraint FK_SemesterResult_GroupStudent Foreign Key([GSname]) References GroupStudent([Gname])
GO