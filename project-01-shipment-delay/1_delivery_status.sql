select
	delivery_status,
	count(*) as Count
from dbo.DataCo
group by delivery_status
order by Count desc