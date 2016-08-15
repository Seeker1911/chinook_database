--Provide a query that shows total sales made by each sales agent.

select e.FirstName || " " || e.LastName as Employee,
			ROUND(SUM (i.Total), 2) as TotalSales
from Customer c, Employee e, Invoice i
where c.SupportRepId = e.EmployeeId
and i.CustomerId = c.CustomerId
group by e.LastName