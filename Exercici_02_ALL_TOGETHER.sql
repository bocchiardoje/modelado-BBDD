# Exercici_02_01_Vueling =============================================================================================
DROP DATABASE IF EXISTS vueling;
CREATE DATABASE vueling CHARACTER SET utf8mb4;
USE vueling;

CREATE TABLE `vueling`.`planes`
(
   `id_plane` INT(4) NOT NULL AUTO_INCREMENT ,
    `capacity` INT(4) NOT NULL ,
    `model` VARCHAR(50) NOT NULL ,
    UNIQUE (`id_plane`),
    PRIMARY KEY (`id_plane`)
)
ENGINE = InnoDB;

CREATE TABLE `vueling`.`seats`
(
   `id_seat` INT(4) NOT NULL AUTO_INCREMENT,
    `plane_id` INT(4) NOT NULL ,
    INDEX (`plane_id`),
    UNIQUE (`id_seat`),
    PRIMARY KEY (`id_seat`)
)
ENGINE = InnoDB;

INSERT INTO `vueling`.`planes` (`id_plane`, `capacity`, `model`)
VALUES
('1','295','Airbus A330-300'),
('2','300','Airbus A340-300'),
('3','372','Airbus A340-500');

INSERT INTO `vueling`.`seats` (`id_seat`, `plane_id`)
VALUES
('1','1'),
('2','1'),
('3','1'),
('4','1'),
('5','1'),
('6','1'),
('7','1'),
('8','1'),
('9','1'),
('10','1'),
('11','1'),
('12','1'),
('13','1'),
('14','1'),
('15','1'),
('16','1'),
('17','1'),
('18','1'),
('19','1'),
('20','1'),
('21','1'),
('22','1'),
('23','1'),
('24','1'),
('25','1'),
('26','1'),
('27','1'),
('28','1'),
('29','1'),
('30','1'),
('31','1'),
('32','1'),
('33','1'),
('34','1'),
('35','1'),
('36','1'),
('37','1'),
('38','1'),
('39','1'),
('40','1'),
('41','1'),
('42','1'),
('43','1'),
('44','1'),
('45','1'),
('46','1'),
('47','1'),
('48','1'),
('49','1'),
('50','1'),
('51','1'),
('52','1'),
('53','1'),
('54','1'),
('55','1'),
('56','1'),
('57','1'),
('58','1'),
('59','1'),
('60','1'),
('61','1'),
('62','1'),
('63','1'),
('64','1'),
('65','1'),
('66','1'),
('67','1'),
('68','1'),
('69','1'),
('70','1'),
('71','1'),
('72','1'),
('73','1'),
('74','1'),
('75','1'),
('76','1'),
('77','1'),
('78','1'),
('79','1'),
('80','1'),
('81','1'),
('82','1'),
('83','1'),
('84','1'),
('85','1'),
('86','1'),
('87','1'),
('88','1'),
('89','1'),
('90','1'),
('91','1'),
('92','1'),
('93','1'),
('94','1'),
('95','1'),
('96','1'),
('97','1'),
('98','1'),
('99','1'),
('100','1'),
('101','1'),
('102','1'),
('103','1'),
('104','1'),
('105','1'),
('106','1'),
('107','1'),
('108','1'),
('109','1'),
('110','1'),
('111','1'),
('112','1'),
('113','1'),
('114','1'),
('115','1'),
('116','1'),
('117','1'),
('118','1'),
('119','1'),
('120','1'),
('121','1'),
('122','1'),
('123','1'),
('124','1'),
('125','1'),
('126','1'),
('127','1'),
('128','1'),
('129','1'),
('130','1'),
('131','1'),
('132','1'),
('133','1'),
('134','1'),
('135','1'),
('136','1'),
('137','1'),
('138','1'),
('139','1'),
('140','1'),
('141','1'),
('142','1'),
('143','1'),
('144','1'),
('145','1'),
('146','1'),
('147','1'),
('148','1'),
('149','1'),
('150','1'),
('151','1'),
('152','1'),
('153','1'),
('154','1'),
('155','1'),
('156','1'),
('157','1'),
('158','1'),
('159','1'),
('160','1'),
('161','1'),
('162','1'),
('163','1'),
('164','1'),
('165','1'),
('166','1'),
('167','1'),
('168','1'),
('169','1'),
('170','1'),
('171','1'),
('172','1'),
('173','1'),
('174','1'),
('175','1'),
('176','1'),
('177','1'),
('178','1'),
('179','1'),
('180','1'),
('181','1'),
('182','1'),
('183','1'),
('184','1'),
('185','1'),
('186','1'),
('187','1'),
('188','1'),
('189','1'),
('190','1'),
('191','1'),
('192','1'),
('193','1'),
('194','1'),
('195','1'),
('196','1'),
('197','1'),
('198','1'),
('199','1'),
('200','1'),
('201','1'),
('202','1'),
('203','1'),
('204','1'),
('205','1'),
('206','1'),
('207','1'),
('208','1'),
('209','1'),
('210','1'),
('211','1'),
('212','1'),
('213','1'),
('214','1'),
('215','1'),
('216','1'),
('217','1'),
('218','1'),
('219','1'),
('220','1'),
('221','1'),
('222','1'),
('223','1'),
('224','1'),
('225','1'),
('226','1'),
('227','1'),
('228','1'),
('229','1'),
('230','1'),
('231','1'),
('232','1'),
('233','1'),
('234','1'),
('235','1'),
('236','1'),
('237','1'),
('238','1'),
('239','1'),
('240','1'),
('241','1'),
('242','1'),
('243','1'),
('244','1'),
('245','1'),
('246','1'),
('247','1'),
('248','1'),
('249','1'),
('250','1'),
('251','1'),
('252','1'),
('253','1'),
('254','1'),
('255','1'),
('256','1'),
('257','1'),
('258','1'),
('259','1'),
('260','1'),
('261','1'),
('262','1'),
('263','1'),
('264','1'),
('265','1'),
('266','1'),
('267','1'),
('268','1'),
('269','1'),
('270','1'),
('271','1'),
('272','1'),
('273','1'),
('274','1'),
('275','1'),
('276','1'),
('277','1'),
('278','1'),
('279','1'),
('280','1'),
('281','1'),
('282','1'),
('283','1'),
('284','1'),
('285','1'),
('286','1'),
('287','1'),
('288','1'),
('289','1'),
('290','1'),
('291','1'),
('292','1'),
('293','1'),
('294','1'),
('295','1'),
('296','2'),
('297','2'),
('298','2'),
('299','2'),
('300','2'),
('301','2'),
('302','2'),
('303','2'),
('304','2'),
('305','2'),
('306','2'),
('307','2'),
('308','2'),
('309','2'),
('310','2'),
('311','2'),
('312','2'),
('313','2'),
('314','2'),
('315','2'),
('316','2'),
('317','2'),
('318','2'),
('319','2'),
('320','2'),
('321','2'),
('322','2'),
('323','2'),
('324','2'),
('325','2'),
('326','2'),
('327','2'),
('328','2'),
('329','2'),
('330','2'),
('331','2'),
('332','2'),
('333','2'),
('334','2'),
('335','2'),
('336','2'),
('337','2'),
('338','2'),
('339','2'),
('340','2'),
('341','2'),
('342','2'),
('343','2'),
('344','2'),
('345','2'),
('346','2'),
('347','2'),
('348','2'),
('349','2'),
('350','2'),
('351','2'),
('352','2'),
('353','2'),
('354','2'),
('355','2'),
('356','2'),
('357','2'),
('358','2'),
('359','2'),
('360','2'),
('361','2'),
('362','2'),
('363','2'),
('364','2'),
('365','2'),
('366','2'),
('367','2'),
('368','2'),
('369','2'),
('370','2'),
('371','2'),
('372','2'),
('373','2'),
('374','2'),
('375','2'),
('376','2'),
('377','2'),
('378','2'),
('379','2'),
('380','2'),
('381','2'),
('382','2'),
('383','2'),
('384','2'),
('385','2'),
('386','2'),
('387','2'),
('388','2'),
('389','2'),
('390','2'),
('391','2'),
('392','2'),
('393','2'),
('394','2'),
('395','2'),
('396','2'),
('397','2'),
('398','2'),
('399','2'),
('400','2'),
('401','2'),
('402','2'),
('403','2'),
('404','2'),
('405','2'),
('406','2'),
('407','2'),
('408','2'),
('409','2'),
('410','2'),
('411','2'),
('412','2'),
('413','2'),
('414','2'),
('415','2'),
('416','2'),
('417','2'),
('418','2'),
('419','2'),
('420','2'),
('421','2'),
('422','2'),
('423','2'),
('424','2'),
('425','2'),
('426','2'),
('427','2'),
('428','2'),
('429','2'),
('430','2'),
('431','2'),
('432','2'),
('433','2'),
('434','2'),
('435','2'),
('436','2'),
('437','2'),
('438','2'),
('439','2'),
('440','2'),
('441','2'),
('442','2'),
('443','2'),
('444','2'),
('445','2'),
('446','2'),
('447','2'),
('448','2'),
('449','2'),
('450','2'),
('451','2'),
('452','2'),
('453','2'),
('454','2'),
('455','2'),
('456','2'),
('457','2'),
('458','2'),
('459','2'),
('460','2'),
('461','2'),
('462','2'),
('463','2'),
('464','2'),
('465','2'),
('466','2'),
('467','2'),
('468','2'),
('469','2'),
('470','2'),
('471','2'),
('472','2'),
('473','2'),
('474','2'),
('475','2'),
('476','2'),
('477','2'),
('478','2'),
('479','2'),
('480','2'),
('481','2'),
('482','2'),
('483','2'),
('484','2'),
('485','2'),
('486','2'),
('487','2'),
('488','2'),
('489','2'),
('490','2'),
('491','2'),
('492','2'),
('493','2'),
('494','2'),
('495','2'),
('496','2'),
('497','2'),
('498','2'),
('499','2'),
('500','2'),
('501','2'),
('502','2'),
('503','2'),
('504','2'),
('505','2'),
('506','2'),
('507','2'),
('508','2'),
('509','2'),
('510','2'),
('511','2'),
('512','2'),
('513','2'),
('514','2'),
('515','2'),
('516','2'),
('517','2'),
('518','2'),
('519','2'),
('520','2'),
('521','2'),
('522','2'),
('523','2'),
('524','2'),
('525','2'),
('526','2'),
('527','2'),
('528','2'),
('529','2'),
('530','2'),
('531','2'),
('532','2'),
('533','2'),
('534','2'),
('535','2'),
('536','2'),
('537','2'),
('538','2'),
('539','2'),
('540','2'),
('541','2'),
('542','2'),
('543','2'),
('544','2'),
('545','2'),
('546','2'),
('547','2'),
('548','2'),
('549','2'),
('550','2'),
('551','2'),
('552','2'),
('553','2'),
('554','2'),
('555','2'),
('556','2'),
('557','2'),
('558','2'),
('559','2'),
('560','2'),
('561','2'),
('562','2'),
('563','2'),
('564','2'),
('565','2'),
('566','2'),
('567','2'),
('568','2'),
('569','2'),
('570','2'),
('571','2'),
('572','2'),
('573','2'),
('574','2'),
('575','2'),
('576','2'),
('577','2'),
('578','2'),
('579','2'),
('580','2'),
('581','2'),
('582','2'),
('583','2'),
('584','2'),
('585','2'),
('586','2'),
('587','2'),
('588','2'),
('589','2'),
('590','2'),
('591','2'),
('592','2'),
('593','2'),
('594','2'),
('595','2'),
('596','3'),
('597','3'),
('598','3'),
('599','3'),
('600','3'),
('601','3'),
('602','3'),
('603','3'),
('604','3'),
('605','3'),
('606','3'),
('607','3'),
('608','3'),
('609','3'),
('610','3'),
('611','3'),
('612','3'),
('613','3'),
('614','3'),
('615','3'),
('616','3'),
('617','3'),
('618','3'),
('619','3'),
('620','3'),
('621','3'),
('622','3'),
('623','3'),
('624','3'),
('625','3'),
('626','3'),
('627','3'),
('628','3'),
('629','3'),
('630','3'),
('631','3'),
('632','3'),
('633','3'),
('634','3'),
('635','3'),
('636','3'),
('637','3'),
('638','3'),
('639','3'),
('640','3'),
('641','3'),
('642','3'),
('643','3'),
('644','3'),
('645','3'),
('646','3'),
('647','3'),
('648','3'),
('649','3'),
('650','3'),
('651','3'),
('652','3'),
('653','3'),
('654','3'),
('655','3'),
('656','3'),
('657','3'),
('658','3'),
('659','3'),
('660','3'),
('661','3'),
('662','3'),
('663','3'),
('664','3'),
('665','3'),
('666','3'),
('667','3'),
('668','3'),
('669','3'),
('670','3'),
('671','3'),
('672','3'),
('673','3'),
('674','3'),
('675','3'),
('676','3'),
('677','3'),
('678','3'),
('679','3'),
('680','3'),
('681','3'),
('682','3'),
('683','3'),
('684','3'),
('685','3'),
('686','3'),
('687','3'),
('688','3'),
('689','3'),
('690','3'),
('691','3'),
('692','3'),
('693','3'),
('694','3'),
('695','3'),
('696','3'),
('697','3'),
('698','3'),
('699','3'),
('700','3'),
('701','3'),
('702','3'),
('703','3'),
('704','3'),
('705','3'),
('706','3'),
('707','3'),
('708','3'),
('709','3'),
('710','3'),
('711','3'),
('712','3'),
('713','3'),
('714','3'),
('715','3'),
('716','3'),
('717','3'),
('718','3'),
('719','3'),
('720','3'),
('721','3'),
('722','3'),
('723','3'),
('724','3'),
('725','3'),
('726','3'),
('727','3'),
('728','3'),
('729','3'),
('730','3'),
('731','3'),
('732','3'),
('733','3'),
('734','3'),
('735','3'),
('736','3'),
('737','3'),
('738','3'),
('739','3'),
('740','3'),
('741','3'),
('742','3'),
('743','3'),
('744','3'),
('745','3'),
('746','3'),
('747','3'),
('748','3'),
('749','3'),
('750','3'),
('751','3'),
('752','3'),
('753','3'),
('754','3'),
('755','3'),
('756','3'),
('757','3'),
('758','3'),
('759','3'),
('760','3'),
('761','3'),
('762','3'),
('763','3'),
('764','3'),
('765','3'),
('766','3'),
('767','3'),
('768','3'),
('769','3'),
('770','3'),
('771','3'),
('772','3'),
('773','3'),
('774','3'),
('775','3'),
('776','3'),
('777','3'),
('778','3'),
('779','3'),
('780','3'),
('781','3'),
('782','3'),
('783','3'),
('784','3'),
('785','3'),
('786','3'),
('787','3'),
('788','3'),
('789','3'),
('790','3'),
('791','3'),
('792','3'),
('793','3'),
('794','3'),
('795','3'),
('796','3'),
('797','3'),
('798','3'),
('799','3'),
('800','3'),
('801','3'),
('802','3'),
('803','3'),
('804','3'),
('805','3'),
('806','3'),
('807','3'),
('808','3'),
('809','3'),
('810','3'),
('811','3'),
('812','3'),
('813','3'),
('814','3'),
('815','3'),
('816','3'),
('817','3'),
('818','3'),
('819','3'),
('820','3'),
('821','3'),
('822','3'),
('823','3'),
('824','3'),
('825','3'),
('826','3'),
('827','3'),
('828','3'),
('829','3'),
('830','3'),
('831','3'),
('832','3'),
('833','3'),
('834','3'),
('835','3'),
('836','3'),
('837','3'),
('838','3'),
('839','3'),
('840','3'),
('841','3'),
('842','3'),
('843','3'),
('844','3'),
('845','3'),
('846','3'),
('847','3'),
('848','3'),
('849','3'),
('850','3'),
('851','3'),
('852','3'),
('853','3'),
('854','3'),
('855','3'),
('856','3'),
('857','3'),
('858','3'),
('859','3'),
('860','3'),
('861','3'),
('862','3'),
('863','3'),
('864','3'),
('865','3'),
('866','3'),
('867','3'),
('868','3'),
('869','3'),
('870','3'),
('871','3'),
('872','3'),
('873','3'),
('874','3'),
('875','3'),
('876','3'),
('877','3'),
('878','3'),
('879','3'),
('880','3'),
('881','3'),
('882','3'),
('883','3'),
('884','3'),
('885','3'),
('886','3'),
('887','3'),
('888','3'),
('889','3'),
('890','3'),
('891','3'),
('892','3'),
('893','3'),
('894','3'),
('895','3'),
('896','3'),
('897','3'),
('898','3'),
('899','3'),
('900','3'),
('901','3'),
('902','3'),
('903','3'),
('904','3'),
('905','3'),
('906','3'),
('907','3'),
('908','3'),
('909','3'),
('910','3'),
('911','3'),
('912','3'),
('913','3'),
('914','3'),
('915','3'),
('916','3'),
('917','3'),
('918','3'),
('919','3'),
('920','3'),
('921','3'),
('922','3'),
('923','3'),
('924','3'),
('925','3'),
('926','3'),
('927','3'),
('928','3'),
('929','3'),
('930','3'),
('931','3'),
('932','3'),
('933','3'),
('934','3'),
('935','3'),
('936','3'),
('937','3'),
('938','3'),
('939','3'),
('940','3'),
('941','3'),
('942','3'),
('943','3'),
('944','3'),
('945','3'),
('946','3'),
('947','3'),
('948','3'),
('949','3'),
('950','3'),
('951','3'),
('952','3'),
('953','3'),
('954','3'),
('955','3'),
('956','3'),
('957','3'),
('958','3'),
('959','3'),
('960','3'),
('961','3'),
('962','3'),
('963','3'),
('964','3'),
('965','3'),
('966','3'),
('967','3');

