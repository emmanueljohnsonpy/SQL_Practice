# ACID Properties in SQL

ACID properties ensure the reliability of database transactions. ACID stands for:

## 1. Atomicity
A transaction is **all or nothing**. If any part of the transaction fails, the entire transaction is rolled back.

- **Example**: If you're transferring money between accounts, both the debit and credit must succeed, or neither should happen.

## 2. Consistency
A transaction must bring the database from one valid state to another, maintaining **integrity constraints**.

- **Example**: If a transaction violates a unique constraint, it is rolled back to maintain data consistency.

## 3. Isolation
Transactions occur **independently**, preventing conflicts between concurrent operations.

- **Example**: If two users are booking the last ticket simultaneously, one should succeed while the other fails or waits.

## 4. Durability
Once a transaction is **committed**, it remains permanent even in case of a system failure.

- **Example**: If power goes out after a successful transaction, the changes remain intact after reboot.

These properties help databases handle concurrent transactions **safely and reliably**. 🚀
