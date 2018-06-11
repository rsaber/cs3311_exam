

create view Q1(team, matches) as
select 
    t.country,
    count(i.team)
from teams t
    left join involves i on t.id = i.team
group by 1
