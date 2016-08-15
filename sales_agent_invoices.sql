SELECT 
	e.FirstName,
	e.LastName,
	i.*
	
FROM Employee e, Customer c, Invoice i
WHERE c.SupportRepId = e.EmployeeId AND c.CustomerId = i.InvoiceId
ORDER BY e.EmployeeId