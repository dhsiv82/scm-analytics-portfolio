select top 10
	category_name,
	count(*) as orders,
	round(sum(cast(order_profit_per_order as decimal(10,2))), 2) as TotalProfit,
	round(avg(cast(order_item_profit_ratio as decimal(10,4))), 4) as AvgProfitRatio
from dbo.DataCo
group by category_name
order by TotalProfit desc