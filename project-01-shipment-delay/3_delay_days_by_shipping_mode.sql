select
	shipping_mode,
	count(*) as TotalShipments,
	avg(days_for_shipping_real) as AvgActualDays,
	avg(days_for_shipment_scheduled) as AvgScheduleDays,
	AVG(CAST(days_for_shipping_real AS int) - CAST(days_for_shipment_scheduled AS int)) AS AvgDelayDays
from dbo.DataCo
group by shipping_mode
order by AvgDelayDays desc