--Provide a query that includes the purchased track name AND artist name with each invoice line item.
select t.Name, a.Name, i.InvoiceLineId
from Track t, Artist a, InvoiceLine i, Album l
where t.TrackId = i.TrackId
and t.AlbumId = l.AlbumId
and a.ArtistId = l.ArtistId
order by a.Name

