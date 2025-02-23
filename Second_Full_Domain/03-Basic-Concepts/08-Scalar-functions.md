In PostgreSQL (PSQL), a scalar function is a function that returns a single value (scalar) rather than a set of rows. These functions can be built-in or user-defined.

### Types of Scalar Functions in PSQL

#### String Functions
Used for string manipulation.  
Example:
```sql
SELECT LENGTH('PostgreSQL');  -- Returns 10
SELECT UPPER('hello world');  -- Returns 'HELLO WORLD'
SELECT LOWER('HELLO');        -- Returns 'hello'
SELECT CONCAT('Postgre', 'SQL');  -- Returns 'PostgreSQL'
```

#### Mathematical Functions
Perform mathematical operations.  
Example:
```sql
SELECT ABS(-10);   -- Returns 10
SELECT ROUND(3.14159, 2);  -- Returns 3.14
SELECT CEIL(2.3);  -- Returns 3
SELECT FLOOR(2.9); -- Returns 2
SELECT POWER(2, 3); -- Returns 8 (2³)
```

#### Date & Time Functions
Operate on date and time values.  
Example:
```sql
SELECT NOW();       -- Returns the current timestamp
SELECT CURRENT_DATE; -- Returns the current date
SELECT EXTRACT(YEAR FROM NOW()); -- Extracts the year
SELECT AGE('2025-01-01'); -- Returns age from the given date
```

#### Type Conversion Functions
Convert one data type to another.  
Example:
```sql
SELECT CAST('123' AS INTEGER); -- Converts string to integer
SELECT TO_CHAR(12345, '99999'); -- Returns '12345' as text
```

#### User-Defined Scalar Functions
You can create your own scalar functions using PL/pgSQL.  
Example: Creating a function to calculate the square of a number
```sql
CREATE FUNCTION square(num INTEGER) RETURNS INTEGER AS $$
BEGIN
    RETURN num * num;
END;
$$ LANGUAGE plpgsql;

-- Usage
SELECT square(5); -- Returns 25
```

### Key Takeaways
- Scalar functions return a single value
- Can be built-in (e.g., `UPPER()`, `ROUND()`) or user-defined
- Useful for string, mathematical, date-time, and type conversions
