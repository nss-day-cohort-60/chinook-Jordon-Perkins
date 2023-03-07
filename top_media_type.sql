Provide a query that shows the most purchased Media Type.

SELECT m.MediaTypeId, COUNT(*) AS  Purchased
FROM InvoiceLine AS il 
JOIN Track AS t 
ON il.TrackId = t.TrackId
JOIN MediaType AS m 
ON m.MediaTypeId = t.MediaTypeId
GROUP BY m.MediaTypeId
ORDER BY Purchased DESC
LIMIT 1