--- Note: A NULL value is different from a zero value or a field that contains spaces. 
--- A field with a NULL value is one that has been left blank during record creation!

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

# Tip: Always use IS NULL to look for NULL values.

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;


--- The UPDATE statement is used to modify the existing records in a table.


/* Note: Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. 
The WHERE clause specifies which record(s) that should be updated. 
If you omit the WHERE clause, all records in the table will be updated! */

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;


--- The following SQL statement will update the ContactName to "Juan" for all records where country is "Mexico":

UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

---The DELETE statement is used to delete existing records in a table.

/* Note: Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement. 
The WHERE clause specifies which record(s) should be deleted. 
If you omit the WHERE clause, all records in the table will be deleted! */


DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

---The following SQL statement deletes all rows in the "Customers" table, without deleting the table:

DELETE FROM Customers;


---The SQL SELECT TOP Clause
---The following SQL statement selects the first three records from the "Customers" table (for SQL Server/MS Access):

SELECT TOP 3 * FROM Customers;


---The following SQL statement selects the first 50% of the records from the "Customers" table (for SQL Server/MS Access):
SELECT TOP 50 PERCENT * FROM Customers;


/* The following SQL statement selects the first three records from the "Customers" table, 
    where the country is "Germany" (for SQL Server/MS Access): */
    
SELECT TOP 3 * FROM Customers
WHERE Country='Germany';


---MIN() Example

SELECT MIN(Price) AS SmallestPrice
FROM Products; --- from Products Table


---MAX() Example

SELECT MAX(Price) AS LargestPrice
FROM Products;


---COUNT() Example

SELECT COUNT(ProductID)
FROM Products;


SELECT COUNT (*)
FROM Products
WHERE Price = 18;

---Note: NULL values are not counted.


---AVG() Example

SELECT AVG(Price)
FROM Products;


---SUM() Example

SELECT SUM(Quantity)
FROM OrderDetails;


/*
The SQL LIKE Operator
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

There are two wildcards often used in conjunction with the LIKE operator:

 The percent sign (%) represents zero, one, or multiple characters
 The underscore sign (_) represents one, single character
 
 
 Tip: You can also combine any number of conditions using AND or OR operators.

Here are some examples showing different LIKE operators with '%' and '_' wildcards:

LIKE Operator	Description

WHERE CustomerName LIKE 'a%'	Finds any values that start with "a"
WHERE CustomerName LIKE '%a'	Finds any values that end with "a"
WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position
WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position
WHERE CustomerName LIKE 'a_%'	Finds any values that start with "a" and are at least 2 characters in length
WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
WHERE ContactName LIKE 'a%o'	Finds any values that start with "a" and ends with "o"


 
 */
 
---CustomerName starting with "a":

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';


---CustomerName ending with "a":

SELECT * FROM Customers
WHERE CustomerName LIKE '%a';


---CustomerName that have "or" in any position: 

SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';


---CustomerName that have "r" in the second position:

SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';

---CustomerName that starts with "a" and are at least 3 characters in length:

SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';

---ContactName that starts with "a" and ends with "o":

SELECT * FROM Customers
WHERE ContactName LIKE 'a%o';

---CustomerName that does NOT start with "a":

SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'a%';


---SQL Wildcards