ALTER TABLE `seats`
ADD CONSTRAINT `link`
FOREIGN KEY (`plane_id`)
REFERENCES `planes`(`id_plane`)
ON DELETE RESTRICT
ON UPDATE RESTRICT;

SELECT *
FROM planes;

SELECT *
FROM seats
limit 10;

SELECT plane_id, count(id_seat) as total_seats_count, model
FROM seats
INNER JOIN planes
ON seats.plane_id=planes.id_plane
group by plane_id;

# Exercici_02_02_Botiga =============================================================================================
DROP DATABASE IF EXISTS botiga;
CREATE DATABASE botiga;
USE botiga;

CREATE TABLE `botiga`.`compradors`
(
   `id_comprador` INT(4) NOT NULL AUTO_INCREMENT,
   `nom` VARCHAR(50) NOT NULL ,
   `cognome` VARCHAR(50) NOT NULL ,
   `dni` VARCHAR(9) NOT NULL ,
    UNIQUE (`id_comprador`),
    PRIMARY KEY (`id_comprador`)
)
ENGINE = InnoDB;

INSERT INTO `botiga`.`compradors` (`id_comprador`, `nom`,`cognome`,`dni`)
VALUES
('1','AVAILABLE','FOR SALE','XXXXXXXXX'),
('2','Carolina','Altamira','57161274A'),
('3','Rosana','Polo','87461278M'),
('4','Luis','Scatt','47461270G'),
('5','Saul','Ling','97461671B'),
('6','Marta','Mico','37431278A'),
('7','Jorge','Boccini','37461278E');

