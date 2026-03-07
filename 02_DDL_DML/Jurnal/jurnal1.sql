SQL> --nama:haryanto wifakul azmi
SQL> --nim:103122400037
SQL> create table film (
  2  id_film int primary key,
  3  judul varchar(100),
  4  sinopsis varchar,
  5  tahun int(5),
  6  durasi int)
  7  ;
sinopsis varchar,
                *
ERROR at line 4:
ORA-00906: missing left parenthesis 


SQL> create table film (
  2  judul varchar(100),
  3  sinopsis varchar,
  4  ;
sinopsis varchar,
                *
ERROR at line 3:
ORA-00906: missing left parenthesis 


SQL> create table film (
  2  id_film int primary key,
  3  judul varchar(100),
  4  sinopsis varchar(300),
  5  tahun int(5),
  6  durasi int);
tahun int(5),
         *
ERROR at line 5:
ORA-00907: missing right parenthesis 


SQL> create table film (
  2  id_film int primary key,
  3  judul varchar(100),
  4  sinopsis varchar(300),
  5  tahun int,
  6  durasi int);

Table created.

SQL> desc film
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_FILM                                   NOT NULL NUMBER(38)
 JUDUL                                              VARCHAR2(100)
 SINOPSIS                                           VARCHAR2(300)
 TAHUN                                              NUMBER(38)
 DURASI                                             NUMBER(38)

SQL> create table theater(
  2  id_theater int primary key,
  3  harga int,
  4  kapasitas int,
  5  kelas varchar(10));

Table created.

SQL> desc film
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_FILM                                   NOT NULL NUMBER(38)
 JUDUL                                              VARCHAR2(100)
 SINOPSIS                                           VARCHAR2(300)
 TAHUN                                              NUMBER(38)
 DURASI                                             NUMBER(38)

SQL> desc theater
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_THEATER                                NOT NULL NUMBER(38)
 HARGA                                              NUMBER(38)
 KAPASITAS                                          NUMBER(38)
 KELAS                                              VARCHAR2(10)

SQL> create table member(
  2  id_member int primarykey,
  3  nama varchar(50),
  4  no_hp int(16),
  5  tgl_lahir int,
  6  email varchar(50));
id_member int primarykey,
              *
ERROR at line 2:
ORA-00907: missing right parenthesis 


SQL> create table member(
  2  id_member int primary key,
  3  nama varchar(50),
  4  no_hp int(16),
  5  tgl_lahir int,
  6  email varchar(50));
no_hp int(16),
         *
ERROR at line 4:
ORA-00907: missing right parenthesis 


SQL> create table member(
  2  id_member int primarykey,
  3  nama varchar(50),
  4  no_hp int,
  5  tgl_lahir int,
  6  email varchar(50));
id_member int primarykey,
              *
ERROR at line 2:
ORA-00907: missing right parenthesis 


SQL> create table member(
  2  id_member int primary key,
  3  nama varchar(50),
  4  no_hp int,
  5  tgl_lahir int,
  6  email varchar(50));

Table created.

SQL> desc member
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_MEMBER                                 NOT NULL NUMBER(38)
 NAMA                                               VARCHAR2(50)
 NO_HP                                              NUMBER(38)
 TGL_LAHIR                                          NUMBER(38)
 EMAIL                                              VARCHAR2(50)

SQL> create table jadwal(
  2  id_jadwal int primary key,
  3  periode_start int,
  4  periode_end int,
  5  foreign key (id_film) references film(id_film),
  6  foreign key (id_theater) references theater(id_theater);
foreign key (id_theater) references theater(id_theater)
                                                      *
ERROR at line 6:
ORA-00907: missing right parenthesis 


SQL> create table jadwal(
  2  id_jadwal int primary key,
  3  periode_start int,
  4  periode_end int,
  5  foreign key (id_film) references film(id_film),
  6  foreign key (ID_THEATER) references theater(ID_THEATER);
foreign key (ID_THEATER) references theater(ID_THEATER)
                                                      *
ERROR at line 6:
ORA-00907: missing right parenthesis 


SQL> create table jadwal(
  2  id_jadwal int primary key,
  3  periode_start int,
  4  periode_end int,
  5  foreign key (id_film) references film(id_film),
  6  foreign key (ID_THEATER) references theater(ID_THEATER));
foreign key (id_film) references film(id_film),
             *
ERROR at line 5:
ORA-00904: "ID_FILM": invalid identifier 


SQL> 
SQL> create table jadwal(
  2  id_jadwal int primary key,
  3  periode_start int,
  4  periode_end int,
  5  id_film int
  6  id_theater int,
  7  foreign key (id_film) references film(id_film),
  8  foreign key (ID_THEATER) references theater(ID_THEATER));
id_theater int,
*
ERROR at line 6:
ORA-00907: missing right parenthesis 


SQL> create table jadwal(
  2  id_jadwal int primary key,
  3  periode_start int,
  4  periode_end int,
  5  id_film int,
  6  id_theater int,
  7  foreign key (id_film) references film(id_film),
  8  foreign key (ID_THEATER) references theater(ID_THEATER));

Table created.

SQL> desc jadwal
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_JADWAL                                 NOT NULL NUMBER(38)
 PERIODE_START                                      NUMBER(38)
 PERIODE_END                                        NUMBER(38)
 ID_FILM                                            NUMBER(38)
 ID_THEATER                                         NUMBER(38)

SQL> alter table member modify tgl_lahir date;

Table altered.

SQL> desc member
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_MEMBER                                 NOT NULL NUMBER(38)
 NAMA                                               VARCHAR2(50)
 NO_HP                                              NUMBER(38)
 TGL_LAHIR                                          DATE
 EMAIL                                              VARCHAR2(50)

SQL> alter table jadwal modify periode_start date;

Table altered.

SQL> alter table jadwal modify periode_end date;

Table altered.

SQL> desc jadwal
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_JADWAL                                 NOT NULL NUMBER(38)
 PERIODE_START                                      DATE
 PERIODE_END                                        DATE
 ID_FILM                                            NUMBER(38)
 ID_THEATER                                         NUMBER(38)

SQL> create table inventaris(
  2  id_inventaris int primary key,
  3  nomor_kursi varchar(10),
  4  id_theater int,
  5  foreign key (id_theater) references theater(id_theater)
  6  );

Table created.

SQL> desc inventaris
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_INVENTARIS                             NOT NULL NUMBER(38)
 NOMOR_KURSI                                        VARCHAR2(10)
 ID_THEATER                                         NUMBER(38)

SQL> create table transaksi(
  2  kode_pemesanan int primary key,
  3  status varchar(50),
  4  tanggal date,
  5  total_harga int,
  6  id_jadwal int
  7  ,id_member int,
  8  foreign key (id_jadwal) references jadwal(id_jadwal)
  9  ,foreign key (id_member) references member(id_member)
 10  );

Table created.

SQL> desc transaksi
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KODE_PEMESANAN                            NOT NULL NUMBER(38)
 STATUS                                             VARCHAR2(50)
 TANGGAL                                            DATE
 TOTAL_HARGA                                        NUMBER(38)
 ID_JADWAL                                          NUMBER(38)
 ID_MEMBER                                          NUMBER(38)

SQL> desc film
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_FILM                                   NOT NULL NUMBER(38)
 JUDUL                                              VARCHAR2(100)
 SINOPSIS                                           VARCHAR2(300)
 TAHUN                                              NUMBER(38)
 DURASI                                             NUMBER(38)

SQL> desc jadwa
ERROR:
ORA-04043: object jadwa does not exist 


SQL> 
SQL> desc jadwal
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_JADWAL                                 NOT NULL NUMBER(38)
 PERIODE_START                                      DATE
 PERIODE_END                                        DATE
 ID_FILM                                            NUMBER(38)
 ID_THEATER                                         NUMBER(38)

SQL> desc member
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_MEMBER                                 NOT NULL NUMBER(38)
 NAMA                                               VARCHAR2(50)
 NO_HP                                              NUMBER(38)
 TGL_LAHIR                                          DATE
 EMAIL                                              VARCHAR2(50)

SQL> INSERT INTO film VALUES (1,'Avengers','Film superhero Marvel',2019,180);

1 row created.

SQL> INSERT INTO film VALUES (2,'Interstellar','Film sci-fi luar angkasa',2014,169);

1 row created.

SQL> INSERT INTO film VALUES (3,'Inception','Film tentang mimpi',2010,148);

1 row created.

SQL> INSERT INTO theater VALUES (1,50000,100,'Regular');

1 row created.

SQL> INSERT INTO theater VALUES (2,75000,80,'VIP');

1 row created.

SQL> INSERT INTO member VALUES (1,'Budi','08123456789','2000-05-10','budi@gmail.com');
INSERT INTO member VALUES (1,'Budi','08123456789','2000-05-10','budi@gmail.com')
                                                  *
ERROR at line 1:
ORA-01861: literal does not match format string 


SQL> INSERT INTO member VALUES (2,'Siti','08129876543','1999-08-20','siti@gmail.com');
INSERT INTO member VALUES (2,'Siti','08129876543','1999-08-20','siti@gmail.com')
                                                  *
ERROR at line 1:
ORA-01861: literal does not match format string 


SQL> INSERT INTO member VALUES (3,'Andi','08127778888','2001-01-15','andi@gmail.com');
INSERT INTO member VALUES (3,'Andi','08127778888','2001-01-15','andi@gmail.com')
                                                  *
ERROR at line 1:
ORA-01861: literal does not match format string 


SQL> desc member
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_MEMBER                                 NOT NULL NUMBER(38)
 NAMA                                               VARCHAR2(50)
 NO_HP                                              NUMBER(38)
 TGL_LAHIR                                          DATE
 EMAIL                                              VARCHAR2(50)

SQL> INSERT INTO member VALUES (1,'Budi','08123456789','2000-05-10','budi@gmail.com');
INSERT INTO member VALUES (1,'Budi','08123456789','2000-05-10','budi@gmail.com')
                                                  *
ERROR at line 1:
ORA-01861: literal does not match format string 


SQL> INSERT INTO member VALUES (1,'Budi','08123456789',To_date('2000-05-10'),'budi@gmail.com');
INSERT INTO member VALUES (1,'Budi','08123456789',To_date('2000-05-10'),'budi@gmail.com')
                                                          *
ERROR at line 1:
ORA-01861: literal does not match format string 


SQL> INSERT INTO member
  2  VALUES (1,'Budi','08123456789',TO_DATE('2000-05-10','YYYY-MM-DD'),'budi@gmail.com');

1 row created.

SQL> INSERT INTO member
  2  VALUES (2,'Siti','081234567891',TO_DATE('1999-08-20','YYYY-MM-DD'),'siti@gmail.com');

1 row created.

SQL> 
SQL> INSERT INTO member
  2  VALUES (3,'Andi','081234567892',TO_DATE('2001-02-15','YYYY-MM-DD'),'andi@gmail.com');

1 row created.

SQL> INSERT INTO jadwal
  2  VALUES (1,1,1,
  3  TO_DATE('2025-06-01','YYYY-MM-DD'),
  4  TO_DATE('2025-06-01','YYYY-MM-DD'),
  5  ;

*
ERROR at line 5:
ORA-00936: missing expression 


SQL> desc jadwal
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_JADWAL                                 NOT NULL NUMBER(38)
 PERIODE_START                                      DATE
 PERIODE_END                                        DATE
 ID_FILM                                            NUMBER(38)
 ID_THEATER                                         NUMBER(38)

SQL> INSERT INTO jadwal
  2  VALUES (1,
  3  TO_DATE('2025-06-01','YYYY-MM-DD'),
  4  TO_DATE('2025-06-10','YYYY-MM-DD'),
  5  1,
  6  1);

1 row created.

SQL> 
SQL> INSERT INTO jadwal
  2  VALUES (2,
  3  TO_DATE('2025-06-05','YYYY-MM-DD'),
  4  TO_DATE('2025-06-15','YYYY-MM-DD'),
  5  2,
  6  2);

1 row created.

SQL> INSERT INTO inventaris VALUES (1,'A1',1);

1 row created.

SQL> 
SQL> INSERT INTO inventaris VALUES (2,'A2',1);

1 row created.

SQL> 
SQL> INSERT INTO inventaris VALUES (3,'A3',1);

1 row created.

SQL> 
SQL> INSERT INTO inventaris VALUES (4,'B1',2);

1 row created.

SQL> 
SQL> INSERT INTO inventaris VALUES (5,'B2',2);

1 row created.

SQL> INSERT INTO transaksi
  2  VALUES (101,'Lunas',TO_DATE('2025-06-01','YYYY-MM-DD'),50000,1,1);

1 row created.

SQL> 
SQL> INSERT INTO transaksi
  2  VALUES (102,'Pending',TO_DATE('2025-06-02','YYYY-MM-DD'),75000,2,2);

1 row created.

SQL> 
SQL> INSERT INTO transaksi
  2  VALUES (103,'Lunas',TO_DATE('2025-06-03','YYYY-MM-DD'),50000,1,3);

1 row created.

SQL> 
SQL> INSERT INTO transaksi
  2  VALUES (104,'Pending',TO_DATE('2025-06-04','YYYY-MM-DD'),75000,2,1);

1 row created.

SQL> 
SQL> INSERT INTO transaksi
  2  VALUES (105,'Lunas',TO_DATE('2025-06-05','YYYY-MM-DD'),50000,1,2);

1 row created.

SQL> select from film
  2  ;
select from film
       *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select * from film;

   ID_FILM                                                                      
----------                                                                      
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
         1                                                                      
Avengers                                                                        
Film superhero Marvel                                                           
      2019        180                                                           
                                                                                

   ID_FILM                                                                      
----------                                                                      
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
         2                                                                      
Interstellar                                                                    
Film sci-fi luar angkasa                                                        
      2014        169                                                           
                                                                                

   ID_FILM                                                                      
----------                                                                      
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
         3                                                                      
Inception                                                                       
Film tentang mimpi                                                              
      2010        148                                                           
                                                                                

SQL> SET LINESIZE 200;
SQL> SELECT * FROM film;

   ID_FILM JUDUL                                                                                                                                                                                        
---------- ----------------------------------------------------------------------------------------------------                                                                                         
SINOPSIS                                                                                                                                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     TAHUN     DURASI                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
         1 Avengers                                                                                                                                                                                     
Film superhero Marvel                                                                                                                                                                                   
      2019        180                                                                                                                                                                                   
                                                                                                                                                                                                        
         2 Interstellar                                                                                                                                                                                 
Film sci-fi luar angkasa                                                                                                                                                                                
      2014        169                                                                                                                                                                                   

   ID_FILM JUDUL                                                                                                                                                                                        
---------- ----------------------------------------------------------------------------------------------------                                                                                         
SINOPSIS                                                                                                                                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     TAHUN     DURASI                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
                                                                                                                                                                                                        
         3 Inception                                                                                                                                                                                    
Film tentang mimpi                                                                                                                                                                                      
      2010        148                                                                                                                                                                                   
                                                                                                                                                                                                        

SQL> 
SQL> COLUMN id_film FORMAT 999
SQL> COLUMN judul FORMAT A25
SQL> COLUMN sinopsis FORMAT A40
SQL> COLUMN tahun FORMAT 9999
SQL> COLUMN durasi FORMAT 999
SQL> SELECT * FROM film;

ID_FILM JUDUL                     SINOPSIS                                 TAHUN DURASI                                                                                                                 
------- ------------------------- ---------------------------------------- ----- ------                                                                                                                 
      1 Avengers                  Film superhero Marvel                     2019    180                                                                                                                 
      2 Interstellar              Film sci-fi luar angkasa                  2014    169                                                                                                                 
      3 Inception                 Film tentang mimpi                        2010    148                                                                                                                 

SQL> SELECT * FROM theater;

ID_THEATER      HARGA  KAPASITAS KELAS                                                                                                                                                                  
---------- ---------- ---------- ----------                                                                                                                                                             
         1      50000        100 Regular                                                                                                                                                                
         2      75000         80 VIP                                                                                                                                                                    

SQL> SELECT * FROM member;

 ID_MEMBER NAMA                                                    NO_HP TGL_LAHIR EMAIL                                                                                                                
---------- -------------------------------------------------- ---------- --------- --------------------------------------------------                                                                   
         1 Budi                                               8123456789 10-MAY-00 budi@gmail.com                                                                                                       
         2 Siti                                               8.1235E+10 20-AUG-99 siti@gmail.com                                                                                                       
         3 Andi                                               8.1235E+10 15-FEB-01 andi@gmail.com                                                                                                       

SQL> COLUMN id_member FORMAT 999
SQL> COLUMN nama FORMAT A25
SQL> COLUMN no_hp FORMAT A15
SQL> COLUMN tgl_lahir FORMAT A12
SQL> COLUMN email FORMAT A30
SQL> SELECT * FROM member;

ID_MEMBER NAMA                           NO_HP TGL_LAHIR    EMAIL                                                                                                                                       
--------- ------------------------- ---------- ------------ ------------------------------                                                                                                              
        1 Budi                      ########## 10-MAY-00    budi@gmail.com                                                                                                                              
        2 Siti                      ########## 20-AUG-99    siti@gmail.com                                                                                                                              
        3 Andi                      ########## 15-FEB-01    andi@gmail.com                                                                                                                              

SQL> COLUMN no_hp FORMAT A15
SQL> SELECT * FROM member;

ID_MEMBER NAMA                           NO_HP TGL_LAHIR    EMAIL                                                                                                                                       
--------- ------------------------- ---------- ------------ ------------------------------                                                                                                              
        1 Budi                      ########## 10-MAY-00    budi@gmail.com                                                                                                                              
        2 Siti                      ########## 20-AUG-99    siti@gmail.com                                                                                                                              
        3 Andi                      ########## 15-FEB-01    andi@gmail.com                                                                                                                              

SQL> COLUMN no_hp FORMAT 999999999999
SQL> SELECT * FROM member;

ID_MEMBER NAMA                              NO_HP TGL_LAHIR    EMAIL                                                                                                                                    
--------- ------------------------- ------------- ------------ ------------------------------                                                                                                           
        1 Budi                         8123456789 10-MAY-00    budi@gmail.com                                                                                                                           
        2 Siti                        81234567891 20-AUG-99    siti@gmail.com                                                                                                                           
        3 Andi                        81234567892 15-FEB-01    andi@gmail.com                                                                                                                           

SQL> SELECT * FROM jadwal;

 ID_JADWAL PERIODE_S PERIODE_E ID_FILM ID_THEATER                                                                                                                                                       
---------- --------- --------- ------- ----------                                                                                                                                                       
         1 01-JUN-25 10-JUN-25       1          1                                                                                                                                                       
         2 05-JUN-25 15-JUN-25       2          2                                                                                                                                                       

SQL> SELECT * FROM iventaris;
SELECT * FROM iventaris
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> SELECT * FROM inventaris;

ID_INVENTARIS NOMOR_KURS ID_THEATER                                                                                                                                                                     
------------- ---------- ----------                                                                                                                                                                     
            1 A1                  1                                                                                                                                                                     
            2 A2                  1                                                                                                                                                                     
            3 A3                  1                                                                                                                                                                     
            4 B1                  2                                                                                                                                                                     
            5 B2                  2                                                                                                                                                                     

SQL> SELECT * FROM transaksi;

KODE_PEMESANAN STATUS                                             TANGGAL   TOTAL_HARGA  ID_JADWAL ID_MEMBER                                                                                            
-------------- -------------------------------------------------- --------- ----------- ---------- ---------                                                                                            
           101 Lunas                                              01-JUN-25       50000          1         1                                                                                            
           102 Pending                                            02-JUN-25       75000          2         2                                                                                            
           103 Lunas                                              03-JUN-25       50000          1         3                                                                                            
           104 Pending                                            04-JUN-25       75000          2         1                                                                                            
           105 Lunas                                              05-JUN-25       50000          1         2                                                                                            

SQL> SET LINESIZE 200
SQL> 
SQL> COLUMN kode_pemesanan FORMAT 999
SQL> COLUMN status FORMAT A10
SQL> COLUMN tanggal FORMAT A12
SQL> COLUMN total_harga FORMAT 999999
SQL> COLUMN id_jadwal FORMAT 999
SQL> COLUMN id_member FORMAT 999
SQL> SELECT * FROM transaksi;

KODE_PEMESANAN STATUS     TANGGAL      TOTAL_HARGA ID_JADWAL ID_MEMBER                                                                                                                                  
-------------- ---------- ------------ ----------- --------- ---------                                                                                                                                  
           101 Lunas      01-JUN-25          50000         1         1                                                                                                                                  
           102 Pending    02-JUN-25          75000         2         2                                                                                                                                  
           103 Lunas      03-JUN-25          50000         1         3                                                                                                                                  
           104 Pending    04-JUN-25          75000         2         1                                                                                                                                  
           105 Lunas      05-JUN-25          50000         1         2                                                                                                                                  

SQL> update transaksi set status = lunas where kode_pesanan = 102
  2  ;
update transaksi set status = lunas where kode_pesanan = 102
                                          *
ERROR at line 1:
ORA-00904: "KODE_PESANAN": invalid identifier 


SQL> update transaksi set status = lunas where kode_pemesanan = 102
  2  ;
update transaksi set status = lunas where kode_pemesanan = 102
                              *
ERROR at line 1:
ORA-00904: "LUNAS": invalid identifier 


SQL> update transaksi set status = 'lunas' where kode_pemesanan = 102;

1 row updated.

SQL> SELECT * FROM transaksi;

KODE_PEMESANAN STATUS     TANGGAL      TOTAL_HARGA ID_JADWAL ID_MEMBER                                                                                                                                  
-------------- ---------- ------------ ----------- --------- ---------                                                                                                                                  
           101 Lunas      01-JUN-25          50000         1         1                                                                                                                                  
           102 lunas      02-JUN-25          75000         2         2                                                                                                                                  
           103 Lunas      03-JUN-25          50000         1         3                                                                                                                                  
           104 Pending    04-JUN-25          75000         2         1                                                                                                                                  
           105 Lunas      05-JUN-25          50000         1         2                                                                                                                                  

SQL> update transaksi set status = 'cancel' where kode_pemesanan = 104;

1 row updated.

SQL> update transaksi set total_harga = '85000' where kode_pemesanan = 101;

1 row updated.

SQL> update transaksi set total_harga = '60000' where kode_pemesanan = 105;

1 row updated.

SQL> SET tanggal = TO_DATE('06-JUN-2025','DD-MON-YYYY')
SP2-0158: unknown SET option "tanggal"
SQL> update transaksi SET tanggal = TO_DATE('06-JUN-2025','DD-MON-YYYY')
  2  ;

5 rows updated.

SQL>  SELECT * FROM transaksi;

KODE_PEMESANAN STATUS     TANGGAL      TOTAL_HARGA ID_JADWAL ID_MEMBER                                                                                                                                  
-------------- ---------- ------------ ----------- --------- ---------                                                                                                                                  
           101 Lunas      06-JUN-25          85000         1         1                                                                                                                                  
           102 lunas      06-JUN-25          75000         2         2                                                                                                                                  
           103 Lunas      06-JUN-25          50000         1         3                                                                                                                                  
           104 cancel     06-JUN-25          75000         2         1                                                                                                                                  
           105 Lunas      06-JUN-25          60000         1         2                                                                                                                                  

SQL> delete from  transaksi where status = 'cancel';

1 row deleted.

SQL> delete from  transaksi where total_harga = '50000';

1 row deleted.

SQL> 
SQL>  SELECT * FROM transaksi;

KODE_PEMESANAN STATUS     TANGGAL      TOTAL_HARGA ID_JADWAL ID_MEMBER                                                                                                                                  
-------------- ---------- ------------ ----------- --------- ---------                                                                                                                                  
           101 Lunas      06-JUN-25          85000         1         1                                                                                                                                  
           102 lunas      06-JUN-25          75000         2         2                                                                                                                                  
           105 Lunas      06-JUN-25          60000         1         2                                                                                                                                  

SQL> spool off
