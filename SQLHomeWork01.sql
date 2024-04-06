create database CourseP418

use CourseP418

create table Teachers(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	[Surname] nvarchar(100) not null,
	[Email] nvarchar(200) unique,
	[Age] int
)


create table Students(
	[Id] int primary key identity(1,1),
	[FullName] nvarchar(200) not null,
	[Age] int,
	[Address] nvarchar(200) not null
)





insert into Teachers([Name],[Surname],[Email],[Age])
values ('Abdullah','Avci','aa@mail.com',57),
	   ('Okan','Buruk','ob@mail.ru',48),
	   ('Nenad','Bjelica','nb@mail.ru',54),
	   ('Qurban','Qurbanov','qq@mail.ru',51)



insert into Students([FullName],[Age],[Address])
values ('Nurlan Musayev',21,'Brugge'),
	   ('Samil Farruxov',22,'Baku'),
	   ('Xeyal Hesenov',21,'Berlin')



select * from Teachers -- // butun muellimlerin siyahisini gosteren

select * from Students --// butun Student'lerin siyahisini gosteren


select Count(*) as [Student Count] from Students  -- // Studentlerin sayini gosteren


select * from Teachers where [Age] > 52 --// Age'i 52 den cox olan teacher'ler


select * from Teachers where [Email] like '%b%' --// emailinde 'b' herfi olan teacher melumati