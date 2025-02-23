# 3-Schema Architecture in PostgreSQL

A 3-schema architecture in PostgreSQL (or any relational database) is a conceptual framework for database design that organizes data at three levels:

- **External Schema (View Level)**
- **Conceptual Schema (Logical Level)**
- **Internal Schema (Physical Level)**

## 1. External Schema (View Level)

- The user's perspective of the database.
- Defines different views for different users.
- Implements access control and security restrictions.

**Example:** A customer may only see their orders, while an admin sees all orders.

**In PostgreSQL:**
- Implemented using views and roles.

**Example:**

```sql
CREATE VIEW customer_orders AS
SELECT order_id, customer_name, total_amount
FROM orders
WHERE customer_id = CURRENT_USER;
```

## 2. Conceptual Schema (Logical Level)

- The entire database structure as seen by developers and DBAs.
- Defines tables, relationships, constraints, and business rules.
- Independent of physical storage.

**In PostgreSQL:**
- Implemented using schemas, tables, constraints, and relations.

**Example:**

```sql
CREATE SCHEMA ecommerce;

CREATE TABLE ecommerce.orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES ecommerce.customers(id),
    total_amount DECIMAL(10,2) NOT NULL
);
```

## 3. Internal Schema (Physical Level)

- The storage-level representation of the database.
- Manages indexes, partitions, data files, and physical storage.
- Optimized for performance.

**In PostgreSQL:**
- Implemented using tablespaces, indexing, and partitions.

**Example:**

```sql
CREATE INDEX idx_orders_customer_id ON ecommerce.orders(customer_id);

CREATE TABLE ecommerce.orders_partitioned (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    total_amount DECIMAL(10,2) NOT NULL
) PARTITION BY RANGE (total_amount);
```

## Summary

| Level      | Description                                | PostgreSQL Implementation            |
|------------|--------------------------------------------|--------------------------------------|
| External   | User views & access control                | Views, Roles, Permissions            |
| Conceptual | Logical schema (tables, constraints, relations) | Schemas, Tables, Foreign Keys        |
| Internal   | Physical storage (performance, indexing)   | Tablespaces, Indexes, Partitions     |

This architecture ensures data abstraction, security, and performance optimization. 🚀