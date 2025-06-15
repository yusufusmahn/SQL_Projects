select LastName, FirstName, phone
from customer
where CustomerID in(
	select CustomerID
    from invoice
    where TotalAmount > 100.00
)
order by LastName asc, FirstName desc;