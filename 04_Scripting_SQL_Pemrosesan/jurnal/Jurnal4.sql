SELECT 
    t.id_theater,
    f.judul,
    j.periode_start,
    (j.periode_end - j.periode_start) AS lama_tayang_hari
FROM FILM_103122400037 f
JOIN JADWAL_103122400037 j
ON f.id_film = j.id_film
JOIN THEATER_103122400037 t
ON j.id_theater = t.id_theater
WHERE f.judul = 'Habibie Ainun 3';

SELECT 
    t.id_theater,
    f.judul,
    t.kelas,
    t.harga,
    CASE
        WHEN t.harga < 50000 THEN 'Murah'
        WHEN t.harga > 75000 THEN 'Mahal'
        ELSE 'Normal'
    END AS kategori_harga
FROM THEATER_103122400037 t
JOIN JADWAL_103122400037 j
ON t.id_theater = j.id_theater
JOIN FILM_103122400037 f
ON j.id_film = f.id_film;

SELECT 
    m.id_member,
    t.harga AS harga_awal,
    TRUNC(MONTHS_BETWEEN(SYSDATE, m.tgl_lahir)/12) AS umur,
    (t.harga - (t.harga * 0.10)) AS harga_setelah_diskon
FROM MEMBER_103122400037 m
JOIN TRANSAKSI_103122400037 tr
ON m.id_member = tr.id_member
JOIN JADWAL_103122400037 j
ON tr.id_jadwal = j.id_jadwal
JOIN THEATER_103122400037 t
ON j.id_theater = t.id_theater
WHERE TRUNC(MONTHS_BETWEEN(SYSDATE, m.tgl_lahir)/12) <= 32
ORDER BY umur;

SELECT 
    m.id_member,
    m.nama,
    f.judul
FROM MEMBER_103122400037 m
JOIN TRANSAKSI_103122400037 tr
ON m.id_member = tr.id_member
JOIN JADWAL_103122400037 j
ON tr.id_jadwal = j.id_jadwal
JOIN FILM_103122400037 f
ON j.id_film = f.id_film
WHERE f.durasi >= 100
AND TO_NUMBER(SUBSTR(m.no_hp, -1)) = 8;

SELECT 
    f.id_film,
    t.id_theater,
    t.harga AS harga_asli,
    (t.harga - (t.harga * 0.70)) AS harga_setelah_diskon
FROM FILM_103122400037 f
JOIN JADWAL_103122400037 j
ON f.id_film = j.id_film
JOIN THEATER_103122400037 t
ON j.id_theater = t.id_theater
WHERE f.judul = 'Keluarga Cemara'
AND j.periode_start >= DATE '2019-12-19';
