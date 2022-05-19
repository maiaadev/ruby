SELECT COUNT(id) AS total_number_of_students
FROM students;

SELECT COUNT(id) AS number_of_students, location AS location
FROM students
WHERE location = 'Manila';

SELECT AVG(age) AS average_age_of_students
FROM students;

SELECT *
FROM students
ORDER BY age DESC;