## Summary

- Use the `TRUNCATE TABLE` statement to delete all data from a large table very fast. 
- Use the `CASCADE` option to truncate a table that is referenced by foreign key constraints. 
- The `TRUNCATE TABLE` deletes data but does not fire `ON DELETE` triggers. Instead, it fires the `BEFORE TRUNCATE` and `AFTER TRUNCATE` triggers. 
- The `TRUNCATE TABLE` statement is transaction-safe.
