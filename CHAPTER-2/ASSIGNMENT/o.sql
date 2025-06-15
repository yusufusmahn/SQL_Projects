select  distinct customer.LastName,customer.FirstName, customer.Phone
from customer
join invoice on customer.CustomerID = invoice.CustomerID
where invoice.TotalAmount > 100.00
order by LastName asc, FirstName desc;