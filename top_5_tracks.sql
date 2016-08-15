--Provide a query that shows the top 5 most purchased tracks over all.
select t.name, count(i.InvoiceLineId) as Count
from InvoiceLine i, Track t
where t.TrackId = i.InvoiceLineId
group by t.Name
order by Count desc limit 5