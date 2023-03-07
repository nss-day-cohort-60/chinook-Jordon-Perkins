Which sales agent made the most in sales over all?



SELECT SUM(i.Total) AS total_sales, e.EmployeeId
FROM Employee AS e
JOIN Customer AS c 
ON e.EmployeeId = c.SupportRepId
JOIN Invoice AS i 
ON c.Customerid = i.CustomerId
GROUP By e.EmployeeId 
ORDER BY total_sales DESC
LIMIT 1