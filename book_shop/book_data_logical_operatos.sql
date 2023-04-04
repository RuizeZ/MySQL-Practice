SELECT * FROM books WHERE released_year < 1980;
SELECT * FROM books WHERE author_lname = 'Eggers' OR author_lname = 'Chabon';
SELECT * FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;
SELECT * FROM books WHERE author_lname like 'C%' OR author_lname like 'S%';
SELECT 
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN
            title LIKE '%Just Kids%'
                OR title LIKE '%A Heartbreaking%'
        THEN
            'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM
    books;

SELECT author_fname, author_lname, concat(count(*), ' books')  as COUNT FROM books GROUP BY author_lname, author_fname;
