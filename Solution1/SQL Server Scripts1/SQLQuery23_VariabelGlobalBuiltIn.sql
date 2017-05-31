--Variabel Global Built In

/*
DECLARE @SekolahId int
--Memasukkan data ke tabel Sekolah
INSERT INTO Sekolah(NamaSekolah) values ('SD Jatingaleh')
*/

DECLARE @SekolahId int
--Memasukkan data ke tabel Sekolah
INSERT INTO Sekolah(NamaSekolah) values ('SD Tinjomoyo')
SELECT @SekolahId=@@IDENTITY
--Memasukkan data kelas
INSERT INTO Kelas(IdSekolah,NamaKelas) values (@SekolahId, 'Bahasa Korea')
INSERT INTO Kelas (IdSekolah,NamaKelas) values (@SekolahId, 'Bahasa Mandarin')