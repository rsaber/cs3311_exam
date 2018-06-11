create table Staff (
    staffID integer,
    name varchar(100) not null,
    primary key(staffId)
);

create table Subjects (
    staffId integer not null references Staff(staffID), 
    subject text not null,
    primary key (staffID, subject)
    -- or
    foreign key (staffId) references Staff(staffID)
);

create table Students (
    StuID integer,
    name text not null,
    year integer  check (year between 1 and 12),
    birthday date,
    primary key(StuID)
);

create table Hobbies (
    StuID integer,
    hobby text,
    foreign key (StuID) references Students(StuID),
    primary key(StuID, hobby)
);
