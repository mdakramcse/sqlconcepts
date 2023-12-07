--5 SQL Aggregate Functions 
/*SUM adds together all the values in a particular column.
MIN returns the lowest value in a particular column
MAX returns the highest value in a particular column
AVG calculates the average of a group of selected values.
COUNT counts how many rows are in a particular column.*/

--The SQL aggregate functions like AVG, MIN, and SUM from the previous lesson process an entire column to come up with an answer. But what if you want to aggregate only part of a table?
--GROUP BY command which tells the database to separate your data into groups, which can then be aggregated independently.

SELECT category, SUM(spend)
FROM product_spend
GROUP BY category;

--While GROUP BY isn't exactly used for the purpose of finding duplicates, the command does allow you to collapse multiple rows with the same values into a single row. So, in a way, it could be considered as a way to get rid of duplicates for certain columns.

SELECT ticker, AVG(open)
FROM stock_prices
GROUP BY ticker
ORDER BY avg DESC;

--it takes the FAANG stock data, and finds the average stock open price for each ticker symbol. Then, the ORDER BY clause orders the average stock open price, from highest to lowest:

distinct

--The DISTINCT SQL command is used in conjunction with the SELECT statement to return only distinct (different) values. 

--DISTINCT can be particularly helpful when exploring a new data set.

SELECT category, COUNT(DISTINCT product)
FROM product_spend
GROUP BY category;

