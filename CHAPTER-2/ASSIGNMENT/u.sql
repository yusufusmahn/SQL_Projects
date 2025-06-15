SELECT customer.LastName, customer.FirstName, customer.Phone, invoice.TotalAmount
FROM CUSTOMER customer
LEFT JOIN INVOICE ON customer.CustomerID = invoice.CustomerID
    AND invoice.InvoiceNumber IN (
        SELECT InvoiceNumber
        FROM INVOICE_ITEM
        WHERE Item = 'Dress Shirt'
    )
ORDER BY invoice.TotalAmount ASC, customer.LastName ASC, customer.FirstName DESC;