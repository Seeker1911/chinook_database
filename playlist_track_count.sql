--Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resultant table.

select p.Name as Playlist, count(t.TrackId) as Total
from Playlist p, PlaylistTrack t
where t.PlaylistId = p.PlaylistId
group by p.Name