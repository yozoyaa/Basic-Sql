/* UNIQUE :
    a unique constraint is a database constraint that ensures the values in a column or a group of columns 
are unique across all the rows in a table. This means that no two rows can have the same values in the specified column(s). 
If a unique constraint is applied to multiple columns, the combination of values in those columns must be unique.

Here's a brief explanation:

Purpose:
    Ensures that a particular column or combination of columns does not contain duplicate values.
Often used to enforce the uniqueness of identifiers or keys within a table.

Declaration:
    A unique constraint is declared during the creation of a table using the UNIQUE keyword.
*/

/* example */
CREATE TABLE example_table (
    id INT UNIQUE,
    username VARCHAR(50) UNIQUE
);

/* adding unique to a spesific column */
ALTER TABLE example_table
ADD UNIQUE (column_name);


/* NOT NULL :
    NOT NULL constraint is used to ensure that a column cannot contain NULL values. 
When a column is defined as NOT NULL, it means that every row in the table must have a non-null value for that column. 
This constraint helps enforce data integrity by requiring that certain columns always have a value.
*/
CREATE TABLE table_name (
    column_name datatype NOT NULL,
    -- other columns...
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT
);
-- Inserting data with NOT NULL constraint
INSERT INTO students (student_id, name, age) VALUES
    (1, 'John Doe', 20),
    (2, 'Jane Smith', 22),
    (3, 'Bob Johnson', NULL); -- This would result in an error because the 'name' column is NOT NULL

    -- Attempting to insert data with a NULL value for 'name'
    -- would result in an error due to the NOT NULL constraint.

/* How to modify a columns to add NOT NULL CONSTRAINT */

ALTER TABLE products
MODIFY age decimal(4, 2) NOT NULL;

/* CHECK : 
    Check constraint is to used to limit what values can be place to a column

For examples: if you want to make a employee tables but only with salary more than 10$
 */

 /* Add check constraint when creating a table */

 CREATE TABLE employees(
	employee_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	hourly_pay DECIMAL (5, 2),
	hire_date DATE, 
	CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00)
);

-- you can name ur check constraint in this case its chk_hourly_pay

/* add check constraint to existing table */

ALTER TABLE employees
ADD CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00);

/* since the check is hourly_pay >= 10, you cant insert values or data that have hourly_pay < 10 */

INSERT INTO employees
VALUES (6, "Sheldon", "Plankton", 5.00, "2023-01-07"); 

-- so that means this code will have an error

/* deleting check constraint */

ALTER TABLE employees
DROP CHECK chk_hourly_pay;


/* Default :
    default constraint when inserting a new row if we do not specify a value for a column by default we can 
    add some value that we set
*/

/* EXAMPLE 1 
set a default to a price when creating a table */
CREATE TABLE products (
    product_id INT,
    product_name varchar(25),
    price DECIMAL(4, 2) DEFAULT 0
);
    -- as you can see we set the default value for price is set to 0 so when u inserting new values or data to a table without
    -- inserting the values of price, it will automatically set to 0

/* Set default to a price with existing table */
ALTER TABLE products 
ALTER price SET DEFAULT 0;

/* inserting new data without adding the new price value to a table */
INSERT INTO products (product_id, product_name)
VALUES	(104, "straw"),
		(105, "napkin"),
		(106, "fork"),
        (107, "spoon");
SELECT * FROM products;
    -- when you run this code, the value of price on the new items will set by default in this case is 0 */

/* EXAMPLE 2
now we gonna make a transaction table, in this case we add a default value of transaction_date by NOW() which is current date and time
*/
CREATE TABLE transactions(
        transaction_id INT,
    	amount DECIMAL(5, 2),
   	transaction_date DATETIME DEFAULT NOW()
);
SELECT * FROM transactions;
    -- so now we create a table we gonna insert the new transaction to a table and it will add the transaction_date by default

INSERT INTO transactions (transaction_id, amount)
VALUES	(1, 4.99);
SELECT * FROM transactions;

INSERT INTO transactions (transaction_id, amount)
VALUES	(2, 2.89);
SELECT * FROM transactions;

INSERT INTO transactions (transaction_id, amount)
VALUES	(3, 8.37);
SELECT * FROM transactions;
