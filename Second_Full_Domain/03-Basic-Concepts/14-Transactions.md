# Transactions in PostgreSQL (psql)

A transaction in PostgreSQL ensures that a series of SQL statements execute as a single unit of work, either completing successfully (COMMIT) or rolling back in case of failure (ROLLBACK).

## 1. Basic Transaction Commands

### Begin a Transaction

```sql
BEGIN;
```
or

```sql
START TRANSACTION;
```

### Commit a Transaction

```sql
COMMIT;
```
Saves all changes made during the transaction.

### Rollback a Transaction

```sql
ROLLBACK;
```
Undoes all changes made during the transaction.

## 2. Example Usage

### Example 1: Basic Transaction

```sql
BEGIN;
INSERT INTO users (name, email) VALUES ('John Doe', 'john@example.com');
UPDATE users SET email = 'johndoe@example.com' WHERE name = 'John Doe';
COMMIT;
```
If both statements execute successfully, changes are saved. Otherwise, if an error occurs, changes remain uncommitted.

### Example 2: Rolling Back a Transaction

```sql
BEGIN;
DELETE FROM users WHERE name = 'Jane Doe';
ROLLBACK;
```
The deletion will not be applied due to the ROLLBACK.

## 3. Savepoints (Nested Transactions)

Savepoints allow partial rollbacks within a transaction.

### Example

```sql
BEGIN;
INSERT INTO users (name, email) VALUES ('Alice', 'alice@example.com');

SAVEPOINT sp1;
UPDATE users SET email = 'wrongemail' WHERE name = 'Alice';

ROLLBACK TO SAVEPOINT sp1;
COMMIT;
```
The incorrect update is rolled back, but the insertion of 'Alice' is committed.

## 4. Autocommit Mode

By default, PostgreSQL runs in autocommit mode, meaning each statement is automatically committed unless inside an explicit transaction block.

### To Disable Autocommit:

```sql
SET AUTOCOMMIT TO OFF;
```
Now, changes must be explicitly committed.

## 5. Checking Transaction State

To check if a transaction is active:

```sql
SELECT txid_current();
```

## 6. Advantages of Transactions

- ✅ Ensures atomicity (all or nothing)
- ✅ Prevents inconsistent data in case of errors
- ✅ Enables concurrent transactions safely