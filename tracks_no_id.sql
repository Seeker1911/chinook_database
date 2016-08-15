--Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album 
--name, Media type and Genre.

select g.Name as Genre, m.Name as Media, a.Title as Album, t.Name as Track
from Track t, MediaType m, Album a, Genre g
where t.MediaTypeId = m.MediaTypeId 
and t.GenreId = g.GenreId
and t.AlbumId = a.AlbumId
order by Track