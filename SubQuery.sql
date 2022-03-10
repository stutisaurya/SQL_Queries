
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



