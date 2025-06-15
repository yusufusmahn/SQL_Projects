select LastName, FirstName, phone
from customer
where customerID in(
	select CustomerID
    from invoice
    where  InvoiceNumber in(
		select InvoiceNumber
        from invoice_item
        where item = 'Dress Shirt'
    )
)
order by LastName asc, FirstName desc;