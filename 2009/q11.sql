


create or replace function(style text) returns setof text
select
    r.userid
from ratings r
    left join beers b on b.id = r.beerid
where r.rating > 7 and b.name = $1
group by 1
having count(r.beerid) > 2;
language sql;
