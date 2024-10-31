create database BooksDB;
use  BooksDB;

create table Book(
BookId int primary key,
Title nvarchar(100),
Author nvarchar(100),
PublishedYear int,
Price decimal(6,2)
);

insert into Book
values  (1,'Data Structure','author1',2000,50)
       ,(2,'software engineering','author2',1997,100)
	   ,(3,'network','author3',1995,120)
	   ,(4,'OOP','author1',2005,50)
	   ,(5,'graphics','author4',2009,30);

update Book
set Price = 50 * 0.5
where Author = 'author1';

delete from Book
where BookId=5;

select * from Book
order by PublishedYear;

select * from Book
where PublishedYear < 2000;