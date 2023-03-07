Which country's customers spent the most?
HINT: Use the MAX function on a subquery.



SELECT SUM(Total) AS Total, BillingCountry
FROM Invoice
GROUP BY BillingCountry 
ORDER BY Total DESC
LIMIT 1