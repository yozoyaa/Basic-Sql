/* update data on the tables */

UPDATE your_table
SET column = new_value
WHERE /* Primary key i guess or the data id number where u want to update */ = /* the number or location or name of the data */;

/* examples */

UPDATE Koperasi
SET Phone = '081356548621'
WHERE MemberID = 2311500967;

/* you can also remove the data on selected column by type null */

UPDATE Koperasi
SET Phone = null
WHERE MemberID = 2311500967;

/* if you dont add the Where u wanna change the data location, all the data will changed */

UPDATE Koperasi
SET Phone = null;

/* if you want to delete the entire tables data */

DELETE FROM your_table;

/* Delete on spesific data */

DELETE FROM your_table
WHERE /* Primary key i guess or the data id number where u want to delete */ = /* the number or location or name of the data */;