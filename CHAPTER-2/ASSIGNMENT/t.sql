SELECT DISTINCT customer.LastName, customer.FirstName, customer.Phone
FROM CUSTOMER 
JOIN INVOICE ON customer.CustomerID = invoice.CustomerID
WHERE invoice.InvoiceNumber IN (
    SELECT InvoiceNumber
    FROM INVOICE_ITEM
    WHERE Item = 'Dress Shirt'
)
ORDER BY customer.LastName ASC, customer.FirstName DESC;