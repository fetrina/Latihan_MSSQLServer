IF EXISTS 
(Select name FROM sysobjects
WHERE name='AmbilKelasTertentu' AND type='P')
DROP PROCEDURE AmbilKelasTertentu

GO

CREATE PROCEDURE AmbilKelasTertentu
@NamaSekolah varchar(50)
AS
SELECT Sekolah.NamaSekolah, Kelas.NamaKelas
FROM Sekolah inner join Kelas 
ON Sekolah.IdSekolah = Kelas.IdSekolah
WHERE NamaSekolah=@NamaSekolah
ORDER BY NamaKelas