# Note: A NULL value is different from a zero value or a field that contains spaces. 
# A field with a NULL value is one that has been left blank during record creation!

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

# Tip: Always use IS NULL to look for NULL values.

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;

