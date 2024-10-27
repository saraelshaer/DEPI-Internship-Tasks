create database Student;
use Student; 

create table Students(
StudentId int primary key,
FirstName nvarchar(60),
LastName nvarchar(60),
Age int,
Grade nvarchar(60)
);

insert into Students
values (1,'Sara','Nasr',21,'A')
      ,(2,'Ali','Alaa',20,'B')
	  ,(3,'Amira','Ahmed',18,'A')
	  ,(4,'Kareem','Nasr',19,'C')
	  ,(5,'Khaled','Shabaan',18,'D');

select * from Students;
select FirstName, LastName from Students;

select * from Students
where Age >18;

select * from Students
where Grade = 'A';

