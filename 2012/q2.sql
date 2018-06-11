

create view AmazingGoals as
select
    g.id, scoredBy
from goals g
where g.rating == 'amazing';

create view Q2 as 
select
    p.name,
    count(g.id)
from players p
    left join AmazingGoals ag on p.id = ag.scoredBy
group by 1
having count(g.id) > 1
