-- Employee: Tina Smith, John MacDonold, Tory Sutherland, Marcus Pan
--Department: Marketing, Sales, Development

use EmployeeDB;
go

insert into Employee.Department ([Name], [Location])
values ('Marketing', 'Miami Florida'),
('Sales', 'Pheonix, Arizona')
('Development', 'New York City, New York');

insert into Employee.Employee (Did, Firstname, Lastname)
values (1, 'John', 'MacDonald'),
(3, 'Tory', 'Sutherland'),
(2, 'Marcus', 'Pan');

insert into Employee.EmployeeDetails (Eid, Salary, Street, City, Province)
values (1, 50000, '321 S. Southern St.', 'Miami', 'Florida'),
(2, 80000, '5700 N. Old Eastern Blvd.', 'New York City', 'New York')
(3, 45000, '7800 W. BirdWalk Ln.', 'Pheonix', 'Arizona');



insert into Employee.Employee (Did, Firstname, Lastname)
values (1, 'Tina', 'Smith');

insert into Employee.EmployeeDetails (Eid, Salary, Street, City, Province)
values (4, 80000, '435 E. BloodWake Ln.', 'Miami', 'Florida');

select *
from Employee.Employee
where Did = 1;

select sum(salary) as SalarySum
from Employee.EmployeeDetails

update Employee.EmployeeDetails
set Salary = 90000
where Eid = 4;
