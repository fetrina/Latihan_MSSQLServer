SELECT
IdNilai,
IdSiswa,
IdKelas,
	CASE Nilai
		WHEN 5 then 'A'
		WHEN 4 then 'B'
		WHEN 3 then 'C'
		WHEN 2 then 'D'
		WHEN 1 then 'E'
		WHEN 0 then 'F'
		ELSE '-'
	END as Nilai
FROM Nilai