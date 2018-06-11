

select
    s.name
from Student s
    left join enrolled e on s.id = e.student
    left join Class c on c.name = e.class
    left join lecturer l on l.id = c.lecturer
where l.name = 'Andrew Taylor' and s.stage = 1;
