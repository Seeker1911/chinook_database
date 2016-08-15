-- Provide a query that shows all Invoices but includes the # of invoice line items.
select i.InvoiceId, count(l.InvoiceLIneId) as NumberOfItems
from Invoice i, InvoiceLine l
where l.InvoiceId = i.invoiceId
group by i.InvoiceId