CREATE TABLE `botiga`.`stock`
(
   `id_quadre` INT(4) NOT NULL AUTO_INCREMENT ,
    `preu` DECIMAL(15,2) NOT NULL , # We use DECIMAL data type to store exact numeric values, where we do not want precision but exact and accurate values.
    `autor` VARCHAR(30) NOT NULL ,
    `nome_quadre` VARCHAR(30) NOT NULL ,
    `any` INT(4),
    `comprador_id` INT(4),
    INDEX (`comprador_id`),
    UNIQUE (`id_quadre`),
    PRIMARY KEY (`id_quadre`)
   )
ENGINE = InnoDB;

INSERT INTO `botiga`.`stock` (`id_quadre`, `preu`, `autor`,`nome_quadre`,`any`,`comprador_id`)
VALUES
('1','250000000.01','Paul Cézanne','Card Players','2011','5'),
('','200000000','','','2011','1'),
('','142000000.23','Francis Bacon','Tres estudios de Lucian Freud','1969','1'),
('4','140000000.08','Jackson Pollock','No.5','1948','4'),
('5','137000000.34','Willem de Kooning','Mujer III','','1'),
('6','135000000.45','Gustav Klimt','Retrato de Adele Bloch-Bauer I','','7'),
('7','120000000.9','Edvard Munch','El grito','1895','1'),
('','106000000.21','Pablo Picasso','Desnudo, hojas verdes y busto','1932','1'),
('9','82500000.47','Vincent van Gogh','Retrato del Dr. Gachet','','3'),
('10','80000000.11','Andy Warhol','Turquesa Marilyn','1964','1'),
('11','100000.62','','','1880','7'),
('12','155000000.05','Pablo Picasso','El Sueño','1932','1');

