--Create database MyDatabase
use MyDatabase

--DDL(Create,Alter<Drop,Truncate)
 
 Create table Employee_tbl
 (
 EmpId int,
 FirstName varchar(50),
 LastName varchar(50),
 salary decimal,
 ContactNo varchar(15)
 )



 Alter table Employee_tbl
 Add city varchar(40)

 Drop table Employee_tbl

 --DQL
 Select * from Employee_tbl


--DML(Insert,Update,Delete)

Insert into Employee_tbl values(1,'sakshi','singh',20000,'9786456742','patna')
Insert into Employee_tbl values(2,'seema','sinha',23000,'8766456742','delhi')
Insert into Employee_tbl values(2,'james','dornan',35000,'9654768954','up')

delete from Employee_tbl where EmpID=1

update Employee_tbl set FirstName='sakshi' where EmpId=2
 
 --DCL(Grant,Revoke)
