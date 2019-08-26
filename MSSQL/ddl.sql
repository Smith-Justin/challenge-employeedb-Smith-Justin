create database EmployeeDB;
use EmployeeDB;
go

create schema Employee;
go

create table Employee.Department
(
	Did int not null unique,
	[Name] nvarchar(50) not null,
	[Location] nvarchar(150) not null
);

create table Employee.Employee
(
	Eid int not null unique,
	Did int not null,
	Firstname nvarchar(50),
	Lastname nvarchar(50)
);

create table Employee.EmployeeDetails
(
	Emic int not null unique,
	Eid int not null,
	Salary numeric(9,2) not null,
	Street nvarchar(50) not null,
	City nvarchar(50) not null,
	Province nvarchar(5) not null
);

go

alter table Employee.Department
add constraint PK_Did primary key (Did);

alter table Employee.Employee
add constraint PK_Eid primary key (Eid);

alter table Employee.EmployeeDetails
add constraint PK_Emid primary key (Emid);


alter table Employee.Employee
add constraint FK_Did foreign key (Did) references Employee.Department(Did);

alter table Employee.EmployeeDetails
add constraint FK_Eid foreign key (Eid) references Employee.Employee(Eid);

go