ALTER TABLE stock
ADD CONSTRAINT `link`
FOREIGN KEY (comprador_id)
REFERENCES compradors(id_comprador)
ON DELETE RESTRICT
ON UPDATE RESTRICT;

SELECT *
FROM stock;

SELECT *
FROM compradors;

SELECT id_quadre, preu, autor, comprador_id, nom
FROM stock
LEFT JOIN compradors
	ON comprador_id=id_comprador
ORDER BY comprador_id;

# Exercici_02_03_Stube =============================================================================================
DROP DATABASE IF EXISTS Stube;
CREATE DATABASE Stube;
USE Stube;

CREATE TABLE Stube.users
(
   id_user VARCHAR(30) NOT NULL ,
   email VARCHAR(40) NOT NULL ,
   pass VARCHAR(30) NOT NULL ,
   UNIQUE (id_user),
   PRIMARY KEY (id_user)
)
ENGINE = InnoDB;

INSERT INTO users VALUE('DarkNei','darknei1988@gmail.com','asks#ksqio"3_#');
INSERT INTO users VALUE('Yoga With Adriane','adriane_yoga@hotmail.com','3$5ususQ_1#');
INSERT INTO users VALUE('Anonymous Group','anonymous@deepweb.com','123456_lol');

SELECT *
FROM users;

