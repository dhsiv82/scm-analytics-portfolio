-- Which region + shipping mode combo is worst?

select
	order_region,
	shipping_mode,
	count(*) as TotalOrders,
	round(sum(case when late_delivery_risk = 1 then 1 else 0 end) * 100.0 / count(*), 2) as LatePercent
from dbo.DataCo
group by order_region, shipping_mode
order by LatePercent desc