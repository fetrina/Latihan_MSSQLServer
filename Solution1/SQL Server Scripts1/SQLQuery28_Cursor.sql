DECLARE
@IdCustomer int,
@Telpon varchar(50)

DECLARE db_cursor CURSOR FOR 
Select IdCustomer from CUSTOMER
OPEN db_cursor
	FETCH NEXT FROM db_cursor INTO @IdCustomer
	WHILE @@FETCH_STATUS = 0
	BEGIN
		Select @Telpon=Telpon from CUSTOMER where IdCustomer=@IdCustomer
		IF LEN(@Telpon) < 8
		Update CUSTOMER set Telpon='No Tdk Valid' where IdCustomer=@IdCustomer
		FETCH NEXT from db_cursor INTO @IdCustomer
	END
CLOSE db_cursor
DEALLOCATE db_cursor
