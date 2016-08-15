select count(InvoiceDate)
from Invoice
where InvoiceDate like '2009%'
or 
InvoiceDate like '2011%'