use sales;
-- What is the total sales for each month in the past year?--

Select YEAR(order_date) AS year, month(order_date) as month, sum(total_price) as total_sales
from orders
WHERE YEAR(order_date) = YEAR(DATE_SUB(CURDATE(), INTERVAL 1 YEAR))
group by YEAR(order_date) , month(order_date)
order by month(order_date) desc;

-- Identify trends in customer activity based on order dates (e.g., peak shopping periods)..--

select month(o.order_date), count(distinct customer_id) as orders
from orders as o
group by month(o.order_date)
order by orders desc;
