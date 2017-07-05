--Contoh penggunaan While
WHILE (select KodeArea from CUSTOMER where IdCustomer=4) < 500
BEGIN
	UPDATE CUSTOMER set KodeArea=KodeArea+1
END