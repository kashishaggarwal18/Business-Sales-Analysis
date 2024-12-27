-- easy questions--
-- create database sales;
use sales;
-- What is the total number of products listed in the shop?--
select count(product_id) as total_products
from products;

-- How many unique categories of products exist?--
Select distinct(category)
from products;

-- What is the average price of products in each category?--
select avg(price) as average_price
from products
group by category;

-- Which customer has made the highest number of orders?--
select distinct(customer_id), count(*) as total_orders
from orders
group by customer_id
order by count(*) desc
limit 1;

-- What is the total number of orders placed by each customer?--
Select customer_id, count(*) as total_orders
from orders
group by customer_id;