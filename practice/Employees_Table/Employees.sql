create table Employees(
	id int primary key auto_increment,
    last_name varchar(50) not null,
    first_name varchar(50) not null,
    middle_name varchar(50),
    age int not null,
    current_statsu varchar(50) not null default 'employed'
);