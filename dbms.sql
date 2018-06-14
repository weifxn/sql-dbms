
alter session set NLS_DATE_FORMAT='DD/MM/YYYY';

DROP TABLE customer;
DROP TABLE vendor;
DROP TABLE product;
DROP TABLE purchase;
DROP TABLE credit;
DROP TABLE rating;


CREATE TABLE customer(
cust_id              CHAR(10) PRIMARY KEY,
cust_name         NVARCHAR(40),
cust_gender       NVARCHAR(10),
cust_DOB          DATE,
cust_contact      CHAR(20),
cust_email         NVARCHAR(40),
cust_address     NVARCHAR(200),
card_details       NVARCHAR(50) 
);


CREATE TABLE vendor(
ven_id                    CHAR(20) PRIMARY KEY,
ven_name             NVARCHAR(40),
ven_contact           NVARCHAR(20),
ven_HQ                 NVARCHAR(50),
ven_founded          NVARCHAR(40),
ven_advocacy        NVARCHAR(20),
ven_corevalues      NVARCHAR(50),
ven_awards            NVARCHAR(60)
);


CREATE TABLE product (
product_id                CHAR(20) PRIMARY KEY,
product_price            NUMBER(6,2),
product_name          NVARCHAR(100),
product_desc            NVARCHAR(300),
product_UPC            CHAR(14),
shipping_weight        NVARCHAR(10),
product_expired        DATE,
product_category      NVARCHAR(20),
product_qty                NUMBER(4),
product_dimension    NVARCHAR(50),
ven_id                        CHAR(20),
          FOREIGN KEY (ven_id) REFERENCES vendor(ven_id)
);



CREATE TABLE purchase (
purchase_id                      CHAR(20) PRIMARY KEY,
product_id                         CHAR(20),
cust_id                              CHAR(5),
purchase_qty                    NUMBER(4),
purchase_price                 NUMBER(4,2),
purchase_date                  DATE,
delivery_date                    DATE,
payment_method              VARCHAR(20), 
          FOREIGN KEY (product_id) REFERENCES product(product_id)
);


CREATE TABLE credit (
referrer_code                   CHAR(6) PRIMARY KEY,
cust_id                            CHAR(5),
reward_credit                   NUMBER(6,2),
loyal_credit                       NUMBER(6,2),
           FOREIGN KEY (cust_id) REFERENCES customer(cust_id)
);


CREATE TABLE rating (
cust_id                             CHAR(5),
product_id                         CHAR(20),
product_rating                    NUMBER(1),
rating_date                         DATE,
           FOREIGN KEY (product_id) REFERENCES product(product_id),
           FOREIGN KEY (cust_id) REFERENCES customer(cust_id),
	   PRIMARY KEY(cust_id,product_id)
);




