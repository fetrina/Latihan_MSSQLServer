--Variasi dari klausa where
DECLARE @pencarian Varchar(30)
SET @pencarian = 'A%'

SELECT * from CUSTOMER
WHERE NamaAkhir LIKE @pencarian