Provide a query that shows the invoices associated with each sales agent. The resultant table should include:

Sales Agent's full name
Invoice ID



SELECT e.FirstName, e.LastName, i.InvoiceId
FROM Employee AS e
JOIN Customer AS c 
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice AS i
    ON c.CustomerId = i.CustomerId
WHERE e.Title LIKE "%Agent%"



