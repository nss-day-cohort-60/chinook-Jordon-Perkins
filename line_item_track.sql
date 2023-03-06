Provide a query that shows each Invoice line item, with the name of the track that was purchased.

SELECT Track.Name, InvoiceLineId
FROM InvoiceLine
JOIN Track
ON InvoiceLine.TrackId = Track.TrackId
