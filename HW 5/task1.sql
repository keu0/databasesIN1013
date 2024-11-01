--1
select bill_date, bill_total from restbill where cust_name = 'Bob Crow';

--2
select distinct cust_name from restbill where cust_name like '%Smith%' order by cust_name desc;

--3
select distinct cust_name from restbill where cust_name like '% C%';

--4
select first_name from reststaff where headwaiter is not null;

--5
select * from restbill where bill_date like '1602%';

--6
select distinct bill_date from restbill where bill_date like '15%' order by bill_date asc;