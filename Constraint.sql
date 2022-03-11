--pk,fk,default,table level constraint
create table student(

StuId int identity(1,1) primary key,
StuName varchar(40) not null,
address varchar(30) not null,
course varchar (30) DEFAULT 'MBA',
city varchar(40)
)

Insert into student(StuName,address,city)values('Adam','abc','Delhi')
Insert into student(StuName,address,city)values('Greek','def','UP')
Insert into student(StuName,address,city)values('Abhi','ghi','MP')
Insert into student(StuName,address,city)values('Raj','jkl','Goa')

update student set course='MCA' where StuID=4
sp_help student
select * from student
select *from college
drop table student
drop table college


create table college(
college_id int primary key,
college_name varchar(20),
StuId int foreign key references student(StuId)
)
Insert into college(college_id,college_name,StuId)values('1','abc','2')
Insert into college(college_id,college_name,StuId)values('2','BVP','1')
Insert into college(college_id,college_name,StuId)values('3','SMU','4')

--Table level constraint

create table PersonTableLevel(
id int primary key,
P_Id int,
P_Name varchar(50),
constraint P_Id unique(P_Id,P_Name)
)

select * from PersonTableLevel

insert into PersonTableLevel(id,P_Id,P_Name)values(1,12,'Raj') 
insert into PersonTableLevel(id,P_Id,P_Name)values(2,13,'Ravi')
insert into PersonTableLevel(id,P_Id,P_Name)values(3,13,'Rani')


