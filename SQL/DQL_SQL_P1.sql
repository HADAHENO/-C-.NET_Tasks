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
INSERT INTO EMPLOYEE(empId,name,dept,salary,dno) VALUES (5, 'hud' ,'Accounting', 2500,40);

-- fetch 
----------------------Select without Filtering---------
SELECT *
FROM Employee

---------------------Selection With Filtering-----------------
SELECT * 
FROM Employee
WHERE Salary > 1000
-------------------------------Rename Operation--------------
SELECT  name as [first name]  ,  Salary as sa
FROM  Employee as emp
WHERE emp.Salary >1000

