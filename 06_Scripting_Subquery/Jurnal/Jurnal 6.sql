SELECT m."NAMA",
       TRUNC(MONTHS_BETWEEN(SYSDATE, m."TGL_LAHIR")/12) AS UMUR
FROM "MEMBER" m
JOIN "TRANSAKSI" t ON m."ID_MEMBER" = t."ID_MEMBER"
JOIN "JADWAL" j ON t."ID_JADWAL" = j."ID_JADWAL"
WHERE j."ID_THEATER" IN (
    SELECT "ID_THEATER"
    FROM "THEATER"
    WHERE "HARGA" > (
        SELECT "HARGA"
        FROM "THEATER"
        WHERE "ID_THEATER" = 'Teater 1'
    )
)
AND j."ID_FILM" = (
    SELECT "ID_FILM"
    FROM "FILM"
    WHERE "JUDUL" = 'Habibie Ainun 3'
);
--------------------------------------------------
SELECT f."JUDUL", th."HARGA"
FROM "JADWAL" j
JOIN "FILM" f ON j."ID_FILM" = f."ID_FILM"
JOIN "THEATER" th ON j."ID_THEATER" = th."ID_THEATER"
WHERE th."HARGA" IN (
    (SELECT MIN("HARGA") FROM "THEATER"),
    (SELECT MAX("HARGA") FROM "THEATER")
)
ORDER BY th."HARGA";
---------------------------------------------------

SELECT f."JUDUL", COUNT(*) AS JUMLAH_TAYANG
FROM "JADWAL" j
JOIN "FILM" f ON j."ID_FILM" = f."ID_FILM"
GROUP BY f."JUDUL"
HAVING COUNT(*) > (
    SELECT MIN(jumlah)
    FROM (
        SELECT COUNT(*) AS jumlah
        FROM "JADWAL"
        GROUP BY "ID_FILM"
    )
);

------------------------------------------------

SELECT j."ID_THEATER", f."JUDUL", COUNT(*) AS JUMLAH
FROM "JADWAL" j
JOIN "FILM" f ON j."ID_FILM" = f."ID_FILM"
WHERE f."DURASI" > 100
GROUP BY j."ID_THEATER", f."JUDUL"
HAVING COUNT(*) > (
    SELECT AVG(jumlah)
    FROM (
        SELECT COUNT(*) AS jumlah
        FROM "JADWAL"
        GROUP BY "ID_FILM"
    )
);
-----------------------------------------------
SELECT m."NAMA", m."NO_HP", f."JUDUL"
FROM "MEMBER" m
JOIN "TRANSAKSI" t ON m."ID_MEMBER" = t."ID_MEMBER"
JOIN "JADWAL" j ON t."ID_JADWAL" = j."ID_JADWAL"
JOIN "FILM" f ON j."ID_FILM" = f."ID_FILM"
WHERE j."ID_THEATER" IN (
    SELECT "ID_THEATER"
    FROM "THEATER"
    WHERE "HARGA" > 30000
)
AND m."NO_HP" LIKE '081%';