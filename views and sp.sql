--view
use  MyDatabase
select * from student

create view vwstudent
as
select * from student
sp_helptext 'vwstudent'

select * from students


--stored procedure

create table studentdemo(id int,name varchar(50),branch varchar(50))

insert into studentdemo values(1,'harsh','cse')
insert into studentdemo values(2,'abhi','IT')
insert into studentdemo values(3,'sumit','IT')
insert into studentdemo values(4,'rohan','cse')
insert into studentdemo values(1,'preet','cse')
insert into studentdemo values(2,'golu','cse')
insert into studentdemo values(3,'bharti','it')
insert into studentdemo values(4,'sima','cse')

drop table studentdemo

--create sp
create procedure spstudList
as
Begin
select * from students where id=1
End

-- to execute sp
spstudList
Execute spstudList
Exec spstudList









