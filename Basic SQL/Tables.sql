/* make sure to use the database first before creating table */

CREATE TABLE /* Table name */ (
    /* Column name */ char(11) NOT NULL,
    /* Column name */ varchar(255),
    /* Column name */ varchar(255),
    /* Column name */ varchar(255),
    /* Column name */ varchar(255),
    /* Column name */ varchar(255),
    /* Column name */ date,
    PRIMARY KEY (/* Column name */)
);

/* Rename A table */
RENAME TABLE /* Table name */ TO /* Table name */;

/* Drop table or column */
DROP /* Column or Table */ /* Column or Table name */;

/* Adding more columns on the tables */
ALTER TABLE /* Table name */
ADD /* Column name */ /* Data types */;

/* Rename Column */
ALTER TABLE /* Table name */
RENAME COLUMN /* Column name */ TO /* Column name */;

/* MODIFY The datatypes on the columns */
ALTER TABLE /* Table name */
MODIFY COLUMN /* Column name */ /* Data types */;

/* Move the columns USING BEFORE OR AFTER the columns */
ALTER TABLE /* Table name */
MODIFY /* Column name */ /* Data types */;
/* BEFORE OR AFTER */ /* Column name */;

/* Move the columns using FIRST OR LAST */
ALTER TABLE /* Table name */
MODIFY /* Column name */ /* Data types */;
/* FIRST OR LAST */;

/* 
primary key is a special kind of database constraint used to uniquely identify each record in a table. Here's a brief explanation:

Purpose: The primary key ensures that each row in a table is uniquely identified. It provides a way to link data in different tables and maintain data integrity.

Characteristics:

It must contain unique values; no two rows can have the same primary key value.
It cannot have a NULL value, meaning every record must have a value for the primary key.
Usage:

Often used in relationships between tables, where the primary key of one table is referenced as a foreign key in another table.
Enables fast and efficient retrieval of specific records.
Declaration:

Declared during the table creation using the PRIMARY KEY constraint.
 */

/* 
All The data types in Mysql 
Numeric Types:

INT or INTEGER: A standard integer that can store signed values.
TINYINT: A very small integer.
SMALLINT: A small integer.
MEDIUMINT: A medium-sized integer.
BIGINT: A large integer.
FLOAT: A single-precision floating-point number.
DOUBLE: A double-precision floating-point number.
DECIMAL or NUMERIC: A fixed-point decimal number.
String Types:

CHAR(n): Fixed-length character string.
VARCHAR(n): Variable-length character string.
TINYTEXT, TEXT, MEDIUMTEXT, LONGTEXT: Various sizes of text storage.
BINARY(n): Fixed-length binary string.
VARBINARY(n): Variable-length binary string.
TINYBLOB, BLOB, MEDIUMBLOB, LONGBLOB: Various sizes of binary large objects.
Date and Time Types:

DATE: Date value (YYYY-MM-DD).
TIME: Time value (HH:MM:SS).
DATETIME: Combination of date and time (YYYY-MM-DD HH:MM:SS).
TIMESTAMP: Similar to DATETIME but automatically updated on record modification.
YEAR: A four-digit year value.
Miscellaneous Types:

BOOLEAN or BOOL: Synonyms for TINYINT(1), representing boolean values (0 or 1).
ENUM: A enumeration, which is a set of predefined values.
SET: A set of values chosen from a predefined list.
JSON: JSON data type for storing JSON-formatted data.
Spatial Data Types:

GEOMETRY: For storing spatial geometry values.
POINT, LINESTRING, POLYGON, etc.: Specific spatial types representing different geometric shapes. 
*/