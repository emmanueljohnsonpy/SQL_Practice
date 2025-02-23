In PostgreSQL (psql), you can execute SQL queries to interact with your database. Below are some commonly used SQL queries in psql:

## Basic Commands in psql

Before running SQL queries, make sure you are connected to your database:

```sh
psql -U username -d database_name
```

List all databases:

```sql
\l
```

Connect to a database:

```sql
\c database_name
```

List tables in a database:

```sql
\dt
```

Describe a table structure:

```sql
\d table_name
```

## DDL (Data Definition Language) Queries

### Creating a Table

```sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    age INT,
    created_at TIMESTAMP DEFAULT NOW()
);
```

### Modifying a Table

Add a new column:

```sql
ALTER TABLE users ADD COLUMN phone VARCHAR(20);
```

Rename a column:

```sql
ALTER TABLE users RENAME COLUMN phone TO phone_number;
```

Delete a column:

```sql
ALTER TABLE users DROP COLUMN phone_number;
```

Drop a table:

```sql
DROP TABLE users;
```

## DML (Data Manipulation Language) Queries

### Insert Data

```sql
INSERT INTO users (name, email, age) 
VALUES ('John Doe', 'john@example.com', 28);
```

### Retrieve Data

Select all rows:

```sql
SELECT * FROM users;
```

Select specific columns:

```sql
SELECT name, email FROM users;
```

Filter with WHERE:

```sql
SELECT * FROM users WHERE age > 25;
```

Order results:

```sql
SELECT * FROM users ORDER BY name ASC;
```

Limit number of results:

```sql
SELECT * FROM users LIMIT 5;
```

### Update Data

```sql
UPDATE users 
SET age = 30 
WHERE email = 'john@example.com';
```

### Delete Data

```sql
DELETE FROM users WHERE name = 'John Doe';
```

## Advanced Queries

### Joins

```sql
SELECT users.name, orders.total 
FROM users 
JOIN orders ON users.id = orders.user_id;
```

### Group By & Aggregation

```sql
SELECT age, COUNT(*) FROM users GROUP BY age;
```

### Subquery Example

```sql
SELECT name FROM users 
WHERE id IN (SELECT user_id FROM orders WHERE total > 100);
```

## Transactions

```sql
BEGIN;
UPDATE users SET age = 35 WHERE id = 1;
ROLLBACK;  -- Undo changes
COMMIT;  -- Save changes
```