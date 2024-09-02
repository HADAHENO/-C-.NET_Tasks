---------Having------------
Select Dno , Count(*)
From Employee 
where Salary >1000
group by Dno 
Having Dno  != 20

Select Dno , Count(*)
From Employee 
where Salary >1000
group by Dno 
Having Count(*) >2

Select Dno , Count(*)
From Employee 
where Salary >1000
group by Dno 
Having Max(Salary)>=2000


--------------------error---------------
Select Dno , Count(*)
From Employee 
where Salary >1000
group by Dno 
Having Salary > 1000 

--------------------------------
Select Dno , Count(*)
From Employee 
where count(*) > 2
group by Dno 
