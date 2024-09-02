---------- SQL Operators -------------------------
---------------Arthmetics Operator---------------
----- * / % - + -----------------------
Select  name , Salary , Salary *.15 as 'Quarter of salary'
From Employee

Select  name , Salary , Salary *.15 as [15 % salary] , Salary +1000 as [salary +1000] , Salary +2000 as [salary +2000]
From Employee

Select name , Salary , 'Employee ' + name  as 'Names_of_Employee'
from Employee

Select *
From Employee
Where Salary +1000 < 3000

Select * 
From Employee
Where dno %2 =0

------------------------------------Relational Operator-----------
----> , < , <= , >= ,= , != , <> , !> , !<
Select * 
From Employee
Where dno <> 10 

Select * 
From Employee
Where Dno <> 10 Or Dno is NULL

Select * 
From Employee
Where Dno = NULL /*add some roes dno ='null' on it; to show result on it*/

Select * 
From Employee
Where Dno is NULL

Select * 
From Employee
Where Dno is Not NULL

Select * 
From Employee
Where Dno != NULL