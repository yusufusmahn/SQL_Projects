select SKU,SKU_Description, warehouseID
from inventory
where QuantityOnHand = 0 and QuantityOnOrder > 0
order by SKU asc, WarehouseID desc 

