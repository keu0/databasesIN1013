select distinct restbill.cust_name
from restbill
join reststaff on restbill.waiter_no = reststaff.staff_no
join restroom_management on reststaff.headwaiter = restroom_management.headwaiter
where restbill.bill_total > 450.00
  and restroom_management.headwaiter = (
    select staff_no
    from reststaff
    where first_name = 'Charles'
  );

select reststaff.first_name, reststaff.surname
from reststaff
where reststaff.staff_no = (
    select restroom_management.headwaiter
    from restroom_management
    join restbill on restroom_management.room_name = (
        select restrest_table.room_name
        from restrest_table
        where restrest_table.table_no = restbill.table_no
    )
    where restbill.cust_name = 'Nerida'
      and restbill.bill_date = 160111
);

select restbill.cust_name
from restbill
where restbill.bill_total = (
    select min(bill_total)
    from restbill
);

select reststaff.first_name, reststaff.surname
from reststaff
where reststaff.staff_no not in (
    select distinct waiter_no
    from restbill
);

select restbill.cust_name, reststaff.first_name as headwaiter_first_name, reststaff.surname as headwaiter_surname, restroom_management.room_name
from restbill
join reststaff on restroom_management.headwaiter = reststaff.staff_no
join restroom_management on restroom_management.room_name = (
    select restrest_table.room_name
    from restrest_table
    where restrest_table.table_no = restbill.table_no
)
where restbill.bill_total = (
    select max(bill_total)
    from restbill
);