CREATE TABLE Stube.play
(
   id_video VARCHAR(30) NOT NULL ,
   descript VARCHAR(1000) NOT NULL ,
   title VARCHAR(100) NOT NULL ,
   url VARCHAR(50) NOT NULL ,
   user_id VARCHAR(30) NOT NULL,
   UNIQUE (id_video),
   PRIMARY KEY (id_video)
)
ENGINE = InnoDB;

INSERT INTO play VALUE('mfKr-1I4q3Aw',
'Parque',
'Moto parque - DarkNei',
'https://www.youtube.com/watch?v=mfKr-1I4q3Aw',
'DarkNei');

INSERT INTO play VALUE('TIzJLnObZsI',
'Full version is here: https://soundcloud.com/baba-beach-clu...
Seth Troxler Circoloco Afterparty mix 2020 @ Baba Beach Club Phuket Thailand https://youtu.be/aukgKm_6YmM',
'The Martinez Brothers Circoloco Afterparty mix 2020 @ Baba Beach Club Phuket Thailand',
'https://www.youtube.com/watch?v=TIzJLnObZsI',
'DarkNei');

INSERT INTO play VALUE('29LwM9Xa6l8','Video credits:
Artists: The Martinez Brothers
Venue: CÉ LA VI, Marina Bay Sands
Produced by Cercle
Executive producers: Philippe Tuchmann & Derek Barbolla
Film directed by: Pol Souchier & Derek Barbolla
Directors of photography: Mathieu Glissant & Mickaël Fidjili
Drone pilot: Victor Gui (Flyht Studio)
Stage manager: Plako
Sound Engineer: Mark Gerard
Sound mastering: Laurent de Boisgisson 
Post-production: Mathieu Glissant / Saison Unique Production

--
Special thanks to Roberto Galgiardi & Deepak Prashad from CÉ LA VI. 
This artistic performance has been recorded live. ',
'The Martinez Brothers @ CÉ LA VI Marina Bay Sands in Singapore for Cercle',
'https://www.youtube.com/watch?v=29LwM9Xa6l8',
'DarkNei');

