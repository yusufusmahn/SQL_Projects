select distinct customer.LastName, customer.FirstName, customer.Phone
from customer, invoice, invoice_item
where customer.CustomerID = invoice.CustomerID
and invoice.InvoiceNumber = invoice_item.InvoiceNumber
and invoice_item.Item = 'Dress Shirt'
order by customer.LastName asc, customer.FirstName desc;