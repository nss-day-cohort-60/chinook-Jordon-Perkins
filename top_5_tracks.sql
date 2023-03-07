Provide a query that shows the top 5 most purchased tracks over all.

SELECT il.TrackId, COUNT(*) as total
FROM Invoice AS i
JOIN InvoiceLine AS il 
ON i.InvoiceId = il.InvoiceId
GROUP BY il.TrackId
order by total desc
LIMIT 5