INSERT INTO play VALUE('8YDd8Wgjj28',
'Join me for this special Meditation for Learning, designed to serve all types! This session can be experienced in under 15 minutes and is an opportunity for you to carve out a little time for you. Shift energy, connect to your natural balanced state, relax, reset, and rejuvenate both brain and body. 

This session invites you to come into a present state of awareness. Come as you are - no experience necessary. 

Optional props: a pillow, blanket, towel, or cushion to sit on. 

If you like this video, you may also want to try: Guided Meditations playlist: https://www.youtube.com/playlist?list... 
',
'Meditation for Learning | Yoga With Adriene',
'https://www.youtube.com/watch?v=8YDd8Wgjj28',
'Yoga With Adriane');

ALTER TABLE play
ADD CONSTRAINT link
FOREIGN KEY (user_id)
REFERENCES users(id_user);

SELECT *
FROM play;

# Exercici_02_04_Amazon =============================================================================================
DROP DATABASE IF EXISTS amazon;
CREATE DATABASE amazon;
USE amazon;

CREATE TABLE amazon.catalogo
(
   id_libro INT(4) NOT NULL AUTO_INCREMENT,
   nombre VARCHAR(40) NOT NULL,
   precio DECIMAL(10,2) NOT NULL ,
   autor_id INT(4),
   unidades_disp INT(4) NOT NULL,
   UNIQUE (id_libro),
   PRIMARY KEY (id_libro)
)
ENGINE = InnoDB;

INSERT INTO catalogo VALUE('','Python desde cero',23.40,2,'');
INSERT INTO catalogo VALUE('','Arduino for dummies',15.90,2,1);
INSERT INTO catalogo VALUE('','Linux basics',5.00,1,5);
INSERT INTO catalogo VALUE('','Learn PHP with examples',7.46,3,'0');

SELECT *
FROM catalogo;

CREATE TABLE amazon.autores
(
   id_autor INT(4) NOT NULL AUTO_INCREMENT,
   nombre VARCHAR(40) NOT NULL,
   direccion VARCHAR(40) NOT NULL ,
   mas_de1 BOOLEAN DEFAULT 0,
   UNIQUE (id_autor),
   PRIMARY KEY (id_autor)
)
ENGINE = InnoDB;

INSERT INTO autores VALUE('','Jhon Smith','Carrer Marina 150',TRUE);
INSERT INTO autores VALUE('','Jym Mathu','Vila Cap 233',TRUE);
INSERT INTO autores VALUE('','Pepe Zargos','Lima 254',FALSE);

SELECT *
FROM autores;

CREATE TABLE amazon.usuario
(
   id_usuario INT(4) NOT NULL AUTO_INCREMENT,
   nombre VARCHAR(40) NOT NULL,
   email VARCHAR(40) NOT NULL ,
   contras VARCHAR(40) NOT NULL,
   UNIQUE (id_usuario),
   PRIMARY KEY (id_usuario)
)
ENGINE = InnoDB;

INSERT INTO usuario VALUE('','Caro Matis','caro_1988@outlook.com','caro123');
INSERT INTO usuario VALUE('','Martin Mojado','tin_weet@gmail.com','2020_best_year');
INSERT INTO usuario VALUE('','Luis Borja','lu_bo@gmail.com','19283746');

SELECT *
FROM usuario;

CREATE TABLE amazon.compras
(
   id_compra INT(100) NOT NULL,
   libro_id INT(4) NOT NULL,
   usuario_id INT(4) NOT NULL
)
ENGINE = InnoDB;

INSERT INTO compras VALUE('10',2,2);
INSERT INTO compras VALUE('10',3,2);
INSERT INTO compras VALUE('11',3,3);

SELECT *
FROM compras;

ALTER TABLE catalogo
ADD CONSTRAINT id_autor_id
FOREIGN KEY (autor_id)
REFERENCES autores(id_autor);

ALTER TABLE compras
ADD CONSTRAINT id_libro_id
FOREIGN KEY (libro_id)
REFERENCES catalogo(id_libro);

ALTER TABLE compras
ADD CONSTRAINT id_usuario_id
FOREIGN KEY (usuario_id)
REFERENCES usuario(id_usuario);

