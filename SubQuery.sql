-- subqueries
use MyDatabase
select * from student
select * from student_Marks

create table student_Marks(
StuId int primary key,
DS int,
BI int,
DBMS int,
)

drop table student_Marks
Insert into student_Marks(StuId,DS,BI,DBMS)values(1,60,80,70)
Insert into student_Marks(StuId,DS,BI,DBMS)values(2,70,40,67)
Insert into student_Marks(StuId,DS,BI,DBMS)values(3,66,80,38)
Insert into student_Marks(StuId,DS,BI,DBMS)values(4,72,91,49)


 select * from student_Marks where StuId=
     (select StuId from student where city='delhi')

	 
 select * from student_Marks where StuId IN
     (select StuId from student where city='MP')


--join

Create table Company(
C_Id int,
C_Name varchar(40),
C_MailId varchar(50),
Dep_Id int
)
select * from Company
select * from Department

insert into Company(C_Id,C_Name,C_MailId,Dep_Id)values (101,'HCL','hcl123@gmail.com',10)
insert into Company(C_Id,C_Name,C_MailId,Dep_Id)values (101,'TATA','ta3813@gmail.com',20)
insert into Company(C_Id,C_Name,C_MailId,Dep_Id)values (101,'INFOSYS','info3@gmail.com',30)

Create table Department(
D_Id int,
D_Name varchar(40),
D_Location varchar(60)
)
update Company set C_Id=40 where C_Name='TATA'
update Company set C_Id=102 where C_Name='TATA'
update Company set C_Id=103 where C_Name='INFOSYS'



sp_rename 'Department.D_Id','Dep_Id';

insert into Department(D_Id,D_Name,D_Location)values (10,'Finance','chennai')
insert into Department(D_Id,D_Name,D_Location)values (20,'HR','madras')
insert into Department(D_Id,D_Name,D_Location)values (30,'Lawyer','lucknow')
insert into Department(D_Id,D_Name,D_Location)values (50,'CA','delhi')

update Department set Dep_Id=40 where D_Location='lucknow'

 

--Inner Join
select * from Company inner join Department ON Company.dep_Id=Department.dep_Id

--Left outer join 
select * from Company C left outer join Department D ON C.Dep_ID=D.Dep_Id

--Right outer join
select * from Company C right outer join Department D ON C.Dep_ID=D.Dep_Id

--Full outer join
select * from Company C FULL outer join Department D ON C.Dep_ID=D.Dep_Id

--cross join
select * from Company cross join Department

