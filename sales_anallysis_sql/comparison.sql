use sales;
-- Compare the number of orders placed in the current month with the previous month --
select count(*) as current_month_orders, (select count(*)
from orders
where month(order_date) = month(date_sub(curdate(), interval 1 month))) as previous_month_orders
from orders
where month(order_date) = month(curdate());