# Exercici_02_05_XarxaSocial =============================================================================================
DROP DATABASE IF EXISTS social_net;
CREATE DATABASE social_net;
USE social_net;

CREATE TABLE social_net.usuarios
(
   id_user INT(4) NOT NULL AUTO_INCREMENT,
   nombre VARCHAR(40) NOT NULL,
   email VARCHAR(40) NOT NULL ,
   passw VARCHAR(40) NOT NULL,
   UNIQUE (id_user),
   PRIMARY KEY (id_user)
)
ENGINE = InnoDB;

INSERT INTO social_net.usuarios VALUE('1','Jorge','bocchiardoje@gmail.com','123456B');
INSERT INTO social_net.usuarios VALUE('2','Joan','jbosco@gmail.com','ASd#$T');
INSERT INTO social_net.usuarios VALUE('3','Jimmy','jimorrey@gmail.com','_Asd45DF');
INSERT INTO social_net.usuarios VALUE('4','Jenny','nylstamp@gmail.com','aaa###2fg');

SELECT *
FROM usuarios;

CREATE TABLE social_net.meet
(
   id_link INT(4) NOT NULL AUTO_INCREMENT,
   user_id INT(4),
   friend_id INT(4),
   meet VARCHAR(40) NOT NULL,
   UNIQUE (id_link),
   PRIMARY KEY (id_link)
)
ENGINE = InnoDB;

INSERT INTO social_net.meet VALUE('',1,4,'Bar');
INSERT INTO social_net.meet VALUE('',1,3,'Playa');
INSERT INTO social_net.meet VALUE('',2,3,'Centro');

SELECT *
FROM meet;

CREATE TABLE social_net.content
(
   id_foto INT(4) NOT NULL AUTO_INCREMENT,
   place VARCHAR(40) NOT NULL,
   link_url VARCHAR(40) NOT NULL ,
   user_id INT(4),
   UNIQUE (id_foto),
   PRIMARY KEY (id_foto)
)
ENGINE = InnoDB;

INSERT INTO social_net.content VALUE('','Barcelona','https://www.barcelona.cat/sites/default/files/default_images/barcelona_600x315.jpg',3);
INSERT INTO social_net.content VALUE('','Barcelona','https://estaticos.elperiodico.com/resources/jpg/9/1/barcelona-cierra-seis-playas-por-alta-concentracion-personas-1592758658319.jpg',3);
INSERT INTO social_net.content VALUE('','Madrid','https://blogviajero.es/wp-content/uploads/Madrid-Capital-1024x410.jpg',4);

SELECT *
FROM content;

ALTER TABLE content
ADD CONSTRAINT id_user_content_id
FOREIGN KEY (user_id)
REFERENCES usuarios(id_user);

ALTER TABLE meet
ADD CONSTRAINT id_user_id
FOREIGN KEY (user_id)
REFERENCES usuarios(id_user);

ALTER TABLE meet
ADD CONSTRAINT id_user_friend_id
FOREIGN KEY (friend_id)
REFERENCES usuarios(id_user);

# Exercici_02_06_CuldAmpolla =============================================================================================
DROP DATABASE IF EXISTS Cul_dAmpolla;
CREATE DATABASE Cul_dAmpolla;
USE Cul_dAmpolla;

CREATE TABLE Cul_dAmpolla.suppliers
(
   id_supplier INT(4) NOT NULL AUTO_INCREMENT,
   full_name VARCHAR(40) NOT NULL,
   street VARCHAR(40) NOT NULL,
   num INT(4) NOT NULL,
   floor VARCHAR(10),
   door VARCHAR(10),
   city VARCHAR(40) NOT NULL,
   post_cod  VARCHAR(5) NOT NULL,
   country VARCHAR(20) NOT NULL,
   telefone  VARCHAR(20) NOT NULL,
   fax  VARCHAR(20),
   NIF VARCHAR(9) NOT NULL,
   UNIQUE (id_supplier),
   PRIMARY KEY (id_supplier)
)
ENGINE = InnoDB;

INSERT INTO Cul_dAmpolla.suppliers VALUE('','Lentes Sl','Calle Regueiro',7,'','B','Barcelona','08037','Spain','+03455768399','','K483745A');
INSERT INTO Cul_dAmpolla.suppliers VALUE('','Opto tk Sl','Calle Marina',13,'2','','Barcelona','08057','Spain','+03455555555','34-9855-1111','K587745B');
INSERT INTO Cul_dAmpolla.suppliers VALUE('','Looky lab','Gran via',192,'1ero','C','Barcelona','08013','Spain','+03466667654','','B883745L');

SELECT *
FROM suppliers;

