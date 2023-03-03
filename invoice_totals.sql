Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:

Invoice Total
Customer Name
Customer Country
Sale Agent full name



SELECT e.FirstName AS em_FirstName, e.LastName AS em_LastName, i.Total, c.FirstName AS cus_FirstName, c.LastName AS cus_LastName, c.Country
FROM Employee AS e
JOIN Customer AS c 
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice AS i
    ON c.CustomerId = i.CustomerId