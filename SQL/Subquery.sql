----------------Nested Query "Sub Query"---------------------

----1-Get Department Name of The Employee has SSN 112233
Select Dname
From Departments 
Where Dnum = (Select Dno
				From Employee
				Where SSN = 112233)

Select Dname
From Departments 
Where Dnum In (Select Dno
				From Employee
				Where SSN = 112233)



Select Dname
From Departments
Where Dnum in (Select Dno 
				From Employee
				Where Fname = 'Kamel')

----2-Get Department Names of The Employee has Maximum Salary

Select Dname
From Departments
Where Dnum in (select Dno
				From Employee
				Where Salary = (Select Max(Salary)
								From Employee))
Select Fname , Lname ,SSn ,Salary
From Employee
Where Salary >  All (Select Salary
					From Employee
					Where Dno =10)

Select Fname , Lname ,SSn ,Salary
From Employee
Where Salary >  (Select Max(salary)
				From Employee
				Where Dno=10)

Select Fname , Lname ,SSn ,Salary
From Employee
Where Salary >  any (Select Salary
					From Employee
					Where Dno =10)
	And Dno !=10


Select Fname , Lname ,SSn ,Salary
From Employee
Where Salary >  (Select Min(Salary) from Employee where Dno=10)
And Dno !=10