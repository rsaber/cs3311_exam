

-- a)

select
    b.title
from Book b
    left join Author a on a.isbn = b.isbn
group by 1
having count(a.rank) > 1;

-- b)

select
    b.title
from book b
    left join borrowings bn on bn.isbn = b.isbn
group by 1
having count(distinct bn.bid) = 0;

-- c)

select
    b.title
from book b
    join borrowings bn on bn.isbn = b.isbn
where bn.whenReturned is NULL;

-- d)

select 
    b.title,
    br.name
from books b
    join borrowings bn on bn.isbn = b.isbn
    join borrower br on br.bid = bn.borrower
where date('now') - br.whenTaken > 14;


-- e)


