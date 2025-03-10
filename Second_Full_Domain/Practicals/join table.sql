-- INNER JOIN
SELECT column1, column2
FROM table1
INNER JOIN table2 ON table1.id = table2.id;

-- LEFT JOIN (or LEFT OUTER JOIN)
SELECT column1, column2
FROM table1
LEFT JOIN table2 ON table1.id = table2.id;

-- RIGHT JOIN (or RIGHT OUTER JOIN)
SELECT column1, column2
FROM table1
RIGHT JOIN table2 ON table1.id = table2.id;

-- FULL OUTER JOIN
SELECT column1, column2
FROM table1
FULL OUTER JOIN table2 ON table1.id = table2.id;

-- CROSS JOIN
SELECT column1, column2
FROM table1
CROSS JOIN table2;

-- Multiple INNER JOINS
SELECT column1, column2, column3
FROM table1
INNER JOIN table2 ON table1.id = table2.id
INNER JOIN table3 ON table2.id = table3.id;

-- JOIN with Aliases
SELECT t1.column1, t2.column2
FROM table1 AS t1
INNER JOIN table2 AS t2 ON t1.id = t2.id;

-- JOIN with WHERE and ORDER BY
SELECT t1.column1, t2.column2
FROM table1 AS t1
INNER JOIN table2 AS t2 ON t1.id = t2.id
WHERE t1.column1 = 'some_value'
ORDER BY t2.column2;
