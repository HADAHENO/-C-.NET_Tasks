-------------------------------------Grouping---------------------------
select Dno , Count(*) as 'count'
From Employee
group by Dno

select Dno , Max(Salary) as 'Max'
From Employee
group by Dno

select Dno , Sum(Salary) as "sum"
From Employee
group by Dno

Select Dno , Count(*)
From Employee
group by Dno 

Select Dno  , Count(*)
From Employee
group by Dno

---------------Error
Select Dno , name
From Employee 
Group by Dno

---------------Error
Select Count(*) , name
From Employee

---------------Error
Select Count(*) , Dno
From Employee
