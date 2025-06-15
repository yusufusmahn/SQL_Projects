select customer1.LastName as customerLastName, customer1.FirstName as customerFirstName, 
	customer2.lastname as referredByLastName, customer2.FirstName as referredByFirstName
from customer customer1
left join customer customer2 on customer1.ReferredBy = customer2.CustomerID