CREATE TABLE Cul_dAmpolla.products
(
   id_product INT(4) NOT NULL AUTO_INCREMENT,
   brand VARCHAR(40) NOT NULL,            # rayban, 2, 3
   model VARCHAR(40) NOT NULL,
   grad_L VARCHAR(5) NOT NULL,
   grad_R VARCHAR(5) NOT NULL,
   type_mount VARCHAR(10),               #(float, pasta, metall)
   color_mount VARCHAR(10),                   #pallete
   color_glass VARCHAR(40) NOT NULL,
   price DECIMAL(15,2),
   supplier_id INT(4) NOT NULL,
   UNIQUE (id_product),
   PRIMARY KEY (id_product)
)
ENGINE = InnoDB;

INSERT INTO Cul_dAmpolla.products VALUE('','Ray-ban','Style','0.00','0.00','Metallic','Black','Brown',53.60,2);
INSERT INTO Cul_dAmpolla.products VALUE('','Ray-ban','Style','+0.25','+0.25','Metallic','Black','Brown',63.60,2);
INSERT INTO Cul_dAmpolla.products VALUE('','Ray-ban','Style','-0.25','-0.25','Float','Black','Brown',63.60,2);

INSERT INTO Cul_dAmpolla.products VALUE('','Polaroid','Nature','0.00','0.00','Metallic','Black','Brown',53.60,1);
INSERT INTO Cul_dAmpolla.products VALUE('','Polaroid','Nature','+0.25','+0.25','Metallic','Black','Brown',63.60,1);
INSERT INTO Cul_dAmpolla.products VALUE('','Polaroid','Nature','-0.25','-0.25','Metallic','Black','Brown',63.60,1);
INSERT INTO Cul_dAmpolla.products VALUE('','Polaroid','Nature PRO','0.00','0.00','Paste','Black','Yellow',74.10,1);
INSERT INTO Cul_dAmpolla.products VALUE('','Polaroid','Nature PRO','+0.25','+0.25','Metallic','Black','Yellow',85.20,1);

INSERT INTO Cul_dAmpolla.products VALUE('','Police','Atack','0.00','0.00','Metallic','Black','Brown',53.60,1);
INSERT INTO Cul_dAmpolla.products VALUE('','Police','Force','+0.25','+0.25','Paste','Black','Brown',85.20,1);

SELECT *
FROM products;

CREATE TABLE Cul_dAmpolla.clients
(
   id_client INT(4) NOT NULL AUTO_INCREMENT,
   full_name VARCHAR(40) NOT NULL,
   full_adress VARCHAR(100) NOT NULL,
   email VARCHAR(40) NOT NULL,
   telefone VARCHAR(40) NOT NULL,
   create_date DATE,
   friend_id INT(4),
   UNIQUE (id_client),
   PRIMARY KEY (id_client)
)
ENGINE = InnoDB;

INSERT INTO Cul_dAmpolla.clients VALUE('','Ramiro Vazques','C. Fort 345, 1-1A, 08013, Barcelona, España','ramirito1990@hotmail.com','+34055566733','2020-01-04','');
INSERT INTO Cul_dAmpolla.clients VALUE('','Jessi Quertz','C. Wellintomg 51, 08017, Barcelona, España','quert_jes@hotmail.com','+1112333313','2020-03-02','');
INSERT INTO Cul_dAmpolla.clients VALUE('','Jordi DelFont','C. Esquiu 71, 08000, Barcelona, España','ventas_inm@outlook.com','+291135522333','2020-03-06','1');
INSERT INTO Cul_dAmpolla.clients VALUE('','Willy Morgan','Paj. Agbar 96, 08001, Barcelona, España','acer_ultra@ibm.com','+01948576939','2020-4-27','1');

SELECT *
FROM clients;

CREATE TABLE Cul_dAmpolla.sales
(
   id_sale INT(4) NOT NULL AUTO_INCREMENT,
   product_id INT(4) NOT NULL,
   saler_id VARCHAR(40) NOT NULL,
   client_id INT(4) NOT NULL,
   UNIQUE (id_sale),
   PRIMARY KEY (id_sale)
)
ENGINE = InnoDB;

INSERT INTO Cul_dAmpolla.sales VALUE('',1,'Jenny_Pereyra',1);
INSERT INTO Cul_dAmpolla.sales VALUE('',4,'Jenny_Pereyra',2);
INSERT INTO Cul_dAmpolla.sales VALUE('',7,'Jenny_Pereyra',3);
INSERT INTO Cul_dAmpolla.sales VALUE('',10,'Ramiro_del_Sel',1);
INSERT INTO Cul_dAmpolla.sales VALUE('',2,'Ramiro_del_Sel',4);

SELECT *
FROM sales;

ALTER TABLE sales
ADD CONSTRAINT id_product_id
FOREIGN KEY (client_id)
REFERENCES clients(id_client);

ALTER TABLE sales
ADD CONSTRAINT id_client_id
FOREIGN KEY (product_id)
REFERENCES products(id_product);

ALTER TABLE products
ADD CONSTRAINT id_supplier_id
FOREIGN KEY (supplier_id)
REFERENCES suppliers(id_supplier);