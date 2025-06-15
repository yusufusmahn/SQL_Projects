select  distinct customer.LastName,customer.FirstName, customer.Phone
from customer, invoice
where customer.CustomerID = invoice.CustomerID
and invoice.TotalAmount > 100.00
order by LastName asc, FirstName desc;