Provide a query that shows the total number of invoices per country.
HINT: GROUP BY

SELECT Distinct SUM(InvoiceId), BillingCountry AS Country
FROM Invoice
GROUP BY BillingCountry