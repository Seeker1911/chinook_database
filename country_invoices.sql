 --Provide a query that shows the # of invoices per country. 
 select
	i.BillingCountry, count(i.InvoiceId) as InvoiceCount
from
	Invoice i
group by i.BillingCountry