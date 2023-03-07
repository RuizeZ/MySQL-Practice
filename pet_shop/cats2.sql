USE pet_shop;
CREATE TABLE cats2(
	name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

INSERT INTO cats2 (name, age)
VALUES("Bilbo", 19); 

SELECT * FROM cats2;

DESC cats2;