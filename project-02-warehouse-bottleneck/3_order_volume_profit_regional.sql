-- Order volume and profit by region

select
	order_region,
	count(*) as TotalOrders,
	round(sum(cast(order_profit_per_order as decimal(10,2))), 2) as TotalProfit,
	round(avg(cast(order_profit_per_order as decimal(10,2))), 2) as AvgProfitPerOrder,
	round(sum(case when late_delivery_risk = 1 then 1 else 0 end) * 100.0 / count(*), 2) as LatePercent
	from dbo.DataCo
	group by order_region
	order by TotalProfit desc