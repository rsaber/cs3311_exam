

-- Going to just do rankings of beers

create view BeerRankings as
select
    r.beerid,
    b.name,
    avg(r.rating)
from ratings r
    left join beers b on r.beerid = b.id
group by 1,2
order by 3 DESC;

