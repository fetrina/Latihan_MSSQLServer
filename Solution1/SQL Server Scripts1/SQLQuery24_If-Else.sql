--Statement If-Else
DECLARE @NoCustomer int
SELECT @NoCustomer=NomorCustomer FROM CUSTOMER
WHERE IdCustomer=3

IF @NoCustomer > 1000
	print 'Nomor Customer lebih dari 500'
ELSE
	print 'Nomor Customer tidak lebih dari 500'