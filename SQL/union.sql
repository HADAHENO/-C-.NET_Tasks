------union----------
select * from tableA;

select * from tableB;


select * from tableA
union
select * from tableB

select first_name , last_name,Gender from tableA
union
select firstName,lastName,Gender from tableB

select first_name , last_name,Gender from tableA
union
select firstName,lastName from tableB

select first_name , last_name,Gender from tableA
union
select firstName,lastName , Id from tableB


select first_name , last_name,Gender from tableA
union
select firstName,lastName , firstName from tableB


select first_name , last_name,Gender from tableA

union All
select firstName,lastName , Gender from tableB


select first_name , last_name,Gender from tableA

Intersect
select firstName,lastName , Gender from tableB


select first_name , last_name,Gender from tableA

Except 
select firstName,lastName , Gender from tableB


select firstName,lastName , Gender from tableB
Except 
select first_name , last_name,Gender from tableA