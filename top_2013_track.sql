--Provide a query that shows the most purchased track of 2013.
select TrackSales.Name, max(TrackSales.TimesPurchased) as TimesPurchased
from (select  t.TrackId, t.Name as Name, i.InvoiceDate,
			strftime("%Y", i.InvoiceDate) as InvoiceYear,
			sum(il.TrackId) as TimesPurchased
	from Track t, Invoice i, InvoiceLine il
	where t.TrackId = il.TrackId
	and i.InvoiceId = il.InvoiceId
	and InvoiceYear = "2013"
	group by t.Name
	order by TimesPurchased
	) as TrackSales