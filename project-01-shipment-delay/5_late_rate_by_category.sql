select
	category_name,
	count(*) as TotalOrders,
	sum(case when late_delivery_risk = 1 then 1 else 0 end) as LateOrders,
	round(sum(case when late_delivery_risk = 1 then 1 else 0 end) * 100 / count(*), 2) as LatePercent,
	round(sum(cast(order_profit_per_order as decimal(10,2))), 2) as TotalProfit
from dbo.DataCo
group by category_name
order by TotalProfit desc