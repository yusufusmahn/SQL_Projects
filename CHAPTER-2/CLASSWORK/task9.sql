select SKU,SKU_Description, warehouseID
from inventory
where QuantityOnHand = 0
order by WarehouseID asc