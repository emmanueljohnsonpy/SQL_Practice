In PostgreSQL (psql), relationships between tables are managed using foreign keys. These relationships help maintain referential integrity and establish connections between different tables.

## Types of Relationships in PostgreSQL

### 1. One-to-One (1:1) Relationship
Each record in Table A is related to only one record in Table B.

**Example:**

```sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE profiles (
    id SERIAL PRIMARY KEY,
    user_id INT UNIQUE REFERENCES users(id),
    bio TEXT
);
```

The `profiles` table has a `user_id` field that uniquely references the `users(id)`, ensuring a one-to-one relationship.

### 2. One-to-Many (1:M) Relationship
One record in Table A can be associated with multiple records in Table B.

**Example:**

```sql
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id),
    order_date TIMESTAMP DEFAULT NOW()
);
```

One customer can have multiple orders, but each order belongs to only one customer.

### 3. Many-to-Many (M:N) Relationship
Multiple records in Table A can be associated with multiple records in Table B, usually using a junction table.

**Example:**

```sql
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100)
);

CREATE TABLE student_courses (
    student_id INT REFERENCES students(id),
    course_id INT REFERENCES courses(id),
    PRIMARY KEY (student_id, course_id)
);
```

The `student_courses` table serves as a junction table, linking students and courses in a many-to-many relationship.
