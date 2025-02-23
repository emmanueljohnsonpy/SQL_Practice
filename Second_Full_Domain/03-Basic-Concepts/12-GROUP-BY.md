In PostgreSQL (PSQL), the `GROUP BY` clause is used to group rows with the same values in specified columns and apply aggregate functions like `COUNT()`, `SUM()`, `AVG()`, `MIN()`, or `MAX()` on those groups.

## Basic Syntax

```sql
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name;
```

## Example: Counting Orders Per Customer

Assume we have an `orders` table:

```yaml
id | customer_id | total_amount | order_date
---+-------------+--------------+------------
 1 |     101     |    500.00    | 2024-01-01
 2 |     102     |    700.00    | 2024-01-02
 3 |     101     |    300.00    | 2024-01-05
 4 |     103     |   1000.00    | 2024-01-07
```

### Get total orders per customer

```sql
SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;
```

**Result:**

```diff
customer_id | total_orders
------------+-------------
    101      |      2
    102      |      1
    103      |      1
```

## Using Multiple Columns in `GROUP BY`

If you want to group by multiple columns, include them in the `GROUP BY` clause.

### Total sales per customer and order date

```sql
SELECT customer_id, order_date, SUM(total_amount) AS total_sales
FROM orders
GROUP BY customer_id, order_date;
```

## Using `HAVING` with `GROUP BY`

The `HAVING` clause is used to filter grouped results.

### Get customers with more than one order

```sql
SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;
```

## Other Aggregate Functions in `GROUP BY`

| Function | Description |
|----------|-------------|
| `COUNT()` | Counts the number of rows in each group |
| `SUM()`   | Computes the sum of a column in each group |
| `AVG()`   | Calculates the average value in each group |
| `MIN()`   | Finds the minimum value in each group |
| `MAX()`   | Finds the maximum value in each group |