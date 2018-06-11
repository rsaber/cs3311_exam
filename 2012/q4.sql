

create view Q4 as
select
    mp.t1,
    mp.t2,
    count(mp.match)
from MatchPairs mp
group by 1,2
order by 3 DESC
;

create view MatchPairs as 
select
    t.country as t1,
    t2.country as t2,
    i.match
from Involves i
    left join Involves i2 on i.match = i2.match
    left join teams t1 on t1.id = i.team
    left join teams t2 on t2.id = i2.team
where t1.country < t2.country
order by 1,2;
