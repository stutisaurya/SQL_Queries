--clause(Where,OrderBy,GroupBy)

use MyDatabase
select * from Employee_tbl

alter table Employee_tbl add deptno varchar(40)
alter table Employee_tbl add job varchar(50)


update Employee_tbl set deptno=1 where address='up'
update Employee_tbl set deptno=2 where address='pune'
update Employee_tbl set deptno=3 where address='Delhi'
update Employee_tbl set deptno=4 where address='Kolkata'

update Employee_tbl set job='clerk' where address='Kolkata'
update Employee_tbl set job='analyst' where address='pune'
update Employee_tbl set job='manager' where address='up'
update Employee_tbl set job='hr' where address='delhi'


-- where
select * from Employee_tbl where EmpId=2
select * from Employee_tbl where address='pune'
select * from Employee_tbl where salary=35000

--OrderBy
select * from Employee_tbl order by FirstName desc
select * from Employee_tbl where address='up' order by EmpId desc

--GropuBy
select job,count (*) from Employee_tbl group by job
select job,sum(salary) from Employee_tbl group by job


