--Mengalokasikan variabel dengan nilai, pd statement Select
DECLARE @NamaAkhirKu Varchar(50)

SELECT @NamaAkhirKu=NamaAkhir FROM CUSTOMER
WHERE IdCustomer=3
PRINT 'Nama Anda ' + @NamaAkhirKu