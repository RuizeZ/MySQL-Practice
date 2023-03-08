CREATE TABLE cats(
	cat_id INT auto_increment,
    name varchar(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY(cat_id)
);
INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
SELECT name FROM cats;
SELECT age FROM cats;
SELECT name, age FROM cats;
select * from cats where age = 4;
select name, age from cats where age = 4;
select cat_id from cats;
select name, breed from cats;
select name, age from cats where breed = 'tabby';
select cat_id, age from cats where cat_id = age;
select cat_id as id, name from cats;
SET SQL_SAFE_UPDATES = 0;
update cats set age = 14 where name = 'misty';
select * from cats;
