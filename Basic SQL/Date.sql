/* Date:
DATE = current_date() it will display the current date
TIME = current_time() it will display the current time
DATETIME = NOW() it will display the current date and time
*/

CREATE TABLE test(
     my_date DATE,
     my_time TIME,
     my_datetime DATETIME
);

INSERT INTO test
VALUES(CURRENT_DATE(), CURRENT_TIME(), NOW());
SELECT * FROM test;

/* 
you can also add more data with different date as tommorow or yesterday.
+ 1 for tommorow
- 1 for yesterday
 */

INSERT INTO test
VALUES(CURRENT_DATE() + 1, CURRENT_TIME(), NOW());
SELECT * FROM test;