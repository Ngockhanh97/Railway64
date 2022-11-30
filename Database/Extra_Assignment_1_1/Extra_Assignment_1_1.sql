create database Fresher_Management;
use Fresher_Management;
create table Trainee (
    TraineeID int not null primary key auto_increment,
    Full_Name varchar(50),
    Birth_Date date,
    Gender enum('male','female','unknow'),
    ET_IQ int,
    ET_Gmath int,
    ET_English int,
    Training_Class int,
    Evaluation_Note varchar(255)
    );
alter table Trainee add column VTI_Account varchar(50) not null unique;
    