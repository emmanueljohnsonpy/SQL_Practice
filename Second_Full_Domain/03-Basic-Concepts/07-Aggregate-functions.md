# Aggregate Functions in PostgreSQL

Aggregate functions in PostgreSQL (PSQL) perform calculations on a set of rows and return a single result. These functions are commonly used with the `GROUP BY` clause to aggregate data based on specific columns.

## Common Aggregate Functions in PostgreSQL

- **COUNT()** – Returns the number of rows.
    ```sql
    SELECT COUNT(*) FROM orders;
    ```
    Counts all rows, including NULL values. To count non-null values of a specific column:
    ```sql
    SELECT COUNT(column_name) FROM table_name;
    ```

- **SUM()** – Returns the sum of numeric values.
    ```sql
    SELECT SUM(price) FROM orders;
    ```

- **AVG()** – Returns the average value of a numeric column.
    ```sql
    SELECT AVG(price) FROM orders;
    ```

- **MIN()** – Returns the smallest value in a column.
    ```sql
    SELECT MIN(price) FROM orders;
    ```

- **MAX()** – Returns the largest value in a column.
    ```sql
    SELECT MAX(price) FROM orders;
    ```

- **STRING_AGG()** – Concatenates values into a string, separated by a delimiter.
    ```sql
    SELECT STRING_AGG(name, ', ') FROM employees;
    ```

- **ARRAY_AGG()** – Aggregates values into an array.
    ```sql
    SELECT ARRAY_AGG(name) FROM employees;
    ```

- **BOOL_AND() / BOOL_OR()** – Aggregate boolean values.
    ```sql
    SELECT BOOL_AND(is_active) FROM users; -- True if all are True
    SELECT BOOL_OR(is_active) FROM users;  -- True if at least one is True
    ```

## Using Aggregate Functions with GROUP BY

You can use aggregate functions with `GROUP BY` to group data by a column.
```sql
SELECT category, COUNT(*) 
FROM products 
GROUP BY category;
```

## Filtering with HAVING

Use `HAVING` to filter aggregated results.
```sql
SELECT category, COUNT(*) 
FROM products 
GROUP BY category 
HAVING COUNT(*) > 10;
```
