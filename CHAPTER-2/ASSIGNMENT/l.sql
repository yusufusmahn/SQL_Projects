select LastName, FirstName, count(*) as nameCount
from customer
group by LastName, FirstName
