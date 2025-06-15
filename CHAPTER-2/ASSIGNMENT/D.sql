select customer.LastName, customer.FirstName, customer.phone, invoice.DateIn, invoice.DateOut
from customer 
join invoice on customer.CustomerID = invoice.CustomerID
where invoice.TotalAmount > 100.00;