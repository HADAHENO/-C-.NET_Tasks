-----------------------------------Self Join------------------
select * from Employee
select * from Departments
use Company_SD

select employee.SSN ,  
CONCAT(employee.Fname,' ',employee.Lname) as [Employee Full Name] ,
Concat(Manager.Fname,' ',Manager.Lname) as [Manger full Name]
From  Employee as employee inner join Employee as Manager 
on employee.Superssn = Manager.SSN

select *
from Employee inner join Departments 
on Employee.Dno  = Departments.Dnum

select *
from Employee left join Departments 
on Employee.Dno  = Departments.Dnum

select *
from Employee Right join Departments 
on Employee.Dno  = Departments.Dnum


select *
from Employee Full outer join Departments 
on Employee.Dno  = Departments.Dnum

select *
from Employee full join Departments 
on Employee.Dno  = Departments.Dnum
