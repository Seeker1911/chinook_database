--Which sales agent made the most in sales over all?
 select reps.EmployeeId, Name, max(Reps.salesTotal) as Total
 from (select 
    e.EmployeeId, 
    e.FirstName ||" "|| e.LastName as Name,  
    round(sum(i.Total), 2) as salesTotal
  from Invoice i, employee e, customer c
  where c.SupportRepId = e.EmployeeId
  and i.CustomerId = c.CustomerId
  group by Name) as reps