--Statement Begin...End
DECLARE @NoCustomer int
SELECT @NoCustomer=NomorCustomer FROM CUSTOMER
WHERE IdCustomer=5

IF @NoCustomer > 500
BEGIN
	print 'Nomor Customer lebih dari 500'
	UPDATE CUSTOMER SET KodeArea=46 
	WHERE IdCustomer=5
END

ELSE
	print 'Nomor Customer tidak lebih dari 500'