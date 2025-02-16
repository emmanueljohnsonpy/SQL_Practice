# SELECT in PostgreSQL (psql) – Quick Notes

The `SELECT` statement in PostgreSQL (psql) is used to query data from tables.

## Basic Syntax:

```sql
SELECT column1, column2 FROM table_name;
```

- `column1, column2`: The columns you want to retrieve.
- `table_name`: The table from which data is retrieved.

## Select All Columns:

```sql
SELECT * FROM table_name;
```

## Using WHERE Clause (Filtering Data):

```sql
SELECT * FROM table_name WHERE column_name = 'value';
```

## Using ORDER BY (Sorting Data):

```sql
SELECT * FROM table_name ORDER BY column_name ASC;  -- Ascending
SELECT * FROM table_name ORDER BY column_name DESC; -- Descending
```

## Using LIMIT (Restricting Number of Rows):

```sql
SELECT * FROM table_name LIMIT 5;
```

## Using DISTINCT (Removing Duplicates):

```sql
SELECT DISTINCT column_name FROM table_name;
```

## Using AND, OR, and BETWEEN (Filtering Conditions):

```sql
SELECT * FROM table_name WHERE column1 = 'value1' AND column2 > 10;
SELECT * FROM table_name WHERE column1 = 'value1' OR column2 < 50;
SELECT * FROM table_name WHERE column3 BETWEEN 10 AND 100;
```

## Using LIKE (Pattern Matching with Wildcards % and _):

```sql
SELECT * FROM table_name WHERE column_name LIKE 'A%';  -- Starts with 'A'
SELECT * FROM table_name WHERE column_name LIKE '%X';  -- Ends with 'X'
SELECT * FROM table_name WHERE column_name LIKE '_B%'; -- Second letter is 'B'
```

## Using IN (Matching Multiple Values):

```sql
SELECT * FROM table_name WHERE column_name IN ('value1', 'value2', 'value3');
```

## Aggregations (COUNT, SUM, AVG, MIN, MAX):

```sql
SELECT COUNT(*) FROM table_name;          -- Count rows
SELECT SUM(column_name) FROM table_name;  -- Sum values
SELECT AVG(column_name) FROM table_name;  -- Average value
SELECT MIN(column_name) FROM table_name;  -- Minimum value
SELECT MAX(column_name) FROM table_name;  -- Maximum value
```

## Using GROUP BY (Grouping Results):

```sql
SELECT column_name, COUNT(*) FROM table_name GROUP BY column_name;
```

## Using HAVING (Filtering After Aggregation):

```sql
SELECT column_name, COUNT(*) 
FROM table_name 
GROUP BY column_name 
HAVING COUNT(*) > 5;
```

## Using JOIN (Combining Data from Multiple Tables):

```sql
SELECT a.column1, b.column2 
FROM table1 a
JOIN table2 b ON a.common_column = b.common_column;
```

## Subquery (Nested SELECT):

```sql
SELECT column_name 
FROM table_name 
WHERE column_name = (SELECT column_name FROM another_table WHERE condition);
```

## Using EXISTS (Check If a Subquery Returns Rows):

```sql
SELECT * FROM table_name WHERE EXISTS (SELECT 1 FROM another_table WHERE condition);
```