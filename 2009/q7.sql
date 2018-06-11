
create view Q7 as 
select
    (select count(*) from Beers) as nbeers,
    (select count(*) from Brewers) as nbrewers,
    (select count(*) from Users) as nusers
;
