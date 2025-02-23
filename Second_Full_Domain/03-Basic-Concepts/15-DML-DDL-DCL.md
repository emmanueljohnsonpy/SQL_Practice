# DML, DDL, and DCL

## 1. DML (Data Manipulation Language)
DML commands are used to manage and manipulate data in the database. Common DML commands:

- **INSERT** – Adds new records into a table
- **UPDATE** – Modifies existing records
- **DELETE** – Removes records from a table
- **SELECT** – Retrieves data from a table

**Example:**

```sql
INSERT INTO customers (name, email) VALUES ('John Doe', 'john@example.com');

UPDATE customers SET email = 'john.doe@example.com' WHERE name = 'John Doe';

DELETE FROM customers WHERE name = 'John Doe';

SELECT * FROM customers;
```

## 2. DDL (Data Definition Language)
DDL commands are used to define and modify database structure (tables, schemas, indexes, etc.). Common DDL commands:

- **CREATE** – Creates database objects like tables, indexes, and views
- **ALTER** – Modifies existing database objects
- **DROP** – Deletes database objects
- **TRUNCATE** – Removes all records from a table but keeps the structure

**Example:**

```sql
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(255) UNIQUE
);

ALTER TABLE customers ADD COLUMN phone VARCHAR(20);

DROP TABLE customers;

TRUNCATE TABLE customers;
```

## 3. DCL (Data Control Language)
DCL commands are used to control user permissions and access. Common DCL commands:

- **GRANT** – Gives privileges to users
- **REVOKE** – Removes privileges from users

**Example:**

```sql
GRANT SELECT, INSERT ON customers TO user1;

REVOKE INSERT ON customers FROM user1;
```