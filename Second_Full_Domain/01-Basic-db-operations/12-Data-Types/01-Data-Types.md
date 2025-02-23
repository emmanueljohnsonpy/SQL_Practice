# PostgreSQL Data Types

## 1. Boolean
- Data Type: `BOOLEAN`
- Values: `TRUE`, `FALSE`, `NULL`
- Example:
  ```sql
  CREATE TABLE users (
      is_active BOOLEAN DEFAULT TRUE
  );
  ```

---

## 2. CHAR, VARCHAR, and TEXT
- **CHAR(n)**: Fixed-length character string (padded with spaces).
- **VARCHAR(n)**: Variable-length character string with a limit.
- **TEXT**: Variable-length string without a limit.

**Example:**
```sql
CREATE TABLE employees (
    name VARCHAR(100),
    address TEXT,
    code CHAR(5)
);
```

---

## 3. NUMERIC
- Stores exact numbers with user-defined precision and scale.
- Syntax: `NUMERIC(precision, scale)`
- Example:
  ```sql
  CREATE TABLE payments (
      amount NUMERIC(10, 2)
  );
  ```

---

## 4. DOUBLE PRECISION
- Stores floating-point numbers with high precision (8 bytes).
- Example:
  ```sql
  CREATE TABLE calculations (
      value DOUBLE PRECISION
  );
  ```

---

## 5. REAL
- Stores floating-point numbers with lower precision than `DOUBLE PRECISION` (4 bytes).
- Example:
  ```sql
  CREATE TABLE measurements (
      temperature REAL
  );
  ```

---

## 6. Integer
- **SMALLINT**: 2 bytes, range `-32,768 to 32,767`
- **INTEGER**: 4 bytes, range `-2,147,483,648 to 2,147,483,647`
- **BIGINT**: 8 bytes, range `-9 quintillion to 9 quintillion`

**Example:**
```sql
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    quantity INTEGER
);
```

---

## 7. SERIAL
- Auto-incrementing integer (`INTEGER` with `SEQUENCE`).
- Types: `SMALLSERIAL`, `SERIAL`, `BIGSERIAL`
- Example:
  ```sql
  CREATE TABLE products (
      id SERIAL PRIMARY KEY
  );
  ```

---

## 8. DATE
- Stores a date without time.
- Example:
  ```sql
  CREATE TABLE events (
      event_date DATE
  );
  ```

---

## 9. TIMESTAMP
- Stores date and time.
- Example:
  ```sql
  CREATE TABLE logs (
      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );
  ```

---

## 10. Interval
- Stores a time span (e.g., days, hours, minutes).
- Example:
  ```sql
  CREATE TABLE subscriptions (
      duration INTERVAL
  );
  ```

---

## 11. TIME
- Stores time (without date).
- Example:
  ```sql
  CREATE TABLE schedules (
      opening_time TIME
  );
  ```

---

## 12. UUID
- Stores a universally unique identifier.
- Example:
  ```sql
  CREATE TABLE users (
      id UUID DEFAULT gen_random_uuid() PRIMARY KEY
  );
  ```

---

## 13. JSON
- Stores JSON data.
- Example:
  ```sql
  CREATE TABLE products (
      details JSON
  );
  ```

---

## 14. HSTORE
- Key-value pair storage (like a dictionary).
- Example:
  ```sql
  CREATE TABLE settings (
      config HSTORE
  );
  ```

---

## 15. Array
- Stores multiple values of the same type.
- Example:
  ```sql
  CREATE TABLE students (
      scores INTEGER[]
  );
  ```

---

## 16. User-defined Data Types
- Custom types can be created using `CREATE TYPE`.

---

## 17. Enum
- Stores predefined values.
- Example:
  ```sql
  CREATE TYPE mood AS ENUM ('happy', 'sad', 'neutral');
  ```

---

## 18. XML
- Stores XML data.
- Example:
  ```sql
  CREATE TABLE docs (
      content XML
  );
  ```

---

## 19. BYTEA
- Stores binary data (e.g., images, files).
- Example:
  ```sql
  CREATE TABLE files (
      file_data BYTEA
  );
  ```

---

## 20. Composite Types
- Combines multiple fields into one type.
- Example:
  ```sql
  CREATE TYPE full_name AS (
      first_name TEXT,
      last_name TEXT
  );
  ```

---

