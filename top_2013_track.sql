Provide a query that shows the most purchased track(s) of 2013.

SELECT il.TrackId, COUNT(*) as total
FROM Invoice AS i
JOIN InvoiceLine AS il 
ON i.InvoiceId = il.InvoiceId
WHERE strftime('%Y', i.InvoiceDate) = "2013"
GROUP BY il.TrackId
order by total desc



