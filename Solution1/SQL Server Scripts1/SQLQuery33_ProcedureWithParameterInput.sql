CREATE PROCEDURE AmbilKelasTertentu
@NamaSekolah varchar(50)
AS
SELECT Sekolah.NamaSekolah, Kelas.NamaKelas
FROM Sekolah inner join Kelas 
ON Sekolah.IdSekolah = Kelas.IdSekolah
WHERE NamaSekolah=@NamaSekolah
ORDER BY NamaKelas