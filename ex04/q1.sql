
-- a)

select 
    s.sname
from suppliers s 
    left join catalog c on c.sid = s.sid
    left join parts p on p.pid = c.pid
where p.colour == 'red';

-- b)

select
    s.sid
from Suppliers s
    left join catalog c on c.sid = s.sid
    left join parts p on p.pid = c.pid
where p.colour in ('red', 'green');

-- c)

select 
    c.sid
from Catalog c
    left join parts p on c.pid = p.pid
    left join supplier s on s.sid = c.sid
where p.colour = 'red' or s.address = '221 Packer Street';

-- d)
select
    distinct c.sid
from catalog c
    left join parts p on p.cid = c.cid
where p.colour = 'red' and p.colour = 'green';

-- e)
select
    c.sid
from catalog c
    left join parts p on p.cid = c.cid
where count(distinct p.pid) = (select count(distinct p.id) from parts p)

-- f)
select
    c.sid
from catalog c
    left join parts p on p.cid = c.cid
where count(distinct p.pid) = (select count(distinct p.id) from parts p where p.colour == 'red')


-- Q2
-- a)
select 
    a.aname
from aircraft a
    left join certified c on c.aircraft = a.aid
    left join employees e on e.eid = c.employee
where e.salary > 80000;