INSERT INTO customer VALUES('1001','Zhi Huan Cheah','male','06/05/2005','019-5413976','Oppa@gmail.com','No. 653 Jln Serian By-Pass 94700 Serian Sarawak Serian','447287883162532,CIMB');
INSERT INTO customer VALUES('1002','Jin Jun Hao','male','22/09/1987','016-9965288','Elite@gmail.com','Ground Floor Safuan Plaza Jln Raja Alang 50300 Wilayah Persekutuan','579737618497184,CIMB');
INSERT INTO customer VALUES('1003','Edgar Mcdonald','male','11/08/1958','013-4785459','Blackwhite@gmail.com','Kbb7/1 Kampung Kepala Bukit 06500 Langgar Langgar Kedah','471626280562595,CIMB');
INSERT INTO customer VALUES('1004','Mark Lee','male','29/04/1969','012-9685312','Teeny@gmail.com','A 74 Jln Molek 2/1 Taman Molek 81100 Johor','419714989825561,CIMB');
INSERT INTO customer VALUES('1005','Lee Chong Wei','male','22/12/1976','012-0578073','Boring@gmail.com','Pos 214 A Sungai Muda Sungai Balang Semerah Johor 83600','419243838094584,CIMB');
INSERT INTO customer VALUES('1006','Reo Harper','male','27/12/1950','016-6699866','Dapper@gmail.com','3231 Jln Cheras Batu 9 Kampung Sungai Raya 43200 Cheras','505234087297473,CIMB');
INSERT INTO customer VALUES('1007','Ling Dan','male','13/04/1990','019-8751511','Funny@gmail.com','16 Jln Ciku 14000 Bukit Mertajam Bukit Mertajam Penang','400421960321798,CIMB');
INSERT INTO customer VALUES('1008','Keelan Friedman','male','14/07/1962','013-7788451','Subsequent@gmail.com','13 Jln Sri Aman Taman Sri Aman 82000 Pontian Pontian Johor','458331657767308,CIMB');
INSERT INTO customer VALUES('1009','Lee Wei Fan','male','29/09/1995','016-4721456','Sedate@gmail.com','Gerai Pasar Minggu 25 22 Jln Raja Muda Musa Kampung Bahru 50300 Wilayah Persekutuan','488923842362768,CIMB');
INSERT INTO customer VALUES('1010','Wu Min','male','28/07/1959','013-5442519','Massive@gmail.com','A 4 Jln Cemperai Kampung Baru Pandan 81100 Johor ','543067817988871,CIMB');
INSERT INTO customer VALUES('1011','Xuan Ling','male','27/04/1974','014-2102455','Extra-small@hotmail.com','Bazar Majlis Daerah 3 Jln Kuala Balah 17600 Jeli Kelantan ','509774812670134,CIMB');
INSERT INTO customer VALUES('1012','Tian Qing','male','11/04/2003','014-8855291','Accurate@hotmail.com','13A Jln Sg 3/10 Taman Sri Gombak 68100 Gombak','565369064280948,CIMB');
INSERT INTO customer VALUES('1013','Kong Fen','male','24/04/2002','014-8975416','Itchy@hotmail.com','7045 Taman Gemencheh Baru 73200 Gemencheh Negeri Sembilan','570464869927618,CIMB');
INSERT INTO customer VALUES('1014','Chen Jian','male','27/01/1961','016-9353145','Fast@hotmail.com','Kedai Keluarga 1 Kem Desa Jkr1130 Jln Kem Desa 16450 Kok Lanas','536819438788561,CIMB');
INSERT INTO customer VALUES('1015','Zhuan Wuhan','male','31/03/1984','019-4681166','Fluttering@hotmail.com','41 Jalan Nakhoda 1 Taman Ungku Tun Aminah 81300 Skudai Johor','407772581980916,CIMB');
INSERT INTO customer VALUES('1016','Xiang Huo','male','20/06/1972','013-9688514','Plausible@hotmail.com','1 Komplek Perniagaan Mdb Kampung Raja 22200 Besut','413017936064907,CIMB');
INSERT INTO customer VALUES('1017','Duan Zemin','male','07/09/1975','014-6725843','Super@hotmail.com','2 Hospital Pakar Ampang Puteri Jln Mamanda 9 Taman Dato Ahmad Razal','447358244437028,CIMB');
INSERT INTO customer VALUES('1018','Xue Zexian','male','01/06/1951','016-9867214','Robust@hotmail.com','B6 Jln Balok Makmur 1 Taman Balok Makmur 26100 Beserah','505893547622231,CIMB');
INSERT INTO customer VALUES('1019','Long Liuxian','male','07/08/1958','016-9382448','Awful@hotmail.com','2 23 Jln Dewa 08000 Sungai Petani Sungai Petani Kedah','454241325728171,CIMB');
INSERT INTO customer VALUES('1020','Adam Daugherty','male','11/01/1983','010-9845655','Gaping@hotmail.com','2 Jln Lada Hitam Taman Sri Tengah 86000 Kluang Johor','446289718112696,CIMB');
INSERT INTO customer VALUES('1021','Mohammad Rosli','male','20/09/1993','010-9875421','Large@hotmail.com','B39 Jln Chempaka 17500 Tanah Merah Tanah Kelantan ','444926151463367,CIMB');
INSERT INTO customer VALUES('1022','Cao Zhen','male','07/12/1988','010-2236514','Sore@hotmail.com','32 Jalan Kuala Kedah Alor Setar Kedah 05400 ','582923711361670,CIMB');
INSERT INTO customer VALUES('1023','Sun Shui','male','08/01/1963','010-5578419','Dazzling@hotmail.com','11 Taman Bukit Rambai Tangga Batu Malacca 75250 ','432560156301858,CIMB');
INSERT INTO customer VALUES('1024','Wei Feng','male','24/06/1952','010-1340255','Purple@hotmail.com','48 JLN MUTIARA EMAS 5/17 TAMAN MOUNT AUSTIN 81100 Johor ','456845548008746,CIMB');
INSERT INTO customer VALUES('1025','Lian Jiang','male','18/07/1953','010-9611222','Grouchy@hotmail.com','9 Kuala Sungai Manik 36000 Teluk Intan Perak ','572014490821668,MAYBANK');
INSERT INTO customer VALUES('1026','Yan Ming','male','17/06/1987','013-2147812','Worthless@hotmail.com','2Nd Floor Wisma Pantai Jln Wisma Pantai Kampong Gajah 12200 Butterworth Pulau Pinang Butterworth ','412741519440828,MAYBANK');
INSERT INTO customer VALUES('1027','Sally Smith','male','26/01/1976','013-5523874','Dispensable@hotmail.com','31 Jln Sibu 16 Taman Wahyu 68100 Wilayah Persekutuan ','489706638710401,MAYBANK');
INSERT INTO customer VALUES('1028','Rio Lindsay','male','15/03/1993','019-7441445','Unarmed@hotmail.com','33 Jalan Permas 3/18 Taman Permas Jaya 81750 Masai Johor Malaysia','591451408887969,MAYBANK');
INSERT INTO customer VALUES('1029','Loke Ai Mei','male','04/10/1983','019-1124475','Ordinary@hotmail.com','13 Jln Sri Aman Taman Sri Aman 82000 Pontian Pontian Johor ','541502930985636,MAYBANK');
INSERT INTO customer VALUES('1030','Wilson Weih','male','11/11/1992','014-8544852','Delicate@hotmail.com','No. 20 Jln Sik-Jeniang 08200 Sik Kedah ','599121871943261,MAYBANK');
INSERT INTO customer VALUES('1031','Caiden Odling','male','26/07/1958','014-7548848','Acoustic@hotmail.com','No. 320 Jln 1A/4 Bandar Baru Sungai Buloh 47000 Sungai Buloh ','599934426972619,MAYBANK');
INSERT INTO customer VALUES('1032','Syarif bin Mohammed','male','23/07/1962','010-9638529','Assorted@hotmail.com','No. 14 Jln 12/10 Taman Koperasi Polis 68100 Gombak Batu Caves ','440353684172997,MAYBANK');
INSERT INTO customer VALUES('1033','Corrie Huber','male','10/12/1998','016-4155514','Loutish@hotmail.com','75F Jln Cabang 3 Peringat 16010 Peringat 16010 Malaysia Kota Bharu Kelantan 16010 Malaysia','578646981878181,MAYBANK');
INSERT INTO customer VALUES('1034','Ali bin Abu','male','04/10/1984','016-9641271','Belligerent@live.com','63 G Jln Gaya 88000 Kota Kinabalu Sabah ','523993199960217,MAYBANK');
INSERT INTO customer VALUES('1035','Albert Coates','male','22/09/1992','016-2144784','Gainful@live.com','1 Pasar Besar Lama 270 Jln Hilir Pasar 15000 Kota Bharu Kelantan ','447523773537743,MAYBANK');
INSERT INTO customer VALUES('1036','Najib bin Razak','male','18/08/1999','012-2218223','High@live.com','17 2 Jln Sp 2/7 Taman Serdang Perdana 43300 Seri Kembangan ','554970852720792,MAYBANK');
INSERT INTO customer VALUES('1037','Wei Wuying','male','31/12/1971','013-5924110','Shivering@live.com','No. 20 Jln Sik-Jeniang 08200 Sik Kedah ','556931168100536,MAYBANK');
INSERT INTO customer VALUES('1038','Xiong Bo','male','21/02/1971','016-9821758','Rigid@live.com','12nd Floor Wisma Pahlawan Jalan Sultan Sulaiman 50000 Wilayah Persekutuan ','583527922479898,MAYBANK');
INSERT INTO customer VALUES('1039','Lei Chang','male','24/02/1957','014-2214503','Puzzled@live.com','Pt44 Jln Padang Temu Batu 3 75050 Meleka ','495334758634477,MAYBANK');
INSERT INTO customer VALUES('1040','Zhang Yazhu','male','12/3/1988','010-3214875','Waiting@live.com','No. 45 Kampung Kubang Sepat 06150 Alor Setar Kedah  ','529648621089402,MAYBANK');
INSERT INTO customer VALUES('1041','Shakoora bin Kaatima','male','29/12/1968','019-4821485','Immense@live.com','6 Blok A Kelana Centre Point 1001 Jln Ss 7/19 47301 Petaling Jaya ','563026157316036,MAYBANK');
INSERT INTO customer VALUES('1042','Abeer bin Saajida','male','05/08/1996','019-2457600','Tender@live.com','9189 Jln Kuala Berang Batu 13 1/2 Kampung Cherang Cina 21040 Marang Terengganu ','586504960470931,MAYBANK');
INSERT INTO customer VALUES('1043','Aasiya bin Mubaaraka','male','13/01/1957','019-3647822','Tight@live.com','No. 53 Jln Tuanku Abdul Rahman 50100 Wilayah Persekutuan ','508431893793824,MAYBANK');
INSERT INTO customer VALUES('1044','Nawaal bin Saahira','male','26/11/2004','019-3478155','Incompetent@live.com','2Nd Floor Marina Court Lrg Api-Api Centre 88000 Kota Kinabalu Sabah ','448827402197157,MAYBANK');
INSERT INTO customer VALUES('1045','Sabriyya bin Jannat','male','30/04/1964','019-2489411','Statuesque@live.com','2Nd Floor Wisma Pantai Jln Wisma Pantai Kampong Gajah 12200 Butterworth Pulau Pinang ','485607080707319,MAYBANK');
INSERT INTO customer VALUES('1046','Latipah bin Esah','male','19/04/1959','019-2477518','Illustrious@live.com','41 Jalan Nakhoda 1 Taman Ungku Tun Aminah 81300 Skudai Johor ','542562760802615,MAYBANK');
INSERT INTO customer VALUES('1047','Wasim Martin','male','11/12/1991','019-2475245','Crabby@live.com','93 Jln Asli 17 Taman Pasir Putih 81700 Pasir Gudang Johor ','535838115550604,MAYBANK');
INSERT INTO customer VALUES('1048','Alexi Bouvet','male','24/04/1974','019-7849210','Hard@live.com','P6 Jln Batu Caves 68100 Gombak Batu Caves  ','448822564698634,MAYBANK');
INSERT INTO customer VALUES('1049','Duane Lopez','male','18/01/1977','019-1432805','Breezy@live.com','14 Jln Tebedu 45200 Sabak Bernam Sabak Bernam ','447204079105888,MAYBANK');
INSERT INTO customer VALUES('1050','Zishan Joyce','male','30/10/1993','019-9968248','Silky@live.com','159 5 Lrg Bunus 6 50100 Wilayah Persekutuan ','531437720257084,MAYBANK');
INSERT INTO customer VALUES('1051','Chen Jiang','female','19/11/2004','019-0397511','Murky@live.com','No. 11 Jln Kebudayaan 16 Taman Universiti 81300 Skudai Johor ','518514927293480,MAYBANK');
INSERT INTO customer VALUES('1052','Tang Chan','female','04/10/1963','019-5781452','Brainy@live.com','2Nd Floor Marina Court Lrg Api-Api Centre 88000 Kota Kinabalu Sabah ','572519446936087,MAYBANK');
INSERT INTO customer VALUES('1053','Jiang Yimu','female','06/06/1976','016-3146188','Muddled@live.com','Blok A34 Pengkalan Tldm Teluk Muruk 32100 Lumut Perak ','453920341770250,MAYBANK');
INSERT INTO customer VALUES('1054','Gu Li','female','31/05/1968','014-1486148','Far@live.com','293 Kampung Nelayan Sedili Besar 81910 Kota Tinggi Johor ','589009649773532,MAYBANK');
INSERT INTO customer VALUES('1055','Xun Xinya','female','01/05/1990','014-3781160','Wistful@live.com','17 Jln Cenderawasih Cenderawasih 91100 Lahad Datu Sabah ','487954838982092,MAYBANK');
INSERT INTO customer VALUES('1056','Ma Xiuying','female','17/10/2000','014-2597057','Onerous@live.com','11 Jln Yong Peng Taman Sri Chaah 85400 Chaah Labis Johor ','405636693737196,MAYBANK');
INSERT INTO customer VALUES('1057','Geng Feng','female','19/12/2005','014-9412441','Chemical@live.com','A 8 Jln Ss21/35 Ss21 Petaling Jaya 47400 ','524766865568104,MAYBANK');
INSERT INTO customer VALUES('1058','Xue He','female','15/08/1988','013-8548216','Symptomatic@live.com','1 Jln Hussein 30250 Perak ','571952280867550,MAYBANK');
INSERT INTO customer VALUES('1059','Waleeda binti Faadil','female','20/01/2001','013-9652158','Chief@live.com','Lot 1666 Batu 7 1/2 Bukit Darat Tanjung Kling 76400 Melaka ','547311023423183,MAYBANK');
INSERT INTO customer VALUES('1060','Thamra binti Abdul Waahid','female','15/08/1996','010-8824503','Husky@live.com','49 Jln Hang Tuah 9 Taman Skudai Baru 81300 Skudai Johor ','574813105145369,MAYBANK');
INSERT INTO customer VALUES('1061','Ilhaam binti Saadiq','female','27/09/1993','010-3649621','Absorbed@live.com','54 Jln 35 Kampung Selayang Baru 68100 Selayang Batu Caves ','580527285612987,MAYBANK');
INSERT INTO customer VALUES('1062','Majeeda binti Adham','female','09/12/1974','010-8921460','Befitting@live.com','6-1 1St Floor Jln 1/76D Desa Pandan 55100 Wilayah Persekutuan ','570013520046289,MAYBANK');
INSERT INTO customer VALUES('1063','Shaamila binti Shujaa','female','07/11/1976','016-6641506','Hallowed@live.com','3 Lorong BLM 3/22 Bandar Laguna Merbok 08000 Sungai Petani Kedah ','485778383503537,MAYBANK');
INSERT INTO customer VALUES('1064','Evie-Rose Mellor','female','01/01/2006','016-8712410','Better@live.com','1 Arked Penang 1 Komtar Jln 10000 Penang ','460624570463210,MAYBANK');
INSERT INTO customer VALUES('1065','Adi Putri binti Putra','female','02/01/1960','013-5412013','Thinkable@live.com','No. 53 Jln Tuanku Abdul Rahman 50100 Wilayah Persekutuan ','521480175798042,MAYBANK');
INSERT INTO customer VALUES('1066','Mayang binti Gombak','female','15/12/1994','013-8240352','Longing@live.com','No. 289 Jln Tangki Ayer 22000 Jerteh Terengganu  ','423426663570589,MAYBANK');
INSERT INTO customer VALUES('1067','Tijah binti Benderang','female','06/01/1986','019-6827212','Erect@live.com','A 8 Jln Ss21/35 Ss21 47400 Petaling Jaya ','566979166790614,MAYBANK');
INSERT INTO customer VALUES('1068','Harmony Franklin','female','17/01/2001','019-3517891','Alert@live.com','668Mk5 Tanah Liat 14000 Bukit Mertajam Bukit Mertajam Penang ','432739475275697,PUBLIC BANK');
INSERT INTO customer VALUES('1069','Meng Xiulan','female','20/08/1982','019-2874610','Towering@live.com','No. 1324 Jln Ceb Kampung Lemal 17000 Pasir Mas Kelantan ','403970248763587,PUBLIC BANK');
INSERT INTO customer VALUES('1070','Yu Chang','female','14/03/1993','019-3588258','Staking@live.com','585A Kampung Siram 17000 Pasir Mas Pasir Mas Kelantan ','472680353378608,PUBLIC BANK');
INSERT INTO customer VALUES('1071','Zulfa binti Kaamil','female','13/03/1991','014-8248610','Arrogant@gmail.com','1D Jln Syed Sheikh Pekan Baru 09100 Baling Kedah ','553395346088854,PUBLIC BANK');
INSERT INTO customer VALUES('1072','Taqiyya binti Rida','female','13/02/1986','014-2030199','Nippy@gmail.com','A 13 Jln Kemajuan 31000 Batu Gajah Batu Gajah Perak ','549772250782230,PUBLIC BANK');
INSERT INTO customer VALUES('1073','Salwa binti Shaheer','female','13/08/1993','014-2103478','Impolite@gmail.com','Ba Blok 20 Jln Pasir Belanda 11920 Bayan Lepas Penang','437734003939216,PUBLIC BANK');
INSERT INTO customer VALUES('1074','Firdaus binti Nadheer','female','28/07/1973','014-9652104','Male@gmail.com','1926D Kampung Gong Kiat 21400 Bukit Payong 21400 Malaysia Kuala Terengganu','418851634717834,PUBLIC BANK');
INSERT INTO customer VALUES('1075','Bai Jun','female','21/09/1968','014-3620481','Noiseless@gmail.com','No. 12 B Jln 7/108C Taman Sungai Besi 57100 Wilayah Persekutuan','581429153236590,PUBLIC BANK');
INSERT INTO customer VALUES('1076','Xue Cheng','female','28/02/1964','013-6871511','Unwritten@gmail.com','No. 8 Ba Blok 2 Worldwide Buss Park Jln Tinju 13/50 Seksyen 13 40000 Shah Alam','582996622254611,PUBLIC BANK');
INSERT INTO customer VALUES('1077','Kong Zedong','female','20/09/1977','013-8012488','Economic@gmail.com','1 Palace Hotel Jln Mesjid India 50100 Wilayah Persekutuan ','469049376759410,PUBLIC BANK');
INSERT INTO customer VALUES('1078','Xing Xiuying','female','09/05/1972','019-4852155','Truculent@gmail.com','83710 Parit Yaani Johor Parit Yaani','504932962725633,PUBLIC BANK');
INSERT INTO customer VALUES('1079','Ding Guo','female','06/02/1998','016-4851128','Squalid@gmail.com','11-33 Jalan Ibrahim 83000 Batu Pahat Johor','485461973531447,PUBLIC BANK');
INSERT INTO customer VALUES('1080','Wan Jie','female','23/07/2004','016-3941581','Flat@gmail.com','3Rd Floor Puteri Park Plaza Taman Putra 68000 Ampang','420931277567710,PUBLIC BANK');
INSERT INTO customer VALUES('1081','Mariah binti Muda','female','09/06/1958','013-7818234','Bewildered@gmail.com','16 Jln Zabedah 83000 Batu Pahat Batu Pahat Johor','489193052501226,PUBLIC BANK');
INSERT INTO customer VALUES('1082','Linda binti Kechik','female','29/02/2004','013-1844033','Psychedelic@gmail.com','1787P Jln Telok Wan Jah 05200 Alor Setar Kedah','542060747539789,PUBLIC BANK');
INSERT INTO customer VALUES('1083','Khatijah binti Muda','female','14/11/1992','012-1844511','Few@gmail.com','125 Jln Cheras Batu 11 Kampung Baru China 43200 Cheras ','584321203552970,PUBLIC BANK');
INSERT INTO customer VALUES('1084','Cui Jie','female','16/07/1973','012-7891099','Needless@gmail.com','1083 2 Jln Merpati 98000 Miri Sarawak 98000 ','590912661281302,PUBLIC BANK');
INSERT INTO customer VALUES('1085','Yan Mei','female','30/11/1965','012-2848455','Abounding@gmail.com','13A Jln Sg 3/10 Taman Sri Gombak 68100 Gombak Batu Caves','513353130718513,PUBLIC BANK');
INSERT INTO customer VALUES('1086','Peng Zhenya','female','09/06/1957','012-6214875','Weary@gmail.com','Gerai Pertubuhan Peneroka 5 Jln Utama Felda Kampung New Zealand 26030 Kuantan ','599279325155248,HONGLEONG BANK');
INSERT INTO customer VALUES('1087','Xue Yu','female','05/05/1993','012-5697120','Common@gmail.com','12 Jln Bunga Pekan 5 42700 Banting Banting','589853414974170,HONGLEONG BANK');
INSERT INTO customer VALUES('1088','Shao Yi','female','01/08/1993','012-9722155','Addicted@gmail.com','B 24 Felda Sungai Kelah Sungkai Perak 35600 Sungkai Perak','594120837083199,HONGLEONG BANK');
INSERT INTO customer VALUES('1089','Mao Delan','female','19/06/1966','012-9898524','Questionable@gmail.com','A 14 Jln Raya Taman Tiram Baru 81800 Ulu Tiram Ulu Tiram Johor','512058918901622,HONGLEONG BANK');
INSERT INTO customer VALUES('1090','Clara Ahmed','female','27/12/2004','012-6314822','Lush@gmail.com','Pusat Perniagaan Putra 158 Jln Putra D Kilang Lama 09000 Kulim Kedah','451451077648169,HONGLEONG BANK');
INSERT INTO customer VALUES('1091','Mawar binti Embong','female','02/03/1964','012-9871506','Trashy@gmail.com','No. 1502 Jln Mata Air Kampung Mata Air 02500 Kangar Perlis','574841452252191,HONGLEONG BANK');
INSERT INTO customer VALUES('1092','Puspa binti Demang','female','31/05/1970','012-4182255','Pretty@gmail.com','13 Jln Sri Aman Taman Sri Aman 82000 Pontian Pontian Johor','592126067470064,HONGLEONG BANK');
INSERT INTO customer VALUES('1093','Sa'adong binti Bayu','female','10/02/1954','012-7819622','Filthy@gmail.com','Dewan Serbaguna Jln Keramat Dalam Kampung Dato Keramat 54000 Wilayah Persekutuan','545353701407157,HONGLEONG BANK');
INSERT INTO customer VALUES('1094','Zhou Dan','female','22/06/1980','012-8514877','Mountainous@gmail.com','492 Jln Perusahaan 3 Bandar Baru Sungai Buloh 47000 ','537149773383248,HONGLEONG BANK');
INSERT INTO customer VALUES('1095','Lei Tai','female','19/04/1962','013-8791555','Private@gmail.com','2944 Taman Muhibbah Alor Setar Kedah 05360 ','446292034753323,HONGLEONG BANK');
INSERT INTO customer VALUES('1096','Ye Xieren','female','12/12/1993','013-6413053','Cute@gmail.com','75F Jln Cabang 3 Peringat 16010 Peringat 16010 Kota Bharu Kelantan','505875341277051,HONGLEONG BANK');
INSERT INTO customer VALUES('1097','Zou Gengxin','female','22/10/2002','019-9715611','Marvelous@gmail.com','B6 Jln Balok Makmur 1 Taman Balok Makmur 26100 Beserah ','449350333136144,HONGLEONG BANK');
INSERT INTO customer VALUES('1098','Leila Marin','female','24/05/1971','019-0214028','Sour@gmail.com','33 Jalan Permas 3/18 Taman Permas Jaya 81750 Masai Johor ','416850916692246,HONGLEONG BANK');
INSERT INTO customer VALUES('1099','Mahaa binti Haashid','female','19/11/2002','019-3641500','sisiapple@hotmail.com','11 Jalan Kota Raja H 27/H Seksyen 27 40400 Shah Alam','510159570340767,HONGLEONG BANK');
INSERT INTO customer VALUES('1100','Warda binti Awn','female','03/12/1970','013-9976178','cheese@hotmail.com','29875 Kampung Pasir Puteh 88100 Putatan ','592139554951946,HONGLEONG BANK');




INSERT INTO product VALUES('neW-01700','28.33','California Gold Nutrition, L-Glutamine Powder, AjiPure, Gluten Free','L-Glutamine,Supports Muscular Endurance, Gastrointestinal & Immune Health, Helps in Muscle Protein Synthesis','733739017720','0.23kg','31/01/2019','Supplement','966','2.2 x 2.2 x 3.9 in, 0.3 lbs','620039');
INSERT INTO product VALUES('neW-01701','9.33','LypriCel, Liposomal Vitamin C, 30 Packets','A High-Performance Dietary Supplement,Maximum Bioavailability,1,000 mg Vitamin C , 1,000 mg Essential Phospholipids','733739017721','0.22kg','03/11/2018','Supplement','803','2.4 x 2.4 x 4.4 in, 0.3 lbs','620019');
INSERT INTO product VALUES('neW-01702','2.67','Dr. Mercola, Liposomal Vitamin C, 1, 60 Licaps Capsules','Increase the bioavailability of vitamin C,also potentially ease intestinal discomfort associated with taking high amounts of vitamin C.','733739017722','0.25kg','20/11/2018','Supplement','867','1 x 3.3 x 5.5 in, 0.25 lbs','620045');
INSERT INTO product VALUES('neW-01703','10.58','Solaray, Liposomal Vitamin C, 100 Vegetarian Capsules','Provide nutritive support for normal, healthy collagen synthesis,immune function,and blood vessel integrity.','733739017723','0.22kg','18/11/2018','Supplement','542','4.6 x 2.5 x 2.5 in, 0.75 lbs','620029');
INSERT INTO product VALUES('neW-01704','46.7','DaVinci Laboratories of Vermont, Liposomal C, 10.15 oz ','A Dietary Supplement and Vegetarian.','733739017724','0.45kg','02/09/2018','Supplement','147','5.9 x 2.8 x 2.8 in, 0.6 lbs','620050');
INSERT INTO product VALUES('neW-01705','90.3','DaVinci Laboratories of Vermont, Berberine Force, 60 Capsules','A Dietary Supplement,Vegetarian,Phytosome,supports cardiovascular wellness and weight management.','733739017725','0.22kg','01/09/2018','Supplement','571','5.4 x 2.9 x 2.9 in, 0.35 lbs','620035');
INSERT INTO product VALUES('neW-01706','89.99','Source Naturals, Psyllium Husk Powder, 12 oz ','Soluble dietary fiber,may reduce the risk of coronary heart disease.','733739017726','0.55kg','29/12/2018','Supplement','270','2.7 x 2.9 x 4.3 in, 0.65 lbs','620006');
INSERT INTO product VALUES('neW-01707','45.78','MRM, Glucosamine Chondroitin, 180 Capsules','Supports Joint Health, Promotes Joint Mobility, Gluten Free, Dietary Supplement, GMP-Produced in a Certified Facility Good Manufacturing Practices','733739017727','0.42kg','16/07/2018','Supplement','792','2.9 x 2.9 x 5.1 in, 0.55 lbs','620039');
INSERT INTO product VALUES('neW-01708','32.35','La Chatelaine, Hand Cream, Rose Acacia','Enriched with Argan Oil,Shea Butter, a luxurious hand cream from the South of France,deeply moisturize, nourish and repair dry skin.','733739017728','0.25kg','19/11/2018','Supplement','969','2.5 x 2.5 x 4.4 in, 0.3 lbs','620005');
INSERT INTO product VALUES('neW-01709','18.99','California Gold Nutrition, LactoBif Probiotics, 30 Billion CFU, 60 Veggie Caps','A Dietary Supplement,extremely resistant to low pH and gastrointestinal conditions,as well as adhere to the intestinal cell lines.','733739017729','0.22kg','06/11/2018','Supplement','742','3.8 x 2.4 x 1.8 in, 0.35 lbs','620026');
INSERT INTO product VALUES('neW-01710','24.56','Healthy Origins, Probiotic, 30 Billion CFU's, 60 Vcaps','Natural, supports a healthy digestive and immune system','733739018810','0.80kg','05/07/2018','Supplement','970','8.6 x 6 x 1.5 in, 1.05 lbs','620030');
INSERT INTO product VALUES('neW-01711','32.54','Acidophilus Probiotic Blend, 150 Capsules','Dietary Supplement, Super Strength, Proprietary Blen Designed to Maintain Healthy Intestinal Flora,aid in the maintenance of probiotic activity in the intestine.','733739018811','0.23kg','03/07/2018','Supplement','942','7.5 x 5.5 x 1.7 in, 1 lbs','620030');
INSERT INTO product VALUES('neW-01712','57.67','Mamma Chia, Organic Black Chia Seed','Protein, Omega-3s, Fiber','733739018812','0.24kg','09/01/2019','Supplement','407','4.1 x 2 x 2 in, 0.17 lbs','620036');
INSERT INTO product VALUES('neW-01713','29.33','Spectrum Essentials, Chia Seed, Omega-3 & Fiber','Sacred Aztec Seed, Neutral Taste, 4g Dietary Fiber Per Serving, Higher in Antioxidant Activity than Blueberries, No Preservatives','733739018813','0.33kg','10/10/2018','Supplement','340','2.4 x 2.4 x 4.4 in, 0.4 lbs','620023');
INSERT INTO product VALUES('neW-01714','20.64','Himalania, Black Chia Seeds','Protein, Omega 3 & 6, Fiber,Excellent source of Fiber and Magnesium; Good source of Protein, Calcium and Iron.','733739018814','0.49kg','17/10/2018','Supplement','496','2.2 x 2.2 x 4 in, 0.4 lbs','620034');
INSERT INTO product VALUES('neW-01715','90.23','Amazing Herbs, Black Seed,100% Pure Cold-Pressed Black Cumin Seed Oil','Amazing Herbs, Solvent Free, Alcohol Free, Healthy Immune System & Inflammatory Response','733739018815','0.35kg','10/10/2018','Supplement','812','4.4 x 2.4 x 2.4 in, 0.25 lbs','620026');
INSERT INTO product VALUES('neW-01716','99.12','Doctor's Best, High Absorption CoQ10 with BioPerine, 100 mg, 120 Softgels','Helps restore CoQ10 that may be depleted by aging and cholesterol drugs (statin),helps provide energy for those feeling occasional fatigue,Formulated with BioPerine black pepper extract to enhance absorption and bioavailability','733739018816','1.2kg','09/09/2018','Supplement','437','6.9 x 5.5 x 2.2 in, 0.545 lbs','620027');
INSERT INTO product VALUES('neW-01717','90.27','Natural Factors, Coenzyme Q10, 100 mg, 60 Softgels','Dietary Supplement,All-Natural Form,Promotes Cellular Energy Production,Purity & Potency Guaranteed,Natural Factors Coenzyme Q10 in these easy-to-swallow softgel capsules is derived from 100% all-natural sourced materials.','733739018817','2.2kg','06/12/2018','Supplement','413','1.2 x 1.6 x 4 in, 0.15 lbs','620015');
INSERT INTO product VALUES('neW-01718','90.22','Country Life, CoQ10, 100 mg, 120 Vegan Softgels','Certified Gluten-Free,Supports Cell Level Energy Production, Supports Heart Function, Dietary Supplement','733739018818','1.5kg','08/01/2019','Supplement','354','2.6 x 2.6 x 4.7 in, 0.6 lbs ','620020');
INSERT INTO product VALUES('neW-01719','24.66','California Gold Nutrition, Spirulina, USDA Certified Organic, Vegetarian, 500 mg, 60 Tablets','500 mg,USDA O rganic,Vegetarian,Green Superfood,No Gluten,No GMOs,No Soy,Dietary Supplement','622987120035','0.21kg','01/12/2018','Supplement','533','3.8 x 1.7 x 1.6 in, 0.15 lbs','620010');
INSERT INTO product VALUES('neW-01720','22.35','Enzymedica, Digest Gold with ATPro, 10 Capsules','Optimal digestive support,an advanced formula that breaks down carbohydrates, fats, fiber and protein. The enzymes in it support optimal digestion by helping the body absorb nutrients and convert food into energy.','622987120037','2.90kg','21/01/2019','Supplement','895','5.6 x 3 x 3 in, 0.85 lbs ','620048');
INSERT INTO product VALUES('neW-01721','65.43','Neocell, Super Collagen + C, Type 1 & 3, 6,000 mg, 250 Tablets','Non-GMO , Gluten Free, Dietary Supplement, Healthy Joints, Radiant Skin, Healthy Bones,increased skin hydration and 60% experiencing firmer, softer skin.','622987120039','2.11kg','31/12/2018','Supplement','396','2.9 x 2.9 x 4 in, 0.5 lbs','620011');
INSERT INTO product VALUES('neW-01722','43.32','California Gold Nutrition, Collagen UP 5000, Marine-Sourced Collagen Peptides + Hyaluronic Acid + Vitamin C','Support for Healthy Hair, Skin, Nails, Joints & Bones,high Potency Formula with Vitamin C,Bioavailable - Zero Fishy Smell - Zero Fishy Taste and Dietary Supplement','622987120041','0.22kg','01/09/2018','Supplement','406','3.6 x 3.6 x 5.7 in, 0.95 lbs','620022');
INSERT INTO product VALUES('neW-01723','34.54','Neocell, Marine Collagen, 120 Capsules','Promotes youthful hydrated skin,with hyaluronic acid & vita-mineral youth boost,Non-GMO , Gluten Free,dietary supplement','622987120043','0.21kg','11/11/2018','Supplement','458','2.6 x 2.6 x 5 in, 0.65 lbs','620006');
INSERT INTO product VALUES('neW-01724','32.45','Nature Republic, Soothing & Moisture Aloe Vera 92% Soothing Gel','All Skin Type Moisturizer, Enriched with natural aloe vera! This soothing gel with California aloe vera can be used to mildly moisturize various parts of the body such as the face, arms, legs, and hair.','622987120045','0.53kg','13/12/2018','Beauty','895','4 x 4 x 2.1 in, 0.85 lbs','620010');
INSERT INTO product VALUES('neW-01725','45.67','Mizon, Black Snail, All In One Cream','This all-in-one black snail cream which is mixed with 90% of black snail mucus filtrate of Africa containing a plenty of mucin and more than 20 kinds of black plants and takes care of overall skin troubles such as trace, loosened pores, irregular skin tone etc. and presents a healthy skin.','622987120047','0.19kg','19/09/2018','Beauty','383','2.5 x 2.5 x 3 in, 0.45 lbs','620018');
INSERT INTO product VALUES('neW-01726','33.56','The Saem, Jeju Fresh Aloe Soothing Gel','This face & body multi soothing gel makes skin healthy and moisturizes it by activating the skin's own vitality with aloe vera from the pristine Jeju island. It moisturizes and soothes dry, irritated skin with its rich moisture.','622987120049','0.24kg','17/10/2018','Beauty','379','4.1 x 4.1 x 2.1 in, 0.8 lbs','620045');
INSERT INTO product VALUES('neW-01727','54.53','Mizon, All In One Snail Repair Cream','This original snail mucus takes care of your all kind of skin problems in all in one skin care system on your first skin care step. It repairs tired and aging skin, leaving it refreshed. It is also the first protector of your naked skin.','622987120051','0.92kg','07/01/2019','Beauty','170','2.5 x 2.5 x 2.9 in, 0.45 lbs','620042');
INSERT INTO product VALUES('neW-01728','45.22','Nature Republic, Aloe Vera Soothing Gel Mist','Soothing and moisture,92%Aloe Vera,the soothing gel mist is a gel mist that moisturizes and protects the skin against the harmful environment.','622987120053','0.93kg','27/11/2018','Beauty','855','6 x 1.7 x 1.7 in, 0.4 lbs','620015');
INSERT INTO product VALUES('neW-01729','67.22','Missha, Time Revolution, The First Treatment Essence, Intensive Mois','Wrinkle repairing & whitening cosmetic containing Himalaya Purple Barley & Fermented Gemmule Yeast Extract 90%,highly concentrated essential essence for the first step of skin care','622987120055','0.81kg','20/12/2018','Beauty','318','7.5 x 2.2 x 2.2 in, 0.9 lbs','620035');
INSERT INTO product VALUES('neW-01730','12.45','Secret Key, Snow White Cream, Whitening Cream','All-in-One Base Facial Tone Cream,contains Niacinamide Brightening Ingredient','622987120057','0.21kg','06/01/2019','Beauty','903','2.5 x 2.5 x 2.5 in, 0.15 lbs','620016');
INSERT INTO product VALUES('neW-01731','35.53','Cosrx, Advanced Snail 96 Mucin Power Essence','Formulated with 96% Snail Secretion Filtrate (Mucin), this essence protects the skin from moisture loss while keeping the skin texture smooth and healthy.','671289128901','0.99kg','29/10/2018','Beauty','407','5.9 x 1.7 x 1.7 in, 0.4 lbs','620038');
INSERT INTO product VALUES('neW-01732','54.43','Nature Republic, Aqua, Super Aqua Max, Combination Watery Cream','Super Aqua Max Combination Watery Cream (For Combination Skin)The Aqua Sherbet Network System protects skin from the external environment by forming a moisture film over skin. Hyaluronic acid, a plant-derived moisture factor, keeps skin moisturized by continuously maintaining moisture in combination skin for long hours.','671289128904','1.3kg','27/12/2018','Beauty','720','2.9 x 2.7 x 2.7 in, 0.525 lbs','620021');
INSERT INTO product VALUES('neW-01733','89.23','Innisfree, Green Tea Balancing Cream','For Normal to Combination Skin, Enriched with squeezed green tea from the pure Jeju island to deliver abundant moisture and nourishment deep into your skin. This moisture cream is formulated with pure moisture from our freshly squeezed green tea to retain long lasting dewiness.','671289128907','1.09kg','06/11/2018','Beauty','335','2.7 x 2.7 x 2.2 in, 0.25 lbs','620040');
INSERT INTO product VALUES('neW-01734','34.55','Nubian Heritage, African Black Bar Soap','Certified B Corporation, Ethically Traded Ingredients,Sustainably Produced, No Animal Testing, Nubian Heritage's African Black Soap combines Shea Butter's hydrating properties with the soothing properties of Palm Ash,Plantain Peel, Tar and Tamarind Extract to minimize the appearance of superficial skin imperfections. Our deep cleansing formula provides detoxifying exfoliation to reveal radiantly healthy-looking skin.','671289128910','0.21kg','05/11/2018','Personal Care','824','3.8 x 2.9 x 1.5 in, 0.35 lbs','620031');
INSERT INTO product VALUES('neW-01735','90.34','Madre Labs, Exfoliating Bar Soap, with Marula & Tamanu Oils plus Shea Butter, Citrus','Beneficial for bathing, showering or shaving, Moisturizing (with 7-9% Glycerin), Rich Lather that Rinses Easily, Gentle for Sensitive Skin, Rainforest Alliance Certified Palm Oil','671289128913','0.56kg','28/12/2018','Personal Care','735','4.2 x 2.8 x 1.5 in, 0.35 lbs','620010');
INSERT INTO product VALUES('neW-01736','78.43','Earth Science, Deep Conditioning, Hair Masque, Olive & Avocado','Ultra Premium, Repair, Strengthens & Nourishes Hair Inside and Out, For Normal to Dry Hair, Color Safe, Sulfate Free, Gluten Free, Paraben Free, Cruelty Free','671289128916','0.91kg','16/09/2018','Personal Care','783','6.7 x 3 x 3 in, 0.45 lbs','620035');
INSERT INTO product VALUES('neW-01737','9.32','Avalon Organics, Thickening Conditioner, Biotin B-Complex Therapy','For an Energized Scalp and Thicker, Fuller Hair, NSF Certified, No GMOs, Vegan, Biodegradable, pH Balanced, Certified by QAI to NFS/ANSI, A carefully balanced blend of biotin, saw palmetto, quinoa protein and vitamin E work in harmony to Help build body in fine, thinning hair, Stimulate the scalp to encourage hair growth','671289128919','1.03kg','17/08/2018','Personal Care','285','6.5 x 2.6 x 2.6 in, 0.95 lbs','620004');
INSERT INTO product VALUES('neW-01738','90.23','I and Love and You, Raw Homemade Dog Food, Raw Raw Beef Boom Ba Dinner','100% Raw, Makes 10 lbs of Fresh Food, Just Add Water, Stir and Boom!, Tummy, Fit, Sensitivity, Natural, With Added Vitamins and Minerals, Beef, Sweet Potato, Egg, and Veggies,Fruit,Always 100% Grain Free','671289128922','0.82kg','28/08/2018','Pets','604','8.3 x 7.2 x 3.6 in, 1.66 lbs','620048');
INSERT INTO product VALUES('neW-01739','22.34','The Honest Kitchen, Proper Toppers Grain Free Turkey Recipe','A Complete & Balanced Way to Pep Up Meals!, 90% Pure Meat, Dehydrated Superfood For Dogs, Just 5 Ingredients, Boost Taste & Nutrition, No Ingredients from China, 100% Human Grade','671289128925','0.24kg','20/11/2018','Pets','790','6.8 x 5 x 2.5 in, 0.4 lbs','620028');
INSERT INTO product VALUES('neW-01740','33.55','Pet Naturals of Vermont, Hairball, For Cats, 30 Chews','Psyllium Fiber, Zinc & Biotin, Antioxidants from Cranberry, Manufactured in the U.S.A, For Cats of All Sizes, Formulated Without Herbals or Mineral Oil, Omega 3-6 Fatty Acids, No Wheat, No Corn, No Artificial Ingredients, Veterinarian Formulated','671289128928','2.3kg','22/09/2018','Pets','891','6 x 4 x 0.5 in, 0.1 lbs','620006');
INSERT INTO product VALUES('neW-01741','90.35','Ark Naturals, Flea Flicker! Tick Kicker!, For Dogs & Cats','All natural botanical formula, Environmentally friendly., Repels and kills fleas, mosquitoes, ticks on contact,  pyrethrin, citronella, cedar leaf or lemongrass.Naturally repels & kills fleas, ticks and mosquitoes on contact. Safe and effective for dogs and cats 12 weeks and older. Use as directed.','671289128931','0.32kg','20/01/2019','Pets','559','2 x 2 x 7.6 in, 0.5 lbs','620009');
INSERT INTO product VALUES('neW-01742','23.45','Jennies Gluten Free Bakery, Coconut Macaroons','Non-GMO, Certified Gluten Free, Made in a Nut Free Facility, All Natural, Wheat Free, Gluten Free, Dairy Free, Yeast Free, Sulfite Free, Soy Free, Lactose Free','671289128934','0.91kg','09/10/2018','Grocery','128','4.8 x 4.2 x 4.2 in, 0.7 lbs','620032');
INSERT INTO product VALUES('neW-01743','67.42','Go Raw, Organic, Choco Crunch Sprouted Cookies','Sprouted, All Organic, Non-GMO Project Verified, Certified Vegan, Nut-Free, Certified Gluten-Free, Junk-Free Food, USDA Organic, Certified Organic by Organic Certifiers, Proudly Made in the U.S.A.','671289128937','1.20kg','06/01/2019','Grocery','897','1.8 x 3.9 x 3.9 in, 0.2 lbs','620028');
INSERT INTO product VALUES('neW-01744','33.65','Simply Organic, Madagascar Pure Vanilla Extract, Farm Grown','No Sugar Added!, Gluten Free, USDA Organic, Certified Organic by QAI, Kosher, There's nothing plain about this vanilla. Pure. Organic. Exotic. Anyone who calls our vanilla as plain just doesn't know beans. This extra-rich and creamy vanilla is perfect for baking and bears social benefits that make it all the more sweet.Our extract is made using the highest quality, Bourbon vanilla beans from Madagascar. Full. Rich. Buttery smooth. This is the standard flavor imagined when thinking of vanilla ice cream','671289128940','1.49kg','22/12/2018','Grocery','447','4 x 1.3 x 1.3 in, 0.3 lbs','620037');
INSERT INTO product VALUES('neW-01745','66.99','Frontier Natural Products, Organic Vanilla Extract, Indonesia, Farm Grown','Gourmet Vanillas of The World, Woody & Robust, USDA Organic, Kosher, Certified Organic by QAI, Due to the way Indonesian vanilla beans are cured, their flavor holds up to high temperatures. This outstanding vanilla extract pairs especially well with chocolate and other rich foods.','671289128943','1.92kg','15/12/2018','Grocery','845','1.5 x 1.5 x 3.7 in, 0.25 lbs','620032');
INSERT INTO product VALUES('neW-01746','6.77','Maine Coast Sea Vegetables, Organic, Sea Seasonings, Kelp Granules','Excellent Source of Iodine, Now a Blend, USDA Organic, Low Sodium Salt Alternative, Certified Organic by OCIA','671289128946','0.33kg','25/08/2018','Grocery','701','2 x 2 x 4.4 in, 0.15 lbs','620049');
INSERT INTO product VALUES('neW-01747','44.77','Now Foods, Raw Almonds, Unsalted','Good Source of Protein and Fiber, Grown in the USA, Non-GMO Project Verified, Always Real, Nothing Artificial, Pure Goodness, Vegetarian/Vegan Product','190922042185','0.91kg','02/08/2018','Grocery','103','7 x 5.6 x 2.5 in, 1.05 lbs','620037');
INSERT INTO product VALUES('neW-01748','90','Sahale Snacks, Snack Better, Glazed Mix, Honey Almonds','Snack Better, Sesame Seeds, Honey, Sea Salt, Madagascar Vanilla Bean, Cranberries','190922042188','0.49kg','25/07/2018','Grocery','282','1.6 x 4.1 x 7.4 in, 0.3 lbs','620016');
INSERT INTO product VALUES('neW-01749','89.99','Eden Foods, Organic, Wild Berry Mix, Nuts, Seeds & Berries','Resealable Package, Double Certified Organically Grown, No Salt Added, Wild Blueberries, Cranberries, Raisins, Creation and Maintenance of Purity in Food, Kosher Pareve, OCIA Certified Organic, Award winning snack 100% organic dry roasted almonds, pumpkin and sunflower seeds, raisins, cranberries, and hand picked wild blueberries. Joyful satisfaction in a pleasing array of flavors and textures.','190922042190','0.25kg','31/08/2018','Grocery','961','6.5 x 4.25 x 1.25 in, 0.25 lbs','620002');
INSERT INTO product VALUES('neW-01750','35.88','Avalon Organics, Thickening Shampoo, Biotin B-Complex Therapy, 14 fl oz ','No GMOs,Vegan,biodegradable shampoo for thicker and fuller hair.','190922042192','0.23kg','12/12/2021','Personal Care','712','6.5 x 6.9 x 6.9 cm , 0.48 kg','620037');
INSERT INTO product VALUES('neW-01751','18.88','Cetaphil Gentle Skin Cleanser','a mild, non-irritating formulation that soothes skin as it cleans. ','190922042194','0.34kg','13/12/2019','Personal Care','807','1.6 x 4.1 x 7.4 cm, 0.3kg','620053');
INSERT INTO product VALUES('neW-01752','78.99','Cetaphil Moisturizing Cream','The non-greasy formula is excellent for hands, feet, elbows, knees, and any other areas that require intensive moisturization.','190922042196','0.67kg','03/12/2019','Personal Care','862','8.9 x 6.9 x 16.5 cm , 0.29 kg','620053');
INSERT INTO product VALUES('neW-01753','3.99','Cetaphil Gentle Skin Cleansing Cloths','Ultra soft and gentle,thoroughly removes makeup and dirt, leaving skin clean, refreshed and balanced','190922042198','0.23kg','12/12/2020','Personal Care','474','10.9 x 6.9 x 21.5 cm , 0.19 kg','620053');
INSERT INTO product VALUES('neW-01754','45.99','Thayers, Witch Hazel, Aloe Vera Formula, Alcohol-Free Toner, Rose Petal, 355ml','calming Rose Water to help soften your skin and give it a naturally healthy glow. ','190922042200','0.4kg','30/12/2023','Beauty','667','6 x 6.4 x 6.4 cm , 0.41 kg','');
INSERT INTO product VALUES('neW-01755','50.99','Morningstar Minerals, Derma Boost, Rejuvenating Spray Mist, 8 fl oz','Derma Boost Rejuvenating Spray Mist is a rich vitamin, mineral & amino acid replenisher for skin and hair. Extracted from ancient plant matter, Derma Boost is formulated to rejuvenate and restore skin to a smooth, healthy condition.','190922042202','0.32kg','12/01/2020','Beauty','719','20.6 x 4.8 x 4.8 cm , 0.27 kg','');
INSERT INTO product VALUES('neW-01756','70.33','E.L.F. Cosmetics, Makeup Mist & Set, Clear, 2.02 fl oz ','Prevents colors from running or fading to help keep your makeup in place all day.','190922042204','0.11kg','01/01/2023','Beauty','164','13.7 x 3.6 x 3.6 cm, 0.09 ','');
INSERT INTO product VALUES('neW-01757','80.33','Secret Key, Lemon Sparkling Peeling Gel, 120 ml','It helps remove waste matter from pore and exfoliate dead skin cell due to containing of refreshing lemon water and rich carbonated water, so your skin will become bright and healthy.','190922042206','0.16kg','01/01/2023','Beauty','229','14.7 x 6.4 x 6.4 cm , 0.14 kg ','');
INSERT INTO product VALUES('neW-01758','90.21','Hurraw Balm, Tinted Lip Balm, Black Cherry, .15 oz ','A deep wildcrafted alkanet infusion gives our black cherry balm a deep red sheer tint','190922042205','0.01kg','01/02/2023','Beauty','678','6.6 x 1.8 x 1.3 cm , 0.01 kg ','');
INSERT INTO product VALUES('neW-01759','90.88','Andalou Naturals, Night Repair Cream, Resveratrol Q10, Age-Defying, 1.7 oz ','Fruit stem cell complex and resveratrol CoQ10, super antioxidants, boost dermal vitality as goji glycopeptides uplift tone and texture overnight for velvety soft skin with the appearance of fewer fine lines and wrinkles and a rejuvenated complexion.','190922042293','0.13kg','01/03/2023','Beauty','714','9.7 x 5.8 x 5.8 cm , 0.11 kg ','');


INSERT INTO purchase VALUES('55001','neW-01703','1093','3','31.74','06/10/2017','08/10/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55002','neW-01701','1074','1','9.33','09/11/2017','11/11/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55003','neW-01702','1083','1','2.67','21/12/2017','25/12/2017','CREDIT CARD');
INSERT INTO purchase VALUES('55004','neW-01703','1066','2','21.16','29/10/2017','01/11/2017','PAYPAL');
INSERT INTO purchase VALUES('55005','neW-01702','1012','5','13.35','11/12/2017','15/12/2017','PAYPAL');
INSERT INTO purchase VALUES('55006','neW-01705','1016','3','270.9','12/10/2017','15/10/2017','CASH ON DELIVERY');
INSERT INTO purchase VALUES('55007','neW-01706','1088','4','359.96','20/11/2017','23/11/2017','CASH ON DELIVERY');
INSERT INTO purchase VALUES('55008','neW-01702','1025','4','10.68','03/11/2017','06/11/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55009','neW-01708','1001','1','32.35','11/10/2017','15/10/2017','CREDIT CARD');
INSERT INTO purchase VALUES('55010','neW-01703','1063','1','10.58','08/10/2017','10/10/2017','CREDIT CARD');
INSERT INTO purchase VALUES('55011','neW-01708','1031','5','161.75','24/12/2017','26/12/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55012','neW-01725','1079','3','137.01','29/11/2017','01/12/2017','PAYPAL');
INSERT INTO purchase VALUES('55013','neW-01712','1063','1','57.67','05/10/2017','10/10/2017','PAYPAL');
INSERT INTO purchase VALUES('55014','neW-01708','1070','1','32.35','29/10/2017','03/11/2017','CASH ON DELIVERY');
INSERT INTO purchase VALUES('55015','neW-01720','1032','4','89.4','25/10/2017','28/10/2017','PAYPAL');
INSERT INTO purchase VALUES('55016','neW-01719','1002','4','98.64','03/10/2017','06/10/2017','CREDIT CARD');
INSERT INTO purchase VALUES('55017','neW-01720','1052','5','111.75','02/10/2017','05/10/2017','CREDIT CARD');
INSERT INTO purchase VALUES('55018','neW-01717','1099','4','361.08','27/10/2017','30/10/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55019','neW-01720','1070','1','22.35','05/10/2017','05/10/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55020','neW-01719','1091','4','98.64','29/10/2017','03/11/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55021','neW-01749','1054','4','359.96','22/12/2017','15/12/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55022','neW-01721','1022','4','261.72','06/12/2017','10/12/2017','CREDIT CARD');
INSERT INTO purchase VALUES('55023','neW-01722','1045','5','216.6','29/11/2017','01/12/2017','CREDIT CARD');
INSERT INTO purchase VALUES('55024','neW-01725','1039','4','182.68','11/11/2017','15/11/2017','CREDIT CARD');
INSERT INTO purchase VALUES('55025','neW-01719','1095','5','123.3','09/10/2017','11/10/2017','CREDIT CARD');
INSERT INTO purchase VALUES('55026','neW-01725','1012','3','137.01','17/11/2017','20/11/2017','CREDIT CARD');
INSERT INTO purchase VALUES('55027','neW-01723','1094','3','103.62','18/11/2017','21/11/2017','PAYPAL');
INSERT INTO purchase VALUES('55028','neW-01727','1067','2','109.06','06/10/2017','10/10/2017','PAYPAL');
INSERT INTO purchase VALUES('55029','neW-01744','1037','4','134.6','26/11/2017','30/11/2017','PAYPAL');
INSERT INTO purchase VALUES('55030','neW-01729','1060','1','67.22','13/10/2017','16/10/2017','PAYPAL');
INSERT INTO purchase VALUES('55031','neW-01744','1026','5','168.25','29/12/2017','27/01/2018','PAYPAL');
INSERT INTO purchase VALUES('55032','neW-01730','1005','2','24.9','09/10/2017','11/10/2017','PAYPAL');
INSERT INTO purchase VALUES('55033','neW-01732','1073','5','272.15','20/12/2017','23/12/2017','PAYPAL');
INSERT INTO purchase VALUES('55034','neW-01733','1010','2','178.46','23/12/2017','26/12/2017','PAYPAL');
INSERT INTO purchase VALUES('55035','neW-01730','1069','2','24.9','16/11/2017','19/11/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55036','neW-01735','1080','5','451.7','24/11/2017','27/11/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55037','neW-01725','1039','2','91.34','30/11/2017','03/12/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55038','neW-01737','1017','1','9.32','24/12/2017','27/12/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55039','neW-01738','1050','3','270.69','14/11/2017','17/11/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55040','neW-01739','1049','5','111.7','27/12/2017','30/12/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55041','neW-01725','1097','2','91.34','30/10/2017','03/11/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55042','neW-01730','1092','1','12.45','26/12/2017','29/12/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55043','neW-01742','1010','5','117.25','05/12/2017','09/12/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55044','neW-01743','1072','1','67.42','03/10/2017','06/10/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55045','neW-01744','1028','1','33.65','02/12/2017','06/12/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55046','neW-01745','1065','5','334.95','24/12/2017','27/12/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55047','neW-01749','1043','4','359.96','11/11/2017','15/11/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55048','neW-01747','1035','5','223.85','17/11/2017','20/11/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55049','neW-01748','1008','3','270','17/12/2017','21/12/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55050','neW-01749','1052','5','449.95','28/12/2017','30/12/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55051','neW-01725','1010','3','137.01','11/12/2017','15/12/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55052','neW-01749','1024','5','449.95','17/11/2017','20/11/2017','PAYPAL');
INSERT INTO purchase VALUES('55053','neW-01749','1016','4','359.96','17/12/2017','20/12/2017','PAYPAL');
INSERT INTO purchase VALUES('55054','neW-01737','1058','1','9.32','28/12/2017','30/12/2017','CASH ON DELIVERY');
INSERT INTO purchase VALUES('55055','neW-01737','1059','3','27.96','11/11/2017','15/11/2017','ONLINE BANKING');
INSERT INTO purchase VALUES('55056','neW-01725','1100','1','45.67','17/11/2017','20/11/2017','CREDIT CARD');
INSERT INTO purchase VALUES('55057','neW-01748','1002','3','270','28/12/2018','01/01/2018','CREDIT CARD');
INSERT INTO purchase VALUES('55058','neW-01743','1008','3','202.26','03/12/2018','06/12/2018','CREDIT CARD');
INSERT INTO purchase VALUES('55059','neW-01749','1084','1','89.99','29/12/2017','03/01/2018','PAYPAL');
INSERT INTO purchase VALUES('55060','neW-01748','1050','2','180','08/12/2017','11/01/2017','PAYPAL');




INSERT INTO vendor VALUES('620001','21st Century','018-5760639','896 Jln Kelantan Kampung Sekati 21200 Manir Kuala Terengganu','Chester Bruce','Qiao Ning','Customer Commitment','Vendor of the Year 2011');
INSERT INTO vendor VALUES('620002','Acure Organics','018-4387306','5 Lrg Raja Bot 50300 Wilayah Persekutuan','Earnest Meyers','Wen Huang','Quality','Top Ten Vendor 2010');
INSERT INTO vendor VALUES('620003','ALLMAX Nutrition','012-4232947','No. 189 Lbh Chulia 10200 Pulau Penang','Lyle Bennett','Zi ZhenKang','Integrity','Best Overall Performance');
INSERT INTO vendor VALUES('620004','Amazing Grass','019-9068411','Bt 6 1/4 Kampung Tanjung Medan Layang-Layang Kiri 32800 Parit Perak','Lowell Dean','Tan Yu','Different','Best initiative to Improve Customer Experience');
INSERT INTO vendor VALUES('620005','American Health','011-2451047','93 Jln Asli 17 Taman Pasir Putih 81700 Pasir Gudang Pasir Gudang Johor','Dennis Keith','Gu Yazhu','Resourceful','Best Innovative Solution');
INSERT INTO vendor VALUES('620006','Andalou Naturals','019-9075419','90 Jln Permai 11700 Gelugor Penang','George Alexander','Lei Jiang','Enthusiasm','In Recognition of Reaching 99% Defect Free Level');
INSERT INTO vendor VALUES('620007','Aura Cacia','018-4850302','48 JLN MUTIARA EMAS 5/17 TAMAN MOUNT AUSTIN 81100 Johor','Spencer Coffey','Lang Ah','Environment','Quality Award 2011');
INSERT INTO vendor VALUES('620008','Azelique','016-5730558','A0854882 Kampung Gabus 09100 Baling Baling Kedah','Todd Stewart','Yao Heng','Patient-Centered','Top Ten Vendor 2010');
INSERT INTO vendor VALUES('620009','Bluebonnet Nutrition','017-1871891','17A Jln Pasir Akar Kampung Lubok Kawah 22000 Jerteh Terengganu','Ivan Burt','Yi Min','Passion','Brand of the Year 2013');
INSERT INTO vendor VALUES('620010','Boiron','014-4731783','30 Jln Kota Tinggi Batu 5 1/2 81100 Johor','Joseph Cummings','Shao Luoyang','Patience','Gold Level Dealer 2014');
INSERT INTO vendor VALUES('620011','California Gold Nutrition','014-9987918','869 Jln Cenderawasih 1 Taman Nuri 05300 Alor Setar','Fu Qiang','Kenneth Everett','Success','Top Ten Vendor 2010');
INSERT INTO vendor VALUES('620012','Carlson Labs','011-2841001','73 Jln Utama 2/22 Taman Perindustrian Pcg Utama 47100 Puchong','Han Guanyu','Earl Sargent','Sustainability','Certified Reseller');
INSERT INTO vendor VALUES('620013','ChildLife','012-4494988','G95970 Kampung Sindel 88100 Kota Kinabalu Sabah','Deng Jin','Oliver James','People','Quality Award 2010');
INSERT INTO vendor VALUES('620014','Country Life','015-8525656','No. 28 Tkt Teluk Kumbar 2 11920 Bayan Lepas Pulau Pinang','Jia Long','John Maxwell','Health','Top Ten Vendor 2011&2012');
INSERT INTO vendor VALUES('620015','Derma E','017-8947252','62 Jalan 8/22E Danau Kota 53300 Wilayah Persekutuan','Cui Zexi','Benjamin Clements','Warmth','Top Ten Vendor 2010');
INSERT INTO vendor VALUES('620016','Desert Essence','013-2134139','Blok 5 Pantai Panorama 5 M1 3 Jln 112H Off Jalan Kerinchi Kampung Kerinchi 59200 Wilayah Persekutuan','Song Huang','Alan Craft','Quality','Quality Award 2009');
INSERT INTO vendor VALUES('620017','Doctor's Best','018-9245435','11-33 Jalan Ibrahim 83000 Batu Pahat Johor','Ding Zhong','Eric Rivera','Hygiene','Top Ten Vendor 2010');
INSERT INTO vendor VALUES('620018','Dr.Axe','012-4409148','Pasar Besar Kedai Payang Jln Sultan Zainal Abidin 20000 Kuala Terengganu','Qiu Meng','Tyler Larsen','Deliver the WOW experience','Brand of the Year 2000');
INSERT INTO vendor VALUES('620019','Dr.Mercola','012-7950115','No. 19 Mini Stadium Jln Pasir Pekan 17000 Pasir Mas Kelantan','Kong Xia','Spencer Maxwell','Embrace continuous improvement','Top Ten Vendor 2011&2012');
INSERT INTO vendor VALUES('620020','Dymatize Nutrition','019-7272980','1 Blok A Mdld0628 Jln Matahari Ming Huat Light Industrial Ctr 91100 Lahad Datu Lahad Datu Sabah','Ye Hua','Landon Dalton','Build open and honest relationships with communication','Platinum Level Dealer');
INSERT INTO vendor VALUES('620021','Earth Mama Angel Baby','011-4345512','1 Pt165 Jln Parit Dalam 15000 Kota Bharu Kota Bharu Kelantan','Cheng Xue','Huo Guanting','Hygiene is our priorities.','Top Ten Vendor 2010');
INSERT INTO vendor VALUES('620022','Enzymatic Therapy','013-2854870','368E Jln Madrasah Jelutong Timur 11600 Jelutong 11600 Malaysia Jelutong Penang','Shi Huo','Pan Fang','Lead healthier lives starts with our employees','Brand of the Year 2012');
INSERT INTO vendor VALUES('620023','Enzymedica','016-3144353','No. 3 Jln Sek Keb Bukit Payong 21400 Bukit Payong Terengganu Kuala Terengganu','Xing Lim','Xuan Min','Making quality and healthy awards','Top Ten Vendor 2010');
INSERT INTO vendor VALUES('620024','Flora','015-6672896','1639 Jln Junjong Kampung Air Merah 09000 Kulim Kulim Kedah','Wen Yang','Guo ZhenKang','We work hard  to give you the best product.','Quality Assurance Award 2004');
INSERT INTO vendor VALUES('620025','Frontier Natural','011-5494819','13770 Jln Gong Badak 21300 Kuala Nerus 21300 Malaysia Kuala Terengganu','Hao Fang','Tao Lei','We treat everyone honestly and with respect','Top Ten Vendor 2011&2012');
INSERT INTO vendor VALUES('620026','Gaia Herbs','016-5731587','39 Jln Baiduri 1 Taman Baiduri 42700 Banting Banting','Sun Yin','Lai Xinyi','Enable people to live healthier lives','Quality Award 2009');
INSERT INTO vendor VALUES('620027','Garden of Life','013-4127401','11-33 Jalan Ibrahim 83000 Batu Pahat Johor','Tan Jin','Long Jingyi','We hold everything together and provides long term stability','Organic Food Certification,NSF/ANSI 305: Personal Care');
INSERT INTO vendor VALUES('620028','Giovanni','011-1051246','No. 507 Jln Datuk Ajibah Abol 93400 Sarawak','Shen Shuren','Wu Li','Passion for nutrition and health.','Quality Award 2009');
INSERT INTO vendor VALUES('620029','Healthy Origins','011-2062450','2 1 Jln Haji Yaakub Kampung Air 88000Kota Kinabalu Sabah','Yang Wen','Wan Shui','Quality,services, and competitive prices.','Top 10 Best Seller in iHerbz of Year 2012');
INSERT INTO vendor VALUES('620030','Hero Nutritional','018-9806155','1 45 Jln Kota Raja Batu 1 1/2 Kampung Jawa 41000','Deng Min','Xiao Ru','We strive to do the right thing all the time.','Top Ten Vendor 2010');
INSERT INTO vendor VALUES('620031','Himalaya','014-1288504','2072 1 Jln Mersawa Pending Industrial Estate 93450 Kuching Sarawak','Charlie Riley','Sylvia O'Neal','Honesty: We tell the truth to the best of our knowledge.','Top 10 Best Seller in iHerbz of Year 2012');
INSERT INTO vendor VALUES('620032','iHerb Brands','016-7816190','1 77A Jln Besar Taman Perumahan Jpn 83700 Yong Peng Johor','Joseph Shaw','Wanda Lancaster','Accountability: We work hard to keep our promises so that our investors, co-workers, investee companies and business partners can depend on us.','2018 Food Safety Leaderships Awards');
INSERT INTO vendor VALUES('620033','Irwin Naturals','013-7216955','No. 45 03Rd Floor Jln Susur Dewata 1 Taman Larkin Perdana 80350 Johor','Milton Barron','Pauline Marks','Integrity: We keep the highest standards of business ethics and professionalism.','Vendor of the Year 2014');
INSERT INTO vendor VALUES('620034','Jarrow Formulas','012-4610021','83710 Parit Yaani Johor Parit Yaani Johor 83710','Constance Gray','Claudia Stuart','Meritocracy: We work hard and try our best to deliver the highest quality of work.','Platinum Level Dealer');
INSERT INTO vendor VALUES('620035','Jason Natural','012-6520383','6-1 1St Floor Jln 1/76D Desa Pandan 55100 Wilayah Persekutuan','Mattie Short','Cheryl Logan','Always Be Learning','Top Ten Vendor 2011&2012');
INSERT INTO vendor VALUES('620036','K - Beauty(Korean)','018-3657947','434 Kampung Kijang 15350 Kota Bharu Kelantan','Anne Rogers','Sarah Stuart','We always give more than we take.','Top Ten Dealer');
INSERT INTO vendor VALUES('620037','Life Extension','014-5169908','G 115 Jln Denai Intan Bandar Baru 36000 Teluk Intan Perak ','Carol Lindsay','Michele Branch','Be Enthusiastic','Quality Assurance Award 2013');
INSERT INTO vendor VALUES('620038','Lypricel','012-3658559','1 Komplek Bagan Jln Jetty Lama 12000 Butterworth Butterworth Penang 12000 Malaysia Butterworth Penan','Cathy Haynes','Carla Spencer','We believe in the big picture, the direction we are all collectively going, and exactly what needs to be done to get there.','Top 10 Best Seller in iHerbz of Year 2012');
INSERT INTO vendor VALUES('620039','Mad Hippie','015-2101134','Gerai Umno 5 Jln Kepong Ulu Frim 52100 Kepong','Cassie Myers','Madison Beach','People: Our greatest asset','Gold Level Dealer 2010');
INSERT INTO vendor VALUES('620040','Madre Labs','012-2955786','49 Jln Hang Tuah 9 Taman Skudai Baru 81300 Skudai','Paula Gamble','Angel Peters','Innovation: Unique offerings and processes','Quality Assurance Award 2005');
INSERT INTO vendor VALUES('620041','Manuka Doctor','015-4958824','90 Jln Permai 11700 Gelugor Gelugor Penang ','Angelica Short','Yao Hong','Confidentiality: We safeguard confidential information and respect the privacy of our investors, co-workers, investee companies and business partners.','Organic Food CertificationNSF/ANSI 305: Personal Care');
INSERT INTO vendor VALUES('620042','MegaFood','017-6261543','2 Pasar Moden Jln Gombak Batu 5 53000 Wilayah Persekutuan','Brooklyn Alford','Dai Wei','Quality: We manufacture all of our products in small batches to ensure freshness, consistency and perfection.','Gold Level Dealer 2011');
INSERT INTO vendor VALUES('620043','Mild By Nature','012-3797124','No. 320 Jln 1A/4 Bandar Baru Sungai Buloh 47000 Sungai Buloh','Glenn Walsh','Su Jingyi','Commitment to Quality.','Organic Food CertificationNSF/ANSI 305: Personal Care');
INSERT INTO vendor VALUES('620044','MRM','017-3864044','No. 14 Jln Sungai Tua Kampung Laksamana 68100 Batu Caves','Perry Byrd','Lin Gengxin','Service: Treat every customer as if they are a customer for life.','Top Ten Vendor 2011&2012');
INSERT INTO vendor VALUES('620045','MusclePharm','011-7445241','6 Jln Selaseh 18 Taman Selaseh 68100 Gombak 68100 Batu Caves','Russell Moon','Tao Ru','Discovering the newest micro and macronutrients and their proper use to optimize your energy','Platinum Level Dealer');
INSERT INTO vendor VALUES('620046','Muscletech','014-5413020','No. 1089 Kampung Dendang 16450 Ketereh Kelantan','Charles Giles','Gong Rong','Passion for natural health','Certified Reseller');
INSERT INTO vendor VALUES('620047','Natrol','015-5487685','17 1 Jln Sp 2/7 Taman Serdang Perdana 43300 Seri Kembangan','Stuart Bryant','Zhang Guanyu','All Natural: Our products have always, and will always, contain nothing but all natural ingredients.','Top Ten Vendor 2011&2012');
INSERT INTO vendor VALUES('620048','Natural Factors','014-4190427','1 Komplek Perniagaan Mdb Kampung Raja 22200 Besut','Jeffery Buckner','Lang Ju','Environmental Conscience: Our products are cruelty free, biodegradable and minimally packaged with recycled and recyclable materials.','Excellence In Customer Service Award');
INSERT INTO vendor VALUES('620049','Nature's Answer','012-9453717','1 18 Jln Pedada Pusat Pedada 96000 Sibu Sibu Sarawak','Kelly Briggs','Shen Lei','Social Responsibility:Our actions demonstrate our care, respect and compassion for our people, the broader community and the environment.','Top 10 Best Seller in iHerbz of Year 2012');
INSERT INTO vendor VALUES('620050','Nature's Plus','017-6498873','Ground Floor Safuan Plaza Jln Raja Alang 50300 Wilayah Persekutuan','William Sellers','Cui Lingxin','Embrace Change:We embrace positive change that leads to greater efficiency, improved products, and increased customer value.','Excellence In Customer Service Award 2011');
INSERT INTO vendor VALUES('620051','Cosrx','014-6862382','Tsim Sha Tsui,Hong Kong,Hong Kong','Patrick Gilliam','Stacie Bass','Beauty In Simplicity.','Vendor of the Year 2011');
INSERT INTO vendor VALUES('620052','EverydayCoconut','014-3429901','38-3, Kamata 5-chome, Ohta-ku, Tokyo,Japan','Joe Sanders','Lily Bond','Beauty.Equality.Empowerment.','Quality Assurance Award 2013');
INSERT INTO vendor VALUES('620053','Cetaphil','016-9227553','317-1226, Taiyu Fukuroyachi, Yokote-shi, Akita,Japan','Francisco Wright','Jada Bowers','Healthy skin is beautiphil','The most ideal personal care products choice awards');
INSERT INTO vendor VALUES('620054','Dr.Woods','019-5810350','165-1203, Suzurankoen, Otofuke-cho Kato-gun, Hokkaido,Japan','Estella Osborne','Cameron Pucket','Naturally.','Quality Assurance Award 2012');
INSERT INTO vendor VALUES('620055','SebaMed','015-3991619','346-1221, Tsutsumicho, Sakata-shi, Yamagata,Japan','Dora McFarland','Julia Preston','Ideal for healthy skin','Top 10 Beauty Products of Year 2012');
INSERT INTO vendor VALUES('620056','Cerav','017-8567441','374-1185, Kita 3-johigashi, Chuo-ku Sapporo-shi, Hokkaido,Japan','Pat Ortiz','Sara Barrera','Advanced skincare without a prescription','Gold Level Dealer 2012');
INSERT INTO vendor VALUES('620057','Secret Key','018-6626998','24-14, Senzoku 2-chome, Meguro-ku, Tokyo,Japan','Veronica Benjamin','Geraldine Newton','Beauty On Point!','Excellence In Customer Service Award 2012');
INSERT INTO vendor VALUES('620058','Avalon Organic','018-6101850','215 Jade Place,Highlands Park,New Plymouth,4312,NZ.','Eva Maddox','Ann Phillips','Pure ingredients, formula transparency','Vendor of the Year 2012');
INSERT INTO vendor VALUES('620059','Innisfree','018-4821394','21,Jalan PJS 9/16,Bandar Sunway, 47500 Petaling Jaya,Selangor.','Jordan Garner','Cathy Chapman','Find pure island's natural ingredients.','Gold Level Dealer 2013');
INSERT INTO vendor VALUES('620060','Nature Republic','018-9512912','2460 Hart Ridge Road,Saginaw,MI,Michigan,48607 United States','Lila Cox','Carrie Hamilton','Natural Benefit ','Vendor of the Year 2013');



INSERT INTO credit VALUES('10100','1080','28.22','10.56');
INSERT INTO credit VALUES('10101','1002','23.77','12.22');
INSERT INTO credit VALUES('10102','1003','100.46','12.27');
INSERT INTO credit VALUES('10103','1003','90.22','12.88');
INSERT INTO credit VALUES('10104','1003','45.9','12.44');
INSERT INTO credit VALUES('10105','1006','44.22','89.22');
INSERT INTO credit VALUES('10106','1007','11.22','66.13');
INSERT INTO credit VALUES('10107','1007','45.05','23.75');
INSERT INTO credit VALUES('10108','1007','12.66','3.86');
INSERT INTO credit VALUES('10109','1007','45.21','12.77');
INSERT INTO credit VALUES('10110','1011','8.17','9.23');
INSERT INTO credit VALUES('10111','1012','44.21','34.11');
INSERT INTO credit VALUES('10112','1007','12.99','2.81');
INSERT INTO credit VALUES('10113','1014','4.55','2.09');
INSERT INTO credit VALUES('10114','1015','11.35','3.57');
INSERT INTO credit VALUES('10115','1016','7.31','89.77');
INSERT INTO credit VALUES('10116','1017','22.31','90.32');
INSERT INTO credit VALUES('10117','1018','32.76','74.22');
INSERT INTO credit VALUES('10118','1019','12.55','44.21');
INSERT INTO credit VALUES('10119','1020','43.24','45.11');
INSERT INTO credit VALUES('10120','1021','23.33','11.33');
INSERT INTO credit VALUES('10121','1022','77.78','90.22');
INSERT INTO credit VALUES('10122','1023','0.22','0.84');
INSERT INTO credit VALUES('10123','1024','23.22','32.34');
INSERT INTO credit VALUES('10124','1025','23.44','34.66');
INSERT INTO credit VALUES('10125','1026','88.65','100.24');
INSERT INTO credit VALUES('10126','1088','33.46','43.54');
INSERT INTO credit VALUES('10127','1028','12.56','72.44');
INSERT INTO credit VALUES('10128','1029','12.32','67.55');
INSERT INTO credit VALUES('10129','1030','78.99','90.44');
INSERT INTO credit VALUES('10130','1031','22.35','55.22');
INSERT INTO credit VALUES('10131','1088','46.43','67.78');
INSERT INTO credit VALUES('10132','1033','12.45','26.33');
INSERT INTO credit VALUES('10133','1034','12.23','34.66');
INSERT INTO credit VALUES('10134','1088','67.54','7.22');
INSERT INTO credit VALUES('10135','1036','43.33','45.55');
INSERT INTO credit VALUES('10136','1037','9.44','31.12');
INSERT INTO credit VALUES('10137','1038','2.44','32.21');
INSERT INTO credit VALUES('10138','1039','1.22','9.32');
INSERT INTO credit VALUES('10139','1040','9.45','12.34');
INSERT INTO credit VALUES('10140','1041','12.44','20.44');
INSERT INTO credit VALUES('10141','1054','9.54','15.33');
INSERT INTO credit VALUES('10142','1043','22.21','26.33');
INSERT INTO credit VALUES('10143','1043','90.22','120.33');
INSERT INTO credit VALUES('10144','1054','1.22','4.22');
INSERT INTO credit VALUES('10145','1043','56.44','67.42');
INSERT INTO credit VALUES('10146','1047','1.22','3.44');
INSERT INTO credit VALUES('10147','1048','9.37','4.55');
INSERT INTO credit VALUES('10148','1049','8.42','9.32');
INSERT INTO credit VALUES('10149','1068','7.24','18.44');
INSERT INTO credit VALUES('10150','1068','0.43','2.22');
INSERT INTO credit VALUES('10151','1052','2.23','4.55');
INSERT INTO credit VALUES('10152','1054','1.32','3.22');
INSERT INTO credit VALUES('10153','1068','1.22','3.43');
INSERT INTO credit VALUES('10154','1055','0.32','2.41');
INSERT INTO credit VALUES('10155','1054','89.32','90.22');
INSERT INTO credit VALUES('10156','1057','56.78','67.55');
INSERT INTO credit VALUES('10157','1054','12.33','30.33');
INSERT INTO credit VALUES('10158','1059','56.43','70.33');
INSERT INTO credit VALUES('10159','1068','12.56','20.33');
INSERT INTO credit VALUES('10160','1061','78.32','90.65');
INSERT INTO credit VALUES('10161','1054','34.22','40.45');
INSERT INTO credit VALUES('10162','1063','21.22','35.66');
INSERT INTO credit VALUES('10163','1064','8.54','20.43');
INSERT INTO credit VALUES('10164','1065','32.2','45.56');
INSERT INTO credit VALUES('10165','1066','12.21','20.34');
INSERT INTO credit VALUES('10166','1067','9.34','20.34');
INSERT INTO credit VALUES('10167','1068','3.11','4.09');
INSERT INTO credit VALUES('10168','1069','1.56','5.33');
INSERT INTO credit VALUES('10169','1070','21.33','30.56');
INSERT INTO credit VALUES('10170','1071','21.24','30.23');
INSERT INTO credit VALUES('10171','1072','76.21','80.12');
INSERT INTO credit VALUES('10172','1073','52.45','60.44');
INSERT INTO credit VALUES('10173','1074','43.33','60.31');
INSERT INTO credit VALUES('10174','1075','2.33','8.32');
INSERT INTO credit VALUES('10175','1076','7.22','8.55');
INSERT INTO credit VALUES('10176','1077','8.22','19.53');
INSERT INTO credit VALUES('10177','1078','9.21','8.23');
INSERT INTO credit VALUES('10178','1079','54.22','60.22');
INSERT INTO credit VALUES('10179','1088','88.22','90.57');
INSERT INTO credit VALUES('10180','1081','76.33','90.31');
INSERT INTO credit VALUES('10181','1082','21.11','34.56');
INSERT INTO credit VALUES('10182','1083','34.76','50.91');
INSERT INTO credit VALUES('10183','1084','43.45','50.36');
INSERT INTO credit VALUES('10184','1085','23.76','40.51');
INSERT INTO credit VALUES('10185','1088','31.22','40.36');
INSERT INTO credit VALUES('10186','1063','8.32','10.36');
INSERT INTO credit VALUES('10187','1068','23.32','30.41');
INSERT INTO credit VALUES('10188','1089','23.21','30.43');
INSERT INTO credit VALUES('10189','1068','311.11','483.44');
INSERT INTO credit VALUES('10190','1063','32.22','40.34');
INSERT INTO credit VALUES('10191','1063','22.45','43.67');
INSERT INTO credit VALUES('10192','1068','22.22','27.52');
INSERT INTO credit VALUES('10193','1094','65.56','70.46');
INSERT INTO credit VALUES('10194','1063','8.53','10.35');
INSERT INTO credit VALUES('10195','1096','21.55','41.34');
INSERT INTO credit VALUES('10196','1097','343.32','388.23');
INSERT INTO credit VALUES('10197','1088','43.55','50.43');
INSERT INTO credit VALUES('10198','1063','5.22','8.43');
INSERT INTO credit VALUES('10199','1100','12.32','19.32');




INSERT INTO rating VALUES('1001','neW-01700','3','29/05/2018');
INSERT INTO rating VALUES('1002','neW-01701','3','26/06/2018');
INSERT INTO rating VALUES('1003','neW-01702','5','24/04/2018');
INSERT INTO rating VALUES('1004','neW-01703','5','26/04/2018');
INSERT INTO rating VALUES('1005','neW-01704','3','14/05/2018');
INSERT INTO rating VALUES('1006','neW-01705','1','13/06/2018');
INSERT INTO rating VALUES('1007','neW-01706','3','26/06/2018');
INSERT INTO rating VALUES('1008','neW-01707','2','21/05/2018');
INSERT INTO rating VALUES('1009','neW-01708','5','19/06/2018');
INSERT INTO rating VALUES('1010','neW-01709','2','17/06/2018');
INSERT INTO rating VALUES('1011','neW-01710','5','22/04/2018');
INSERT INTO rating VALUES('1012','neW-01711','5','13/06/2018');
INSERT INTO rating VALUES('1013','neW-01712','3','21/05/2018');
INSERT INTO rating VALUES('1014','neW-01713','2','22/04/2018');
INSERT INTO rating VALUES('1015','neW-01714','3','24/06/2018');
INSERT INTO rating VALUES('1016','neW-01715','3','22/06/2018');
INSERT INTO rating VALUES('1017','neW-01716','5','13/05/2018');
INSERT INTO rating VALUES('1018','neW-01717','4','21/06/2018');
INSERT INTO rating VALUES('1019','neW-01718','3','15/05/2018');
INSERT INTO rating VALUES('1020','neW-01719','1','18/04/2018');
INSERT INTO rating VALUES('1021','neW-01720','4','26/05/2018');
INSERT INTO rating VALUES('1022','neW-01721','5','13/05/2018');
INSERT INTO rating VALUES('1023','neW-01722','3','20/06/2018');
INSERT INTO rating VALUES('1024','neW-01723','3','13/04/2018');
INSERT INTO rating VALUES('1025','neW-01724','5','20/06/2018');
INSERT INTO rating VALUES('1026','neW-01725','4','19/05/2018');
INSERT INTO rating VALUES('1027','neW-01726','1','17/04/2018');
INSERT INTO rating VALUES('1028','neW-01727','3','14/04/2018');
INSERT INTO rating VALUES('1029','neW-01728','3','30/04/2018');
INSERT INTO rating VALUES('1030','neW-01729','4','17/05/2018');
INSERT INTO rating VALUES('1031','neW-01730','3','16/05/2018');
INSERT INTO rating VALUES('1032','neW-01731','2','13/05/2018');
INSERT INTO rating VALUES('1033','neW-01732','3','15/04/2018');
INSERT INTO rating VALUES('1034','neW-01733','1','16/06/2018');
INSERT INTO rating VALUES('1035','neW-01734','3','13/04/2018');
INSERT INTO rating VALUES('1036','neW-01735','5','16/06/2018');
INSERT INTO rating VALUES('1037','neW-01736','5','17/05/2018');
INSERT INTO rating VALUES('1038','neW-01737','5','13/06/2018');
INSERT INTO rating VALUES('1039','neW-01738','3','25/04/2018');
INSERT INTO rating VALUES('1040','neW-01739','1','28/04/2018');
INSERT INTO rating VALUES('1041','neW-01740','5','25/05/2018');
INSERT INTO rating VALUES('1042','neW-01741','1','14/04/2018');
INSERT INTO rating VALUES('1043','neW-01742','2','16/06/2018');
INSERT INTO rating VALUES('1044','neW-01743','4','17/06/2018');
INSERT INTO rating VALUES('1045','neW-01744','4','19/04/2018');
INSERT INTO rating VALUES('1046','neW-01745','3','22/04/2018');
INSERT INTO rating VALUES('1047','neW-01746','1','14/05/2018');
INSERT INTO rating VALUES('1048','neW-01747','4','23/06/2018');
INSERT INTO rating VALUES('1049','neW-01748','5','28/04/2018');
INSERT INTO rating VALUES('1050','neW-01749','5','17/05/2018');
INSERT INTO rating VALUES('1051','neW-01750','5','23/04/2018');
INSERT INTO rating VALUES('1052','neW-01751','5','23/04/2018');
INSERT INTO rating VALUES('1053','neW-01752','2','21/05/2018');
INSERT INTO rating VALUES('1054','neW-01753','4','29/06/2018');
INSERT INTO rating VALUES('1055','neW-01754','3','22/06/2018');
INSERT INTO rating VALUES('1056','neW-01755','3','28/05/2018');
INSERT INTO rating VALUES('1057','neW-01756','1','28/05/2018');
INSERT INTO rating VALUES('1058','neW-01757','2','19/04/2018');
INSERT INTO rating VALUES('1059','neW-01758','1','30/05/2018');
INSERT INTO rating VALUES('1060','neW-01759','3','23/06/2018');








