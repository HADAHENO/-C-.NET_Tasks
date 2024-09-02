-- create
CREATE TABLE EMPLOYEE (
  empId int,
  name varchar(15),
  dept varchar(10),
  salary int,
  dno int
);

-- insert 
INSERT INTO EMPLOYEE(empId,name,dept,salary,dno) VALUES (1, 'Clark', 'Sales',500,10);
INSERT INTO EMPLOYEE(empId,name,dept,salary,dno) VALUES (2, 'Dave', 'Accounting',1000,20);
INSERT INTO EMPLOYEE(empId,name,dept,salary,dno) VALUES (3, 'Ava', 'Sales',1500,40);
INSERT INTO EMPLOYEE(empId,name,dept,salary,dno) VALUES (4, 'lana', 'Accounting',2000,30);
INSERT INTO EMPLOYEE(empId,name,dept,salary,dno) VALUES (5, 'huda' ,'Accounting', 2500,40);

--------------------------------2-Projection--------------
SELECT *
FROM Employee

Select name , Salary
From Employee
Where Salary > 1000

Select *, name , dno , [dept]
From Employee

Select name , dno , Salary , Salary*.15
From Employee
-----------------------------Rename Operation  Alias name-------
SELECT *
FROM Employee

Select name as [first name] , empId as [e_id] , Salary
From Employee

Select name as 'first name' , empId as 't_id' , Salary
From Employee

-------------------error-->"Dont do that in rename"------------------------
Select name as 'first name' , empId as 't_id' , Salary as sa
From Employee
Where sa>1000

Select name , dno , Salary , Salary*.15 as [15% of Salary]  ---alias names--
From Employee


Select name , dno  , Salary , Salary*.15 as [15% of Salary] --Logical Error--
From Employee
Where Salary*.15 >200

Select name , salary *.15         --Naming Error--
From Employee
