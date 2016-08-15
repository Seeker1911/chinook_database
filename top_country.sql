--Which country's customers spent the most?
select sum(i.Total) as Sales, i.BillingCountry
from Invoice i
group by i.BillingCountry
order by Sales desc
