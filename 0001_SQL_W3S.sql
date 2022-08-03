SELECT * FROM Products;
SELECt * FROM Customers;



/* Some of The Most Important SQL Commands


SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
CREATE DATABASE - creates a new database
ALTER DATABASE - modifies a database
CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index

*/




# The following SQL statement selects the "CustomerName" and "City" columns from the "Customers" table:

SELECT CustomerName,City FROM Customers;



# The following SQL statement selects all the columns from the "Customers" table:

SELECT * FROM Customers;




# The SELECT DISTINCT statement is used to return only distinct (different) values.

SELECT DISTINCT Country FROM Customers;



#The following SQL statement lists the number of different (distinct) customer countries:

SELECT COUNT(DISTINCT Country) FROM Customers;


#The WHERE clause is used to filter records.

SELECT * FROM Customers
WHERE Country='Mexico';


SELECT * FROM Customers
WHERE CustomerID=1;


# The following operators can be used in the WHERE clause:

SELECT * FROM Products
WHERE Price = 18;

SELECT * FROM Products
WHERE Price > 30;

SELECT * FROM Products
WHERE Price < 30;

SELECT * FROM Products
WHERE Price >= 30;


SELECT * FROM Products
WHERE Price <= 30;

SELECT * FROM Products
WHERE Price <> 18;  # Not Equal

SELECT * FROM Products
WHERE Price BETWEEN 50 AND 60;


SELECT * FROM Customers
WHERE City LIKE 's%'; # Search for a pattern ---> City name starting with 's'


SELECT * FROM Customers
WHERE City IN ('Paris','London'); # To specify multiple possible values for a column


# The WHERE clause can be combined with AND, OR, and NOT operators.

SELECT * FROM Customers
WHERE Country='Germany' AND City='Berlin';


SELECT * FROM Customers
WHERE City='Berlin' OR City='München';


SELECT * FROM Customers
WHERE Country='Germany' OR Country='Spain';


SELECT * FROM Customers
WHERE NOT Country='Germany';


SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');


SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';


# The ORDER BY keyword is used to sort the result-set in ascending or descending order.
SELECT * FROM Customers
ORDER BY Country;

SELECT * FROM Customers
ORDER BY Country DESC;


#This means that it orders by Country, but if some rows have the same Country, it orders them by CustomerName:

SELECT * FROM Customers
ORDER BY Country, CustomerName;


SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;


# The INSERT INTO statement is used to insert new records in a table.

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');


# It is also possible to only insert data in specific columns.

INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

