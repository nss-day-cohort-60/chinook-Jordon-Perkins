Provide a query that shows total sales made by each sales agent. The resultant table should include:
Employee full name
Total sales for each employee (all time)


SELECT e.FirstName, e.LastName, Sum(i.Total) AS All_Time_sales
FROM Employee AS e
JOIN Customer AS c 
ON e.EmployeeId = c.SupportRepId
JOIN Invoice AS i 
ON c.Customerid = i.CustomerId
