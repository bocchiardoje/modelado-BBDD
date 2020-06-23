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
