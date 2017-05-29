CREATE TABLE Sekolah(
IdSekolah int IDENTITY(1,1)PRIMARY KEY, 
NamaSekolah varchar(50) NOT NULL UNIQUE,
Deskripsi varchar(1000) NULL,
Alamat varchar(50) NULL,
Telpon varchar(50) NULL,
KodePos varchar(50) NULL,
AlamatPos varchar(50) NULL,)
GO