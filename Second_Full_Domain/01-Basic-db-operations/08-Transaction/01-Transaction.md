
### ACID Properties

**A - Atomicity (All or Nothing)**

If you want to add ₹10 to your savings, it must happen fully or not at all. If you accidentally drop your pencil while writing, the notebook won’t save a half-written number.

**C - Consistency (Follow the Rules)**

If you start with ₹50 and add ₹10, your total must be ₹60. The notebook won’t allow wrong calculations like ₹55 or ₹65.

**I - Isolation (No Mixing Up)**

If your sibling also writes in their notebook at the same time, your savings stay separate. Their updates won’t mess up your total.

**D - Durability (Never Forget)**

Even if you close the notebook and reopen it later, your savings remain exactly as you left them. It never loses track of your money.


## Summary

- Use the `BEGIN` statement to explicitly start a transaction.
- Use the `COMMIT` statement to apply the changes permanently to the database.
- Use the `ROLLBACK` statement to undo the changes made to the database during the transaction.
