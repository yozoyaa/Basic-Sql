/*
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


/*
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

ALTER TABLE products
MODIFY age decimal(4, 2) NOT NULL;

