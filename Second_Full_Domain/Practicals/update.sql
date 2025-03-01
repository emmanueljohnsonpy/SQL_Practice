

"reduce salary by 10% if salary is above average"

UPDATE employees
SET salary = salary * 0.9
WHERE salary > (SELECT AVG(salary) FROM employees);


