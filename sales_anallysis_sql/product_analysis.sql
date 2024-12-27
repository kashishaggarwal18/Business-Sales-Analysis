USE sales;
-- Which product has the highest quantity sold?--
SELECT PRODUCT_ID, SUM(QUANTITY) 
FROM ORDER_ITEMS
GROUP BY PRODUCT_ID
ORDER BY SUM(QUANTITY) DESC
limit 1;

-- Find the top 10 most expensive products.--
SELECT product_id, product_name, price
from products
order by price desc
limit 10;

-- How many products have been purchased more than 100 times? --
SELECT PRODUCT_ID, sum(quantity) as purchased_items
from order_items
group by product_id
having purchased_items >100
order by purchased_items desc;