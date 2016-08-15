--Provide a query that shows the count of customers assigned to each sales agent.
select e.FirstName || " " || e.LastName as Employee,
	count(c.CustomerId) as NumberOfCustomers
from Customer c, Employee e
where c.SupportRepId = e.employeeId
group by Employee
