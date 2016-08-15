--Provide a query that shows the top 3 best selling artists.
select a.Name, count(i.TrackId) as NumberSold
from InvoiceLine i, Track t, Album b, Artist a
where i.TrackId = t.TrackId
and b.ArtistId = a.ArtistId
and t.AlbumId = b.AlbumId
group by a.ArtistId
order by NumberSold desc limit 3