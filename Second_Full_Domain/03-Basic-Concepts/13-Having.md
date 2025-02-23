In PostgreSQL (psql), the HAVING clause is used in conjunction with the GROUP BY clause to filter the results of aggregate functions. It allows you to specify conditions on grouped records, similar to how the WHERE clause filters individual rows.

## Syntax

```sql
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;
```

## Example Usage

### 1. Filtering Groups with HAVING

Let's say we have a table named `orders`:

| order_id | customer_id | total_amount |
|----------|--------------|--------------|
| 1        | 101          | 500          |
| 2        | 102          | 700          |
| 3        | 101          | 300          |
| 4        | 103          | 1000         |
| 5        | 102          | 400          |

If we want to find customers who have spent more than 1000 in total, we can use HAVING:

```sql
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 1000;
```

### 2. Difference Between HAVING and WHERE

- `WHERE` is used to filter rows before aggregation.
- `HAVING` is used to filter groups after aggregation.

Example:

```sql
-- Filters orders where total_amount > 400 before aggregation
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
WHERE total_amount > 400
GROUP BY customer_id;
```

```sql
-- Filters customer groups where total_spent > 1000 after aggregation
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 1000;
```