-- CREATE TABLE books (
--     book_id INT NOT NULL AUTO_INCREMENT,
--     title VARCHAR(100),
--     author_fname VARCHAR(100),
--     author_lname VARCHAR(100),
--     released_year INT,
--     stock_quantity INT,
--     pages INT,
--     PRIMARY KEY (book_id)
-- );

-- INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
-- VALUES
-- ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
-- ('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
-- ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
-- ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
-- ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
-- ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
-- ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
-- ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
-- ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
-- ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
-- ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
-- ("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
-- ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
-- ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
-- ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
-- ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);
-- SELECT 
--     *
-- FROM
--     books;
-- SELECT 
--     CONCAT(author_fname, ' ', author_lname) AS author_name
-- FROM
--     books;
-- SELECT 
--     CONCAT_WS('-', title, author_fname, author_lname)
-- FROM
--     books;
-- SELECT 
--     SUBSTR(author_lname, 1, 1), author_lname
-- FROM
--     books;
-- SELECT 
--     CONCAT(SUBSTR(title, 1, 10), '...') AS short_name
-- FROM
--     books;
-- SELECT 
--     CONCAT(SUBSTR(author_fname, 1, 1),
--             '.',
--             SUBSTR(author_lname, 1, 1),
--             '.')
-- FROM
--     books;
--     
-- SELECT 
--     REPLACE(title, ' ', '-')
-- FROM
--     books;
--     
-- SELECT 
--     CONCAT(author_fname, REVERSE(author_fname))
-- FROM
--     books;
--     
-- SELECT 
--     CHAR_LENGTH(title), title
-- FROM
--     books;

-- SELECT UPPER(title) FROM books;

-- SELECT CONCAT('I love ', UPPER(title), ' !!!') FROM books;
-- SELECT REVERSE(UPPER('Why does mt cat look at me with such hatred?'));
-- SELECT REPLACE(title, ' ', '->') AS title FROM books;
-- SELECT author_fname AS forwards, REVERSE(author_fname) AS backwards FROM books;
-- SELECT CONCAT(UPPER(author_fname), ' ', UPPER(author_lname)) AS 'full name in caps' FROM books;
-- SELECT CONCAT(title, 'was released in ', released_year) AS blurb FROM books;
-- SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;
-- SELECT 
--     CONCAT(SUBSTR(title, 1, 10), '...') AS 'short title',
--     CONCAT(author_fname, ',', author_lname) AS author,
--     CONCAT(stock_quantity, ' in stock') AS quantity
-- FROM
--     books;
-- INSERT INTO books(title, author_fname, author_lname, released_year, stock_quantity, pages)
-- VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
--            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
--            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
-- SELECT * FROM books;
-- SELECT author_lname FROM books;
-- SELECT DISTINCT author_lname FROM books;
-- SELECT DISTINCT released_year FROM books;
-- SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;
-- SELECT DISTINCT author_fname, author_lname, released_year FROM books;
-- SELECT book_id, author_fname, author_lname FROM books ORDER BY author_lname;
-- SELECT book_id, author_fname, author_lname FROM books ORDER BY author_lname DESC;
-- SELECT title FROM books ORDER BY pages;
-- SELECT book_id, author_fname, author_lname FROM books ORDER BY 2;
-- SELECT author_lname, released_year, title FROM books ORDER BY author_lname, released_year DESC;
-- SELECT title, author_fname, released_year FROM books ORDER BY released_year LIMIT 1, 5;
-- SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';
-- SELECT title FROM books WHERE title LIKE '%:%';
-- SELECT title, author_fname FROM books WHERE author_fname LIKE '___';
-- SELECT title, author_fname FROM books WHERE title LIKE '%\%%';
-- SELECT  title FROM books WHERE title LIKE '%stories%';
-- SELECT title, pages FROM books ORDER BY 2 DESC LIMIT 1;
-- SELECT CONCAT(title, ' - ', released_year) AS summary FROM books ORDER BY released_year DESC LIMIT 3;
-- SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';
-- SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity LIMIT 3;
-- SELECT title, author_lname FROM books ORDER BY author_lname, title;
-- SELECT UPPER(CONCAT('my favorite author is ', author_lname, '!')) AS yell FROM books ORDER BY author_lname;
-- SELECT COUNT(*) FROM books;
-- SELECT COUNT(DISTINCT author_fname) FROM books;
-- SELECT date_add('2023-2-12', INTERVAL 90 DAY);  
SELECT * FROM books WHERE released_year = 2017;
SELECT * FROM books WHERE released_year != 2017;
SELECT title FROM books WHERE title NOT LIKE '% %';
SELECT title, author_fname, author_lname FROM books WHERE author_fname NOT LIKE 'da%';
SELECT title FROM books WHERE title NOT LIKE  '%e%';
SELECT title, pages FROM books WHERE char_length(title) > 30 and pages > 400;
SELECT title, released_year FROM bookspeoplebooksemployeestweetstweetstweets WHERE released_year BETWEEN 2004 AND 2015;
SELECT * FROM tweets;
SELECT * FROM tweets where YEAR(time_created) > 2022;
SELECT title, released_year,
CASE
	WHEN released_year >= 2000 THEN 'modern lit'
    ELSE '20th century lit'
END AS type
FROM books;