Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
Playlist name
Total number of tracks on each playlist


SELECT p.Name, Count(t.TrackId = p.PlaylistId) AS Number_Of_Tracks
FROM Playlist AS p
JOIN PlaylistTrack AS pt
ON p.PlaylistId = pt.PlaylistId
JOIN Track AS t 
ON pt.TrackId = t.TrackID
GROUP By p.Name
