use Mydatabase
 Create table Employee1
 (
 Emp_No int,
 Emp_Name varchar(50),
 job varchar(40),
 salary decimal (8,2),
 Dep_No varchar(15)
 )

 drop table employee
 select * from Employee1
 alter table Employee add contact varchar(40)
 update Employee1 set contact=9654856712 where Dep_No=20
 update Employee1 set contact=9654857612 where Dep_No=30
 update Employee1 set contact=8754856721 where Dep_No=40
 update Employee1 set contact=9665856743 where Dep_No=10
 update Employee1 set contact=9654856757 where job='manager'
 update Employee1 set contact=9654856766 where job='CA'

 select * from Employee

Insert into Employee1 values(1,'sakshi','clerk',20000.00,'20')
Insert into Employee1 values(2,'simran','salesman',32000.00,'30')
Insert into Employee1 values(3,'Raj','HR',24500.00,'40')
Insert into Employee1 values(4,'Ravi','manager',41000.00,'20')
Insert into Employee1 values(5,'Adam','CA',36500.00,'30')
Insert into Employee1 values(6,'Priya','Analyst',32100.00,'10')

--Cast and Convert Fuction
select salary from Employee1
select cast (salary as int) from Employee1 
select convert (int,salary) from Employee1

--Like operator
select * from Employee1 where Emp_Name like 's%';
select * from Employee1 where Emp_Name like 'Ravi%';
select * from Employee1 where Emp_Name like 'Ra%';
select * from Employee1 where Emp_Name not like 's%';
select * from Employee1 where contact like '%12';
select * from Employee1 where contact not like '%21'




create table students(id int, name varchar(50),branch varchar(50));
create table marks(id int, marks int);
create table attendance(id int, attendance int);

--students
insert into students values(1,'anurag','cse');
insert into students values(2,'harsh','ece');
insert into students values(3,'sumit','ece');
insert into students values(4,'kae','cse');

--marks
insert into marks values(1,95);
insert into marks values(2,85);
insert into marks values(3,80);
insert into marks values(4,65);

--attendance
insert into attendance values(1,75);
insert into attendance values(2,65);
insert into attendance values(3,80);
insert into attendance values(4,80);

select *from students;
select *from marks;
select *from attendance;

--using multitable join
select s.id, name, marks, attendance
from students as s
inner join
marks as m
on s.id=m.id
inner join
attendance as a
on m.id=a.id
where a.attendance>=75;