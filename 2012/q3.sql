
create view GoallessPlayers as
select 
    p.id,
    p.name,
    p.memberOf,
    count(g.id)
from players p 
    left join goals g on g.scoredBy = p.id
group by 1
having count(g.id) == 0;

create view Q3 as
select
    t.country,
    count(gp.id)
from Teams t 
    left join goalllessPlayers gp on gp.memberOf = t.id
group by 1
order by 2 desc
limit 1;


