select distinct reststaff.first_name, reststaff.surname
from reststaff
join restbill on reststaff.staff_no = restbill.waiter_no
where restbill.cust_name = 'Tanya Singh';

select restroom_management.room_date
from restroom_management
join reststaff on restroom_management.headwaiter = reststaff.staff_no
where reststaff.first_name = 'Charles'
  and restroom_management.room_name = 'Green'
  and restroom_management.room_date between 160201 and 160229;

select distinct reststaff.first_name, reststaff.surname
from reststaff
where reststaff.headwaiter = (
    select reststaff.headwaiter
    from reststaff
    where reststaff.first_name = 'Zoe' and reststaff.surname = 'Ball'
) and reststaff.staff_no != (
    select reststaff.staff_no
    from reststaff
    where reststaff.first_name = 'Zoe' and reststaff.surname = 'Ball'
);

select restbill.cust_name, restbill.bill_total, 
       reststaff.first_name as waiter_first_name, 
       reststaff.surname as waiter_surname
from restbill
join reststaff on restbill.waiter_no = reststaff.staff_no
order by restbill.bill_total desc;

select distinct reststaff.first_name, reststaff.surname
from reststaff
where reststaff.headwaiter in (
    select distinct reststaff.headwaiter
    from restbill
    join reststaff on restbill.waiter_no = reststaff.staff_no
    where restbill.bill_no in (14, 17)
);

select distinct reststaff.first_name, reststaff.surname
from reststaff
where reststaff.headwaiter in (
    select restroom_management.headwaiter
    from restroom_management
    where restroom_management.room_name = 'Blue' and restroom_management.room_date = 160312
) or reststaff.staff_no in (
    select restroom_management.headwaiter
    from restroom_management
    where restroom_management.room_name = 'Blue' and restroom_management.room_date = 160312
);
