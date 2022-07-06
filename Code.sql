
-- Create DataBase
Create DataBase AssignmentDBI
Drop Database AssignmentDBI

-- Create Table

Create Table Student ( 
	[sid] Varchar(8) Primary Key Not Null Check(Sid like 'HE[0-9] [0-9] [0-9] [0-9] [0-9] [0-9]'),
	[FirstName] Nvarchar(50) Not Null,
	[LastName] Nvarchar(50) Not Null,
	[Email] Nvarchar(50) ,
	[Date of Birth] Date Not Null Check(YEAR(GETDATE()) - YEAR([Date of Birth]) >= 18),
	[Gender] Varchar(10) Not Null check(Gender in ('Female','Male'))
	);
Drop Table Student

Create Table Lecture ( 
	[Lid] Int Primary Key Not null,
	[Lname] Nvarchar(50) Not null,
	);
Drop Table Lecture

Create Table GroupStudent (
	GSid Int Primary Key Not null,
	GSname Varchar(6) Not null Check(GSname like 'SE[0-9] [0-9] [0-9] [0-9]' OR GSname like 'IA[0-9] [0-9] [0-9] [0-9]' OR GSname like 'AI[0-9] [0-9] [0-9] [0-9]'),
	MajorCode Nvarchar(50) Not null,
	[FirstName] Nvarchar(50), --Foreign Key  References Student([FirstName]),
	[LastName] Nvarchar(50), --Foreign Key  References Student([LastName]),
	Lid int,  --Foreign Key References Lecture(Lid)
);
Drop Table GroupStudent
