Provide a query that shows the most purchased track(s) of 2013.

SELECT il.TrackId, COUNT(*) as total
FROM Invoice AS i
JOIN InvoiceLine AS il 
ON i.InvoiceId = il.InvoiceId
WHERE strftime('%Y', i.InvoiceDate) = "2013"
GROUP BY il.TrackId
order by total desc



SELECT il.TrackId, COUNT(*)
FROM InvoiceLine AS il 
JOIN Invoice AS i
ON i.InvoiceId = il.InvoiceId
GROUP BY il.TrackId