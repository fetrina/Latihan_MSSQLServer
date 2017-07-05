CREATE PROCEDURE AmbilSemuaKelas
AS
SELECT Sekolah.NamaSekolah, Kelas.NamaKelas
FROM Sekolah inner join Kelas 
ON Sekolah.IdSekolah = Kelas.IdSekolah
ORDER BY NamaSekolah, NamaKelas