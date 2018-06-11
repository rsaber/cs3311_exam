

-- b)

select
    e.eid,
    max(a.cruisingRange)
from Employees e
    left join Certified c on c.employee = e.eid
    left join Aircraft a on a.aid = c.aircraft
where count(c.cid) > 3
group by 1;

-- c)
select
    e.ename
from employees e
where e.salary < (select min(f.price) from flights f where f.departs = 'Los Angeles' and f.arrives = 'Honolulu');

-- d)
select 

    

