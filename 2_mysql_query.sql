SELECT tb_mahasiswa.mhs_nama, MAX(tb_mahasiswa_nilai.nilai) as Nilai
FROM tb_mahasiswa
INNER JOIN tb_mahasiswa_nilai 
on tb_mahasiswa.mhs_id = tb_mahasiswa_nilai.mhs_id 
INNER JOIN tb_matakuliah
on tb_mahasiswa_nilai.mk_id = tb_matakuliah.mk_id
WHERE tb_matakuliah.mk_kode= "MK303"