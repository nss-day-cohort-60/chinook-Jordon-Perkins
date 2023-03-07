Provide a query that shows the total sales per country.


SELECT SUM(Total) AS Total, BillingCountry
FROM Invoice
GROUP BY BillingCountry 