drop database if exists QuanLyBaiThi;
create database QuanLyBaiThi;
use QuanLyBaiThi;
create table Department(
    DepartmentID tinyint not null primary key auto_increment,
    DepartmentName nvarchar(50) not null unique key
    );
create table Positions(
	PositionID tinyint not null primary key auto_increment,
    PositionName enum('Dev', 'Test', 'Scrum Master', 'PM') not null unique key
    );
create table Accounts( 
	AccountID tinyint primary key auto_increment,
    Email varchar(50),
    Username varchar(50),
    Fullname nvarchar(50),
    DepartmentID tinyint not null,
    foreign key ( DepartmentID ) references Department ( DepartmentID ),
    PositionID tinyint,
    CreateDate date
    );
create table Groupp(
    GroupID tinyint primary key auto_increment,
    GroupName nvarchar(50),
    CreatorID tinyint,
    CreateDate date
    );
create table GroupAccount(
    GroupID tinyint,
    AccountID tinyint,
    JoinDate date
    );
create table TypeQuestion(
    TypeID tinyint primary key auto_increment,
    TypeName enum('Essay', 'Multiple-Choice')
    );
create table CategoryQuestion(
	CategoryID tinyint primary key auto_increment,
    CategoryName nvarchar(50)
    );
create table Question(
    QuestionID tinyint primary key auto_increment,
    Content nvarchar(50),
    CategoryID tinyint,
    TypeID tinyint,
    CreatorID tinyint,
    CreateDate date
    );
create table Answer(
    AnswerID tinyint primary key auto_increment,
    Content nvarchar(50),
    QuestionID tinyint,
    isCorrect varchar(10)
    );
create table Exam(
    ExamID tinyint primary key auto_increment,
    Codes char(10),
    Title nvarchar(50),
    CategoryID tinyint,
    Duration tinyint,
    CreatorID tinyint,
    CreateDate date
    );
create table ExamQuestion(
    ExamID tinyint,
    QuestionID tinyint
    );
    
    
insert into Department ( DepartmentName )
values           (N'Marketing' ),
				 (N'Sale' ),
				 (N'Bảo vệ' ),
                 (N'Nhân sự' ),
                 (N'Kỹ thuật' ),
                 (N'Tài chính' ),
                 (N'Phó giám đốc'),
                 (N'Giám đốc' ),
                 (N'Thư kí' ),
                 (N'No person' ),
                 (N'Bán hàng' );


insert into Positions ( PositionName )
values           ('Dev' ),
                 ('Test' ),
                 ('Scrum Master'),
                 ('PM' );
                 
insert into Accounts (Email, Username, Fullname, DepartmentID, PositionID, CreateDate) 
values           ('rsigfrid0@a8.net', 'rsigfrid0', 'Rip Sigfrid', 1, 1, '2021/03/05'),
                 ('carnaldi1@bloglovin.com', 'carnaldi1', 'Carly Arnaldi', 2, 2, '2022/10/08'),
                 ('snoir2@cisco.com', 'snoir2', 'Suzann Noir', 3, 3, '2022/03/08/'),
                 ('dritch3@discuz.net', 'dritch3', 'Dorena Ritch', 4, 4, '2021/01/07'),
                 ('ckrollmann4@irs.gov', 'ckrollmann4', 'Case Krollmann', 5, 5, '2022/09/02');
                 
insert into Groupp (GroupName, CreatorID, CreateDate) 
values           ('Plains Yucca', 2, '2022/06/13'),
				 ('Chuckwalla Combseed', 1, '2022/06/13'),
                 ('Hasse''s Thelenella Lichen', 3, '2022/05/27'),
                 ('Western Giant Hyssop', 5, '2022/03/01'),
                 ('Purple Prairie Clover', 4, '2022/06/28');
                 
insert into GroupAccount (GroupID, AccountID, JoinDate)
values           ( 2, 1, '2022/05/17'),
                 ( 1, 2, '2022/03/13'),
                 ( 3, 3, '2022/07/13'),
                 ( 2, 4, '2022/02/04'),
                 ( 1, 5, '2022/11/27');
       
insert into TypeQuestion ( TypeName )
values           ('Essay' ),
                 ('Multiple-Choice' );
       
insert into CategoryQuestion (CategoryName )
values           ('Java' ),
                 ('C' ),
                 ('C++' ),
				 ('Python' ),
                 ('Php' );

insert into Question (Content, CategoryID, TypeID, CreatorID, CreateDate)
values           ('câu hỏi về Java', 2, 4, 5, '2022/11/24'),
                 ('câu hỏi về C', 1, 3, 2, '2022/03/12'),
                 ('câu hỏi về C++', 3, 5, 1, '2021/12/09'),
                 ('câu hỏi về Python', 3, 1, 4, '2022/01/28'),
                 ('câu hỏi về Php', 5, 2, 1, '2022/04/14');
                 
insert into Answer (Content, QuestionID, isCorrect)
values           ('innovate proactive communities', 1, 'sai'),
				 ('revolutionize sticky e-services', 2, 'đúng'),
                 ('evolve enterprise e-commerce', 3, 'sai'),
                 ('unleash bleeding-edge schemas', 4, 'đúng'),
                 ('incentivize customized interfaces', 5, 'sai');
                 
insert into Exam (Codes, Title, CategoryID, Duration, CreatorID, CreateDate) 
values           ('NA', 'Petersburg', 1, 60, 1, '2022/3/18'),
                 ('AS', 'tokyo', 2, 120, 2, '2022/3/18'),
                 ('OC', 'Nikunau', 3, 90, 3, '2022/10/22'),
                 ('AF', 'Tambacounda', 1, 90, 4, '2022/10/22'),
                 ('NA', 'Yes Bay', 5, 60, 5, '2022/8/31');
                 
insert into ExamQuestion(ExamID , QuestionID )
values           ( 1 , 5 ),
                 ( 2 , 1 ),
	             ( 3 , 4 ),
				 ( 4 , 3 ),
                 ( 5 , 2 );           
              
                 
                 

                 







    
