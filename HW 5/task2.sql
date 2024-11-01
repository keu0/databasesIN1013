--1
select sum(bill_total) as 'income' from restbill;

--2
select sum(bill_total) as 'feb income' from restbill where bill_date like '1602%';

--3
select avg(bill_total) as 'average bill' from restbill;

--4
select max(no_of_seats) as 'max', min(no_of_seats) as 'min', avg(no_of_seats) as 'avg' from restrest_table where room_name='blue';

--5
select count(table_no) as 'distinct tables' from restbill where waiter_no='4, 2';
