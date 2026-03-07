SQL> create table mahasiswa (
  2  id_mahasiswa int primary key,
  3  nama varchar(50),
  4  tempat_lahir varchar(50),
  5  tanggal_lahir date,
  6  nomor_hp int,
  7  email varchar(50),
  8  tinggi_badan int,
  9  berat_badan int,
 10  );
)
*
ERROR at line 10:
ORA-00904: : invalid identifier 


SQL> create table mahasiswa (\
  2  c
  3  
SQL> create table mahasiswa (
  2  id_mahasiswa int primary key,
  3  nama varchar(50),
  4  tempat_lahir varchar(50),
  5  tanggal_lahir date,
  6  nomor_hp int,
  7  email varchar(50),
  8  tinggi_badan int,
  9  berat_badan int);

Table created.

SQL> insert into mahasiswa values (1,'Andi Pratama','Bandung',TO_DATE('15-01-2003','DD-MM-YYYY'),812345678,'andi@gmail.com',170,65);

1 row created.

SQL> insert into mahasiswa values (2,'Budi Santoso','Jakarta',TO_DATE('22-03-2002','DD-MM-YYYY'),813456789,'budi@gmail.com',168,60);

1 row created.

SQL> insert into mahasiswa values (3,'Citra Lestari','Surabaya',TO_DATE('10-07-2003','DD-MM-YYYY'),814567890,'citra@gmail.com',160,50);

1 row created.

SQL> insert into mahasiswa values (4,'Deni Saputra','Yogyakarta',TO_DATE('05-12-2002','DD-MM-YYYY'),815678901,'deni@gmail.com',172,68);

1 row created.

SQL> insert into mahasiswa values (5,'Eka Putri','Semarang',TO_DATE('18-04-2003','DD-MM-YYYY'),816789012,'eka@gmail.com',158,48);

1 row created.

SQL> insert into mahasiswa values (6,'Fajar Nugroho','Malang',TO_DATE('30-08-2002','DD-MM-YYYY'),817890123,'fajar@gmail.com',175,70);

1 row created.

SQL> insert into mahasiswa values (7,'Gita Maharani','Bandung',TO_DATE('14-09-2003','DD-MM-YYYY'),818901234,'gita@gmail.com',162,52);

1 row created.

SQL> insert into mahasiswa values (8,'Hadi Wijaya','Bekasi',TO_DATE('01-06-2002','DD-MM-YYYY'),819012345,'hadi@gmail.com',169,64);

1 row created.

SQL> insert into mahasiswa values (9,'Intan Permata','Bogor',TO_DATE('27-02-2003','DD-MM-YYYY'),811123456,'intan@gmail.com',155,45);

1 row created.

SQL> insert into mahasiswa values (10,'Joko Susanto','Solo',TO_DATE('11-11-2002','DD-MM-YYYY'),812234567,'joko@gmail.com',173,67);

1 row created.

SQL> insert into mahasiswa values (11,'Kiki Amelia','Depok',TO_DATE('21-05-2003','DD-MM-YYYY'),813345678,'kiki@gmail.com',159,49);

1 row created.

SQL> insert into mahasiswa values (12,'Lukman Hakim','Cirebon',TO_DATE('09-10-2002','DD-MM-YYYY'),814456789,'lukman@gmail.com',171,66);

1 row created.

SQL> insert into mahasiswa values (13,'Maya Sari','Padang',TO_DATE('03-03-2003','DD-MM-YYYY'),815567890,'maya@gmail.com',157,47);

1 row created.

SQL> insert into mahasiswa values (14,'Nanda Prakoso','Tegal',TO_DATE('19-07-2002','DD-MM-YYYY'),816678901,'nanda@gmail.com',174,69);

1 row created.

SQL> insert into mahasiswa values (15,'Oki Ramadhan','Purwokerto',TO_DATE('25-12-2003','DD-MM-YYYY'),817789012,'oki@gmail.com',168,62);

1 row created.

SQL> select * mahasiswa
  2  ;
select * mahasiswa
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select * from mahasiswa;

ID_MAHASISWA NAMA                                                               
------------ --------------------------------------------------                 
TEMPAT_LAHIR                                       TANGGAL_L   NOMOR_HP         
-------------------------------------------------- --------- ----------         
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
           1 Andi Pratama                                                       
Bandung                                            15-JAN-03  812345678         
andi@gmail.com                                              170          65     
                                                                                
           2 Budi Santoso                                                       
Jakarta                                            22-MAR-02  813456789         
budi@gmail.com                                              168          60     

ID_MAHASISWA NAMA                                                               
------------ --------------------------------------------------                 
TEMPAT_LAHIR                                       TANGGAL_L   NOMOR_HP         
-------------------------------------------------- --------- ----------         
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
                                                                                
           3 Citra Lestari                                                      
Surabaya                                           10-JUL-03  814567890         
citra@gmail.com                                             160          50     
                                                                                
           4 Deni Saputra                                                       
Yogyakarta                                         05-DEC-02  815678901         

ID_MAHASISWA NAMA                                                               
------------ --------------------------------------------------                 
TEMPAT_LAHIR                                       TANGGAL_L   NOMOR_HP         
-------------------------------------------------- --------- ----------         
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
deni@gmail.com                                              172          68     
                                                                                
           5 Eka Putri                                                          
Semarang                                           18-APR-03  816789012         
eka@gmail.com                                               158          48     
                                                                                
           6 Fajar Nugroho                                                      

ID_MAHASISWA NAMA                                                               
------------ --------------------------------------------------                 
TEMPAT_LAHIR                                       TANGGAL_L   NOMOR_HP         
-------------------------------------------------- --------- ----------         
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
Malang                                             30-AUG-02  817890123         
fajar@gmail.com                                             175          70     
                                                                                
           7 Gita Maharani                                                      
Bandung                                            14-SEP-03  818901234         
gita@gmail.com                                              162          52     
                                                                                

ID_MAHASISWA NAMA                                                               
------------ --------------------------------------------------                 
TEMPAT_LAHIR                                       TANGGAL_L   NOMOR_HP         
-------------------------------------------------- --------- ----------         
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
           8 Hadi Wijaya                                                        
Bekasi                                             01-JUN-02  819012345         
hadi@gmail.com                                              169          64     
                                                                                
           9 Intan Permata                                                      
Bogor                                              27-FEB-03  811123456         
intan@gmail.com                                             155          45     

ID_MAHASISWA NAMA                                                               
------------ --------------------------------------------------                 
TEMPAT_LAHIR                                       TANGGAL_L   NOMOR_HP         
-------------------------------------------------- --------- ----------         
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
                                                                                
          10 Joko Susanto                                                       
Solo                                               11-NOV-02  812234567         
joko@gmail.com                                              173          67     
                                                                                
          11 Kiki Amelia                                                        
Depok                                              21-MAY-03  813345678         

ID_MAHASISWA NAMA                                                               
------------ --------------------------------------------------                 
TEMPAT_LAHIR                                       TANGGAL_L   NOMOR_HP         
-------------------------------------------------- --------- ----------         
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
kiki@gmail.com                                              159          49     
                                                                                
          12 Lukman Hakim                                                       
Cirebon                                            09-OCT-02  814456789         
lukman@gmail.com                                            171          66     
                                                                                
          13 Maya Sari                                                          

ID_MAHASISWA NAMA                                                               
------------ --------------------------------------------------                 
TEMPAT_LAHIR                                       TANGGAL_L   NOMOR_HP         
-------------------------------------------------- --------- ----------         
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
Padang                                             03-MAR-03  815567890         
maya@gmail.com                                              157          47     
                                                                                
          14 Nanda Prakoso                                                      
Tegal                                              19-JUL-02  816678901         
nanda@gmail.com                                             174          69     
                                                                                

ID_MAHASISWA NAMA                                                               
------------ --------------------------------------------------                 
TEMPAT_LAHIR                                       TANGGAL_L   NOMOR_HP         
-------------------------------------------------- --------- ----------         
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
          15 Oki Ramadhan                                                       
Purwokerto                                         25-DEC-03  817789012         
oki@gmail.com                                               168          62     
                                                                                

15 rows selected.

SQL> COLUMN id_mahasiswa FORMAT 999 HEADING 'ID'
SQL> COLUMN nama FORMAT A20
SQL> COLUMN tempat_lahir FORMAT A15
SQL> COLUMN tanggal_lahir FORMAT A12
SQL> COLUMN nomor_hp FORMAT 999999999999
SQL> COLUMN email FORMAT A25
SQL> COLUMN tinggi_badan FORMAT 999 HEADING 'TINGGI'
SQL> COLUMN berat_badan FORMAT 999 HEADING 'BERAT'
SQL> 
SQL> SELECT * FROM mahasiswa;

  ID NAMA                 TEMPAT_LAHIR    TANGGAL_LAHI      NOMOR_HP            
---- -------------------- --------------- ------------ -------------            
EMAIL                     TINGGI BERAT                                          
------------------------- ------ -----                                          
   1 Andi Pratama         Bandung         15-JAN-03        812345678            
andi@gmail.com               170    65                                          
                                                                                
   2 Budi Santoso         Jakarta         22-MAR-02        813456789            
budi@gmail.com               168    60                                          
                                                                                
   3 Citra Lestari        Surabaya        10-JUL-03        814567890            
citra@gmail.com              160    50                                          
                                                                                

  ID NAMA                 TEMPAT_LAHIR    TANGGAL_LAHI      NOMOR_HP            
---- -------------------- --------------- ------------ -------------            
EMAIL                     TINGGI BERAT                                          
------------------------- ------ -----                                          
   4 Deni Saputra         Yogyakarta      05-DEC-02        815678901            
deni@gmail.com               172    68                                          
                                                                                
   5 Eka Putri            Semarang        18-APR-03        816789012            
eka@gmail.com                158    48                                          
                                                                                
   6 Fajar Nugroho        Malang          30-AUG-02        817890123            
fajar@gmail.com              175    70                                          
                                                                                

  ID NAMA                 TEMPAT_LAHIR    TANGGAL_LAHI      NOMOR_HP            
---- -------------------- --------------- ------------ -------------            
EMAIL                     TINGGI BERAT                                          
------------------------- ------ -----                                          
   7 Gita Maharani        Bandung         14-SEP-03        818901234            
gita@gmail.com               162    52                                          
                                                                                
   8 Hadi Wijaya          Bekasi          01-JUN-02        819012345            
hadi@gmail.com               169    64                                          
                                                                                
   9 Intan Permata        Bogor           27-FEB-03        811123456            
intan@gmail.com              155    45                                          
                                                                                

  ID NAMA                 TEMPAT_LAHIR    TANGGAL_LAHI      NOMOR_HP            
---- -------------------- --------------- ------------ -------------            
EMAIL                     TINGGI BERAT                                          
------------------------- ------ -----                                          
  10 Joko Susanto         Solo            11-NOV-02        812234567            
joko@gmail.com               173    67                                          
                                                                                
  11 Kiki Amelia          Depok           21-MAY-03        813345678            
kiki@gmail.com               159    49                                          
                                                                                
  12 Lukman Hakim         Cirebon         09-OCT-02        814456789            
lukman@gmail.com             171    66                                          
                                                                                

  ID NAMA                 TEMPAT_LAHIR    TANGGAL_LAHI      NOMOR_HP            
---- -------------------- --------------- ------------ -------------            
EMAIL                     TINGGI BERAT                                          
------------------------- ------ -----                                          
  13 Maya Sari            Padang          03-MAR-03        815567890            
maya@gmail.com               157    47                                          
                                                                                
  14 Nanda Prakoso        Tegal           19-JUL-02        816678901            
nanda@gmail.com              174    69                                          
                                                                                
  15 Oki Ramadhan         Purwokerto      25-DEC-03        817789012            
oki@gmail.com                168    62                                          
                                                                                

15 rows selected.

SQL> SET LINESIZE 120
SQL> SET PAGESIZE 50
SQL> SELECT * FROM mahasiswa;

  ID NAMA                 TEMPAT_LAHIR    TANGGAL_LAHI      NOMOR_HP EMAIL                     TINGGI BERAT             
---- -------------------- --------------- ------------ ------------- ------------------------- ------ -----             
   1 Andi Pratama         Bandung         15-JAN-03        812345678 andi@gmail.com               170    65             
   2 Budi Santoso         Jakarta         22-MAR-02        813456789 budi@gmail.com               168    60             
   3 Citra Lestari        Surabaya        10-JUL-03        814567890 citra@gmail.com              160    50             
   4 Deni Saputra         Yogyakarta      05-DEC-02        815678901 deni@gmail.com               172    68             
   5 Eka Putri            Semarang        18-APR-03        816789012 eka@gmail.com                158    48             
   6 Fajar Nugroho        Malang          30-AUG-02        817890123 fajar@gmail.com              175    70             
   7 Gita Maharani        Bandung         14-SEP-03        818901234 gita@gmail.com               162    52             
   8 Hadi Wijaya          Bekasi          01-JUN-02        819012345 hadi@gmail.com               169    64             
   9 Intan Permata        Bogor           27-FEB-03        811123456 intan@gmail.com              155    45             
  10 Joko Susanto         Solo            11-NOV-02        812234567 joko@gmail.com               173    67             
  11 Kiki Amelia          Depok           21-MAY-03        813345678 kiki@gmail.com               159    49             
  12 Lukman Hakim         Cirebon         09-OCT-02        814456789 lukman@gmail.com             171    66             
  13 Maya Sari            Padang          03-MAR-03        815567890 maya@gmail.com               157    47             
  14 Nanda Prakoso        Tegal           19-JUL-02        816678901 nanda@gmail.com              174    69             
  15 Oki Ramadhan         Purwokerto      25-DEC-03        817789012 oki@gmail.com                168    62             

15 rows selected.

SQL> desc mahasiswa
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 ID_MAHASISWA                                                      NOT NULL NUMBER(38)
 NAMA                                                                       VARCHAR2(50)
 TEMPAT_LAHIR                                                               VARCHAR2(50)
 TANGGAL_LAHIR                                                              DATE
 NOMOR_HP                                                                   NUMBER(38)
 EMAIL                                                                      VARCHAR2(50)
 TINGGI_BADAN                                                               NUMBER(38)
 BERAT_BADAN                                                                NUMBER(38)

SQL> SELECT LOWER(tempat_lahir) AS nama_lower FROM mahasiswa;

NAMA_LOWER                                                                                                              
--------------------------------------------------                                                                      
bandung                                                                                                                 
jakarta                                                                                                                 
surabaya                                                                                                                
yogyakarta                                                                                                              
semarang                                                                                                                
malang                                                                                                                  
bandung                                                                                                                 
bekasi                                                                                                                  
bogor                                                                                                                   
solo                                                                                                                    
depok                                                                                                                   
cirebon                                                                                                                 
padang                                                                                                                  
tegal                                                                                                                   
purwokerto                                                                                                              

15 rows selected.

SQL> SELECT UPPER(nama) AS nama_upper FROM mahasiswa;

NAMA_UPPER                                                                                                              
--------------------------------------------------                                                                      
ANDI PRATAMA                                                                                                            
BUDI SANTOSO                                                                                                            
CITRA LESTARI                                                                                                           
DENI SAPUTRA                                                                                                            
EKA PUTRI                                                                                                               
FAJAR NUGROHO                                                                                                           
GITA MAHARANI                                                                                                           
HADI WIJAYA                                                                                                             
INTAN PERMATA                                                                                                           
JOKO SUSANTO                                                                                                            
KIKI AMELIA                                                                                                             
LUKMAN HAKIM                                                                                                            
MAYA SARI                                                                                                               
NANDA PRAKOSO                                                                                                           
OKI RAMADHAN                                                                                                            

15 rows selected.

SQL> SELECT INITCAP(nama) AS nama_initcap FROM mahasiswa;

NAMA_INITCAP                                                                                                            
--------------------------------------------------                                                                      
Andi Pratama                                                                                                            
Budi Santoso                                                                                                            
Citra Lestari                                                                                                           
Deni Saputra                                                                                                            
Eka Putri                                                                                                               
Fajar Nugroho                                                                                                           
Gita Maharani                                                                                                           
Hadi Wijaya                                                                                                             
Intan Permata                                                                                                           
Joko Susanto                                                                                                            
Kiki Amelia                                                                                                             
Lukman Hakim                                                                                                            
Maya Sari                                                                                                               
Nanda Prakoso                                                                                                           
Oki Ramadhan                                                                                                            

15 rows selected.

SQL> -- Gabungkan nama dan tempat lahir
SQL> SELECT CONCAT(nama, ' - ') || tempat_lahir AS nama_dan_tempat FROM mahasiswa;

NAMA_DAN_TEMPAT                                                                                                         
-------------------------------------------------------------------------------------------------------                 
Andi Pratama - Bandung                                                                                                  
Budi Santoso - Jakarta                                                                                                  
Citra Lestari - Surabaya                                                                                                
Deni Saputra - Yogyakarta                                                                                               
Eka Putri - Semarang                                                                                                    
Fajar Nugroho - Malang                                                                                                  
Gita Maharani - Bandung                                                                                                 
Hadi Wijaya - Bekasi                                                                                                    
Intan Permata - Bogor                                                                                                   
Joko Susanto - Solo                                                                                                     
Kiki Amelia - Depok                                                                                                     
Lukman Hakim - Cirebon                                                                                                  
Maya Sari - Padang                                                                                                      
Nanda Prakoso - Tegal                                                                                                   
Oki Ramadhan - Purwokerto                                                                                               

15 rows selected.

SQL> SELECT tempat_tinggal, LENGTH(tempat_tinggal) AS panjang_nama FROM mahasiswa;
SELECT tempat_tinggal, LENGTH(tempat_tinggal) AS panjang_nama FROM mahasiswa
                              *
ERROR at line 1:
ORA-00904: "TEMPAT_TINGGAL": invalid identifier 


SQL> SELECT tempat_lahir, LENGTH(tempat_lahir) AS panjang_nama FROM mahasiswa;

TEMPAT_LAHIR    PANJANG_NAMA                                                                                            
--------------- ------------                                                                                            
Bandung                    7                                                                                            
Jakarta                    7                                                                                            
Surabaya                   8                                                                                            
Yogyakarta                10                                                                                            
Semarang                   8                                                                                            
Malang                     6                                                                                            
Bandung                    7                                                                                            
Bekasi                     6                                                                                            
Bogor                      5                                                                                            
Solo                       4                                                                                            
Depok                      5                                                                                            
Cirebon                    7                                                                                            
Padang                     6                                                                                            
Tegal                      5                                                                                            
Purwokerto                10                                                                                            

15 rows selected.

SQL> SELECT tempat_tinggal, LENGTH(tempat_tinggal) AS panjang_lahir FROM mahasiswa;
SELECT tempat_tinggal, LENGTH(tempat_tinggal) AS panjang_lahir FROM mahasiswa
                              *
ERROR at line 1:
ORA-00904: "TEMPAT_TINGGAL": invalid identifier 


SQL> SELECT tempat_lahir, LENGTH(tempat_lahir) AS panjang_tempat_lahir FROM mahasiswa;

TEMPAT_LAHIR    PANJANG_TEMPAT_LAHIR                                                                                    
--------------- --------------------                                                                                    
Bandung                            7                                                                                    
Jakarta                            7                                                                                    
Surabaya                           8                                                                                    
Yogyakarta                        10                                                                                    
Semarang                           8                                                                                    
Malang                             6                                                                                    
Bandung                            7                                                                                    
Bekasi                             6                                                                                    
Bogor                              5                                                                                    
Solo                               4                                                                                    
Depok                              5                                                                                    
Cirebon                            7                                                                                    
Padang                             6                                                                                    
Tegal                              5                                                                                    
Purwokerto                        10                                                                                    

15 rows selected.

SQL> SELECT nama, SUBSTR(nama,1,4) AS nama_awal FROM mahasiswa;

NAMA                 NAMA_AWAL                                                                                          
-------------------- ----------------                                                                                   
Andi Pratama         Andi                                                                                               
Budi Santoso         Budi                                                                                               
Citra Lestari        Citr                                                                                               
Deni Saputra         Deni                                                                                               
Eka Putri            Eka                                                                                                
Fajar Nugroho        Faja                                                                                               
Gita Maharani        Gita                                                                                               
Hadi Wijaya          Hadi                                                                                               
Intan Permata        Inta                                                                                               
Joko Susanto         Joko                                                                                               
Kiki Amelia          Kiki                                                                                               
Lukman Hakim         Lukm                                                                                               
Maya Sari            Maya                                                                                               
Nanda Prakoso        Nand                                                                                               
Oki Ramadhan         Oki                                                                                                

15 rows selected.

SQL> SELECT nama, SUBSTR(nama,1,5) AS nama_awal FROM mahasiswa;

NAMA                 NAMA_AWAL                                                                                          
-------------------- --------------------                                                                               
Andi Pratama         Andi                                                                                               
Budi Santoso         Budi                                                                                               
Citra Lestari        Citra                                                                                              
Deni Saputra         Deni                                                                                               
Eka Putri            Eka P                                                                                              
Fajar Nugroho        Fajar                                                                                              
Gita Maharani        Gita                                                                                               
Hadi Wijaya          Hadi                                                                                               
Intan Permata        Intan                                                                                              
Joko Susanto         Joko                                                                                               
Kiki Amelia          Kiki                                                                                               
Lukman Hakim         Lukma                                                                                              
Maya Sari            Maya                                                                                               
Nanda Prakoso        Nanda                                                                                              
Oki Ramadhan         Oki R                                                                                              

15 rows selected.

SQL> SELECT nama, SUBSTR(nama,-5) AS nama_akhir FROM mahasiswa;

NAMA                 NAMA_AKHIR                                                                                         
-------------------- --------------------                                                                               
Andi Pratama         atama                                                                                              
Budi Santoso         ntoso                                                                                              
Citra Lestari        stari                                                                                              
Deni Saputra         putra                                                                                              
Eka Putri            Putri                                                                                              
Fajar Nugroho        groho                                                                                              
Gita Maharani        arani                                                                                              
Hadi Wijaya          ijaya                                                                                              
Intan Permata        rmata                                                                                              
Joko Susanto         santo                                                                                              
Kiki Amelia          melia                                                                                              
Lukman Hakim         Hakim                                                                                              
Maya Sari             Sari                                                                                              
Nanda Prakoso        akoso                                                                                              
Oki Ramadhan         adhan                                                                                              

15 rows selected.

SQL> SELECT LPAD(tempat_tinggal,15,'*') AS lpad_tempat FROM mahasiswa;
SELECT LPAD(tempat_tinggal,15,'*') AS lpad_tempat FROM mahasiswa
            *
ERROR at line 1:
ORA-00904: "TEMPAT_TINGGAL": invalid identifier 


SQL> SELECT LPAD(tempat_lahir,15,'*') AS lpad_tempat FROM mahasiswa;

LPAD_TEMPAT                                                                                                             
------------------------------------------------------------                                                            
********Bandung                                                                                                         
********Jakarta                                                                                                         
*******Surabaya                                                                                                         
*****Yogyakarta                                                                                                         
*******Semarang                                                                                                         
*********Malang                                                                                                         
********Bandung                                                                                                         
*********Bekasi                                                                                                         
**********Bogor                                                                                                         
***********Solo                                                                                                         
**********Depok                                                                                                         
********Cirebon                                                                                                         
*********Padang                                                                                                         
**********Tegal                                                                                                         
*****Purwokerto                                                                                                         

15 rows selected.

SQL> SELECT LPAD(tempat_lahir,15,' ') AS lpad_tempat FROM mahasiswa;

LPAD_TEMPAT                                                                                                             
------------------------------------------------------------                                                            
        Bandung                                                                                                         
        Jakarta                                                                                                         
       Surabaya                                                                                                         
     Yogyakarta                                                                                                         
       Semarang                                                                                                         
         Malang                                                                                                         
        Bandung                                                                                                         
         Bekasi                                                                                                         
          Bogor                                                                                                         
           Solo                                                                                                         
          Depok                                                                                                         
        Cirebon                                                                                                         
         Padang                                                                                                         
          Tegal                                                                                                         
     Purwokerto                                                                                                         

15 rows selected.

SQL> SELECT RPAD(nama,10,' ') AS rpad_nama FROM mahasiswa;

RPAD_NAMA                                                                                                               
----------------------------------------                                                                                
Andi Prata                                                                                                              
Budi Santo                                                                                                              
Citra Lest                                                                                                              
Deni Saput                                                                                                              
Eka Putri                                                                                                               
Fajar Nugr                                                                                                              
Gita Mahar                                                                                                              
Hadi Wijay                                                                                                              
Intan Perm                                                                                                              
Joko Susan                                                                                                              
Kiki Ameli                                                                                                              
Lukman Hak                                                                                                              
Maya Sari                                                                                                               
Nanda Prak                                                                                                              
Oki Ramadh                                                                                                              

15 rows selected.

SQL> SELECT LTRIM('email', '*') AS tanpa_kiri FROM mahasiswa;

TANPA                                                                                                                   
-----                                                                                                                   
email                                                                                                                   
email                                                                                                                   
email                                                                                                                   
email                                                                                                                   
email                                                                                                                   
email                                                                                                                   
email                                                                                                                   
email                                                                                                                   
email                                                                                                                   
email                                                                                                                   
email                                                                                                                   
email                                                                                                                   
email                                                                                                                   
email                                                                                                                   
email                                                                                                                   

15 rows selected.

SQL> SELECT LTRIM(email, '*') AS tanpa_kiri FROM mahasiswa;

TANPA_KIRI                                                                                                              
--------------------------------------------------                                                                      
andi@gmail.com                                                                                                          
budi@gmail.com                                                                                                          
citra@gmail.com                                                                                                         
deni@gmail.com                                                                                                          
eka@gmail.com                                                                                                           
fajar@gmail.com                                                                                                         
gita@gmail.com                                                                                                          
hadi@gmail.com                                                                                                          
intan@gmail.com                                                                                                         
joko@gmail.com                                                                                                          
kiki@gmail.com                                                                                                          
lukman@gmail.com                                                                                                        
maya@gmail.com                                                                                                          
nanda@gmail.com                                                                                                         
oki@gmail.com                                                                                                           

15 rows selected.

SQL> SELECT LTRIM(email, 'l') AS tanpa_kiri FROM mahasiswa;

TANPA_KIRI                                                                                                              
--------------------------------------------------                                                                      
andi@gmail.com                                                                                                          
budi@gmail.com                                                                                                          
citra@gmail.com                                                                                                         
deni@gmail.com                                                                                                          
eka@gmail.com                                                                                                           
fajar@gmail.com                                                                                                         
gita@gmail.com                                                                                                          
hadi@gmail.com                                                                                                          
intan@gmail.com                                                                                                         
joko@gmail.com                                                                                                          
kiki@gmail.com                                                                                                          
ukman@gmail.com                                                                                                         
maya@gmail.com                                                                                                          
nanda@gmail.com                                                                                                         
oki@gmail.com                                                                                                           

15 rows selected.

SQL> SELECT LTRIM(email, 'lukman') AS tanpa_kiri FROM mahasiswa;

TANPA_KIRI                                                                                                              
--------------------------------------------------                                                                      
di@gmail.com                                                                                                            
budi@gmail.com                                                                                                          
citra@gmail.com                                                                                                         
deni@gmail.com                                                                                                          
eka@gmail.com                                                                                                           
fajar@gmail.com                                                                                                         
gita@gmail.com                                                                                                          
hadi@gmail.com                                                                                                          
intan@gmail.com                                                                                                         
joko@gmail.com                                                                                                          
iki@gmail.com                                                                                                           
@gmail.com                                                                                                              
ya@gmail.com                                                                                                            
da@gmail.com                                                                                                            
oki@gmail.com                                                                                                           

15 rows selected.

SQL> SELECT RTRIM(email, 'com') AS tanpa_kanan FROM mahasiswa;

TANPA_KANAN                                                                                                             
--------------------------------------------------                                                                      
andi@gmail.                                                                                                             
budi@gmail.                                                                                                             
citra@gmail.                                                                                                            
deni@gmail.                                                                                                             
eka@gmail.                                                                                                              
fajar@gmail.                                                                                                            
gita@gmail.                                                                                                             
hadi@gmail.                                                                                                             
intan@gmail.                                                                                                            
joko@gmail.                                                                                                             
kiki@gmail.                                                                                                             
lukman@gmail.                                                                                                           
maya@gmail.                                                                                                             
nanda@gmail.                                                                                                            
oki@gmail.                                                                                                              

15 rows selected.

SQL> SELECT nama, INSTR(nama,'j') AS posisi_j FROM mahasiswa;

NAMA                   POSISI_J                                                                                         
-------------------- ----------                                                                                         
Andi Pratama                  0                                                                                         
Budi Santoso                  0                                                                                         
Citra Lestari                 0                                                                                         
Deni Saputra                  0                                                                                         
Eka Putri                     0                                                                                         
Fajar Nugroho                 3                                                                                         
Gita Maharani                 0                                                                                         
Hadi Wijaya                   8                                                                                         
Intan Permata                 0                                                                                         
Joko Susanto                  0                                                                                         
Kiki Amelia                   0                                                                                         
Lukman Hakim                  0                                                                                         
Maya Sari                     0                                                                                         
Nanda Prakoso                 0                                                                                         
Oki Ramadhan                  0                                                                                         

15 rows selected.

SQL> SELECT REPLACE(nama,'maya','joko') AS nama_baru FROM mahasiswa;

NAMA_BARU                                                                                                               
------------------------------------------------------------------------------------------------------------------------
Andi Pratama                                                                                                            
Budi Santoso                                                                                                            
Citra Lestari                                                                                                           
Deni Saputra                                                                                                            
Eka Putri                                                                                                               
Fajar Nugroho                                                                                                           
Gita Maharani                                                                                                           
Hadi Wijaya                                                                                                             
Intan Permata                                                                                                           
Joko Susanto                                                                                                            
Kiki Amelia                                                                                                             
Lukman Hakim                                                                                                            
Maya Sari                                                                                                               
Nanda Prakoso                                                                                                           
Oki Ramadhan                                                                                                            

15 rows selected.

SQL> SELECT REPLACE(nama,'Maya','Joko') AS nama_baru FROM mahasiswa;

NAMA_BARU                                                                                                               
------------------------------------------------------------------------------------------------------------------------
Andi Pratama                                                                                                            
Budi Santoso                                                                                                            
Citra Lestari                                                                                                           
Deni Saputra                                                                                                            
Eka Putri                                                                                                               
Fajar Nugroho                                                                                                           
Gita Maharani                                                                                                           
Hadi Wijaya                                                                                                             
Intan Permata                                                                                                           
Joko Susanto                                                                                                            
Kiki Amelia                                                                                                             
Lukman Hakim                                                                                                            
Joko Sari                                                                                                               
Nanda Prakoso                                                                                                           
Oki Ramadhan                                                                                                            

15 rows selected.

SQL> SELECT nama,
  2         TO_CHAR(tanggal_lahir,'MM') AS bulan_angka,
  3         TO_CHAR(tanggal_lahir,'MON') AS bulan_singkat,
  4         TO_CHAR(tanggal_lahir,'MONTH') AS bulan_panjang
  5  FROM mahasiswa;

NAMA                 BU BULAN_SINGKA BULAN_PANJANG                                                                      
-------------------- -- ------------ ------------------------------------                                               
Andi Pratama         01 JAN          JANUARY                                                                            
Budi Santoso         03 MAR          MARCH                                                                              
Citra Lestari        07 JUL          JULY                                                                               
Deni Saputra         12 DEC          DECEMBER                                                                           
Eka Putri            04 APR          APRIL                                                                              
Fajar Nugroho        08 AUG          AUGUST                                                                             
Gita Maharani        09 SEP          SEPTEMBER                                                                          
Hadi Wijaya          06 JUN          JUNE                                                                               
Intan Permata        02 FEB          FEBRUARY                                                                           
Joko Susanto         11 NOV          NOVEMBER                                                                           
Kiki Amelia          05 MAY          MAY                                                                                
Lukman Hakim         10 OCT          OCTOBER                                                                            
Maya Sari            03 MAR          MARCH                                                                              
Nanda Prakoso        07 JUL          JULY                                                                               
Oki Ramadhan         12 DEC          DECEMBER                                                                           

15 rows selected.

SQL> SELECT nama,
  2         TO_CHAR(tanggal_lahir,'DD') AS tanggal,
  3         TO_CHAR(tanggal_lahir,'DY') AS hari_singkat,
  4         TO_CHAR(tanggal_lahir,'DAY') AS hari_panjang
  5  FROM mahasiswa;

NAMA                 TA HARI_SINGKAT HARI_PANJANG                                                                       
-------------------- -- ------------ ------------------------------------                                               
Andi Pratama         15 WED          WEDNESDAY                                                                          
Budi Santoso         22 FRI          FRIDAY                                                                             
Citra Lestari        10 THU          THURSDAY                                                                           
Deni Saputra         05 THU          THURSDAY                                                                           
Eka Putri            18 FRI          FRIDAY                                                                             
Fajar Nugroho        30 FRI          FRIDAY                                                                             
Gita Maharani        14 SUN          SUNDAY                                                                             
Hadi Wijaya          01 SAT          SATURDAY                                                                           
Intan Permata        27 THU          THURSDAY                                                                           
Joko Susanto         11 MON          MONDAY                                                                             
Kiki Amelia          21 WED          WEDNESDAY                                                                          
Lukman Hakim         09 WED          WEDNESDAY                                                                          
Maya Sari            03 MON          MONDAY                                                                             
Nanda Prakoso        19 FRI          FRIDAY                                                                             
Oki Ramadhan         25 THU          THURSDAY                                                                           

15 rows selected.

SQL> SELECT nama,
  2         TO_CHAR(tanggal_lahir,'YYYY') AS tahun_lengkap,
  3         TO_CHAR(tanggal_lahir,'YY') AS dua_digit_tahun,
  4         TO_CHAR(tanggal_lahir,'RR') AS tahun_rr
  5  FROM mahasiswa;

NAMA                 TAHU DU TA                                                                                         
-------------------- ---- -- --                                                                                         
Andi Pratama         2003 03 03                                                                                         
Budi Santoso         2002 02 02                                                                                         
Citra Lestari        2003 03 03                                                                                         
Deni Saputra         2002 02 02                                                                                         
Eka Putri            2003 03 03                                                                                         
Fajar Nugroho        2002 02 02                                                                                         
Gita Maharani        2003 03 03                                                                                         
Hadi Wijaya          2002 02 02                                                                                         
Intan Permata        2003 03 03                                                                                         
Joko Susanto         2002 02 02                                                                                         
Kiki Amelia          2003 03 03                                                                                         
Lukman Hakim         2002 02 02                                                                                         
Maya Sari            2003 03 03                                                                                         
Nanda Prakoso        2002 02 02                                                                                         
Oki Ramadhan         2003 03 03                                                                                         

15 rows selected.

SQL> SELECT nama,
  2         TO_CHAR(tanggal_lahir,'YYYY') AS tahun_lengkap,
  3         TO_CHAR(tanggal_lahir,'YY') AS dua_digit_tahun,
  4         TO_CHAR(tanggal_lahir,'RR') AS tahun_rr
  5  
SQL> 
SQL> SELECT SYSDATE AS waktu_sekarang,
  2         TO_CHAR(SYSDATE,'HH:MI:SS AM') AS jam_12,
  3         TO_CHAR(SYSDATE,'HH24:MI:SS') AS jam_24
  4  FROM dual;

WAKTU_SEK JAM_12      JAM_24                                                                                            
--------- ----------- --------                                                                                          
07-MAR-26 10:52:09 PM 22:52:09                                                                                          

SQL> SELECT tanggal_lahir AS waktu_sekarang,
  2         TO_CHAR(tanggal_lahir,'HH:MI:SS AM') AS jam_12,
  3         TO_CHAR(tanggal_lahir,'HH24:MI:SS AM') AS jam_24,
  4  from mahasiswa
  5  ;
from mahasiswa
*
ERROR at line 4:
ORA-00936: missing expression 


SQL> SELECT tanggal_lahir AS waktu_sekarang,
  2         TO_CHAR(tanggal_lahir,'HH:MI:SS AM') AS jam_12,
  3         TO_CHAR(tanggal_lahir,'HH24:MI:SS AM') AS jam_24
  4  from mahasiswa;

WAKTU_SEK JAM_12      JAM_24                                                                                            
--------- ----------- -----------                                                                                       
15-JAN-03 12:00:00 AM 00:00:00 AM                                                                                       
22-MAR-02 12:00:00 AM 00:00:00 AM                                                                                       
10-JUL-03 12:00:00 AM 00:00:00 AM                                                                                       
05-DEC-02 12:00:00 AM 00:00:00 AM                                                                                       
18-APR-03 12:00:00 AM 00:00:00 AM                                                                                       
30-AUG-02 12:00:00 AM 00:00:00 AM                                                                                       
14-SEP-03 12:00:00 AM 00:00:00 AM                                                                                       
01-JUN-02 12:00:00 AM 00:00:00 AM                                                                                       
27-FEB-03 12:00:00 AM 00:00:00 AM                                                                                       
11-NOV-02 12:00:00 AM 00:00:00 AM                                                                                       
21-MAY-03 12:00:00 AM 00:00:00 AM                                                                                       
09-OCT-02 12:00:00 AM 00:00:00 AM                                                                                       
03-MAR-03 12:00:00 AM 00:00:00 AM                                                                                       
19-JUL-02 12:00:00 AM 00:00:00 AM                                                                                       
25-DEC-03 12:00:00 AM 00:00:00 AM                                                                                       

15 rows selected.

SQL> SELECT nama, tanggal_lahir, ADD_MONTHS(tanggal_lahir,6) AS tambah_6_bulan
  2  FROM mahasiswa;

NAMA                 TANGGAL_LAHI TAMBAH_6_                                                                             
-------------------- ------------ ---------                                                                             
Andi Pratama         15-JAN-03    15-JUL-03                                                                             
Budi Santoso         22-MAR-02    22-SEP-02                                                                             
Citra Lestari        10-JUL-03    10-JAN-04                                                                             
Deni Saputra         05-DEC-02    05-JUN-03                                                                             
Eka Putri            18-APR-03    18-OCT-03                                                                             
Fajar Nugroho        30-AUG-02    28-FEB-03                                                                             
Gita Maharani        14-SEP-03    14-MAR-04                                                                             
Hadi Wijaya          01-JUN-02    01-DEC-02                                                                             
Intan Permata        27-FEB-03    27-AUG-03                                                                             
Joko Susanto         11-NOV-02    11-MAY-03                                                                             
Kiki Amelia          21-MAY-03    21-NOV-03                                                                             
Lukman Hakim         09-OCT-02    09-APR-03                                                                             
Maya Sari            03-MAR-03    03-SEP-03                                                                             
Nanda Prakoso        19-JUL-02    19-JAN-03                                                                             
Oki Ramadhan         25-DEC-03    25-JUN-04                                                                             

15 rows selected.

SQL> SELECT nama, SYSDATE AS tanggal_sekarang FROM mahasiswa;

NAMA                 TANGGAL_S                                                                                          
-------------------- ---------                                                                                          
Andi Pratama         07-MAR-26                                                                                          
Budi Santoso         07-MAR-26                                                                                          
Citra Lestari        07-MAR-26                                                                                          
Deni Saputra         07-MAR-26                                                                                          
Eka Putri            07-MAR-26                                                                                          
Fajar Nugroho        07-MAR-26                                                                                          
Gita Maharani        07-MAR-26                                                                                          
Hadi Wijaya          07-MAR-26                                                                                          
Intan Permata        07-MAR-26                                                                                          
Joko Susanto         07-MAR-26                                                                                          
Kiki Amelia          07-MAR-26                                                                                          
Lukman Hakim         07-MAR-26                                                                                          
Maya Sari            07-MAR-26                                                                                          
Nanda Prakoso        07-MAR-26                                                                                          
Oki Ramadhan         07-MAR-26                                                                                          

15 rows selected.

SQL> SELECT nama, tanggal_lahir, LAST_DAY(tanggal_lahir) AS hari_terakhir_bulan
  2  FROM mahasiswa;

NAMA                 TANGGAL_LAHI HARI_TERA                                                                             
-------------------- ------------ ---------                                                                             
Andi Pratama         15-JAN-03    31-JAN-03                                                                             
Budi Santoso         22-MAR-02    31-MAR-02                                                                             
Citra Lestari        10-JUL-03    31-JUL-03                                                                             
Deni Saputra         05-DEC-02    31-DEC-02                                                                             
Eka Putri            18-APR-03    30-APR-03                                                                             
Fajar Nugroho        30-AUG-02    31-AUG-02                                                                             
Gita Maharani        14-SEP-03    30-SEP-03                                                                             
Hadi Wijaya          01-JUN-02    30-JUN-02                                                                             
Intan Permata        27-FEB-03    28-FEB-03                                                                             
Joko Susanto         11-NOV-02    30-NOV-02                                                                             
Kiki Amelia          21-MAY-03    31-MAY-03                                                                             
Lukman Hakim         09-OCT-02    31-OCT-02                                                                             
Maya Sari            03-MAR-03    31-MAR-03                                                                             
Nanda Prakoso        19-JUL-02    31-JUL-02                                                                             
Oki Ramadhan         25-DEC-03    31-DEC-03                                                                             

15 rows selected.

SQL> SELECT nama, tanggal_lahir, NEXT_DAY(tanggal_lahir,'MONDAY') AS senin_berikutnya
  2  FROM mahasiswa;

NAMA                 TANGGAL_LAHI SENIN_BER                                                                             
-------------------- ------------ ---------                                                                             
Andi Pratama         15-JAN-03    20-JAN-03                                                                             
Budi Santoso         22-MAR-02    25-MAR-02                                                                             
Citra Lestari        10-JUL-03    14-JUL-03                                                                             
Deni Saputra         05-DEC-02    09-DEC-02                                                                             
Eka Putri            18-APR-03    21-APR-03                                                                             
Fajar Nugroho        30-AUG-02    02-SEP-02                                                                             
Gita Maharani        14-SEP-03    15-SEP-03                                                                             
Hadi Wijaya          01-JUN-02    03-JUN-02                                                                             
Intan Permata        27-FEB-03    03-MAR-03                                                                             
Joko Susanto         11-NOV-02    18-NOV-02                                                                             
Kiki Amelia          21-MAY-03    26-MAY-03                                                                             
Lukman Hakim         09-OCT-02    14-OCT-02                                                                             
Maya Sari            03-MAR-03    10-MAR-03                                                                             
Nanda Prakoso        19-JUL-02    22-JUL-02                                                                             
Oki Ramadhan         25-DEC-03    29-DEC-03                                                                             

15 rows selected.

SQL> SELECT nama, tanggal_lahir, MONTHS_BETWEEN(SYSDATE, tanggal_lahir) AS selisih_bulan
  2  FROM mahasiswa;

NAMA                 TANGGAL_LAHI SELISIH_BULAN                                                                         
-------------------- ------------ -------------                                                                         
Andi Pratama         15-JAN-03       277.773036                                                                         
Budi Santoso         22-MAR-02        287.54723                                                                         
Citra Lestari        10-JUL-03       271.934326                                                                         
Deni Saputra         05-DEC-02       279.095617                                                                         
Eka Putri            18-APR-03       274.676262                                                                         
Fajar Nugroho        30-AUG-02       282.289165                                                                         
Gita Maharani        14-SEP-03       269.805294                                                                         
Hadi Wijaya          01-JUN-02       285.224649                                                                         
Intan Permata        27-FEB-03       276.385939                                                                         
Joko Susanto         11-NOV-02       279.902068                                                                         
Kiki Amelia          21-MAY-03       273.579488                                                                         
Lukman Hakim         09-OCT-02       280.966585                                                                         
Maya Sari            03-MAR-03       276.160133                                                                         
Nanda Prakoso        19-JUL-02       283.644004                                                                         
Oki Ramadhan         25-DEC-03       266.450455                                                                         

15 rows selected.

SQL> SELECT nama, tanggal_lahir,
  2         ROUND(tanggal_lahir,'MONTH') AS bulat_bulan,
  3         ROUND(tanggal_lahir,'YEAR') AS bulat_tahun
  4  FROM mahasiswa;

NAMA                 TANGGAL_LAHI BULAT_BUL BULAT_TAH                                                                   
-------------------- ------------ --------- ---------                                                                   
Andi Pratama         15-JAN-03    01-JAN-03 01-JAN-03                                                                   
Budi Santoso         22-MAR-02    01-APR-02 01-JAN-02                                                                   
Citra Lestari        10-JUL-03    01-JUL-03 01-JAN-04                                                                   
Deni Saputra         05-DEC-02    01-DEC-02 01-JAN-03                                                                   
Eka Putri            18-APR-03    01-MAY-03 01-JAN-03                                                                   
Fajar Nugroho        30-AUG-02    01-SEP-02 01-JAN-03                                                                   
Gita Maharani        14-SEP-03    01-SEP-03 01-JAN-04                                                                   
Hadi Wijaya          01-JUN-02    01-JUN-02 01-JAN-02                                                                   
Intan Permata        27-FEB-03    01-MAR-03 01-JAN-03                                                                   
Joko Susanto         11-NOV-02    01-NOV-02 01-JAN-03                                                                   
Kiki Amelia          21-MAY-03    01-JUN-03 01-JAN-03                                                                   
Lukman Hakim         09-OCT-02    01-OCT-02 01-JAN-03                                                                   
Maya Sari            03-MAR-03    01-MAR-03 01-JAN-03                                                                   
Nanda Prakoso        19-JUL-02    01-AUG-02 01-JAN-03                                                                   
Oki Ramadhan         25-DEC-03    01-JAN-04 01-JAN-04                                                                   

15 rows selected.

SQL> SELECT TO_NUMBER(nomor_hp) AS nomor_hp_number FROM mahasiswa;

NOMOR_HP_NUMBER                                                                                                         
---------------                                                                                                         
      812345678                                                                                                         
      813456789                                                                                                         
      814567890                                                                                                         
      815678901                                                                                                         
      816789012                                                                                                         
      817890123                                                                                                         
      818901234                                                                                                         
      819012345                                                                                                         
      811123456                                                                                                         
      812234567                                                                                                         
      813345678                                                                                                         
      814456789                                                                                                         
      815567890                                                                                                         
      816678901                                                                                                         
      817789012                                                                                                         

15 rows selected.

SQL> SELECT
  2      nama,
  3      tanggal_lahir,
  4      TO_CHAR(tanggal_lahir,'DD-MM-YYYY') AS tgl_lahir_string,
  5      TO_CHAR(tanggal_lahir,'Day, DD Month YYYY') AS tgl_lahir_readable
  6  FROM mahasiswa;

NAMA                 TANGGAL_LAHI TGL_LAHIR_                                                                            
-------------------- ------------ ----------                                                                            
TGL_LAHIR_READABLE                                                                                                      
----------------------------------------------------------------------------------                                      
Andi Pratama         15-JAN-03    15-01-2003                                                                            
Wednesday, 15 January   2003                                                                                            
                                                                                                                        
Budi Santoso         22-MAR-02    22-03-2002                                                                            
Friday   , 22 March     2002                                                                                            
                                                                                                                        
Citra Lestari        10-JUL-03    10-07-2003                                                                            
Thursday , 10 July      2003                                                                                            
                                                                                                                        
Deni Saputra         05-DEC-02    05-12-2002                                                                            
Thursday , 05 December  2002                                                                                            
                                                                                                                        
Eka Putri            18-APR-03    18-04-2003                                                                            
Friday   , 18 April     2003                                                                                            
                                                                                                                        
Fajar Nugroho        30-AUG-02    30-08-2002                                                                            
Friday   , 30 August    2002                                                                                            
                                                                                                                        
Gita Maharani        14-SEP-03    14-09-2003                                                                            
Sunday   , 14 September 2003                                                                                            
                                                                                                                        
Hadi Wijaya          01-JUN-02    01-06-2002                                                                            
Saturday , 01 June      2002                                                                                            
                                                                                                                        
Intan Permata        27-FEB-03    27-02-2003                                                                            
Thursday , 27 February  2003                                                                                            
                                                                                                                        
Joko Susanto         11-NOV-02    11-11-2002                                                                            
Monday   , 11 November  2002                                                                                            
                                                                                                                        
Kiki Amelia          21-MAY-03    21-05-2003                                                                            
Wednesday, 21 May       2003                                                                                            
                                                                                                                        
Lukman Hakim         09-OCT-02    09-10-2002                                                                            
Wednesday, 09 October   2002                                                                                            
                                                                                                                        
Maya Sari            03-MAR-03    03-03-2003                                                                            
Monday   , 03 March     2003                                                                                            
                                                                                                                        
Nanda Prakoso        19-JUL-02    19-07-2002                                                                            
Friday   , 19 July      2002                                                                                            
                                                                                                                        
Oki Ramadhan         25-DEC-03    25-12-2003                                                                            
Thursday , 25 December  2003                                                                                            
                                                                                                                        

15 rows selected.

SQL> SELECT
  2      nama,
  3      tinggi_badan,
  4      berat_badan,
  5      TO_CHAR(tinggi_badan) AS tinggi_string,
  6      TO_CHAR(tinggi_badan,'999') AS tinggi_string_format,
  7      TO_CHAR(berat_badan,'999.9') AS berat_string_format
  8  FROM mahasiswa;

NAMA                 TINGGI BERAT TINGGI_STRING                            TING BERAT_                                  
-------------------- ------ ----- ---------------------------------------- ---- ------                                  
Andi Pratama            170    65 170                                       170   65.0                                  
Budi Santoso            168    60 168                                       168   60.0                                  
Citra Lestari           160    50 160                                       160   50.0                                  
Deni Saputra            172    68 172                                       172   68.0                                  
Eka Putri               158    48 158                                       158   48.0                                  
Fajar Nugroho           175    70 175                                       175   70.0                                  
Gita Maharani           162    52 162                                       162   52.0                                  
Hadi Wijaya             169    64 169                                       169   64.0                                  
Intan Permata           155    45 155                                       155   45.0                                  
Joko Susanto            173    67 173                                       173   67.0                                  
Kiki Amelia             159    49 159                                       159   49.0                                  
Lukman Hakim            171    66 171                                       171   66.0                                  
Maya Sari               157    47 157                                       157   47.0                                  
Nanda Prakoso           174    69 174                                       174   69.0                                  
Oki Ramadhan            168    62 168                                       168   62.0                                  

15 rows selected.

SQL> SELECT TO_DATE('06-06-2006','DD-MM-YYYY') AS contoh_to_date
  2  from dual
  3  ;

CONTOH_TO                                                                                                               
---------                                                                                                               
06-JUN-06                                                                                                               

SQL> select
  2  -666 AS angka_asli,
  3  ABS(-666) AS nilai_mutlak
  4  from dual;

ANGKA_ASLI NILAI_MUTLAK                                                                                                 
---------- ------------                                                                                                 
      -666          666                                                                                                 

SQL> SELECT
  2      19 AS m,
  3      7 AS n,
  4      MOD(19,7) AS sisa_bagi
  5  FROM dual;

         M          N  SISA_BAGI                                                                                        
---------- ---------- ----------                                                                                        
        19          7          5                                                                                        

SQL> SELECT
  2      12.75 AS angka,
  3      FLOOR(12.75) AS floor_angka
  4  FROM dual;

     ANGKA FLOOR_ANGKA                                                                                                  
---------- -----------                                                                                                  
     12.75          12                                                                                                  

SQL> SELECT
  2      12.25 AS angka,
  3      CEIL(12.25) AS ceil_angka
  4  FROM dual;

     ANGKA CEIL_ANGKA                                                                                                   
---------- ----------                                                                                                   
     12.25         13                                                                                                   

SQL> SELECT
  2      5 AS m,
  3      3 AS n,
  4      POWER(5,3) AS pangkat
  5  FROM dual;

         M          N    PANGKAT                                                                                        
---------- ---------- ----------                                                                                        
         5          3        125                                                                                        

SQL> SELECT
  2      123.4567 AS angka,
  3      ROUND(123.4567) AS bulat,
  4      ROUND(123.4567,2) AS bulat_2_desimal
  5  FROM dual;

     ANGKA      BULAT BULAT_2_DESIMAL                                                                                   
---------- ---------- ---------------                                                                                   
  123.4567        123          123.46                                                                                   

SQL> spool off
