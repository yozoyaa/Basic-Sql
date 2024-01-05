/*
SELECT statement in MySQL is used to retrieve data from one or more tables in a database. 
Here's a breakdown of the basic syntax and some examples:
*/

/*Basic SELECT Syntax: */

SELECT column1, column2, ...
FROM table_name
WHERE condition;

/* SELECT: Specifies the columns you want to retrieve.
FROM: Specifies the table from which to retrieve the data.
WHERE (optional): Filters the rows based on a specified condition. */

/* Example:
Assuming you have a table named employees: */


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
INSERT INTO employees (employee_id, first_name, last_name, department, salary)
VALUES
    (1, 'John', 'Doe', 'HR', 50000.00),
    (2, 'Jane', 'Smith', 'IT', 60000.00),
    (3, 'Bob', 'Johnson', 'Finance', 55000.00),
    (4, 'Alice', 'Williams', 'HR', 52000.00);


/* Selecting All Columns: */
SELECT * FROM employees;

/*  Selecting Specific Columns: */
SELECT employee_id, first_name, salary 
FROM employees;

/* Filtering with WHERE Clause: */
SELECT * FROM employees 
WHERE department = 'HR';

/* Sorting with ORDER BY: */
SELECT * FROM employees ORDER BY salary DESC;

/* Aggregate Functions (e.g., SUM, AVG): */
SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department;

/* Joins (e.g., INNER JOIN): */
SELECT employees.employee_id, employees.first_name, employees.salary, departments.department_name
FROM employees
INNER JOIN departments ON employees.department = departments.department_id;

/* Limiting Results with LIMIT: */
SELECT * FROM employees LIMIT 2;

/* Others example */

SELECT *
FROM employees
WHERE hourly_pay >= 15;

SELECT hire_date, first_name
FROM employees
WHERE hire_date <= "2023-01-03";

SELECT *
FROM employees
WHERE employee_id != 1;

SELECT *
FROM employees
WHERE hire_date IS NULL;

SELECT *
FROM employees
WHERE hire_date IS NOT NULL;