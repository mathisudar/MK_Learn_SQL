
# The following SQL statement creates a database called "testDB":
CREATE DATABASE testDB;

# The DROP DATABASE statement is used to drop an existing SQL database.
DROP DATABASE testDB;

SHOW DATABASES;


# The following SQL statement creates a full back up of the existing database "testDB" to the D disk:

BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak';


# Tip: Always back up the database to a different drive than the actual database. 
# Then, if you get a disk crash, you will not lose your backup file along with the database.



# The following SQL statement creates a differential back up of the database "testDB":
# Tip: A differential back up reduces the back up time (since only the changes are backed up).

BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak'
WITH DIFFERENTIAL;



# CREATE TABLE

CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);


# The following SQL creates a new table called "TestTables" (which is a copy of the "Customers" table): 

CREATE TABLE TestTable AS
SELECT customername, contactname
FROM customers;


# Note: Be careful before dropping a table. Deleting a table will result in loss of complete information stored in the table!

DROP TABLE Shippers;


# The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.

TRUNCATE TABLE table_name;


# The following SQL adds an "Email" column to the "Customers" table:

ALTER TABLE Customers
ADD Email varchar(255);


ALTER TABLE Persons
ADD DateOfBirth date;

ALTER TABLE Persons
ALTER COLUMN DateOfBirth year;



# The following SQL deletes the "Email" column from the "Customers" table:

ALTER TABLE Customers
DROP COLUMN Email;


# Add a column of type DATE called Birthday.

ALTER TABLE Persons
ADD Birthday date;



# SQL Constraints

/*

The following constraints are commonly used in SQL:

NOT NULL - Ensures that a column cannot have a NULL value
UNIQUE - Ensures that all values in a column are different
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
FOREIGN KEY - Prevents actions that would destroy links between tables
CHECK - Ensures that the values in a column satisfies a specific condition
DEFAULT - Sets a default value for a column if no value is specified
CREATE INDEX - Used to create and retrieve data from the database very quickly

*/

# The following SQL ensures that the "ID", "LastName", and "FirstName" columns will NOT accept NULL values when the "Persons" table is created:

# Example

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);


ALTER TABLE Persons
MODIFY Age int NOT NULL;


CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);


# To name a UNIQUE constraint, and to define a UNIQUE constraint on multiple columns, use the following SQL syntax:

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT UC_Person UNIQUE (ID,LastName)
);


# To create a UNIQUE constraint on the "ID" column when the table is already created, use the following SQL:

ALTER TABLE Persons
ADD UNIQUE (ID);


# To name a UNIQUE constraint, and to define a UNIQUE constraint on multiple columns, use the following SQL syntax:

ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);


# To drop a UNIQUE constraint, use the following SQL:

ALTER TABLE Persons
DROP CONSTRAINT UC_Person;

