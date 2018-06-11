
create view StylesPerCountry as 
select
    l.country as country,
    count(distinct b.style) as nstyles
from Location l
    left join brewers br on br.location = l.id
    left join beers b on b.brewer = br.id
group by 1;


create view q9 as
select
    spc.country,
    spc.nstyles
from StylesPerCountry spc 
where spc.nstyles = (select max(nstyles) from StylesPerCountry);


