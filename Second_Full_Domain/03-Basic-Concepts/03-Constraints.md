# Constraints in PostgreSQL (PSQL)

In **PostgreSQL (PSQL)** and relational databases in general, **constraints** are rules enforced on data in a table to maintain **accuracy, integrity, and consistency**. Constraints ensure that invalid data is not inserted or updated in the database.

---

## 🔹 Types of Constraints in PostgreSQL:

### 1️⃣ **PRIMARY KEY**
- Ensures each row in a table is **uniquely identifiable**.
- A column (or a set of columns) marked as a **primary key** must have **unique** and **non-null** values.

**Example:**
```sql
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);
```
📌 Here, `id` is a **primary key**, meaning it must be unique and not null.

---

### 2️⃣ **FOREIGN KEY**
- Maintains **referential integrity** between tables by ensuring a value in one table corresponds to a value in another.
- Prevents deletion of referenced records unless explicitly handled.

**Example:**
```sql
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id) ON DELETE CASCADE
);
```
📌 The `customer_id` in `orders` must match an existing `id` in `customers`. If a customer is deleted, their orders will also be deleted due to `ON DELETE CASCADE`.

---

### 3️⃣ **UNIQUE**
- Ensures all values in a column are **distinct**.
- Unlike **PRIMARY KEY**, multiple **UNIQUE** constraints can exist in a table.

**Example:**
```sql
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE
);
```
📌 `username` must be unique but can have `NULL` values.

---

### 4️⃣ **NOT NULL**
- Ensures a column **cannot store NULL values**.
- Commonly used for essential fields.

**Example:**
```sql
CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
```
📌 `name` cannot be left empty.

---

### 5️⃣ **CHECK**
- Ensures a column's values meet a **specific condition**.

**Example:**
```sql
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    price DECIMAL(10,2) CHECK (price > 0)
);
```
📌 The `price` must always be greater than **0**.

---

### 6️⃣ **DEFAULT**
- Provides a **default value** if none is specified.

**Example:**
```sql
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    status VARCHAR(20) DEFAULT 'Pending'
);
```
📌 If no value is given for `status`, it defaults to `'Pending'`.

---

### 7️⃣ **EXCLUSION**
- Ensures that no two rows satisfy a **specific condition**.

**Example:**
```sql
CREATE TABLE reservations (
    id SERIAL PRIMARY KEY,
    room_no INT,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    EXCLUDE USING gist (room_no WITH =, tstzrange(start_time, end_time) WITH &&)
);
```
📌 Prevents overlapping reservations for the same `room_no`.

---

## 🔥 **Modifying Constraints**

### 🛠 Adding a Constraint:
```sql
ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (email);
```

### 🛠 Dropping a Constraint:
```sql
ALTER TABLE users DROP CONSTRAINT unique_email;
```

---

## ⚡ Summary Table:

| Constraint  | Purpose |
|-------------|---------|
| **PRIMARY KEY** | Uniquely identifies a row (NOT NULL + UNIQUE). |
| **FOREIGN KEY** | Ensures referential integrity between tables. |
| **UNIQUE** | Ensures column values are distinct. |
| **NOT NULL** | Ensures a column cannot be NULL. |
| **CHECK** | Enforces custom conditions on column values. |
| **DEFAULT** | Assigns a default value if none is provided. |
| **EXCLUSION** | Ensures no two rows satisfy a condition. |

