--Which sales agent made the most in sales in 2009? use Max.

select max(Sales.TotalSales) as TopSales, Sales.EmployeeName
from (select
		sum(i.Total) TotalSales,
		e.FirstName || "  " || e.LastName as EmployeeName,
		strftime("%Y", i.InvoiceDate) as InvoiceYear
	from Invoice i, Employee e, Customer c
	where i.CustomerId = c.CustomerId
	and c.SupportRepId = e.EmployeeId
	and InvoiceYear = "2009"
	group by EmployeeName
	order by TotalSales desc) as Sales;