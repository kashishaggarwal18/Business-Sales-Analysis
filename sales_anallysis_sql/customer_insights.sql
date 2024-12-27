use sales;
-- Which customer spent the most money in the shop?--
Select customer_id, sum(total_price) as money_spent
from orders
group by customer_id
order by money_spent desc
limit 1;

-- How many customers have placed more than 1 orders? --
select customer_id, count(order_id) as no_of_orders
from orders
group by customer_id
having no_of_orders > 1;

-- Find the top 5 customers based on the number of products purchased.--
select o.customer_id, sum(quantity) as no_of_products
from order_items as oi
join orders as o on oi.order_id = o.order_id
group by o.customer_id
order by sum(quantity) desc
limit 5;

-- What is the geographical distribution of customers based on their location?--
select address, count(customer_id) as no_of_customers
from customers
group by address;