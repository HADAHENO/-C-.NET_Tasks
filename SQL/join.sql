------First Syntax For Cretesian Product
Select *
From Employee , Departments


-----T-SQL Syntax For Crtesian Product
Select *
From Employee Cross join Departments

select * 
from Employee cross join Departments
where Salary >1000

select * 
from Employee cross join Departments
where Salary <=1000

select * 
from Employee cross join Departments
where Salary is null

select Fname , Lname ,SSN , Dnum , Dname
From Employee cross join Departments

select Fname , Lname ,SSN , Dnum , Dname
From Employee cross join Departments
where Salary >1000

select * 
From Employee
select * 
from [Dependent]

------------------error Ambiguous column name 'Bdate'.----------
select Fname , Lname , Bdate , Dependent_name , Bdate
from Employee cross join [Dependent]


select Fname , Lname , Employee.Bdate , Dependent_name , [Dependent].Bdate
from Employee cross join [Dependent]


select Fname , Lname , 
Employee.Bdate as [Employee birth date] , 
Dependent_name , [Dependent].Bdate as [Dependent Birth Date]
from Employee cross join [Dependent]

select Fname , Lname , Salary ,
Employee.Bdate as [Employee birth date] , 
Dependent_name , [Dependent].Bdate as [Dependent Birth Date]
from Employee cross join [Dependent]
Where Salary >1000


select Fname , Lname , Salary ,
Employee.Bdate as [Employee birth date] , 
Dependent_name , [Dependent].Bdate as [Dependent Birth Date]
from Employee cross join [Dependent]
Where Salary >1000
order by Employee.Bdate desc 

select *
from Employee as emp cross join [Dependent] as dep

select emp.Fname , emp.Lname , Dep.Dependent_name
from Employee as emp cross join [Dependent] as dep

select Fname , Lname, emp.Bdate , Dependent_name , dep.Bdate
from Employee as emp cross join [Dependent] as dep


select Fname , Lname , Salary ,
emp.Bdate as [Employee birth date] , 
Dependent_name , dep.Bdate as [Dependent Birth Date]
from Employee as emp cross join [Dependent] as dep
Where Salary >1000
order by emp.Bdate desc


select Fname , Lname , Salary ,
emp.Bdate as [Employee birth date] , 
Dependent_name , dep.Bdate as [Dependent Birth Date]
from Employee as emp cross join [Dependent] as dep
Where emp.Sex = 'M'
order by emp.Bdate desc


select Fname , Lname , Salary ,
emp.Bdate as [Employee birth date] , 
Dependent_name , dep.Bdate as [Dependent Birth Date]
from Employee as emp cross join [Dependent] as dep
Where emp.Sex = 'M'
order by [Employee birth date] desc  , [Dependent Birth Date] desc

select Employee.*  , Dname
from Employee cross join Departments

---------------------------2-inner Join-------------
-----First sQL Syntax for inner join

Select * 
From Employee , Departments
where Dno = Dnum

------T-SQL Syntax For inner join
Select * 
From Employee inner join Departments
on Dno = Dnum

--Get Employee Name with it's Department Name
Select * From Employee
select * From Departments

Select Fname , Dname
From Employee inner join Departments
on dno = Dnum

Select * from [Dependent]

--Get Dependent Name with it's Employee Name
Select Fname as Employee_FName , Lname as Employee_Lname , Dependent_name 
From  Employee inner join [Dependent]
on  ESSN = SSN

----Get  Projects Name with it's Department name 
select * from Departments
select * from Project

select Pname , Dname
From Project inner join Departments
on Project.Dnum = Departments.Dnum

select Pname , Dname
From Project as pro inner join Departments as dept
on pro.Dnum = dept.Dnum

--Get Projects Name With it's Department Name for Employee Ahmed ali
select * from Departments
select * from Project
Select * from Employee
Select * from Works_for


Select Project.Pname , Departments.Dname
From Employee inner join Works_for
on Employee.SSN = Works_for.ESSn
inner join Project 
on Project.Pnumber = Works_for.Pno
inner join Departments 
on project.Dnum = Departments.Dnum
where Fname='Ahmed' and Lname = 'Ali'


Select Project.Pname , Departments.Dname
From Employee inner join Works_for
on Employee.SSN = Works_for.ESSn
inner join Project 
on Project.Pnumber = Works_for.Pno
inner join Departments 
on project.Dnum = Departments.Dnum
where Fname='Edward' and Lname = 'Hanna'

Select Project.Pname , Departments.Dname
From Employee,Works_for , Project , Departments 
Where Employee.SSN = Works_for.ESSn and Project.Pnumber = Works_for.Pno and 
Project.Dnum = Departments.Dnum
And Fname='Edward' and Lname = 'Hanna'

Select Pno
From Works_for 
Where ESSn in (Select SSN 
				From Employee 
				Where Fname ='Ahmed' And Lname ='Ali')

Select Pname , Dname
From Project inner join Departments
on Project.Dnum = Departments.Dnum
Where Pnumber in (Select Pno
				From Works_for 
				Where ESSn in (Select SSN 
						From Employee 
						Where Fname ='Edward' And Lname ='Hanna'))