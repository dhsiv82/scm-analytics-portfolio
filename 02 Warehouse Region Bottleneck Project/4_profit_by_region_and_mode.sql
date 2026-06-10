-- Shipping mode usage by region -- are high profit regions
-- using the worst performing shipping mode?

select
	order_region,
	shipping_mode,
	count(*) as TotalOrders,
	round(sum(cast(order_profit_per_order as decimal(10,2))), 2) as TotalProfit
from dbo.DataCo
group by order_region, shipping_mode
order by order_region, TotalOrders desc