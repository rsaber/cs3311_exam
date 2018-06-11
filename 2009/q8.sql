

create view Q8 as 
select  
    l.country
    count(distinct  b.id)
from Locations l
    left join brewers b on b.location = l.id
group by 1
having count(distinct b.id) > 20;

