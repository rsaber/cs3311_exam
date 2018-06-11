

create view PlayersAndCards as
select
    p.id,
    p.name,
    t.id as team,
    t.country as country,
    count(case c.cardType when 'red' then c.id else NULL end) as reds,
    count(case c.cardType when 'yellow' then c.id else NULL end) as yellows
from players p
    left join cards c on p.id = c.givenTo
    left join teams t on t.id = p.memberOf
group by 1,2;

create view Q5 as
select
    t.country,
    sum(pc.reds) as reds,
    sum(pc.yellows) as yellows
from PlayersAndCards pc
    left join teams t on t.id = pc.memberOf
group by 1
;
