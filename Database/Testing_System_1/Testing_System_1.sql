create database QuanLyBaiThi;
use QuanLyBaiThi;
create table Department(
    DepartmentID int not null primary key auto_increment,
    DepartmentName varchar(50)
    );
create table Positions(
	PositionID int not null primary key auto_increment,
    PositionName enum('Dev', 'Test', 'Scrum Master', 'PM')
    );
create table Accounts( 
	AccountID int not null primary key auto_increment,
    Email varchar(50),
    Username varchar(50),
    Fullname varchar(50),
    DepartmentID int,
    PositionID int,
    CreateDate date
    );
create table Groupp(
    GroupID int not null primary key auto_increment,
    GroupName varchar(50),
    CreatorID int,
    CreateDate date
    );
create table GroupAccount(
    GroupID int,
    AccountID int,
    JoinDate date
    );
create table TypeQuestion(
    TypeID int not null primary key auto_increment,
    TypeName varchar(50)
    );
create table CategoryQuestion(
	CategoryID int not null primary key auto_increment,
    CategoryName varchar(50)
    );
create table Question(
    QuestionID int not null primary key auto_increment,
    Content varchar(50),
    CategoryID int,
    TypeID int,
    CreatorID int,
    CreateDate date
    );
create table Answer(
    AnswerID int not null primary key auto_increment,
    Content varchar(50),
    QuestionID int,
    isCorrect varchar(50)
    );
create table Exam(
    ExamID int not null primary key auto_increment,
    Code int,
    Title varchar(50),
    CategoryID int,
    Duration time,
    CreatorID int,
    CreateDate date
    );
create table ExamQuestion(
    ExamID int,
    QuestionID int
    );



    
