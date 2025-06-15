select distinct customer.LastName, customer.FirstName, customer.Phone
from customer
join invoice on customer.CustomerID = invoice.CustomerID
join invoice_item on invoice.InvoiceNumber = invoice_item.InvoiceNumber
where invoice_item.Item = 'Dress Shirt'
order by customer.LastName asc, customer.FirstName desc;