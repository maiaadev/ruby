CREATE TABLE notes (
    id integer PRIMARY KEY,
    body text,
    student_id integer references students(id)
)

INSERT INTO notes (id, body, student_id)
VALUES 
(101, 'first note', 1),
(102, 'second note', NULL),
(103, 'third note', 3),
(104, 'fourth note', 4),
(105, 'fifth note', 5),
(106, 'sixth note', 6),
(107, 'third note', 1),
(108, 'third note', 2),
(109, 'third note', NULL),
(110, 'tenth note', 3)

SELECT s.first_name, s.last_name, n.body  FROM students s
INNER JOIN notes n ON s.id = n.student_id
ORDER BY s.id

SELECT s.first_name, s.last_name, n.body  FROM students s
LEFT JOIN notes n ON s.id = n.student_id
WHERE n.body = 'third note'

SELECT s.first_name, s.last_name, n.body  FROM students s
RIGHT JOIN notes n ON s.id = n.student_id
WHERE s.id = 4

SELECT s.first_name, s.last_name, n.body, n.student_id  
FROM students s
FULL OUTER JOIN notes n ON s.id = n.student_id
ORDER BY s.id