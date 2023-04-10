CREATE TABLE students(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50)
);

CREATE TABLE papers(
	title VARCHAR(50),
    grade VARCHAR(2),
    student_id INT,
    FOREIGN KEY(student_id) REFERENCES students(id) ON DELETE CASCADE
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
 
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT first_name, title, grade from students
JOIN papers ON students.id = papers.student_id ORDER BY grade DESC;

SELECT first_name, ifnull(title, "missing"), ifnull(grade, 0) from students
left JOIN papers ON students.id = papers.student_id ORDER BY grade DESC;

SELECT first_name, avg(ifnull(grade, 0)) as average from students
left JOIN papers ON students.id = papers.student_id group by first_name
ORDER BY average DESC;

SELECT first_name, ifnull(avg(grade), 0) as average, 
case 
	when average >= 75 then passing_status = "PASSING"
	ELSE passing_status = "FAILING"
END as passing_status from students
left JOIN papers ON students.id = papers.student_id group by first_name
ORDER BY average DESC;