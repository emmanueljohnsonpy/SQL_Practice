In PostgreSQL (psql), joins are used to combine rows from two or more tables based on a related column. Here are the most common types of joins:

1. **INNER JOIN**  
    Returns only the matching rows from both tables.
    ```sql
    SELECT a.column1, b.column2
    FROM tableA a
    INNER JOIN tableB b ON a.common_column = b.common_column;
    ```

2. **LEFT JOIN (LEFT OUTER JOIN)**  
    Returns all rows from the left table and matching rows from the right table. If there’s no match, NULL is returned for columns from the right table.
    ```sql
    SELECT a.column1, b.column2
    FROM tableA a
    LEFT JOIN tableB b ON a.common_column = b.common_column;
    ```

3. **RIGHT JOIN (RIGHT OUTER JOIN)**  
    Returns all rows from the right table and matching rows from the left table. If no match is found, NULL is returned for columns from the left table.
    ```sql
    SELECT a.column1, b.column2
    FROM tableA a
    RIGHT JOIN tableB b ON a.common_column = b.common_column;
    ```

4. **FULL JOIN (FULL OUTER JOIN)**  
    Returns all rows when there is a match in either left or right table. If there’s no match, NULL is returned for columns from the missing side.
    ```sql
    SELECT a.column1, b.column2
    FROM tableA a
    FULL JOIN tableB b ON a.common_column = b.common_column;
    ```

5. **CROSS JOIN**  
    Returns the Cartesian product of both tables (every row in tableA is combined with every row in tableB).
    ```sql
    SELECT a.column1, b.column2
    FROM tableA a
    CROSS JOIN tableB b;
    ```

6. **SELF JOIN**  
    A table joins with itself.
    ```sql
    SELECT a.column1, b.column2
    FROM tableA a
    INNER JOIN tableA b ON a.common_column = b.common_column;
    ```
