create table customers
(
cust_id int primary key,
cust_name varchar(100)
)
insert into customers (cust_id,cust_name) values (1,'singh')
insert into customers (cust_id,cust_name) values (2,'john')
insert into customers (cust_id,cust_name) values (3,'smith')
insert into customers (cust_id,cust_name) values (4,'sima')

create table orders
(
order_id int identity(1,1),
cust_id int,
item varchar(100)
foreign key(cust_id) references customers(cust_id)
on delete cascade
)

insert into orders (cust_id,item) values (1,'pen')
insert into orders (cust_id,item) values (2,'book')
insert into orders (cust_id,item) values (2,'copy')
insert into orders (cust_id,item) values (3,'mouse')
insert into orders (cust_id,item) values (4,'CD')


drop table orders
delete from customers where cust_id=1


select * from customers
select* from orders



