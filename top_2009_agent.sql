Which sales agent made the most in sales in 2009?

HINT: Use the MAX function on a subquery.

SELECT SUM(i.Total) AS total_sales, e.EmployeeId
FROM Employee AS e
JOIN Customer AS c 
ON e.EmployeeId = c.SupportRepId
JOIN Invoice AS i 
ON c.Customerid = i.CustomerId
WHERE strftime('%Y', i.InvoiceDate) = "2009"
GROUP By e.EmployeeId 
ORDER BY total_sales DESC
LIMIT 1
