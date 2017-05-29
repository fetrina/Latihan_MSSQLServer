CREATE TABLE Kelas(
IdKelas int IDENTITY(1,1)PRIMARY KEY, 
IdSekolah int NOT NULL FOREIGN KEY REFERENCES Sekolah (IdSekolah),
NamaKelas varchar(50) NOT NULL UNIQUE,
Deskripsi varchar(1000) NULL,)
GO