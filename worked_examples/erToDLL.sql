
create table Student(
     id integer,
	 primary key (id)
);

create table Course(
     id integer,
	 primary key (id)
);

create table Staff(
     id integer,
	 primary key (id)
);

create table Branch(
     id integer,
	 primary key (id)
);

create table Enrols(
    student integer,
    course integer,
    primary key(student, course),
    foreign key student references Students(id),
    foreign key course references Courses(id),
);

