

-- All brewers and how many beers they brew
create view BrewersAndBeers
    br.id,
    br.name,
    br.location,
    l.country,
    count(distinct b.id) as nbeers
from brewers br
    left join location l on br.location = l.id
    left join beers b on b.brewer = br.id
group by 1,2,3,4;

create view q10 as
select 
    bb.name,
    bb.country
from BrewersAndBeers bb
where bb.nbeers = 0;

