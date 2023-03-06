Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.

SELECT t.Name AS TrackName, i.InvoiceLineId, a.name AS ArtistName
FROM InvoiceLine AS i
JOIN Track AS t
ON i.TrackId = t.TrackId
JOIN Album AS ab 
ON t.AlbumId = ab.AlbumId
JOIN Artist AS a
On ab.ArtistId = a.ArtistId