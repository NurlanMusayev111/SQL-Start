create table Students(
	[Id] int,
	[Name] nvarchar(50),
	[Surname] nvarchar(100)
)


--alter table Students
--add [Age] int


--alter table Students
--add [Address] nvarchar(250)


alter table Students
drop column [Address]

use Course
EXEC sp_rename Stu,Students

EXEC sp_rename 'Stu.surname',lastname


insert into Students([Id],[Name],[lastname],[age])
values(1,'Nurlan','Musayev',21),
	  (2,'Nermin','Memmedli',29),
      (3,'Gunel','Veliyeva',31)



select count(*) as [Student count] from Students


select * from Students where [Age] > 20 and [Age]<29

select * from Students where [Age] BETWEEN 20 AND 30


select * from Students where [Name] LIKE 'N%'

delete from Students where [Id] = 1
 
select * from Students

UPDATE Students
SET [Age] = 30
where [Id] = 3



create table Employees(
	[Id] int primary key identity(1,1),
	[Name] nvarchar (50),
	[Surname] nvarchar(50) not null,
	[Email] nvarchar(100) unique
)


DROP TABLE Employee;



