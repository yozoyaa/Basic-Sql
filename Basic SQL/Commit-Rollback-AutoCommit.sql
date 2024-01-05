/* 
AUTOCOMMIT:
By default, MySQL operates in autocommit mode. This means that each SQL statement you execute is treated as a transaction by itself, and it is automatically committed to the database.
In autocommit mode, you don't need to explicitly use the COMMIT statement; changes are automatically saved.
*/
/* Autocommit mode is enabled by default
Each statement is treated as a separate transaction */
INSERT INTO your_table (column1, column2) VALUES (value1, value2);  
/* The above statement is automatically committed */


/*
COMMIT:
The COMMIT statement is used to make permanent the changes made during the current transaction. It is typically used when you want to ensure that the changes are saved to the database. 
*/
/* Start a transaction explicitly */
START TRANSACTION;
/* Perform some operations */
UPDATE your_table SET column = 'new_value' WHERE condition;
/* Commit the changes to make them permanent */
COMMIT;


/* 
ROLLBACK:
The ROLLBACK statement is used to undo changes made during the current transaction and restore the database to the state it was in at the beginning of the transaction.
If an error occurs or if you decide to discard the changes, you can issue a ROLLBACK to revert the database to its previous state. */
/* Start a transaction explicitly */
START TRANSACTION;
/* Perform some operations */
UPDATE your_table SET column = 'new_value' WHERE condition;
/* Oops, something went wrong or we want to discard the changes */
ROLLBACK;

