select
	shipping_mode,
	count(*) as TotalShipments,
	sum(case when late_delivery_risk = 1 then 1 else 0 end) as LateCount,
	round(
		sum(case when late_delivery_risk = 1 then 1 else 0 end) * 100.0 / count(*), 2
		) as LatePercent
from dbo.DataCo
group by shipping_mode
order by LatePercent desc