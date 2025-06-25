--Сreated CTE to categorize prices in the products table based on the price column, then grouped the data by the created categories, counted their number, and sorted in descending order

WITH price_table AS (SELECT
	CASE
    	WHEN price < 100 THEN 'Low Price'
        WHEN price >=100 AND PRICE <=500 THEN 'Medium Price'
        WHEN price > 500 THEN 'High Price'
    END AS price_product
FROM products)
SELECT 
	price_product,
	COUNT(price_product)
FROM price_table
GROUP BY price_product
ORDER BY COUNT(price_product) DESC;


