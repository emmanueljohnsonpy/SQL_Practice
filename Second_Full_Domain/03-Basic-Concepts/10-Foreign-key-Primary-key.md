In PostgreSQL (psql), Primary Keys and Foreign Keys are essential for defining relationships between tables. Here's how they work:

### 1. Primary Key in PostgreSQL
A Primary Key (PK) is a column or a combination of columns that uniquely identifies a row in a table. It must be unique and not NULL.

**Example of a Primary Key:**

```sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150) UNIQUE
);
```

- `id` is the Primary Key (automatically increments with SERIAL).
- `email` is unique, meaning no two users can have the same email.

### 2. Foreign Key in PostgreSQL
A Foreign Key (FK) is a column that establishes a relationship between two tables. It references the Primary Key of another table to ensure data integrity.

**Example of a Foreign Key:**

```sql
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    amount DECIMAL(10,2) NOT NULL
);
```

- `user_id` is a Foreign Key that references `id` in the `users` table.
- `ON DELETE CASCADE` means if a user is deleted, their orders will also be deleted.

### 3. Composite Primary Key
You can define a Primary Key on multiple columns.

**Example of a Composite Primary Key:**

```sql
CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, product_id)
);
```

- The combination of `order_id` and `product_id` must be unique.

### 4. Foreign Key with CONSTRAINT

**Example of a Foreign Key with CONSTRAINT:**

```sql
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    user_id INT,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL
);
```

- If a user is deleted, `user_id` in `orders` will be set to NULL.
