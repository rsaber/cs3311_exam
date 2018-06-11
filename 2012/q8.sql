
-- a)
create table Employee (
    id integer,
    name text,
    position text,
    primary key(id)
);

create table PartTime (
    id integer references Employee(id),
    fraction float check (fraction between 0 and 1),
    primary key(id)
);

create table Casual (
    id integer references Employee(id),
    primary key(id)
);

create table Worked(
    CasualId integer references Casual(id),
    HoursId integer references Hours(id),
    primary key(CasualId, HoursId)
);

create table Hours(
    CasualId integer references Casual(id),
    starting time,
    ending time,
    date date,
    primary key(CasualId, date),
    constraint timing check (starting < ending)
);

/*
    total participation is not preserved, an employee is possible to not be assigned to either casual or worked
    disjoin is not preserved, an employee can simply be an employee and neither a casual nor a parttime
*/

-- b)

create table Employee (
    id integer,
    primary key(id),
    position text,
    name text,
    fraction float,
    employeeType text check (employeeType == "Part-time" or employeeType == "Casual")
);

create table HoursWorked (
    id integer references Employee(id),
    onDate date,
    starting time,
    ending time,
    primary key(id, onDate)
);

/*
    total participation is preserved, an employee is possible to not be assigned to either casual or worked
    disjoint is preserved, an employee is forced to be either a casual or parttime
*/

