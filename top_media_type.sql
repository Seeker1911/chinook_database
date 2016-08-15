--Provide a query that shows the most purchased Media Type.
select m.Name, count(il.TrackId) as Sold
from InvoiceLine il, Track t, MediaType m
where il.TrackId = t.TrackId
and t.MediaTypeId = m.MediaTypeId
group by m.MediaTypeId
order by Sold desc
limit 3