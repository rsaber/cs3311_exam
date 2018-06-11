
-- a)

create table R(
    id integer,
    primary key(id),
    h varchar(20)
);

create table S(
    id integer,
    primary key(id),
    foreign key (id) references R(id),
    j varchar(4) not null  check (j ~ '[A-Z]{4}')
);

create table T(
    id integer,
    primary key(id),
    foreign key (id) references R(id),
    k float not null check (k between 1 and 5)
);

-- b)

create table R(
    id integer,
    primary key (id),
    -- can have kind too, but we need to also check that in the constraints, easier to check if j or k is set
    kind varchar(1) check (kind in ('s','t'))
    j varchar(4) check (j ~ '[A-Z]{4}'),
    k float check (k between 1 and 5),
    check ((k is not null and j is null) or (k is null and j is not null))
);

