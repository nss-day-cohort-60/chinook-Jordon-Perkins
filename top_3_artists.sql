Provide a query that shows the top 3 best selling artists.

SELECT a.ArtistId, COUNT(*) AS topSelling
FROM InvoiceLine AS il
JOIN Track AS t
ON il.TrackId = t.TrackId
JOIN Album AS a
ON a.AlbumId = t.AlbumId
Group BY a.ArtistId
ORDER BY topSelling DESC
LIMIT 3