What are the respective total sales for each of those years?

SELECT SUM(Total), strftime('%Y', InvoiceDate) AS year
FROM Invoice
WHERE InvoiceDate BETWEEN date('2009-01-01') AND date('2011-12-31')
GROUP BY strftime('%Y', InvoiceDate)