## Summary

- Use the `NOT NULL` constraint for a column to enforce that the column does not accept `NULL` values. By default, a column can hold `NULL`.

- To check if a value is `NULL` or not, use the `IS NULL` operator. The `IS NOT NULL` operator negates the result of `IS NULL`.

- Never use the equal operator `=` to compare a value with `NULL` because it always returns `NULL`.