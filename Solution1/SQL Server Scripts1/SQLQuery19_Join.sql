SELECT Sekolah.NamaSekolah, Kelas.NamaKelas
FROM Sekolah INNER JOIN Kelas 
ON Sekolah.IdSekolah=Kelas.IdSekolah 