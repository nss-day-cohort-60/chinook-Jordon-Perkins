Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
Playlist name
Total number of tracks on each playlist


SELECT p.Name, Count(*) AS Number_Of_Tracks
FROM Playlist AS p
JOIN PlaylistTrack AS pt
ON p.PlaylistId = pt.PlaylistId
GROUP By p.Name
