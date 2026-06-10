-- Which regions have the highest late delivery rate?

select
	order_region,
	count(*) as TotalOrders,
	sum(case when late_delivery_risk = 1 then 1 else 0 end) as LateOrders,
	round(sum(case when late_delivery_risk = 1 then 1 else 0 end) * 100.0 / count(*), 2) as LatePercent,
	avg(cast(days_for_shipping_real as int)) as AvgActualDays,
	avg(cast(days_for_shipment_scheduled as int)) as AvgScheduledDays
from dbo.DataCo
group by order_region
order by LatePercent desc