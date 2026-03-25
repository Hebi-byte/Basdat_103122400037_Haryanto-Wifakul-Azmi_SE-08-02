CREATE TABLE FILM (
    id_film NUMBER PRIMARY KEY,
    judul VARCHAR2(100),
    genre VARCHAR2(50),
    durasi NUMBER
);

CREATE TABLE TEATER (
    id_teater NUMBER PRIMARY KEY,
    nomor_teater NUMBER,
    id_film NUMBER,
    harga NUMBER,
    periode_start DATE,
    periode_end DATE,
    
    CONSTRAINT fk_teater_film
    FOREIGN KEY (id_film)
    REFERENCES FILM(id_film)
);

CREATE TABLE KURSI (
    id_kursi NUMBER PRIMARY KEY,
    id_teater NUMBER,
    no_kursi VARCHAR2(5),
    
    CONSTRAINT fk_kursi_teater
    FOREIGN KEY (id_teater)
    REFERENCES TEATER(id_teater)
);

CREATE TABLE MEMBER (
    id_member NUMBER PRIMARY KEY,
    nama_member VARCHAR2(100),
    tgl_lahir DATE,
    email VARCHAR2(100)
);

CREATE TABLE PEMESANAN (
    id_pemesanan NUMBER PRIMARY KEY,4
    id_member NUMBER,
    id_teater NUMBER,
    id_kursi NUMBER,
    tanggal_beli DATE,
    status VARCHAR2(20),
    
    CONSTRAINT fk_pemesanan_member
    FOREIGN KEY (id_member)
    REFERENCES MEMBER(id_member),
    
    CONSTRAINT fk_pemesanan_teater
    FOREIGN KEY (id_teater)
    REFERENCES TEATER(id_teater),
    
    CONSTRAINT fk_pemesanan_kursi
    FOREIGN KEY (id_kursi)
    REFERENCES KURSI(id_kursi)
);

INSERT INTO FILM VALUES (1, 'Habibie Ainun 3', 'Drama', 121);
INSERT INTO FILM VALUES (2, 'Keluarga Cemara', 'Family', 110);
INSERT INTO FILM VALUES (3, 'Avengers Endgame', 'Action', 181);

INSERT INTO TEATER VALUES (1, 1, 2, 50000, DATE '2025-05-01', DATE '2025-05-10');
INSERT INTO TEATER VALUES (2, 2, 1, 45000, DATE '2025-05-05', DATE '2025-05-15');
INSERT INTO TEATER VALUES (3, 3, 3, 60000, DATE '2025-05-01', DATE '2025-05-20');

UPDATE TEATER
SET periode_start = SYSDATE,
    periode_end = SYSDATE + 7;
    
INSERT INTO MEMBER VALUES (1, 'Andi','081234567890', DATE '1990-05-10', 'andi@email.com');
INSERT INTO MEMBER VALUES (2, 'Budi','082345678901', DATE '1985-03-20', 'budi@email.com');
INSERT INTO MEMBER VALUES (3, 'Citra','083456789012', DATE '2000-01-15', 'citra@email.com');

INSERT INTO KURSI VALUES (1, 1, 'A1');
INSERT INTO KURSI VALUES (2, 1, 'A2');
INSERT INTO KURSI VALUES (3, 2, 'B1');
INSERT INTO KURSI VALUES (4, 3, 'C1');

INSERT INTO PEMESANAN VALUES (1, 1, 1, 1, DATE '2025-05-02', 'Lunas');
INSERT INTO PEMESANAN VALUES (2, 2, 1, 2, DATE '2025-05-03', 'Lunas');
INSERT INTO PEMESANAN VALUES (3, 3, 2, 3, DATE '2025-05-06', 'Pending');
INSERT INTO PEMESANAN VALUES (4, 1, 3, 4, DATE '2025-05-07', 'Lunas');

SELECT * FROM FILM;
SELECT * FROM TEATER;
SELECT * FROM MEMBER;
SELECT * FROM KURSI;
SELECT * FROM PEMESANAN;

SELECT f.judul,
       t.nomor_teater,
       t.harga
FROM film f
JOIN teater t
ON f.id_film = t.id_film
WHERE SYSDATE BETWEEN t.periode_start AND t.periode_end;

SELECT f.judul,
       t.nomor_teater,
       t.periode_start,
       t.periode_end
FROM film f
JOIN teater t
ON f.id_film = t.id_film
WHERE f.judul LIKE '%Habibie Ainun 3%'

SELECT m.id_member,
       m.nama,
       p.tanggal_beli,
       p.status
FROM member m
JOIN pemesanan p
ON m.id_member = p.id_member
JOIN teater t
ON p.id_teater = t.id_teater
JOIN film f
ON t.id_film = f.id_film
WHERE f.judul = 'Keluarga Cemara'
AND t.nomor_teater = 1;

SELECT m.id_member,
       m.nama,
       CEIL((SYSDATE - m.tgl_lahir)/365) AS umur,
       k.no_kursi
FROM member m
JOIN pemesanan p
ON m.id_member = p.id_member
JOIN kursi k
ON p.id_kursi = k.id_kursi
WHERE CEIL((SYSDATE - m.tgl_lahir)/365) > 32;

