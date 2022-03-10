--clause(Where,OrderBy,GroupBy)

use MyDatabase
select * from Employee_tbl

-- where
select * from Employee_tbl where EmpId=2
select * from Employee_tbl where address='pune'
select * from Employee_tbl where salary=35000

--OrderBy
select * from Employee_tbl order by FirstName desc
select * from Employee_tbl where address='up' order by EmpId desc

--GropuBy


