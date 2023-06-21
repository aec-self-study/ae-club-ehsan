select 
  customer_id, 
  name, 
  email,
  min(created_at) first_order_at,
  count(*) order_count
from analytics-engineers-club.coffee_shop.orders o
join analytics-engineers-club.coffee_shop.customers c on o.customer_id = c.id
group by 1, 2, 3
order by first_order_at limit 5