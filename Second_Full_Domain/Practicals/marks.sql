

"Find name of students having highest/second highest mark"

SELECT name, marks
FROM students
WHERE marks = (SELECT MAX(marks) FROM students);

SELECT name, marks 
FROM students 
WHERE marks = (
    SELECT MAX(marks) 
    FROM students 
    WHERE marks < (SELECT MAX(marks) FROM students)
);