select reststaff.first_name, reststaff.surname, restbill.bill_date, count(*) as number_of_bills
from restbill
join reststaff on restbill.waiter_no = reststaff.staff_no
group by reststaff.first_name, reststaff.surname, restbill.bill_date
having count(*) >= 2;

select restrest_table.room_name, count(*) as number_of_large_tables
from restrest_table
where restrest_table.no_of_seats > 6
group by restrest_table.room_name;

select restrest_table.room_name, sum(restbill.bill_total) as total_bill_amount
from restbill
join restrest_table on restbill.table_no = restrest_table.table_no
group by restrest_table.room_name;

select reststaff.first_name, reststaff.surname, sum(restbill.bill_total) as total_bill_amount
from reststaff
join reststaff as waiters on reststaff.staff_no = waiters.headwaiter
join restbill on waiters.staff_no = restbill.waiter_no
group by reststaff.first_name, reststaff.surname
order by total_bill_amount desc;

select restbill.cust_name, avg(restbill.bill_total) as average_bill_amount
from restbill
group by restbill.cust_name
having avg(restbill.bill_total) > 400;

select reststaff.first_name, reststaff.surname, count(*) as number_of_bills
from restbill
join reststaff on restbill.waiter_no = reststaff.staff_no
group by reststaff.first_name, reststaff.surname, restbill.bill_date
having count(*) >= 3;
