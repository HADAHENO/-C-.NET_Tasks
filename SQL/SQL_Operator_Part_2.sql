------------------------Logical Operator ---------
-- And (True) ------>   True And True 
---And (False) -----> True And False  ,  False And True  , False And False 

---OR (True) ----> True or True , True or False  , False Or True
---OR (False) ----> False OR False 

--Not (True) ----> False
Select * 
From Employee
Where dno = 10 And Salary <1000

Select * 
From Employee 
Where Dno = 10 Or Dno = 30

Select * 
From Employee
Where Dno=40 And name = 'h'  --you can add row name on it is h to show result--

Select * 
From Employee 
Where Salary >= 1000 and Salary <= 2000

Select * 
From Employee
Where Salary Between 1000 and 2000

Select * 
From Employee
Where Salary not Between 1000 and 2000

Select *
From Employee
Where Dno in (10,20)

Select *
From Employee
Where Dno in (10,20,30)

Select *
From Employee
Where Dno Not in (10,20)

Select *
From Employee
Where Dno Not in (10,20) Or Dno is NULL

Select distinct salary --distinct mean show me salary--
From Employee
Where Dno = 10 

Select distinct name , dno
From Employee
------------order by ------------
Select * 
From Employee
order by Salary

Select * 
From Employee
order by Salary asc--the employee with the lowest salary will appear first--

Select * 
From Employee
order by Salary desc--the employee with the heighest salary will appear first--

Select * 
From Employee
order by name

Select * 
From Employee
order by name desc

Select * 
From Employee
order by Salary desc , name desc

Select * 
From Employee
order by Salary asc, name desc

Select name as first_name, Salary
From Employee
Where Salary >1000
order by name asc , Salary desc
