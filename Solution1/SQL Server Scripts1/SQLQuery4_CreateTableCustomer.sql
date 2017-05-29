CREATE TABLE CUSTOMER(
IdCustomer int IDENTITY(1,1)PRIMARY KEY, 
NomorCustomer int NOT NULL UNIQUE,
NamaAkhir varchar(50) NOT NULL,
NamaAwal varchar(50) NOT NULL,
KodeArea int NULL,
Alamat varchar(50) NULL,
Telpon varchar(50) NULL,)
GO