SELECT COUNT(*) AS jumlah_film
FROM FILM_103122400037;

SELECT COUNT(DISTINCT id_film) AS jumlah_film_diputar
FROM JADWAL_103122400037;

SELECT id_member
FROM TRANSAKSI_103122400037
GROUP BY id_member
HAVING COUNT(*) > 2;

SELECT id_member
FROM TRANSAKSI_103122400037
GROUP BY id_member
HAVING COUNT(*) > 3;

SELECT id_member
FROM TRANSAKSI_103122400037
GROUP BY id_member
HAVING COUNT(*) > 4;

SELECT id_member
FROM TRANSAKSI_103122400037
GROUP BY id_member
HAVING COUNT(*) > 5;

SELECT 
    m.id_member,
    m.nama,
    COUNT(tr.id_member) AS jumlah_film
FROM MEMBER_103122400037 m
JOIN TRANSAKSI_103122400037 tr
ON m.id_member = tr.id_member
WHERE m.tgl_lahir = (
    SELECT MAX(tgl_lahir)
    FROM MEMBER_103122400037
)
GROUP BY m.id_member, m.nama;

SELECT 
    EXTRACT(MONTH FROM tgl_lahir) AS bulan_lahir,
    COUNT(*) AS jumlah_member
FROM MEMBER_103122400037
GROUP BY EXTRACT(MONTH FROM tgl_lahir)
ORDER BY bulan_lahir;

SELECT 
    id_film,
    COUNT(*) AS jumlah_jadwal
FROM JADWAL_103122400037
GROUP BY id_film;