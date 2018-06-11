

create view TeamsAndMatches as 
select
    i.team as t1id,
    t.country as t1,
    i2.team as t2id,
    t2.country as t2,
    i.match
from Involves i
    left join Involves i2 on i.match = i2.match
    left join Teams t on t.id = i.team
    left join Teams t2 on t2.id = i2.team
where t.country < t2.country;

create view PlayerGoalsInMatches as
select
    t.id as team,
    t.country as country,
    g.scoredIn as match,
    m.location as location,
    count(distinct g.id) as goals
from Players p
    left join teams t on p.memberOf = t.id
    left join goals g on p.id = g.scoredBy
    left join matches m on m.id = g.scoredIn
group by 1,2,3;


create view Q6 as
select
    pgm.location as location,
    pgm.playedOn as date,
    tm.t1 as team1,
    pgm.
    
    
