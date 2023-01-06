-- Problem 1 & 2
-- 1. Using JOINs in a single query, combine data from all three tables (employees, products, sales) to view all sales with complete employee and product information in one table.

 --  SELECT * from sales inner join products on sales.ProductID = products.ProductID inner join employees on sales.SalesPersonID = employees.EmployeeID;

-- 2a. Create a View for the query you made in Problem 1 named "all_sales"
-- NOTE: You'll want to remove any duplicate columns to clean up your view!

    -- create view all_sales as SELECT sales.SalesID, sales.CustomerID, sales.quantity, products.name, products.Price, products.ProductID, employees.EmployeeID, employees.FirstName, employees.MiddleInitial, employees.LastName from sales inner join products on sales.ProductID = products.ProductID inner join employees on sales.SalesPersonID = employees.EmployeeID;

-- 2b. Test your View by selecting all rows and columns from the View

	-- select * from all_sales

-- Problem 3
-- Find the average sale amount for each sales person

-- select firstname, lastname avg(price) as 'average sale' from all_sales group by firstname;

-- Problem 4
-- Find the top three sales persons by total sales

  -- select firstname, lastname, sum(quantity * price) as 'total sale' from all_sales group by firstname order by sum(price*quantity) desc limit 3;
-- Problem 5
-- Find the product that has the highest price

-- select name, price from all_sales order by price desc limit 1;

-- Problem 6
-- Find the product that was sold the most times

-- select name, sum(Quantity) as 'total sold' from all_sales group by name order by sum(Quantity) desc limit 1;

-- Problem 7
-- Using a subquery, find all products that have a price higher than the average price for all products

-- select name, price from all_sales where price > (select avg(price) from all_sales) group by name

-- Problem 8
-- Find the customer who spent the most money in purchased products

 -- select CustomerID, sum(Quantity * Price) as 'total spent' from all_sales group by CustomerID
 
 -- id 18723

-- Problem 9
-- Find the total number of sales for each sales person

-- select firstname, lastname, count(salesID) as 'total sales' from all_sales group by lastname

-- Problem 10
-- Find the sales person who sold the most to the customer you found in Problem 8

-- select * from all_sales where CustomerID = 18723
	-- dirk t stringer
    
   -- select name, sum(quantity * price) as 'total sale' from all_sales group by name order by sum(price*quantity) desc
  

