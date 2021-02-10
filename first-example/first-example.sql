CREATE TABLE IF NOT EXISTS Courses (
	CourseId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	CourseCode varchar(6) NOT NULL,
	ShortName varchar(75) NOT NULL,
	LongName varchar(150) DEFAULT NULL,
	CourseDescription TEXT
);

-- Create index on Courses Table
CREATE UNIQUE INDEX CourseCode
ON Courses (CourseCode);

CREATE TABLE IF NOT EXISTS Students (
	StudentId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	LastName varchar(50) NOT NULL,
	FirstName varchar(50) DEFAULT NULL,
	MiddleNames varchar(50) DEFAULT NULL,
	Gender char(6) NOT NULL DEFAULT 'MALE'
);

-- Create index on Students table
CREATE UNIQUE INDEX FullName
ON Students (LastName, FirstName);

CREATE TABLE IF NOT EXISTS Users (
	UserId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	Login varchar(25) NOT NULL,
	UserName varchar(50) DEFAULT NULL,
	Password varchar(50) NOT NULL, 
	Active smallint(4) NOT NULL DEFAULT '1'
);

-- Create index on Users Table
CREATE UNIQUE INDEX Login
ON Users(Login);

CREATE TABLE IF NOT EXISTS StudentCourses (
	Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	Year year(4) NOT NULL, 
	Semester smallint(3) NOT NULL DEFAULT '1',
	Grade char(2) DEFAULT 'F',
	StudentId int(11) NOT NULL,
	CourseId int(11) NOT NULL,
	FOREIGN KEY (StudentId) REFERENCES Students (StudentId) ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY (CourseId) REFERENCES Courses (CourseId) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS LogEntries (
	EntryNum INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	LoggedOn datetime NOT NULL,
	LoggedOff datetime NOT NULL,
	UserId int(11) NOT NULL,
	FOREIGN KEY (UserId) REFERENCES Users (UserId) ON UPDATE CASCADE ON DELETE RESTRICT
);
