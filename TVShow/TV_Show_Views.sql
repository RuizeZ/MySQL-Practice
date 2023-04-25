select title, released_year, genre, rating, first_name, last_name from reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

CREATE OR REPLACE VIEW full_reviews AS select title, genre, rating, first_name, last_name from reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

SELECT * FROM full_reviews WHERE genre = 'Animation';

SELECT genre, avg(rating) FROM full_reviews GROUP BY genre;

CREATE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;

SELECT * FROM ordered_series;

INSERT INTO ordered_series (title, released_year, genre)
VALUES ('The Greatest', 2020, 'Comedy');

SELECT * FROM ordered_series;

DELETE FROM ordered_series WHERE title = 'The Greatest';

CREATE OR REPLACE VIEW ordered_series AS SELECT * FROM series ORDER BY released_year DESC;

ALTER VIEW ordered_reviews AS SELECT * FROM series ORDER BY released_year;

DROP VIEW ordered_series;

SELECT title, avg(rating) FROM full_reviews GROUP BY title HAVING count(rating) > 1;

SELECT title, avg(rating) FROM full_reviews GROUP BY title WITH ROLLUP;

SELECT title, count(rating) FROM full_reviews GROUP BY title WITH ROLLUP;

SELECT @@GLOBAL.SQL_MODE;

SELECT @@SESSION.sql_mode;